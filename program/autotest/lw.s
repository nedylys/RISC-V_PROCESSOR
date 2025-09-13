# TAG = lw
	.text
    la x30,test
	lw x31,0(x30)
	lw x31,4(x30)
	lw x31,8(x30)
    lw x31,12(x30)
	# max_cycle 50
	# pout_start
	# 00000001
	# 00000006
	# 00000007
	# 00000008
	# pout_end
     
	.data
test : .word 1,6,7,8
    .globl test 
