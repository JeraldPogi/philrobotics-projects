/*	Floating point routines.

	Copyright (C) 2006 HI-TECH Software
*/

// this is bigendian code right now. Need to parameterise it.

#include	"ftarith.h"

#define	mant1	(*(unsigned short long *)&f1)

// Negate a float

float
__ftneg(float f1)
{
	if(f1 != 0)
		mant1 ^= 0x800000UL;
	return f1;
}
