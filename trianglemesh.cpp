#include <cstdio>
#include <cstdlib>
#include <memory>
#include <vector>
#include <utility>
#include <cstdint>
#include <iostream>
#include <fstream>
#include <cmath>
#include <sstream>
#include <chrono>

#include "trianglemesh.h"
#include "common.h"


// Using index0 = x, index1 = y, index2 = z
bool rayTriangleIntersect(
    float orig[3], float dir[3],
    float v0[3], float v1[3], float v2[3],
    float &t, float &u, float &v)
{

    // v0v1 = v1 - v0;
    float v0v1[3];
    customSubtract(v1, v0, v0v1);

    // v0v2 = v2 - v0;
    float v0v2[3];
    customSubtract(v2, v0, v0v2);

    // pvec = dir x v0v2;
    float pvec[3];
    customCrossProduct(dir, v0v2, pvec);

    // det = v0v1.pvec;
    float det;
    customDotProduct(v0v1, pvec, det);

    float detTest = det;
    if (detTest < 0)
    {
        detTest = detTest * (-1);
    }

    // ray and triangle are parallel if det is close to 0
    if (detTest < kEpsilon) return false;

    float invDet = 1 / det;

    float tvec[3];
    customSubtract(orig, v0, tvec);

    float tempResult;
    customDotProduct(tvec, pvec, tempResult);
    u = tempResult * invDet;

    if (u < 0 || u > 1) return false;

    float qvec[3];
    customCrossProduct(tvec, v0v1, qvec);

    float tempResult1;
    customDotProduct(dir, qvec, tempResult1);
    v = tempResult1 * invDet;

    if (v < 0 || u + v > 1) return false;

    float tempResult3;
    customDotProduct(v0v2, qvec, tempResult3);
    t = tempResult3 * invDet;

    return true;
}

void getSurfaceProperties(
    triangle_mesh_t mesh,
    float hitPoint[3],
    float viewDirection[3],
    const uint32_t &triIndex,
    float uv[2],
    float hitNormal[3],
    float hitTextureCoordinates[2])
{
    // face normal
    float v0[3], v1[3], v2[3];
    copy3(mesh.P[mesh.trisIndex[triIndex * 3]], v0);
    copy3(mesh.P[mesh.trisIndex[triIndex * 3 + 1]], v1);
    copy3(mesh.P[mesh.trisIndex[triIndex * 3 + 2]], v2);

    float subv1v0[3], subv2v0[3];
    customSubtract(v1, v0, subv1v0);
    customSubtract(v2, v0, subv2v0);
    customCrossProduct(subv1v0, subv2v0, hitNormal);
    customNormalize3(hitNormal);

    // texture coordinates
    float st0[2], st1[2], st2[3];
    copy2(mesh.texCoordinates[triIndex * 3], st0);
    copy2(mesh.texCoordinates[triIndex * 3 + 1], st1);
    copy2(mesh.texCoordinates[triIndex * 3 + 2], st2);
    // TODO: Check this
    for (int i = 0; i < 2; ++i)
    {
        hitTextureCoordinates[i] = (1 - uv[0] - uv[1]) * st0[i] + uv[0] * st1[i] + uv[1] * st2[i];
    }
}

void getPrimitive(triangle_mesh_t mesh, float v0Arr[3], float v1Arr[3], float v2Arr[3], uint32_t index)
{
    uint32_t j = index*3;

    for (int i = 0; i < 3; ++i)
    {
        v0Arr[i] = mesh.P[mesh.trisIndex[j]][i];
        v1Arr[i] = mesh.P[mesh.trisIndex[j + 1]][i];
        v2Arr[i] = mesh.P[mesh.trisIndex[j + 2]][i];
    }
}

