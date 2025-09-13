# TAG = slt

.text
addi x1, x0, 5
addi x2, x0, 6
slt x31, x1, x2
addi x3, x0, 7
addi x4, x0, 6
slt x31, x3, x2
slt x31, x4, x2
# max_cycle 50
# pout_start
# 00000001
# 00000000
# 00000000
# pout_end