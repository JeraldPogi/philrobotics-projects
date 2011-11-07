#include	<string.h>
#include	<ctype.h>

int
stricmp(register const char * s1, register const char * s2)
{
	register signed char	r;

	while(!(r = toupper(*s1) - toupper(*s2++)) && *s1++)
		continue;
	return r;
}
