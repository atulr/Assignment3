#include "trax.hpp"
#include "main.h"

// Only include stdio for printf on the non-trax version
#if TRAX==0
#include <stdio.h>
#endif

int main()
{
	trax_setup();
	int xres = loadi( 0, 1 );
	int yres = loadi( 0, 4 );
	int start_fb = GetFrameBuffer();
	
	float t = 0.f;
	
	bool flag = false; //this is kinda lame
	
	float ulen, aspect_ratio;
	ulen = 0.194f;
	aspect_ratio = 1.f;

	Color color(1.0f, .3f, .2f);
	Color background(0.f, 0.f, 0.f);
	Color result;

	// Uncomment this to get the first output
//	Vector E(4.f, -15.f, -2.f);

	Vector E(0.5f, 0.5f, 0.5f);

	Vector Up(0.f, 0.f, 1.f);
	Vector Lookat(0.f, 0.f, 0.f);
	Box box(Vector(-1.f, -1.f, -1.f), Vector(1.f, 1.f, 1.f));
	
	Image image(xres, yres, start_fb);
	
	PinHoleCamera camera(E, Lookat, Up, aspect_ratio, ulen);
	
	Ray ray;
	for(int pix = atomicinc(0); pix < xres*yres; pix = atomicinc(0)){
		int i = pix / xres;
		int j = pix % xres;
	
		float x = (float)(2.0f * (j - xres/2.0f + 0.5f)/xres);
		float y = (float)(2.0f * (i - yres/2.0f + 0.5f)/yres);
		
		camera.make_ray(ray, x, y);
		result = background;
		if (box.intersects(ray))
			result = color;
		image.set(i, j, result);	
	}
	trax_cleanup();
}
