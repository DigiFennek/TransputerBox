/*
 * @brief USB Band Width test and WCID examples for USB ROM API.
 *
 *
 * @note
 * Copyright(C) NXP Semiconductors, 2013
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
#include "app_usbd_cfg.h"
#include "libusbdev.h"
#include "libusbdev_desc.h"

#ifdef __LPC5411X__
#include "romapi_5411x.h"
#include "fsl_power.h"
#include "fsl_ctimer.h"
#include "fsl_fro_calib.h"
#endif

/*******************************************************************************
 * Definitions
 ******************************************************************************/
#ifdef __LPC5411X__
#define CTIMER CTIMER0
#endif

uint32_t bulk_in_callback(uint8_t *buffer, uint32_t len);
bool bulk_out_callback(uint8_t *buffer, uint32_t len);

/*****************************************************************************
 * Private types/enumerations/variables
 ****************************************************************************/
static ALIGN(2048) uint8_t g_memUsbStack[USB_STACK_MEM_SIZE];

USBD_HANDLE_T hUsb;

/**
 * Structure containing Virtual Comm port control data
 */
typedef struct _LUSB_CTRL_ {
	uint32_t newStatus;		/*!< New interrupt status */
	uint32_t curStatus;		/*!< Current interrupt status */
	uint32_t outStatus;     /*!< Current interrupt status */
	bool outStatusFlag;
	uint32_t BulkInBusyTimer;
} LUSB_CTRL_T;

static uint8_t BulkOutBuffer[USB_FS_MAX_BULK_PACKET];
static uint8_t BulkInBuffer[USB_FS_MAX_BULK_PACKET];

LUSB_CTRL_T g_lusb;

#define BULK_IN_BUSY_TIMEOUT_1MS 10000

/*****************************************************************************
 * Public types/enumerations/variables
 ****************************************************************************/
const USBD_API_T *g_pUsbApi;

/*****************************************************************************
 * Private functions
 ****************************************************************************/

/* Handle USB RESET event */
ErrorCode_t lusb_ResetEvent(USBD_HANDLE_T hUsb)
{
	/* reset the control structure */
	memset(&g_lusb, 0, sizeof(LUSB_CTRL_T));

	USBD_API->hw->Reset(hUsb);

	return LPC_OK;
}

/* USB bulk EP_IN endpoint handler */
ErrorCode_t lusb_BulkIN_Hdlr(USBD_HANDLE_T hUsb, void *data, uint32_t event)
{
	if (event == USB_EVT_IN) {
		uint32_t len = bulk_in_callback(BulkInBuffer, sizeof(BulkInBuffer));
		if (len > 0) {
			if (USBD_API->hw->WriteEP(hUsb, LUSB_IN_EP, BulkInBuffer, len)) {
				g_lusb.BulkInBusyTimer = BULK_IN_BUSY_TIMEOUT_1MS;
			}
		} else {
			g_lusb.BulkInBusyTimer = 0;
		}
	}
	return LPC_OK;
}

/* USB bulk EP_IN endpoint handler */
ErrorCode_t lusb_IntrIN_Hdlr(USBD_HANDLE_T hUsb, void *data, uint32_t event)
{
	if (event == USB_EVT_IN) {
		/* check if we have new status to send */
		if (g_lusb.newStatus) {
			/* swap and send status */
			g_lusb.curStatus = g_lusb.newStatus;
			g_lusb.newStatus = 0;
			USBD_API->hw->WriteEP(hUsb, LUSB_INTR_IN_EP, (uint8_t *) &g_lusb.curStatus, sizeof(uint32_t));
		}
		else {
			/* nothing to send */
			g_lusb.curStatus = 0;
		}
	}
	return LPC_OK;
}

/* USB bulk EP_OUT endpoint handler */
ErrorCode_t lusb_BulkOUT_Hdlr(USBD_HANDLE_T hUsb, void *data, uint32_t event)
{
	if (event == USB_EVT_OUT) {
		uint32_t len = USBD_API->hw->ReadEP(hUsb, LUSB_OUT_EP, BulkOutBuffer);
		if (len > 0) {
			bulk_out_callback(BulkOutBuffer, len);
		}
	}
	return LPC_OK;
}

