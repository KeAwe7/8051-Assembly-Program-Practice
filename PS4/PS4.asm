MOV R0, #56H		; Load number
MOV A, R0		; Move number to A
SWAP A			; Swap that number
MOV B, A		; Move the swapped number to B
MOV A, R0		; Move number back to A
CJNE A, B, DOWN		; Compare A with B (swapped A), we don't care about the jump
DOWN:
JC GREATER		; If A < B, C is set, thus lower nibble is GREATER
MOV P0, #0FFH		; Otherwise, set port 0 to FFH
JMP END1		
GREATER: MOV P0, #00H	; B is greater, set port 0 to 00H
END1: END