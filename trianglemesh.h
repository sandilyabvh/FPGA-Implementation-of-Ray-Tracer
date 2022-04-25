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

class TriangleMesh
{
public:
    // Build a triangle mesh from a face index array and a vertex index array
    TriangleMesh(
        float o2w[4][4],
        const uint32_t nfaces,
        const uint32_t faceIndex[NUM_FACES],
        const uint32_t vertsIndex[VERTS_INDEX_ARR_SIZE],
        float verts[VERTS_ARR_SIZE][3],
        float normals[VERTS_INDEX_ARR_SIZE][3],
        float st[VERTS_INDEX_ARR_SIZE][2])
    {
        memcpy(this->objectToWorld, o2w, 4 * 4 * sizeof(float));
        customInverse(o2w, this->worldToObject);

        // find out how many triangles we need to create for this mesh
        uint32_t k = 0, maxVertIndex = MAX_VERT_INDEX;
        for (uint32_t i = 0; i < maxVertIndex; ++i)
        {
            // Transforming vertices to world space
            customMultVecMatrix(verts[i], this->P[i], this->objectToWorld);
        }

        // Generate the triangle index array
        float transformNormals[4][4];

        customInverse(this->worldToObject, transformNormals);

        generateTriangleIndexArr(transformNormals,
            faceIndex,
            this->trisIndex,
            vertsIndex,
            normals,
            this->N,
            this->texCoordinates,
            st);
    }

    // member variables
    uint32_t numTris;                         // number of triangles
    float P[MAX_VERT_INDEX][3];               // triangles vertex position
    uint32_t trisIndex[NUM_TRIS * 3];         // vertex index array
    float N[NUM_TRIS * 3][3];                 // triangles vertex normals
    float texCoordinates[NUM_TRIS * 3][2];    // triangles texture coordinates
    float objectToWorld[4][4], worldToObject[4][4];
};

void render(TriangleMesh mesh,
    float framebuffer[WIDTH * HEIGHT][3],
    float cameraToWorld[4][4],
    float backgroundColor[3]);

#endif

