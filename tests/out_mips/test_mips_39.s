#	LIVERANGE: EDGE tmp$1(2) -> z(3)
#	NODE x(0) COST - 2.000000, DEGREES - 0
#	NODE y(1) COST - 2.000000, DEGREES - 0
#	NODE tmp$1(2) COST - 2.000000, DEGREES - 0
#	NODE z(3) COST - 2.000000, DEGREES - 0
#	NODE tmp$0(4) COST - 1.000000, DEGREES - 0
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

    # block (0)
    # livenow=11010
    # add x, y, tmp$1
    lb $t0, 8($fp)	# x
    lb $t1, 12($fp)	# y
    add $t2, $t0, $t1
    sw $t2, -8($fp)	# tmp$1

    # block (0)
    # livenow=00110
    # add tmp$1, z, tmp$0
    lw $t0, -8($fp)	# tmp$1
    lb $t1, 16($fp)	# z
    add $t2, $t0, $t1
    sw $t2, -4($fp)	# tmp$0

    # block (0)
    # livenow=00001
    # leave f

    # block (0)
    # livenow=00001
    # ret tmp$0
    lw $v0, -4($fp)	# tmp$0
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (0)
    # livenow=00000
    # leave f

    # block (0)
    # livenow=00000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

# end function f

