# TAG = sub

.text
addi x31,x0,0x5
addi x30,x0,0x9
sub  x31,x31,x31
sub x31,x30,x31
# max_cycle 50
# pout_start
# 00000005
# 00000000
# 00000009
# pout_end