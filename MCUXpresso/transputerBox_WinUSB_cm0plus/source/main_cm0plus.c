/*
 * Copyright (c) 2015, Freescale Semiconductor, Inc.
 * Copyright 2016-2017 NXP
 * All rights reserved.
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */

#include "board.h"
#include "mcmgr.h"
#include "c012.h"
#include "fifo.h"

/*******************************************************************************
 * Definitions
 ******************************************************************************/

// same struct as in transputer.h
typedef volatile struct
{
	fifo_t *rx_fifo;
	fifo_t *tx_fifo;
} core_m0_data_t;

/*******************************************************************************
 * Variables
 ******************************************************************************/
static core_m0_data_t *core_m0_data;

#include <cr_section_macros.h>

__NOINIT (RamX_32) static uint8_t rx_fifo_buffer[24576];
__NOINIT (RamX_32) static uint8_t tx_fifo_buffer[6144];

__NOINIT (RamX_32) static fifo_t rx_fifo;
__NOINIT (RamX_32) static fifo_t tx_fifo;

/*******************************************************************************
 * Prototypes
 ******************************************************************************/

/*******************************************************************************
 * Code
 ******************************************************************************/

void SystemInitHook(void)
{
    /* Initialize MCMGR - low level multicore management library. Call this
       function as close to the reset entry as possible to allow CoreUp event
       triggering. The SystemInitHook() weak function overloading is used in this
       application. */
    MCMGR_EarlyInit();
}

static void CoreDownEventHandler(uint16_t data, void *context)
{
	// release all io ports
	c012_power_off();

	// stop this core
	MCMGR_StopCore(MCMGR_GetCurrentCore());
}

int main(void)
{
    mcmgr_status_t status;

    /* Initialize MCMGR, install generic event handlers */
    MCMGR_Init();

    /* install core down event handler */
    MCMGR_RegisterEvent(kMCMGR_RemoteCoreDownEvent, CoreDownEventHandler, NULL);

    /* Get the startup data */
    do
    {
        status = MCMGR_GetStartupData((uint32_t*)(&core_m0_data));
    } while(status != kStatus_MCMGR_Success);

	fifo_init(&rx_fifo, rx_fifo_buffer, sizeof(rx_fifo_buffer));
	fifo_init(&tx_fifo, tx_fifo_buffer, sizeof(tx_fifo_buffer));

	if (!core_m0_data->rx_fifo || !core_m0_data->tx_fifo) {
		// tell the main core where the fifos are...
		core_m0_data->rx_fifo = &rx_fifo;
		core_m0_data->tx_fifo = &tx_fifo;
		// ...and stop this core
		MCMGR_StopCore(MCMGR_GetCurrentCore());
	}

	c012_reset();
	c012_run(&rx_fifo, &tx_fifo);

	return 0;
}
