/*
 * Copyright (c) 2014-2016, Freescale Semiconductor, Inc.
 * Copyright 2016-2019 NXP
 * All rights reserved.
 *
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */

#include "mcmgr.h"
#include "mcmgr_internal_core_api.h"
#include "fsl_device_registers.h"
#include "fsl_mailbox.h"

/* Count of cores in the system */
#define MCMGR_CORECOUNT 2

/* Count of memory regions in the system */
#define MCMGR_MEMREGCOUNT 2

volatile mcmgr_core_context_t s_mcmgrCoresContext[MCMGR_CORECOUNT] = {{.state = kMCMGR_ResetCoreState, .startupData = 0},
                                                                      {.state = kMCMGR_ResetCoreState, .startupData = 0}};

/* Initialize structure with informations of all cores */
static const mcmgr_core_info_t s_mcmgrCores[MCMGR_CORECOUNT] = {
    {.coreType = kMCMGR_CoreTypeCortexM4, .coreName = "Main"},
    {.coreType = kMCMGR_CoreTypeCortexM0Plus, .coreName = "Secondary"}};

const mcmgr_system_info_t g_mcmgrSystem = {
    .coreCount = MCMGR_CORECOUNT, .memRegCount = MCMGR_MEMREGCOUNT, .cores = s_mcmgrCores};

mcmgr_status_t mcmgr_early_init_internal(mcmgr_core_t coreNum)
{
    if(coreNum < g_mcmgrSystem.coreCount)
    {
        MAILBOX_Init(MAILBOX);
        
        /* Trigger core up event here, core is starting! */
        MCMGR_TriggerEvent(kMCMGR_RemoteCoreUpEvent, 0);

        return kStatus_MCMGR_Success;
    }
    return kStatus_MCMGR_Error;
}

mcmgr_status_t mcmgr_late_init_internal(mcmgr_core_t coreNum)
{
#if defined(FSL_FEATURE_MAILBOX_SIDE_A)
        NVIC_SetPriority(MAILBOX_IRQn, 5);
#else
        NVIC_SetPriority(MAILBOX_IRQn, 2);
#endif

    NVIC_EnableIRQ(MAILBOX_IRQn);

    return kStatus_MCMGR_Success;
}

mcmgr_status_t mcmgr_start_core_internal(mcmgr_core_t coreNum, void *bootAddress)
{
    if (coreNum != kMCMGR_Core1)
    {
        return kStatus_MCMGR_Error;
    }

    /* Setup the reset handler pointer (PC) and stack pointer value.
     * This is used once the second core runs its startup code.
     * The second core first boots from flash (address 0x00000000)
     * and then detects its identity (Cortex-M0, slave) and checks
     * registers CPBOOT and CPSTACK and use them to continue the
     * boot process.
     * Make sure the startup code for current core (Cortex-M4) is
     * appropriate and shareable with the Cortex-M0 core!
     */
    SYSCON->CPBOOT = SYSCON_CPBOOT_BOOTADDR(*(uint32_t *)((uint8_t *)bootAddress + 0x4));
    SYSCON->CPSTACK = SYSCON_CPSTACK_STACKADDR(*(uint32_t *)bootAddress);

    uint32_t temp = SYSCON->CPUCTRL;
    temp |= 0xc0c48000U;
    SYSCON->CPUCTRL = temp | SYSCON_CPUCTRL_CM0RSTEN_MASK | SYSCON_CPUCTRL_CM0CLKEN_MASK;
    SYSCON->CPUCTRL = (temp | SYSCON_CPUCTRL_CM0CLKEN_MASK) & (~SYSCON_CPUCTRL_CM0RSTEN_MASK);

    return kStatus_MCMGR_Success;
}

mcmgr_status_t mcmgr_get_startup_data_internal(mcmgr_core_t coreNum, uint32_t *startupData)
{
    if (coreNum != kMCMGR_Core1)
    {
        return kStatus_MCMGR_Error;
    }
    if (!startupData)
    {
        return kStatus_MCMGR_Error;
    }

    if (s_mcmgrCoresContext[coreNum].state >= kMCMGR_RunningCoreState)
    {
        *startupData = s_mcmgrCoresContext[coreNum].startupData;
        return kStatus_MCMGR_Success;
    }
    else
    {
        return kStatus_MCMGR_NotReady;
    }
}

