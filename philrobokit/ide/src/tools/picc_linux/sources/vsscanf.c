/*
 *	Stdio sscanf
 */

#include	<stdio.h>
#include	<string.h>
#include	<stdarg.h>

#ifndef	_HOSTED
extern int	_doscan(const char *, const char *, va_list);
#endif

vsscanf(const char * str, const char * fmt, va_list ap)
{
#ifdef	_HOSTED
	FILE	file;

	file._base = file._ptr = (char *)str;
	file._size = file._cnt = strlen(str);
	file._flag = _IOBINARY|_IOREAD|_IOSTRG;
	return vfscanf(&file, fmt, ap);
#else
	return _doscan(str, fmt, ap);
#endif
}
