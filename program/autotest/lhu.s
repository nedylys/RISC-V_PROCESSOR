# TAG = lhu
	.text
    la x30,test
	lhu x31,0(x30)
	lhu x31,4(x30)
	lhu x31,8(x30)
    lhu x31,12(x30)
	# max_cycle 50
	# pout_start
	# 0000E654
	# 00000329
	# 0000FFFF
	# 0000FFFE
	# pout_end
     
	.data
test : .word 124500,809,-1,-2
    .globl test 