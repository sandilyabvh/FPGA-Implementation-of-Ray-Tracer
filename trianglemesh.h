#ifndef _TRIANGLE_MESH_
#define _TRIANGLE_MESH_

#include "common.h"
#include "object.h"
//#include "options.h"

/*
* Function to implement cross product
* result = in1 x in2
*/
void customCrossProduct(float in1[3], float in2[3], float result[3]);

/*
* Function to implement dot product
* result = in1 . in2
*/
void customDotProduct(float in1[3], float in2[3], float &result);

/*
* Function to implement subration
* result = in1 - in2
*/
void customSubtract(float in1[3], float in2[3], float result[3]);

void print(float in[3]);

bool rayTriangleIntersect(
    float orig[3], float dir[3],
    float v0[3], float v1[3], float v2[3],
    float &t, float &u, float &v);

// Using index0 = x, index1 = y, index2 = z


class TriangleMesh : public Object
{
public:
    // Build a triangle mesh from a face index array and a vertex index array
    TriangleMesh(
        const Matrix44f o2w,
        const uint32_t nfaces,
        const uint32_t faceIndex[NUM_FACES],
        const uint32_t vertsIndex[VERTS_INDEX_ARR_SIZE],
        float verts[VERTS_ARR_SIZE][3],
        float normals[VERTS_INDEX_ARR_SIZE][3],
        float st[VERTS_INDEX_ARR_SIZE][2]) :
        Object(o2w),
        numTris(NUM_TRIS)
    {
        // find out how many triangles we need to create for this mesh
        uint32_t k = 0, maxVertIndex = MAX_VERT_INDEX;
        Vec3f P_Vec3f, verts_Vec3f;

        for (uint32_t i = 0; i < maxVertIndex; ++i)
        {
            P_Vec3f.x = P[i][0];
            P_Vec3f.y = P[i][1];
            P_Vec3f.z = P[i][2];

            verts_Vec3f.x = verts[i][0];
            verts_Vec3f.y = verts[i][1];
            verts_Vec3f.z = verts[i][2];

            // Transforming vertices to world space
            objectToWorld.multVecMatrix(verts_Vec3f, P_Vec3f);

            P[i][0] = P_Vec3f.x;
            P[i][1] = P_Vec3f.y;
            P[i][2] = P_Vec3f.z;
        }

        // Generate the triangle index array
        Matrix44f transformNormals = worldToObject.transpose();

        generateTriangleIndexArr(transformNormals,
            faceIndex,
            trisIndex,
            vertsIndex,
            normals,
            N,
            texCoordinates,
            st);
    }

    // member variables
    uint32_t numTris;                         // number of triangles
    float P[MAX_VERT_INDEX][3];               // triangles vertex position
    uint32_t trisIndex[NUM_TRIS * 3];         // vertex index array
    float N[NUM_TRIS * 3][3];                 // triangles vertex normals
    float texCoordinates[NUM_TRIS * 3][2];    // triangles texture coordinates
};

void getPrimitive(TriangleMesh mesh,
    float v0Arr[3],
    float v1Arr[3],
    float v2Arr[3],
    uint32_t index);

void render(const Options options,
    TriangleMesh mesh,
    const uint32_t frame);

bool intersect(TriangleMesh mesh,
    float origArr[3],
    float dirArr[3],
    float &tNear,
    uint32_t &triIndex,
    float uv[2]);

void getSurfaceProperties(
    TriangleMesh mesh,
    const Vec3f hitPoint,
    const Vec3f viewDirection,
    const uint32_t triIndex,
    const Vec2f uv,
    Vec3f hitNormal,
    Vec2f hitTextureCoordinates);

#endif

