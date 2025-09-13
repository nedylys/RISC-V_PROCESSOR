# TAG = sw
	.text
    la x30,test
	sw x0,0(x30)
	sw x0,4(x30)
	sw x0,8(x30)
    sw x0,12(x30)
    addi x31,x0,5
    lw x31,0(x30)
	lw x31,4(x30)
	lw x31,8(x30)
    lw x31,12(x30)

    # max_cycle 100
	# pout_start
    # 00000005
	# 00000000
	# 00000000
	# 00000000
	# 00000000
	# pout_end

	.data
test : .word 1,9,2,8
    .globl test 


     