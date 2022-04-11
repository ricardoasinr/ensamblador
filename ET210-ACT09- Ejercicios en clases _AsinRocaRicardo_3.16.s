 	.text @ Zona de instrucciones
 main: 	ldr r0, =0x12345678 @ r0 <- 0x1234 5678 
	ldr r1, =0x00000F00
	and r0,r1

stop: 	wfi 
