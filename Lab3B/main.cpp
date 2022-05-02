#include "common.h"
#include "raytriangleintersect.h"

extern fixed_t dir[3];
extern fixed_t result_t;
extern fixed_t result_u;
extern fixed_t result_v;
extern fixed_t verts[6320][3][3];
extern int result_triIndex;

int main(int argc, char **argv)
{
	fixed_t intersectIndex[2];
    fixed_t P1[NUM_TRIS][3];
    fixed_t P2[NUM_TRIS][3];
    fixed_t P3[NUM_TRIS][3];

    // Split Vertices to three different arrays Pi,
	// where i represents ith vertex co-ordinates of a triangle
    for ( int i = 0; i < NUM_TRIS; i++)
	{
		for (int j = 0; j < 3; j++)
		{
			P1[i][j] = verts[i][0][j];
			P2[i][j] = verts[i][1][j];
			P3[i][j] = verts[i][2][j];
		}
	}

    rayTriangleIntersect(dir, P1, P2, P3, intersectIndex);

    // Result check
    if ((int)intersectIndex[0] != -1 &&
		(int)intersectIndex[0] == result_triIndex)
	{
		std::cout << " PASS: Intersection Found" << "\n";
	}
    else
    {
        std::cout << " FAIL: Intersection Not Found" << "\n";
    }

    return 0;
}
