#include	<stdlib.h>

static	long	randx;
static	char	randf;

void
srand(unsigned x)
{
	randx = x;
	randf = 1;
}

rand(void)
{
	if(!randf)
		srand(1);
	return((int)((randx = randx*1103515245L + 12345)>>16) & 077777);
}
