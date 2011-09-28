/*
 * box.h
 *
 *  Created on: Sep 27, 2011
 *      Author: atulrungta
 */

#ifndef BOX_H_
#define BOX_H_

#include "vector.h"
#include "ray.h"

class Box {
	Vector P1;
	Vector P2;
	float min(float val1, float val2);
	float max(float val1, float val2);
public:
	Box(Vector plane_1, Vector plane_2) {
		P1 = plane_1;
		P2 = plane_2;
	}
	bool intersects(Ray ray);
};


#endif /* BOX_H_ */
