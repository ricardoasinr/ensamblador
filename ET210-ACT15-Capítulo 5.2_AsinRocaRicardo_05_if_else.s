	.data
x:	.word 2
y:	.word 1
z:	.word 0

	.text
main: 	ldr r0, =x
	ldr r0, [r0]
	ldr r1 , =y
	ldr r1, [r1]

	cmp r0,r1
	bgt else	
		add r2,r0,r1
		
	b finsi

else:		add r2, r0, #5

finsi: 	ldr r3, =z
	str r2,[r3]
stop: 	wfi
