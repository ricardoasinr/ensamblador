 	.text @ Zona de instrucciones
main: 	mov r0, #250 @ r0 <- 250 
	
	add r0,r1  @r1<-r0+100
stop: 	wfi
