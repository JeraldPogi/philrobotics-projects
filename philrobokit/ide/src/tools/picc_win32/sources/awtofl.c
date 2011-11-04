/*	Floating point routines.

	Copyright (C) 2006 HI-TECH Software
*/

// this is bigendian code right now. Need to parameterise it.

#include	"flarith.h"


// Convert signed int to double
#ifdef _OLDLIB
#define	f1_as_mant1	(*(unsigned long *)&f1)
double
__awtofl(signed int c)
{
	double	f1;
	
	if(c == 0)
		return 0.0;
	f1_as_mant1 = (signed long)c;
	if(c < 0)
		f1_as_mant1 = -f1_as_mant1;
	__flpack(&f1_as_mant1, 127+23);
	if(c < 0)
		f1 = -f1;
	return f1;
}
#else
double
__awtofl(signed int c)
{
	double	f1;
	char	sign;
	
	sign = 0;
	if(c < 0) {
		c = -c;
		sign++;
	}
	return __flpack((unsigned int)c, 127+23, sign);
}
#endif
