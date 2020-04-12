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

#include "dosbox.h"
#include "setup.h"
#include "fifo.h"
#include "usb.h"

#include "iusb004.h"
#include "iusb008.h"

static uint8_t rx_buffer[65536];
static uint8_t tx_buffer[65536];

static fifo_t rx_fifo;
static fifo_t tx_fifo;

static bool error_flag = false;
static bool stop_flag = false;

static uint32_t usb_intr_status;

enum
{
	usb_intr_stop = 0x01,
	usb_intr_reset = 0x02,
	usb_intr_analyse = 0x04,
	usb_intr_error = 0x08,
	usb_intr_speed_10Mb = 0x10,
	usb_intr_speed_20Mb = 0x20,
};

static void handleUsbIntrIn(Bitu byte_count, Bit8u* buffer)
{
	if (byte_count == 4) {
		uint32_t status = *(uint32_t*)buffer;
		if (status & usb_intr_stop) {
			if (!stop_flag) {
				stop_flag = true;
				LOG_MSG("TRANSPUTER: stop_flag = true");
			}
		}
		else {
			if (stop_flag) {
				stop_flag = false;
				LOG_MSG("TRANSPUTER: stop_flag = false");
				usbSignalPipe(PIPE_ID_BULK_OUT);
			}
		}
		if (status & usb_intr_error) {
			if (!error_flag) {
				error_flag = true;
				LOG_MSG("TRANSPUTER: error_flag = true");
			}
		}
		else {
			if (error_flag) {
				error_flag = false;
				LOG_MSG("TRANSPUTER: error_flag = false");
			}
		}
	}
}

static DWORD usbCallback(UCHAR PipeID, DWORD byte_count, UCHAR* buffer)
{
	switch (PipeID) {
	case PIPE_ID_BULK_IN:
		if (fifo_push(&rx_fifo, (uint8_t*)buffer, byte_count) < byte_count) {
			LOG_MSG("TRANSPUTER: %s: input not ready!", __func__);
		}
		break;
	case PIPE_ID_INTR_IN:
		handleUsbIntrIn(byte_count, buffer);
		break;
	case PIPE_ID_BULK_OUT:
		if (!stop_flag) {
			byte_count = fifo_pop(&tx_fifo, buffer, byte_count);
		}
		else {
			byte_count = 0;
		}
		break;
	case PIPE_ID_INTR_OUT:
		if (usb_intr_status) {
			*(uint32_t*)buffer = usb_intr_status;
			usb_intr_status = 0;
		}
		else {
			byte_count = 0;
		}
		break;
	}
	return byte_count;
}

static void resetTransputer(bool analyse)
{
	if (analyse) {
		usb_intr_status = usb_intr_analyse;
		usbSignalPipe(PIPE_ID_INTR_OUT);
	}
	else {
		usb_intr_status = usb_intr_reset;
		usbSignalPipe(PIPE_ID_INTR_OUT);
	}

	fifo_flush(&rx_fifo);
	fifo_flush(&tx_fifo);

	// will be cleared by the transputer usb interface
	stop_flag = true;
}

static bool driverCallback(UCHAR Opcode)
{
	switch(Opcode) {
	case 'R':
		resetTransputer(false);
		break;
	case 'A':
		resetTransputer(true);
		break;
	case 'E':
		return error_flag;
	case 'S':
		return stop_flag;
	case 'W':
		usbSignalPipe(PIPE_ID_BULK_OUT);
		break;
	}
	return false;
}

class Transputer :public Module_base
{
private:
	virtual_IUSB004* virtual_iusb004;
	virtual_IUSB008* virtual_iusb008;

public:
	Transputer(Section* configuration) :Module_base(configuration)
	{
		fifo_init(&rx_fifo, rx_buffer, sizeof(rx_buffer));
		fifo_init(&tx_fifo, tx_buffer, sizeof(tx_buffer));

		virtual_iusb004 = new virtual_IUSB004(&rx_fifo, &tx_fifo, driverCallback);
		virtual_iusb008 = new virtual_IUSB008(&rx_fifo, &tx_fifo, driverCallback);

		usbInit(usbCallback);
	}

	~Transputer()
	{
		usbDisconnect();

		delete virtual_iusb004;
		delete virtual_iusb008;
	}
};

static Transputer* transputer;

void TRANSPUTER_Destroy(Section* sec) {
	delete transputer;
}

void TRANSPUTER_Init(Section* sec) {
	transputer = new Transputer(sec);
	sec->AddDestroyFunction(&TRANSPUTER_Destroy, true);
}
