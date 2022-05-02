// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XRAYTRIANGLEINTERSECT_H
#define XRAYTRIANGLEINTERSECT_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xraytriangleintersect_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_BaseAddress;
} XRaytriangleintersect_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XRaytriangleintersect;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XRaytriangleintersect_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XRaytriangleintersect_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XRaytriangleintersect_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XRaytriangleintersect_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XRaytriangleintersect_Initialize(XRaytriangleintersect *InstancePtr, u16 DeviceId);
XRaytriangleintersect_Config* XRaytriangleintersect_LookupConfig(u16 DeviceId);
int XRaytriangleintersect_CfgInitialize(XRaytriangleintersect *InstancePtr, XRaytriangleintersect_Config *ConfigPtr);
#else
int XRaytriangleintersect_Initialize(XRaytriangleintersect *InstancePtr, const char* InstanceName);
int XRaytriangleintersect_Release(XRaytriangleintersect *InstancePtr);
#endif

void XRaytriangleintersect_Start(XRaytriangleintersect *InstancePtr);
u32 XRaytriangleintersect_IsDone(XRaytriangleintersect *InstancePtr);
u32 XRaytriangleintersect_IsIdle(XRaytriangleintersect *InstancePtr);
u32 XRaytriangleintersect_IsReady(XRaytriangleintersect *InstancePtr);
void XRaytriangleintersect_EnableAutoRestart(XRaytriangleintersect *InstancePtr);
void XRaytriangleintersect_DisableAutoRestart(XRaytriangleintersect *InstancePtr);

void XRaytriangleintersect_Set_dir_DRAM(XRaytriangleintersect *InstancePtr, u64 Data);
u64 XRaytriangleintersect_Get_dir_DRAM(XRaytriangleintersect *InstancePtr);
void XRaytriangleintersect_Set_P1_DRAM_offset(XRaytriangleintersect *InstancePtr, u64 Data);
u64 XRaytriangleintersect_Get_P1_DRAM_offset(XRaytriangleintersect *InstancePtr);
void XRaytriangleintersect_Set_P2_DRAM_offset(XRaytriangleintersect *InstancePtr, u64 Data);
u64 XRaytriangleintersect_Get_P2_DRAM_offset(XRaytriangleintersect *InstancePtr);
void XRaytriangleintersect_Set_P3_DRAM_offset(XRaytriangleintersect *InstancePtr, u64 Data);
u64 XRaytriangleintersect_Get_P3_DRAM_offset(XRaytriangleintersect *InstancePtr);
void XRaytriangleintersect_Set_intersectIndex_offset(XRaytriangleintersect *InstancePtr, u64 Data);
u64 XRaytriangleintersect_Get_intersectIndex_offset(XRaytriangleintersect *InstancePtr);

void XRaytriangleintersect_InterruptGlobalEnable(XRaytriangleintersect *InstancePtr);
void XRaytriangleintersect_InterruptGlobalDisable(XRaytriangleintersect *InstancePtr);
void XRaytriangleintersect_InterruptEnable(XRaytriangleintersect *InstancePtr, u32 Mask);
void XRaytriangleintersect_InterruptDisable(XRaytriangleintersect *InstancePtr, u32 Mask);
void XRaytriangleintersect_InterruptClear(XRaytriangleintersect *InstancePtr, u32 Mask);
u32 XRaytriangleintersect_InterruptGetEnabled(XRaytriangleintersect *InstancePtr);
u32 XRaytriangleintersect_InterruptGetStatus(XRaytriangleintersect *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
