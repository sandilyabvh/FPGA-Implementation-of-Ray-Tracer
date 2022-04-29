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
    fixed_t P1[NUM_TRIS][3],
    fixed_t P2[NUM_TRIS][3],
    fixed_t P3[NUM_TRIS][3],
    fixed_t texCoordinates[NUM_TRIS * 3][2],
    const uint32_t &triIndex,
    fixed_t uv[2],
    fixed_t hitNormal[3],
    fixed_t hitTextureCoordinates[2])
{
    // face normal
    fixed_t v0[3], v1[3], v2[3];
    copy3(&P1[triIndex][0], v0);
    copy3(&P2[triIndex][0], v1);
    copy3(&P3[triIndex][0], v2);

    fixed_t subv1v0[3], subv2v0[3];
    customSubtract(v1, v0, subv1v0);
    customSubtract(v2, v0, subv2v0);
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
    fixed_t uv[2])
{
    bool isect = false;
    for (uint32_t i = 0; i < NUM_TRIS; ++i)
    {
// #pragma HLS pipeline
        fixed_t t = kInfinity, u, v;
        fixed_t v0Arr[3], v1Arr[3], v2Arr[3];
        copy3(&P1[i][0], v0Arr);
        copy3(&P2[i][0], v1Arr);
        copy3(&P3[i][0], v2Arr);
        bool testVal = rayTriangleIntersect(origArr, dirArr, v0Arr, v1Arr, v2Arr, t, u, v);
        if (testVal && t < tNear) {
            tNear = t;
            uv[0] = u;
            uv[1] = v;
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
    fixed_t &tNear, uint32_t &index, fixed_t uv[2])
{
    bool isIntersecting = false;
    fixed_t tNearTriangle = kInfinity;
    uint32_t indexTriangle;
    if (intersect(P1, P2, P3, orig, dir, tNearTriangle, indexTriangle, uv) && tNearTriangle < tNear)
    {
        tNear = tNearTriangle;
        index = indexTriangle;
        isIntersecting = true;
    }

    return isIntersecting;
}

void castRay(
    uint32_t &i, uint32_t &j, fixed_t &frame_width, fixed_t &frame_height, fixed_t &imageAspectRatio, fixed_t &scale,
    fixed_t orig[3],
    fixed_t P1[NUM_TRIS][3],
    fixed_t P2[NUM_TRIS][3],
    fixed_t P3[NUM_TRIS][3],
    fixed_t texCoordinates[NUM_TRIS * 3][2],
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
//#pragma HLS pipeline
        hitColor[i] = backgroundColor[i];
    }

    fixed_t tnear = kInfinity;
    fixed_t uv[2];
    uint32_t index = 0;
    if (trace(orig, dir, P1, P2, P3, tnear, index, uv))
    {
        fixed_t hitPoint[3];
        for (int i = 0; i < 3; ++i)
        {
//#pragma HLS pipeline
            hitPoint[i] = orig[i] + dir[i] * tnear;
        }

        fixed_t hitNormal[3];
        fixed_t hitTexCoordinates[2];
        getSurfaceProperties(P1, P2, P3, texCoordinates, index, uv, hitNormal, hitTexCoordinates);
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
    fixed_t P1_DRAM[NUM_TRIS][3],
    fixed_t P2_DRAM[NUM_TRIS][3],
    fixed_t P3_DRAM[NUM_TRIS][3],
    fixed_t texCoordinates[NUM_TRIS * 3][2],
    fixed_t framebuffer[WIDTH * HEIGHT][3],
    fixed_t cameraToWorld_DRAM[4][4],
    fixed_t backgroundColor[3],
    fixed_t frame_width,
    fixed_t frame_height,
    fixed_t frame_scale)
{

#pragma HLS interface m_axi depth=6320*3 port=P1_DRAM offset=slave bundle=p1
#pragma HLS interface m_axi depth=6320*3 port=P2_DRAM offset=slave bundle=p2
#pragma HLS interface m_axi depth=6320*3 port=P3_DRAM offset=slave bundle=p3
#pragma HLS interface m_axi depth=16 port=cameraToWorld_DRAM offset=slave bundle=c2w
#pragma HLS interface s_axilite port=return

    fixed_t P1[NUM_TRIS][3];
    fixed_t P2[NUM_TRIS][3];
    fixed_t P3[NUM_TRIS][3];
    fixed_t cameraToWorld[4][4];

// #pragma HLS array_partition variable=P dim=1 factor=7 cyclic
#pragma HLS array_partition variable=P1 dim=2 complete
#pragma HLS array_partition variable=P2 dim=2 complete
#pragma HLS array_partition variable=P3 dim=2 complete
#pragma HLS array_partition variable=cameraToWorld dim=1 complete
//#pragma HLS array_partition variable=cameraToWorld dim=2 complete

    for(int i=0; i<NUM_TRIS; i++)
    {
        copy3(&P1_DRAM[i][0], &P1[i][0]);
        copy3(&P2_DRAM[i][0], &P2[i][0]);
        copy3(&P3_DRAM[i][0], &P3[i][0]);
    }

    for(int i=0; i<4; i++)
    {
        for(int j=0; j<4; j++)
        {
            cameraToWorld[i][j] = cameraToWorld_DRAM[i][j];
        }
    }

    fixed_t scale = frame_scale;
    fixed_t imageAspectRatio = 1.33;//frame_width / frame_height;
    fixed_t origArr[3];
    fixed_t zeroArr[3] = {0, 0, 0};
    customMultVecMatrix(zeroArr, origArr, cameraToWorld);

    for (uint32_t j = 0; j < HEIGHT;  ++j)
    {
        for (uint32_t i = 0; i < WIDTH; ++i)
        {
            castRay(
                i, j, frame_width, frame_height, imageAspectRatio, scale,
                origArr, P1, P2, P3, texCoordinates, &framebuffer[j*WIDTH + i][0], backgroundColor,
                cameraToWorld);
        }
        // fprintf(stderr, "\r%3d%c", uint32_t(j / (float)HEIGHT * 100), '%');
    }
}
