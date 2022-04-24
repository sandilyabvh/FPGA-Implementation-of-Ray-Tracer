#ifndef _COMMON_H_

#define _COMMON_H_

#include <limits>
#include <string.h>
#include "geometry.h"

//#define PRINT
#define DEBUG_LEVEL 3

static const float kInfinity = std::numeric_limits<float>::max();
static const float kEpsilon = 1e-8;
//static const float kDefaultBackgroundColor[3] = {0.235294, 0.67451, 0.843137};


float customNorm3(float x[3]);

void customNormalize3(float x[3]);

void multDirMatrix(float x[4][4], const float src[3], float dst[3]);

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

struct Options
{
    uint32_t width = 50;
    uint32_t height = 50;
    float fov = 90;
    float backgroundColor[3] = {0.235294, 0.67451, 0.843137};
    float cameraToWorld[4][4] = {{0.931056, 0, 0.364877, 0}, {0.177666, 0.873446, -0.45335, 0}, {-0.3187, 0.48692, 0.813227, 0}, {-41.229214, 81.862351, 112.456908, 1}};
};

void generateTriangleIndexArr (float transformNormals[4][4],
    const uint32_t faceIndex[NUM_FACES],
    uint32_t trisIndex[NUM_TRIS * 3],
    const uint32_t vertsIndex[VERTS_INDEX_ARR_SIZE],
    float normals[VERTS_INDEX_ARR_SIZE][3],
    float N[NUM_TRIS * 3][3],
    float texCoordinates[NUM_TRIS * 3][2],
    float st[VERTS_INDEX_ARR_SIZE][2]);

void customMultVecMatrix(const float src[3], float dst[3], const float x[4][4]);

void customMultDirMatrix(const float src[3], float dst[3], const float x[4][4]);

// \brief transpose itself
void customTranspose (float mat[4][4]);

void customInverse(float mat[4][4], float inverseMat[4][4]);

#endif
