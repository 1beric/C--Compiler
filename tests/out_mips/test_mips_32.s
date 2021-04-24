#	LIVERANGE: EDGE tmp$1(2) -> tmp$4(3)
#	LIVERANGE: EDGE tmp$1(2) -> tmp$8(4)
#	LIVERANGE: EDGE tmp$3(1) -> n(0)
#	LIVERANGE: EDGE tmp$3(1) -> tmp$4(3)
#	LIVERANGE: EDGE tmp$3(1) -> tmp$8(4)
#	NODE n(0) COST - 6.000000, DEGREES - 1
#	NODE tmp$3(1) COST - 1.000000, DEGREES - 2
#	NODE tmp$1(2) COST - 0.500000, DEGREES - 2
#	NODE tmp$4(3) COST - 2.000000, DEGREES - 2
#	NODE tmp$8(4) COST - 2.000000, DEGREES - 1
#	NODE tmp$2(5) COST - 1.000000, DEGREES - 0
#	NODE tmp$2(5) IN REG $s0
#	NODE tmp$8(4) IN REG $s2
#	NODE tmp$4(3) IN REG $s2
#	NODE tmp$1(2) IN REG $s0
#	NODE tmp$3(1) IN REG $s1
#	NODE n(0) IN REG $s0
.text
# function f
# formals: n (loc: 8); 
# locals: tmp$0 (loc: -4); tmp$1 (loc: -8); tmp$2 (loc: -12); tmp$3 (loc: -16); tmp$4 (loc: -20); tmp$5 (loc: -24); tmp$6 (loc: -28); tmp$7 (loc: -32); tmp$8 (loc: -36); 
# space for locals: 36 bytes
#
_f:
# block 0 
# def = 000000;
# use = 100000;
# in  = 100110;
# out = 100110;
    # -LEADER- block (0)
    # livenow=100110
    # enter f
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -36($sp)   # allocate stack frame

    # block (0)
    # livenow=100110
    # if_gt n, 1, label 1
    move $t0, $s0	# n
    li $t1, 1
    bgt $t0, $t1, Lbl1

# block 1 
# def = 000000;
# use = 000000;
# in  = 000000;
# out = 000000;
    # -LEADER- block (1)
    # livenow=000000
    # label 0
Lbl0:

    # block (1)
    # livenow=000000
    # leave f

    # block (1)
    # livenow=000000
    # ret 1
    li $v0, 1
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (1)
    # livenow=000000
    # goto label 2
    j Lbl2

# block 2 
# def = 011001;
# use = 100110;
# in  = 100110;
# out = 000000;
    # -LEADER- block (2)
    # livenow=100110
    # label 1
Lbl1:

    # block (2)
    # livenow=100110
    # sub n, 1, tmp$3
    move $t0, $s0	# n
    li $t1, 1
    sub $t2, $t0, $t1
    move $s1, $t2	# tmp$3

    # block (2)
    # livenow=110110
    # param tmp$3
    move $t0, $s1	# tmp$3
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (2)
    # livenow=100110
    # call g, 1
    jal _g
    la $sp, 4($sp)

    # block (2)
    # livenow=100110
    # retrieve tmp$5
    sw $v0, -24($fp)	# tmp$5, -1

    # block (2)
    # livenow=100110
    # sub n, 2, tmp$6
    move $t0, $s0	# n
    li $t1, 2
    sub $t2, $t0, $t1
    sw $t2, -28($fp)	# tmp$6, -1

    # block (2)
    # livenow=001110
    # param tmp$6
    lw $t0, -28($fp)	# tmp$6
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (2)
    # livenow=000110
    # call f, 1
    jal _f
    la $sp, 4($sp)

    # block (2)
    # livenow=000110
    # retrieve tmp$8
    move $s2, $v0	# tmp$8

    # block (2)
    # livenow=000110
    # add tmp$5, tmp$8, tmp$2
    lw $t0, -24($fp)	# tmp$5
    move $t1, $s2	# tmp$8
    add $t2, $t0, $t1
    move $s0, $t2	# tmp$2

    # block (2)
    # livenow=000001
    # leave f

    # block (2)
    # livenow=000001
    # ret tmp$2
    move $v0, $s0	# tmp$2
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

# block 3 
# def = 000000;
# use = 000000;
# in  = 000000;
# out = 000000;
    # -LEADER- block (3)
    # livenow=000000
    # label 2
Lbl2:

    # block (3)
    # livenow=000000
    # leave f

    # block (3)
    # livenow=000000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (3)
    # livenow=000000
    # leave f

    # block (3)
    # livenow=000000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

# end function f

