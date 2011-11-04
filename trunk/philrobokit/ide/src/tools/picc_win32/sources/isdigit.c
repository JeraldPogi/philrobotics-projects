#include	<ctype.h>

#ifndef isdigit

#if (defined(_MPC_) && !defined(__DSPICC__)) || defined(_HTKC_) || defined(_8051) || defined(_HTFSC_) || defined(_PSOC_)

bit
isdigit(char c)
#else
int
isdigit(int c)
#endif
{
	return c <= '9' && c >= '0';
}

#endif
