#include "common.h"
#include "object.h"
//#include "options.h"

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

        for (uint32_t i = 0; i < maxVertIndex; ++i)
        {
            // Transforming vertices to world space
        	objectToWorld.multVecMatrix(verts[i], P[i]);
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

    // Test if the ray intersects this triangle mesh
    bool intersect(float origArr[3], float dirArr[3], float &tNear, uint32_t &triIndex, float uv[2]) const
    {
        bool isect = false;
        for (uint32_t i = 0; i < numTris; ++i)
        {
            float t = kInfinity, u, v;
            float v0Arr[3], v1Arr[3], v2Arr[3];
            getPrimitive(v0Arr, v1Arr, v2Arr, i);
            if (rayTriangleIntersect(origArr, dirArr, v0Arr, v1Arr, v2Arr, t, u, v) && t < tNear)
            {
              tNear = t;
              uv[0] = u;
              uv[1] = v;
              triIndex = i;
              isect = true;
            }
        }

        return isect;
    }

    void getSurfaceProperties(
        const Vec3f hitPoint,
        const Vec3f viewDirection,
        const uint32_t triIndex,
        const Vec2f uv,
        Vec3f hitNormal,
        Vec2f hitTextureCoordinates) const
    {
        // face normal
        Vec3f v0, v1, v2;
        v0.x = P[trisIndex[triIndex * 3]][0];
        v0.y = P[trisIndex[triIndex * 3]][1];
        v0.z = P[trisIndex[triIndex * 3]][2];
        v1.x = P[trisIndex[triIndex * 3 + 1]][0];
        v1.y = P[trisIndex[triIndex * 3 + 1]][1];
        v1.z = P[trisIndex[triIndex * 3 + 1]][2];
        v2.x = P[trisIndex[triIndex * 3 + 2]][0];
        v2.y = P[trisIndex[triIndex * 3 + 2]][1];
        v2.z = P[trisIndex[triIndex * 3 + 2]][2];
        hitNormal = (v1 - v0).crossProduct(v2 - v0);
        hitNormal.normalize();

        // texture coordinates
        Vec2f st0, st1, st2;
        st0.x = texCoordinates[triIndex * 3][0];
        st0.y = texCoordinates[triIndex * 3][1];
        st1.x = texCoordinates[triIndex * 3 + 1][0];
        st1.y = texCoordinates[triIndex * 3 + 1][1];
        st2.x = texCoordinates[triIndex * 3 + 2][0];
        st2.y = texCoordinates[triIndex * 3 + 2][1];
        hitTextureCoordinates = (1 - uv.x - uv.y) * st0 + uv.x * st1 + uv.y * st2;
    }

    // member variables
    uint32_t numTris;                         // number of triangles
    float P[MAX_VERT_INDEX][3];               // triangles vertex position
    uint32_t trisIndex[NUM_TRIS * 3];         // vertex index array
    float N[NUM_TRIS * 3][3];                 // triangles vertex normals
    float texCoordinates[NUM_TRIS * 3][2];    // triangles texture coordinates
};

