#include	<math.h>
#include	<stdlib.h>

/*
 *	$Header$
 *
 *	$Log$
 *	Revision 1.1  1995/10/08 21:48:13  clyde
 *	Initial revision
 *
 */


#if	sizeof(double) != sizeof(long)
#error	This fbcd is suitable for 32 bit floating point only
#endif

unsigned
_fibcd(float val, register char * buf)
{
	register unsigned long	l;
	register unsigned char	cnt;

	cnt = 0;
	*--buf = 0;
	l = (unsigned long)val;
	do {
		*--buf = l % 10 + '0';
		cnt++;
	} while(l /= 10);
	return cnt;
}

float
_bcdif(register char *	buf)
{
	long	l;

	l = atol(buf);
	return (float)l;
}
