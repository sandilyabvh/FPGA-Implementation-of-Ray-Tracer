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
#include <stdint.h>

#include "common.h"

#include "trianglemesh.h"

using namespace std;

triangle_mesh_t loadPolyMeshFromFile(triangle_mesh_t &mesh, const char *file, float o2w[4][4])
{
    std::ifstream ifs;
    uint32_t numFaces = NUM_FACES;
    uint32_t vertsIndexArraySize = VERTS_INDEX_ARR_SIZE;
    uint32_t vertsArraySize = VERTS_ARR_SIZE;

    uint32_t faceIndex[NUM_FACES];
    uint32_t vertsIndex[VERTS_INDEX_ARR_SIZE];
    float verts[VERTS_ARR_SIZE][3];
    float normals[VERTS_INDEX_ARR_SIZE][3];
    float st[VERTS_INDEX_ARR_SIZE][2];

    ifs.open(file);
    if (ifs.fail()) throw;
    std::stringstream ss;
    ss << ifs.rdbuf();
    ss >> numFaces;

    // reading face index array
    for (uint32_t i = 0; i < numFaces; ++i)
    {
        ss >> faceIndex[i];
    }

    // reading vertex index array
    for (uint32_t i = 0; i < vertsIndexArraySize; ++i)
    {
        ss >> vertsIndex[i];
    }

    // reading vertices
    for (uint32_t i = 0; i < vertsArraySize; ++i)
    {
        ss >> verts[i][0] >> verts[i][1] >> verts[i][2];
    }

    // reading normals
    for (uint32_t i = 0; i < vertsIndexArraySize; ++i)
    {
        ss >> normals[i][0] >> normals[i][1] >> normals[i][2];
    }

    // reading st coordinates
    for (uint32_t i = 0; i < vertsIndexArraySize; ++i)
    {
        ss >> st[i][0] >> st[i][1];
    }

    // return triangle_mesh_t(o2w, numFaces, faceIndex, vertsIndex, verts, normals, st);
    build_mesh(mesh, o2w, numFaces, faceIndex, vertsIndex, verts, normals, st);
}

// [comment]
// In the main function of the program, we create the scene (create objects and lights)
// as well as set the options for the render (image widht and height, maximum recursion
// depth, field-of-view, etc.). We then call the render function().
// [/comment]
int main(int argc, char **argv)
{
    // loading geometry
    float objectToWorld[4][4] = {1.624241, 0, 2.522269, 0, 0, 3, 0, 0, -2.522269, 0, 1.624241, 0, 0, 0, 0, 1};
    float backgroundColor[3] = {0.235294, 0.67451, 0.843137};
    float cameraToWorld[4][4] = {{0.931056, 0, 0.364877, 0}, {0.177666, 0.873446, -0.45335, 0}, {-0.3187, 0.48692, 0.813227, 0}, {-41.229214, 81.862351, 112.456908, 1}};
    
    uint32_t frame = 0;
    float framebuffer[WIDTH * HEIGHT][3];
    triangle_mesh_t mesh;
    //bool results;
    loadPolyMeshFromFile(mesh, "./teapot.geo", objectToWorld);

    // finally, render
    render(mesh, framebuffer, cameraToWorld, backgroundColor);

    // save framebuffer to file
    char buff[256];
    sprintf(buff, "out.%04d.ppm", frame);
    std::ofstream ofs;
    ofs.open(buff);
    ofs << "P6\n" << WIDTH << " " << HEIGHT << "\n255\n";
    for (uint32_t i = 0; i < HEIGHT * WIDTH; ++i)
    {
        char r = (char)(255 * clamp(0, 1, framebuffer[i][0]));
        char g = (char)(255 * clamp(0, 1, framebuffer[i][1]));
        char b = (char)(255 * clamp(0, 1, framebuffer[i][2]));
        ofs << r << g << b;
    }
    ofs.close();

    return 0;
}
