	.data


word1: 	.asciz "abcde" 
	.balign 4
byte:	.byte 0xff
        .balign 4
word2: 	.asciz "abcde" 
	.balign 2     

	    .text
stop:	wfi
