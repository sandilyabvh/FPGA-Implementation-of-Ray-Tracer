#include "common.h"
#include "object.h"
#include "options.h"

/*
* Function to implement cross product
* result = in1 x in2
*/
void crossProduct(float in1[3], float in2[3], float result[3])
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
void dotProduct(float in1[3], float in2[3], float &result)
{
    result = in1[0] * in2[0] + in1[1] * in2[1] + in1[2] * in2[2];
}

/*
* Function to implement subration
* result = in1 - in2
*/
void subtract(float in1[3], float in2[3], float result[3])
{
    for (int i = 0; i < 3; ++i)
    {
        result[i] = in1[i] - in2[i];
    }
}

void print(float in[3])
{
    std::cout << '[' << in[0] << ' ' << in[1] << ' ' << in[2] << ']' << std::endl;
}

// Using index0 = x, index1 = y, index2 = z
bool rayTriangleIntersect(
    float orig[3], float dir[3],
    float v0[3], float v1[3], float v2[3],
    float &t, float &u, float &v)
{

    // v0v1 = v1 - v0;
    float v0v1[3];
    subtract(v1, v0, v0v1);
    
    // v0v2 = v2 - v0;
    float v0v2[3];
    subtract(v2, v0, v0v2);

    // pvec = dir x v0v2;
    float pvec[3];
    crossProduct(dir, v0v2, pvec);

    // det = v0v1.pvec;
    float det;
    dotProduct(v0v1, pvec, det);

    float detTest = det;
    if (detTest < 0)
    {
        detTest = detTest * (-1);
    }

    // ray and triangle are parallel if det is close to 0
    if (detTest < kEpsilon) return false;

    float invDet = 1 / det;

    float tvec[3];
    subtract(orig, v0, tvec);

    float tempResult;
    dotProduct(tvec, pvec, tempResult);
    u = tempResult * invDet;

    if (u < 0 || u > 1) return false;

    float qvec[3];
    crossProduct(tvec, v0v1, qvec);

    float tempResult1;
    dotProduct(dir, qvec, tempResult1);
    v = tempResult1 * invDet;

    if (v < 0 || u + v > 1) return false;

    float tempResult3;
    dotProduct(v0v2, qvec, tempResult3);
    t = tempResult3 * invDet;

    return true;
}

class TriangleMesh : public Object
{
public:
    // Build a triangle mesh from a face index array and a vertex index array
    TriangleMesh(
        const Matrix44f o2w,
        const uint32_t nfaces,
        const uint32_t faceIndex[3200],
        const uint32_t vertsIndex[12720],
        float verts[3241][3],
        float normals[12720][3],
        float st[12720][3]) :
        Object(o2w),
        numTris(6320)
    {
        // find out how many triangles we need to create for this mesh
    	uint32_t k = 0, maxVertIndex = 3241;

        // allocate memory to store the position of the mesh vertices
    	float P[3241][3];
        for (uint32_t i = 0; i < maxVertIndex; ++i) {
            // [comment]
            // Transforming vertices to world space
            // [/comment]
        	objectToWorld.multVecMatrix(verts[i], P[i]);
        }

        // allocate memory to store triangle indices
        uint32_t trisIndex[18960];
        uint32_t l = 0;

        // [comment]
        // Generate the triangle index array
        // Keep in mind that there is generally 1 vertex attribute for each vertex of each face.
        // So for example if you have 2 quads, you only have 6 vertices but you have 2 * 4
        // vertex attributes (that is 8 normals, 8 texture coordinates, etc.). So the easiest
        // lazziest method in our triangle mesh, is to create a new array for each supported
        // vertex attribute (st, normals, etc.) whose size is equal to the number of triangles
        // multiplied by 3, and then set the value of the vertex attribute at each vertex
        // of each triangle using the input array (normals[], st[], etc.)
        // [/comment]
        float N[18960][3];
        float texCOordinates[18960][2];

        // [comment]
        // Computing the transpose of the object-to-world inverse matrix
        // [/comment]
        Matrix44f transformNormals = worldToObject.transpose();

        // generate the triangle index array and set normals and st coordinates
        /*
        for (uint32_t i = 0, k = 0; i < nfaces; ++i) { // for each  face
            for (uint32_t j = 0; j < faceIndex[i] - 2; ++j) { // for each triangle in the face
                trisIndex[l] = vertsIndex[k];
                trisIndex[l + 1] = vertsIndex[k + j + 1];
                trisIndex[l + 2] = vertsIndex[k + j + 2];
                // [comment]
                // Transforming normals
                // [/comment]
                transformNormals.multDirMatrix(normals[k], N[l]);
                transformNormals.multDirMatrix(normals[k + j + 1], N[l + 1]);
                transformNormals.multDirMatrix(normals[k + j + 2], N[l + 2]);
                N[l].normalize();
                N[l + 1].normalize();
                N[l + 2].normalize();
                texCoordinates[l] = st[k];
                texCoordinates[l + 1] = st[k + j + 1];
                texCoordinates[l + 2] = st[k + j + 2];
                l += 3;
            }
            k += faceIndex[i];
        }
        */
    }


    // Test if the ray interesests this triangle mesh
    bool intersect(float origArr[3], float dirArr[3], float &tNear, uint32_t &triIndex, float uv[2]) const
    {
        bool isect = false;
        for (uint32_t i = 0; i < numTris; ++i) {
            float t = kInfinity, u, v;
            float v0Arr[3], v1Arr[3], v2Arr[3];
            getPrimitive(v0Arr, v1Arr, v2Arr, i);
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
    /*
    void getSurfaceProperties(
        float hitPoint[3],
        float viewDirection[3],
        uint32_t triIndex,
        float uv[2],
        float hitNormal[3],
        float hitTextureCoordinates[3])
    {
    	triIndex = 0;
        // face normal
    	float v0[3];
    	float v1[3];
    	float v2[3];
        v0 = P[trisIndex[triIndex * 3]];
        v1 = P[trisIndex[triIndex * 3 + 1]];
        v2 = P[trisIndex[triIndex * 3 + 2]];
        //hitNormal = (v1 - v0).crossProduct(v2 - v0);
        //hitNormal.normalize();

        // texture coordinates
        float st0[2];
        float st1[2];
        float st2[2];
        st0 = texCoordinates[triIndex * 3];
        st1 = texCoordinates[triIndex * 3 + 1];
        st2 = texCoordinates[triIndex * 3 + 2];
        hitTextureCoordinates = (1 - uv[0] - uv[1]) * st0 + uv[0] * st1 + uv[1] * st2;

        // vertex normal
#if 0
        float n0[3];
        float n1[3];
        float n2[3];
        n0 = N[triIndex * 3];
        n1 = N[triIndex * 3 + 1];
        n2 = N[triIndex * 3 + 2];
        hitNormal = (1 - uv[0] - uv[1]) * n0 + uv[0] * n1 + uv[1] * n2;
        // doesn't need to be normalized as the N's are normalized but just for safety
        //hitNormal.normalize();
#endif
    }
    */

    // member variables
    uint32_t numTris;                         // number of triangles
    float P[3241][3];                         // triangles vertex position
    uint32_t trisIndex[18960];             // vertex index array
    float N[18960][3];                        // triangles vertex normals
    float texCOordinates[18960][2];           // triangles texture coordinates
};
