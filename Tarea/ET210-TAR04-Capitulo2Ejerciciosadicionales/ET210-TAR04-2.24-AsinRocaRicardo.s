	.data
str: 	.asciz "Esto es un problema"
	
	.text
	ldr r2, =str
	
	bl printString
stop: 	wfi
