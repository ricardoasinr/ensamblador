	.data
word1: .word 15
@ Comienzo de la zona de datos
@ Número en decimal
word2: .word 0x15 @ Número en hexadecimal
word3: .word 015 @ Número en octal
word4: .word 0b11 @ Número en binario

	.text
stop:	wfi
