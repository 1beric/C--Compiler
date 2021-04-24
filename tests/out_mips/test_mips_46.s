#	LIVERANGE: EDGE tmp$2(1) -> tmp$1(2)
#	NODE u(0) COST - 5.000000, DEGREES - 0
#	NODE tmp$2(1) COST - 1.000000, DEGREES - 0
#	NODE tmp$1(2) COST - 0.500000, DEGREES - 0
#	NODE tmp$1(2) IN REG $s1
#	NODE tmp$2(1) IN REG $s0
.text
# function f
# formals: u (loc: 8); 
# locals: tmp$0 (loc: -4); tmp$1 (loc: -8); tmp$2 (loc: -12); tmp$3 (loc: -16); tmp$4 (loc: -20); 
# space for locals: 20 bytes
#
_f:
# block 0 
# def = 000;
# use = 100;
# in  = 101;
# out = 101;
    # -LEADER- block (0)
    # livenow=101
    # enter f
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -20($sp)   # allocate stack frame
    move $t4, $s0
    move $t5, $s1
    move $t6, $s2
    move $t7, $s3

    # block (0)
    # livenow=101
    # if_ne u, 0, label 1
    lw $t0, 8($fp)	# u
    li $t1, 0
    bne $t0, $t1, Lbl1

# block 1 
# def = 000;
# use = 000;
# in  = 000;
# out = 000;
    # -LEADER- block (1)
    # livenow=000
    # label 0
Lbl0:

    # block (1)
    # livenow=000
    # leave f
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (1)
    # livenow=000
    # ret 1
    li $v0, 1
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (1)
    # livenow=000
    # goto label 2
    j Lbl2

# block 2 
# def = 010;
# use = 101;
# in  = 101;
# out = 000;
    # -LEADER- block (2)
    # livenow=101
    # label 1
Lbl1:

    # block (2)
    # livenow=101
    # param u
    lw $t0, 8($fp)	# u
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (2)
    # livenow=101
    # call incr, 1
    jal _incr
    la $sp, 4($sp)

    # block (2)
    # livenow=101
    # sub u, 1, tmp$2
    lw $t0, 8($fp)	# u
    li $t1, 1
    sub $t2, $t0, $t1
    move $s0, $t2	# tmp$2

    # block (2)
    # livenow=011
    # param tmp$2
    move $t0, $s0	# tmp$2
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (2)
    # livenow=001
    # call f, 1
    jal _f
    la $sp, 4($sp)

    # block (2)
    # livenow=001
    # retrieve tmp$4
    sw $v0, -20($fp)	# tmp$4, -1

    # block (2)
    # livenow=001
    # leave f
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (2)
    # livenow=001
    # ret tmp$4
    lw $v0, -20($fp)	# tmp$4
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

# block 3 
# def = 000;
# use = 000;
# in  = 000;
# out = 000;
    # -LEADER- block (3)
    # livenow=000
    # label 2
Lbl2:

    # block (3)
    # livenow=000
    # leave f
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (3)
    # livenow=000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (3)
    # livenow=000
    # leave f
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (3)
    # livenow=000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

# end function f

#	NODE x(0) COST - 2.000000, DEGREES - 0
#	NODE u(1) COST - 3.000000, DEGREES - 0
#	NODE tmp$5(2) COST - 1.000000, DEGREES - 0
#	NODE tmp$5(2) IN REG $s0
#	NODE tmp$5(2) IN REG $s0
.text
# function incr
# formals: x (loc: 8); 
# locals: tmp$5 (loc: -4); 
# space for locals: 4 bytes
#
_incr:
# block 4 
# def = 001;
# use = 110;
# in  = 110;
# out = 000;
    # -LEADER- block (4)
    # livenow=100
    # enter incr
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -4($sp)   # allocate stack frame
    move $t4, $s0
    move $t5, $s1
    move $t6, $s2
    move $t7, $s3

    # block (4)
    # livenow=100
    # add x, u, tmp$5
    lw $t0, 8($fp)	# x
    lw $t1, _u
    add $t2, $t0, $t1
    move $s0, $t2	# tmp$5

    # block (4)
    # livenow=001
    # move tmp$5, u
    move $t0, $s0	# tmp$5
    sw $t0, _u

    # block (4)
    # livenow=000
    # leave incr
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (4)
    # livenow=000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (4)
    # livenow=000
    # leave incr
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (4)
    # livenow=000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

# end function incr

#	LIVERANGE: EDGE tmp$7(1) -> tmp$8(2)
#	NODE u(0) COST - 6.000000, DEGREES - 0
#	NODE tmp$7(1) COST - 1.000000, DEGREES - 0
#	NODE tmp$8(2) COST - 1.000000, DEGREES - 0
#	NODE x(3) COST - 5.000000, DEGREES - 0
#	NODE tmp$8(2) IN REG $s0
#	NODE tmp$7(1) IN REG $s1
#	NODE tmp$8(2) IN REG $s0
#	NODE tmp$7(1) IN REG $s1
#	NODE x(3) IN REG $s0
#	NODE tmp$8(2) IN REG $s0
#	NODE tmp$7(1) IN REG $s1
#	NODE tmp$8(2) IN REG $s0
.text
# function main
# formals: 
# locals: x (loc: -4); tmp$6 (loc: -8); tmp$7 (loc: -12); tmp$8 (loc: -16); tmp$9 (loc: -20); 
# space for locals: 20 bytes
#
_main:
# block 5 
# def = 1101;
# use = 0010;
# in  = 0010;
# out = 0000;
    # -LEADER- block (5)
    # livenow=0010
    # enter main
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -20($sp)   # allocate stack frame
    move $t4, $s0
    move $t5, $s1
    move $t6, $s2
    move $t7, $s3

    # block (5)
    # livenow=0010
    # move 1, u
    li $t0, 1
    sw $t0, _u

    # block (5)
    # livenow=0010
    # move 6, tmp$7
    li $t0, 6
    move $s1, $t0 	# tmp$7

    # block (5)
    # livenow=0010
    # param 6
    li $t0, 6
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (5)
    # livenow=0010
    # call f, 1
    jal _f
    la $sp, 4($sp)

    # block (5)
    # livenow=0010
    # retrieve tmp$8
    move $s0, $v0	# tmp$8

    # block (5)
    # livenow=0010
    # add u, tmp$8, tmp$9
    lw $t0, _u
    move $t1, $s0	# tmp$8
    add $t2, $t0, $t1
    sw $t2, -20($fp)	# tmp$9, -1

    # block (5)
    # livenow=0001
    # param tmp$9
    lw $t0, -20($fp)	# tmp$9
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (5)
    # livenow=0000
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (5)
    # livenow=0000
    # leave main
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (5)
    # livenow=0000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (5)
    # livenow=0000
    # leave main
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (5)
    # livenow=0000
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
_u:  .space 4

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

