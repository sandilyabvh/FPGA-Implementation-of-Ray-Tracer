#ifndef _TB_COMMON_H_
#define _TB_COMMON_H_

#include "geometry.h"
#include <algorithm>

inline fixed_t customClamp(const fixed_t &lo, const fixed_t &hi, const fixed_t &v)
{
    return std::max(lo, std::min(hi, v));
}

void customInverse(fixed_t mat[4][4], fixed_t inverseMat[4][4]);

void customCopy44(fixed_t in[4][4], fixed_t out[4][4]);

#endif
