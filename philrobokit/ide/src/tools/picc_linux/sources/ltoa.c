#include	<stdlib.h>
	
char *
ltoa(char * buf, long val, int base) 
{
	char *	cp = buf;

	if(val < 0) {
		*buf++ = '-';
		val = -val;
	}
	ultoa(buf, val, base);
	return cp;
}
char *
ultoa(char * buf, unsigned long val, int base)
{
	unsigned	long	v;
	char		c;

	v = val;
	do {
		v /= base;
		buf++;
	} while(v != 0);
	*buf-- = 0;
	do {
		c = val % base;
		val /= base;
		if(c >= 10)
			c += 'A'-'0'-10;
		c += '0';
		*buf-- = c;
	} while(val != 0);
	return buf;
}