/* USB bulk EP_OUT endpoint handler */
ErrorCode_t lusb_IntrOUT_Hdlr(USBD_HANDLE_T hUsb, void *data, uint32_t event)
{
	if (event == USB_EVT_OUT) {
		uint32_t len = USBD_API->hw->ReadEP(hUsb, LUSB_INTR_OUT_EP, (uint8_t*)&g_lusb.outStatus);
		if (len == sizeof(uint32_t)) {
			g_lusb.outStatusFlag = true;
		}
	}

	return LPC_OK;
}


/* Handler for WCID USB device requests. */
ErrorCode_t WCID_hdlr(USBD_HANDLE_T hUsb, void *data, uint32_t event)
{
	USB_CORE_CTRL_T *pCtrl = (USB_CORE_CTRL_T *) hUsb;
	ErrorCode_t ret = ERR_USBD_UNHANDLED;

	if (event == USB_EVT_SETUP) {
		switch (pCtrl->SetupPacket.bmRequestType.BM.Type) {
		case REQUEST_STANDARD:
			if ((pCtrl->SetupPacket.bmRequestType.BM.Recipient == REQUEST_TO_DEVICE) &&
				(pCtrl->SetupPacket.bRequest == USB_REQUEST_GET_DESCRIPTOR) &&
				(pCtrl->SetupPacket.wValue.WB.H == USB_STRING_DESCRIPTOR_TYPE) &&
				(pCtrl->SetupPacket.wValue.WB.L == 0x00EE)) {
				pCtrl->EP0Data.pData = (uint8_t *) WCID_String_Descriptor;
				pCtrl->EP0Data.Count = pCtrl->SetupPacket.wLength;
				USBD_API->core->DataInStage(pCtrl);
				ret = LPC_OK;
			}
			break;

		case REQUEST_VENDOR:
			switch (pCtrl->SetupPacket.bRequest) {
			case 0x0E:		/* libusbK benchmark test */
				pCtrl->EP0Buf[0] = 0x02;
				pCtrl->EP0Data.pData = (uint8_t *) &pCtrl->EP0Buf[0];
				pCtrl->EP0Data.Count = pCtrl->SetupPacket.wLength;
				USBD_API->core->DataInStage(pCtrl);
				ret = LPC_OK;
				break;

			case 0x11:		/* libusbK benchmark test */
				pCtrl->EP0Buf[0] = 'A';
				pCtrl->EP0Buf[1] = 'B';
				pCtrl->EP0Buf[2] = 'C';
				pCtrl->EP0Data.pData = (uint8_t *) &pCtrl->EP0Buf[0];
				pCtrl->EP0Data.Count = pCtrl->SetupPacket.wLength;
				USBD_API->core->DataInStage(pCtrl);
				ret = LPC_OK;
				break;

			case 0x10:		/* libusbK benchmark test */
				pCtrl->EP0Data.pData = pCtrl->EP0Buf;	/* data to be received */
				ret = LPC_OK;
				break;

			case LUSB_PID:
				switch (pCtrl->SetupPacket.bmRequestType.BM.Recipient) {
				case REQUEST_TO_DEVICE:
					if (pCtrl->SetupPacket.wIndex.W == 0x0004) {
						pCtrl->EP0Data.pData = (uint8_t *) WCID_CompatID_Descriptor;
						pCtrl->EP0Data.Count = pCtrl->SetupPacket.wLength;
						USBD_API->core->DataInStage(pCtrl);
						ret = LPC_OK;
					}
					break;
				case REQUEST_TO_INTERFACE:
					if (pCtrl->SetupPacket.wIndex.W == 0x0005) {
						pCtrl->EP0Data.pData = (uint8_t *) WCID_Properties_Descriptor;
						pCtrl->EP0Data.Count = pCtrl->SetupPacket.wLength;
						USBD_API->core->DataInStage(pCtrl);
						ret = LPC_OK;
					}
					break;
				}
				break;
			}
		}
	}
	else if ((event == USB_EVT_OUT) && (pCtrl->SetupPacket.bmRequestType.BM.Type == REQUEST_VENDOR)) {
		if (pCtrl->SetupPacket.bRequest == 0x10) {
			USBD_API->core->StatusInStage(pCtrl);
			ret = LPC_OK;
		}
	}

	return ret;
}

