.global _start
_start:
	MOV R1,#172 //input number
	MOV R8,#0 //iteration counter
	MOV R10,#3 //to multiply by 3
	
collatz:
	CMP R1,#1
	BEQ exit //if it is 1
	MOV R2,R1
	LSR R2,#1
	LSL R2,#1
	CMP R1,R2
	BEQ even //if number is even
	MUL R1,R1,R10
	ADD R1,R1,#1
	ADD R8,R8,#1 //increase counter
	B collatz
	
even:
	LSR R1,#1
	ADD R8,R8,#1
	B collatz
	
exit:
