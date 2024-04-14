MOV DPTR, #4009H	; Initialize external starting location
MOV R0, #40H		; Initialize internal starting location
MOV R1, #6		; Initialize counter = size of array = 6

MOVE:	MOVX A, @DPTR	; Move data from location pointed by DPTR to A
	MOV @R0, A	; Move that data to location pointed by R0
	INC DPTR	; Increment DPTR (next location)
	INC R0		; Increment R0 (next location)
	DJNZ R1, MOVE	; Decrement counter, repeat until zero

MOV A, #00H		; Initialize A with lowest single byte number
MOV R1, #6		; Reinitialize counter
DEC R0			; Decrement R0 once since up to this point R0 = 46H, we need 45H

FIND:			; Logic to find greater number
	MOV B, @R0	; Move data from location pointed by R0 to B
	CJNE A, B, DOWN	; We don't really need the jump function, we just need the "op1 < op2; C = 1" logic
			; The first comparison is between 0 < B. This loads B to A
DOWN:	JNC SKIP	; If C = 0, we skip because this means that A > B already
	MOV A, B	; If C = 1, A < B, move B to A
SKIP:	DEC R0		; Decrement R0 (next location)
	DJNZ R1, FIND	; Decrement counter, repeat until zero

MOV DPTR, #4184H	; Point DPTR to final location
MOVX @DPTR, A		; Move A to location pointed by DPTR

END	