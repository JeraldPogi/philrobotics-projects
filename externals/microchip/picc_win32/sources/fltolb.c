/*	Floating point routines.

	Copyright (C) 2006 HI-TECH Software
*/

// this is bigendian code right now. Need to parameterise it.

#include	"flarith.h"

#define	f1_as_mant1	(*(unsigned long *)&f1)

// Convert byte to float

float
__lbtofl(unsigned char c)
{
	float	f1;
	
	if(c == 0)
		return 0.0;
	f1_as_mant1 = c;
	__flpack(&f1_as_mant1, 127+23);
	return f1;
}
