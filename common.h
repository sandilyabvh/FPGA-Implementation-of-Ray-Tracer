#ifndef _COMMON_H_

#define _COMMON_H_

#include <limits>
#include <cmath>
#include "hls_math.h"
#include "ap_fixed.h"
#include "geometry.h"

static const fixed_t kInfinity = pow(2,10);//std::numeric_limits<fixed_t>::max();
// NOTE: This decides the accuracy/precision of intersection checks
static const fixed_t kEpsilon = (fixed_t)1e-5;

fixed_t customNorm3(fixed_t x[3]);

void customNormalize3(fixed_t x[3]);

void customMultVecMatrix(fixed_t src[3], fixed_t dst[3], fixed_t x[4][4]);

void customMultDirMatrix(fixed_t src[3], fixed_t dst[3], fixed_t x[4][4]);

/*
* Function to implement cross product
* result = in1 x in2
*/
void customCrossProduct(fixed_t in1[3], fixed_t in2[3], fixed_t result[3]);

/*
* Function to implement dot product
* result = in1 . in2
*/
void customDotProduct(fixed_t in1[3], fixed_t in2[3], fixed_t &result);

/*
* Function to implement subration
* result = in1 - in2
*/
void customSubtract(fixed_t in1[3], fixed_t in2[3], fixed_t result[3]);


void copy3(fixed_t in[3], fixed_t out[3]);


void copy2(fixed_t in[2], fixed_t out[2]);

fixed_t customFmod(fixed_t x);

/*
* Copy functions for DRAM interactions
*/
void copyCameraToWorld(
    fixed_t cameraToWorld_DRAM[4][4],
    fixed_t cameraToWorld[4][4]);

void copyTexCoordinates(
    fixed_t texCoordinates_DRAM[NUM_TRIS*3][2],
    fixed_t texCoordinates[NUM_TRIS*3][2]);

void copyP(
    fixed_t P_DRAM[MAX_VERT_INDEX][3],
    fixed_t P[MAX_VERT_INDEX][3]);

void copyTrisIndex(
    uint32_t trisIndex_DRAM[NUM_TRIS * 3],
    uint32_t trisIndex[NUM_TRIS * 3]);

void copyFrameBuffer(
    fixed_t framebuffer[WIDTH * HEIGHT][3],
    fixed_t framebuffer_DRAM[WIDTH * HEIGHT][3]);

#endif
