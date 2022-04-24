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


void print(float in[3])
{
    std::cout << '[' << in[0] << ' ' << in[1] << ' ' << in[2] << ']' << std::endl;
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
    TriangleMesh mesh,
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

void getPrimitive(TriangleMesh mesh, float v0Arr[3], float v1Arr[3], float v2Arr[3], uint32_t index)
{
    uint32_t j = index*3;
//    std::cout << "getPrimitive: " << mesh.P[mesh.trisIndex[j]][0] << "   " << mesh.P[mesh.trisIndex[j]][1] << "   " << mesh.P[mesh.trisIndex[j]][2]<< "\n";

    v0Arr[0] = mesh.P[mesh.trisIndex[j]][0];
    v0Arr[1] = mesh.P[mesh.trisIndex[j]][1];
    v0Arr[2] = mesh.P[mesh.trisIndex[j]][2];
    v1Arr[0] = mesh.P[mesh.trisIndex[j + 1]][0];
    v1Arr[1] = mesh.P[mesh.trisIndex[j + 1]][1];
    v1Arr[2] = mesh.P[mesh.trisIndex[j + 1]][2];
    v2Arr[0] = mesh.P[mesh.trisIndex[j + 2]][0];
    v2Arr[1] = mesh.P[mesh.trisIndex[j + 2]][1];
    v2Arr[2] = mesh.P[mesh.trisIndex[j + 2]][2];
}

bool trace(
    float orig[3], float dir[3],
    TriangleMesh mesh,
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

// Test if the ray interesests this triangle mesh
bool intersect(TriangleMesh mesh, float origArr[3], float dirArr[3], float &tNear, uint32_t &triIndex, float uv[2])
{
    bool isect = false;
    for (uint32_t i = 0; i < mesh.numTris; ++i) {
    // for (uint32_t i = 0; i < 5; ++i) {
        float t = kInfinity, u, v;
        float v0Arr[3], v1Arr[3], v2Arr[3];
        getPrimitive(mesh, v0Arr, v1Arr, v2Arr, i);
#ifdef PRINT
            if (DEBUG_LEVEL==3)
            {
                std::cout << "Intersection found:\n";
                std::cout << "Primitive Index = " << i << "\n";
                std::cout << "Orig:\n";
                print(origArr);
                std::cout << "Dir:\n";
                print(dirArr);
                std::cout << "v0Arr:\n";
                print(v0Arr);
                std::cout << "v1Arr\n";
                print(v1Arr);
                std::cout << "v2Arr:\n";
                print(v2Arr);
            }
#endif
        if (rayTriangleIntersect(origArr, dirArr, v0Arr, v1Arr, v2Arr, t, u, v) && t < tNear) {
            tNear = t;
            uv[0] = u;
            uv[1] = v;
            triIndex = i;
            isect = true;
#ifdef PRINT
            if (DEBUG_LEVEL==3)
            std::cout << "Intersection result: True\n\n";
#endif
        }
        else
        {
#ifdef PRINT
            if (DEBUG_LEVEL==3)
            std::cout << "Intersection result: False\n\n";
#endif
        }
    }

    return isect;
}

Vec3f castRay(
    float orig[3], float dir[3],
    TriangleMesh mesh,
    const Options options)
{
	float hitColor[0] = options.backgroundColor[0];
	float hitColor[1] = options.backgroundColor[1];
	float hitColor[2] = options.backgroundColor[2];

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

        hitColor = c * NdotView; //Vec3f(uv.x, uv.y, 0); // Vec3f(hitTexCoordinates.x, hitTexCoordinates.y, 0);
    }

    return hitColor;
}

// The main render function. This where we iterate over all pixels in the image, generate
// primary rays and cast these rays into the scene. The content of the framebuffer is
// saved to a file.
void render(const Options options,
    TriangleMesh mesh,
    const uint32_t frame)
{

#ifdef PRINT
    std::cout << "Starting rendering\n";
#endif
    float framebuffer[options.width * options.height][3];
    float * pix;

    float scale = tan(deg2rad(options.fov * 0.5));
    float imageAspectRatio = options.width / (float)options.height;
    float orig[3];
    options.cameraToWorld.multVecMatrix(Vec3f(0), orig);


#ifdef PRINT
    std::cout << "Starting render loop, i_max=" << options.width << " j_max=" << options.height << "\n";
#endif
    for (uint32_t j = 0; j < options.height;  ++j) // options.height;
    {
        for (uint32_t i = 0; i < options.width; ++i)
        {
#ifdef PRINT
            if (DEBUG_LEVEL==1)
            std::cout << "Pixel i: " << i << " j :" << j << " \n";
#endif
            // generate primary ray direction
            float x = (2 * (i + 0.5) / (float)options.width - 1) * imageAspectRatio * scale;
            float y = (1 - 2 * (j + 0.5) / (float)options.height) * scale;

            Vec3f dir;
            options.cameraToWorld.multDirMatrix(Vec3f(x, y, -1), dir);
            float dirArr[3] = {dir.getX(), dir.getY(), dir.getZ()};
            customNormalize3(dirArr);
            float origArr[3] {orig.getX(), orig.getY(), orig.getZ()};
            *pix = castRay(origArr, dirArr, mesh, options);
            framebuffer[j*options.width + i] = pix[0];
            framebuffer[j*options.width + i] = pix[1];
            framebuffer[j*options.width + i] = pix[2];
        }
        fprintf(stderr, "\r%3d%c", uint32_t(j / (float)options.height * 100), '%');
    }

#ifdef PRINT
    std::cout << "Writing to file \n";
#endif

    // save framebuffer to file
    char buff[256];
    sprintf(buff, "out.%04d.ppm", frame);
    std::ofstream ofs;
    ofs.open(buff);
    ofs << "P6\n" << options.width << " " << options.height << "\n255\n";
    for (uint32_t i = 0; i < options.height * options.width; ++i)
    {
        char r = (char)(255 * clamp(0, 1, framebuffer[i].x));
        char g = (char)(255 * clamp(0, 1, framebuffer[i].y));
        char b = (char)(255 * clamp(0, 1, framebuffer[i].z));
        ofs << r << g << b;
    }
    ofs.close();
}
