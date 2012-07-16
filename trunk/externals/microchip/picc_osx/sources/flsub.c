/*	Floating point routines.

	Copyright (C) 2006 HI-TECH Software
*/

// this is bigendian code right now. Need to parameterise it.

#include	"flarith.h"

#define	f1_as_mant1	(*(unsigned long *)&f1)
#define	f2_as_mant2	(*(unsigned long *)&f2)

// floating addition

double
__flsub(double f2, double f1)
{
	f2_as_mant2 ^= 0x80000000;
	return __fladd(f2, f1);
}
