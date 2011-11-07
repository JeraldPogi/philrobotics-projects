/*	Floating point routines.

	Copyright (C) 2006 HI-TECH Software
*/
// since we use tests on the size of operands, suppress the warnings that
// would be generated
#pragma warning disable 757
#ifdef _OLDLIB
extern unsigned char __ftunpack(unsigned short long * arg, unsigned char * exp);
extern void  __ftpack(unsigned short long * arg, unsigned char exp);
#else
extern float  __ftpack(unsigned short long arg, unsigned char exp, unsigned char sign);
#endif
extern float __ftadd(float, float);
