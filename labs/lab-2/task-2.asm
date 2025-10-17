.data

numberMsg: .asciiz "Enter a number n of the integers you will input: "
inputMsg: .asciiz "Enter a number: "
avgMsg: .asciiz "The average number is: "
newLine: .asciiz "\n\n"

.text
main:
    li $v0, 4                 
    la $a0, numberMsg
    syscall
    
    li $v0, 5                 
    syscall
    move $t0, $v0             

    li $t1, 0                 
    li $t2, 0               

forLoop:
    bge $t2, $t0, computeAvg  

    li $v0, 4                
    la $a0, inputMsg
    syscall

    li $v0, 5
    syscall

    add $t1, $t1, $v0
    addi $t2, $t2, 1

    j forLoop

computeAvg:
    div $t1, $t0
    mflo $t3

    li $v0, 4
    la $a0, avgMsg
    syscall

    li $v0, 1
    move $a0, $t3
    syscall

    li $v0, 4
    la $a0, newLine
    syscall

exit:
    li $v0, 10
    syscall