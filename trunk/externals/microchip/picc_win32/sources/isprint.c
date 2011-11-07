#include	<ctype.h>

#ifndef isprint

#if (defined(_MPC_) && !defined(__DSPICC__)) || defined(_HTKC_) || defined(_8051) || defined(_HTFSC_) || defined(_PSOC_)

bit
isprint(char c)
#else
int
isprint(int c)
#endif
{
	return c <= 126 && c >= ' ';
}

#endif
