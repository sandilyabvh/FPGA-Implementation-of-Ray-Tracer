#ifndef _GEOMETRY_H

#include "config.h"
#include <ap_fixed.h>

#define _GEOMETRY_H

#define NUM_FACES             (3200)
#define VERTS_INDEX_ARR_SIZE  (12720)
#define VERTS_ARR_SIZE        (3241)
#define MAX_VERT_INDEX        (3241)
#define NUM_TRIS              (6320)


// #define WIDTH  640
// #define HEIGHT 480
#define WIDTH  320
#define HEIGHT 240
#define FOV    20

#define PRINT

#ifdef  CSIM_DEBUG
    typedef float fixed_t;
#else
    typedef ap_fixed<64,32> fixed_t;
#endif


#endif
