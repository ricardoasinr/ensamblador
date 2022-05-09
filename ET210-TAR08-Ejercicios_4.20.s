	.data
vec:	.word 10,20,25,500,3

	.text
main:
	ldr r0, =vec
	ldr r1, [r0]
	ldr r2, [r0, #4]
	ldr r3, [r0, #8]
	ldr r4, [r0, #12]
	ldr r5, [r0, #16]
	

	add r1, #5
	add r2, #5
	add r3, #5
	add r4, #5
	add r5, #5
	ldr r6, =vec
	add r6, #20

	str r1, [r6]
	str r2, [r6, #4]
	str r3, [r6, #8]
	str r4, [r6, #12]
	str r5, [r6, #16]

	


	@add r8, r3, #5
	@add r9, r4, #5

	
	
	
	
	
	
	
stop:	wfi
