.data
x:  .word 2      
y:  .word 0    


.text
main:
    lw   $t0, x   
    li   $t1, 1
    beq  $t0, $t1, CASE1
    li   $t1, 2
    beq  $t0, $t1, CASE2
    li   $t1, 3
    beq  $t0, $t1, CASE3
    j    default    

CASE1:
    li   $t2, 10
    sw   $t2, y
    j    exit

CASE2:
    li   $t2, 20
    sw   $t2, y
    j    exit

CASE3:
    li   $t2, 30
    sw   $t2, y
    j    exit

default:
    li   $t2, 0
    sw   $t2, y

exit:
    li   $v0, 10
    syscall
