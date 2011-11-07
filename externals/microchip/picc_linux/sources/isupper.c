#include	<ctype.h>

#ifndef isupper

#if (defined(_MPC_) && !defined(__DSPICC__)) || defined(_HTKC_) || defined(_8051) || defined(_HTFSC_) || defined(_PSOC_)

bit
isupper(char c)
#else
int
isupper(int c)
#endif
{
	return c <= 'Z' && c >='A';
}
#endif
