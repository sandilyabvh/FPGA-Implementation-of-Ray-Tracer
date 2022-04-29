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

    fixed_t one = 1.0, invDet;
    customDivide(one, det, invDet);
    // fixed_t invDet = (fixed_t)1.0/ det;

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
    // fixed_t P1[NUM_TRIS][3],
    // fixed_t P2[NUM_TRIS][3],
    // fixed_t P3[NUM_TRIS][3],
    fixed_t texCoordinates[NUM_TRIS * 3][2],
    const uint32_t &triIndex,
    fixed_t uv[2],
    fixed_t hitNormal[3],
    fixed_t hitTextureCoordinates[2],
    fixed_t v0Arr_intersect[3], fixed_t v1Arr_intersect[3], fixed_t v2Arr_intersect[3])
{
    // face normal
    // fixed_t v0[3], v1[3], v2[3];
    // copy3(&P1[triIndex][0], v0);
    // copy3(&P2[triIndex][0], v1);
    // copy3(&P3[triIndex][0], v2);

    fixed_t subv1v0[3], subv2v0[3];
    customSubtract(v1Arr_intersect, v0Arr_intersect, subv1v0);
    customSubtract(v2Arr_intersect, v0Arr_intersect, subv2v0);
    customCrossProduct(subv1v0, subv2v0, hitNormal);
    customNormalize3(hitNormal);

    // texture coordinates
    fixed_t st0[2], st1[2], st2[3];
    copy2(texCoordinates[triIndex * 3], st0);
    copy2(texCoordinates[triIndex * 3 + 1], st1);
    copy2(texCoordinates[triIndex * 3 + 2], st2);

    for (int i = 0; i < 2; ++i)
    {
        hitTextureCoordinates[i] = (1 - uv[0] - uv[1]) * st0[i] + uv[0] * st1[i] + uv[1] * st2[i];
    }
}

// Test if the ray interesests this triangle mesh
bool intersect(
    fixed_t P1[NUM_TRIS][3],
    fixed_t P2[NUM_TRIS][3],
    fixed_t P3[NUM_TRIS][3],
    fixed_t origArr[3], fixed_t dirArr[3],
    fixed_t &tNear, uint32_t &triIndex,
    fixed_t uv[2],
    fixed_t v0Arr_intersect[3], fixed_t v1Arr_intersect[3], fixed_t v2Arr_intersect[3],
    fixed_t v0Arr[3], fixed_t v1Arr[3], fixed_t v2Arr[3])
{
    bool isect = false;

    NUM_TRIS_LOOP: for (uint32_t i = 0; i < NUM_TRIS; ++i)
    {
        fixed_t t = kInfinity, u, v;
        copy3(&P1[i][0], v0Arr);
        copy3(&P2[i][0], v1Arr);
        copy3(&P3[i][0], v2Arr);
        bool testVal = rayTriangleIntersect(origArr, dirArr, v0Arr, v1Arr, v2Arr, t, u, v);
        if (testVal && t < tNear) {
            tNear = t;
            uv[0] = u;
            uv[1] = v;
            copy3(v0Arr, v0Arr_intersect);
            copy3(v1Arr, v1Arr_intersect);
            copy3(v2Arr, v2Arr_intersect);
            triIndex = i;
            isect = true;
        }
    }

    return isect;
}

bool trace(
    fixed_t orig[3], fixed_t dir[3],
    fixed_t P1[NUM_TRIS][3],
    fixed_t P2[NUM_TRIS][3],
    fixed_t P3[NUM_TRIS][3],
    fixed_t &tNear, uint32_t &index, fixed_t uv[2],
    fixed_t v0Arr_intersect[3], fixed_t v1Arr_intersect[3], fixed_t v2Arr_intersect[3],
    fixed_t v0Arr[3], fixed_t v1Arr[3], fixed_t v2Arr[3])
{
    bool isIntersecting = false;
    fixed_t tNearTriangle = kInfinity;
    uint32_t indexTriangle;
    if (intersect(P1, P2, P3, orig, dir, tNearTriangle, indexTriangle, uv, 
        v0Arr_intersect, v1Arr_intersect, v2Arr_intersect,
        v0Arr, v1Arr, v2Arr) && tNearTriangle < tNear)
    {
        tNear = tNearTriangle;
        index = indexTriangle;
        isIntersecting = true;
    }

    return isIntersecting;
}

