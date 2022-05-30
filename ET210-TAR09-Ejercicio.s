.data
A:    .word 5, 3, 8, 4, 5, 10, 15, 1, 20, 5
CONMEN:    .space 4
CONIGU:    .space 4
CONMAY:    .space 4
SUMMEN:    .space 4
SUMMAY:    .space 4
SUMIGU:    .space 4



    .text
main:    ldr r0, =A
    ldr r1, [r0]
    mov r2, #0
    mov r3, #10
    mov r4, #6
    mov r5, #0
    mov r6, #0
    bl MEN

    ldr r0, =A
    ldr r1, [r0]
    mov r2, #0
    mov r3, #10
    mov r4, #5
    mov r5, #0
    mov r6, #0
    mov r7, #0
    bl IGU

    ldr r0, =A
    ldr r1, [r0]
    mov r2, #0
    mov r3, #10
    mov r4, #7
    mov r5, #0
    mov r6, #0
    mov r7, #0
    bl MAY
    
    
stop:    wfi

MEN:    cmp r3, r2
    beq finmen
if:        cmp r4, r1
            blt finsi
            add r5, #1
            add r6, r1
            
finsi:    add r2, #1
    add r0, #4
    ldr r1, [r0]
    b MEN

finmen:    ldr r7, =CONMEN
    str r5, [r7]
    str r6, [r7, #4]
    mov pc, lr


IGU:    cmp r3, r2
    beq finigu
if1:        cmp r4, r1
            bne finsi1
            add r5, #1
            add r6, r1
            
finsi1:    add r2, #1
    add r0, #4
    ldr r1, [r0]
    b IGU

finigu:    ldr r7, =CONIGU
    str r5, [r7]
    str r6, [r7, #4]
    mov pc, lr


MAY:    cmp r3, r2
    beq finmay
if2:        cmp r4, r1
            bgt finsi2
            add r5, #1
            add r6, r1
            
finsi2:    add r2, #1
    add r0, #4
    ldr r1, [r0]
    b MAY

finmay:    ldr r7, =CONMAY
    str r5, [r7]
    str r6, [r7, #4]
    mov pc, lr
