/*
 *	calloc - alloc space for n items of size s, and clear it to nulls
 */

#include	<stdlib.h>

void *
calloc(size_t n, size_t s)
{
	unsigned long	sz;
	register char *cp, * xp;

	sz = n * (unsigned long) s;
	if (sz != (size_t) sz)
		return 0;
	xp = cp = malloc(n *= s);
	if(cp == 0)
		return 0;
	while(n--)
		*cp++ = 0;
	return xp;
}
