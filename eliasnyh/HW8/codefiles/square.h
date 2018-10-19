
// Time spent on homework: 1.5 hours
// Collaborators: None

#ifndef SQUARE_H
#define SQUARE_H

#include "shape.h"
#include "rectangle.h"
#include <iostream>

using namespace std;

class square : public rectangle {
	public:
	square(double base = 0., double height = 0.);
	~square();
	void setSide(double newSide) {
		base_ = newSide;
		height_ = newSide;
	}
	double getSide() { return base_; }
	double circumference() { return 4*base_; }
	double area() { return base_*base_; }
	
};

#endif
