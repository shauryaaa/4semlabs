	AREA RESET, CODE
	ENTRY
	
	LDR R0, =NUMS
	LDR R1, [R0]
	LDR R2, [R0, #4]
	
GCD CMP R1, R2
	SUBGT R1, R1, R2
	SUBLT R2, R2, R1
	BEQ STOP
	B GCD
	
STOP B STOP

NUMS DCD &F, &14
	END