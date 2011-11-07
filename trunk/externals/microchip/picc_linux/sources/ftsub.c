/*	Floating point routines.

	Copyright (C) 2006 HI-TECH Software
*/

// this is bigendian code right now. Need to parameterise it.

#include	"ftarith.h"

#define	f1_as_mant1	(*(unsigned short long *)&f1)
#define	f2_as_mant2	(*(unsigned short long *)&f2)

// floating addition

float
__ftsub(float f2, float f1)
{
	f2_as_mant2 ^= 0x800000;
	return __ftadd(f1, f2);
}