ErrorCode_t USB_SOF_Event_internal(USBD_HANDLE_T hUsb)
{
	USB_SOF_Event(hUsb);

	if (g_lusb.BulkInBusyTimer) {
		g_lusb.BulkInBusyTimer--;
	} else {
		if (libusbdev_Connected()) {
			lusb_BulkIN_Hdlr(hUsb, NULL, USB_EVT_IN);
		}
	}

	return LPC_OK;
}

#ifdef __LPC5411X__
static void HW_TimerInit(void)
{
    ErrorCode_t ret = LPC_OK;
    uint32_t timerFreq;
    ctimer_config_t config;
    /* Enable the asynchronous bridge */
    SYSCON->ASYNCAPBCTRL = 1;
    /* Use main clock for ctimer3/4 */
    CLOCK_AttachClk(kMAIN_CLK_to_ASYNC_APB);

    POWER_DisablePD(kPDRUNCFG_PD_USB0_PHY); /*Turn on USB Phy */
    /* enable USB IP clock */
    CLOCK_EnableUsbfs0Clock(kCLOCK_UsbSrcFro, CLOCK_GetFreq(kCLOCK_FroHf));

    /* Initialize ctimer */
    CTIMER_GetDefaultConfig(&config);
    CTIMER_Init(CTIMER, &config);
    /* Get ctimer clock frequency */
    if ((CTIMER == CTIMER0) || (CTIMER == CTIMER1) || (CTIMER == CTIMER2))
    {
        timerFreq = CLOCK_GetFreq(kCLOCK_BusClk);
    }
    else
    {
        timerFreq = CLOCK_GetAsyncApbClkFreq();
    }

    /* Return the version of the FRO Calibration library */
    if (fro_calib_Get_Lib_Ver() == 0)
    {
        while (1U)
            ;
    }

    /* pass ctimer instance & ctimer clock frquency in KHz */
    ret = Chip_TIMER_Instance_Freq(CTIMER, timerFreq / 1000);
    if (ret != LPC_OK)
    {
        while (1U)
            ;
    }
}
#endif

/*****************************************************************************
 * Public functions
 ****************************************************************************/

/* Handle interrupt from USB */
void USB0_IRQHandler(void)
{
    uint32_t *addr = (uint32_t *)USB0->EPLISTSTART;

    if (USB0->DEVCMDSTAT & _BIT(8))
    {                             /* if setup packet is received */
        addr[2] &= ~(0x80000000); /* clear active bit for EP0_IN */
    }
#ifdef __LPC5411X__
    USBD_API->hw->EnableEvent(hUsb, 0, USB_EVT_SOF, 1);
#endif
    USBD_API->hw->ISR(hUsb);
}

