.global _start
_start:
		MOV R1,#10
		
		MOV R4,#0
		MOV R5,#0
		MOV R9,#0
		MOV R10,#10
		MOV R11,#0
		MOV R12,#1
		
push_binary:
		CMP R1,#0
		BEQ pop_binary
		MOV R2,R1
		LSR R2,#1
		LSL R2,#1
		CMP R1,R2
		BEQ store_one
		PUSH {R12}
		LSR R1,#1
		ADD R9,R9,#1
		B push_binary
		
store_one:
		PUSH {R11}
		LSR R1,#1
		ADD R9,R9,#1
		B push_binary
		
pop_binary:
		CMP R9,#0
		BEQ exit
		SUB R9,R9,#1
		POP {R4} 
		MUL R5,R5,R10
		ADD R5,R5,R4
		B pop_binary
		
exit:


	
	
