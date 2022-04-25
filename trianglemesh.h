#ifndef _TRIANGLE_MESH_
#define _TRIANGLE_MESH_

#include <stdint.h>
#include "common.h"

void generateTriangleIndexArr(float transformNormals[4][4],
    const uint32_t faceIndex[NUM_FACES],
    uint32_t trisIndex[NUM_TRIS * 3],
    const uint32_t vertsIndex[VERTS_INDEX_ARR_SIZE],
    float normals[VERTS_INDEX_ARR_SIZE][3],
    float N[NUM_TRIS * 3][3],
    float texCoordinates[NUM_TRIS * 3][2],
    float st[VERTS_INDEX_ARR_SIZE][2]);

typedef struct triangle_mesh
{
    // member variables
    uint32_t numTris;                         // number of triangles
    float P[MAX_VERT_INDEX][3];               // triangles vertex position
    uint32_t trisIndex[NUM_TRIS * 3];         // vertex index array
    float N[NUM_TRIS * 3][3];                 // triangles vertex normals
    float texCoordinates[NUM_TRIS * 3][2];    // triangles texture coordinates
    float objectToWorld[4][4], worldToObject[4][4];
} triangle_mesh_t;


void build_mesh(
    triangle_mesh_t &mesh,
    float o2w[4][4],
    const uint32_t nfaces,
    const uint32_t faceIndex[NUM_FACES],
    const uint32_t vertsIndex[VERTS_INDEX_ARR_SIZE],
    float verts[VERTS_ARR_SIZE][3],
    float normals[VERTS_INDEX_ARR_SIZE][3],
    float st[VERTS_INDEX_ARR_SIZE][2]
);

void render(triangle_mesh_t mesh,
    float framebuffer[WIDTH * HEIGHT][3],
    float cameraToWorld[4][4],
    float backgroundColor[3]);

#endif

