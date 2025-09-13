# TAG = srai

.text
addi x31,x0,0xFFFFFFFC
sra x31,x31,2
addi x31,x0,8
sra x31,x31,2


# max_cycle 50
# pout_start
# FFFFFFFC
# FFFFFFFF
# 00000008
# 00000002
# pout_end