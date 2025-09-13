# TAG = jalr
	.text
    auipc x27,0
    addi x27,x27,24
    addi x30,x0,8
    addi x29,x0,7
    jalr x0,0(x27)
    mv x31,x29
    mv x31,x30
	# max_cycle 150
	# pout_start
	# 00000008
	# pout_end