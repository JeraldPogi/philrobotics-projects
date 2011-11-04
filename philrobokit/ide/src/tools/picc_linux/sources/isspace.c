#include	<ctype.h>

#ifndef isspace

#if (defined(_MPC_) && !defined(__DSPICC__)) || defined(_HTKC_) || defined(_8051) || defined(_HTFSC_) || defined(_PSOC_)

bit
isspace(char c)
#else
int
isspace(int c)
#endif
{
	return c == ' ' || c <= 015 && c >= 011;
}

#endif
