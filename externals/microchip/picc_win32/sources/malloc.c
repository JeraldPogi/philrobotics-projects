#include	<stdlib.h>
#include	<sys.h>
#include	<string.h>

#if	LARGE_DATA && !i8051
/* These routines become nearmalloc/nearfree/nearrealloc */
#ifdef	nearmalloc
#undef	nearmalloc
#endif
#define	NEAR		near
#define	MALLOC		nearmalloc
#define	FREE		nearfree
#define	REALLOC		nearrealloc
#define	SBRK		nearsbrk
typedef	NEAR void *	VOIDPTR;

#else	/* !SMALL_DATA */
/* These routines become standard malloc/free/realloc */
#define	NEAR
#define	MALLOC		malloc
#define	FREE		free
#define	REALLOC		realloc
#define	SBRK		sbrk
typedef void *		VOIDPTR;

#endif	/* SMALL_DATA */

#ifdef debug
#define ASSERT(p) if(!(p))botch("p");else
botch(char *s)
{
	printf("assertion botched: %s\n",s);
	abort();
}
#else
#define ASSERT(p)
#endif

/*
 *	C storage allocator for Z80 and other 8 bit machines
*/

#if	i8086 || m68k
#define	BLOCK	(256*sizeof(struct store))
#else
#define	BLOCK	(85*sizeof(struct store))
#endif

#define BUSY 1
#define	testbusy(p)	((p).flag & BUSY)
#define	sbusy(p)	(p).flag |= BUSY
#define	cbusy(p)	(p).flag &= ~BUSY

struct store
{
	NEAR struct store *	ptr;
	char		flag;
};

static NEAR struct store	allocs[2];	/*initial arena*/
static NEAR struct store *	allocp;		/*search ptr*/
static NEAR struct store *	alloct;		/*arena top*/
static NEAR struct store	allocx;		/* for realloc */

VOIDPTR
MALLOC(size_t nw)
{
	register NEAR struct store *	p, * q;
	unsigned 			temp;

	if(allocs[0].ptr==(NEAR struct store *)0) {	/*first time*/
		alloct = allocs[0].ptr = &allocs[1];
		allocp = allocs[1].ptr = &allocs[0];
		sbusy(allocs[0]);
		sbusy(allocs[1]);
	}
	nw = ((nw - 1 + sizeof(struct store)*2)/sizeof(struct store)) * sizeof(struct store);
	ASSERT(allocp>=allocs && allocp<=alloct);
	ASSERT(allock());
	for(p=allocp; ; ) {
		for(temp=0; ; ) {
			if(!testbusy(*p)) {
				while(!testbusy(*(q=p->ptr))) {
					ASSERT(q>p&&q<alloct);
					p->ptr = q->ptr;
				}
				if(q>=(NEAR struct store *)((NEAR char *)p+nw) && (NEAR struct store *)((NEAR char *)p+nw)>=p)
					goto found;
			}
			q = p;
			p = p->ptr;
			if(p>q)
				ASSERT(p<=alloct);
			else if(q!=alloct || p!=allocs) {
				ASSERT(q==alloct&&p==allocs);
				return((VOIDPTR)0);
			} else if(++temp>1)
				break;
		}
		if(nw > BLOCK/2 && nw < BLOCK)
			temp = nw*2+sizeof(struct store);
		else if(nw >= 65535 - BLOCK - sizeof(struct store))
			temp = nw;
		else
			temp = ((nw+sizeof(struct store)-1+BLOCK)/BLOCK)*BLOCK;
		q = (NEAR struct store *)SBRK(temp);
		if(q == (VOIDPTR)-1) {
			return((VOIDPTR)0);
		}
		ASSERT(q>alloct);
		alloct->ptr = q;
		if(q!=alloct+1)
			sbusy(*alloct);
		else
			cbusy(*alloct);
		alloct = q->ptr = (NEAR struct store *)((NEAR char *)q+temp-sizeof(struct store));
		alloct->ptr = allocs;
		sbusy(*alloct);
		cbusy(*q);
	}
found:
	allocp = (NEAR struct store *)((NEAR char *)p + nw);
	ASSERT(allocp<=alloct);
	if(q>allocp) {
		allocx = *allocp;
		allocp->ptr = p->ptr;
		allocp->flag = 0;
	}
	p->ptr = allocp;
	sbusy(*p);
	return p+1;
}

/*	freeing strategy tuned for LIFO allocation
*/

void
FREE(VOIDPTR ap)
{
	register NEAR struct store *p;

	p = ((NEAR struct store *)ap)-1;
	ASSERT(p>allocs[1].ptr&&p<=alloct);
	ASSERT(allock());
	allocp = p;
	ASSERT(testbusy(*p));
	cbusy(*p);
	ASSERT(p->ptr > allocp && p->ptr <= alloct);
}

VOIDPTR
REALLOC(VOIDPTR p, size_t nbytes)
{
	register NEAR struct store *	xp, * q;
	size_t			ons;
	size_t			ns;

	xp = (NEAR struct store *)p;
	ns = (nbytes + sizeof(struct store) - 1)/sizeof(struct store);
	ons = xp[-1].ptr - xp;
	if(testbusy(xp[-1]))
		free(xp);
	if(!(q = (NEAR struct store *)MALLOC(nbytes)) || q == xp)
		return q;
	ns = q[-1].ptr - q;
	if(ons > ns)
		ons = ns;
	memcpy((char *)q, (char *)xp, ons * sizeof(struct store));
	if(q < xp && q+ns > xp)
		q[q+ns-xp] = allocx;
	return q;
}


#ifdef	debug
showall()
{
	NEAR struct store *p, *q;
	int i, used = 0, free = 0;

	for(p = &allocs[0] ; p && p!= alloct ; p = q) {
		q = p->ptr;
		printf("%4.4x %5d %s\n", p, i = (unsigned)q - (unsigned)p,
			testbusy(*p) ? "BUSY" : "FREE");
		if(testbusy(*p))
			used += i;
		else
			free += i;
	}
	printf("%d used, %d free, %4.4x end\n", used, free, alloct);
}
#endif
