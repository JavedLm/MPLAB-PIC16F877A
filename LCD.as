opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 7503"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
	FNCALL	_main,_lcd_init
	FNCALL	_main,_lcd_data
	FNCALL	_lcd_init,_lcd_cmd
	FNROOT	_main
	global	main@F1090
psect	idataCOMMON,class=CODE,space=0,delta=2
global __pidataCOMMON
__pidataCOMMON:
	file	"C:\Users\Javed\Documents\MPLAB PIC16F877A PROGRAMS\LCD.c"
	line	14

;initializer for main@F1090
	retlw	04Ah
	retlw	041h
	retlw	056h
	retlw	045h
	retlw	044h
	global	_PORTB
_PORTB	set	6
	global	_RD0
_RD0	set	64
	global	_RD1
_RD1	set	65
	global	_RD2
_RD2	set	66
	global	_TRISB
_TRISB	set	134
	global	_TRISD
_TRISD	set	136
	file	"LCD.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataCOMMON,class=COMMON,space=1
global __pdataCOMMON
__pdataCOMMON:
	file	"C:\Users\Javed\Documents\MPLAB PIC16F877A PROGRAMS\LCD.c"
main@F1090:
       ds      5

; Initialize objects allocated to COMMON
	global __pidataCOMMON
psect cinit,class=CODE,delta=2
	fcall	__pidataCOMMON+0		;fetch initializer
	movwf	__pdataCOMMON+0&07fh		
	fcall	__pidataCOMMON+1		;fetch initializer
	movwf	__pdataCOMMON+1&07fh		
	fcall	__pidataCOMMON+2		;fetch initializer
	movwf	__pdataCOMMON+2&07fh		
	fcall	__pidataCOMMON+3		;fetch initializer
	movwf	__pdataCOMMON+3&07fh		
	fcall	__pidataCOMMON+4		;fetch initializer
	movwf	__pdataCOMMON+4&07fh		
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_lcd_init
?_lcd_init:	; 0 bytes @ 0x0
	global	?_lcd_data
?_lcd_data:	; 0 bytes @ 0x0
	global	??_lcd_data
??_lcd_data:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_lcd_cmd
?_lcd_cmd:	; 0 bytes @ 0x0
	global	??_lcd_cmd
??_lcd_cmd:	; 0 bytes @ 0x0
	ds	1
	global	lcd_cmd@cmd
lcd_cmd@cmd:	; 1 bytes @ 0x1
	global	lcd_data@dat
lcd_data@dat:	; 1 bytes @ 0x1
	ds	1
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x2
	global	??_main
??_main:	; 0 bytes @ 0x2
	global	main@name
main@name:	; 5 bytes @ 0x2
	ds	5
	global	main@i
main@i:	; 2 bytes @ 0x7
	ds	2
