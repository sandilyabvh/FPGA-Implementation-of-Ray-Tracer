#include "common.h"
#include "hls_math.h"
#include "ap_fixed.h"
#include "fxp_sqrt.h"


/*
* Function to implement cross product
* result = in1 x in2
*/
void customCrossProduct(fixed_t in1[3], fixed_t in2[3], fixed_t result[3])
{

CUSTOM_CROSS_PRODUCT:
    for (int i = 0; i < 3; ++i)
    {
#pragma HLS unroll
        int modulo_1 = (i == 2)? 0: (i+1);
        int modulo_2 = (modulo_1 == 2) ? 0 : (modulo_1 + 1);

        result[i] = in1[modulo_1] * in2[modulo_2] - in1[modulo_2] * in2[modulo_1];
    }
}

/*
* Function to implement dot product
* result = in1 . in2
*/
void customDotProduct(fixed_t in1[3], fixed_t in2[3], fixed_t &result)
{
    fixed_t temp_val = 0;
CUSTOM_DOT_PRODUCT:
    for (int i = 0; i < 3; ++i)
    {
#pragma HLS unroll
        temp_val += in1[i] * in2[i];
    }
    result = temp_val;
}

/*
* Function to implement subtraction
* result = in1 - in2
*/
void customSubtract(fixed_t in1[3], fixed_t in2[3], fixed_t result[3])
{
CUSTOM_SUB:
    for (int i = 0; i < 3; ++i)
    {
#pragma HLS unroll
        result[i] = in1[i] - in2[i];
    }
}

void customDivide(fixed_t &in1, fixed_t &in2, fixed_t &result)
{
    if (in2 != (fixed_t)0.0)
    {
        // try
        // {
            result = in1 / in2;
        // }
        // catch (...)
        // {
        //     result = 1.0;
        // }
    }
    else
    {
        result = kInfinity;
    }
}
