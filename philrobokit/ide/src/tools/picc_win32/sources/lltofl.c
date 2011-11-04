/*	Floating point routines.

	Copyright (C) 2006 HI-TECH Software
*/

// this is bigendian code right now. Need to parameterise it.

#include	"flarith.h"


// Convert unsigned long int to float

#ifdef _OLDLIB
#define	f1_as_mant1	(*(unsigned long *)&f1)
double
__lltofl(unsigned long int c)
{
	double	f1;
	unsigned char	exp;
	
	if(c == 0)
		return 0.0;
	exp = 127+23;
	f1_as_mant1 = c;
	__flpack(&f1_as_mant1, exp);
	return f1;
}
#else
double
__lltofl(unsigned long int c)
{
	return __flpack(c, 127+23, 0);
}
#endif