void castRay(
    uint32_t i, uint32_t j, fixed_t frame_width, fixed_t frame_height, fixed_t imageAspectRatio, fixed_t scale,
    fixed_t orig[3], fixed_t dir[3],
    fixed_t P1[NUM_TRIS][3],
    fixed_t P2[NUM_TRIS][3],
    fixed_t P3[NUM_TRIS][3],
    fixed_t texCoordinates[NUM_TRIS * 3][2],
    fixed_t hitColor[3],
    fixed_t backgroundColor[3],
    fixed_t cameraToWorld[4][4],
    fixed_t v0Arr[3], fixed_t v1Arr[3], fixed_t v2Arr[3],
    fixed_t v0Arr_intersect[3], fixed_t v1Arr_intersect[3], fixed_t v2Arr_intersect[3])
{

    // generate primary ray direction
    fixed_t x = (2 * (i + (fixed_t)0.5) / frame_width - 1) * imageAspectRatio * scale;
    fixed_t y = (1 - 2 * (j + (fixed_t)0.5) / frame_height) * scale;

    fixed_t srcRayDir[3] = {x, y, -1};

    customMultDirMatrix(srcRayDir, dir, cameraToWorld);

    customNormalize3(dir);

    for (int i = 0; i < 3; ++i)
    {
        hitColor[i] = backgroundColor[i];
    }

    fixed_t tnear = kInfinity;
    fixed_t uv[2];
    uint32_t index = 0;
    // fixed_t v0Arr_intersect[3], v1Arr_intersect[3], v2Arr_intersect[3];
    // fixed_t v0Arr[3], v1Arr[3], v2Arr[3];
    if (trace(orig, dir, P1, P2, P3, tnear, index, uv,
        v0Arr_intersect, v1Arr_intersect, v2Arr_intersect,
        v0Arr, v1Arr, v2Arr))
    {
        fixed_t hitPoint[3];
        for (int i = 0; i < 3; ++i)
        {
            hitPoint[i] = orig[i] + dir[i] * tnear;
        }

        fixed_t hitNormal[3];
        fixed_t hitTexCoordinates[2];
        getSurfaceProperties(texCoordinates, index, uv, hitNormal, hitTexCoordinates,
            v0Arr_intersect, v1Arr_intersect, v2Arr_intersect);
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

void dataflow(
    uint32_t i, uint32_t i_1, uint32_t j, fixed_t frame_width, fixed_t frame_height, fixed_t imageAspectRatio, fixed_t scale,
    fixed_t origArr_1[3], fixed_t origArr_2[3],
    fixed_t dir_1[3], fixed_t dir_2[3],
    fixed_t P1_1[NUM_TRIS][3],
    fixed_t P2_1[NUM_TRIS][3],
    fixed_t P3_1[NUM_TRIS][3],
    fixed_t cameraToWorld_1[4][4],
    fixed_t P1_2[NUM_TRIS][3],
    fixed_t P2_2[NUM_TRIS][3],
    fixed_t P3_2[NUM_TRIS][3],
    fixed_t cameraToWorld_2[4][4],
    fixed_t texCoordinates[NUM_TRIS * 3][2],
    fixed_t backgroundColor_1[3], fixed_t backgroundColor_2[3],
    fixed_t return_1[3],
    fixed_t return_2[3],
    fixed_t v0Arr_1[3], fixed_t v1Arr_1[3], fixed_t v2Arr_1[3],
    fixed_t v0Arr_2[3], fixed_t v1Arr_2[3], fixed_t v2Arr_2[3],
    fixed_t v0Arr_intersect_1[3], fixed_t v1Arr_intersect_1[3], fixed_t v2Arr_intersect_1[3],
    fixed_t v0Arr_intersect_2[3], fixed_t v1Arr_intersect_2[3], fixed_t v2Arr_intersect_2[3])
{
#pragma HLS dataflow
    castRay(
        i, j, frame_width, frame_height, imageAspectRatio, scale,
        origArr_1, dir_1, P1_1, P2_1, P3_1, texCoordinates, return_1, backgroundColor_1,
        cameraToWorld_1,
        v0Arr_1, v1Arr_1, v2Arr_1,
        v0Arr_intersect_1, v1Arr_intersect_1, v2Arr_intersect_1);
    castRay(
        i_1, j, frame_width, frame_height, imageAspectRatio, scale,
        origArr_2, dir_2, P1_2, P2_2, P3_2, texCoordinates, return_2, backgroundColor_2,
        cameraToWorld_2,
        v0Arr_2, v1Arr_2, v2Arr_2,
        v0Arr_intersect_2, v1Arr_intersect_2, v2Arr_intersect_2);
}

// The main render function. This where we iterate over all pixels in the image, generate
// primary rays and cast these rays into the scene. The content of the framebuffer is
// saved to a file.
void render(
    fixed_t P1_DRAM[NUM_TRIS][3],
    fixed_t P2_DRAM[NUM_TRIS][3],
    fixed_t P3_DRAM[NUM_TRIS][3],
    fixed_t texCoordinates_DRAM[NUM_TRIS * 3][2],
    fixed_t framebuffer_DRAM[WIDTH * HEIGHT][3],
    fixed_t cameraToWorld_DRAM[4][4],
    fixed_t backgroundColor_DRAM[3],
    fixed_t frame_width,
    fixed_t frame_height,
    fixed_t frame_scale)
{

#pragma HLS interface m_axi depth=6320*3 port=P1_DRAM offset=slave bundle=p1
#pragma HLS interface m_axi depth=6320*3 port=P2_DRAM offset=slave bundle=p2
#pragma HLS interface m_axi depth=6320*3 port=P3_DRAM offset=slave bundle=p3
#pragma HLS interface m_axi depth=16 port=cameraToWorld_DRAM offset=slave bundle=c2w
#pragma HLS interface s_axilite port=return

    fixed_t P1_1[NUM_TRIS][3];
    fixed_t P2_1[NUM_TRIS][3];
    fixed_t P3_1[NUM_TRIS][3];
    fixed_t cameraToWorld_1[4][4];
    fixed_t backgroundColor_1[3];
    fixed_t P1_2[NUM_TRIS][3];
    fixed_t P2_2[NUM_TRIS][3];
    fixed_t P3_2[NUM_TRIS][3];
    fixed_t cameraToWorld_2[4][4];
    fixed_t backgroundColor_2[3];
    fixed_t v0Arr_1[3], v1Arr_1[3], v2Arr_1[3];
    fixed_t v0Arr_2[3], v1Arr_2[3], v2Arr_2[3];
    fixed_t v0Arr_intersect_1[3], v1Arr_intersect_1[3], v2Arr_intersect_1[3];
    fixed_t v0Arr_intersect_2[3], v1Arr_intersect_2[3], v2Arr_intersect_2[3];


    fixed_t origArr_1[3], origArr_2[3];
    fixed_t dir_1[3], dir_2[3];

// #pragma HLS array_partition variable=P dim=1 factor=7 cyclic
#pragma HLS array_partition variable=P1_1 dim=2 complete
#pragma HLS array_partition variable=P2_1 dim=2 complete
#pragma HLS array_partition variable=P3_1 dim=2 complete
#pragma HLS array_partition variable=cameraToWorld_1 dim=2 complete
#pragma HLS array_partition variable=backgroundColor_1 dim=0 complete
#pragma HLS array_partition variable=P1_2 dim=2 complete
#pragma HLS array_partition variable=P2_2 dim=2 complete
#pragma HLS array_partition variable=P3_2 dim=2 complete
#pragma HLS array_partition variable=cameraToWorld_2 dim=2 complete
#pragma HLS array_partition variable=backgroundColor_2 dim=0 complete

#pragma HLS array_partition variable=origArr_1 dim=0 complete
#pragma HLS array_partition variable=origArr_2 dim=0 complete
#pragma HLS array_partition variable=dir_1 dim=0 complete
#pragma HLS array_partition variable=dir_2 dim=0 complete

#pragma HLS array_partition variable=v0Arr_1 dim=0 complete
#pragma HLS array_partition variable=v0Arr_2 dim=0 complete
#pragma HLS array_partition variable=v1Arr_1 dim=0 complete
#pragma HLS array_partition variable=v1Arr_2 dim=0 complete
#pragma HLS array_partition variable=v2Arr_1 dim=0 complete
#pragma HLS array_partition variable=v2Arr_2 dim=0 complete


#pragma HLS array_partition variable=v0Arr_intersect_1 dim=0 complete
#pragma HLS array_partition variable=v0Arr_intersect_2 dim=0 complete
#pragma HLS array_partition variable=v1Arr_intersect_1 dim=0 complete
#pragma HLS array_partition variable=v1Arr_intersect_2 dim=0 complete
#pragma HLS array_partition variable=v2Arr_intersect_1 dim=0 complete
#pragma HLS array_partition variable=v2Arr_intersect_2 dim=0 complete


    copyP(P1_DRAM, P2_DRAM, P3_DRAM, P1_1, P2_1, P3_1);
    copyCTW(cameraToWorld_DRAM, cameraToWorld_1);
    // Copy to copy_2
    for (int i = 0; i < NUM_TRIS; ++i)
    {
        copy3(&P1_1[i][0], &P1_2[i][0]);
        copy3(&P2_1[i][0], &P2_2[i][0]);
        copy3(&P3_1[i][0], &P3_2[i][0]);
    }
    for (int i = 0; i < 4; ++i)
    {
        for (int j = 0; j < 4; ++j)
        {
            cameraToWorld_2[i][j] = cameraToWorld_1[i][j];
        }
    }
    copy3(backgroundColor_DRAM, backgroundColor_1);
    copy3(backgroundColor_1, backgroundColor_2);

    fixed_t scale = frame_scale;
    fixed_t imageAspectRatio = 1.33;//frame_width / frame_height;
    fixed_t zeroArr[3] = {0, 0, 0};
    customMultVecMatrix(zeroArr, origArr_1, cameraToWorld_1);
    copy3(origArr_1, origArr_2);

    fixed_t return_1[3], return_2[3];

    HEIGHT_LOOP: for (uint32_t j = 0; j < HEIGHT;  ++j)
    {
        WIDTH_LOOP: for (uint32_t i = 0; i < WIDTH; i += 2)
        {
            dataflow(
                i, i+1, j, frame_width, frame_height, imageAspectRatio, scale,
                origArr_1, origArr_2,
                dir_1, dir_2,
                P1_1, P2_1, P3_1,
                cameraToWorld_1,
                P1_2, P2_2, P3_2,
                cameraToWorld_2,
                texCoordinates_DRAM,
                backgroundColor_1, backgroundColor_2,
                return_1, return_2,
                v0Arr_1, v1Arr_1, v2Arr_1,
                v0Arr_2, v1Arr_2, v2Arr_2,
                v0Arr_intersect_1, v1Arr_intersect_1, v2Arr_intersect_1,
                v0Arr_intersect_2, v1Arr_intersect_2, v2Arr_intersect_2);
                copy3(return_1, &framebuffer_DRAM[j*WIDTH + i][0]);
                copy3(return_2, &framebuffer_DRAM[j*WIDTH + i + 1][0]);
        }
        // fprintf(stderr, "\r%3d%c", uint32_t(j / (float)HEIGHT * 100), '%');
    }
}
