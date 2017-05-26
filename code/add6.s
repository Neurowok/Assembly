main:
	li $a0, 10
	li $a1, 10
	li $a2, 10
	li $a3, 10
	addiu $sp, $sp, -12
	sw $ra, 8($sp)
	li $t0, 2
	sw $t0, 4($sp)
	li $t0, 1
	sw $t0, 0($sp)
	jal add6
	lw $ra, 8($sp)
	addiu $sp, $sp, 12
	j end

add6:
	li $v0, 0
	add $v0, $v0, $a0
	add $v0, $v0, $a1
	add $v0, $v0, $a2
	add $v0, $v0, $a3
	lw $t0, 0($sp)
	add $v0, $v0, $t0
	lw $t0, 4($sp)
	add $v0, $v0, $t0
	jr $ra
end: