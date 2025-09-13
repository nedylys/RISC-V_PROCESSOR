# TAG = auipc

.text
addi x31,x0,0x5
auipc x31,5
auipc x31,5

# max_cycle 50
# pout_start
# 00000005
# 00006004
# 00006008
# pout_end