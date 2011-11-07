#include	<ctype.h>

#ifndef isgraph

#if (defined(_MPC_) && !defined(__DSPICC__)) || defined(_HTKC_) || defined(_8051) || defined(_HTFSC_) || defined(_PSOC_)

bit
isgraph(char c)
#else
int
isgraph(int c)
#endif
{
	return c <= 126 && c > ' ';
}

#endif
