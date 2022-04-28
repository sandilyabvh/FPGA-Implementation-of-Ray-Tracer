#include <cmath>
#include <algorithm>
#include <hls_math.h>

#include "trianglemesh.h"
#include "common.h"


// Using index0 = x, index1 = y, index2 = z
bool rayTriangleIntersect(
    fixed_t orig[3], fixed_t dir[3],
    fixed_t v0[3], fixed_t v1[3], fixed_t v2[3],
    fixed_t &t, fixed_t &u, fixed_t &v)
{
    // v0v1 = v1 - v0
    fixed_t v0v1[3];
    customSubtract(v1, v0, v0v1);

    // v0v2 = v2 - v0;
    fixed_t v0v2[3];
    customSubtract(v2, v0, v0v2);

    // pvec = dir x v0v2;
    fixed_t pvec[3];
    customCrossProduct(dir, v0v2, pvec);

    // det = v0v1.pvec;
    fixed_t det;
    customDotProduct(v0v1, pvec, det);

    fixed_t detTest = det;
    if (detTest < 0)
    {
        detTest = detTest * (-1);
    }

    fixed_t invDet = (fixed_t)1/ det;

    fixed_t tvec[3];
    customSubtract(orig, v0, tvec);

    fixed_t tempResult;
    customDotProduct(tvec, pvec, tempResult);
    u = tempResult * invDet;


    fixed_t qvec[3];
    customCrossProduct(tvec, v0v1, qvec);

    fixed_t tempResult1;
    customDotProduct(dir, qvec, tempResult1);
    v = tempResult1 * invDet;

    fixed_t tempResult3;
    customDotProduct(v0v2, qvec, tempResult3);
    t = tempResult3 * invDet;

    // NOTE: Moved all returns at the end to fix imbalance in usage
    // TODO: Check for possible issues in the kEpsilon handling, could be out of fixed point range
    // ray and triangle are parallel if det is close to 0
    bool flag1 = (detTest < kEpsilon) || (detTest == 0);
    bool flag2 = u < 0 || u > 1;
    bool flag3 = v < 0 || u + v > 1;
    if (flag1) return false;
    else if (flag2) return false;
    else if (flag3) return false;
    else return true;
}

void getSurfaceProperties(
    fixed_t P[MAX_VERT_INDEX][3],
    uint32_t trisIndex[NUM_TRIS * 3],
    fixed_t texCoordinates[NUM_TRIS * 3][2],
    const uint32_t &triIndex,
    fixed_t uv[2],
    fixed_t hitNormal[3],
    fixed_t hitTextureCoordinates[2])
{
    // face normal
    fixed_t v0Arr[3], v1Arr[3], v2Arr[3];

    getPrimitive(P, trisIndex, v0Arr, v1Arr, v2Arr, triIndex);

    fixed_t subv1v0[3], subv2v0[3];
    customSubtract(v1Arr, v0Arr, subv1v0);
    customSubtract(v2Arr, v0Arr, subv2v0);
    customCrossProduct(subv1v0, subv2v0, hitNormal);
    customNormalize3(hitNormal);

    // texture coordinates
    fixed_t st0[2], st1[2], st2[3];
    copy2(texCoordinates[triIndex * 3], st0);
    copy2(texCoordinates[triIndex * 3 + 1], st1);
    copy2(texCoordinates[triIndex * 3 + 2], st2);

    for (int i = 0; i < 2; ++i)
    {
#pragma HLS unroll
        hitTextureCoordinates[i] = (1 - uv[0] - uv[1]) * st0[i] + uv[0] * st1[i] + uv[1] * st2[i];
    }
}

#define TILE_SIZE 20

