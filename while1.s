main:
	li $8, 0
	li $9, 0
	li $10, 10
while:
	beq $8, $10, end_while
	addi $9, $9, 1
	addi $8, $8, 1
	j while
end_while: