# TAG = beq

.text
addi x30, x0, 2
addi x29, x0, 2
beq x29, x30, branche
addi x31, x0, 1
branche:
addi x31, x0, 0

addi x30, x0, 2
addi x29, x0, 3
beq x29, x30, branche2
addi x31, x0, 1
branche2:
addi x31, x0, 0
# max_cycle 50
# pout_start
# 00000000
# 00000001
# pout_end