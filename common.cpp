#include "common.h"
#include "hls_math.h"
#include "ap_fixed.h"
#include "fxp_sqrt.h"

void customMultVecMatrix(fixed_t src[3], fixed_t dst[3], fixed_t x[4][4])
{
#pragma HLS BIND_OP variable=src op=mul impl=fabric
#pragma HLS BIND_OP variable=src op=add impl=fabric
#pragma HLS BIND_OP variable=x   op=mul impl=fabric
#pragma HLS BIND_OP variable=x   op=add impl=fabric
    fixed_t val[4];
    fixed_t temp_val[4][3];
#pragma HLS BIND_OP variable=temp_val op=add impl=fabric
#pragma HLS BIND_OP variable=temp_val op=fdiv impl=fabric
#pragma HLS BIND_OP variable=temp_val op=hdiv impl=fabric
#pragma HLS BIND_OP variable=temp_val op=ddiv impl=fabric
    for (int i = 0; i < 4; ++i)
    {
        for (int j = 0; j < 3; ++j)
        {
            temp_val[i][j] = src[j] * x[j][i];
        }
        val[i] = temp_val[i][0]+temp_val[i][1]+temp_val[i][2]+x[3][i];
    }

    for (int i = 0; i < 3; ++i)
    {
        dst[i] = val[i] / val[3];
    }
}

void customMultDirMatrix(fixed_t src[3], fixed_t dst[3], fixed_t x[4][4])
{
#pragma HLS BIND_OP variable=src op=mul impl=fabric
#pragma HLS BIND_OP variable=src op=add impl=fabric
#pragma HLS BIND_OP variable=x   op=mul impl=fabric
#pragma HLS BIND_OP variable=x   op=add impl=fabric
    fixed_t val[3];

    for (int i = 0; i < 3; ++i)
    {
        fixed_t temp_val = 0;
        for (int j = 0; j < 3; ++j)
        {
            temp_val += src[j] * x[j][i];
        }
        val[i] = temp_val;

    }

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
#pragma HLS BIND_OP variable=in1 op=mul impl=fabric
#pragma HLS BIND_OP variable=in1 op=add impl=fabric
#pragma HLS BIND_OP variable=in2 op=mul impl=fabric
#pragma HLS BIND_OP variable=in2 op=add impl=fabric
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
#pragma HLS BIND_OP variable=in1 op=mul impl=fabric
#pragma HLS BIND_OP variable=in1 op=add impl=fabric
#pragma HLS BIND_OP variable=in2 op=mul impl=fabric
#pragma HLS BIND_OP variable=in2 op=add impl=fabric
    fixed_t temp_val = 0;
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
#pragma HLS BIND_OP variable=in1 op=sub impl=fabric
#pragma HLS BIND_OP variable=in2 op=sub impl=fabric
    for (int i = 0; i < 3; ++i)
    {
        result[i] = in1[i] - in2[i];
    }
}

void copy3(fixed_t in[3], fixed_t out[3])
{
    for (int i = 0; i < 3; ++i)
    {
        out[i] = in[i];
    }
}

void copy2(fixed_t in[2], fixed_t out[2])
{
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
    fixed_t factor;
#pragma HLS BIND_OP variable=factor op=mul impl=fabric
#pragma HLS BIND_OP variable=x      op=mul impl=fabric
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
        x[i] *= factor;
    }
}

fixed_t customFmod(fixed_t x)
{
#pragma HLS BIND_OP variable=x op=sub impl=fabric
    return x - (int)x;
}

// COPY FUNCTIONS:

void copyP(
    fixed_t P1_DRAM[NUM_TRIS][3],
    fixed_t P2_DRAM[NUM_TRIS][3],
    fixed_t P3_DRAM[NUM_TRIS][3],
    fixed_t P1[NUM_TRIS][3],
    fixed_t P2[NUM_TRIS][3],
    fixed_t P3[NUM_TRIS][3])
{
    PRIM_READ1: for(int i=0; i<NUM_TRIS; i++)
    {
        copy3(&P1_DRAM[i][0], &P1[i][0]);
    }
    PRIM_READ2: for(int i=0; i<NUM_TRIS; i++)
    {
        copy3(&P2_DRAM[i][0], &P2[i][0]);
    }
    PRIM_READ3: for(int i=0; i<NUM_TRIS; i++)
    {
        copy3(&P3_DRAM[i][0], &P3[i][0]);
    }
}

void copyCTW(
    fixed_t cameraToWorld_DRAM[4][4],
    fixed_t cameraToWorld[4][4])
{
    CTW_READ: for(int i=0; i<4; i++)
    {
        for(int j=0; j<4; j++)
        {
            cameraToWorld[i][j] = cameraToWorld_DRAM[i][j];
        }
    }
}

void copyTex(
    fixed_t texCoordinates_DRAM[NUM_TRIS * 3][2],
    fixed_t texCoordinates[NUM_TRIS * 3][2])
{
    TEX_READ: for (int i = 0; i < NUM_TRIS*3; ++i)
    {
        copy2(&texCoordinates_DRAM[i][0], &texCoordinates[i][0]);
    }
}