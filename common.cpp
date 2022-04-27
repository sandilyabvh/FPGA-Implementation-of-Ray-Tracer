#include "common.h"
#include "hls_math.h"
#include "ap_fixed.h"

void customMultVecMatrix(fixed_t src[3], fixed_t dst[3], fixed_t x[4][4])
{
	fixed_t val[4];
    
#pragma HLS pipeline
    for (int i = 0; i < 4; ++i)
    {
    	fixed_t temp_val = 0;
        for (int j = 0; j < 3; ++j)
        {
            temp_val += src[j] * x[j][i];
        }
        val[i] = temp_val + x[3][i];
    }

#pragma HLS pipeline
    for (int i = 0; i < 3; ++i)
    {
        dst[i] = val[i] / val[3];
    }
}

void customMultDirMatrix(fixed_t src[3], fixed_t dst[3], fixed_t x[4][4])
{
	fixed_t val[3];

#pragma HLS pipeline
    for (int i = 0; i < 3; ++i)
    {
    	fixed_t temp_val = 0;
        for (int j = 0; j < 3; ++j)
        {
            temp_val += src[j] * x[j][i];
        }
        val[i] = temp_val;
    }

#pragma HLS pipeline
    for (int i = 0; i < 3; ++i)
    {
        dst[i] = val[i];
    }
}

/*
* Function to implement cross product
* result = in1 x in2
*/
void customCrossProduct(fixed_t in1[3], fixed_t in2[3], fixed_t result[3])
{
#pragma HLS pipeline
    for (int i = 0; i < 3; ++i)
    {
        result[i] = in1[(i+1)%3] * in2[(i+2)%3] - in1[(i+2)%3] * in2[(i+1)%3];
    }
}

/*
* Function to implement dot product
* result = in1 . in2
*/
void customDotProduct(fixed_t in1[3], fixed_t in2[3], fixed_t &result)
{
	fixed_t temp_val = 0;
#pragma HLS pipeline
    for (int i = 0; i < 3; ++i)
    {
        temp_val += in1[i] * in2[i];
    }
    result = temp_val;
}

/*
* Function to implement subration
* result = in1 - in2
*/
void customSubtract(fixed_t in1[3], fixed_t in2[3], fixed_t result[3])
{
#pragma HLS pipeline
    for (int i = 0; i < 3; ++i)
    {
        result[i] = in1[i] - in2[i];
    }
}

void copy3(fixed_t in[3], fixed_t out[3])
{
#pragma HLS pipeline
    for (int i = 0; i < 3; ++i)
    {
        out[i] = in[i];
    }
}

void copy2(fixed_t in[2], fixed_t out[2])
{
#pragma HLS pipeline
    for (int i = 0; i < 2; ++i)
    {
        out[i] = in[i];
    }
}

fixed_t customNorm3(fixed_t x[3])
{
    fixed_t temp_val;
    customDotProduct(x, x, temp_val);
    return temp_val;
}

void customNormalize3(fixed_t x[3])
{
    fixed_t n = customNorm3(x);
    if (n > 0.0)
    {
        fixed_t factor;
        #ifdef CSIM_DEBUG
            factor = 1 / sqrt(n);
        #else
            factor = 1 / hls::sqrt(n);
        #endif
        for (int i = 0; i < 3; ++i)
        {
            x[i] *= factor;
        }
    }
}

fixed_t customFmod(fixed_t x)
{
    return x - (int)x;
}
