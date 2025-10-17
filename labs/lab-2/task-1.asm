.data
numberOne: .asciiz "Enter first number: "
numberTwo: .asciiz "Enter second number: "
numberThree: .asciiz "Enter third number: "
numberFour: .asciiz "Enter fourth number: "
result: .asciiz "The average number is: "
newLine: .asciiz "\n\n"

.text
main:
    li $v0, 4                  
    la $a0, numberOne      
    syscall                    

    li $v0, 5                  
    syscall                    
    move $t0, $v0              

    li $v0, 4                  
    la $a0, numberTwo          
    syscall                    

    li $v0, 5                  
    syscall                    
    move $t1, $v0             

    li $v0, 4                  
    la $a0, numberThree        
    syscall                    

    li $v0, 5                  
    syscall                    
    move $t2, $v0       

    li $v0, 4
    la $a0, numberFour
    syscall

    li $v0, 5
    syscall
    move $t3, $v0

    add $t4, $t0, $t1
    add $t4, $t4, $t2
    add $t4, $t4, $t3    
    li $t5, 4
    div $t4, $t5
    mflo $t4

    li $v0, 4
    la $a0, result
    syscall

    li $v0, 1
    move $a0, $t4
    syscall

    li $v0, 4
    la $a0, newLine
    syscall

exit:
    li $v0, 10
    syscall