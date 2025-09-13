# TAG = sh
	.text
    la x30,test
    li x1,134050
	li x2,-1
	li x3,540
	li x4,-2
	sh x1,0(x30)
	sh x2,4(x30)
	sh x3,8(x30)
    sh x4,12(x30)
    lw x31,0(x30)
	lw x31,4(x30)
	lw x31,8(x30)
    lw x31,12(x30)

    # max_cycle 100
	# pout_start
	# 00000BA2
	# 0000FFFF
	# 0000021C
	# 0000FFFE
	# pout_end

	.data
test : .word 0,0,0,0
    .globl test 