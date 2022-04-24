#ifndef _OBJECT_H
#define _OBJECT_H

class Object
{
 public:
    // Setting up the object-to-world and world-to-object matrix
    Object(float o2w[4][4])
 	 {
    	memcpy(objectToWorld, o2w, 4 * 4 * sizeof(float));
    	customInverse(o2w, objectToWorld);
 	 }
    ~Object() {}
    float objectToWorld[4][4], worldToObject[4][4];
};

#endif
