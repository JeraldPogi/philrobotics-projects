#include	<ctype.h>

#ifndef isalnum

#if	(defined(_MPC_) && !defined(__DSPICC__)) || defined(_HTKC_) || defined(_8051) || defined(_HTFSC_) || defined(_PSOC_)
bit
isalnum(char c)
#else
int
isalnum(int c)
#endif
{
	return c <= '9' && c >= '0' || isalpha(c);
}

#endif
