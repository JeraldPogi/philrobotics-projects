/*	Floating point routines.

	Copyright (C) 2006 HI-TECH Software
*/

// this is bigendian code right now. Need to parameterise it.

#include	"flarith.h"

#define	f1_as_mant1	(*(unsigned long *)&f1)
#define	f2_as_mant2	(*(unsigned long *)&f2)

// floating addition
#ifdef _OLDLIB
double
__fladd(double f1, double f2)
{
	unsigned char	exp1, exp2, sign1, sign2, cntr;

	if(sizeof(f1_as_mant1) != 4)
		return 0;
	sign1 = __flunpack(&f1_as_mant1, &exp1);
	if(exp1 == 0)
		return f2;
	sign2 = __flunpack(&f2_as_mant2, &exp2);
	if(exp2 != 0) {
		cntr = 6;
		// determine the smaller number. 
		if(exp1 < exp2) {
			if((unsigned char)(exp2-exp1) > sizeof(f1)*8) {
				// return f2
				f1_as_mant1 = 0;
				exp1 = exp2;
				sign1 = sign2;
			} else {
				// f1 has the smaller exponent - we can shift f2_as_mant2 up to 6 bits
				// left, decrementing exp2.
				do {
					f2_as_mant2 <<= 1;
					exp2--;
				} while(exp2 != exp1 && --cntr != 0);
				while(exp1 != exp2) {
					f1_as_mant1 >>= 1;
					exp1++;
				}
			}
		} else if(exp1 != exp2) {
			if((unsigned char)(exp1-exp2) > sizeof(f1)*8)	// too small to worry about
				f2_as_mant2 = 0;
			else {
				// f2 has the smaller exponent - we can shift f1_as_mant1 up to 6 bits
				// left, decrementing exp2.
				do {
					f1_as_mant1 <<= 1;
					exp1--;
				} while(exp2 != exp1 && --cntr != 0);
				while(exp1 != exp2) {
					f2_as_mant2 >>= 1;
					exp2++;
				}
			}
		}
		if(sign1 != 0) { 
			// complement and add 1
			f1_as_mant1 ^= 0xFFFFFFFFUL;
			f1_as_mant1++;
		}
		if(sign2 != 0) {
			// complement and add 1
			f2_as_mant2 ^= 0xFFFFFFFFUL;
			f2_as_mant2++;
		}
		sign1 = 0;
		f1_as_mant1 += f2_as_mant2;
		if(f1_as_mant1 & 0x80000000UL) {
			f1_as_mant1 ^= 0xFFFFFFFFUL;
			f1_as_mant1++;
			sign1 = 1;
		}
	}
	__flpack(&f1_as_mant1, exp1);
	if(sign1)
		f1_as_mant1 ^= 0x80000000UL;
	return f1;
}
#else
double
__fladd(double f1, double f2)
{
	unsigned char	exp1, exp2, sign;

	exp1 = f1_as_mant1 >> 23;
	exp2 = f2_as_mant2 >> 23;
	if(exp1 == 0 || exp1 < exp2  && (unsigned char)(exp2-exp1) > sizeof(f1)*8)
		return f2;
	if(exp2 == 0 || exp1 > exp2  && (unsigned char)(exp1-exp2) > sizeof(f1)*8)
		return f1;
	sign = 6;
	if(f1_as_mant1 & 0x80000000L)
		sign |= 0x80;
	if(f2_as_mant2 & 0x80000000L)
		sign |= 0x40;
	f1_as_mant1 |= 0x800000UL;
	f1_as_mant1 &= 0xFFFFFFUL;
	f2_as_mant2 |= 0x800000UL;
	f2_as_mant2 &= 0xFFFFFFUL;
	// determine the smaller number. 
	if(exp1 < exp2) {
		// f1 has the smaller exponent - we can shift f2_as_mant2 up to 6 bits
		// left, decrementing exp2.
		do {
			f2_as_mant2 <<= 1;
			exp2--;
		} while(exp2 != exp1 && --sign & 7);
		while(exp1 != exp2) {
			f1_as_mant1 >>= 1;
			exp1++;
		}
	} else if(exp1 > exp2) {
		// f2 has the smaller exponent - we can shift f1_as_mant1 up to 6 bits
		// left, decrementing exp2.
		do {
			f1_as_mant1 <<= 1;
			exp1--;
		} while(exp2 != exp1 && --sign & 7);
		while(exp1 != exp2) {
			f2_as_mant2 >>= 1;
			exp2++;
		}
	}
	if(sign & 0x80) { 
		// complement and add 1
		f1_as_mant1 ^= 0xFFFFFFFFUL;
		f1_as_mant1++;
	}
	if(sign & 0x40) {
		// complement and add 1
		f2_as_mant2 ^= 0xFFFFFFFFUL;
		f2_as_mant2++;
	}
	sign = 0;
	f2_as_mant2 += f1_as_mant1;
	if(f2_as_mant2 & 0x80000000UL) {
		f2_as_mant2 ^= 0xFFFFFFFFUL;
		f2_as_mant2++;
		sign = 1;
	}
	return __flpack(f2_as_mant2, exp1, sign);
}
#endif
