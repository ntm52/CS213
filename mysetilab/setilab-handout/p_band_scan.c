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

long numproc; // number of processors
pthread_t* tids; // Thread id array

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

