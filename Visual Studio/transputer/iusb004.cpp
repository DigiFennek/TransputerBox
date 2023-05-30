/*
 *  Copyright (C) 2002-2010  DigiFennek
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
 */

#include "iusb004.h"
#include "dosbox.h"
#include "inout.h"
#include "mem.h"

static fifo_t* rx_fifo;
static fifo_t* tx_fifo;

static IO_ReadHandleObject ReadHandler[6];
static IO_WriteHandleObject WriteHandler[6];

static driverCallback_t driverCallback;

static bool analyse_flag;

static void write_reset(Bitu port, Bitu val, Bitu iolen)
{
	LOG_MSG("TRANSPUTER: B004_RESET = %i", val);
	if (val == 1) {
		if (analyse_flag) {
			driverCallback('A');
		}
		else {
			driverCallback('R');
		}
	}
}

static void write_analyse(Bitu port, Bitu val, Bitu iolen)
{
	LOG_MSG("TRANSPUTER: B004_ANALYSE = %i", val);
	if (val == 1) {
		analyse_flag = true;
	}
	else {
		analyse_flag = false;
	}
}

static Bitu read_error(Bitu port, Bitu iolen)
{
	return driverCallback('E') ? 0x00 : 0x01;
}

static Bitu c012_read_data(Bitu port, Bitu iolen)
{
	uint8_t data = 0;
	if (fifo_deq(rx_fifo, &data, 1) < 1) {
		LOG_MSG("IUSB004: %s: rx buffer empty!", __func__);
	}
	return data;
}

static void c012_write_data(Bitu port, Bitu val, Bitu iolen)
{
	uint8_t data = val;
	if (fifo_enq(tx_fifo, &data, 1) < 1) {
		LOG_MSG("IUSB004: %s: tx buffer full!", __func__);
	}
	if (fifo_count(tx_fifo) >= 64) {
		driverCallback('W');
	}
}

static Bitu c012_read_input_status(Bitu port, Bitu iolen)
{
	if (fifo_count(tx_fifo) > 0) {
		driverCallback('W');
	}
	if (fifo_count(rx_fifo) > 0) {
		return 1;
	}
	return 0;
}

static void c012_write_input_status(Bitu port, Bitu val, Bitu iolen)
{
	LOG_MSG("IUSB004: %s: not implemented!", __func__);
}

static void c012_write_output_status(Bitu port, Bitu val, Bitu iolen)
{
	LOG_MSG("IUSB004: %s: not implemented!", __func__);
}
static Bitu c012_read_output_status(Bitu port, Bitu iolen)
{
	if (fifo_space(tx_fifo) > 0) {
		return 1;
	}
	return 0;
}

virtual_IUSB004::virtual_IUSB004(fifo_t* _rx_fifo, fifo_t* _tx_fifo, driverCallback_t _driverCallback) {
	rx_fifo = _rx_fifo;
	tx_fifo = _tx_fifo;

	driverCallback = _driverCallback;

	// address of virtual transputer interface card
	Bitu base = 0x0150;

	// IMSC012 registers
	ReadHandler[0].Install(base + 0x00, c012_read_data, IO_MB);
	WriteHandler[0].Install(base + 0x01, c012_write_data, IO_MB);
	ReadHandler[1].Install(base + 0x02, c012_read_input_status, IO_MB);
	WriteHandler[1].Install(base + 0x02, c012_write_input_status, IO_MB);
	ReadHandler[2].Install(base + 0x03, c012_read_output_status, IO_MB);
	WriteHandler[2].Install(base + 0x03, c012_write_output_status, IO_MB);

	// Reset,  Analyse and Error
	WriteHandler[4].Install(base + 0x10, write_reset, IO_MB);
	WriteHandler[5].Install(base + 0x11, write_analyse, IO_MB);
	ReadHandler[4].Install(base + 0x10, read_error, IO_MB);
}
