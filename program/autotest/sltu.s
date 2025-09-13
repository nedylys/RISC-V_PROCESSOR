# TAG = sltu

.text
addi x1, x0, 8
addi x2, x0, 9
sltu x31, x1, x2
addi x3, x0, 15
addi x4, x0, 7
sltu x31, x3, x2
sltu x31, x4, x2
# max_cycle 50
# pout_start
# 00000001
# 00000000
# 00000001
# pout_end