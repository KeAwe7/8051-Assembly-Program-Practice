MOV R0, #04	; Number to be cubed
MOV R1, #02	; Counter, N-1 so 3-1=2 for cube
MOV A, R0	; Move number to A

LOOP:
MOV B, R0	; Move number to B, B stays the same
MUL AB		; A = N x N
DJNZ R1, LOOP
END