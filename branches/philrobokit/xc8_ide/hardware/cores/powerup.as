;	powerup routine
;	'yus

	processor	16F877A
	STATUS	equ	3
	PCLATH	equ	0Ah

	global	powerup,_board_init,start
	psect	powerup,class=CODE,delta=2
powerup
	call	_board_init

; Now lets jump to start 
;#if	defined(_PIC14)
	clrf	STATUS
	movlw	start>>8
	movwf	PCLATH
	goto	start & 0x7FF | (powerup & not 0x7FF)
;#endif
;#if	defined(_PIC14E)
;	clrf	STATUS
;	movlp	start>>8
;	goto	start & 0x7FF | (powerup & not 0x7FF)
;#endif
;#if	defined(_PIC16)
;	movlw	start>>8
;	movwf	PCLATH
;	movlw	start & 0xFF
;	movwf	PCL
;#endif
	end
