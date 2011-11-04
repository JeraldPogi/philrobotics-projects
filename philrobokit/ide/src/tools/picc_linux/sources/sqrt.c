#include	<math.h>
#include	<errno.h>
#include	<stdio.h>

#ifdef	__ARMC__
#define	SHORTLONG	long
#else
#define	SHORTLONG	short long
#endif
#define	tl (*(unsigned long *)&x)
#define	tm (*(unsigned SHORTLONG *)&x)
double
sqrt(double y)
{
	double x, z, q, og;
	unsigned char	i;


	if(y <= 0.0) {
		if(y < 0)
			errno = EDOM;
		return 0.0;
	}
	z = y;
#if sizeof(double) == 4
		tl = 0xBE6EC85El - *(unsigned long *)&y;
		tl >>= 1;
		*(unsigned long *)&z -= 0x800000l;	// divide by two.
#else // 24bit
		tm = 0xBE6EC8l - *(unsigned SHORTLONG *)&y;
		tm >>= 1;
		*(unsigned SHORTLONG *)&z -= 0x8000l;	// divide by two.
#endif
	i = 4;
	do {
		og = x;
		q = x*z;
		q *= x;
		q *= x;
		x *= 1.5;
		x -= q;
	} while(--i != 0);
	return x*y;
}
