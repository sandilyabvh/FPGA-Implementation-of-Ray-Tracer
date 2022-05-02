#include "raytriangleintersect.h"

// Copy variables from DRAM to BRAM
void copyDRAMtoBRAM(
	    fixed_t dir_DRAM[3],
		fixed_t P1_DRAM[NUM_TRIS][3],
		fixed_t P2_DRAM[NUM_TRIS][3],
		fixed_t P3_DRAM[NUM_TRIS][3],
		fixed_t dir[3],
		fixed_t P1[NUM_TRIS][3],
		fixed_t P2[NUM_TRIS][3],
		fixed_t P3[NUM_TRIS][3])
{
    // Copy from BRAM to DRAM
    for (int i = 0; i < 3; i++)
    {
    	dir[i] = dir_DRAM[i];
    }

    for ( int i = 0; i < NUM_TRIS; i++)
    {
    	for (int j = 0; j < 3; j++)
    	{
    		P1[i][j] = P1_DRAM[i][j];
    		P2[i][j] = P2_DRAM[i][j];
    		P3[i][j] = P3_DRAM[i][j];
    	}
    }
}

// intersectIndex[0] = triangle intersect index, intersectIndex[1] = Texture value at intersection
void rayTriangleIntersect(
    fixed_t dir_DRAM[3],
    fixed_t P1_DRAM[NUM_TRIS][3],
    fixed_t P2_DRAM[NUM_TRIS][3],
    fixed_t P3_DRAM[NUM_TRIS][3],
	fixed_t intersectIndex[2])
{
#pragma HLS interface m_axi depth=64 port=intersectIndex offset=slave bundle=intersectIndex
#pragma HLS interface m_axi depth=6320*3 port=P1_DRAM offset=slave bundle=P1_DRAM
#pragma HLS interface m_axi depth=6320*3 port=P2_DRAM offset=slave bundle=P2_DRAM
#pragma HLS interface m_axi depth=6320*3 port=P3_DRAM offset=slave bundle=P3_DRAM
#pragma HLS interface m_axi depth=3 port=dir_DRAM offset=slave bundle=dir

#pragma HLS interface s_axilite port=return

    fixed_t orig[3] = {ORIG_0, ORIG_1, ORIG_2 };
    fixed_t dir[3];

    fixed_t P1[NUM_TRIS][3];
    fixed_t P2[NUM_TRIS][3];
    fixed_t P3[NUM_TRIS][3];

#pragma HLS array_partition variable=orig dim=0 complete
#pragma HLS array_partition variable=dir dim=0 complete

#pragma HLS array_partition variable=P1 dim=2 complete
#pragma HLS array_partition variable=P2 dim=2 complete
#pragma HLS array_partition variable=P3 dim=2 complete

    copyDRAMtoBRAM(dir_DRAM, P1_DRAM, P2_DRAM, P3_DRAM,
    			   dir, P1, P2, P3);

    int intersectIndex_BRAM = -1;

    fixed_t t = kInfinity, u ,v;
    bool isIntersecting = false;

    NUM_TRIS_LOOP: for (int i = 0; i < NUM_TRIS; ++i)
    {
#pragma HLS pipeline
        // v0v1 = v1 - v0
        fixed_t v0v1[3];
        customSubtract(P2[i], P1[i], v0v1);

        // v0v2 = v2 - v0;
        fixed_t v0v2[3];
        customSubtract(P3[i], P1[i], v0v2);

        // pvec = dir x v0v2;
        fixed_t pvec[3];
        customCrossProduct(dir, v0v2, pvec);

        // det = v0v1.pvec;
        fixed_t det;

        customDotProduct(v0v1, pvec, det);

        fixed_t detTest = det;
        if (detTest < 0)
        {
            detTest = detTest * (-1);
        }

        fixed_t one = 1.0, invDet;
        customDivide(one, det, invDet);
        // fixed_t invDet = (fixed_t)1.0/ det;

        fixed_t tvec[3];
        customSubtract(orig, P1[i], tvec);

        fixed_t tempResult;
        customDotProduct(tvec, pvec, tempResult);
        u = tempResult * invDet;

        fixed_t qvec[3];
        customCrossProduct(tvec, v0v1, qvec);

        fixed_t tempResult1;
        customDotProduct(dir, qvec, tempResult1);
        v = tempResult1 * invDet;

        fixed_t tempResult3;
        fixed_t local_t;
        customDotProduct(v0v2, qvec, tempResult3);
        local_t = tempResult3 * invDet;

        // NOTE: Moved all returns at the end to fix imbalance in usage
        // TODO: Check for possible issues in the kEpsilon handling, could be out of fixed point range
        // ray and triangle are parallel if det is close to 0
        bool flag1 = (detTest < kEpsilon) || (detTest == 0);
        bool flag2 = u < 0 || u > 1;
        bool flag3 = v < 0 || u + v > 1;
        if (flag1)
            isIntersecting = false;
        else if (flag2)
            isIntersecting = false;
        else if (flag3)
            isIntersecting = false;
        else
            isIntersecting = true;

        if (isIntersecting  && local_t < t)
        {
        	t = local_t;
        	intersectIndex_BRAM = i;
        }
    }

    intersectIndex[0] = (fixed_t)intersectIndex_BRAM;
    intersectIndex[1] = t;

    return;
}
