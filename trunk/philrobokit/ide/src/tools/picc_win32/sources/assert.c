#include	<assert.h>
#include	<stdio.h>
#include	<stdlib.h>


void
_fassert(int line, const char * file, const char *exp)
{
	fprintf(stderr, "Assertion failed: %s line %d: \"%s\"\n", file, line, exp);
	abort();
}
