	.data
byte1: 	.space 4
byte2:	.space 4
byte3:	.space 4

	.text
main:
	ldr r0, =byte1
	mov r1, #2
	mov r2, #10
	strb r2, [r0]
	strb r2, [r0,#1]
	strb r2, [r0, r1]
stop: 	wfi
