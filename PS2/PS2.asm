; To check if prime, the number is not divisible by any number from 2 to N-1
; In this code, it will check if the number is not prime if it is divisible by any number from 2 to N-1
MOV P0, #00H	; Initialize Port 0 to #00H

MOV R0, #251	; Insert number to be checked, this code can only do 1-255
MOV A, R0	; Temporarily move to A
SUBB A, #2	; Subtract 2 to find the limit (N-1) Because of the way the code runs we subtract by 2 instead of 1	
MOV R1, A	; Store that limit to R1, which will be our counter
MOV R2, #2	; Load R2 with 2

LOOP:
		MOV B, R2	; Move R2 to B
		MOV A, R0	; Move the number to A
		DIV AB		; Divide number with B
		MOV A, B	; Move B to A so we can check it
		JZ NOT_PRIME	; If B has no value (no remainder), it's not a prime number
				; Else we continue
		INC R2		; Increment R2
		DJNZ R1, LOOP	; Decrement Counter
		JMP END1
NOT_PRIME:	MOV P0, #0FFH	; LEDs will be off if N is not a prime number
END1: 		END		; LEDs will remain on if N is a prime number