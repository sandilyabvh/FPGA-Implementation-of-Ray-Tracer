// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xraytriangleintersect.h"

extern XRaytriangleintersect_Config XRaytriangleintersect_ConfigTable[];

XRaytriangleintersect_Config *XRaytriangleintersect_LookupConfig(u16 DeviceId) {
	XRaytriangleintersect_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XRAYTRIANGLEINTERSECT_NUM_INSTANCES; Index++) {
		if (XRaytriangleintersect_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XRaytriangleintersect_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XRaytriangleintersect_Initialize(XRaytriangleintersect *InstancePtr, u16 DeviceId) {
	XRaytriangleintersect_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XRaytriangleintersect_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XRaytriangleintersect_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

