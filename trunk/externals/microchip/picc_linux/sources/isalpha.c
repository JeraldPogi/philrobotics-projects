#include	<ctype.h>

#ifndef isalpha

#if	(defined(_MPC_) && !defined(__DSPICC__)) || defined(_HTKC_) || defined(_8051) || defined(_HTFSC_) || defined(_PSOC_)
bit
isalpha(char c)
#else
int
isalpha(int c)
#endif
{
	return c <= 'z' && c >= 'a' || isupper(c);
}

#endif
