# TAG = sb
	.text
    la x30,test
	li x1,405
	li x2,-1
	li x3,54
	li x4,300
	sb x1,0(x30)
	sb x2,4(x30)
	sb x3,8(x30)
    sb x4,12(x30)
    lw x31,0(x30)
	lw x31,4(x30)
	lw x31,8(x30)
    lw x31,12(x30)

    # max_cycle 150
	# pout_start
    # 00000095
	# 000000FF
	# 00000036
	# 0000002C
	# pout_end

	.data
test : .word 0,0,0,0
    .globl test 
