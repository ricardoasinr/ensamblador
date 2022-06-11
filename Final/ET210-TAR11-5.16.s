.data
vector:	.word 1, 4, 3, 4, 1

	.text
main:	ldr r0, =vector
	mov r1, #5	@Cantidad de datos
	mov r4, #0	@Inicializacion
	mov r2, #0	@Contadora
	mov r6, #0	@Se almacena la suma
	mov r3, #1	@Si es impar

bucle:	cmp r1, r2	@Comparando los valores de r1 y r2 
			@En caso de que r2 alcance los valores de r1
			@Se ejecuta el fin bucle
	beq finbucle	
	add r2, #1	@r2=r2+1
	ldr r5, [r0, r4]@Extrae datos del vector segun la posicion
	add r4, #4	@Extrae otro dato del vector, apuntando a otra direccion
	and r5, r3	@Convierte y compara si el numero es impar
	cmp r5, #1
	bne contador	@En caso de que la comparacion [Distinta] se cumpla
			@Se aumenta el contador en el registro 6
	b bucle

contador:	
		add r6, r5
		b bucle
	

finbucle:	wfi
