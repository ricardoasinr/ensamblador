	.data
vec:	.word 10,20,25,500,3

	.text
main:
	ldr r0, =vec
	ldr r1, [r0]
	ldr r2, [r0, #4]
	ldr r3, [r0,#8]
	ldr r4, [r0, #12]
	ldr r5, [r0, #16]
	mov r0, #0
	mov r0, r1

	mov r1, r2
	mov r2,r3
	mov r3,r4
	mov r4,r5
	mov r5, #0
	
	
	
	
	
	
	
stop:	wfi
