#include <cmath>
#include <algorithm>
#include <hls_math.h>

#include "common.h"

// Fixed Origin co-ordinates
#define ORIG_0				  (-41.2292)
#define ORIG_1				  (81.8624)
#define ORIG_2				  (112.457)


void rayTriangleIntersect(
    fixed_t dir_DRAM[3],
    fixed_t P1_DRAM[NUM_TRIS][3],
    fixed_t P2_DRAM[NUM_TRIS][3],
    fixed_t P3_DRAM[NUM_TRIS][3],
	fixed_t intersectIndex[2]);
