	LJMP	START
	ORG	100H
START:
	LCALL LCD_INIT
	LCALL WAIT_KEY
	MOV R1, A
	LCALL WAIT_KEY
	MOV R2, A
	MOV A, R1
	LCALL WRITE_HEX
	MOV A, #'+'
	LCALL WRITE_DATA
	MOV A, R2
	LCALL WRITE_HEX
	MOV A, #'='
	LCALL WRITE_DATA
	MOV A, R1
	ADD A, R2
	LCALL WRITE_HEX
STOP:
	LJMP STOP
	NOP