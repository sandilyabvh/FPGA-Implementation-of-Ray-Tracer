#include "hls_math.h"
#include "geometry.h"
#include "common.h"

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

void multDirMatrix(Matrix44f x, const float src[3], float dst[3])
{
    float a, b, c;

    a = src[0] * x[0][0] + src[1] * x[1][0] + src[2] * x[2][0];
    b = src[0] * x[0][1] + src[1] * x[1][1] + src[2] * x[2][1];
    c = src[0] * x[0][2] + src[1] * x[1][2] + src[2] * x[2][2];

    dst[0] = a;
    dst[1] = b;
    dst[2] = c;
}

void generateTriangleIndexArr (Matrix44f transformNormals,
    const uint32_t faceIndex[NUM_FACES],
    uint32_t trisIndex[NUM_TRIS * 3],
    const uint32_t vertsIndex[VERTS_INDEX_ARR_SIZE],
    float normals[VERTS_INDEX_ARR_SIZE][3],
    float N[NUM_TRIS * 3][3],
    float texCoordinates[NUM_TRIS * 3][2],
    float st[VERTS_INDEX_ARR_SIZE][2])
{
    uint32_t l = 0;

    for (uint32_t i = 0, k = 0; i < NUM_FACES; ++i)
    {
        // for each  face
        for (uint32_t j = 0; j < faceIndex[i] - 2; ++j)
        {
            // for each triangle in the face
            trisIndex[l] = vertsIndex[k];
            trisIndex[l + 1] = vertsIndex[k + j + 1];
            trisIndex[l + 2] = vertsIndex[k + j + 2];
            // std::cout << "trisIndex: [" << trisIndex[l] << "," << trisIndex[l+1] << "," << trisIndex[l+2] << "]\n";

            multDirMatrix(transformNormals, normals[k], N[l]);
            multDirMatrix(transformNormals, normals[k + j + 1], N[l + 1]);
            multDirMatrix(transformNormals, normals[k + j + 2], N[l + 2]);

            customNormalize3(N[l]);
            customNormalize3(N[l + 1]);
            customNormalize3(N[l + 2]);

            texCoordinates[l][0] = st[k][0];
            texCoordinates[l][1] = st[k][1];

            texCoordinates[l + 1][0] = st[k + j + 1][0];
            texCoordinates[l + 1][1] = st[k + j + 1][1];

            texCoordinates[l + 2][0] = st[k + j + 2][0];
            texCoordinates[l + 2][1] = st[k + j + 2][1];

            l += 3;
        }
        k += faceIndex[i];
    }
}
