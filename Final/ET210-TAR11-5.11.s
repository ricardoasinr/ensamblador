.data
vector:	.word 2,4,6,3,10,1,4

	.text
main:	ldr r0, =vector
	mov r1, #5	@Numero limite
	mov r3, #8	@Cantidad de datos
	mov r4, #0	@Inicializacion
	mov r2, #0
	mov r6, #0

bucle:	cmp r3, r2	@Comparando los valores de r3 y r2 
			@En caso de que r2 alcance los valores de r3
			@Se ejecuta el fin bucle
	beq finbucle	
	add r2, #1	@r2=r2+1
	ldr r5, [r0, r4]@Extrae datos del vector segun la posicion
	add r4, #4	@Extrae otro dato del vector, apuntando a otra direccion
	cmp r5, r1	@Compara el valor del vector que se esta analizando
			@con el valor de referencia r1 = {5}
	bgt contador	@En caso de que la comparacion [MAYOR QUE] se cumpla
			@Se aumenta el contador en el registro 6
	b bucle

contador:	add r6, r5
		b bucle
	

finbucle:	wfi
