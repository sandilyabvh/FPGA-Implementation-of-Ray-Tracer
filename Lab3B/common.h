#ifndef _COMMON_H_

#define _COMMON_H_

#include <limits>
#include <cmath>
#include "hls_math.h"
#include "ap_fixed.h"
#include "geometry.h"

static const fixed_t kInfinity = (fixed_t)pow(2,14);//std::numeric_limits<fixed_t>::max();
// NOTE: This decides the accuracy/precision of intersection checks
static const fixed_t kEpsilon = (fixed_t)pow(2,-15);//(fixed_t)1e-5;


typedef struct intersectResult_t
{
    fixed_t t;
    fixed_t u;
    fixed_t v;
    fixed_t isIntersecting;
    uint32_t triIndex;
} intersectResult_t;

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

void customDivide(fixed_t &in1, fixed_t &in2, fixed_t &result);


#endif
