#	LIVERANGE: EDGE tmp$3(1) -> n(0)
#	LIVERANGE: EDGE tmp$3(1) -> tmp$1(2)
#	NODE n(0) COST - 6.000000, DEGREES - 1
#	NODE tmp$3(1) COST - 1.000000, DEGREES - 1
#	NODE tmp$1(2) COST - 0.500000, DEGREES - 0
#	NODE tmp$2(3) COST - 1.000000, DEGREES - 0
#	NODE tmp$2(3) IN REG $s0
#	NODE tmp$1(2) IN REG $s0
#	NODE tmp$3(1) IN REG $s1
#	NODE n(0) IN REG $s0
.text
# function fact
# formals: n (loc: 8); 
# locals: tmp$0 (loc: -4); tmp$1 (loc: -8); tmp$2 (loc: -12); tmp$3 (loc: -16); tmp$4 (loc: -20); tmp$5 (loc: -24); 
# space for locals: 24 bytes
#
_fact:
# block 0 
# def = 0000;
# use = 1000;
# in  = 1010;
# out = 1010;
    # -LEADER- block (0)
    # livenow=1010
    # enter fact
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -24($sp)   # allocate stack frame

    # block (0)
    # livenow=1010
    # if_ne n, 0, label 1
    lw $t0, 8($fp)	# n
    li $t1, 0
    bne $t0, $t1, Lbl1

# block 1 
# def = 0000;
# use = 0000;
# in  = 0000;
# out = 0000;
    # -LEADER- block (1)
    # livenow=0000
    # label 0
Lbl0:

    # block (1)
    # livenow=0000
    # leave fact

    # block (1)
    # livenow=0000
    # ret 1
    li $v0, 1
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (1)
    # livenow=0000
    # goto label 2
    j Lbl2

# block 2 
# def = 0101;
# use = 1010;
# in  = 1010;
# out = 0000;
    # -LEADER- block (2)
    # livenow=1010
    # label 1
Lbl1:

    # block (2)
    # livenow=1010
    # sub n, 1, tmp$3
    lw $t0, 8($fp)	# n
    li $t1, 1
    sub $t2, $t0, $t1
    sw $t2, -16($fp)	# tmp$3

    # block (2)
    # livenow=1110
    # param tmp$3
    lw $t0, -16($fp)	# tmp$3
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (2)
    # livenow=1010
    # call fact, 1
    jal _fact
    la $sp, 4($sp)

    # block (2)
    # livenow=1010
    # retrieve tmp$5
    sw $v0, -24($fp)	# tmp$5

    # block (2)
    # livenow=1010
    # mul n, tmp$5, tmp$2
    lw $t0, 8($fp)	# n
    lw $t1, -24($fp)	# tmp$5
    mul $t2, $t0, $t1
    sw $t2, -12($fp)	# tmp$2

    # block (2)
    # livenow=0001
    # leave fact

    # block (2)
    # livenow=0001
    # ret tmp$2
    lw $v0, -12($fp)	# tmp$2
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

# block 3 
# def = 0000;
# use = 0000;
# in  = 0000;
# out = 0000;
    # -LEADER- block (3)
    # livenow=0000
    # label 2
Lbl2:

    # block (3)
    # livenow=0000
    # leave fact

    # block (3)
    # livenow=0000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (3)
    # livenow=0000
    # leave fact

    # block (3)
    # livenow=0000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

# end function fact

#	NODE tmp$6(0) COST - 1.000000, DEGREES - 0
#	NODE x(2) IN REG $s0
#	NODE tmp$6(0) IN REG $s0
#	NODE tmp$6(0) IN REG $s0
#	NODE x(2) IN REG $s0
.text
# function main
# formals: 
# locals: x (loc: -4); tmp$6 (loc: -8); tmp$7 (loc: -12); 
# space for locals: 12 bytes
#
_main:
# block 4 
# def = 0;
# use = 1;
# in  = 1;
# out = 0;
    # -LEADER- block (4)
    # livenow=1
    # enter main
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -12($sp)   # allocate stack frame

    # block (4)
    # livenow=1
    # param 7
    li $t0, 7
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (4)
    # livenow=1
    # call fact, 1
    jal _fact
    la $sp, 4($sp)

    # block (4)
    # livenow=1
    # retrieve tmp$7
    sw $v0, -12($fp)	# tmp$7

    # block (4)
    # livenow=1
    # param tmp$7
    lw $t0, -12($fp)	# tmp$7
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (4)
    # livenow=0
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (4)
    # livenow=0
    # leave main

    # block (4)
    # livenow=0
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (4)
    # livenow=0
    # leave main

    # block (4)
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

