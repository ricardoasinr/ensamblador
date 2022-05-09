	.text
main:	mov r0, #5
	mov r1, #10
	mov r2, #5
	mov r3, #0
	cmp r0, r1
	beq salto
	add r3,r0,r1
salto:	add r3,r3,r1
stop: 	wfi
