#ifndef C012_H
#define C012_H

#include "fifo.h"

void c012_reset(void);
void c012_power_off(void);
void c012_run(fifo_t *rx_fifo, fifo_t *tx_fifo);

#endif

