.data
hello: .asciiz "Name: Ahmed Elsherbiny Othman\nID: 20812022100492\nCourse: CSE321-Computer-Organization\n\n"

.text
main:
    li $v0, 4
    la $a0, hello
    syscall

    li $v0, 10
    syscall