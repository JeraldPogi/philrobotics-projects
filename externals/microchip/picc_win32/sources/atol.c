#include	<ctype.h>
#include	<stdlib.h>

long
atol(register const char * s)
{
	register char	c;
	register long	a;
	register unsigned char	sign;

skipws:
	c = *s;
	if(c == ' ' || c == '\t') {
		s++;
		goto skipws;
	}
	a = 0;
	sign = 0;
	if(c == '-') {
		sign++;
		s++;
	} else if(c == '+')
		s++;
conv:
	c = *s;
	if(isdigit(c)) {
		a = a*10L + (c - '0');
		s++;
		goto conv;
	}
	if(sign)
		return -a;
	return a;
}
