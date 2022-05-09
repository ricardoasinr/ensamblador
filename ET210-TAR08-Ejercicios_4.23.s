	.data
byte1: 	.byte 0x10
byte2: 	.byte 0x20
byte3: 	.byte 0x30
byte4: 	.byte 0x40
espacio: .space 4

	.text
main: 
	ldr r0, =byte1	
	ldrb r1, [r0]
	ldrb r2, [r0, #1]
	ldrb r3, [r0, #2]
	ldrb r4, [r0, #3]
	add r5, r0, #4
	strb r1, [r5]
	strb r2, [r5, #1]
	strb r3, [r5, #2]
	strb r4, [r5, #3]
	@strb r8, [r0, #4]

stop: wfi
