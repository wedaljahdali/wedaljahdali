.data
msg: .asciiz"Enter an integer number: ";
pos: .asciiz"\nThis number is positive";
neg: .asciiz"\nThis number is negative";
zero: .asciiz"\nNeither positive nor negative";

.text

main:

la $a0, msg
li $v0, 4
syscall

li $v0, 5
syscall
move $t0,$v0

move $a0,$t0
li $v0, 1
syscall

li $t5, 0

bgt $t0, $t5, poscase

blt $t0, $t5, negcase

la $a0, zero
li $v0, 4
syscall
j exit

poscase:
la $a0, pos
li $v0, 4
syscall
j exit

negcase:
la $a0, neg
li $v0, 4
syscall
j exit

exit:
li $v0, 10
syscall

