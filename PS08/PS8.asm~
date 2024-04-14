ORG 0000H

		MOV R0, #05H		;Initialize pass counter
	UP1:
		MOV DPTR, #2000H	;Initialize pointer memory
		MOV R1, #04H		;Initialize byte counter
	UP: 		
		MOV R2, DPL		;Save the lower byte address
		MOVX A, @DPTR		;Read number from array
		MOV B, A		;Transfer the number to B register
		INC DPTR		;Increment memory pointer
		MOVX A, @DPTR		;Read next number from array
		CJNE A, B, DN		;Compare next number with number
		AJMP SKIP
	DN:
		JC SKIP			;If next number < number then go to SKIP
		MOV DPL, R2		;Else exchange the number with next number
		MOVX @DPTR, A
		INC DPTR
		MOV A, B
		MOVX @DPTR, A
	SKIP:
		DJNZ R1, UP		;Decrement byte and if count byte is not zero go to Up
		DJNZ R0, UP1		;Decrement pass counter and if not zero go to UP1		
END
		
	