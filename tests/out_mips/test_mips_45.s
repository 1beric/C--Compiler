#	NODE x(0) COST - 2.000000, DEGREES - 0
#	NODE y(1) COST - 3.000000, DEGREES - 0
#	NODE tmp$0(2) COST - 1.000000, DEGREES - 0
#	NODE tmp$0(2) IN REG $s0
.text
# function add
# formals: x (loc: 8); 
# locals: tmp$0 (loc: -4); 
# space for locals: 4 bytes
#
_add:
# block 0 
# def = 001;
# use = 110;
# in  = 110;
# out = 000;
    # -LEADER- block (0)
    # livenow=100
    # enter add
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -4($sp)   # allocate stack frame
    move $t4, $s0
    move $t5, $s1
    move $t6, $s2
    move $t7, $s3

    # block (0)
    # livenow=100
    # add x, y, tmp$0
    lw $t0, 8($fp)	# x
    lw $t1, _y
    add $t2, $t0, $t1
    move $s0, $t2	# tmp$0

    # block (0)
    # livenow=001
    # move tmp$0, y
    move $t0, $s0	# tmp$0
    sw $t0, _y

    # block (0)
    # livenow=000
    # leave add
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (0)
    # livenow=000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (0)
    # livenow=000
    # leave add
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (0)
    # livenow=000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

# end function add

#	LIVERANGE: EDGE i(1) -> f(0)
#	LIVERANGE: EDGE i(1) -> f(0)
#	LIVERANGE: EDGE tmp$4(5) -> f(0)
#	LIVERANGE: EDGE tmp$3(4) -> i(1)
#	LIVERANGE: EDGE tmp$9(3) -> f(0)
#	LIVERANGE: EDGE tmp$9(3) -> i(1)
#	NODE f(0) COST - 32.000000, DEGREES - 4
#	NODE i(1) COST - 61.000000, DEGREES - 3
#	NODE y(2) COST - 33.000000, DEGREES - 0
#	NODE tmp$9(3) COST - 10.000000, DEGREES - 1
#	NODE tmp$3(4) COST - 20.000000, DEGREES - 1
#	NODE tmp$4(5) COST - 10.000000, DEGREES - 1
#	NODE i(1) IN REG $s1
#	NODE f(0) IN REG $s0
#	NODE tmp$4(5) IN REG $s1
#	NODE tmp$3(4) IN REG $s0
#	NODE tmp$9(3) IN REG $s2
#	NODE i(1) IN REG $s1
#	NODE f(0) IN REG $s0
.text
# function main
# formals: 
# locals: f (loc: -4); i (loc: -8); tmp$1 (loc: -12); tmp$2 (loc: -16); tmp$3 (loc: -20); tmp$4 (loc: -24); tmp$5 (loc: -28); tmp$6 (loc: -32); tmp$7 (loc: -36); tmp$8 (loc: -40); tmp$9 (loc: -44); tmp$10 (loc: -48); tmp$11 (loc: -52); tmp$12 (loc: -56); 
# space for locals: 56 bytes
#
_main:
# block 1 
# def = 110000;
# use = 000000;
# in  = 000000;
# out = 110000;
    # -LEADER- block (1)
    # livenow=000000
    # enter main
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -56($sp)   # allocate stack frame
    move $t4, $s0
    move $t5, $s1
    move $t6, $s2
    move $t7, $s3

    # block (1)
    # livenow=000000
    # move 1, f
    li $t0, 1
    move $s0, $t0 	# f

    # block (1)
    # livenow=100000
    # move 7, i
    li $t0, 7
    move $s1, $t0 	# i

# block 2 
# def = 000000;
# use = 010000;
# in  = 110000;
# out = 110000;
    # -LEADER- block (2)
    # livenow=110000
    # label 0
Lbl0:

    # block (2)
    # livenow=110000
    # if_le i, 0, label 2
    move $t0, $s1	# i
    li $t1, 0
    ble $t0, $t1, Lbl2

# block 3 
# def = 001111;
# use = 110000;
# in  = 110000;
# out = 110000;
    # -LEADER- block (3)
    # livenow=110000
    # label 1
Lbl1:

    # block (3)
    # livenow=110000
    # move i, y
    move $t0, $s1	# i
    sw $t0, _y

    # block (3)
    # livenow=110000
    # param 0
    li $t0, 0
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (3)
    # livenow=110000
    # call add, 1
    jal _add
    la $sp, 4($sp)

    # block (3)
    # livenow=110000
    # param 1
    li $t0, 1
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (3)
    # livenow=110000
    # call add, 1
    jal _add
    la $sp, 4($sp)

    # block (3)
    # livenow=110000
    # param 2
    li $t0, 2
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (3)
    # livenow=110000
    # call add, 1
    jal _add
    la $sp, 4($sp)

    # block (3)
    # livenow=110000
    # uminus 5, tmp$9
    li $t0, 5
    neg $t2, $t0
    move $s2, $t2	# tmp$9

    # block (3)
    # livenow=110100
    # param tmp$9
    move $t0, $s2	# tmp$9
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (3)
    # livenow=110000
    # call add, 1
    jal _add
    la $sp, 4($sp)

    # block (3)
    # livenow=110000
    # param 2
    li $t0, 2
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (3)
    # livenow=110000
    # call add, 1
    jal _add
    la $sp, 4($sp)

    # block (3)
    # livenow=110000
    # mul f, y, tmp$12
    move $t0, $s0	# f
    lw $t1, _y
    mul $t2, $t0, $t1
    sw $t2, -56($fp)	# tmp$12, -1

    # block (3)
    # livenow=010010
    # move tmp$12, f
    lw $t0, -56($fp)	# tmp$12
    move $s0, $t0 	# f

    # block (3)
    # livenow=110000
    # sub i, 1, tmp$4
    move $t0, $s1	# i
    li $t1, 1
    sub $t2, $t0, $t1
    move $s1, $t2	# tmp$4

    # block (3)
    # livenow=100001
    # move tmp$4, i
    move $t0, $s1	# tmp$4
    move $s1, $t0 	# i

    # block (3)
    # livenow=110000
    # goto label 0
    j Lbl0

# block 4 
# def = 000000;
# use = 100000;
# in  = 100000;
# out = 000000;
    # -LEADER- block (4)
    # livenow=100000
    # label 2
Lbl2:

    # block (4)
    # livenow=100000
    # param f
    move $t0, $s0	# f
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (4)
    # livenow=000000
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (4)
    # livenow=000000
    # leave main
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (4)
    # livenow=000000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (4)
    # livenow=000000
    # leave main
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (4)
    # livenow=000000
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
_y:  .space 4

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

