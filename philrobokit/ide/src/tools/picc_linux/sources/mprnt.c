#include	<stdio.h>
#include	<stdlib.h>
#include	<string.h>


/*
 *	doprnt for PIC. Supports:
 *
 *	%d	decimal
 *	%u	unsigned
 *	%o	octal
 *	%x	hex (lower case)
 *	%X	hex (upper case)
 *	%s	string
 *	%c	character
 *
 *	On the 14 bit PICS only:
 *	Field widths and precision are supported (precision is significant
 *	only for %s), including variable width, e.g. %*s
 *
 *	Optionally (on 14 bitters)
 *
 *	%ld	long decimal
 *	%lx	long hex (lower case)
 *	%lX	long hex (upper case)
 *	%lo	long octal
 *
 *	Even more optionally:
 *
 *	%f	float (really double) - field with and precision supported
 *	%e	float - scientific format
 *
 */

#ifdef	__FLOAT
#define	__LONG	1	/* float requires long */
#endif

#ifdef	__LONG
#define	INT	long
#else
#define	INT	short
#endif

#define	pputch(c)	(++retval, where ? (void)(*where++=(c)):putch(c))

unsigned char
#ifdef _PIC16
sprintf(far char * where, const char * f, ...)
#else
sprintf(char * where, const char * f, ...)
#endif
{
	char		c;
	va_list		ap;
	unsigned char	sign;
	unsigned char	prec;
	unsigned INT	i;
	unsigned char	retval;
#ifdef	__FLOAT
	unsigned long	frac;
	unsigned long	over;
	unsigned char	digs;
#endif
#ifndef	_PIC12
	signed char	width;
#else
#define	width	sign
#endif
	
	retval = 0;
	va_start(ap, f);
	while(c	= *f++)
		if(c !=	'%')
			pputch(c);
		else {
			prec = 255;
#ifndef	_PIC12
			width = 0;
#endif
			sign = 0;
loop:
			switch(c = *f++) {

			case 0:
				if(where)
					*where = 0;
				return retval;
#ifndef	_PIC12
			case '*':
				width = va_arg(ap, int);
				goto loop;
#if	__LONG
			case 'l':
				sign |= 0x80;
				goto loop;
#endif
#endif
				


			case 'd':
				sign++;
				goto decimal;
			case 'x':
			case 'X':
				prec += 8;
			case 'o':
				prec -= 2;
			case 'u':
decimal:
				{
					unsigned INT	j;

#if	__LONG
					if(sign & 0x80)
						i = va_arg(ap, unsigned INT);
					else
#endif
						i = va_arg(ap, int);
					if(sign & 1) {
					       if((INT)i < 0) {
							i = -i;
#ifndef	_PIC12
							width--;
#endif
					       } else
						       sign = 0;
					} else {
#if	__LONG
						if(!(sign & 0x80))
							i = (unsigned short)i;
#endif
						sign = 0;
					}
					prec -= 255-10;
putint:
					c = (unsigned INT)i % prec;
					*(unsigned INT *)&i /= prec;
					j = 1;
					while(j <= i) {
						j *= prec;
#ifndef	_PIC12
						width--;
#endif
					}
#ifndef	_PIC12
					while(--width > 0)
#if	__FLOAT
						pputch(sign & 4 ? '0' : ' ');
#else
						pputch(' ');
#endif
#endif
					if(sign & 1)
						pputch('-');
					while(j /= prec) {
						width = (i/j)%prec;
						if(width > 9)
							width += 'A'-'0'-10;
						pputch(width+'0');
					}
					if(c > 9)
						c += 'A'-'0'-10;
					pputch(c+'0');
#if	__FLOAT
					if(sign & 2) {
						pputch('.');
						i = frac;
						sign = 4;
						width = digs;
						prec = 10;
						goto putint;
					}
#endif
				}
				break;
#if	__FLOAT
			case 'f':
				{
					double	flt;
					
					flt = va_arg(ap, double);
					if(prec > 6)
						prec = 6;
					digs = prec;
					sign = 0;
					if(flt < 0) {
						sign = 1;
						flt = -flt;
						width--;
					}
					if(digs == 0) {
						i = (unsigned long)(flt+0.5);
						prec = 10;
						goto putint;	/* put as integer - no dot */
					}
					width -= digs+1;
					i = (unsigned long)flt;
					flt -= (double)i;
					sign |= 2;
					over = 1;
					do {
						flt *= 10.0;
						over *= 10;
					}
					while(--prec);
					flt += 0.5;
					frac = (unsigned long)flt;
					/* adjust whole if frac pt. overflows */
					if(frac >= over) {
						frac -= over;
						i++;
					}
					prec = 10;
					goto putint;
				}
#endif

				
			case 'c':
#ifndef	_PIC12
				while(width > 1) {
					pputch(' ');
					width--;
				}
#endif
				c = va_arg(ap, int);
				goto default_char;

			case 's':
				{
					const char *	x;

					x = va_arg(ap, const char *);
#ifndef	_PIC12
					c = 0;
					while(x[c])
						c++;
					if(c < prec)
						prec = c;
					while(width > prec) {
						pputch(' ');
						width--;
					}
					while(prec--) {
						c = *x++;
						pputch(c);
					}
#else
					while(c = *x++)
						pputch(c);
#endif
					continue;
				}

#ifndef	_PIC12
			case '.':
				if(*f == '*') {
					prec = va_arg(ap, int);
					f++;
				} else {
					prec = *f++ - '0';
					c = *f;
					if(c >= '0' && c <= '9') {
						prec = prec*10 + c - '0';
						f++;
					}
				}
				goto loop;

			default:
				if(c >= '0' && c <= '9') {
					width = width * 10 + c - '0';
					goto loop;
				}
#else
			default:
#endif
default_char:
				pputch(c);
				continue;

			}

		}
	if(where)
		*where = 0;
	return retval;
}
