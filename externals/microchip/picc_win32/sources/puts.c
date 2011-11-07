/*
 *	puts and fputs for HI-TECH C stdio
 */

#include	<stdio.h>
#include	<conio.h>

puts(const char * s)
{
	cputs(s);
	putch('\n');
}
