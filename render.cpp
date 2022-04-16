#include <cstdio>
#include <cstdlib>
#include <memory>
#include <vector>
#include <utility>
#include <cstdint>
#include <iostream>
#include <fstream>
#include <cmath>
#include <sstream>
#include <chrono>

#include "hls_math.h"

#include "geometry.h"
#include "trianglemesh.h"

template <typename T, int MIN, int MAX>
T customClamp(T data) {
    T ret;
    if (data < MIN) {
        ret = MIN;
    } else if (data > MAX) {
        ret = MAX;
    } else {
        ret = data;
    }
    return ret;
}

bool trace(
    const Vec3f orig, const Vec3f dir,
	const std::vector<Object> objects,
    float tNear, uint32_t index, Vec2f uv, Object hitObject)
{
	bool isIntersecting = false;

	for (uint32_t k = 0; k < objects.size(); ++k)
    {
        float tNearTriangle = kInfinity;
        uint32_t indexTriangle;
        float origArr[3] = {orig.getX(), orig.getY(), orig.getZ()};
        float dirArr[3]  = {dir.getX(), dir.getY(), dir.getZ()};
        float uvTriangleArr[2] = {uvTriangle.x, uvTriangle.y};
        if (objects[k].intersect(origArr, dirArr, tNearTriangle, indexTriangle, uvTriangleArr) && tNearTriangle < tNear) {
            *hitObject = objects[k].get();

            tNear = tNearTriangle;
            index = indexTriangle;
            uv.x = uvTriangleArr[0];
            uv.y = uvTriangleArr[1];
        }
    }

    return isIntersecting;
}


Vec3f castRay(
    const Vec3f orig, const Vec3f dir,
	const std::vector<Object> objects,
    const Options options)
{
    Vec3f hitColor = options.backgroundColor;
    float tnear = kInfinity;
    Vec2f uv;
    uint32_t index = 0;
    Object hitObject;
    if (trace(orig, dir, objects, tnear, index, uv, hitObject))
    {
        Vec3f hitPoint = orig + dir * tnear;
        Vec3f hitNormal;
        Vec2f hitTexCoordinates;
        hitObject.getSurfaceProperties(hitPoint, dir, index, uv, hitNormal, hitTexCoordinates);
        float NdotView = std::max(0.f, hitNormal.dotProduct(-dir));
        const int M = 4;
        float checker = (fmod(hitTexCoordinates.x * M, 1.0) > 0.5) ^ (fmod(hitTexCoordinates.y * M, 1.0) < 0.5);
        float c = 0.3 * (1 - checker) + 0.7 * checker;
        
        hitColor = c * NdotView; //Vec3f(uv.x, uv.y, 0); // Vec3f(hitTexCoordinates.x, hitTexCoordinates.y, 0);
    }

    return hitColor;
}

// The main render function. This where we iterate over all pixels in the image, generate
// primary rays and cast these rays into the scene. The content of the framebuffer is
// saved to a file.
void render(const Options options,
			const std::vector<Object> objects,
			const uint32_t frame)
{
	Vec3f framebuffer[options.width * options.height];
	Vec3f *pix = framebuffer;

    float scale = tan(deg2rad(options.fov * 0.5));
    float imageAspectRatio = options.width / (float)options.height;
    Vec3f orig;
    options.cameraToWorld.multVecMatrix(Vec3f(0), orig);

    for (uint32_t j = 0; j < options.height; ++j)
    {
        for (uint32_t i = 0; i < options.width; ++i)
        {
            // generate primary ray direction
            float x = (2 * (i + 0.5) / (float)options.width - 1) * imageAspectRatio * scale;
            float y = (1 - 2 * (j + 0.5) / (float)options.height) * scale;

            Vec3f dir;
            options.cameraToWorld.multDirMatrix(Vec3f(x, y, -1), dir);
            dir.normalize();
            *(pix++) = castRay(orig, dir, objects, options);
        }
    }

    // save framebuffer to file
    char buff[256];
    sprintf(buff, "out.%04d.ppm", frame);
    std::ofstream ofs;
    ofs.open(buff);
    ofs << "P6\n" << options.width << " " << options.height << "\n255\n";
    for (uint32_t i = 0; i < options.height * options.width; ++i)
    {
        char r = (char)(255 * customClamp(0, 1, framebuffer[i].x));
        char g = (char)(255 * customClamp(0, 1, framebuffer[i].y));
        char b = (char)(255 * customClamp(0, 1, framebuffer[i].z));
        ofs << r << g << b;
    }
    ofs.close();
}
