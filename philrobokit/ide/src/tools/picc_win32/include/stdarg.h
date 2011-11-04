/*	Macros for accessing variable arguments */

#ifndef	_STDARG

#if defined(i8051) && defined(_OMNI_CODE_)
typedef void * va_list[1];
#define	va_start(ap, parmn)	*ap = __va_start()
#pragma inline(__va_start)
extern void *		__va_start(void);
#define	va_arg(ap, type)	(*(*(type **)ap)++)
#define	_STDARG

#elif	(defined(i8051) && !defined(EXTERNAL_STACK))
typedef near void * va_list[1];
#define	va_start(ap, parmn)	*ap = __va_start((void *)&parmn)
#pragma inline(__va_start)
extern near void *		__va_start(void *);
#define	va_arg(ap, type)	(*--*(type near **)(ap))
#define	_STDARG

#elif	defined(m6805)
typedef near void * va_list[1];
#define	va_start(ap, parmn)	*ap = __va_start()
#pragma inline(__va_start)
extern near void *		__va_start(void);
#define	va_arg(ap, type)	(*(*(type near **)ap)++)
#define	_STDARG

// all recent PRO compilers use the following
#elif	defined(_OMNI_CODE_)
typedef void * va_list[1];
#define	va_start(ap, parmn)	*ap = __va_start()
#pragma inline(__va_start)
extern void *		__va_start(void);
#define	va_arg(ap, type)	(*(type *)__va_arg((*(type **)ap), (type)0))
#pragma inline(__va_arg)
extern void *		__va_arg(void *, ...);
#define	_STDARG

#elif	defined(_MPC_) && !defined(__DSPICC__) && !defined(_OMNI_CODE_)
typedef void * va_list[1];
#define	va_start(ap, parmn)	*ap = __va_start()
#pragma inline(__va_start)
extern void *		__va_start(void);
#define	va_arg(ap, type)	(*(*(type **)ap)++)
#define	_STDARG
#elif	defined(_PSOC_) || defined(__PICC32__)
typedef void * va_list[1];
#define	va_start(ap, parmn)	*ap = __va_start()
#pragma inline(__va_start)
extern void *		__va_start(void);
#define	va_arg(ap, type)	(*(type *)__va_arg((*(type **)ap)))
#pragma inline(__va_arg)
extern void *		__va_arg(void *);
#define	_STDARG

#else
typedef void *	va_list[1];
#endif

#ifdef	i8086
#ifdef	FLAT_MODEL
#define	_STACK_ALIGN	4
#else
#define	_STACK_ALIGN	2
#endif
#endif

#if	defined(z80) || defined(_XA_) || defined(__MSP430C__)
#define	_STACK_ALIGN	2
#endif

#if	defined(__ARMC__)
#define _STACK_ALIGN	4
#define	va_start(ap, parmn)	*ap = (char *)&parmn + ((sizeof(parmn)+_STACK_ALIGN-1)&~(_STACK_ALIGN-1))
#define	va_arg(ap, type)	(*(type *)(* (int **)ap )++)
#define	_STDARG
#else

#ifdef	_STACK_ALIGN	
#define	va_start(ap, parmn)	*ap = (char *)&parmn + ((sizeof(parmn)+_STACK_ALIGN-1)&~(_STACK_ALIGN-1))
#define	va_arg(ap, type)	(*(*(type **)ap)++)
#define	_STDARG
#endif
#endif

#if	defined(__DSPICC__)
#define _STDARG
#define	va_start(ap, parmn)	*ap = (char *)&parmn
#define	va_arg(ap, type)	(*--(*(type **)ap))
#endif


#ifndef	_STDARG
#define	va_start(ap, parmn)	(*ap = (void *)((&parmn)+1))
#define	va_arg(ap, type)	(*(*(type **)ap)++)
#define	_STDARG
#endif

#define	va_end(ap)


#endif	/* STDARG */
