# TAG = sra

.text
addi x31,x0,0xFFFFFFFC
addi x30,x0,2
sra x31,x31,x30
addi x31,x0,8
sra x31,x31,x30


# max_cycle 50
# pout_start
# FFFFFFFC
# FFFFFFFF
# 00000008
# 00000002
# pout_end