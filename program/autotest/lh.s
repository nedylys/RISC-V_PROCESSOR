# TAG = lh
	.text
    la x30,test
	lh x31,0(x30)
	lh x31,4(x30)
	lh x31,8(x30)
    lh x31,12(x30)
	# max_cycle 50
	# pout_start
	# FFFFE654
	# 00000329
	# FFFFFFFF
	# FFFFFFFE
	# pout_end
     
	.data
test : .word 124500,809,-1,-2
    .globl test 