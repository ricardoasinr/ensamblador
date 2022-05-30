@Practicando for
	.data
v: 	.word 2, 4, 6, 8,10
n: 	.word 5
suma: 	.word 0
	.text
main:	ldr r0, =v
	ldr r1, =n
	ldr r1, [r1]
	ldr r2, =suma
	ldr r2, [r2]
	mov r3, #0

bucle:	cmp r3, r1
	beq finbuc
	ldr r4, [r0]
	add r2, r2, r4
	add r0, r0, #4
	add r3, r3, #l
	b bucle
finbuc: ldr r0, =suma
	str r2, [r0]
stop:	wfi
