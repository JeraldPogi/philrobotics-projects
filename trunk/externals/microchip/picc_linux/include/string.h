/*	String functions */

#ifndef	_STDDEF
typedef	int		ptrdiff_t;	/* result type of pointer difference */
typedef	unsigned	size_t;		/* type yielded by sizeof */
typedef unsigned short	wchar_t;	/* wide char type */
#define	_STDDEF
#define	offsetof(ty, mem)	((int)&(((ty *)0)->mem))
extern int	errno;			/* system error number */

#endif	/* _STDDEF */

#ifndef	NULL
#define	NULL	(0)
#endif

#ifdef _PIC16
extern far void *	memcpy(far void *, const void *, size_t);
extern far void *	memmove(far void *, const void *, size_t);
extern far void *	memset(far void *, int, size_t);
#else  /* _PIC16 */
extern void *	memcpy(void *, const void *, size_t);
extern void *	memmove(void *, const void *, size_t);
extern void *	memset(void *, int, size_t);
#endif /* _PIC16 */

#ifdef _PIC16
extern far char *	strcat(far char *, const char *);
extern far char *	strcpy(far char *, const char *);
extern far char *	strncat(far char *, const char *, size_t);
extern far char *	strncpy(far char *, const char *, size_t);
extern far char *	strdup(const char *);
extern far char *	strtok(far char *, const char *);
#else  /* _PIC16 */
extern char *	strcat(char *, const char *);
extern char *	strcpy(char *, const char *);
extern char *	strncat(char *, const char *, size_t);
extern char *	strncpy(char *, const char *, size_t);
extern char *	strdup(const char *);
extern char *	strtok(char *, const char *);
#endif /* _PIC16 */

extern int	memcmp(const void *, const void *, size_t);
extern int	strcmp(const char *, const char *);
extern int	stricmp(const char *, const char *);
extern int	strncmp(const char *, const char *, size_t);
extern int	strnicmp(const char *, const char *, size_t);
extern  void *	memchr(const void *, int, size_t);
extern size_t	strcspn(const char *, const char *);
extern  char *	strpbrk(const char *, const char *);
extern size_t	strspn(const char *, const char *);
extern  char *	strstr(const char *, const char *);
extern  char *	stristr(const char *, const char *);
extern char *	strerror(int);
extern size_t	strlen(const char *);
extern  char *	strchr(const char *, int);
extern  char *	strichr(const char *, int);
extern  char *	strrchr(const char *, int);
extern  char *	strrichr(const char *, int);

#ifdef	z80
#pragma	inline(memcpy)
#pragma	inline(memset)
#pragma	inline(strcpy)
#pragma	inline(strlen)
#pragma	inline(strcmp)
#endif

#ifdef	_PSOC_
// these functions can handle both RAM and ROM pointers if required
#define	cstrlen	strlen
#define	cstrcat	strcat
#define	cstrcmp	strcmp
#define	cstrcpy	strcpy
#define	cstrcpy	strcpy
#define	cstrncpy	strncpy
#endif
