#include <stdlib.h>
#include <stdio.h>
#include <pthread.h>

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
double start;
double* filter_coeffs;
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

  double dc = avg_of(data,num);

  printf("Removing DC component of %lf\n",dc);

  for (int i = 0; i < num; i++) {
    data[i] -= dc;
  }
}

void* analyzeBand(void* arg) {
  // individual band to scan on one thread of the process
  int band = arg;

  for (int band = 0; band < num_bands; band++) {
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

  // Pretty print results
  double max_band_power = max_of(band_power,num_bands);
  double avg_band_power = avg_of(band_power,num_bands);
  int wow = 0;
  *lowerBand = -1;
  *upperBand = -1;


  return;

}

int analyze_signal(signal* s, int fo, int nb, double* lb, double* ub) {

  // set up globals
  sig = s;
  filter_order = fo;
  num_bands = nb;
  lowerBand = lb;
  upperBand = ub;

  start = get_seconds();
  

  /************************************************* */
  printf("Starting %ld software threads on %ld processors (hardware threads)\n", numThreads, numProcs);

  long num_started = 0;
  for (long i = 0; i < numThreads; i++) {

    int returncode = pthread_create(&(tids[i]), // thread id gets put here
                                    NULL, // use default attributes
                                    analyzeBand, // thread will begin in this function
                                    (void*) i // we'll give it i as an id
                                    );
    if (returncode == 0) {
      printf("Started thread %ld, tid %lu\n", i, tids[i]);
      num_started++;
    } else {
      printf("Failed to start thread %ld\n", i);
      perror("Failed to start thread");
      tids[i] = 0xdeadbeef;
    }
  }

  printf("Finished starting threads (%ld started)\n", num_started);

  printf("Now joining\n");

  for (long i = 0; i < numThreads; i++) {
    if (tids[i] != 0xdeadbeef) {
      printf("Joining with %ld, tid %lu\n", i, tids[i]);
      int returncode = pthread_join(tids[i], NULL);   //
      if (returncode != 0) {
        printf("Failed to join with %ld!\n", i);
        perror("join failed");
      } else {
        printf("Done joining with %ld\n", i);
      }
    } else {
      printf("Skipping %ld (wasn't started successfully)\n", i);
    }
  }

  printf("Done!\n");

  /******************************* */

  for (int band = 0; band < num_bands; band++) {
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

  double end = get_seconds();

  // Pretty print results
  double max_band_power = max_of(band_power,num_bands);
  double avg_band_power = avg_of(band_power,num_bands);
  wow = 0;
  *lowerBand = -1;
  *upperBand = -1;

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
  int filter_order = atoi(argv[4]);
  int num_bands    = atoi(argv[5]);
  numThreads = atoi(argv[6]);
  numProcs = atoi(argv[7]);

  if (numThreads > num_bands) {numThreads = num_bands;}

  tids = (pthread_t*)malloc(sizeof(pthread_t) * numThreads);
  band_power = (double*) malloc(sizeof(double)*num_bands);
  filter_coeffs = (double*) malloc(sizeof(double)*(filter_order + 1));


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
          Threads:    %d\n\
          Processors: %d\n",
         sig_type == 'T' ? "Text" : (sig_type == 'B' ? "Binary" : (sig_type == 'M' ? "Mapped Binary" : "UNKNOWN TYPE")),
         sig_file,
         Fs,
         filter_order,
         num_bands,
         numThreads,
         numProcs);

  printf("Load or map file\n");

  signal* sig;
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
  remove_dc(sig->data,sig->num_samples);
  double signal_power = avg_power(sig->data,sig->num_samples);
  printf("signal average power:     %lf\n", signal_power);


  long returnCode;
  for (int i = 0; i < numThreads; i++) {
    returnCode = pthread_create( &(tids[i]),
                                NULL,
                                analyzeBand,
                                (void*) i);
        if (returnCode != 0) {
            perror("failed to start thread");
            exit(-1);
        }}

    end = get_seconds();
  
    

    for (i=0;i<num_threads;i++) {
         rc=pthread_join(tid[i],NULL);   // 
         if (rc!=0) { 
        perror("join failed");
        exit(-1);
        }
    }

  double start = 0;
  double end   = 0;
  if (analyze_signal(sig, filter_order, num_bands, &start, &end)) {
    printf("POSSIBLE ALIENS %lf-%lf HZ (CENTER %lf HZ)\n", start, end, (end + start) / 2.0);
  } else {
    printf("no aliens\n");
  }

  free_signal(sig);

  return 0;
}