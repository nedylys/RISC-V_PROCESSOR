# TAG = bltu

.text
/* rs1=rs2 */
test1:
addi x30, x0, 2
addi x29, x0, 2
bltu x29, x30, branche
addi x31, x0, 2
beq x0, x0, test2
branche:
addi x31, x0, 0

/* rs1 > rs2 */
test2:
addi x30, x0, 2
addi x29, x0, 3
bltu x29, x30, branche2
addi x31, x0, 1
beq x0,x0, test3
branche2:
addi x31, x0, 5

/* rs1 < rs2 */
test3:
addi x30, x0, 4
addi x29, x0, 3
bltu x29, x30, branche3
addi x31, x0, 1
beq x0, x0, test4
branche3:
addi x31, x0, 3

/* rs1 < rs2 avec rs1 négatif amis interprété comme étant non signé */
test4:
addi x30, x0, 4
addi x29, x0, -3
bltu x29, x30, branche4
addi x31, x0, 5
branche4:
addi x31, x0, 4

# max_cycle 150
# pout_start
# 00000002
# 00000001
# 00000003
# 00000005
# pout_end