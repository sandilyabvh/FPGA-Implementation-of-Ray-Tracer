#include "common.h"

void customMultVecMatrix(float src[3], float dst[3], float x[4][4])
{
	 float a, b, c, w;
     float val[4];

    for (int i = 0; i < 4; ++i)
    {
        float temp_val = 0;
        for (int j = 0; j < 3; ++j)
        {
            temp_val += src[j] * x[j][i];
        }
        val[i] = temp_val + x[3][i];
    }

    for (int i = 0; i < 3; ++i)
    {
        dst[i] = val[i] / val[3];
    }
}

void customMultDirMatrix(float src[3], float dst[3], float x[4][4])
{
    float a, b, c;
    float val[3];

    for (int i = 0; i < 3; ++i)
    {
        float temp_val = 0;
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


// \brief transpose itself
void customTranspose(float mat[4][4])
{
    float tmp[4][4];
    for (int i = 0; i < 4; i++)
    {
        for ( int j = 0; j < 4; j++)
        {
            tmp[i][j] = mat[j][i];
        }
    }

    for (int i = 0; i < 4; i++)
    {
        for ( int j = 0; j < 4; j++)
        {
            mat[i][j] = tmp[i][j];
        }
    }
}

void customInverse(float mat[4][4], float inverseMat[4][4])
{
    int i, j, k;
    float identity[4][4] = {
        {1, 0, 0, 0},
        {0, 1, 0, 0},
        {0, 0, 1, 0},
        {0, 0, 0, 1}
    };

    // Forward elimination
    for (i = 0; i < 3 ; i++)
    {
        int pivot = i;
        float pivotsize = mat[i][i];

        if (pivotsize < 0)
            pivotsize = -pivotsize;

        for (j = i + 1; j < 4; j++)
        {
            float tmp = mat[j][i];

            if (tmp < 0)
            {
                tmp = -tmp;
            }

            if (tmp > pivotsize)
            {
                pivot = j;
                pivotsize = tmp;
            }
        }

        if (pivotsize == 0)
        {
            // Cannot invert singular matrix
            customCopy44(identity, inverseMat);
            return;
        }

        if (pivot != i)
        {
            for (j = 0; j < 4; j++)
            {
                float tmp;

                tmp = mat[i][j];
                mat[i][j] = mat[pivot][j];
                mat[pivot][j] = tmp;

                tmp = inverseMat[i][j];
                inverseMat[i][j] = inverseMat[pivot][j];
                inverseMat[pivot][j] = tmp;
            }
        }

        for (j = i + 1; j < 4; j++)
        {
            float f = mat[j][i] / mat[i][i];

            for (k = 0; k < 4; k++)
            {
                mat[j][k] -= f * mat[i][k];
                inverseMat[j][k] -= f * inverseMat[i][k];
            }
        }
    }

    // Backward substitution
    for (i = 3; i >= 0; --i)
    {
        float f;

        if ((f = mat[i][i]) == 0)
        {
            // Cannot invert singular matrix
            customCopy44(identity, inverseMat);
        	return;
        }

        for (j = 0; j < 4; j++)
        {
            mat[i][j] /= f;
            inverseMat[i][j] /= f;
        }

        for (j = 0; j < i; j++)
        {
            f = mat[j][i];

            for (k = 0; k < 4; k++)
            {
                mat[j][k] -= f * mat[i][k];
                inverseMat[j][k] -= f * inverseMat[i][k];
            }
        }
    }
}


void customCopy44(float in[4][4], float out[4][4])
{
    for (int i = 0; i < 4; ++i)
    {
        for (int j = 0; j < 4; ++j)
        {
            out[i][j] = in[i][j];
        }
    }
}

/*
* Function to implement cross product
* result = in1 x in2
*/
void customCrossProduct(float in1[3], float in2[3], float result[3])
{
    for (int i = 0; i < 3; ++i)
    {
        result[i] = in1[(i+1)%3] * in2[(i+2)%3] - in1[(i+2)%3] * in2[(i+1)%3];
    }
}

/*
* Function to implement dot product
* result = in1 . in2
*/
void customDotProduct(float in1[3], float in2[3], float &result)
{
    result = in1[0] * in2[0] + in1[1] * in2[1] + in1[2] * in2[2];
}

/*
* Function to implement subration
* result = in1 - in2
*/
void customSubtract(float in1[3], float in2[3], float result[3])
{
    for (int i = 0; i < 3; ++i)
    {
        result[i] = in1[i] - in2[i];
    }
}

void copy3(float in[3], float out[3])
{
    for (int i = 0; i < 3; ++i)
    {
        out[i] = in[i];
    }
}

void copy2(float in[2], float out[2])
{
    for (int i = 0; i < 2; ++i)
    {
        out[i] = in[i];
    }
}

float customNorm3(float x[3])
{
    return x[0] * x[0] + x[1] * x[1] + x[2] * x[2];
}

void customNormalize3(float x[3])
{
    float n = customNorm3(x);
    if (n > 0.0)
    {
        float factor = 1 / sqrt(n);
        x[0] *= factor, x[1] *= factor, x[2] *= factor;
    }
}