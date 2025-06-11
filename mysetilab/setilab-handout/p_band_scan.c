#define _GNU_SOURCE
#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include <assert.h>
#include <pthread.h>
#include <sched.h>

#include "timing.h"
#include "filter.h"
#include "signal.h"

#define MAXWIDTH 40
#define THRESHOLD 2.0
#define ALIENS_LOW  50000.0
#define ALIENS_HIGH 150000.0

long numProcs; // number of processors
long numThreads;
pthread_t* tids; // Thread id array

// stuff for multi thread processes
signal* sig;
int filter_order;
int num_bands;
double* lowerBand;
double* upperBand;
double bandwidth;
double* band_power;
int wow;

void usage() {
    printf("usage: p_band_scan text|bin|mmap signal_file Fs filter_order num_bands num_threads num_processors");
}

double avgPower(double* data, int num) {

  double ss = 0;
  for (int i = 0; i < num; i++) {
    ss += data[i] * data[i];
  }

  return ss / num;
}

double maxOf(double* data, int num) {

  double m = data[0];
  for (int i = 1; i < num; i++) {
    if (data[i] > m) {
      m = data[i];
    }
  }
  return m;
}

double avgOf(double* data, int num) {

  double s = 0;
  for (int i = 0; i < num; i++) {
    s += data[i];
  }
  return s / num;
}

void removeDC(double* data, int num) {

  double dc = avgOf(data,num);

  printf("Removing DC component of %lf\n",dc);

  for (int i = 0; i < num; i++) {
    data[i] -= dc;
  }
}

void* analyzeBand(void* myId) {
  // individual id for this thread
  int id = * (int*) myId;
  double filter_coeffs[filter_order + 1];

  cpu_set_t set;
  CPU_ZERO(&set);
  CPU_SET(id % numProcs, &set);
  if (sched_setaffinity(0,sizeof(set),&set)<0) {//do it
    perror("Can't set affinity"); //hopefully doesn't fail
    exit(-1);
  } //copied from pthread


  for (int band = id; band < num_bands; band += numThreads) {
    // Make the filter
    generate_band_pass(sig->Fs,
                       band * bandwidth + 0.0001, // keep within limits
                       (band + 1) * bandwidth - 0.0001,
                       filter_order,
                       filter_coeffs);
    hamming_window(filter_order,filter_coeffs);

    // Convolve
    convolve_and_compute_power(sig->num_samples,
                               sig->data,
                               filter_order,
                               filter_coeffs,
                               &(band_power[band]));

  }

  pthread_exit(NULL);

}

int analyze_signal(double* lb, double* ub) {

  // Pretty print results
  double max_band_power = maxOf(band_power,num_bands);
  double avg_band_power = avgOf(band_power,num_bands);
  wow = 0;
  *lowerBand = -1;
  *upperBand = -1;

  // set up globals
  lowerBand = lb;
  upperBand = ub;

  for (int band = 0; band < num_bands; band++) {
    double band_low  = band * bandwidth + 0.0001;
    double band_high = (band + 1) * bandwidth - 0.0001;

    printf("%5d %20lf to %20lf Hz: %20lf ",
           band, band_low, band_high, band_power[band]);

    for (int i = 0; i < MAXWIDTH * (band_power[band] / max_band_power); i++) {
      printf("*");
    }

    if ((band_low >= ALIENS_LOW && band_low <= ALIENS_HIGH) ||
        (band_high >= ALIENS_LOW && band_high <= ALIENS_HIGH)) {

      // band of interest
      if (band_power[band] > THRESHOLD * avg_band_power) {
        printf("(WOW)");
        wow = 1;
        if (*lowerBand < 0) {
          *lowerBand = band * bandwidth + 0.0001;
        }
        *upperBand = (band + 1) * bandwidth - 0.0001;
      } else {
        printf("(meh)");
      }
    } else {
      printf("(meh)");
    }

    printf("\n");
  }

  return wow;
}

int main(int argc, char* argv[]) {

  if (argc != 8) {
    usage();
    return -1;
  }

  char sig_type    = toupper(argv[1][0]);
  char* sig_file   = argv[2];
  double Fs        = atof(argv[3]);
  filter_order = atoi(argv[4]);
  num_bands    = atoi(argv[5]);
  numThreads = atoi(argv[6]);
  numProcs = atoi(argv[7]);

  if (numThreads > num_bands) {numThreads = num_bands;}

  tids = (pthread_t*) malloc(sizeof(pthread_t) * numThreads);
  band_power = (double*) malloc(sizeof(double)*num_bands);


  assert(Fs > 0.0);
  assert(filter_order > 0 && !(filter_order & 0x1));
  assert(num_bands > 0);
  assert(numThreads > 0);
  assert(numProcs > 0);

  printf("type:       %s\n\
          file:       %s\n\
          Fs:         %lf Hz\n\
          order:      %d\n\
          bands:      %d\n\
          Threads:    %ld\n\
          Processors: %ld\n",
         sig_type == 'T' ? "Text" : (sig_type == 'B' ? "Binary" : (sig_type == 'M' ? "Mapped Binary" : "UNKNOWN TYPE")),
         sig_file,
         Fs,
         filter_order,
         num_bands,
         numThreads,
         numProcs);

  printf("Load or map file\n");

  switch (sig_type) {
    case 'T':
      sig = load_text_format_signal(sig_file);
      break;

    case 'B':
      sig = load_binary_format_signal(sig_file);
      break;

    case 'M':
      sig = map_binary_format_signal(sig_file);
      break;

    default:
      printf("Unknown signal type\n");
      return -1;
  }

  if (!sig) {
    printf("Unable to load or map file\n");
    return -1;
  }

  sig->Fs = Fs;

  // processing before multi parallelizing
  double Fc = (sig->Fs) / 2;
  bandwidth = Fc / num_bands;
  removeDC(sig->data,sig->num_samples);
  double signal_power = avgPower(sig->data,sig->num_samples);
  printf("signal average power:     %lf\n", signal_power);

  long returnCode;
  for (int i = 0; i < numThreads; i++) {
    returnCode = pthread_create(&(tids[i]),
                                NULL,
                                analyzeBand,
                                (void*) &i);
    if (returnCode != 0) {
      perror("failed to start thread");
      exit(-1);
    }
  }
  

  for (int i = 0; i < numThreads; i++) {
    returnCode = pthread_join(tids[i], NULL);
    if (returnCode != 0) { 
      perror("join failed");
      exit(-1);
      }
  }

  double start = 0;
  double end   = 0;
  if (analyze_signal(&start, &end)) {
    printf("POSSIBLE ALIENS %lf-%lf HZ (CENTER %lf HZ)\n", start, end, (end + start) / 2.0);
  } else {
    printf("no aliens\n");
  }


  free_signal(sig);
  free(tids);
  free(band_power);

  return 0;
}