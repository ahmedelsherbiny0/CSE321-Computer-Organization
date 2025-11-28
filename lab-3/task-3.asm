.data
A:  .word   4
B:  .word   6

.text

compute:
    addi    $sp,        $sp,        -8
    sw      $s0,        0($sp)
    sw      $ra,        4($sp)
    add     $s0,        $a0,        $a1 
    sll     $v0,        $s0,        1   

    lw      $s0,        0($sp)		
    lw      $ra,        4($sp)		
    addi    $sp,        $sp,        8 

    jr      $ra

main:
    lw      $t0,        A
    lw      $t1,        B
    li      $s0,        99

    addi    $sp,        $sp,        -12 
    sw      $t0,        0($sp)
    sw      $t1,        4($sp)
    sw      $ra,        8($sp)

    move    $a0,        $t0
    move    $a1,        $t1
    jal     compute

    move    $t3,        $v0

    lw      $t0,        0($sp)
    lw      $t1,        4($sp)
    lw      $ra,        8($sp)
    addi    $sp,        $sp,        12

    jr      $ra