// Test if the ray interesests this triangle mesh
bool intersect(
    fixed_t P[MAX_VERT_INDEX][3],
    uint32_t trisIndex[NUM_TRIS * 3],
    fixed_t origArr[3], fixed_t dirArr[3],
    fixed_t &tNear, uint32_t &triIndex,
    fixed_t uv[2])
{
    bool isect = false;
    bool flag[TILE_SIZE];
    fixed_t tArr[TILE_SIZE], uArr[TILE_SIZE], vArr[TILE_SIZE];
    TRIS_LOOP_1: for (uint32_t i = 0; i < NUM_TRIS; i += TILE_SIZE)
    {
        TRIS_LOOP_2: for (uint32_t j = 0; j < TILE_SIZE; ++j)
        {
            fixed_t t = kInfinity, u, v;
            fixed_t v0Arr[3], v1Arr[3], v2Arr[3];
            getPrimitive(P, trisIndex, v0Arr, v1Arr, v2Arr, i+j);
            flag[j] = rayTriangleIntersect(origArr, dirArr, v0Arr, v1Arr, v2Arr, tArr[j], uArr[j], vArr[j]);
            if (flag[j] && tArr[j] < tNear) {
                tNear = tArr[j];
                uv[0] = uArr[j];
                uv[1] = vArr[j];
                triIndex = i+j;
                isect = true;
            }
        }
    }

    return isect;
}

bool trace(
    fixed_t orig[3], fixed_t dir[3],
    fixed_t P_DRAM[MAX_VERT_INDEX][3],
    uint32_t trisIndex[NUM_TRIS * 3],
    fixed_t &tNear, uint32_t &index, fixed_t uv[2])
{
    bool isIntersecting = false;
    fixed_t tNearTriangle = kInfinity;
    uint32_t indexTriangle;
    if (intersect(P_DRAM, trisIndex, orig, dir, tNearTriangle, indexTriangle, uv) && tNearTriangle < tNear)
    {
        tNear = tNearTriangle;
        index = indexTriangle;

        isIntersecting = true;
    }

    return isIntersecting;
}

void castRay(
    int &i, int &j, fixed_t &frame_width, fixed_t &frame_height, fixed_t &imageAspectRatio, fixed_t &scale,
    fixed_t orig[3],
    fixed_t P_DRAM[MAX_VERT_INDEX][3],
    uint32_t trisIndex[NUM_TRIS * 3],
    fixed_t texCoordinates_DRAM[NUM_TRIS * 3][2],
    fixed_t hitColor[3],
    fixed_t backgroundColor[3],
    fixed_t cameraToWorld[4][4])
{

    // generate primary ray direction
    fixed_t x = (2 * (i + (fixed_t)0.5) / frame_width - 1) * imageAspectRatio * scale;
    fixed_t y = (1 - 2 * (j + (fixed_t)0.5) / frame_height) * scale;

    fixed_t srcRayDir[3] = {x, y, -1};
    fixed_t dir[3];

    customMultDirMatrix(srcRayDir, dir, cameraToWorld);

    customNormalize3(dir);

    for (int i = 0; i < 3; ++i)
    {
        hitColor[i] = backgroundColor[i];
    }

    fixed_t tnear = kInfinity;
    fixed_t uv[2];
    uint32_t index = 0;
    if (trace(orig, dir, P_DRAM, trisIndex, tnear, index, uv))
    {
        fixed_t hitPoint[3];
        for (int i = 0; i < 3; ++i)
        {
// #pragma HLS pipeline
            hitPoint[i] = orig[i] + dir[i] * tnear;
        }

        fixed_t hitNormal[3];
        fixed_t hitTexCoordinates[2];
        getSurfaceProperties(P_DRAM, trisIndex, texCoordinates_DRAM, index, uv, hitNormal, hitTexCoordinates);
        fixed_t neg_dir[3] = {-dir[0], -dir[1], -dir[2]};
        fixed_t normal_dir_dot;
        customDotProduct(hitNormal, neg_dir, normal_dir_dot);
        fixed_t NdotView = (normal_dir_dot > (fixed_t)0.0) ? normal_dir_dot : (fixed_t)0.0;
        fixed_t M = 4.0;
        fixed_t checker = (customFmod(hitTexCoordinates[0] * M) > (fixed_t)0.5) ^ (customFmod(hitTexCoordinates[1] * M) < (fixed_t)0.5);
        fixed_t c = (fixed_t)0.3 * ((fixed_t)1.0 - checker) + (fixed_t)0.7 * checker;

        for (int i = 0; i < 3; ++i)
        {
            hitColor[i] = c * NdotView;
        }
    }
}

