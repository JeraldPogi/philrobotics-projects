#if	defined(m6805) || defined(i8051) && defined(SMALL_MODEL)
#if	!defined(m6805)
idata
#endif
char	_scanf_buf_[64];
#else
char	_scanf_buf_[256];
#endif
