main:
	li $t0, 10
	li $t1, 0
while:
	addi $t0, -1
	addi $t1, 2
	bne $t0, 0, while
end:

# t0 = 10
# t1 = 0
# while(t0 != 0){
#	t0 --;
#	t1 += 2;
# }