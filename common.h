#ifndef _COMMON_H_

#define _COMMON_H_

#include <limits>
#include <cmath>
#include "hls_math.h"
#include "ap_fixed.h"
#include "geometry.h"

static const fixed_t kInfinity = (fixed_t)pow(2,16);//std::numeric_limits<fixed_t>::max();
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

#endif
