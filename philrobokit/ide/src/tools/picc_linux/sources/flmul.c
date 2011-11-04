/*	Floating point routines.

	Copyright (C) 2006 HI-TECH Software
*/

// this is bigendian code right now. Need to parameterise it.

#include	"flarith.h"

#define	f1_as_plier	(*(unsigned long *)&f1)
#define	f2_as_plicand	(*(unsigned long *)&f2)

// floating addition
#ifdef _OLDLIB
#define	f3_as_product		(*(unsigned long *)&f3)
double
__flmul(double f1, double f2)
{
	unsigned char	exp1, sign1, cntr;
	double	f3;
	
	f3_as_product = 0;
	sign1 = __flunpack(&f1_as_plier, &exp1);
	sign1 ^= __flunpack(&f2_as_plicand, &cntr);
	if(cntr == 0 || exp1 == 0)
		return f3;
	exp1 += cntr-127-6;	// compute new exponent
	cntr = 7;
	do {
		if(f1_as_plier & 1)
			f3_as_product += f2_as_plicand;
		f1_as_plier >>= 1;
		f2_as_plicand <<= 1;
	} while(--cntr != 0);
	cntr = 17;
	do {
		if(f1_as_plier & 1)
			f3_as_product += f2_as_plicand;
		f1_as_plier >>= 1;
		f3_as_product >>= 1;
	} while(--cntr != 0);
	__flpack(&f3_as_product, exp1);
	if(sign1)
		f3_as_product |= 0x80000000;
	return f3;
}
#else
#define	exp2	sign
double
__flmul(double f1, double f2)
{
	unsigned char	exp, sign, cntr;
	unsigned long	f3_as_product;
	
	if((exp = f1_as_plier >> 23) == 0)
		return 0.0;
	if((exp2 = f2_as_plicand >> 23) == 0)
		return 0.0;
	exp += exp2-127-6;	// compute new exponent
	sign = f1_as_plier >> 24;
	sign ^= (unsigned char)(f2_as_plicand >> 24);
	sign &= 0x80;
	f1_as_plier |= 0x800000UL;
	//f1_as_plier &= 0xFFFFFFUL;		// not required
	f2_as_plicand |= 0x800000UL;
	f2_as_plicand &= 0xFFFFFFUL;
	f3_as_product = 0;
	cntr = 7;
	do {
		if(f1_as_plier & 1)
			f3_as_product += f2_as_plicand;
		f1_as_plier >>= 1;
		f2_as_plicand <<= 1;
	} while(--cntr != 0);
	cntr = 17;
	do {
		if(f1_as_plier & 1)
			f3_as_product += f2_as_plicand;
		f1_as_plier >>= 1;
		f3_as_product >>= 1;
	} while(--cntr != 0);
	return __flpack(f3_as_product, exp, sign);
}
#endif
