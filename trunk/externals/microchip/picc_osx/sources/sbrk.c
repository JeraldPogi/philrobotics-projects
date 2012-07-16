typedef unsigned        size_t;         /* type yielded by sizeof */

static void *		memtop;
extern char		_Lheap[];

#define	uint	unsigned int

void *
brk(void * val)
{
	return memtop = val;
}

#define	BUFFER	1024		/* min separation between top of heap and */
				/* bottom of stack. */

/*
 *	STACKTEST is used to determine whether the top of memory
 *	should be checked against the bottom of the stack when allocating
 *	memory with sbrk().  If the program is compiled with the stack
 *	at lower addresses than the bss psect, the stack collision test
 *	is not necessary and STACKTEST can be set to 0.  STACKTEST is
 *	automatically set to 0 when compiling medium model 8051 code as
 *	there is no external stack to worry about.
 *
 *	MEM_LIMIT is used to determine whether the block of memory allocated
 *	should be checked against a fixed memory limit.  This test is
 *	only used when STACK_TEST is set to 0.  For example, to prevent
 *	allocation of memory above $8000, set STACK_TEST to 0 and
 *	MEM_LIMIT to 0x8000
 *
 *	The third test (which is always performed) traps allocation of
 *	blocks which wrap around past the top of memory to low addresses.
 */

#if	defined(i8051) && !defined(LARGE_MODEL)
#define	STACK_TEST	0
#endif

#if	defined(m6805) || defined(_PIC18)
#define	STACK_TEST	0
extern char		_Lramtop[];
#define	MEM_LIMIT	_Lramtop
#endif

/*
 *	Alignment enforcement: word aligned processors expect
 *	even addresses to be returned.
 */

#if	defined(h8300)||defined(h8500)||defined(m68k)||defined(i8096)
#define	MEM_ALIGN	2
#endif

#if	defined(_ARM_)
#define	MEM_ALIGN	4
#endif

#if	defined(i8086)
#if	FLAT_MODEL
#define	MEM_ALIGN	4
#else
#define	MEM_ALIGN	2
#endif
#endif

#ifndef	STACK_TEST
#define	STACK_TEST	1
#endif


void *
sbrk(size_t size)
{
	char *	cp;

#ifdef	MEM_ALIGN
	size += MEM_ALIGN-1;
	size &= ~(MEM_ALIGN-1);
#endif
	if(!(cp = memtop))
		cp = memtop = _Lheap;
	if (size)	/* if not a status request */
		if (
#if STACK_TEST
		    (uint) memtop + size + BUFFER >= (uint) &cp ||
#endif
#ifdef MEM_LIMIT
		    (uint) memtop + size >= (uint) MEM_LIMIT ||
#endif
		    (uint) memtop + size <= (uint) memtop)
			 return (void *)-1;
	memtop = cp + size;
	return cp;
}
