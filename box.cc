/*
 * box.cpp
 *
 *  Created on: Sep 26, 2011
 *      Author: atulrungta
 */
#include "trax.hpp"
#include "box.h"

// Only include stdio for printf on the non-trax version
#if TRAX==0
#include <stdio.h>
#endif

void swap(float &t1, float &t2) {
	float temp;
	temp = t1;
	t1 = t2;
	t2 = temp;
}

float Box::min(float t1, float t2) {
	if (t1 < t2)
		return t1;
	return t2;
}

float Box::max(float t1, float t2) {
	if (t1 < t2)
		return t2;
	return t1;
}


bool Box::intersects(Ray ray) {
	float tx1, tx2, ty1, ty2, tz1, tz2, tnear, tfar;
	tnear = -9999999999.f;
	tfar = 9999999999.f;

	tx1 = (float)(P1.getx() - ray.get_origin().getx())/ ray.get_direction().getx();
	tx2 = (float)(P2.getx() - ray.get_origin().getx())/ ray.get_direction().getx();
	if (tx1 > tx2)
		swap(tx1, tx2);
	if (tx1 > tnear)
		tnear = tx1;
	if (tx2 < tfar)
		tfar = tx2;
	if (tnear > tfar || tfar < 0)
		return false;

	ty1 = (float)(P1.gety() - ray.get_origin().gety())/ ray.get_direction().gety();
	ty2 = (float)(P2.gety() - ray.get_origin().gety())/ ray.get_direction().gety();

	if (ty1 > ty2)
		swap(ty1, ty2);
	if (ty1 > tnear)
		tnear = ty1;
	if (ty2 < tfar)
		tfar = ty2;
	if (tnear > tfar || tfar < 0)
		return false;

	tz1 = (float)(P1.getz() - ray.get_origin().getz())/ ray.get_direction().getz();
	tz2 = (float)(P2.getz() - ray.get_origin().getz())/ ray.get_direction().getz();

	if (tz1 > tz2)
		swap(tz1, tz2);
	if (tz1 > tnear)
		tnear = tz1;
	if (tz2 < tfar)
		tfar = tz2;
	if (tnear > tfar || tfar < 0)
		return false;

		return true;
}


