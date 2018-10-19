#ifndef CIRCLE_H
#define CIRCLE_H

#include "shape.h"
#include <iostream>
using namespace std;

class circle : public shape {

	public:
	circle(double base = 0., double height = 0.);
	~circle();
	void setRadius(double newRadius) { 
		base_ = newRadius;
		height_ = newRadius;
	}
	double getRadius() { return base_; }
	double area() { return 3.14*base_*base_; }
	double circumference() { return 6.283*base_; }
};
#endif
