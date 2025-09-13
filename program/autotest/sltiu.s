# TAG = sltiu

.text
/* rs1 < imm */
addi x1, x0, 5
sltiu x31, x1, 12

/* rs1 > imm */
sltiu x31, x1, 4

/* rs1 = imm */
sltiu x31, x1, 5

/* rs1 < imm avec les 2 étant négatifs mais interprétés comme étant unsigned */
addi x2, x0, -12
sltiu x31, x2, -1

/* rs1 > imm avec les 2 étant négatifs mais interprétés comme étant unsigned */
addi x3, x0, -1
sltiu x31, x3, -12

# max_cycle 50
# pout_start
# 00000001
# 00000000
# 00000000
# 00000001
# 00000000
# pout_end