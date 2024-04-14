ORG 0000H

    MOV TMOD, #20H 	; Timer 1, mode 2
    MOV TH1, #-3 	; Load TH1 with -3 for 9600 baud rate
    MOV SCON, #50H 	; 8-bit, 1 stop, REN enabled
    SETB TR1 		; Start Timer 1

MAIN:
    MOV SBUF, #'Y' 	; Send 'Y' character
WAIT_Y:
    JNB TI, WAIT_Y 	; Wait until character is transmitted
    CLR TI 			; Clear transmit interrupt flag

    MOV SBUF, #'E' 	; Send 'E' character
WAIT_E:
    JNB TI, WAIT_E 	; Wait until character is transmitted
    CLR TI 			; Clear transmit interrupt flag

    MOV SBUF, #'S' 	; Send 'S' character
WAIT_S:
    JNB TI, WAIT_S 	; Wait until character is transmitted
    CLR TI 			; Clear transmit interrupt flag

    SJMP MAIN 		; Repeat indefinitely

END
