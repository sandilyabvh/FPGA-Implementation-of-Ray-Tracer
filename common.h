#ifndef _COMMON_H_

#define _COMMON_H_

#include <limits>
#include <string.h>
#include "geometry.h"

#define WIDTH  10
#define HEIGHT 10
#define FOV    18

static const float kInfinity = std::numeric_limits<float>::max();
static const float kEpsilon = 1e-8;
//static const float kDefaultBackgroundColor[3] = {0.235294, 0.67451, 0.843137};


float customNorm3(float x[3]);

void customNormalize3(float x[3]);

inline
float clamp(const float &lo, const float &hi, const float &v)
{
    return std::max(lo, std::min(hi, v));
}

inline
float deg2rad(const float deg)
{
    return deg * M_PI / 180;
}

// struct Options
// {
// };

void customMultVecMatrix(float src[3], float dst[3], float x[4][4]);

void customMultDirMatrix(float src[3], float dst[3], float x[4][4]);

// \brief transpose itself
void customTranspose (float mat[4][4]);

void customInverse(float mat[4][4], float inverseMat[4][4]);

void customCopy44(float in[4][4], float out[4][4]);


/*
* Function to implement cross product
* result = in1 x in2
*/
void customCrossProduct(float in1[3], float in2[3], float result[3]);

/*
* Function to implement dot product
* result = in1 . in2
*/
void customDotProduct(float in1[3], float in2[3], float &result);

/*
* Function to implement subration
* result = in1 - in2
*/
void customSubtract(float in1[3], float in2[3], float result[3]);


void copy3(float in[3], float out[3]);


void copy2(float in[2], float out[2]);

#endif
