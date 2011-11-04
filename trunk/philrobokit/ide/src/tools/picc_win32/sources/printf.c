#include        <stdio.h>


/*
int
printf(const char *, ...)
{
#endif
*/
#asm
/*
	global  _sprintf,?_sprintf,?a_sprintf,?_printf,?a_printf
?_printf        equ     ?_sprintf
?a_printf       equ     ?a_sprintf
	movlw   0
	ljmp    _sprintf
	
*/
	FNCALL  _printf,_sprintf
	global  ?_printf
?_printf        equ     ?_sprintf
	global  ?_sprintf
	global  ?a_printf
?a_printf       equ     ?a_sprintf
	global  ?a_sprintf
	global  _printf
	global  _sprintf
#ifdef  _PIC12
	psect   text99,local,class=ENTRY,delta=2
#else
	psect   text99,local,class=CODE,delta=2
#endif

	psect   text99
_printf ;#
	;#
	;#
#ifdef  _PIC16
;pclath equ     3
;pcl    equ     2

	movlw   _sprintf >> 8
	movwf   pclath
	movlw   _sprintf & 0xFF
	movwf   btemp
; 'where' pointer is far and so cannot be passed in W
; make room for the extra parameter
	movf	((?_sprintf+1) & 0xff),w
	movwf	((?_sprintf+3) & 0xff)
	movf	((?_sprintf+2) & 0xff),w
	movwf	((?_sprintf+4) & 0xff)
; send NULL to indicate to sprintf that output is not
; directed to an array
	clrf    (?_sprintf+1) & 0xff
	clrf    (?_sprintf+2) & 0xff
	movfp   btemp,pcl

	psect   temp,global,class=BANK0,space=1,ovrld
btemp   ds      1

#else
	movlw   0       ;#
	ljmp    _sprintf        ;#
#endif
#endasm
	
/*
}
*/

