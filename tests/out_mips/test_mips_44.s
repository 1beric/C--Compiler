.text
# function acc
# formals: x (loc: 8); 
# locals: tmp$0 (loc: -4); 
# space for locals: 4 bytes
#
_acc:
# block 0 
# def = 001;
# use = 110;
# in  = 110;
# out = 000;
    # -LEADER- block (0)
    # livenow=010
    # enter acc
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -4($sp)   # allocate stack frame

    # block (0)
    # livenow=010
    # mul y, x, tmp$0
    lw $t0, _y
    lw $t1, 8($fp)	# x
    mul $t2, $t0, $t1
    sw $t2, -4($fp)	# tmp$0

    # block (0)
    # livenow=001
    # move tmp$0, y
    lw $t0, -4($fp)	# tmp$0
    sw $t0, _y

    # block (0)
    # livenow=000
    # leave acc

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
    # leave acc

    # block (0)
    # livenow=000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

# end function acc

#	LIVERANGE: EDGE n(2) -> y(1)
#	LIVERANGE: EDGE tmp$1(0) -> y(1)
#	LIVERANGE: EDGE tmp$3(3) -> y(1)
#	NODE tmp$1(0) COST - 1.000000, COST/DEG - 1.000000
#	NODE y(1) COST - 5.000000, COST/DEG - 2.500000
#	NODE n(2) COST - 61.000000, COST/DEG - 61.000000
.text
# function main
# formals: 
# locals: f (loc: -4); n (loc: -8); tmp$1 (loc: -12); tmp$2 (loc: -16); tmp$3 (loc: -20); tmp$4 (loc: -24); tmp$5 (loc: -28); 
# space for locals: 28 bytes
#
_main:
# block 1 
# def = 1110;
# use = 0000;
# in  = 0000;
# out = 0110;
    # -LEADER- block (1)
    # livenow=0100
    # enter main
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -28($sp)   # allocate stack frame

    # block (1)
    # livenow=0100
    # move 1, tmp$1
    li $t0, 1
    sw $t0, -12($fp)	# tmp$1

    # block (1)
    # livenow=0100
    # move 1, y
    li $t0, 1
    sw $t0, _y

    # block (1)
    # livenow=0100
    # move 7, n
    li $t0, 7
    sw $t0, -8($fp)	# n

# block 2 
# def = 0000;
# use = 0010;
# in  = 0110;
# out = 0110;
    # -LEADER- block (2)
    # livenow=0110
    # label 0
Lbl0:

    # block (2)
    # livenow=0110
    # if_le n, 0, label 2
    lw $t0, -8($fp)	# n
    li $t1, 0
    ble $t0, $t1, Lbl2

# block 3 
# def = 0001;
# use = 0010;
# in  = 0110;
# out = 0110;
    # -LEADER- block (3)
    # livenow=0110
    # label 1
Lbl1:

    # block (3)
    # livenow=0110
    # param n
    lw $t0, -8($fp)	# n
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (3)
    # livenow=0110
    # call acc, 1
    jal _acc
    la $sp, 4($sp)

    # block (3)
    # livenow=0110
    # sub n, 1, tmp$4
    lw $t0, -8($fp)	# n
    li $t1, 1
    sub $t2, $t0, $t1
    sw $t2, -24($fp)	# tmp$4

    # block (3)
    # livenow=0101
    # move tmp$4, n
    lw $t0, -24($fp)	# tmp$4
    sw $t0, -8($fp)	# n

    # block (3)
    # livenow=0110
    # goto label 0
    j Lbl0

# block 4 
# def = 0000;
# use = 0100;
# in  = 0100;
# out = 0000;
    # -LEADER- block (4)
    # livenow=0000
    # label 2
Lbl2:

    # block (4)
    # livenow=0000
    # param y
    lw $t0, _y
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (4)
    # livenow=0000
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (4)
    # livenow=0000
    # leave main

    # block (4)
    # livenow=0000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (4)
    # livenow=0000
    # leave main

    # block (4)
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

