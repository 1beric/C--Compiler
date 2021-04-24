#	LIVERANGE: EDGE tmp$2(4) -> n(0)
#	LIVERANGE: EDGE tmp$2(4) -> s(2)
#	LIVERANGE: EDGE tmp$2(4) -> u(8)
#	LIVERANGE: EDGE tmp$1(1) -> n(0)
#	LIVERANGE: EDGE tmp$1(1) -> s(2)
#	LIVERANGE: EDGE tmp$1(1) -> u(8)
#	LIVERANGE: EDGE tmp$4(9) -> n(0)
#	LIVERANGE: EDGE tmp$7(7) -> n(0)
#	LIVERANGE: EDGE tmp$3(5) -> n(0)
#	NODE n(0) COST - 4.000000, DEGREES - 4
#	NODE tmp$1(1) COST - 1.000000, DEGREES - 3
#	NODE s(2) COST - 1.000000, DEGREES - 2
#	NODE tmp$0(3) COST - 1.000000, DEGREES - 0
#	NODE tmp$2(4) COST - 1.000000, DEGREES - 3
#	NODE tmp$3(5) COST - 2.000000, DEGREES - 0
#	NODE tmp$5(6) COST - 1.000000, DEGREES - 0
#	NODE tmp$7(7) COST - 1.000000, DEGREES - 1
#	NODE u(8) COST - 3.000000, DEGREES - 2
#	NODE tmp$4(9) COST - 1.000000, DEGREES - 1
#	NODE tmp$8(10) COST - 1.000000, DEGREES - 0
#	NODE tmp$8(10) IN REG $s0
#	NODE tmp$4(9) IN REG $s0
#	NODE tmp$7(7) IN REG $s0
#	NODE tmp$3(5) IN REG $s0
#	NODE tmp$2(4) IN REG $s0
#	NODE tmp$1(1) IN REG $s0
.text
# function f
# formals: s (loc: 8); n (loc: 12); 
# locals: tmp$0 (loc: -4); tmp$1 (loc: -8); tmp$2 (loc: -9); tmp$3 (loc: -16); tmp$4 (loc: -20); tmp$5 (loc: -24); tmp$6 (loc: -28); tmp$7 (loc: -29); tmp$8 (loc: -36); tmp$9 (loc: -40); 
# space for locals: 40 bytes
#
_f:
# block 0 
# def = 01011000000;
# use = 10100000000;
# in  = 10100000100;
# out = 10100000100;
    # -LEADER- block (0)
    # livenow=10100000100
    # enter f
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -40($sp)   # allocate stack frame
    move $t4, $s0
    move $t5, $s1
    move $t6, $s2
    move $t7, $s3

    # block (0)
    # livenow=10100000100
    # move n, tmp$1
    lw $t0, 12($fp)	# n
    move $s0, $t0 	# tmp$1

    # block (0)
    # livenow=11100000100
    # add s, tmp$1, tmp$0
    lw $t0, 8($fp)	# s
    move $t1, $s0	# tmp$1
    add $t2, $t0, $t1
    sw $t2, -4($fp)	# tmp$0, -1

    # block (0)
    # livenow=10100000100
    # move deref(tmp$0), tmp$2
    lw $t0, -4($fp)	# tmp$0
    lb $t0, 0($t0)	# deref(tmp$0)
    move $s0, $t0 	# tmp$2

    # block (0)
    # livenow=10101000100
    # if_ne tmp$2, 0, label 1
    move $t0, $s0	# tmp$2
    li $t1, 0
    bne $t0, $t1, Lbl1

# block 1 
# def = 00000000000;
# use = 00000000000;
# in  = 00000000000;
# out = 00000000000;
    # -LEADER- block (1)
    # livenow=00000000000
    # label 0
Lbl0:

    # block (1)
    # livenow=00000000000
    # leave f
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (1)
    # livenow=00000000000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (1)
    # livenow=00000000000
    # goto label 2
    j Lbl2

# block 2 
# def = 00000111011;
# use = 10100000100;
# in  = 10100000100;
# out = 00000000000;
    # -LEADER- block (2)
    # livenow=10000000000
    # label 1
Lbl1:

    # block (2)
    # livenow=10000000000
    # move n, tmp$6
    lw $t0, 12($fp)	# n
    sw $t0, -28($fp)	# tmp$6

    # block (2)
    # livenow=10000100000
    # add s, tmp$6, tmp$5
    lw $t0, 8($fp)	# s
    lw $t1, -28($fp)	# tmp$6
    add $t2, $t0, $t1
    sw $t2, -24($fp)	# tmp$5, -1

    # block (2)
    # livenow=10000000000
    # move deref(tmp$5), tmp$7
    lw $t0, -24($fp)	# tmp$5
    lb $t0, 0($t0)	# deref(tmp$5)
    move $s0, $t0 	# tmp$7

    # block (2)
    # livenow=10000001000
    # add u, tmp$7, tmp$4
    lw $t0, _u
    move $t1, $s0	# tmp$7
    add $t2, $t0, $t1
    move $s0, $t2	# tmp$4

    # block (2)
    # livenow=10000000010
    # move tmp$4, u
    move $t0, $s0	# tmp$4
    sw $t0, _u

    # block (2)
    # livenow=10000000000
    # add n, 1, tmp$8
    lw $t0, 12($fp)	# n
    li $t1, 1
    add $t2, $t0, $t1
    move $s0, $t2	# tmp$8

    # block (2)
    # livenow=00000000001
    # param tmp$8
    move $t0, $s0	# tmp$8
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (2)
    # livenow=00000000000
    # param addr(s)
    lw $t0, 8($fp)	# addr(s)
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (2)
    # livenow=00000000000
    # call f, 2
    jal _f
    la $sp, 8($sp)

# block 3 
# def = 00000000000;
# use = 00000000000;
# in  = 00000000000;
# out = 00000000000;
    # -LEADER- block (3)
    # livenow=00000000000
    # label 2
Lbl2:

    # block (3)
    # livenow=00000000000
    # leave f
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (3)
    # livenow=00000000000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (3)
    # livenow=00000000000
    # leave f
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (3)
    # livenow=00000000000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

# end function f

#	NODE _Str0(0) COST - 1.000000, DEGREES - 0
#	NODE u(1) COST - 4.000000, DEGREES - 0
.text
# function main
# formals: 
# locals: tmp$10 (loc: -4); 
# space for locals: 4 bytes
#
_main:
# block 4 
# def = 00;
# use = 11;
# in  = 11;
# out = 00;
    # -LEADER- block (4)
    # livenow=00
    # enter main
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
    # livenow=00
    # param 0
    li $t0, 0
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (4)
    # livenow=00
    # param addr(_Str0)
    la $t0, __Str0
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (4)
    # livenow=00
    # call f, 2
    jal _f
    la $sp, 8($sp)

    # block (4)
    # livenow=00
    # param u
    lw $t0, _u
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (4)
    # livenow=00
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (4)
    # livenow=00
    # leave main
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (4)
    # livenow=00
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (4)
    # livenow=00
    # leave main
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (4)
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
_u:  .space 4

__Str0: .asciiz "hello world"
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