;;Data sizes: Strings 0, constant 0, data 5, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      9      14
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_lcd_data
;;   _lcd_init->_lcd_cmd
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 7     7      0      90
;;                                              2 COMMON     7     7      0
;;                           _lcd_init
;;                           _lcd_data
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             0     0      0      15
;;                            _lcd_cmd
;; ---------------------------------------------------------------------------------
;; (2) _lcd_cmd                                              2     2      0      15
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _lcd_data                                             2     2      0      15
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _lcd_init
;;     _lcd_cmd
;;   _lcd_data
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60      0       0       9        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0       0      11        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      10      12        0.0%
;;ABS                  0      0       E       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       2       2        0.0%
;;BANK0               50      0       0       5        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      9       E       1      100.0%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 10 in file "C:\Users\Javed\Documents\MPLAB PIC16F877A PROGRAMS\LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  name            5    2[COMMON] unsigned char [5]
;;  i               2    7[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         7       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_init
;;		_lcd_data
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Javed\Documents\MPLAB PIC16F877A PROGRAMS\LCD.c"
	line	10
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	11
	
l1860:	
;LCD.c: 11: unsigned int i=0;
	clrf	(main@i)
	clrf	(main@i+1)
	line	12
;LCD.c: 12: TRISB=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	13
;LCD.c: 13: TRISD=0x00;
	clrf	(136)^080h	;volatile
	line	14
	
l1862:	
;LCD.c: 14: unsigned char name[5]="JAVED";
	movlw	(main@name)&0ffh
	movwf	fsr0
	movf	(main@F1090),w
	movwf	indf
	incf	fsr0,f
	movf	(main@F1090)+1,w
	movwf	indf
	incf	fsr0,f
	movf	(main@F1090)+2,w
	movwf	indf
	incf	fsr0,f
	movf	(main@F1090)+3,w
	movwf	indf
	incf	fsr0,f
	movf	(main@F1090)+4,w
	movwf	indf
	line	15
	
l1864:	
;LCD.c: 15: lcd_init();
	fcall	_lcd_init
	line	16
	
l1866:	
;LCD.c: 16: for(i=0;i<=5;i++)
	clrf	(main@i)
	clrf	(main@i+1)
	
l1868:	
	movlw	high(06h)
	subwf	(main@i+1),w
	movlw	low(06h)
	skipnz
	subwf	(main@i),w
	skipc
	goto	u2141
	goto	u2140
u2141:
	goto	l1872
u2140:
	goto	l696
	
l1870:	
	goto	l696
	line	17
	
l693:	
	line	18
	
l1872:	
;LCD.c: 17: {
;LCD.c: 18: lcd_data(name[i]);
	movf	(main@i),w
	addlw	main@name&0ffh
	movwf	fsr0
	movf	indf,w
	fcall	_lcd_data
	line	16
	
l1874:	
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l1876:	
	movlw	high(06h)
	subwf	(main@i+1),w
	movlw	low(06h)
	skipnz
	subwf	(main@i),w
	skipc
	goto	u2151
	goto	u2150
u2151:
	goto	l1872
u2150:
	goto	l696
	
l694:	
	goto	l696
	line	20
;LCD.c: 19: }
;LCD.c: 20: while(1)
	
l695:	
	line	22
;LCD.c: 21: {
	
l696:	
	line	20
	goto	l696
	
l697:	
	line	23
	
l698:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_lcd_init
psect	text79,local,class=CODE,delta=2
global __ptext79
__ptext79:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 43 in file "C:\Users\Javed\Documents\MPLAB PIC16F877A PROGRAMS\LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_lcd_cmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text79
	file	"C:\Users\Javed\Documents\MPLAB PIC16F877A PROGRAMS\LCD.c"
	line	43
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 6
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	44
	
l1858:	
;LCD.c: 44: lcd_cmd(0x38);
	movlw	(038h)
	fcall	_lcd_cmd
	line	45
;LCD.c: 45: lcd_cmd(0x0c);
	movlw	(0Ch)
	fcall	_lcd_cmd
	line	46
;LCD.c: 46: lcd_cmd(0x01);
	movlw	(01h)
	fcall	_lcd_cmd
	line	47
;LCD.c: 47: lcd_cmd(0x80);
	movlw	(080h)
	fcall	_lcd_cmd
	line	48
;LCD.c: 48: lcd_cmd(0x06);
	movlw	(06h)
	fcall	_lcd_cmd
	line	49
	
l707:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_lcd_cmd
psect	text80,local,class=CODE,delta=2
global __ptext80
__ptext80:

;; *************** function _lcd_cmd *****************
;; Defined at:
;;		line 25 in file "C:\Users\Javed\Documents\MPLAB PIC16F877A PROGRAMS\LCD.c"
;; Parameters:    Size  Location     Type
;;  cmd             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cmd             1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_init
;; This function uses a non-reentrant model
;;
psect	text80
	file	"C:\Users\Javed\Documents\MPLAB PIC16F877A PROGRAMS\LCD.c"
	line	25
	global	__size_of_lcd_cmd
	__size_of_lcd_cmd	equ	__end_of_lcd_cmd-_lcd_cmd
	
_lcd_cmd:	
	opt	stack 6
; Regs used in _lcd_cmd: [wreg]
;lcd_cmd@cmd stored from wreg
	movwf	(lcd_cmd@cmd)
	line	26
	
l1850:	
;LCD.c: 26: RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	27
;LCD.c: 27: RD1=0;
	bcf	(65/8),(65)&7
	line	28
	
l1852:	
;LCD.c: 28: PORTB=cmd;
	movf	(lcd_cmd@cmd),w
	movwf	(6)	;volatile
	line	29
	
l1854:	
;LCD.c: 29: RD2=1;
	bsf	(66/8),(66)&7
	line	30
;LCD.c: 30: _delay((unsigned long)((2)*(2000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??_lcd_cmd+0)+0,f
u2167:
	clrwdt
decfsz	(??_lcd_cmd+0)+0,f
	goto	u2167
	nop2	;nop
	clrwdt
opt asmopt_on

	line	31
	
l1856:	
;LCD.c: 31: RD2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	line	32
	
l701:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_cmd
	__end_of_lcd_cmd:
;; =============== function _lcd_cmd ends ============

	signat	_lcd_cmd,4216
	global	_lcd_data
psect	text81,local,class=CODE,delta=2
global __ptext81
__ptext81:

;; *************** function _lcd_data *****************
;; Defined at:
;;		line 34 in file "C:\Users\Javed\Documents\MPLAB PIC16F877A PROGRAMS\LCD.c"
;; Parameters:    Size  Location     Type
;;  dat             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dat             1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text81
	file	"C:\Users\Javed\Documents\MPLAB PIC16F877A PROGRAMS\LCD.c"
	line	34
	global	__size_of_lcd_data
	__size_of_lcd_data	equ	__end_of_lcd_data-_lcd_data
	
_lcd_data:	
	opt	stack 7
; Regs used in _lcd_data: [wreg]
;lcd_data@dat stored from wreg
	movwf	(lcd_data@dat)
	line	35
	
l1842:	
;LCD.c: 35: RD0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	line	36
;LCD.c: 36: RD1=0;
	bcf	(65/8),(65)&7
	line	37
	
l1844:	
;LCD.c: 37: PORTB=dat;
	movf	(lcd_data@dat),w
	movwf	(6)	;volatile
	line	38
	
l1846:	
;LCD.c: 38: RD2=1;
	bsf	(66/8),(66)&7
	line	39
;LCD.c: 39: _delay((unsigned long)((2)*(2000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??_lcd_data+0)+0,f
u2177:
	clrwdt
decfsz	(??_lcd_data+0)+0,f
	goto	u2177
	nop2	;nop
	clrwdt
opt asmopt_on

	line	40
	
l1848:	
;LCD.c: 40: RD2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	line	41
	
l704:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_data
	__end_of_lcd_data:
;; =============== function _lcd_data ends ============

	signat	_lcd_data,4216
psect	text82,local,class=CODE,delta=2
global __ptext82
__ptext82:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
