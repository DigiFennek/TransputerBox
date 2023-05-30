#ifndef _TRANSPUTER_H_
#define _TRANSPUTER_H_

#include <stdint.h>
#include <stdbool.h>

typedef struct
{
	bool link_speed;
	bool stall_flag;
	bool error_flag;
	bool power_flag;
	uint32_t upload_led_10ms;
	uint32_t download_led_10ms;
	uint32_t reset_led_10ms;
	uint32_t analyse_led_10ms;
} transputer_t;

extern transputer_t transputer;

void transputer_init(void);
void transputer_task(void);

#endif
