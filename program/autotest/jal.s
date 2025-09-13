# TAG = jal
	.text
    addi x30,x0,8
    addi x29,x0,7
    jal x0,jump
    mv x31,x29
jump:
    mv x31,x30
	# max_cycle 50
	# pout_start
	# 00000008
	# pout_end
    
     
