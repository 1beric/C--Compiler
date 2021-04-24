#	LIVERANGE: EDGE tmp$1(6) -> a(7)
#	LIVERANGE: EDGE tmp$2(4) -> b(5)
#	LIVERANGE: EDGE tmp$2(4) -> a(7)
#	LIVERANGE: EDGE tmp$3(2) -> c(3)
#	LIVERANGE: EDGE tmp$3(2) -> b(5)
#	LIVERANGE: EDGE tmp$3(2) -> a(7)
#	NODE d(0) COST - 2.000000, DEGREES - 0
#	NODE e(1) COST - 2.000000, DEGREES - 0
#	NODE tmp$3(2) COST - 2.000000, DEGREES - 2
#	NODE c(3) COST - 2.000000, DEGREES - 1
#	NODE tmp$2(4) COST - 2.000000, DEGREES - 2
#	NODE b(5) COST - 2.000000, DEGREES - 2
#	NODE tmp$1(6) COST - 2.000000, DEGREES - 1
#	NODE a(7) COST - 2.000000, DEGREES - 2
#	NODE tmp$0(8) COST - 1.000000, DEGREES - 0
#	NODE tmp$0(8) IN REG $s0
#	NODE tmp$1(6) IN REG $s0
#	NODE tmp$2(4) IN REG $s0
#	NODE tmp$3(2) IN REG $s0
.text
# function f
# formals: a (loc: 8); b (loc: 12); c (loc: 16); d (loc: 20); e (loc: 24); 
# locals: tmp$0 (loc: -4); tmp$1 (loc: -8); tmp$2 (loc: -12); tmp$3 (loc: -16); 
# space for locals: 16 bytes
#
_f:
# block 0 
# def = 001010101;
# use = 110101010;
# in  = 110101010;
# out = 000000000;
    # -LEADER- block (0)
    # livenow=110101010
    # enter f
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -16($sp)   # allocate stack frame
    move $t4, $s0
    move $t5, $s1
    move $t6, $s2
    move $t7, $s3

    # block (0)
    # livenow=110101010
    # mul d, e, tmp$3
    lw $t0, 20($fp)	# d
    lw $t1, 24($fp)	# e
    mul $t2, $t0, $t1
    move $s0, $t2	# tmp$3

    # block (0)
    # livenow=001101010
    # add c, tmp$3, tmp$2
    lw $t0, 16($fp)	# c
    move $t1, $s0	# tmp$3
    add $t2, $t0, $t1
    move $s0, $t2	# tmp$2

    # block (0)
    # livenow=000011010
    # mul b, tmp$2, tmp$1
    lw $t0, 12($fp)	# b
    move $t1, $s0	# tmp$2
    mul $t2, $t0, $t1
    move $s0, $t2	# tmp$1

    # block (0)
    # livenow=000000110
    # add a, tmp$1, tmp$0
    lw $t0, 8($fp)	# a
    move $t1, $s0	# tmp$1
    add $t2, $t0, $t1
    move $s0, $t2	# tmp$0

    # block (0)
    # livenow=000000001
    # leave f
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (0)
    # livenow=000000001
    # ret tmp$0
    move $v0, $s0	# tmp$0
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (0)
    # livenow=000000000
    # leave f
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (0)
    # livenow=000000000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

# end function f

#	NODE tmp$4(0) COST - 1.000000, DEGREES - 0
#	NODE tmp$5(1) COST - 1.000000, DEGREES - 0
#	NODE x(6) IN REG $s0
#	NODE tmp$8(4) IN REG $s0
#	NODE tmp$7(3) IN REG $s1
#	NODE tmp$6(2) IN REG $s0
#	NODE tmp$5(1) IN REG $s0
#	NODE tmp$4(0) IN REG $s0
#	NODE tmp$5(1) IN REG $s0
#	NODE tmp$4(0) IN REG $s0
#	NODE x(6) IN REG $s0
#	NODE tmp$8(4) IN REG $s0
#	NODE tmp$6(2) IN REG $s0
.text
# function main
# formals: 
# locals: x (loc: -4); tmp$4 (loc: -8); tmp$5 (loc: -12); tmp$6 (loc: -16); tmp$7 (loc: -20); tmp$8 (loc: -24); tmp$9 (loc: -28); tmp$10 (loc: -32); 
# space for locals: 32 bytes
#
_main:
# block 1 
# def = 00;
# use = 11;
# in  = 11;
# out = 00;
    # -LEADER- block (1)
    # livenow=11
    # enter main
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -32($sp)   # allocate stack frame
    move $t4, $s0
    move $t5, $s1
    move $t6, $s2
    move $t7, $s3

    # block (1)
    # livenow=11
    # param 5
    li $t0, 5
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (1)
    # livenow=11
    # param 4
    li $t0, 4
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (1)
    # livenow=11
    # param 3
    li $t0, 3
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (1)
    # livenow=11
    # param 2
    li $t0, 2
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (1)
    # livenow=11
    # param 1
    li $t0, 1
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (1)
    # livenow=11
    # call f, 5
    jal _f
    la $sp, 20($sp)

    # block (1)
    # livenow=11
    # retrieve tmp$9
    sw $v0, -28($fp)	# tmp$9, -1

    # block (1)
    # livenow=11
    # param tmp$9
    lw $t0, -28($fp)	# tmp$9
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (1)
    # livenow=11
    # param tmp$9
    lw $t0, -28($fp)	# tmp$9
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (1)
    # livenow=11
    # param tmp$9
    lw $t0, -28($fp)	# tmp$9
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (1)
    # livenow=11
    # param tmp$9
    lw $t0, -28($fp)	# tmp$9
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (1)
    # livenow=11
    # param tmp$9
    lw $t0, -28($fp)	# tmp$9
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (1)
    # livenow=01
    # call f, 5
    jal _f
    la $sp, 20($sp)

    # block (1)
    # livenow=01
    # retrieve tmp$10
    sw $v0, -32($fp)	# tmp$10, -1

    # block (1)
    # livenow=01
    # param tmp$10
    lw $t0, -32($fp)	# tmp$10
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (1)
    # livenow=00
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (1)
    # livenow=00
    # leave main
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (1)
    # livenow=00
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (1)
    # livenow=00
    # leave main
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (1)
    # livenow=00
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