// Test if the ray interesests this triangle mesh
bool intersect(triangle_mesh_t mesh, float origArr[3], float dirArr[3], float &tNear, uint32_t &triIndex, float uv[2])
{
    bool isect = false;
    for (uint32_t i = 0; i < NUM_TRIS; ++i) {
    // for (uint32_t i = 0; i < 5; ++i) {
        float t = kInfinity, u, v;
        float v0Arr[3], v1Arr[3], v2Arr[3];
        getPrimitive(mesh, v0Arr, v1Arr, v2Arr, i);
        if (rayTriangleIntersect(origArr, dirArr, v0Arr, v1Arr, v2Arr, t, u, v) && t < tNear) {
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
    float orig[3], float dir[3],
    triangle_mesh_t mesh,
    float &tNear, uint32_t &index, float uv[2])
{
    bool isIntersecting = false;
    float tNearTriangle = kInfinity;
    uint32_t indexTriangle;
    if (intersect(mesh, orig, dir, tNearTriangle, indexTriangle, uv) && tNearTriangle < tNear)
    {
        tNear = tNearTriangle;
        index = indexTriangle;

        isIntersecting = true;
    }

    return isIntersecting;
}

void castRay(
    float orig[3], float dir[3],
    triangle_mesh_t mesh,
    float hitColor[3],
    float backgroundColor[3])
{
    for (int i = 0; i < 3; ++i)
    {
        hitColor[i] = backgroundColor[i];
    }

    float tnear = kInfinity;
    float uv[2];
    uint32_t index = 0;
    if (trace(orig, dir, mesh, tnear, index, uv))
    {
        float hitPoint[3];
        for (int i = 0; i < 3; ++i)
        {
            hitPoint[i] = orig[i] + dir[i] * tnear;
        }

        float hitNormal[2];
        float hitTexCoordinates[2];
        getSurfaceProperties(mesh, hitPoint, dir, index, uv, hitNormal, hitTexCoordinates);
        float neg_dir[3] = {-dir[0], -dir[1], -dir[2]};
        float normal_dir_dot;
        customDotProduct(hitNormal, neg_dir, normal_dir_dot);
        float NdotView = std::max(0.f, normal_dir_dot);
        const int M = 4;
        float checker = (fmod(hitTexCoordinates[0] * M, 1.0) > 0.5) ^ (fmod(hitTexCoordinates[1] * M, 1.0) < 0.5);
        float c = 0.3 * (1 - checker) + 0.7 * checker;

        for (int i = 0; i < 3; ++i)
        {
            hitColor[i] = c * NdotView;
        }
    }
}

// The main render function. This where we iterate over all pixels in the image, generate
// primary rays and cast these rays into the scene. The content of the framebuffer is
// saved to a file.
void render(triangle_mesh_t mesh,
    float framebuffer[WIDTH * HEIGHT][3],
    float cameraToWorld[4][4],
    float backgroundColor[3])
{
    float scale = tan(deg2rad(FOV * 0.5));
    float imageAspectRatio = WIDTH / (float)HEIGHT;
    float origArr[3];
    float zeroArr[3] = {0, 0, 0};
    customMultVecMatrix(zeroArr, origArr, cameraToWorld);

    for (uint32_t j = 0; j < HEIGHT;  ++j) // HEIGHT;
    {
        for (uint32_t i = 0; i < WIDTH; ++i)
        {
            // generate primary ray direction
            float x = (2 * (i + 0.5) / (float)WIDTH - 1) * imageAspectRatio * scale;
            float y = (1 - 2 * (j + 0.5) / (float)HEIGHT) * scale;

            float srcRayDir[3] = {x, y, -1};
            float dirArr[3];

            customMultDirMatrix(srcRayDir, dirArr, cameraToWorld);

            customNormalize3(dirArr);
            castRay(origArr, dirArr, mesh, &framebuffer[j*WIDTH + i][0], backgroundColor);
        }
        fprintf(stderr, "\r%3d%c", uint32_t(j / (float)HEIGHT * 100), '%');
    }
}

void generateTriangleIndexArr(float transformNormals[4][4],
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

            customMultDirMatrix(normals[k], N[l], transformNormals);
            customMultDirMatrix(normals[k + j + 1], N[l + 1], transformNormals);
            customMultDirMatrix(normals[k + j + 2], N[l + 2], transformNormals);

            for (int ii = 0; ii < 3; ++ii)
            {
                customNormalize3(N[l + ii]);
            }

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

void build_mesh(
    triangle_mesh_t &mesh,
    float o2w[4][4],
    const uint32_t nfaces,
    const uint32_t faceIndex[NUM_FACES],
    const uint32_t vertsIndex[VERTS_INDEX_ARR_SIZE],
    float verts[VERTS_ARR_SIZE][3],
    float normals[VERTS_INDEX_ARR_SIZE][3],
    float st[VERTS_INDEX_ARR_SIZE][2]
)
{
    memcpy(mesh.objectToWorld, o2w, 4 * 4 * sizeof(float));
    customInverse(o2w, mesh.worldToObject);

    // find out how many triangles we need to create for this mesh
    uint32_t k = 0, maxVertIndex = MAX_VERT_INDEX;
    for (uint32_t i = 0; i < maxVertIndex; ++i)
    {
        // Transforming vertices to world space
        customMultVecMatrix(verts[i], mesh.P[i], mesh.objectToWorld);
    }

    // Generate the triangle index array
    float transformNormals[4][4];

    customInverse(mesh.worldToObject, transformNormals);

    generateTriangleIndexArr(transformNormals,
        faceIndex,
        mesh.trisIndex,
        vertsIndex,
        normals,
        mesh.N,
        mesh.texCoordinates,
        st);
}