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

#include "iusb008.h"
#include "fifo.h"
#include "usb.h"
#include <pic.h>
#include <callback.h>

// timout 10th of a second
static Bitu timeout = 100;

// Source: INMOS\D7205\SOURCE\ISERVER.C
#define B008_RESET      (0)
#define B008_ANALYSE    (1)
#define B008_TIMEOUT    (2)

// Source: INMOS\D7205\SOURCE\ISERVER.H
#define ER_LINK_BAD     (-1) 
#define ER_LINK_CANT    (-2)
#define ER_LINK_SOFT    (-3)
#define ER_LINK_NODATA  (-4)
#define ER_LINK_NOSYNC  (-5)
#define ER_LINK_BUSY    (-6)
#define ER_NO_LINK      (-7)
#define ER_LINK_SYNTAX  (-8)

virtual_IUSB008::virtual_IUSB008(fifo_t* rx_fifo, fifo_t* tx_fifo, driverCallback_t driverCallback) {
	this->rx_fifo = rx_fifo;
	this->tx_fifo = tx_fifo;

	this->driverCallback = driverCallback;
	
	// default name for iserver
	SetName("LINK1");

	DOS_AddDevice(this);
}

bool virtual_IUSB008::Read(Bit8u* data, Bit16u* size) {
	if (!usbIsConnected()) {
		DOS_SetError(ER_LINK_BAD);
		*size = 0;
		return false;
	}
	double end_time = PIC_FullIndex() + timeout;
	while (fifo_count(rx_fifo) < *size) {
		if (timeout && PIC_FullIndex() > end_time) {
			*size = 0;
			return true;
		} 
		CALLBACK_Idle();
	}
	*size = fifo_deq(rx_fifo, (uint8_t*)data, *size);
	return true;
}

bool virtual_IUSB008::Write(Bit8u* data, Bit16u* size) {
	if (!usbIsConnected()) {
		DOS_SetError(ER_LINK_BAD);
		*size = 0;
		return false;
	}
	double end_time = PIC_FullIndex() + timeout;
	while (fifo_space(tx_fifo) < *size) {
		if (timeout && PIC_FullIndex() > end_time) {
			*size = 0;
			return true;
		}
		CALLBACK_Idle();
	}
	*size = fifo_enq(tx_fifo, (uint8_t*)data, *size);
	driverCallback('W');
	return true;
}

bool virtual_IUSB008::Close()
{
	return true;
}

Bit16u virtual_IUSB008::GetInformation(void) {
	// ISDEV and BINARY 
	return 0x80A0;
}

bool virtual_IUSB008::ReadFromControlChannel(PhysPt bufptr, Bit16u size, Bit16u* retcode) {
	if (size == 4) {
		mem_writew(bufptr, driverCallback('E') ? 0x01 : 0x00);
		*retcode = size;
		return true;
	}
	return false;
}

bool virtual_IUSB008::WriteToControlChannel(PhysPt bufptr, Bit16u size, Bit16u* retcode) {
	if (size == 4) {
		Bit16u io_val = mem_readw(bufptr);
		Bit16u io_op = mem_readw(bufptr + 2);
		switch (io_op) {
		case B008_RESET:
			LOG_MSG("TRANSPUTER: B008_RESET");
			driverCallback('R');
			break;
		case B008_ANALYSE:
			LOG_MSG("TRANSPUTER: B008_ANALYSE");
			driverCallback('A');
			break;
		case B008_TIMEOUT:
			timeout = io_val * 100;
			break;
		}
		*retcode = size;
		return true;
	}
	return false;
}

