/*
 * @brief Vitual communication port example
 *
 * @note
 * Copyright  2013, NXP
 * All rights reserved.
 *
 * @par
 * Software that is described herein is for illustrative purposes only
 * which provides customers with programming information regarding the
 * LPC products.  This software is supplied "AS IS" without any warranties of
 * any kind, and NXP Semiconductors and its licensor disclaim any and
 * all warranties, express or implied, including all implied warranties of
 * merchantability, fitness for a particular purpose and non-infringement of
 * intellectual property rights.  NXP Semiconductors assumes no responsibility
 * or liability for the use of the software, conveys no license or rights under any
 * patent, copyright, mask work right, or any other intellectual property rights in
 * or to any products. NXP Semiconductors reserves the right to make changes
 * in the software without notification. NXP Semiconductors also makes no
 * representation or warranty that such application will be suitable for the
 * specified use without further testing or modification.
 *
 * @par
 * Permission to use, copy, modify, and distribute this software and its
 * documentation is hereby granted, under NXP Semiconductors' and its
 * licensor's relevant copyrights in the software, without fee, provided that it
 * is used in conjunction with NXP Semiconductors microcontrollers.  This
 * copyright, permission, and disclaimer notice must appear in all copies of
 * this code.
 */

#include "board.h"
#include <stdio.h>
#include <string.h>
#include "mcmgr.h"
#include "pin_mux.h"
#include "peripherals.h"
#include "libusbdev.h"
#include "power.h"
#include "display.h"
#include "transputer.h"
#include "cooling.h"
#include "beep.h"

/*******************************************************************************
 * Definitions
 ******************************************************************************/

/* Address of RAM, where the image for core1 should be copied */
#define CORE1_BOOT_ADDRESS (void *)0x20010000

#define CHECK_TIMER(timer) {if(timer) timer--;}

/*******************************************************************************
 * Prototypes
 ******************************************************************************/

/*******************************************************************************
 * Variables
 ******************************************************************************/

/*******************************************************************************
 * Code
 ******************************************************************************/

void MRT_1_IRQHANDLER(void)
{
	// 100ms timer
	if (MRT_GetStatusFlags(MRT_1_PERIPHERAL, MRT_1_CHANNEL_0) & kMRT_TimerInterruptFlag)
	{
		MRT_ClearStatusFlags(MRT_1_PERIPHERAL, MRT_1_CHANNEL_0, kMRT_TimerInterruptFlag);
		beep_timer();
		cooling_timer();
	}

	// 10ms timer
	if (MRT_GetStatusFlags(MRT_1_PERIPHERAL, MRT_1_CHANNEL_1) & kMRT_TimerInterruptFlag)
	{
		MRT_ClearStatusFlags(MRT_1_PERIPHERAL, MRT_1_CHANNEL_1, kMRT_TimerInterruptFlag);
		CHECK_TIMER(power.timer_10ms);
		CHECK_TIMER(transputer.stop_timer_10ms);
		CHECK_TIMER(transputer.upload_led_10ms);
		CHECK_TIMER(transputer.download_led_10ms);
	}
}

void SystemInitHook(void)
{
    /* Initialize MCMGR - low level multicore management library. Call this
       function as close to the reset entry as possible to allow CoreUp event
       triggering. The SystemInitHook() weak function overloading is used in this
       application. */
    MCMGR_EarlyInit();
}

int main(void)
{
    /* Initialize MCMGR, install generic event handlers */
    MCMGR_Init();

    BOARD_InitPins();
    BOARD_InitBootPeripherals();
    BOARD_BootClockFROHF96M();
    BOARD_InitDebugConsole();

	/* Init USB subsystem and LibUSBDevice */
	libusbdev_init();

    /* Boot Secondary core application */
	MCMGR_StartCore(kMCMGR_Core1, CORE1_BOOT_ADDRESS, (uint32_t)&c012, kMCMGR_Start_Synchronous);

	power_init();
    display_init();
	transputer_init();
    cooling_init();

    while (1U)
    {
		power_task();
		display_task();
		transputer_task();
	    cooling_task();

		GPIO_PortToggle(BOARD_DEBUG_GPIO, BOARD_DEBUG_PORT, 1 << BOARD_DEBUG_PIN);

    	/* Sleep until next IRQ happens */
		__WFI();
    }
}
