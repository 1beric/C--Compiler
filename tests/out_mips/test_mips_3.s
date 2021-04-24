.text
# function h
# formals: 
# locals: tmp$0 (loc: -4); 
# space for locals: 4 bytes
#
_h:
# block 0 
# def = ;
# use = ;
# in  = ;
# out = ;
    # -LEADER- block (0)
    # livenow=
    # enter h
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -4($sp)   # allocate stack frame

    # block (0)
    # livenow=
    # param 12345
    li $t0, 12345
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (0)
    # livenow=
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (0)
    # livenow=
    # leave h

    # block (0)
    # livenow=
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (0)
    # livenow=
    # leave h

    # block (0)
    # livenow=
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

# end function h

.text
# function g
# formals: 
# locals: 
# space for locals: 0 bytes
#
_g:
# block 1 
# def = ;
# use = ;
# in  = ;
# out = ;
    # -LEADER- block (1)
    # livenow=
    # enter g
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -0($sp)   # allocate stack frame

    # block (1)
    # livenow=
    # call h, 0
    jal _h
    la $sp, 0($sp)

    # block (1)
    # livenow=
    # leave g

    # block (1)
    # livenow=
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (1)
    # livenow=
    # leave g

    # block (1)
    # livenow=
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

# end function g

.text
# function f
# formals: 
# locals: 
# space for locals: 0 bytes
#
_f:
# block 2 
# def = ;
# use = ;
# in  = ;
# out = ;
    # -LEADER- block (2)
    # livenow=
    # enter f
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -0($sp)   # allocate stack frame

    # block (2)
    # livenow=
    # call g, 0
    jal _g
    la $sp, 0($sp)

    # block (2)
    # livenow=
    # leave f

    # block (2)
    # livenow=
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (2)
    # livenow=
    # leave f

    # block (2)
    # livenow=
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

# end function f

.text
# function main
# formals: 
# locals: 
# space for locals: 0 bytes
#
_main:
# block 3 
# def = ;
# use = ;
# in  = ;
# out = ;
    # -LEADER- block (3)
    # livenow=
    # enter main
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -0($sp)   # allocate stack frame

    # block (3)
    # livenow=
    # call f, 0
    jal _f
    la $sp, 0($sp)

    # block (3)
    # livenow=
    # leave main

    # block (3)
    # livenow=
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (3)
    # livenow=
    # leave main

    # block (3)
    # livenow=
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

