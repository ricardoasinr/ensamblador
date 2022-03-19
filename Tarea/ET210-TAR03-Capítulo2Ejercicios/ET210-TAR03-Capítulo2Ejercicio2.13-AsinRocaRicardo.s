        .equ Monday, 3
        .equ Tuesday, 4
        @....
        .text
main:   mov r0, #Monday
        mov r1, #Tuesday
        @...
stop:   wfi
