# TAG = and

.text
addi x31,x0,0x9
addi x30,x0,1
and x31,x31,x30

# max_cycle 50
# pout_start
# 00000009
# 00000001
# pout_end