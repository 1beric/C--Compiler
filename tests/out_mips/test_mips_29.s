.text
# function add
# formals: x (loc: 8); y (loc: 12); 
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
    # livenow=110
    # enter add
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -4($sp)   # allocate stack frame

    # block (0)
    # livenow=110
    # add x, y, tmp$0
    lw $t0, 8($fp)	# x
    lw $t1, 12($fp)	# y
    add $t2, $t0, $t1
    sw $t2, -4($fp)	# tmp$0

    # block (0)
    # livenow=001
    # leave add

    # block (0)
    # livenow=001
    # ret tmp$0
    lw $v0, -4($fp)	# tmp$0
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (0)
    # livenow=000
    # leave add

    # block (0)
    # livenow=000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

# end function add

