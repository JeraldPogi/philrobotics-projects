#include	<string.h>
#include	<stdlib.h>

#ifdef _PIC16
far char *
strdup(register const char * s)
#else /* _PIC16 */
char *
strdup(register const char * s)
#endif /* _PIC16 */
{

#ifdef _PIC16
	register far char *	cp;
#else /* _PIC16 */
	register char *	cp;
#endif /* _PIC16 */

	if(cp = malloc(strlen(s)+1))
		strcpy(cp, s);
	return cp;
}
