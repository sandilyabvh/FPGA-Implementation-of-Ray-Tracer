#include "common.h"
#include "hls_math.h"
#include "ap_fixed.h"
#include "fxp_sqrt.h"

void customMultVecMatrix(fixed_t src[3], fixed_t dst[3], fixed_t x[4][4])
{
    fixed_t val[4];
    fixed_t temp_val[4][3];
    for (int i = 0; i < 4; ++i)
    {
#pragma HLS pipeline
        temp_val[i][0] = 0;
        temp_val[i][1] = 0;
        temp_val[i][2] = 0;
        for (int j = 0; j < 3; ++j)
        {
//#pragma HLS unroll
            temp_val[i][j] = src[j] * x[j][i];
        }
        val[i] = temp_val[i][0]+temp_val[i][1]+temp_val[i][2]+x[3][i];
    }

    for (int i = 0; i < 3; ++i)
    {
//#pragma HLS unroll
        dst[i] = val[i] / val[3];
    }
}

void customMultDirMatrix(fixed_t src[3], fixed_t dst[3], fixed_t x[4][4])
{
    fixed_t val[3];

    for (int i = 0; i < 3; ++i)
    {
#pragma HLS pipeline
        fixed_t temp_val = 0;
        for (int j = 0; j < 3; ++j)
        {
//#pragma HLS unroll
            temp_val += src[j] * x[j][i];
        }
        val[i] = temp_val;

    }

    for (int i = 0; i < 3; ++i)
    {
//#pragma HLS unroll
        dst[i] = val[i];
    }
}

/*
* Function to implement cross product
* result = in1 x in2
*/
void customCrossProduct(fixed_t in1[3], fixed_t in2[3], fixed_t result[3])
{
    for (int i = 0; i < 3; ++i)
    {
//#pragma HLS unroll
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
    for (int i = 0; i < 3; ++i)
    {
//#pragma HLS unroll
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
    for (int i = 0; i < 3; ++i)
    {
//#pragma HLS unroll
        result[i] = in1[i] - in2[i];
    }
}

void copy3(fixed_t in[3], fixed_t out[3])
{
    for (int i = 0; i < 3; ++i)
    {
//#pragma HLS unroll
        out[i] = in[i];
    }
}

void copy2(fixed_t in[2], fixed_t out[2])
{
    for (int i = 0; i < 2; ++i)
    {
//#pragma HLS unroll
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
    fixed_t factor;
    #ifdef CSIM_DEBUG
        factor = 1.0;
        if(n>0.0)
            factor = 1.0 / sqrt(n);
    #else
        ufixed_t sqrt_val;
        ufixed_t u_n = (ufixed_t)n;
        sqrt_val = (ufixed_t)1.0;
        factor = (fixed_t)1.0;
        if(n>(fixed_t)0.0)
        {
            fxp_sqrt(sqrt_val, u_n);
            factor = (fixed_t)1.0 / sqrt_val;
        }
    #endif
    for (int i = 0; i < 3; ++i)
    {
//#pragma HLS unroll
        x[i] *= factor;
    }
}

fixed_t customFmod(fixed_t x)
{
    return x - (int)x;
}
