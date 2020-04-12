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
	bool power;
	bool reset;
} transputer_c012_t;

/*******************************************************************************
 * Variables
 ******************************************************************************/
static transputer_c012_t *c012;

static uint8_t rx_fifo_buffer[65536];
static uint8_t tx_fifo_buffer[4096];

static fifo_t rx_fifo;
static fifo_t tx_fifo;

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

__attribute__((optimize("O3")))
static void handle_power_on(void)
{
	register GPIO_Type *gpio = GPIO;

	while (c012->power) {
    	if (C012_OUTPUT_READY(gpio)) {
       		if (FIFO_DEQ_READY(rx_fifo)) {
        		register uint8_t byte;
       			FIFO_DEQ_BYTE(rx_fifo, byte);
       			C012_WRITE_DATA(gpio, byte);
       		}
    	}

    	if (C012_INPUT_READY(gpio)) {
    		if (FIFO_ENQ_READY(tx_fifo)) {
        		register uint8_t byte;
        		C012_READ_DATA(gpio, byte);
        		FIFO_ENQ_BYTE(tx_fifo, byte);
        	}
    	}
    }
}

static void handle_power_off(void)
{
    while (!c012->power) {
    	if (c012->reset) {
    		c012_reset();
    		fifo_flush(&rx_fifo);
    		fifo_flush(&tx_fifo);
    		c012->reset = false;
    		c012->power = true;
    	} else {
    		c012_power_off();
    	}
    }
}

int main(void)
{
    mcmgr_status_t status;

    /* Initialize MCMGR, install generic event handlers */
    MCMGR_Init();

    /* Get the startup data */
    do
    {
        status = MCMGR_GetStartupData((uint32_t*)(&c012));
    } while (status != kStatus_MCMGR_Success);

	fifo_init(&rx_fifo, rx_fifo_buffer, sizeof(rx_fifo_buffer));
	fifo_init(&tx_fifo, tx_fifo_buffer, sizeof(tx_fifo_buffer));

	c012->rx_fifo = &rx_fifo;
    c012->tx_fifo = &tx_fifo;

    while (1)
    {
    	handle_power_on();
    	handle_power_off();
    }
}
