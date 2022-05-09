	.text
main:	mov r0, #5
salto:	mov r1, #10
	mov r2, #100
	mov r3, #0
	b salto
	add r3,r1,r0
	add r3,r3,r2
stop: 	wfi
