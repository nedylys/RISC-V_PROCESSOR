# TAG = bge

.text
/* rs1=rs2 */
test1:
addi x30, x0, 2
addi x29, x0, 2
bge x29, x30, branche
addi x31, x0, 2
j test2
branche:
addi x31, x0, 4

/* rs1 > rs2 */
test2:
addi x30, x0, 2
addi x29, x0, 3
bge x29, x30, branche2
addi x31, x0, 1
j test3
branche2:
addi x31, x0, 0

/* rs1 < rs2 */
test3:
addi x30, x0, 4
addi x29, x0, 3
bge x29, x30, branche3
addi x31, x0, 1
branche3:
addi x31, x0, 3

# max_cycle 50
# pout_start
# 00000004
# 00000000
# 00000001
# pout_end