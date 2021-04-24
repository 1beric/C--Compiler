#	NODE a(0) COST - 3.031250, DEGREES - 0
#	NODE b(1) COST - 4.000000, DEGREES - 0
#	NODE c(2) COST - 2.500000, DEGREES - 0
#	NODE d(3) COST - 1.750000, DEGREES - 0
#	NODE e(4) COST - 1.375000, DEGREES - 0
#	NODE f(5) COST - 1.187500, DEGREES - 0
#	NODE g(6) COST - 0.093750, DEGREES - 0
#	NODE res(7) COST - 2.992188, DEGREES - 0
.text
# function main
# formals: 
# locals: tmp$0 (loc: -4); tmp$1 (loc: -8); tmp$2 (loc: -12); tmp$3 (loc: -16); tmp$4 (loc: -20); tmp$5 (loc: -24); tmp$6 (loc: -28); tmp$7 (loc: -32); tmp$8 (loc: -36); tmp$9 (loc: -40); tmp$10 (loc: -44); tmp$11 (loc: -48); tmp$12 (loc: -52); tmp$13 (loc: -56); 
# space for locals: 56 bytes
#
_main:
# block 0 
# def = 11111100;
# use = 00000000;
# in  = 00000010;
# out = 11111110;
    # -LEADER- block (0)
    # livenow=11111110
    # enter main
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -56($sp)   # allocate stack frame

    # block (0)
    # livenow=11111110
    # move 1, a
    li $t0, 1
    sw $t0, _a

    # block (0)
    # livenow=11111110
    # move 2, b
    li $t0, 2
    sw $t0, _b

    # block (0)
    # livenow=11111110
    # move 3, c
    li $t0, 3
    sw $t0, _c

    # block (0)
    # livenow=11111110
    # move 4, d
    li $t0, 4
    sw $t0, _d

    # block (0)
    # livenow=11111110
    # move 5, e
    li $t0, 5
    sw $t0, _e

    # block (0)
    # livenow=11111110
    # move 6, f
    li $t0, 6
    sw $t0, _f

    # block (0)
    # livenow=11111110
    # if_ge 1, 2, label 1
    li $t0, 1
    li $t1, 2
    bge $t0, $t1, Lbl1

# block 1 
# def = 00000000;
# use = 01100000;
# in  = 11111110;
# out = 10111110;
    # -LEADER- block (1)
    # livenow=10111110
    # label 0
Lbl0:

    # block (1)
    # livenow=10111110
    # if_lt b, c, label 4
    lw $t0, _b
    lw $t1, _c
    blt $t0, $t1, Lbl4

# block 2 
# def = 00000000;
# use = 00110000;
# in  = 10111110;
# out = 10011110;
    # -LEADER- block (2)
    # livenow=10011110
    # label 3
Lbl3:

    # block (2)
    # livenow=10011110
    # if_ge c, d, label 7
    lw $t0, _c
    lw $t1, _d
    bge $t0, $t1, Lbl7

# block 3 
# def = 00000000;
# use = 00011000;
# in  = 10011110;
# out = 10001110;
    # -LEADER- block (3)
    # livenow=10001110
    # label 6
Lbl6:

    # block (3)
    # livenow=10001110
    # if_eq d, e, label 10
    lw $t0, _d
    lw $t1, _e
    beq $t0, $t1, Lbl10

# block 4 
# def = 00000000;
# use = 00000000;
# in  = 10001110;
# out = 10001110;
    # -LEADER- block (4)
    # livenow=10001110
    # goto label 9
    j Lbl9

# block 5 
# def = 00000000;
# use = 00001100;
# in  = 10001110;
# out = 10000110;
    # -LEADER- block (5)
    # livenow=10000110
    # label 9
Lbl9:

    # block (5)
    # livenow=10000110
    # if_ge e, f, label 13
    lw $t0, _e
    lw $t1, _f
    bge $t0, $t1, Lbl13

# block 6 
# def = 00000000;
# use = 00000110;
# in  = 10000110;
# out = 10000010;
    # -LEADER- block (6)
    # livenow=10000010
    # label 12
Lbl12:

    # block (6)
    # livenow=10000010
    # if_ge g, f, label 16
    lw $t0, _g
    lw $t1, _f
    bge $t0, $t1, Lbl16

# block 7 
# def = 00000000;
# use = 10000010;
# in  = 10000010;
# out = 00000000;
    # -LEADER- block (7)
    # livenow=00000000
    # label 15
Lbl15:

    # block (7)
    # livenow=00000000
    # if_ge g, a, label 19
    lw $t0, _g
    lw $t1, _a
    bge $t0, $t1, Lbl19

# block 8 
# def = 00000001;
# use = 00000000;
# in  = 00000000;
# out = 00000001;
    # -LEADER- block (8)
    # livenow=00000001
    # label 18
Lbl18:

    # block (8)
    # livenow=00000001
    # move 1111, res
    li $t0, 1111
    sw $t0, _res

    # block (8)
    # livenow=00000001
    # goto label 20
    j Lbl20

# block 9 
# def = 00000001;
# use = 00000000;
# in  = 00000000;
# out = 00000001;
    # -LEADER- block (9)
    # livenow=00000001
    # label 19
Lbl19:

    # block (9)
    # livenow=00000001
    # move 2222, res
    li $t0, 2222
    sw $t0, _res

# block 10 
# def = 00000000;
# use = 00000000;
# in  = 00000001;
# out = 00000001;
    # -LEADER- block (10)
    # livenow=00000001
    # label 20
Lbl20:

    # block (10)
    # livenow=00000001
    # goto label 17
    j Lbl17

# block 11 
# def = 00000001;
# use = 00000000;
# in  = 00000000;
# out = 00000001;
    # -LEADER- block (11)
    # livenow=00000001
    # label 16
Lbl16:

    # block (11)
    # livenow=00000001
    # move 3333, res
    li $t0, 3333
    sw $t0, _res

# block 12 
# def = 00000000;
# use = 00000000;
# in  = 00000001;
# out = 00000001;
    # -LEADER- block (12)
    # livenow=00000001
    # label 17
Lbl17:

    # block (12)
    # livenow=00000001
    # goto label 14
    j Lbl14

# block 13 
# def = 00000001;
# use = 00000000;
# in  = 00000000;
# out = 00000001;
    # -LEADER- block (13)
    # livenow=00000001
    # label 13
Lbl13:

    # block (13)
    # livenow=00000001
    # move 4444, res
    li $t0, 4444
    sw $t0, _res

# block 14 
# def = 00000000;
# use = 00000000;
# in  = 00000001;
# out = 00000001;
    # -LEADER- block (14)
    # livenow=00000001
    # label 14
Lbl14:

    # block (14)
    # livenow=00000001
    # goto label 11
    j Lbl11

# block 15 
# def = 00000001;
# use = 00000000;
# in  = 00000000;
# out = 00000001;
    # -LEADER- block (15)
    # livenow=00000001
    # label 10
Lbl10:

    # block (15)
    # livenow=00000001
    # move 5555, res
    li $t0, 5555
    sw $t0, _res

# block 16 
# def = 00000000;
# use = 00000000;
# in  = 00000001;
# out = 00000001;
    # -LEADER- block (16)
    # livenow=00000001
    # label 11
Lbl11:

    # block (16)
    # livenow=00000001
    # goto label 8
    j Lbl8

# block 17 
# def = 00000001;
# use = 00000000;
# in  = 00000000;
# out = 00000001;
    # -LEADER- block (17)
    # livenow=00000001
    # label 7
Lbl7:

    # block (17)
    # livenow=00000001
    # move 6666, res
    li $t0, 6666
    sw $t0, _res

# block 18 
# def = 00000000;
# use = 00000000;
# in  = 00000001;
# out = 00000001;
    # -LEADER- block (18)
    # livenow=00000001
    # label 8
Lbl8:

    # block (18)
    # livenow=00000001
    # goto label 5
    j Lbl5

# block 19 
# def = 00000001;
# use = 00000000;
# in  = 00000000;
# out = 00000001;
    # -LEADER- block (19)
    # livenow=00000001
    # label 4
Lbl4:

    # block (19)
    # livenow=00000001
    # move 7777, res
    li $t0, 7777
    sw $t0, _res

# block 20 
# def = 00000000;
# use = 00000000;
# in  = 00000001;
# out = 00000001;
    # -LEADER- block (20)
    # livenow=00000001
    # label 5
Lbl5:

    # block (20)
    # livenow=00000001
    # goto label 2
    j Lbl2

# block 21 
# def = 00000001;
# use = 00000000;
# in  = 00000000;
# out = 00000001;
    # -LEADER- block (21)
    # livenow=00000001
    # label 1
Lbl1:

    # block (21)
    # livenow=00000001
    # move 8888, res
    li $t0, 8888
    sw $t0, _res

# block 22 
# def = 00000000;
# use = 00000001;
# in  = 00000001;
# out = 00000000;
    # -LEADER- block (22)
    # livenow=00000000
    # label 2
Lbl2:

    # block (22)
    # livenow=00000000
    # param res
    lw $t0, _res
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (22)
    # livenow=00000000
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (22)
    # livenow=00000000
    # leave main

    # block (22)
    # livenow=00000000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (22)
    # livenow=00000000
    # leave main

    # block (22)
    # livenow=00000000
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