/* Initialize USB interface. */
int libusbdev_init(void)
{
	USBD_API_INIT_PARAM_T usb_param;
	USB_CORE_DESCS_T desc;
	ErrorCode_t ret = LPC_OK;

	/* enable clocks and USB PHY/pads */
#ifdef __LPC5411X__
	HW_TimerInit();
#else
	Chip_USB_Init();
#endif

    /* initialize USBD ROM API pointer. */
    g_pUsbApi = (const USBD_API_T *)LPC_ROM_API->usbdApiBase;

	/* initialize call back structures */
	memset((void *) &usb_param, 0, sizeof(USBD_API_INIT_PARAM_T));
	usb_param.usb_reg_base = USB0_BASE;
	usb_param.max_num_ep = LUSB_NUM_OF_EP + 1;
	usb_param.mem_base = (uint32_t)&g_memUsbStack;
	usb_param.mem_size = USB_STACK_MEM_SIZE;
	usb_param.USB_Reset_Event = lusb_ResetEvent;
    usb_param.USB_SOF_Event = USB_SOF_Event_internal;

	/* Set the USB descriptors */
	desc.device_desc = (uint8_t *) USB_DeviceDescriptor;
	desc.string_desc = (uint8_t *) USB_StringDescriptor;
	/* Note, to pass USBCV test full-speed only devices should have both
	 * descriptor arrays point to same location and device_qualifier set
	 * to 0.
	 */
	desc.high_speed_desc = (uint8_t *) USB_FsConfigDescriptor;
	desc.full_speed_desc = (uint8_t *) USB_FsConfigDescriptor;
	desc.device_qualifier = 0;

	/* USB Initialization */
	ret = USBD_API->hw->Init(&hUsb, &desc, &usb_param);
	if (ret == LPC_OK) {

		/*	WORKAROUND for artf32219 ROM driver BUG:
		    The mem_base parameter part of USB_param structure returned
		    by Init() routine is not accurate causing memory allocation issues for
		    further components.
		 */
		usb_param.mem_base = (uint32_t)&g_memUsbStack + (USB_STACK_MEM_SIZE - usb_param.mem_size);

		/* register WCID handler */
		ret = USBD_API->core->RegisterClassHandler(hUsb, WCID_hdlr, &g_lusb);
		if (ret == LPC_OK) {
			/* register EP2 interrupt handler */
			ret = USBD_API->core->RegisterEpHandler(hUsb, 2, lusb_BulkOUT_Hdlr, &g_lusb);
			if (ret == LPC_OK) {
				ret = USBD_API->core->RegisterEpHandler(hUsb, 3, lusb_BulkIN_Hdlr, &g_lusb);
				if (ret == LPC_OK) {
					ret = USBD_API->core->RegisterEpHandler(hUsb, 4, lusb_IntrOUT_Hdlr, &g_lusb);
					if (ret == LPC_OK) {
						ret = USBD_API->core->RegisterEpHandler(hUsb, 5, lusb_IntrIN_Hdlr, &g_lusb);
						if (ret == LPC_OK) {
							/*  enable USB interrrupts */
							NVIC_EnableIRQ(USB0_IRQn);
							/* now connect */
							USBD_API->hw->Connect(hUsb, 1);
						}
					}
				}
			}
		}
	}

	return ret;
}

/* Check if libusbdev is connected USB host application. */
bool libusbdev_Connected(void)
{
	if (USB0->DEVCMDSTAT & USB_DEVCMDSTAT_VBUSDEBOUNCED_MASK) {
		return USB_IsConfigured(hUsb);
	}
	return false;
}

/* Send interrupt signal to USB host application. */
ErrorCode_t libusbdev_SendInterrupt(uint32_t status)
{
	LUSB_CTRL_T *pUSB = (LUSB_CTRL_T *) &g_lusb;
	ErrorCode_t ret = ERR_FAILED;

	if (libusbdev_Connected()) {
		/* enter critical section */
		NVIC_DisableIRQ(USB0_IRQn);
		/* update new status */
		pUSB->newStatus = status;
		/* exit critical section */
		NVIC_EnableIRQ(USB0_IRQn);

		/* check if we are in middle of sending current status */
		if ( pUSB->curStatus == 0) {
			/* If not update current status and send */
			pUSB->curStatus = pUSB->newStatus;
			pUSB->newStatus = 0;
			USBD_API->hw->WriteEP(hUsb, LUSB_INTR_IN_EP, (uint8_t *) &pUSB->curStatus, sizeof(uint32_t));
			ret = LPC_OK;
		}
	}

	return ret;
}

ErrorCode_t libusbdev_ReadInterrupt(uint32_t *status)
{
	LUSB_CTRL_T *pUSB = (LUSB_CTRL_T *) &g_lusb;
	ErrorCode_t ret = ERR_FAILED;

	if ( pUSB->outStatusFlag ) {
		pUSB->outStatusFlag = false;
		*status = pUSB->outStatus;
		ret = LPC_OK;
	}

	return ret;
}
