class Object
{
 public:
    // Setting up the object-to-world and world-to-object matrix
    Object(const Matrix44f &o2w) : objectToWorld(o2w), worldToObject(o2w.inverse()) {}
    ~Object() {}
    virtual bool intersect(float origArr[3], float dirArr[3], float &tNear, uint32_t &triIndex, float uv[2]) const = 0;
    virtual void getSurfaceProperties(const Vec3f hitPoint, const Vec3f viewDirection, const uint32_t triIndex, const Vec2f uv, Vec3f hitNormal, Vec2f hitTextureCoordinates) const = 0;

    Matrix44f objectToWorld, worldToObject;
};
