/*
 *	Stdio scanf
 */

#include	<stdio.h>
#include	<stdarg.h>

#ifndef	_HOSTED
extern int	_doscan(const char *, const char *, va_list);
#endif

scanf(const  char * fmt, ...)
{
	va_list	ap;

	va_start(ap, fmt);
#ifdef	_HOSTED
	return(vfscanf(stdin, fmt, ap));
#else
	return _doscan(0, fmt, ap);
#endif
}
