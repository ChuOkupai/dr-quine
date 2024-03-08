.section .data
	bin_fmt: .asciz "Sully_%d"
	src_fmt: .asciz "%s.s"
	cmd_fmt: .asciz "clang %1$s -o %2$s; ./%2$s"
	start_file: .asciz "Sully_5.s"
	modes: .asciz "w"
	code: .asciz ".section .data%2$c	bin_fmt: .asciz %3$cSully_%%d%3$c%2$c	src_fmt: .asciz %3$c%%s.s%3$c%2$c	cmd_fmt: .asciz %3$cclang %%1$s -o %%2$s; ./%%2$s%3$c%2$c	start_file: .asciz %3$cSully_5.s%3$c%2$c	modes: .asciz %3$cw%3$c%2$c	code: .asciz %3$c%1$s%3$c%2$c	i: .int %4$d%2$c%2$c.section .text%2$c	.globl main%2$c%2$cmain:%2$c	push %rbp%2$c	mov [i], %rbx%2$c	cmp $1, %rbx%2$c	jl end%2$c	sub $128, %rsp%2$c	mov %rsp, %r12%2$c	lea 32(%rsp), %r13%2$c	lea 64(%rsp), %r14%2$c	mov $start_file, %rdi%2$c	mov $0, %rsi%2$c	mov $0, %rax%2$c	call access%2$c	test %rax, %rax%2$c	jnz fmt_bin%2$c	dec %rbx%2$c%2$cfmt_bin:%2$c	mov %r12, %rdi%2$c	mov $bin_fmt, %rsi%2$c	mov %rbx, %rdx%2$c	mov $0, %rax%2$c	call sprintf%2$c%2$cfmt_src:%2$c	mov %r13, %rdi%2$c	mov $src_fmt, %rsi%2$c	mov %r12, %rdx%2$c	mov $0, %rax%2$c	call sprintf%2$c%2$cwr_src:%2$c	mov %r13, %rdi%2$c	mov $modes, %rsi%2$c	mov $0, %rax%2$c	call fopen%2$c	mov %rax, %r15%2$c	mov %r15, %rdi%2$c	mov $code, %rsi%2$c	mov $code, %rdx%2$c	mov $10, %rcx%2$c	mov $34, %r8%2$c	mov %rbx, %r9%2$c	mov $0, %rax%2$c	call fprintf%2$c	mov %r15, %rdi%2$c	mov $0, %rax%2$c	call fclose%2$c%2$cexec:%2$c	mov %r14, %rdi%2$c	mov $cmd_fmt, %rsi%2$c	mov %r13, %rdx%2$c	mov %r12, %rcx%2$c	mov $0, %rax%2$c	call sprintf%2$c	mov %r14, %rdi%2$c	mov $0, %rax%2$c	call system%2$c	addq $128, %rsp%2$c%2$cend:%2$c	pop %rbp%2$c	mov $0, %rax%2$c	ret%2$c"
	i: .int 5

.section .text
	.globl main

main:
	push %rbp
	mov [i], %rbx
	cmp $1, %rbx
	jl end
	sub $128, %rsp
	mov %rsp, %r12
	lea 32(%rsp), %r13
	lea 64(%rsp), %r14
	mov $start_file, %rdi
	mov $0, %rsi
	mov $0, %rax
	call access
	test %rax, %rax
	jnz fmt_bin
	dec %rbx

fmt_bin:
	mov %r12, %rdi
	mov $bin_fmt, %rsi
	mov %rbx, %rdx
	mov $0, %rax
	call sprintf

fmt_src:
	mov %r13, %rdi
	mov $src_fmt, %rsi
	mov %r12, %rdx
	mov $0, %rax
	call sprintf

wr_src:
	mov %r13, %rdi
	mov $modes, %rsi
	mov $0, %rax
	call fopen
	mov %rax, %r15
	mov %r15, %rdi
	mov $code, %rsi
	mov $code, %rdx
	mov $10, %rcx
	mov $34, %r8
	mov %rbx, %r9
	mov $0, %rax
	call fprintf
	mov %r15, %rdi
	mov $0, %rax
	call fclose

exec:
	mov %r14, %rdi
	mov $cmd_fmt, %rsi
	mov %r13, %rdx
	mov %r12, %rcx
	mov $0, %rax
	call sprintf
	mov %r14, %rdi
	mov $0, %rax
	call system
	addq $128, %rsp

end:
	pop %rbp
	mov $0, %rax
	ret
