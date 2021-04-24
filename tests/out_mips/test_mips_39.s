#	LIVERANGE: EDGE tmp$1(2) -> z(3)
#	NODE x(0) COST - 2.000000, DEGREES - 0
#	NODE y(1) COST - 2.000000, DEGREES - 0
#	NODE tmp$1(2) COST - 2.000000, DEGREES - 0
#	NODE z(3) COST - 2.000000, DEGREES - 0
#	NODE tmp$0(4) COST - 1.000000, DEGREES - 0
#	NODE tmp$0(4) IN REG $s0
#	NODE tmp$1(2) IN REG $s0
.text
# function f
# formals: x (loc: 8); y (loc: 12); z (loc: 16); 
# locals: tmp$0 (loc: -4); tmp$1 (loc: -8); 
# space for locals: 8 bytes
#
_f:
# block 0 
# def = 00101;
# use = 11010;
# in  = 11010;
# out = 00000;
    # -LEADER- block (0)
    # livenow=11010
    # enter f
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -8($sp)   # allocate stack frame
    move $t4, $s0
    move $t5, $s1
    move $t6, $s2
    move $t7, $s3

    # block (0)
    # livenow=11010
    # add x, y, tmp$1
    lb $t0, 8($fp)	# x
    lb $t1, 12($fp)	# y
    add $t2, $t0, $t1
    move $s0, $t2	# tmp$1

    # block (0)
    # livenow=00110
    # add tmp$1, z, tmp$0
    move $t0, $s0	# tmp$1
    lb $t1, 16($fp)	# z
    add $t2, $t0, $t1
    move $s0, $t2	# tmp$0

    # block (0)
    # livenow=00001
    # leave f
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (0)
    # livenow=00001
    # ret tmp$0
    move $v0, $s0	# tmp$0
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (0)
    # livenow=00000
    # leave f
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (0)
    # livenow=00000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

# end function f

#	NODE tmp$2(0) COST - 1.000000, DEGREES - 0
#	NODE x(4) IN REG $s0
#	NODE tmp$4(2) IN REG $s0
#	NODE tmp$3(1) IN REG $s0
#	NODE tmp$2(0) IN REG $s0
#	NODE tmp$2(0) IN REG $s0
#	NODE x(4) IN REG $s0
#	NODE tmp$4(2) IN REG $s0
.text
# function main
# formals: 
# locals: x (loc: -4); tmp$2 (loc: -8); tmp$3 (loc: -12); tmp$4 (loc: -16); tmp$5 (loc: -20); 
# space for locals: 20 bytes
#
_main:
# block 1 
# def = 0;
# use = 1;
# in  = 1;
# out = 0;
    # -LEADER- block (1)
    # livenow=1
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

    # block (1)
    # livenow=1
    # param 0
    li $t0, 0
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (1)
    # livenow=1
    # param 222
    li $t0, 222
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (1)
    # livenow=1
    # param 111
    li $t0, 111
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (1)
    # livenow=1
    # call f, 3
    jal _f
    la $sp, 12($sp)

    # block (1)
    # livenow=1
    # retrieve tmp$5
    sw $v0, -20($fp)	# tmp$5, -1

    # block (1)
    # livenow=1
    # param tmp$5
    lw $t0, -20($fp)	# tmp$5
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (1)
    # livenow=0
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (1)
    # livenow=0
    # leave main
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (1)
    # livenow=0
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (1)
    # livenow=0
    # leave main
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (1)
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

