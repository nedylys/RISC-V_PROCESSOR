# TAG = xori

.text
addi x31,x0,0x1
xori  x31,x31,1
xori  x31,x31,1

# max_cycle 50
# pout_start
# 00000001
# 00000000
# 00000001
# pout_end