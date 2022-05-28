	.data
datos:	.word 5, 8, 3, 4
suma1:	.space 4
suma2: 	.space 4
	.text

main:	ldr r4, =datos
	ldr r0, [r4]
	ldr r1, [r4, #4]
primera: bl suma
	ldr r5, =suma1
	str r0, [r5]
	ldr r0, [r4, #8]
	ldr r1, [r4, #12]
segunda: bl suma
	ldr r5, =suma2
	str r0, [r5]
stop:	wfi
@ Subrutina
suma:	add r0, r0, r1
	lsl r0, #1
	mov pc, lr
	.end
