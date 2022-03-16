	.data

byte1:	.byte 0x11 
	.align 1 
space: 	.space 4
byte2: 	.byte 0x22
	.align 2
word:	.word 0xAABBCCDD


	.text
stop:	wfi
