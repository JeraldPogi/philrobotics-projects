#include	<ctype.h>

char
#if (defined(_MPC_) && !defined(__DSPICC__)) || defined(_HTKC_) || defined(_8051) || defined(_HTFSC_) || defined(_PSOC_) || defined(__MSP430C__)
tolower(char c)
#else
tolower(int c)
#endif
{
	if((char)c <= 'Z' && (char)c >= 'A')
		c |= ('a' - 'A');
	return (char)c;
}
