# TAG = xor

.text
addi x31,x0,0x1
addi x30,x0,1
xor  x31,x31,x30

# max_cycle 50
# pout_start
# 00000001
# 00000000
# pout_end