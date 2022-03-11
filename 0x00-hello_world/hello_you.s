	.file	"hello_you.c"
	.text
	.section	.rodata
.LC0:
	.string	"Welcome!!!\n"
	.align 8
.LC1:
	.string	"Kindly input your first, middle, and last initials without spacing and your age\n\n\t\t NB. ADD A SPACE BEFORE TYPING YOUR AGE"
.LC2:
	.string	"%c%c%c %d"
	.align 8
.LC3:
	.string	"Welcome on board! %c%c%c age: %d.\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
	leaq	-12(%rbp), %rsi
	leaq	-14(%rbp), %rcx
	leaq	-13(%rbp), %rdx
	leaq	-15(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-12(%rbp), %esi
	movzbl	-14(%rbp), %eax
	movsbl	%al, %ecx
	movzbl	-13(%rbp), %eax
	movsbl	%al, %edx
	movzbl	-15(%rbp), %eax
	movsbl	%al, %eax
	movl	%esi, %r8d
	movl	%eax, %esi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L3
	call	__stack_chk_fail@PLT
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
