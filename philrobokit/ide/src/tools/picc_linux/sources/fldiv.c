/*	Floating point routines.

	Copyright (C) 2006 HI-TECH Software
*/

// this is bigendian code right now. Need to parameterise it.

#include	"flarith.h"

#define	f1_as_dividend	(*(unsigned long *)&f1)
#define	f2_as_divisor	(*(unsigned long *)&f2)
#define	f3_as_quot	(*(unsigned long *)&f3)

// floating addition
#ifdef _OLDLIB
#define	cntr		sign2
double
__fldiv(double f2, double f1)
{
	unsigned char	exp1, exp2, sign1, sign2;
	double	f3;
	
	f3_as_quot = 0;
	sign1 = __flunpack(&f1_as_dividend, &exp1);
	if(exp1 == 0)
		return f3;
	sign2 = __flunpack(&f2_as_divisor, &exp2);
	if(exp2 == 0)
		return f3;
	exp1 -= exp2-127+8;	// compute new exponent
	sign1 ^= sign2;
	cntr = 24+8;
	do {
		f3_as_quot <<= 1;
		if(f1_as_dividend >= f2_as_divisor) {
			f1_as_dividend -= f2_as_divisor;
			f3_as_quot |= 1;
		}
		f1_as_dividend <<= 1;
	} while(--cntr != 0);
	__flpack(&f3_as_quot, exp1);
	if(sign1)
		f3_as_quot |= 0x80000000;
	return f3;
}
#else
#define	exp2	sign
double
__fldiv(double f2, double f1)
{
	unsigned char	exp, sign, cntr;
	double	f3;
	
	// unpack the operands
	if((exp = f1_as_dividend >> 23) == 0)
		return 0.0;
	if((exp2 = f2_as_divisor >> 23) == 0)
		return 0.0;
	exp -= exp2-127+8;	// compute new exponent
	sign = f1_as_dividend >> 24;
	sign ^= (unsigned char)(f2_as_divisor >> 24);
	sign &= 0x80;
	f1_as_dividend |= 0x800000UL;
	f1_as_dividend &= 0xFFFFFFUL;
	f2_as_divisor |= 0x800000UL;
	f2_as_divisor &= 0xFFFFFFUL;
	cntr = 24+8;
	do {
		f3_as_quot <<= 1;
		if(f1_as_dividend >= f2_as_divisor) {
			f1_as_dividend -= f2_as_divisor;
			f3_as_quot |= 1;
		}
		f1_as_dividend <<= 1;
	} while(--cntr != 0);
	return __flpack(f3_as_quot, exp, sign);
}
#endif
