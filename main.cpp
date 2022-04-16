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

#include "geometry.h"
//#include "common.h"
//#include "object.h"
//#include "options.h"
#include "trianglemesh.h"

using namespace std;

TriangleMesh loadPolyMeshFromFile(const char *file, const Matrix44f o2w)
{
    std::ifstream ifs;
    uint32_t numFaces;
    numFaces = 3200;
    uint32_t faceIndex [3200];
    uint32_t vertsIndexArraySize;
    vertsIndexArraySize = 12720;
    uint32_t vertsIndex [12720];
    uint32_t vertsArraySize;
    vertsArraySize = 3241;
    float verts[3241][3];
    float normals[12720][3];
    float st[12720][3];

    try {
        ifs.open(file);
        if (ifs.fail()) throw;
        std::stringstream ss;
        ss << ifs.rdbuf();
        uint32_t numFaces;
        ss >> numFaces;

        // reading face index array
        for (uint32_t i = 0; i < numFaces; ++i) {
            ss >> faceIndex[i];
            cout << "faceIndex:" << faceIndex[i] << " for i:" << i;
        }

        // reading vertex index array
        for (uint32_t i = 0; i < vertsIndexArraySize; ++i) {
            ss >> vertsIndex[i];
            cout << "vertsIndex:" << vertsIndex[i] << " for i:" << i;
        }

        // reading vertices
        for (uint32_t i = 0; i < vertsArraySize; ++i) {
            ss >> verts[i][0] >> verts[i][1] >> verts[i][2];
            cout << "verts[i][0]:" << verts[i][0] << " verts[i][1]:"<< verts[i][1] << " verts[i][2]:" << verts[i][2] << " for i:" << i;
        }

        // reading normals
        for (uint32_t i = 0; i < vertsIndexArraySize; ++i) {
            ss >> normals[i][0] >> normals[i][1] >> normals[i][2];
            cout << "normals[i][0]:" << normals[i][0] << " normals[i][1]:"<< normals[i][1] << " normals[i][2]:" << normals[i][2] << " for i:" << i;
        }

        // reading st coordinates
        for (uint32_t i = 0; i < vertsIndexArraySize; ++i) {
            ss >> st[i][0] >> st[i][1];
            cout << "st[i][0]:" << verts[i][0] << " st[i][1]:"<< st[i][1] << " st[i][2]:" << st[i][2] << " for i:" << i;
        }

        return TriangleMesh(o2w, numFaces, faceIndex, vertsIndex, verts, normals, st);
    }
    catch (...) {
        ifs.close();
    }
    ifs.close();

    return TriangleMesh(o2w, numFaces, faceIndex, vertsIndex, verts, normals, st);
}

// [comment]
// In the main function of the program, we create the scene (create objects and lights)
// as well as set the options for the render (image widht and height, maximum recursion
// depth, field-of-view, etc.). We then call the render function().
// [/comment]
int main(int argc, char **argv)
{
    // setting up options
    Options options;
    options.cameraToWorld = Matrix44f(0.931056, 0, 0.364877, 0, 0.177666, 0.873446, -0.45335, 0, -0.3187, 0.48692, 0.813227, 0, -41.229214, 81.862351, 112.456908, 1);
    options.fov = 18;

    // loading geometry
    std::vector<Object> objects;
    Matrix44f objectToWorld = Matrix44f(1.624241, 0, 2.522269, 0, 0, 3, 0, 0, -2.522269, 0, 1.624241, 0, 0, 0, 0, 1); // Matrix44f::kIdentity;
	//bool results;
    TriangleMesh mesh =	loadPolyMeshFromFile("./teapot.geo", objectToWorld);
    //cout << "Results: " << results;
    //objects.push_back((Object)mesh);

    // finally, render
    // render(options, objects, 0);

    return 0;
}
