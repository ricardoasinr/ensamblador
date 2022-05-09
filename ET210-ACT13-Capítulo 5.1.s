	.text
main:	mov r0, #5
	mov r1, #10
	mov r2, #100
	mov r3, #0
	@b salto
	add r3,r1,r0
salto:	add r3,r3,r2
stop: 	wfi
