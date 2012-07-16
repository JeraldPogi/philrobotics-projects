#include	<string.h>

size_t
strlen(const char * s)
{
	register const char *	cp;

	cp = s;
	while(*cp++)
		continue;
	return cp-s-1;
}

