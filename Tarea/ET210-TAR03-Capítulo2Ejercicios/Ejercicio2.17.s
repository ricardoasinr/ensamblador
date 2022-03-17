	.data
str: 	.asciz "abcde"
byte:	.byte 0xff
        .balign 4
str2: 	.asciz "abcde" 
byte2:	.byte 0xff       

	    .text
stop:	wfi