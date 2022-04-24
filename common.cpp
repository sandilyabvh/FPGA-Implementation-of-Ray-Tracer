#include "common.h"

void customMultVecMatrix(const float src[3], float dst[3], const float x[4][4])
{
	 float a, b, c, w;

	 a = src[0] * x[0][0] + src[1] * x[1][0] + src[2] * x[2][0] + x[3][0];
	 b = src[0] * x[0][1] + src[1] * x[1][1] + src[2] * x[2][1] + x[3][1];
	 c = src[0] * x[0][2] + src[1] * x[1][2] + src[2] * x[2][2] + x[3][2];
	 w = src[0] * x[0][3] + src[1] * x[1][3] + src[2] * x[2][3] + x[3][3];

	 dst[0] = a / w;
	 dst[1] = b / w;
	 dst[2] = c / w;
}

void customMultDirMatrix(const float src[3], float dst[3], const float x[4][4])
{
    float a, b, c;

    a = src[0] * x[0][0] + src[1] * x[1][0] + src[2] * x[2][0];
    b = src[0] * x[0][1] + src[1] * x[1][1] + src[2] * x[2][1];
    c = src[0] * x[0][2] + src[1] * x[1][2] + src[2] * x[2][2];

    dst[0] = a;
    dst[1] = b;
    dst[2] = c;
}


// \brief transpose itself
void customTranspose (float mat[4][4])
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
    float identity[4][4] = {{1,0,0,0},{0,1,0,0},{0,0,1,0},{0,0,0,1}};

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
				tmp = -tmp;

			if (tmp > pivotsize)
			{
				pivot = j;
				pivotsize = tmp;
			}
		}

        if (pivotsize == 0)
        {
            // Cannot invert singular matrix
        	memcpy(inverseMat, identity, 4 * 4 * sizeof(float));
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
        	memcpy(inverseMat, identity, 4 * 4 * sizeof(float));
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
