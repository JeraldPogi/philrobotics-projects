#include	<ctype.h>

#ifndef isxdigit

#if (defined(_MPC_) && !defined(__DSPICC__)) || defined(_HTKC_) || defined(_8051) || defined(_HTFSC_) || defined(_PSOC_)

bit
isxdigit(char c)
#else
int
isxdigit(int c)
#endif
{
	return c <= 'f' && c >= 'a' || c <= 'F' && c >= 'A' || isdigit(c);
}

#endif
