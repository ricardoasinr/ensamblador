	.data
word1:	.word 0x10203040

	.text
main:	ldrb r0, =word1
	ldrb r1, [r0]
	ldrb r2, [r0, #1]
	ldrb r3, [r0,#2]
	ldrb r4, [r0,#3]
	ldrb r5, [r0,#4]
	add r0, #4
	strb r4, [r0]
	strb r3, [r0,#1]
	strb r2, [r0,#2]
	strb r1, [r0,#3]
	

	
	
	
	
stop:	wfi
