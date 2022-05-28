	.data
X: 	.word 1
E:	.word 1
LIM:	.word 100

	.text
	ldr r0,=X
	ldr r0, [r0]
	ldr r1,=E
	ldr r1, [r1]
	ldr r2,=LIM
	ldr r2, [r2]
bucle: 	cmp r0, r2
	bge finbuc
		lsl r3, r1, #1
		add r0, r0, r3
		add r1, r1, #l
		ldr r4, =X
		str r0, [r4]
		ldr r4, =E
		str r1, [r4]
	b bucle

finbuc: wfi