mcmgr_status_t mcmgr_stop_core_internal(mcmgr_core_t coreNum)
{
    if (coreNum != kMCMGR_Core1)
    {
        return kStatus_MCMGR_Error;
    }
    uint32_t temp = SYSCON->CPUCTRL;
    temp |= 0xc0c48000U;

    /* hold in reset and disable clock */
    SYSCON->CPUCTRL = (temp | SYSCON_CPUCTRL_CM0RSTEN_MASK) & (~SYSCON_CPUCTRL_CM0CLKEN_MASK);
    return kStatus_MCMGR_Success;
}

mcmgr_status_t mcmgr_get_core_property_internal(mcmgr_core_t coreNum,
                                                mcmgr_core_property_t property,
                                                void *value,
                                                uint32_t *length)
{
    return kStatus_MCMGR_NotImplemented;
}

mcmgr_core_t mcmgr_get_current_core_internal(void)
{
#if defined(FSL_FEATURE_MAILBOX_SIDE_A)
    return kMCMGR_Core0;
#else
    return kMCMGR_Core1;
#endif
}

mcmgr_status_t mcmgr_trigger_event_internal(uint32_t remoteData, bool forcedWrite)
{
#if defined(FSL_FEATURE_MAILBOX_SIDE_A)
    mailbox_cpu_id_t cpu_id = kMAILBOX_CM0Plus;
#else
    mailbox_cpu_id_t cpu_id = kMAILBOX_CM4;
#endif
    /* When forcedWrite is false, wait until the Mailbox Interrupt request register is cleared,
       i.e. until previously sent data is processed. */
    if(false == forcedWrite)
    {
        while(0 != MAILBOX_GetValue(MAILBOX, cpu_id))
        {
        }
    }
    MAILBOX_SetValueBits(MAILBOX, cpu_id, remoteData);
    return kStatus_MCMGR_Success;
}

/*!
 * @brief ISR handler
 *
 * This function is called when data from Mailbox is received
 */
void MAILBOX_IRQHandler(void)
{
#if defined(FSL_FEATURE_MAILBOX_SIDE_A)
    mailbox_cpu_id_t cpu_id = kMAILBOX_CM4;
#else
    mailbox_cpu_id_t cpu_id = kMAILBOX_CM0Plus;
#endif
    uint32_t data;
    uint16_t eventType;
    uint16_t eventData;

    data = MAILBOX_GetValue(MAILBOX, cpu_id);
    /* To be MISRA compliant, return value needs to be checked even it could not never be 0 */
    if(0 != data)
    {
        MAILBOX_ClearValueBits(MAILBOX, cpu_id, data);

        eventType = data >> 16;
        eventData = data & 0xFFFF;

        if ((eventType >= kMCMGR_RemoteCoreUpEvent) && (eventType < kMCMGR_EventTableLength))
        {
            if (MCMGR_eventTable[eventType].callback != NULL)
            {
                MCMGR_eventTable[eventType].callback(eventData, MCMGR_eventTable[eventType].callbackData);
            }
        }
    }

    /* Add for ARM errata 838869, affects Cortex-M4, Cortex-M4F Store immediate overlapping
      exception return operation might vector to incorrect interrupt */
#if defined __CORTEX_M && (__CORTEX_M == 4U)
    __DSB();
#endif
}

#if defined(MCMGR_HANDLE_EXCEPTIONS) && (MCMGR_HANDLE_EXCEPTIONS == 1)
/* This overrides the weak DefaultISR implementation from startup file */
void DefaultISR(void)
{
    uint32_t exceptionNumber = __get_IPSR();
    MCMGR_TriggerEvent(kMCMGR_RemoteExceptionEvent, (uint16_t)exceptionNumber);
    while (1)
    {
    } /* stop here */
}

void HardFault_Handler(void)
{
    DefaultISR();
}

void NMI_Handler(void)
{
    DefaultISR();
}

#if defined(__CM4_CMSIS_VERSION)
/* Cortex-M4 contains additional exception handlers */
void MemManage_Handler(void)
{
    DefaultISR();
}

void BusFault_Handler(void)
{
    DefaultISR();
}

void UsageFault_Handler(void)
{
    DefaultISR();
}
#endif

#endif /* MCMGR_HANDLE_EXCEPTIONS */

