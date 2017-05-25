main:
	li $a0, 5
	li $a1, 17
	li $a2, -1
	li $a3, 3
	addiu $sp, $sp, -12
	sw $ra, 8($sp)
	li $t0, 9
	sw $t0, 4($sp)
	li $t0, 0
	sw $t0, 0($sp)
	jal fct_add
	lw $ra, 8($sp)
	addiu $sp, $sp, 12
	j end
fct_add:
	lw $v0, 0($sp)
	lw $t0, 4($sp)
	add $v0, $v0, $t0
	add $v0, $v0, $a0
	add $v0, $v0, $a1
	add $v0, $v0, $a2
	add $v0, $v0, $a3
	jr $ra
end: