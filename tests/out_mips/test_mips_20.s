#	NODE a(0) COST - 3.000000, DEGREES - 0
#	NODE b(1) COST - 5.000000, DEGREES - 0
#	NODE c(2) COST - 5.000000, DEGREES - 0
#	NODE d(3) COST - 5.000000, DEGREES - 0
#	NODE e(4) COST - 5.000000, DEGREES - 0
#	NODE f(5) COST - 5.000000, DEGREES - 0
#	NODE g(6) COST - 5.000000, DEGREES - 0
#	NODE h(7) COST - 5.000000, DEGREES - 0
#	NODE i(8) COST - 5.000000, DEGREES - 0
#	NODE j(9) COST - 3.000000, DEGREES - 0
#	NODE res(10) COST - 2.500000, DEGREES - 0
#	NODE res(10) IN REG $s0
#	NODE j(9) IN REG $s0
#	NODE i(8) IN REG $s0
#	NODE h(7) IN REG $s0
#	NODE g(6) IN REG $s0
#	NODE f(5) IN REG $s0
#	NODE e(4) IN REG $s0
#	NODE d(3) IN REG $s0
#	NODE c(2) IN REG $s0
#	NODE b(1) IN REG $s0
#	NODE a(0) IN REG $s0
.text
# function main
# formals: 
# locals: tmp$0 (loc: -4); tmp$1 (loc: -8); tmp$2 (loc: -12); tmp$3 (loc: -16); tmp$4 (loc: -20); tmp$5 (loc: -24); tmp$6 (loc: -28); tmp$7 (loc: -32); tmp$8 (loc: -36); tmp$9 (loc: -40); tmp$10 (loc: -44); tmp$11 (loc: -48); 
# space for locals: 48 bytes
#
_main:
# block 0 
# def = 11111111110;
# use = 00000000000;
# in  = 00000000000;
# out = 01111111110;
    # -LEADER- block (0)
    # livenow=01111111110
    # enter main
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -48($sp)   # allocate stack frame

    # block (0)
    # livenow=01111111110
    # move 1, a
    li $t0, 1
    sw $t0, _a

    # block (0)
    # livenow=01111111110
    # move 2, b
    li $t0, 2
    sw $t0, _b

    # block (0)
    # livenow=01111111110
    # move 3, c
    li $t0, 3
    sw $t0, _c

    # block (0)
    # livenow=01111111110
    # move 4, d
    li $t0, 4
    sw $t0, _d

    # block (0)
    # livenow=01111111110
    # move 5, e
    li $t0, 5
    sw $t0, _e

    # block (0)
    # livenow=01111111110
    # move 6, f
    li $t0, 6
    sw $t0, _f

    # block (0)
    # livenow=01111111110
    # move 7, g
    li $t0, 7
    sw $t0, _g

    # block (0)
    # livenow=01111111110
    # move 8, h
    li $t0, 8
    sw $t0, _h

    # block (0)
    # livenow=01111111110
    # move 9, i
    li $t0, 9
    sw $t0, _i

    # block (0)
    # livenow=01111111110
    # move 10, j
    li $t0, 10
    sw $t0, _j

    # block (0)
    # livenow=01111111110
    # if_gt 1, 2, label 1
    li $t0, 1
    li $t1, 2
    bgt $t0, $t1, Lbl1

# block 1 
# def = 00000000000;
# use = 01100000000;
# in  = 01111111110;
# out = 00111111110;
    # -LEADER- block (1)
    # livenow=00111111110
    # label 6
Lbl6:

    # block (1)
    # livenow=00111111110
    # if_gt b, c, label 1
    lw $t0, _b
    lw $t1, _c
    bgt $t0, $t1, Lbl1

# block 2 
# def = 00000000000;
# use = 00110000000;
# in  = 00111111110;
# out = 00011111110;
    # -LEADER- block (2)
    # livenow=00011111110
    # label 5
Lbl5:

    # block (2)
    # livenow=00011111110
    # if_gt c, d, label 1
    lw $t0, _c
    lw $t1, _d
    bgt $t0, $t1, Lbl1

# block 3 
# def = 00000000000;
# use = 00011000000;
# in  = 00011111110;
# out = 00001111110;
    # -LEADER- block (3)
    # livenow=00001111110
    # label 4
Lbl4:

    # block (3)
    # livenow=00001111110
    # if_gt d, e, label 1
    lw $t0, _d
    lw $t1, _e
    bgt $t0, $t1, Lbl1

# block 4 
# def = 00000000000;
# use = 00001100000;
# in  = 00001111110;
# out = 00000111110;
    # -LEADER- block (4)
    # livenow=00000111110
    # label 3
Lbl3:

    # block (4)
    # livenow=00000111110
    # if_gt e, f, label 1
    lw $t0, _e
    lw $t1, _f
    bgt $t0, $t1, Lbl1

# block 5 
# def = 00000000000;
# use = 00000000000;
# in  = 00000111110;
# out = 00000111110;
    # -LEADER- block (5)
    # livenow=00000111110
    # goto label 10
    j Lbl10

# block 6 
# def = 00000000000;
# use = 00000110000;
# in  = 00000111110;
# out = 00000011110;
    # -LEADER- block (6)
    # livenow=00000011110
    # label 10
Lbl10:

    # block (6)
    # livenow=00000011110
    # if_gt f, g, label 1
    lw $t0, _f
    lw $t1, _g
    bgt $t0, $t1, Lbl1

# block 7 
# def = 00000000000;
# use = 00000000000;
# in  = 00000011110;
# out = 00000011110;
    # -LEADER- block (7)
    # livenow=00000011110
    # goto label 9
    j Lbl9

# block 8 
# def = 00000000000;
# use = 00000011000;
# in  = 00000011110;
# out = 00000001110;
    # -LEADER- block (8)
    # livenow=00000001110
    # label 9
Lbl9:

    # block (8)
    # livenow=00000001110
    # if_gt g, h, label 1
    lw $t0, _g
    lw $t1, _h
    bgt $t0, $t1, Lbl1

# block 9 
# def = 00000000000;
# use = 00000000000;
# in  = 00000001110;
# out = 00000001110;
    # -LEADER- block (9)
    # livenow=00000001110
    # goto label 8
    j Lbl8

# block 10 
# def = 00000000000;
# use = 00000001100;
# in  = 00000001110;
# out = 00000000110;
    # -LEADER- block (10)
    # livenow=00000000110
    # label 8
Lbl8:

    # block (10)
    # livenow=00000000110
    # if_gt h, i, label 1
    lw $t0, _h
    lw $t1, _i
    bgt $t0, $t1, Lbl1

# block 11 
# def = 00000000000;
# use = 00000000000;
# in  = 00000000110;
# out = 00000000110;
    # -LEADER- block (11)
    # livenow=00000000110
    # goto label 7
    j Lbl7

# block 12 
# def = 00000000000;
# use = 00000000110;
# in  = 00000000110;
# out = 00000000000;
    # -LEADER- block (12)
    # livenow=00000000000
    # label 7
Lbl7:

    # block (12)
    # livenow=00000000000
    # if_gt i, j, label 1
    lw $t0, _i
    lw $t1, _j
    bgt $t0, $t1, Lbl1

# block 13 
# def = 00000000000;
# use = 00000000000;
# in  = 00000000000;
# out = 00000000000;
    # -LEADER- block (13)
    # livenow=00000000000
    # goto label 0
    j Lbl0

# block 14 
# def = 00000000001;
# use = 00000000000;
# in  = 00000000000;
# out = 00000000001;
    # -LEADER- block (14)
    # livenow=00000000001
    # label 0
Lbl0:

    # block (14)
    # livenow=00000000001
    # move 1111, res
    li $t0, 1111
    sw $t0, _res

    # block (14)
    # livenow=00000000001
    # goto label 2
    j Lbl2

# block 15 
# def = 00000000001;
# use = 00000000000;
# in  = 00000000000;
# out = 00000000001;
    # -LEADER- block (15)
    # livenow=00000000001
    # label 1
Lbl1:

    # block (15)
    # livenow=00000000001
    # move 2222, res
    li $t0, 2222
    sw $t0, _res

# block 16 
# def = 00000000000;
# use = 00000000001;
# in  = 00000000001;
# out = 00000000000;
    # -LEADER- block (16)
    # livenow=00000000000
    # label 2
Lbl2:

    # block (16)
    # livenow=00000000000
    # param res
    lw $t0, _res
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (16)
    # livenow=00000000000
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (16)
    # livenow=00000000000
    # leave main

    # block (16)
    # livenow=00000000000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (16)
    # livenow=00000000000
    # leave main

    # block (16)
    # livenow=00000000000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

# end function main


.data
.align 2
.align 2
_res:  .space 4
.align 2
_a:  .space 4
.align 2
_b:  .space 4
.align 2
_c:  .space 4
.align 2
_d:  .space 4
.align 2
_e:  .space 4
.align 2
_f:  .space 4
.align 2
_g:  .space 4
.align 2
_h:  .space 4
.align 2
_i:  .space 4
.align 2
_j:  .space 4

.align 2
.data
__nl: .asciiz "\n"
.align 2
.text
# println: print out an integer followed by a newline
 _println:
    li $v0, 1
    lw $a0, 0($sp)
    syscall
    li $v0, 4
    la $a0, __nl
    syscall
    jr $ra

# jump to _main, where user code starts, at start of execution
main:
    j _main

