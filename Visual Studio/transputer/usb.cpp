/*
 *  Copyright (C) 2019  DigiFennek
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

#include "usb.h"
#include "dos_inc.h"
#include "dosbox.h"
#include "winusb.h"
#include "device.h"

static DEVICE_DATA deviceData;
static HANDLE USBThread;
static BOOL USBThreadRunning;
static bool USBReconnectFlag;

typedef struct
{
	OVERLAPPED Overlapped;
	UCHAR PipeID;
	UCHAR *Buffer;
	DWORD Length;
	DWORD LengthTransferred;
	USB_CALLBACK Callback;
} USB_TRANSFER;

static USB_TRANSFER BulkInTransfer;
static USB_TRANSFER IntrInTransfer;
static USB_TRANSFER BulkOutTransfer;
static USB_TRANSFER IntrOutTransfer;

#define NOF_EVENTS 4

static HANDLE hEvents[NOF_EVENTS];

static void PrintLastError(const char *Where)
{
	DWORD Error = GetLastError();
	if (Error != ERROR_SUCCESS && Error != ERROR_IO_PENDING) {
		LOG_MSG("TRANSPUTER: %s error %i", Where, Error);
	}
	if (Error == ERROR_GEN_FAILURE) {
		USBReconnectFlag = true;
	}
}

static void DoInTransfer(USB_TRANSFER* Transfer)
{
	BOOL bResult = WinUsb_GetOverlappedResult(deviceData.WinusbHandle, &Transfer->Overlapped, 
		&Transfer->LengthTransferred, FALSE);
	if (bResult) {
		Transfer->Callback(Transfer->PipeID, Transfer->LengthTransferred, Transfer->Buffer);
	}
	else {
		PrintLastError("DoInTransfer:WinUsb_GetOverlappedResult");
	}
	bool success = WinUsb_ReadPipe(deviceData.WinusbHandle, Transfer->PipeID, Transfer->Buffer,
		Transfer->Length, NULL, &Transfer->Overlapped);
	if (!success) {
		PrintLastError("DoInTransfer:WinUsb_ReadPipe");
	}
}

static void DoOutTransfer(USB_TRANSFER* Transfer)
{
	BOOL bResult = WinUsb_GetOverlappedResult(deviceData.WinusbHandle, &Transfer->Overlapped,
		&Transfer->LengthTransferred, FALSE);
	if (bResult) {
		DWORD Length = Transfer->Callback(Transfer->PipeID, Transfer->Length, Transfer->Buffer);
		if (Length) {
			bool success = WinUsb_WritePipe(deviceData.WinusbHandle, Transfer->PipeID, Transfer->Buffer,
				Length, NULL, &Transfer->Overlapped);
			if (!success && GetLastError() != ERROR_IO_PENDING) {
				PrintLastError("DoOutTransfer:WinUsb_WritePipe");
			}
		}
	}
	else {
		if (GetLastError() != ERROR_IO_INCOMPLETE) {
			PrintLastError("DoOutTransfer:WinUsb_GetOverlappedResult");
		}
	}
}

static DWORD WINAPI ThreadProc(_In_ LPVOID lpParameter)
{
	USBThreadRunning = TRUE;

	DoInTransfer(&BulkInTransfer);
	DoInTransfer(&IntrInTransfer);

	while (USBThreadRunning) {
		DWORD dwObject = WaitForMultipleObjects(NOF_EVENTS, hEvents, FALSE, 10);
		switch (dwObject) {
		case WAIT_OBJECT_0 + 0:
			DoInTransfer(&BulkInTransfer);
			break;
		case WAIT_OBJECT_0 + 1:
			DoInTransfer(&IntrInTransfer);
			break;
		case WAIT_OBJECT_0 + 2:
			DoOutTransfer(&BulkOutTransfer);
			break;
		case WAIT_OBJECT_0 + 3:
			DoOutTransfer(&IntrOutTransfer);
			break;
		}
	}
	return 0;
}

static HANDLE InitTransfer(USB_TRANSFER *Transfer, USB_CALLBACK Callback, UCHAR PipeID, ULONG Length)
{
	ZeroMemory(Transfer, sizeof(USB_TRANSFER));
	Transfer->Overlapped.hEvent = CreateEvent(NULL, FALSE, FALSE, NULL);
	Transfer->Callback = Callback;
	Transfer->PipeID = PipeID;
	Transfer->Length = Length;
	Transfer->Buffer = (UCHAR*)malloc(Length);
	return Transfer->Overlapped.hEvent;
}

void usbDisconnect(void)
{
	if (USBThreadRunning) {
		USBThreadRunning = FALSE;
		WaitForSingleObject(USBThread, INFINITE);
		CloseDevice(&deviceData);
	}
}

void usbConnect(void)
{
	usbDisconnect();

	BOOL noDevice;
	HRESULT hr = OpenDevice(&deviceData, &noDevice);
	if (FAILED(hr)) {
		if (noDevice) {
			LOG_MSG("TRANSPUTER: not connected or driver not installed");
		}
		else {
			LOG_MSG("TRANSPUTER: not connected, HRESULT 0x%x", hr);
		}
	}
	else {
		USBThread = CreateThread(NULL, 0, ThreadProc, NULL, 0, NULL);
		if (USBThread == NULL) {
			LOG_MSG("TRANSPUTER: error creating thread");
		}
		else {
			if (!SetThreadPriority(USBThread, THREAD_PRIORITY_ABOVE_NORMAL)) {
				LOG_MSG("TRANSPUTER: SetThreadPriority failed");
			}
			else {
				LOG_MSG("TRANSPUTER: connected");
			}
		}
	}
}

void usbSignalPipe(UCHAR PipeID)
{
	if (!USBThreadRunning || USBReconnectFlag) {
		USBReconnectFlag = false;
		usbConnect();
	}

	switch (PipeID) {
	case PIPE_ID_BULK_OUT:
		SetEvent(hEvents[2]);
		break;
	case PIPE_ID_INTR_OUT:
		SetEvent(hEvents[3]);
		break;
	}
}

void usbInit(USB_CALLBACK callback)
{
	memset(&deviceData, 0, sizeof(deviceData));

	hEvents[0] = InitTransfer(&BulkInTransfer, callback, PIPE_ID_BULK_IN, 64);
	hEvents[1] = InitTransfer(&IntrInTransfer, callback, PIPE_ID_INTR_IN, 4);
	hEvents[2] = InitTransfer(&BulkOutTransfer, callback, PIPE_ID_BULK_OUT, 64);
	hEvents[3] = InitTransfer(&IntrOutTransfer, callback, PIPE_ID_INTR_OUT, 4);

	usbConnect();
}
