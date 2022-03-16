	.data

byte1:	.byte 0x11 
	.balign 2 
space: 	.space 4
byte2: 	.byte 0x22
	.balign 4
word:	.word 0xAABBCCDD


	.text
stop:	wfi