#	LIVERANGE: EDGE tmp$10(2) -> tmp$13(3)
#	LIVERANGE: EDGE tmp$10(2) -> tmp$17(4)
#	LIVERANGE: EDGE tmp$12(1) -> n(0)
#	LIVERANGE: EDGE tmp$12(1) -> tmp$13(3)
#	LIVERANGE: EDGE tmp$12(1) -> tmp$17(4)
#	NODE n(0) COST - 6.000000, DEGREES - 1
#	NODE tmp$12(1) COST - 1.000000, DEGREES - 2
#	NODE tmp$10(2) COST - 0.500000, DEGREES - 2
#	NODE tmp$13(3) COST - 2.000000, DEGREES - 2
#	NODE tmp$17(4) COST - 2.000000, DEGREES - 1
#	NODE tmp$11(5) COST - 1.000000, DEGREES - 0
#	NODE tmp$11(5) IN REG $s0
#	NODE tmp$17(4) IN REG $s2
#	NODE tmp$13(3) IN REG $s2
#	NODE tmp$10(2) IN REG $s0
#	NODE tmp$12(1) IN REG $s1
#	NODE n(0) IN REG $s0
#	NODE tmp$11(5) IN REG $s0
#	NODE tmp$17(4) IN REG $s2
#	NODE tmp$13(3) IN REG $s2
#	NODE tmp$10(2) IN REG $s0
#	NODE tmp$12(1) IN REG $s1
#	NODE n(0) IN REG $s0
#	NODE n(0) IN REG $s0
.text
# function g
# formals: n (loc: 8); 
# locals: tmp$9 (loc: -4); tmp$10 (loc: -8); tmp$11 (loc: -12); tmp$12 (loc: -16); tmp$13 (loc: -20); tmp$14 (loc: -24); tmp$15 (loc: -28); tmp$16 (loc: -32); tmp$17 (loc: -36); 
# space for locals: 36 bytes
#
_g:
# block 4 
# def = 000000;
# use = 100000;
# in  = 100110;
# out = 100110;
    # -LEADER- block (4)
    # livenow=100110
    # enter g
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -36($sp)   # allocate stack frame

    # block (4)
    # livenow=100110
    # if_gt n, 1, label 4
    move $t0, $s0	# n
    li $t1, 1
    bgt $t0, $t1, Lbl4

# block 5 
# def = 000000;
# use = 000000;
# in  = 000000;
# out = 000000;
    # -LEADER- block (5)
    # livenow=000000
    # label 3
Lbl3:

    # block (5)
    # livenow=000000
    # leave g

    # block (5)
    # livenow=000000
    # ret 1
    li $v0, 1
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (5)
    # livenow=000000
    # goto label 5
    j Lbl5

# block 6 
# def = 011001;
# use = 100110;
# in  = 100110;
# out = 000000;
    # -LEADER- block (6)
    # livenow=100110
    # label 4
Lbl4:

    # block (6)
    # livenow=100110
    # sub n, 1, tmp$12
    move $t0, $s0	# n
    li $t1, 1
    sub $t2, $t0, $t1
    move $s1, $t2	# tmp$12

    # block (6)
    # livenow=110110
    # param tmp$12
    move $t0, $s1	# tmp$12
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (6)
    # livenow=100110
    # call f, 1
    jal _f
    la $sp, 4($sp)

    # block (6)
    # livenow=100110
    # retrieve tmp$14
    sw $v0, -24($fp)	# tmp$14, -1

    # block (6)
    # livenow=100110
    # sub n, 2, tmp$15
    move $t0, $s0	# n
    li $t1, 2
    sub $t2, $t0, $t1
    sw $t2, -28($fp)	# tmp$15, -1

    # block (6)
    # livenow=001110
    # param tmp$15
    lw $t0, -28($fp)	# tmp$15
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (6)
    # livenow=000110
    # call g, 1
    jal _g
    la $sp, 4($sp)

    # block (6)
    # livenow=000110
    # retrieve tmp$17
    move $s2, $v0	# tmp$17

    # block (6)
    # livenow=000110
    # add tmp$14, tmp$17, tmp$11
    lw $t0, -24($fp)	# tmp$14
    move $t1, $s2	# tmp$17
    add $t2, $t0, $t1
    move $s0, $t2	# tmp$11

    # block (6)
    # livenow=000001
    # leave g

    # block (6)
    # livenow=000001
    # ret tmp$11
    move $v0, $s0	# tmp$11
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

# block 7 
# def = 000000;
# use = 000000;
# in  = 000000;
# out = 000000;
    # -LEADER- block (7)
    # livenow=000000
    # label 5
Lbl5:

    # block (7)
    # livenow=000000
    # leave g

    # block (7)
    # livenow=000000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (7)
    # livenow=000000
    # leave g

    # block (7)
    # livenow=000000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

# end function g

#	NODE tmp$18(0) COST - 1.000000, DEGREES - 0
#	NODE x(2) IN REG $s0
#	NODE tmp$18(0) IN REG $s0
#	NODE x(2) IN REG $s0
#	NODE tmp$18(0) IN REG $s0
#	NODE tmp$18(0) IN REG $s0
#	NODE tmp$18(0) IN REG $s0
#	NODE x(2) IN REG $s0
#	NODE tmp$18(0) IN REG $s0
.text
# function main
# formals: 
# locals: x (loc: -4); tmp$18 (loc: -8); tmp$19 (loc: -12); 
# space for locals: 12 bytes
#
_main:
# block 8 
# def = 0;
# use = 1;
# in  = 1;
# out = 0;
    # -LEADER- block (8)
    # livenow=1
    # enter main
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -12($sp)   # allocate stack frame

    # block (8)
    # livenow=1
    # param 5
    li $t0, 5
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (8)
    # livenow=1
    # call f, 1
    jal _f
    la $sp, 4($sp)

    # block (8)
    # livenow=1
    # retrieve tmp$19
    sw $v0, -12($fp)	# tmp$19, -1

    # block (8)
    # livenow=1
    # param tmp$19
    lw $t0, -12($fp)	# tmp$19
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (8)
    # livenow=0
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (8)
    # livenow=0
    # leave main

    # block (8)
    # livenow=0
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (8)
    # livenow=0
    # leave main

    # block (8)
    # livenow=0
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

