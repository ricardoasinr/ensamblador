	.data
word1:	.word 0x00FFF0F0
word2:	.word 0x00FFF070
	.text
main:	ldr r0, =word1
	ldr r0, [r0]
	ldr r1, =word2
	ldr r1,[r1]

	
stop:	wfi
