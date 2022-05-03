#ifndef _GEOMETRY_H

#include <ap_fixed.h>

#define _GEOMETRY_H

#define NUM_FACES             (3200)
#define VERTS_INDEX_ARR_SIZE  (12720)
#define VERTS_ARR_SIZE        (3241)
#define MAX_VERT_INDEX        (3241)
#define NUM_TRIS              (6320)

#define WIDTH  320
#define HEIGHT 240
#define FOV    20

#ifdef  CSIM_DEBUG
    typedef float fixed_t;
#else
    typedef ap_fixed<32,16> fixed_t;
    typedef ap_ufixed<32,16> ufixed_t;
#endif


#endif
