#	LIVERANGE: EDGE tmp$1(6) -> a(7)
#	LIVERANGE: EDGE tmp$2(4) -> b(5)
#	LIVERANGE: EDGE tmp$2(4) -> a(7)
#	LIVERANGE: EDGE tmp$3(2) -> c(3)
#	LIVERANGE: EDGE tmp$3(2) -> b(5)
#	LIVERANGE: EDGE tmp$3(2) -> a(7)
#	NODE tmp$3(2) COST - 2.000000, COST/DEG - 1.000000
#	NODE c(3) COST - 2.000000, COST/DEG - 2.000000
#	NODE tmp$2(4) COST - 2.000000, COST/DEG - 1.000000
#	NODE b(5) COST - 2.000000, COST/DEG - 1.000000
#	NODE tmp$1(6) COST - 2.000000, COST/DEG - 2.000000
#	NODE a(7) COST - 2.000000, COST/DEG - 1.000000
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

    # block (0)
    # livenow=110101010
    # mul d, e, tmp$3
    lw $t0, 20($fp)	# d
    lw $t1, 24($fp)	# e
    mul $t2, $t0, $t1
    sw $t2, -16($fp)	# tmp$3

    # block (0)
    # livenow=001101010
    # add c, tmp$3, tmp$2
    lw $t0, 16($fp)	# c
    lw $t1, -16($fp)	# tmp$3
    add $t2, $t0, $t1
    sw $t2, -12($fp)	# tmp$2

    # block (0)
    # livenow=000011010
    # mul b, tmp$2, tmp$1
    lw $t0, 12($fp)	# b
    lw $t1, -12($fp)	# tmp$2
    mul $t2, $t0, $t1
    sw $t2, -8($fp)	# tmp$1

    # block (0)
    # livenow=000000110
    # add a, tmp$1, tmp$0
    lw $t0, 8($fp)	# a
    lw $t1, -8($fp)	# tmp$1
    add $t2, $t0, $t1
    sw $t2, -4($fp)	# tmp$0

    # block (0)
    # livenow=000000001
    # leave f

    # block (0)
    # livenow=000000001
    # ret tmp$0
    lw $v0, -4($fp)	# tmp$0
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (0)
    # livenow=000000000
    # leave f

    # block (0)
    # livenow=000000000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

# end function f

