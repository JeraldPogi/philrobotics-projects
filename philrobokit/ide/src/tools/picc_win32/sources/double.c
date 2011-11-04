/*	Floating point routines.

	Copyright (C) 2006 HI-TECH Software
*/

#include	"flarith.h"


//	unpack the operand pointed to. Store the exponent into the location pointed to by exp,
//	and return the sign (zero is positive)

#ifdef _OLDLIB

unsigned char
__flunpack(unsigned long * arg, unsigned char * exp)
{
	unsigned char	sign;

	*exp = sign = *arg >> 23;
	if(sign == 0) {
		*arg = 0;
		return 0;
	}
	sign = 0;
	*arg |= 0x800000UL;
	if(*arg & 0x80000000UL)
		sign++;
	*arg &= 0xFFFFFFUL;
	return sign;
}
#endif

// normalize and pack the supplied argument into floating point format

#ifdef _OLDLIB 
void
__flpack(unsigned long * arg, unsigned char exp)
{
	if(exp == 0 || *arg == 0) {
		*arg = 0;
		return;
	}
	while(*arg & ~0x1FFFFFFUL) {
		exp++;
		*arg >>= 1;
	}
	while(*arg & ~0xFFFFFFUL) {
		exp++;
		(*arg)++;
		*arg >>= 1;
	}
	while(!(*arg & 0x800000UL)) {
		exp--;
		*arg <<= 1;
	}
	if(!(exp & 1))
		*arg &= ~0x800000UL;
	exp >>= 1;
	*arg |= (unsigned long)exp << 24;
}
#else
double
__flpack(unsigned long arg, unsigned char exp, unsigned char sign)
{
	if(exp == 0 || arg == 0)
		return 0.0;
	while(arg & ~0x1FFFFFFUL) {
		exp++;
		arg >>= 1;
	}
	while(arg & ~0xFFFFFFUL) {
		exp++;
		(arg)++;
		arg >>= 1;
	}
	while(!(arg & 0x800000UL)) {
		exp--;
		arg <<= 1;
	}
	if(!(exp & 1))
		arg &= ~0x800000UL;
	exp >>= 1;
	arg |= (unsigned long)exp << 24;
	if(sign)
		arg |= 0x80000000UL;
	return *(double *)&arg;
}
#endif
