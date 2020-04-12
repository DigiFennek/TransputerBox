/*
 * @brief Configuration file needed for libUSB applications.
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
#include "lpc_types.h"
#include "error.h"
#include "usbd_rom_api.h"

#ifndef __LIBUSBDEV_H_
#define __LIBUSBDEV_H_

#ifdef __cplusplus
extern "C"
{
#endif

/** @ingroup EXAMPLES_USBDROM_11U6X_LUSBK
 * @{
 */

/**
 * @brief	Initialize USB interface.
 * @return	If found returns the address of requested interface else returns NULL.
 */
extern ErrorCode_t libusbdev_init(void);

/**
 * @brief	Check if libusbdev is connected USB host application.
 * @return	Returns non-zero value if connected.
 */
extern bool libusbdev_Connected(void);

extern ErrorCode_t libusbdev_SendInterrupt(uint32_t status);
extern ErrorCode_t libusbdev_ReadInterrupt(uint32_t *status);

/**
 * @}
 */

#ifdef __cplusplus
}
#endif

#endif /* __LIBUSBDEV_H_ */
