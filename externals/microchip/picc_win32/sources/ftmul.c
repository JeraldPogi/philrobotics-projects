/*	Floating point routines.

	Copyright (C) 2006 HI-TECH Software
*/

// this is bigendian code right now. Need to parameterise it.

#include	"ftarith.h"

#define	f1_as_plier	(*(unsigned short long *)&f1)
#define	f2_as_plicand	(*(unsigned short long *)&f2)

// floating addition

#ifdef _OLDLIB
#define	f3_as_product		(*(unsigned short long *)&f3)
float
__ftmul(float f1, float f2)
{
	unsigned char	exp1, sign1, cntr;
	float	f3;
	
	f3_as_product = 0;
	sign1 = __ftunpack(&f1_as_plier, &exp1);
	sign1 ^= __ftunpack(&f2_as_plicand, &cntr);
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
	cntr = 9;
	do {
		if(f1_as_plier & 1)
			f3_as_product += f2_as_plicand;
		f1_as_plier >>= 1;
		f3_as_product >>= 1;
	} while(--cntr != 0);
	__ftpack(&f3_as_product, exp1);
	if(sign1)
		f3_as_product |= 0x800000;
	return f3;
}
#else
#define	exp2	sign
float
__ftmul(float f1, float f2)
{
	unsigned char	exp, sign, cntr;
	unsigned short long	f3_as_product;

	if((exp = f1_as_plier >> 15) == 0)
		return 0.0;
	if((exp2 = f2_as_plicand >> 15) == 0)
		return 0.0;
	exp += exp2-127-6;	// compute new exponent
	sign = f1_as_plier >> 16;
	sign ^= (unsigned char)(f2_as_plicand >> 16);
	sign &= 0x80;
	f1_as_plier |= 0x8000UL;
	//f1_as_plier &= 0xFFFFUL;		// not required
	f2_as_plicand |= 0x8000UL;
	f2_as_plicand &= 0xFFFFUL;
	f3_as_product = 0;
	cntr = 7;
	do {
		if(f1_as_plier & 1)
			f3_as_product += f2_as_plicand;
		f1_as_plier >>= 1;
		f2_as_plicand <<= 1;
	} while(--cntr != 0);
	cntr = 9;
	do {
		if(f1_as_plier & 1)
			f3_as_product += f2_as_plicand;
		f1_as_plier >>= 1;
		f3_as_product >>= 1;
	} while(--cntr != 0);
	return __ftpack(f3_as_product, exp, sign);
}
#endif
