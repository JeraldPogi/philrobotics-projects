/*	Floating point routines.

	Copyright (C) 2006 HI-TECH Software
*/

// this is bigendian code right now. Need to parameterise it.

#include	"ftarith.h"

#define	f1_as_mant1	(*(unsigned short long *)&f1)

// Convert byte to float

float
__lbtoft(unsigned char c)
{
	float	f1;
	
	if(c == 0)
		return 0.0;
	f1_as_mant1 = c;
	__ftpack(&f1_as_mant1, 127+15);
	return f1;
}
