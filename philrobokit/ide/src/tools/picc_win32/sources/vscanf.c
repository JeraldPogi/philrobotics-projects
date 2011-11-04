/*
 *	Stdio scanf
 */

#include	<stdio.h>
#include	<stdarg.h>

extern int	_doscan(const char *, const char *, va_list);

vscanf(const char * fmt, va_list ap)
{
#ifdef	_HOSTED
	return(vfscanf(stdin, fmt, ap));
#else
	return _doscan(0, fmt, ap);
#endif
}
