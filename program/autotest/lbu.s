# TAG = lbu
	.text
    la x30,test
	lbu x31,0(x30)
	lbu x31,4(x30)
	lbu x31,8(x30)
    lbu x31,12(x30)
	# max_cycle 50
	# pout_start
	# 0000009F
	# 0000002F
	# 000000FF
	# 000000FE
	# pout_end
     
	.data
test : .word 415,303,-1,-2
    .globl test 