#ifndef _BUTTON_H_
#define _BUTTON_H_

#include <stdbool.h>
#include <stdint.h>

typedef struct
{
	uint8_t timer_10ms;
} button_t;

extern button_t button;

void button_init(void);
void button_task(void);

#endif
