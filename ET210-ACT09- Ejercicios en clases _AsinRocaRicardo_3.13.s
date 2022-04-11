	.text @ Zona de instrucciones
main: 	neg r1, r0 @ r1 <- -r0 
	mvn r2, r0 @ r2 <- NOT r0
stop: 	wfi
