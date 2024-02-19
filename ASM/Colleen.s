# This program prints its own source code.

.section .data
	code: .asciz "# This program prints its own source code.%2$c%2$c.section .data%2$c	code: .asciz %3$c%1$s%3$c%2$c%2$c.section .text%2$c	.globl main%2$c%2$cprint_code:%2$c	push %rbp%2$c	mov $code, %rdi%2$c	mov $code, %rsi%2$c	mov $10, %rdx%2$c	mov $34, %rcx%2$c	mov $0, %rax%2$c	call printf%2$c	pop %rbp%2$c	ret%2$c%2$cmain:%2$c	# Entry point of the program.%2$c	push %rbp%2$c	call print_code%2$c	pop %rbp%2$c	mov $0, %rax%2$c	ret%2$c"

.section .text
	.globl main

print_code:
	push %rbp
	mov $code, %rdi
	mov $code, %rsi
	mov $10, %rdx
	mov $34, %rcx
	mov $0, %rax
	call printf
	pop %rbp
	ret

main:
	# Entry point of the program.
	push %rbp
	call print_code
	pop %rbp
	mov $0, %rax
	ret
