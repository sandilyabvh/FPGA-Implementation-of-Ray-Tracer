#ifndef _OBJECT_H
#define _OBJECT_H

class Object
{
 public:
    // Setting up the object-to-world and world-to-object matrix
    Object(const Matrix44f &o2w) : objectToWorld(o2w), worldToObject(o2w.inverse()) {}
    ~Object() {}
    Matrix44f objectToWorld, worldToObject;
};

#endif
