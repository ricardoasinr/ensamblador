	.data
vec:	.word 10,20

	.text
main:
	ldr r0, =vec
	ldr r1, [r0]
	ldr r2, [r0, #4]
	add r2, r1
	str r2, [r0,#8]
	
	
stop:	wfi
