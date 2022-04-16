class Object
{
 public:
    // [comment]
    // Setting up the object-to-world and world-to-object matrix
    // [/comment]
    Object(const Matrix44f &o2w) : objectToWorld(o2w), worldToObject(o2w.inverse()) {}
    ~Object() {}
    bool intersect(const Vec3f &, const Vec3f &, float &, uint32_t &, Vec2f &);
    void getSurfaceProperties(const Vec3f &, const Vec3f &, const uint32_t &, const Vec2f &, Vec3f &, Vec2f &);
    Matrix44f objectToWorld, worldToObject;
};
