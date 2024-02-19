# This program writes its own source code to a file.

.section .data
	filename: .asciz "Grace_kid.s"
	modes: .asciz "w"
	code: .asciz "# This program writes its own source code to a file.%2$c%2$c.section .data%2$c	filename: .asciz %3$cGrace_kid.s%3$c%2$c	modes: .asciz %3$cw%3$c%2$c	code: .asciz %3$c%1$s%3$c%2$c%2$c.section .text%2$c	.globl main%2$c%2$c.macro FT%2$c	main:%2$c		push %rbp%2$c		mov $filename, %rdi%2$c		mov $modes, %rsi%2$c		mov $0, %rax%2$c		call fopen%2$c		mov %rax, %rbx%2$c		mov %rax, %rdi%2$c		mov $code, %rsi%2$c		mov $code, %rdx%2$c		mov $10, %rcx%2$c		mov $34, %r8%2$c		mov $0, %rax%2$c		call fprintf%2$c		mov %rbx, %rdi%2$c		call fclose%2$c		pop %rbp%2$c		mov $0, %rax%2$c		ret%2$c.endm%2$c%2$cFT%2$c"

.section .text
	.globl main

.macro FT
	main:
		push %rbp
		mov $filename, %rdi
		mov $modes, %rsi
		mov $0, %rax
		call fopen
		mov %rax, %rbx
		mov %rax, %rdi
		mov $code, %rsi
		mov $code, %rdx
		mov $10, %rcx
		mov $34, %r8
		mov $0, %rax
		call fprintf
		mov %rbx, %rdi
		call fclose
		pop %rbp
		mov $0, %rax
		ret
.endm

FT