// The main render function. This where we iterate over all pixels in the image, generate
// primary rays and cast these rays into the scene. The content of the framebuffer is
// saved to a file.
void render(
    fixed_t P_DRAM[MAX_VERT_INDEX][3],
    uint32_t trisIndex_DRAM[NUM_TRIS * 3],
    fixed_t texCoordinates_DRAM[NUM_TRIS * 3][2],
    fixed_t framebuffer_DRAM[WIDTH * HEIGHT][3],
    fixed_t cameraToWorld_DRAM[4][4],
    fixed_t backgroundColor_DRAM[3],
    fixed_t frame_width,
    fixed_t frame_height,
    fixed_t frame_scale)
{

#pragma HLS interface m_axi depth=3241*3    port=P_DRAM                 offset=slave bundle=p
#pragma HLS interface m_axi depth=6320*3    port=trisIndex_DRAM         offset=slave bundle=trindx
#pragma HLS interface m_axi depth=16        port=cameraToWorld_DRAM     offset=slave bundle=c2w
#pragma HLS interface m_axi depth=6320*3*2  port=texCoordinates_DRAM    offset=slave bundle=txc
#pragma HLS interface m_axi depth=3         port=backgroundColor_DRAM   offset=slave bundle=bkclr
#pragma HLS interface m_axi depth=320*240*3 port=framebuffer_DRAM       offset=slave bundle=fb
#pragma HLS interface s_axilite port=return

    fixed_t backgroundColor[3];
    fixed_t texCoordinates[NUM_TRIS*3][2];
    fixed_t cameraToWorld[4][4];
    fixed_t P[MAX_VERT_INDEX][3];
    uint32_t trisIndex[NUM_TRIS * 3];
    fixed_t framebuffer[WIDTH * HEIGHT][3];

#pragma HLS array_partition variable=cameraToWorld   dim=2 complete
#pragma HLS array_partition variable=trisIndex       dim=1 factor=50  cyclic
// #pragma HLS array_partition variable=P               dim=1 factor=50 cyclic
// #pragma HLS array_partition variable=framebuffer     dim=2 complete
#pragma HLS array_partition variable=backgroundColor dim=0 complete
// #pragma HLS array_partition variable=texCoordinates  dim=1 factor=3 cyclic

    // Copy backgroundColor from DRAM
    copy3(backgroundColor_DRAM, backgroundColor);
    // copyTexCoordinates(texCoordinates_DRAM, texCoordinates);
    copyCameraToWorld(cameraToWorld_DRAM, cameraToWorld);
    // copyP(P_DRAM, P);
    copyTrisIndex(trisIndex_DRAM, trisIndex);

    fixed_t scale = frame_scale;
    fixed_t imageAspectRatio = frame_width / frame_height;
    fixed_t origArr[3];
    fixed_t zeroArr[3] = {0, 0, 0};
    customMultVecMatrix(zeroArr, origArr, cameraToWorld);

    HEIGHT_LOOP: for (int j = 0; j < HEIGHT;  ++j)
    {
        WIDTH_LOOP: for (int i = 0; i < WIDTH; ++i)
        {
            castRay(i, j, frame_width, frame_height, imageAspectRatio, scale, origArr,
            P_DRAM, trisIndex, texCoordinates_DRAM, &framebuffer_DRAM[j*WIDTH + i][0], backgroundColor,
            cameraToWorld);
        }
        // fprintf(stderr, "\r%3d%c", uint32_t(j / (float)HEIGHT * 100), '%');
    }

    // Copy framebuffer into DRAM
    // copyFrameBuffer(framebuffer, framebuffer_DRAM);

}
