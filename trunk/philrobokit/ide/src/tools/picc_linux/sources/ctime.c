/*
 *	Ctime for HI-TECH C - no daylight saving
 */

#include	<time.h>

const unsigned char	moninit[] = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};


static
put2d(char * cp, char  i, char  cl, char  ct)
{
	*cp = ct;
	*--cp = i%10 + '0';
	if(i /= 10)
		*--cp = i + '0';
	else
		*--cp = cl;
}

static
dylen(unsigned yr)
{
	if(yr%4 || (yr % 100) == 0 && ((yr+300)%400) != 0)
		return(365);
	return(366);
}

struct tm *
localtime(const time_t * tp)
{
	time_t	t;

	t = *tp - time_zone*60L;
	return gmtime(&t);
}

struct tm *
gmtime(const time_t * tp)
{
	union {
		time_t		t;
		struct {
			unsigned char	b, d;
		}	cs;
	}	tc;
	static struct tm	tim;

	tc.t = *tp;
	tim.tm_sec = tc.t % 60L;
	tc.t /= 60L;
	tim.tm_min = tc.t % 60L;
	tc.t /= 60L;
	tim.tm_hour = tc.t % 24L;
	tim.tm_mday = tc.t / 24L;
	tim.tm_wday = (tim.tm_mday + 4) % 7;
	tim.tm_year = 70;
	while(tim.tm_mday >= dylen(tim.tm_year)) {
		tim.tm_mday -= dylen(tim.tm_year);
		tim.tm_year++;
	}
	/* this value will be 2 for a leap year, 0 otherwise */
	tc.cs.b = (unsigned char)dylen(tim.tm_year) & 2;
	tim.tm_yday = tim.tm_mday;
	tim.tm_mon = 0;
	while(tim.tm_mday >= (tc.cs.d = moninit[tim.tm_mon] | tc.cs.b)) {
		tim.tm_mday -= tc.cs.d;
		tim.tm_mon++;
		tc.cs.b >>= 1;
	}
	tim.tm_mday++;
	return &tim;
}

char *
asctime(const struct tm * tim)
{
	register const char *	s;
	char *			cp;
	static char	buf[27];

	s = &"SunMonTueWedThuFriSat"[tim->tm_wday*3];
	cp = buf;
	*cp++ = *s++;
	*cp++ = *s++;
	*cp++ = *s;
	*cp++ = ' ';
	s = &"JanFebMarAprMayJunJulAugSepOctNovDec"[tim->tm_mon*3];
	*cp++ = *s++;
	*cp++ = *s++;
	*cp = *s;
	buf[7] = ' ';
	put2d(buf+10, tim->tm_mday, ' ', ' ');
	put2d(buf+13, tim->tm_hour, '0', ':');
	put2d(buf+16, tim->tm_min, '0', ':');
	put2d(buf+19, tim->tm_sec, '0', ' ');
	put2d(buf+22, tim->tm_year/100 + 19, ' ', 0);
	put2d(buf+24, tim->tm_year%100, '0', '\n');
	return(buf);
}

char *
ctime(const time_t * tp)
{
	return asctime(localtime(tp));
}
