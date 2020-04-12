#ifndef _TRANSPUTER_H_
#define _TRANSPUTER_H_

#include "stdbool.h"
#include "fifo.h"

// multicore data for core M0+
typedef volatile struct
{
	fifo_t *rx_fifo;
	fifo_t *tx_fifo;
	bool power;
	bool reset;
} transputer_c012_t;

typedef struct
{
	bool link_speed;
	bool stop_flag;
	bool stall_flag;
	bool error_flag;
	uint32_t upload_led_10ms;
	uint32_t download_led_10ms;
	uint32_t stop_timer_10ms;
} transputer_t;

extern transputer_t transputer;
extern transputer_c012_t c012;

void transputer_init(void);
void transputer_task(void);

#endif
