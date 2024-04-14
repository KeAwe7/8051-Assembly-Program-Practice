MOV R5, #87H	; Higher minuend byte
MOV R4, #0BCH	; Lower minuend byte

MOV R3, #9BH	; Higher subtrahend byte
MOV R2, #0B1H	; Lower subtrahend byte

MOV A, R4	; Load lower minuend byte to A
MOV B, R2	; Load lower subtrahend byte to B
SUBB A, B	; Subtract
MOV R0, A	; Move lower byte to R0

MOV A, R5	; Load higher minuend byte to A
MOV B, R3	; Load higher subtrahend byte to B
SUBB A, B	; Subtract
MOV R1, A	; Move higher byte to R1
END