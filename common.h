#define NUM_FACES 			  (3200)
#define VERTS_INDEX_ARR_SIZE  (12720)
#define VERTS_ARR_SIZE		  (3241)
#define MAX_VERT_INDEX		  (3241)
#define NUM_TRIS			  (6320)


static const float kInfinity = std::numeric_limits<float>::max();
static const float kEpsilon = 1e-8;
static const Vec3f kDefaultBackgroundColor = Vec3f(0.235294, 0.67451, 0.843137);
template <> const Matrix44f Matrix44f::kIdentity = Matrix44f();

inline
float clamp(const float &lo, const float &hi, const float &v)
{
	return std::max(lo, std::min(hi, v));
}

inline
float deg2rad(const float deg)
{
	return deg * M_PI / 180;
}

struct Options
{
    uint32_t width = 640;
    uint32_t height = 480;
    float fov = 90;
    Vec3f backgroundColor = kDefaultBackgroundColor;
    Matrix44f cameraToWorld;
};

void generateTriangleIndexArr (Matrix44f transformNormals,
		const uint32_t faceIndex[NUM_FACES],
		uint32_t trisIndex[NUM_TRIS * 3],
		const uint32_t vertsIndex[VERTS_INDEX_ARR_SIZE],
		float normals[VERTS_INDEX_ARR_SIZE][3],
		float N[NUM_TRIS * 3][3],
		float texCoordinates[NUM_TRIS * 3][2],
		float st[VERTS_INDEX_ARR_SIZE][2]);
