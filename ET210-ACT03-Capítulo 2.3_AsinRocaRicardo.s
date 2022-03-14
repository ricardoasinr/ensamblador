	
	.equ Monday, 1
	.equ Tuesday, 2
	.equ Wednesday, 3
	.equ Thursday, 4

	.data
word1: .word 15
word2: .word 0x15
word3: .word 015
word4: .word 0b11


	.text
	day .req r7
main: 
	mov r1, #Monday
	mov r2, #Tuesday
	mov r3, #Wednesday
	mov r4, #Thursday
	mov day,#Thursday 
stop: 	wfi
