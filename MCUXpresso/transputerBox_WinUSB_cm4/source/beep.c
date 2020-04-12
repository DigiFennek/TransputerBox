#include "beep.h"
#include "peripherals.h"

// private
static bool beep_flag;
static int beep_timeout;
static int beep_counter;

// 500ms
#define BEEP_TIME 5

void beep(int count)
{
	if (count > beep_counter) {
		beep_counter = count;
	}
}

void beep_timer(void)
{
	if (beep_timeout == 0) {
		if (beep_flag) {
			if (beep_counter > 0) {
				CTIMER_StartTimer(CTIMER_1_PERIPHERAL);
				beep_counter--;
				beep_timeout = BEEP_TIME;
			}
		} else {
			CTIMER_StopTimer(CTIMER_1_PERIPHERAL);
			beep_timeout = BEEP_TIME;
		}
		beep_flag = !beep_flag;
	} else {
		beep_timeout--;
	}
}
