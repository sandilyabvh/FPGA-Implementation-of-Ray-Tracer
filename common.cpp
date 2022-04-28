#include "common.h"
#include "hls_math.h"
#include "ap_fixed.h"
#include "fxp_sqrt.h"

void customMultVecMatrix(fixed_t src[3], fixed_t dst[3], fixed_t x[4][4])
{
    fixed_t val[4];

    for (int i = 0; i < 4; ++i)
    {
#pragma HLS pipeline
        fixed_t temp_val = 0;
        for (int j = 0; j < 3; ++j)
        {
#pragma HLS unroll
            temp_val += src[j] * x[j][i];
        }
        val[i] = temp_val + x[3][i];
    }

    for (int i = 0; i < 3; ++i)
    {
#pragma HLS unroll
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
#pragma HLS unroll
            temp_val += src[j] * x[j][i];
        }
        val[i] = temp_val;
    }

    for (int i = 0; i < 3; ++i)
    {
#pragma HLS unroll
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
#pragma HLS unroll
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
#pragma HLS unroll
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
#pragma HLS unroll
        result[i] = in1[i] - in2[i];
    }
}

void copy3(fixed_t in[3], fixed_t out[3])
{
    for (int i = 0; i < 3; ++i)
    {
#pragma HLS unroll
        out[i] = in[i];
    }
}

void copy2(fixed_t in[2], fixed_t out[2])
{
    for (int i = 0; i < 2; ++i)
    {
#pragma HLS unroll
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
    if (n > (fixed_t)0.0)
    {
        fixed_t factor;
        #ifdef CSIM_DEBUG
            factor = 1.0 / sqrt(n);
        #else
            // factor = (fixed_t)1.0 / hls::sqrt(n);
            ufixed_t sqrt_val;
            ufixed_t u_n = (ufixed_t)n;
            fxp_sqrt(sqrt_val, u_n);
            factor = (fixed_t)1.0 / (fixed_t)sqrt_val;
        #endif
        for (int i = 0; i < 3; ++i)
        {
#pragma HLS unroll
            x[i] *= factor;
        }
    }
}

fixed_t customFmod(fixed_t x)
{
    return x - (int)x;
}

/*
* Copy functions for DRAM interactions
*/
void copyCameraToWorld(
    fixed_t cameraToWorld_DRAM[4][4],
    fixed_t cameraToWorld[4][4])
{
    for(int i=0; i<4; i++)
    {
        for(int j=0; j<4; j++)
        {
            cameraToWorld[i][j] = cameraToWorld_DRAM[i][j];
        }
    }
}

void copyTexCoordinates(
    fixed_t texCoordinates_DRAM[NUM_TRIS*3][2],
    fixed_t texCoordinates[NUM_TRIS*3][2])
{
    for (int i = 0; i < NUM_TRIS*3; ++i)
    {
        for (int j = 0; j < 2; ++j)
        {
            texCoordinates[i][j] = texCoordinates_DRAM[i][j];
        }
    }
}

void copyP(
    fixed_t P_DRAM[MAX_VERT_INDEX][3],
    fixed_t P[MAX_VERT_INDEX][3])
{
    for(int i=0; i<MAX_VERT_INDEX; i++)
    {
        for(int j=0; j<3; j++)
        {
            P[i][j] = P_DRAM[i][j];
        }
    }
}

void copyTrisIndex(
    uint32_t trisIndex_DRAM[NUM_TRIS * 3],
    uint32_t trisIndex[NUM_TRIS * 3])
{
    for(int i=0; i<NUM_TRIS*3; i++)
    {
        trisIndex[i] = trisIndex_DRAM[i];
    }
}

void copyFrameBuffer(
    fixed_t framebuffer[WIDTH * HEIGHT][3],
    fixed_t framebuffer_DRAM[WIDTH * HEIGHT][3])
{
    for (int i = 0; i < WIDTH*HEIGHT; ++i)
    {
        for (int k = 0; k < 3; ++k)
        {
            framebuffer_DRAM[i][k] = framebuffer[i][k];
        }
    }
}

/*
* Optimized access to primitive and tex buffers
*/
void getPrimitive(
    fixed_t P[MAX_VERT_INDEX][3],
    uint32_t trisIndex[NUM_TRIS * 3],
    fixed_t v0Arr[3], fixed_t v1Arr[3], fixed_t v2Arr[3],
    uint32_t index)
{
    uint32_t j = index*3;

    // Get the primitive indices
    uint32_t indices[3];
    for (int i = 0; i < 3; ++i)
    {
        indices[i] = trisIndex[j + i];
    }

    for (int i = 0; i < 3; ++i)
    {
        v0Arr[i] = P[indices[0]][i];
        v1Arr[i] = P[indices[1]][i];
        v2Arr[i] = P[indices[2]][i];
    }
}