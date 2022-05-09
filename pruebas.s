	.data
word1: 	.word 1,2,3
main:	ldr r0, =word1
	ldr r1, [r0]
	ldr r2, [r0, #4]
	ldr r3, [r0, #8]
	lsl r4, r1, #5
	sub r5, r4,r2
	lsr r6, r4, #2
	

	
stop: 	wfi
