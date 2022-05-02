// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xraytriangleintersect.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XRaytriangleintersect_CfgInitialize(XRaytriangleintersect *InstancePtr, XRaytriangleintersect_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XRaytriangleintersect_Start(XRaytriangleintersect *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRaytriangleintersect_ReadReg(InstancePtr->Control_BaseAddress, XRAYTRIANGLEINTERSECT_CONTROL_ADDR_AP_CTRL) & 0x80;
    XRaytriangleintersect_WriteReg(InstancePtr->Control_BaseAddress, XRAYTRIANGLEINTERSECT_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XRaytriangleintersect_IsDone(XRaytriangleintersect *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRaytriangleintersect_ReadReg(InstancePtr->Control_BaseAddress, XRAYTRIANGLEINTERSECT_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XRaytriangleintersect_IsIdle(XRaytriangleintersect *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRaytriangleintersect_ReadReg(InstancePtr->Control_BaseAddress, XRAYTRIANGLEINTERSECT_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XRaytriangleintersect_IsReady(XRaytriangleintersect *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRaytriangleintersect_ReadReg(InstancePtr->Control_BaseAddress, XRAYTRIANGLEINTERSECT_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XRaytriangleintersect_EnableAutoRestart(XRaytriangleintersect *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRaytriangleintersect_WriteReg(InstancePtr->Control_BaseAddress, XRAYTRIANGLEINTERSECT_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XRaytriangleintersect_DisableAutoRestart(XRaytriangleintersect *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRaytriangleintersect_WriteReg(InstancePtr->Control_BaseAddress, XRAYTRIANGLEINTERSECT_CONTROL_ADDR_AP_CTRL, 0);
}

void XRaytriangleintersect_Set_dir_DRAM(XRaytriangleintersect *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRaytriangleintersect_WriteReg(InstancePtr->Control_BaseAddress, XRAYTRIANGLEINTERSECT_CONTROL_ADDR_DIR_DRAM_DATA, (u32)(Data));
    XRaytriangleintersect_WriteReg(InstancePtr->Control_BaseAddress, XRAYTRIANGLEINTERSECT_CONTROL_ADDR_DIR_DRAM_DATA + 4, (u32)(Data >> 32));
}

u64 XRaytriangleintersect_Get_dir_DRAM(XRaytriangleintersect *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRaytriangleintersect_ReadReg(InstancePtr->Control_BaseAddress, XRAYTRIANGLEINTERSECT_CONTROL_ADDR_DIR_DRAM_DATA);
    Data += (u64)XRaytriangleintersect_ReadReg(InstancePtr->Control_BaseAddress, XRAYTRIANGLEINTERSECT_CONTROL_ADDR_DIR_DRAM_DATA + 4) << 32;
    return Data;
}

void XRaytriangleintersect_Set_P1_DRAM_offset(XRaytriangleintersect *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRaytriangleintersect_WriteReg(InstancePtr->Control_BaseAddress, XRAYTRIANGLEINTERSECT_CONTROL_ADDR_P1_DRAM_OFFSET_DATA, (u32)(Data));
    XRaytriangleintersect_WriteReg(InstancePtr->Control_BaseAddress, XRAYTRIANGLEINTERSECT_CONTROL_ADDR_P1_DRAM_OFFSET_DATA + 4, (u32)(Data >> 32));
}

u64 XRaytriangleintersect_Get_P1_DRAM_offset(XRaytriangleintersect *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRaytriangleintersect_ReadReg(InstancePtr->Control_BaseAddress, XRAYTRIANGLEINTERSECT_CONTROL_ADDR_P1_DRAM_OFFSET_DATA);
    Data += (u64)XRaytriangleintersect_ReadReg(InstancePtr->Control_BaseAddress, XRAYTRIANGLEINTERSECT_CONTROL_ADDR_P1_DRAM_OFFSET_DATA + 4) << 32;
    return Data;
}

void XRaytriangleintersect_Set_P2_DRAM_offset(XRaytriangleintersect *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRaytriangleintersect_WriteReg(InstancePtr->Control_BaseAddress, XRAYTRIANGLEINTERSECT_CONTROL_ADDR_P2_DRAM_OFFSET_DATA, (u32)(Data));
    XRaytriangleintersect_WriteReg(InstancePtr->Control_BaseAddress, XRAYTRIANGLEINTERSECT_CONTROL_ADDR_P2_DRAM_OFFSET_DATA + 4, (u32)(Data >> 32));
}

u64 XRaytriangleintersect_Get_P2_DRAM_offset(XRaytriangleintersect *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRaytriangleintersect_ReadReg(InstancePtr->Control_BaseAddress, XRAYTRIANGLEINTERSECT_CONTROL_ADDR_P2_DRAM_OFFSET_DATA);
    Data += (u64)XRaytriangleintersect_ReadReg(InstancePtr->Control_BaseAddress, XRAYTRIANGLEINTERSECT_CONTROL_ADDR_P2_DRAM_OFFSET_DATA + 4) << 32;
    return Data;
}

void XRaytriangleintersect_Set_P3_DRAM_offset(XRaytriangleintersect *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRaytriangleintersect_WriteReg(InstancePtr->Control_BaseAddress, XRAYTRIANGLEINTERSECT_CONTROL_ADDR_P3_DRAM_OFFSET_DATA, (u32)(Data));
    XRaytriangleintersect_WriteReg(InstancePtr->Control_BaseAddress, XRAYTRIANGLEINTERSECT_CONTROL_ADDR_P3_DRAM_OFFSET_DATA + 4, (u32)(Data >> 32));
}

u64 XRaytriangleintersect_Get_P3_DRAM_offset(XRaytriangleintersect *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRaytriangleintersect_ReadReg(InstancePtr->Control_BaseAddress, XRAYTRIANGLEINTERSECT_CONTROL_ADDR_P3_DRAM_OFFSET_DATA);
    Data += (u64)XRaytriangleintersect_ReadReg(InstancePtr->Control_BaseAddress, XRAYTRIANGLEINTERSECT_CONTROL_ADDR_P3_DRAM_OFFSET_DATA + 4) << 32;
    return Data;
}

void XRaytriangleintersect_Set_intersectIndex_offset(XRaytriangleintersect *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRaytriangleintersect_WriteReg(InstancePtr->Control_BaseAddress, XRAYTRIANGLEINTERSECT_CONTROL_ADDR_INTERSECTINDEX_OFFSET_DATA, (u32)(Data));
    XRaytriangleintersect_WriteReg(InstancePtr->Control_BaseAddress, XRAYTRIANGLEINTERSECT_CONTROL_ADDR_INTERSECTINDEX_OFFSET_DATA + 4, (u32)(Data >> 32));
}

u64 XRaytriangleintersect_Get_intersectIndex_offset(XRaytriangleintersect *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRaytriangleintersect_ReadReg(InstancePtr->Control_BaseAddress, XRAYTRIANGLEINTERSECT_CONTROL_ADDR_INTERSECTINDEX_OFFSET_DATA);
    Data += (u64)XRaytriangleintersect_ReadReg(InstancePtr->Control_BaseAddress, XRAYTRIANGLEINTERSECT_CONTROL_ADDR_INTERSECTINDEX_OFFSET_DATA + 4) << 32;
    return Data;
}

void XRaytriangleintersect_InterruptGlobalEnable(XRaytriangleintersect *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRaytriangleintersect_WriteReg(InstancePtr->Control_BaseAddress, XRAYTRIANGLEINTERSECT_CONTROL_ADDR_GIE, 1);
}

void XRaytriangleintersect_InterruptGlobalDisable(XRaytriangleintersect *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRaytriangleintersect_WriteReg(InstancePtr->Control_BaseAddress, XRAYTRIANGLEINTERSECT_CONTROL_ADDR_GIE, 0);
}

void XRaytriangleintersect_InterruptEnable(XRaytriangleintersect *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XRaytriangleintersect_ReadReg(InstancePtr->Control_BaseAddress, XRAYTRIANGLEINTERSECT_CONTROL_ADDR_IER);
    XRaytriangleintersect_WriteReg(InstancePtr->Control_BaseAddress, XRAYTRIANGLEINTERSECT_CONTROL_ADDR_IER, Register | Mask);
}

void XRaytriangleintersect_InterruptDisable(XRaytriangleintersect *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XRaytriangleintersect_ReadReg(InstancePtr->Control_BaseAddress, XRAYTRIANGLEINTERSECT_CONTROL_ADDR_IER);
    XRaytriangleintersect_WriteReg(InstancePtr->Control_BaseAddress, XRAYTRIANGLEINTERSECT_CONTROL_ADDR_IER, Register & (~Mask));
}

void XRaytriangleintersect_InterruptClear(XRaytriangleintersect *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRaytriangleintersect_WriteReg(InstancePtr->Control_BaseAddress, XRAYTRIANGLEINTERSECT_CONTROL_ADDR_ISR, Mask);
}

u32 XRaytriangleintersect_InterruptGetEnabled(XRaytriangleintersect *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XRaytriangleintersect_ReadReg(InstancePtr->Control_BaseAddress, XRAYTRIANGLEINTERSECT_CONTROL_ADDR_IER);
}

u32 XRaytriangleintersect_InterruptGetStatus(XRaytriangleintersect *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XRaytriangleintersect_ReadReg(InstancePtr->Control_BaseAddress, XRAYTRIANGLEINTERSECT_CONTROL_ADDR_ISR);
}

