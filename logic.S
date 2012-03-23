#ifdef __linux__
#ifdef __i386__
	.file	"logic.cc"
	.section	.rodata
.LC0:
	.string	"errno = %d\n"
	.text
	.type	_ZL5errorPKcz, @function
_ZL5errorPKcz:
.LFB0:
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	subl	$40, %esp
.LCFI2:
	leal	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %edx
	movl	stderr, %eax
	movl	%edx, 8(%esp)
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	vfprintf
	call	__errno_location
	movl	(%eax), %edx
	movl	stderr, %eax
	movl	%edx, 8(%esp)
	movl	$.LC0, 4(%esp)
	movl	%eax, (%esp)
	call	fprintf
	movl	$0, (%esp)
	call	perror
	movl	$-1, (%esp)
	call	exit
.LFE0:
	.size	_ZL5errorPKcz, .-_ZL5errorPKcz
	.section	.rodata
	.align 4
.LC1:
	.string	"bbbbbbbbbbbb--------wwwwwwwwwwww"
	.section	.text._ZN5BoardC2Ev,"axG",@progbits,_ZN5BoardC5Ev,comdat
	.align 2
	.weak	_ZN5BoardC2Ev
	.type	_ZN5BoardC2Ev, @function
_ZN5BoardC2Ev:
.LFB3:
	pushl	%ebp
.LCFI3:
	movl	%esp, %ebp
.LCFI4:
	subl	$24, %esp
.LCFI5:
	movl	$.LC1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN5Board11from_stringEPKc
	leave
.LCFI6:
	ret
.LFE3:
	.size	_ZN5BoardC2Ev, .-_ZN5BoardC2Ev
	.weak	_ZN5BoardC1Ev
	.set	_ZN5BoardC1Ev,_ZN5BoardC2Ev
	.section	.text._ZN5BoardC2ERKS_,"axG",@progbits,_ZN5BoardC5ERKS_,comdat
	.align 2
	.weak	_ZN5BoardC2ERKS_
	.type	_ZN5BoardC2ERKS_, @function
_ZN5BoardC2ERKS_:
.LFB6:
	pushl	%ebp
.LCFI7:
	movl	%esp, %ebp
.LCFI8:
	subl	$24, %esp
.LCFI9:
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	$256, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	memcpy
	leave
.LCFI10:
	ret
.LFE6:
	.size	_ZN5BoardC2ERKS_, .-_ZN5BoardC2ERKS_
	.weak	_ZN5BoardC1ERKS_
	.set	_ZN5BoardC1ERKS_,_ZN5BoardC2ERKS_
	.section	.rodata
	.align 4
.LC2:
	.string	"input string must be 32 chars\n"
	.align 4
.LC3:
	.string	"unknown char '%c' in input string\n"
	.text
	.align 2
.globl _ZN5Board11from_stringEPKc
	.type	_ZN5Board11from_stringEPKc, @function
_ZN5Board11from_stringEPKc:
.LFB11:
	pushl	%ebp
.LCFI11:
	movl	%esp, %ebp
.LCFI12:
	subl	$40, %esp
.LCFI13:
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	strlen
	cmpl	$32, %eax
	je	.L5
	movl	$.LC2, (%esp)
	call	_ZL5errorPKcz
.L5:
	movl	$0, -12(%ebp)
	jmp	.L6
.L15:
	movl	-12(%ebp), %eax
	addl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	cmpl	$87, %eax
	je	.L10
	cmpl	$87, %eax
	jg	.L13
	cmpl	$45, %eax
	je	.L8
	cmpl	$66, %eax
	je	.L9
	jmp	.L7
.L13:
	cmpl	$98, %eax
	je	.L11
	cmpl	$119, %eax
	je	.L12
	jmp	.L7
.L11:
	movl	$1, -16(%ebp)
	jmp	.L14
.L12:
	movl	$2, -16(%ebp)
	jmp	.L14
.L9:
	movl	$5, -16(%ebp)
	jmp	.L14
.L10:
	movl	$6, -16(%ebp)
	jmp	.L14
.L8:
	movl	$0, -16(%ebp)
	jmp	.L14
.L7:
	movl	-12(%ebp), %eax
	addl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	$.LC3, (%esp)
	call	_ZL5errorPKcz
.L14:
	movl	-12(%ebp), %eax
	leal	3(%eax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$2, %eax
	andl	$1, %eax
	movl	%eax, -20(%ebp)
	movl	-12(%ebp), %eax
	addl	%eax, %eax
	subl	-20(%ebp), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, (%eax,%ecx,4)
	movl	-12(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	addl	-20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	$0, (%eax,%edx,4)
	incl	-12(%ebp)
.L6:
	movl	-12(%ebp), %eax
	addl	12(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	setne	%al
	testb	%al, %al
	jne	.L15
	leave
.LCFI14:
	ret
.LFE11:
	.size	_ZN5Board11from_stringEPKc, .-_ZN5Board11from_stringEPKc
	.section	.rodata
.LC4:
	.string	"logic.cc"
.LC5:
	.string	"0"
	.text
	.align 2
.globl _ZN5Board9to_stringEPc
	.type	_ZN5Board9to_stringEPc, @function
_ZN5Board9to_stringEPc:
.LFB12:
	pushl	%ebp
.LCFI15:
	movl	%esp, %ebp
.LCFI16:
	subl	$40, %esp
.LCFI17:
	movl	$0, -12(%ebp)
	jmp	.L17
.L26:
	movl	-12(%ebp), %eax
	leal	3(%eax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$2, %eax
	andl	$1, %eax
	movl	%eax, -16(%ebp)
	movl	-12(%ebp), %eax
	addl	%eax, %eax
	subl	-16(%ebp), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$6, %eax
	ja	.L18
	movl	.L24(,%eax,4), %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L24:
	.long	.L19
	.long	.L20
	.long	.L21
	.long	.L18
	.long	.L18
	.long	.L22
	.long	.L23
	.text
.L20:
	movl	-12(%ebp), %eax
	addl	12(%ebp), %eax
	movb	$98, (%eax)
	jmp	.L25
.L21:
	movl	-12(%ebp), %eax
	addl	12(%ebp), %eax
	movb	$119, (%eax)
	jmp	.L25
.L22:
	movl	-12(%ebp), %eax
	addl	12(%ebp), %eax
	movb	$66, (%eax)
	jmp	.L25
.L23:
	movl	-12(%ebp), %eax
	addl	12(%ebp), %eax
	movb	$87, (%eax)
	jmp	.L25
.L19:
	movl	-12(%ebp), %eax
	addl	12(%ebp), %eax
	movb	$45, (%eax)
	jmp	.L25
.L18:
	movl	$_ZZN5Board9to_stringEPcE19__PRETTY_FUNCTION__, 12(%esp)
	movl	$97, 8(%esp)
	movl	$.LC4, 4(%esp)
	movl	$.LC5, (%esp)
	call	__assert_fail
.L25:
	movl	12(%ebp), %eax
	addl	$32, %eax
	movb	$0, (%eax)
	incl	-12(%ebp)
.L17:
	cmpl	$31, -12(%ebp)
	setle	%al
	testb	%al, %al
	jne	.L26
	leave
.LCFI18:
	ret
.LFE12:
	.size	_ZN5Board9to_stringEPc, .-_ZN5Board9to_stringEPc
	.align 2
.globl _ZN5BoardC2Ejjj
	.type	_ZN5BoardC2Ejjj, @function
_ZN5BoardC2Ejjj:
.LFB14:
	pushl	%ebp
.LCFI19:
	movl	%esp, %ebp
.LCFI20:
	subl	$16, %esp
.LCFI21:
	movl	$1, -4(%ebp)
	movl	$0, -8(%ebp)
	jmp	.L28
.L35:
	movl	-8(%ebp), %eax
	leal	3(%eax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$2, %eax
	andl	$1, %eax
	movl	%eax, -12(%ebp)
	movl	-4(%ebp), %eax
	movl	12(%ebp), %edx
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L29
	movl	-8(%ebp), %eax
	addl	%eax, %eax
	subl	-12(%ebp), %eax
	leal	1(%eax), %ecx
	movl	-4(%ebp), %eax
	movl	20(%ebp), %edx
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L30
	movl	$5, %eax
	jmp	.L31
.L30:
	movl	$1, %eax
.L31:
	movl	8(%ebp), %edx
	movl	%eax, (%edx,%ecx,4)
.L29:
	movl	-4(%ebp), %eax
	movl	16(%ebp), %edx
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L32
	movl	-8(%ebp), %eax
	addl	%eax, %eax
	subl	-12(%ebp), %eax
	leal	1(%eax), %ecx
	movl	-4(%ebp), %eax
	movl	20(%ebp), %edx
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L33
	movl	$6, %eax
	jmp	.L34
.L33:
	movl	$2, %eax
.L34:
	movl	8(%ebp), %edx
	movl	%eax, (%edx,%ecx,4)
.L32:
	sall	-4(%ebp)
	incl	-8(%ebp)
.L28:
	cmpl	$31, -8(%ebp)
	setle	%al
	testb	%al, %al
	jne	.L35
	leave
.LCFI22:
	ret
.LFE14:
	.size	_ZN5BoardC2Ejjj, .-_ZN5BoardC2Ejjj
.globl _ZN5BoardC1Ejjj
	.set	_ZN5BoardC1Ejjj,_ZN5BoardC2Ejjj
	.section	.rodata
	.align 4
.LC6:
	.string	"+----+----+----+----+----+----+----+----+"
.LC7:
	.string	"|    "
.LC8:
	.string	"|%c%2d%c"
.LC9:
	.string	"|"
	.text
	.align 2
.globl _ZN5Board4drawEv
	.type	_ZN5Board4drawEv, @function
_ZN5Board4drawEv:
.LFB16:
	pushl	%ebp
.LCFI23:
	movl	%esp, %ebp
.LCFI24:
	subl	$40, %esp
.LCFI25:
	movl	$0, -12(%ebp)
	jmp	.L37
.L47:
	movl	-12(%ebp), %eax
	andl	$7, %eax
	testl	%eax, %eax
	jne	.L38
	movl	$.LC6, (%esp)
	call	puts
.L38:
	movb	$32, -13(%ebp)
	movl	8(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	(%eax,%edx,4), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L39
	movb	$98, -13(%ebp)
.L39:
	movl	8(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	(%eax,%edx,4), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L40
	movb	$119, -13(%ebp)
.L40:
	movl	8(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	(%eax,%edx,4), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L41
	movzbl	-13(%ebp), %eax
	subl	$32, %eax
	movb	%al, -13(%ebp)
.L41:
	movl	-12(%ebp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L42
	movl	-12(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L43
.L42:
	movl	-12(%ebp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L44
	movl	-12(%ebp), %eax
	andl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L44
.L43:
	movl	$.LC7, (%esp)
	call	printf
	jmp	.L45
.L44:
	movsbl	-13(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	leal	(%ecx,%eax), %eax
	sarl	%eax
	leal	1(%eax), %ecx
	movsbl	-13(%ebp), %eax
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$.LC8, (%esp)
	call	printf
.L45:
	movl	-12(%ebp), %eax
	andl	$7, %eax
	cmpl	$7, %eax
	jne	.L46
	movl	$.LC9, (%esp)
	call	puts
.L46:
	incl	-12(%ebp)
.L37:
	cmpl	$63, -12(%ebp)
	setle	%al
	testb	%al, %al
	jne	.L47
	movl	$.LC6, (%esp)
	call	puts
	leave
.LCFI26:
	ret
.LFE16:
	.size	_ZN5Board4drawEv, .-_ZN5Board4drawEv
	.section	.rodata
.LC10:
	.string	"(f == BLACK) || (f == WHITE)"
	.text
.globl _Z9move_jump9MOVE_JUMPR5Boardhh5Field
	.type	_Z9move_jump9MOVE_JUMPR5Boardhh5Field, @function
_Z9move_jump9MOVE_JUMPR5Boardhh5Field:
.LFB17:
	pushl	%ebp
.LCFI27:
	movl	%esp, %ebp
.LCFI28:
	subl	$72, %esp
.LCFI29:
	movl	16(%ebp), %edx
	movl	20(%ebp), %eax
	movb	%dl, -28(%ebp)
	movb	%al, -32(%ebp)
	cmpl	$1, 24(%ebp)
	je	.L49
	cmpl	$2, 24(%ebp)
	je	.L49
	movl	$_ZZ9move_jump9MOVE_JUMPR5Boardhh5FieldE19__PRETTY_FUNCTION__, 12(%esp)
	movl	$136, 8(%esp)
	movl	$.LC4, 4(%esp)
	movl	$.LC10, (%esp)
	call	__assert_fail
.L49:
	cmpb	$63, -28(%ebp)
	ja	.L50
	cmpb	$63, -32(%ebp)
	jbe	.L51
.L50:
	movl	$0, %eax
	jmp	.L52
.L51:
	movzbl	-28(%ebp), %edx
	movl	12(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, %edx
	movl	24(%ebp), %eax
	andl	%edx, %eax
	testl	%eax, %eax
	jne	.L53
	movl	$0, %eax
	jmp	.L52
.L53:
	movzbl	-32(%ebp), %edx
	movl	12(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	testl	%eax, %eax
	je	.L54
	movl	$0, %eax
	jmp	.L52
.L54:
	movzbl	-28(%ebp), %eax
	cmpb	-32(%ebp), %al
	jae	.L55
	movl	24(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L56
	movzbl	-28(%ebp), %edx
	movl	12(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L56
	movl	$0, %eax
	jmp	.L52
.L56:
	movzbl	-28(%ebp), %eax
	movl	%eax, %edx
	andl	$7, %edx
	movzbl	-32(%ebp), %eax
	andl	$7, %eax
	cmpl	%eax, %edx
	jge	.L57
	movl	$9, %eax
	jmp	.L58
.L57:
	movl	$7, %eax
.L58:
	movb	%al, -9(%ebp)
	jmp	.L59
.L55:
	movl	24(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L60
	movzbl	-28(%ebp), %edx
	movl	12(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L60
	movl	$0, %eax
	jmp	.L52
.L60:
	movzbl	-28(%ebp), %eax
	movl	%eax, %edx
	andl	$7, %edx
	movzbl	-32(%ebp), %eax
	andl	$7, %eax
	cmpl	%eax, %edx
	jge	.L61
	movl	$-7, %eax
	jmp	.L62
.L61:
	movl	$-9, %eax
.L62:
	movb	%al, -9(%ebp)
.L59:
	movzbl	-32(%ebp), %edx
	movzbl	-28(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movsbl	-9(%ebp), %ecx
	movl	%eax, %edx
	sarl	$31, %edx
	idivl	%ecx
	movl	%edx, %eax
	testl	%eax, %eax
	je	.L63
	movl	$0, %eax
	jmp	.L52
.L63:
	movzbl	-32(%ebp), %edx
	movzbl	-28(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movsbl	-9(%ebp), %edx
	movl	%edx, -44(%ebp)
	movl	%eax, %edx
	sarl	$31, %edx
	idivl	-44(%ebp)
	movl	%eax, %edx
	movl	8(%ebp), %eax
	cmpl	%eax, %edx
	je	.L64
	movl	$0, %eax
	jmp	.L52
.L64:
	movzbl	-32(%ebp), %eax
	movb	%al, -10(%ebp)
	cmpl	$2, 8(%ebp)
	jne	.L65
	movzbl	-9(%ebp), %eax
	subb	%al, -10(%ebp)
	movzbl	-10(%ebp), %edx
	movl	12(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	testl	%eax, %eax
	je	.L66
	movzbl	-10(%ebp), %edx
	movl	12(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, %edx
	movl	24(%ebp), %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L67
.L66:
	movl	$0, %eax
	jmp	.L52
.L67:
	movzbl	-10(%ebp), %edx
	movl	12(%ebp), %eax
	movl	$0, (%eax,%edx,4)
.L65:
	movzbl	-32(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	12(%ebp), %edx
	movzbl	-28(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_Z4swapI5FieldEvRT_S2_
	movl	$1, %eax
.L52:
	leave
.LCFI30:
	ret
.LFE17:
	.size	_Z9move_jump9MOVE_JUMPR5Boardhh5Field, .-_Z9move_jump9MOVE_JUMPR5Boardhh5Field
.globl _Z15check_move_jump9MOVE_JUMPRK5Boardh5Field
	.type	_Z15check_move_jump9MOVE_JUMPRK5Boardh5Field, @function
_Z15check_move_jump9MOVE_JUMPRK5Boardh5Field:
.LFB18:
	pushl	%ebp
.LCFI31:
	movl	%esp, %ebp
.LCFI32:
	subl	$312, %esp
.LCFI33:
	movl	16(%ebp), %eax
	movb	%al, -268(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-264(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN5BoardC1ERKS_
	movl	8(%ebp), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	negl	%eax
	addb	-268(%ebp), %al
	movzbl	%al, %edx
	movzbl	-268(%ebp), %eax
	movl	20(%ebp), %ecx
	movl	%ecx, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	-264(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Z9move_jump9MOVE_JUMPR5Boardhh5Field
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L69
	movl	$1, %eax
	jmp	.L70
.L69:
	movl	8(%ebp), %eax
	movl	$-7, %edx
	imull	%edx, %eax
	addb	-268(%ebp), %al
	movzbl	%al, %edx
	movzbl	-268(%ebp), %eax
	movl	20(%ebp), %ecx
	movl	%ecx, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	-264(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Z9move_jump9MOVE_JUMPR5Boardhh5Field
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L71
	movl	$1, %eax
	jmp	.L70
.L71:
	movl	8(%ebp), %eax
	movl	%eax, %edx
	sall	$3, %edx
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	addb	-268(%ebp), %al
	movzbl	%al, %edx
	movzbl	-268(%ebp), %eax
	movl	20(%ebp), %ecx
	movl	%ecx, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	-264(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Z9move_jump9MOVE_JUMPR5Boardhh5Field
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L72
	movl	$1, %eax
	jmp	.L70
.L72:
	movl	8(%ebp), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addb	-268(%ebp), %al
	movzbl	%al, %edx
	movzbl	-268(%ebp), %eax
	movl	20(%ebp), %ecx
	movl	%ecx, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	-264(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Z9move_jump9MOVE_JUMPR5Boardhh5Field
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L73
	movl	$1, %eax
	jmp	.L70
.L73:
	movl	$0, %eax
.L70:
	leave
.LCFI34:
	ret
.LFE18:
	.size	_Z15check_move_jump9MOVE_JUMPRK5Boardh5Field, .-_Z15check_move_jump9MOVE_JUMPRK5Boardh5Field
	.section	.rodata
.LC11:
	.string	"f == BLACK || f == WHITE"
	.text
.globl _Z13can_move_jump9MOVE_JUMPRK5Board5Field
	.type	_Z13can_move_jump9MOVE_JUMPRK5Board5Field, @function
_Z13can_move_jump9MOVE_JUMPRK5Board5Field:
.LFB19:
	pushl	%ebp
.LCFI35:
	movl	%esp, %ebp
.LCFI36:
	subl	$40, %esp
.LCFI37:
	cmpl	$1, 16(%ebp)
	je	.L75
	cmpl	$2, 16(%ebp)
	je	.L75
	movl	$_ZZ13can_move_jump9MOVE_JUMPRK5Board5FieldE19__PRETTY_FUNCTION__, 12(%esp)
	movl	$190, 8(%esp)
	movl	$.LC4, 4(%esp)
	movl	$.LC11, (%esp)
	call	__assert_fail
.L75:
	movb	$0, -9(%ebp)
	jmp	.L76
.L81:
	movzbl	-9(%ebp), %edx
	movl	12(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L77
	movzbl	-9(%ebp), %eax
	movl	16(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Z15check_move_jump9MOVE_JUMPRK5Boardh5Field
	testb	%al, %al
	je	.L77
	movl	$1, %eax
	jmp	.L78
.L77:
	movl	$0, %eax
.L78:
	testb	%al, %al
	je	.L79
	movl	$1, %eax
	jmp	.L80
.L79:
	incb	-9(%ebp)
.L76:
	cmpb	$63, -9(%ebp)
	setbe	%al
	testb	%al, %al
	jne	.L81
	movl	$0, %eax
.L80:
	leave
.LCFI38:
	ret
.LFE19:
	.size	_Z13can_move_jump9MOVE_JUMPRK5Board5Field, .-_Z13can_move_jump9MOVE_JUMPRK5Board5Field
	.section	.rodata
.LC12:
	.string	"[mcp] upgrade\n"
	.text
.globl _Z7upgradeR5Boardh
	.type	_Z7upgradeR5Boardh, @function
_Z7upgradeR5Boardh:
.LFB20:
	pushl	%ebp
.LCFI39:
	movl	%esp, %ebp
.LCFI40:
	subl	$40, %esp
.LCFI41:
	movl	12(%ebp), %eax
	movb	%al, -12(%ebp)
	cmpb	$7, -12(%ebp)
	ja	.L83
	movzbl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L83
	movzbl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	$6, (%eax,%edx,4)
	movl	stderr, %eax
	movl	%eax, 12(%esp)
	movl	$14, 8(%esp)
	movl	$1, 4(%esp)
	movl	$.LC12, (%esp)
	call	fwrite
.L83:
	cmpb	$55, -12(%ebp)
	jbe	.L82
	movzbl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L82
	movzbl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	$5, (%eax,%edx,4)
	movl	stderr, %eax
	movl	%eax, 12(%esp)
	movl	$14, 8(%esp)
	movl	$1, 4(%esp)
	movl	$.LC12, (%esp)
	call	fwrite
.L82:
	leave
.LCFI42:
	ret
.LFE20:
	.size	_Z7upgradeR5Boardh, .-_Z7upgradeR5Boardh
	.section	.rodata
.LC13:
	.string	"[mcp] "
	.align 4
.LC14:
	.string	"(winner >= 0) && (winner <= 2)"
.LC15:
	.string	"[mcp] DRAW.\n"
.LC16:
	.string	"BLACK"
.LC17:
	.string	"WHITE"
.LC18:
	.string	"[mcp] %s wins.\n"
	.text
	.type	_ZL8end_gameiPKcz, @function
_ZL8end_gameiPKcz:
.LFB21:
	pushl	%ebp
.LCFI43:
	movl	%esp, %ebp
.LCFI44:
	subl	$40, %esp
.LCFI45:
	movl	stderr, %eax
	movl	%eax, 12(%esp)
	movl	$6, 8(%esp)
	movl	$1, 4(%esp)
	movl	$.LC13, (%esp)
	call	fwrite
	leal	16(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %edx
	movl	stderr, %eax
	movl	%edx, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	vfprintf
	movl	stderr, %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc
	cmpl	$0, 8(%ebp)
	js	.L86
	cmpl	$2, 8(%ebp)
	jle	.L87
.L86:
	movl	$_ZZL8end_gameiPKczE19__PRETTY_FUNCTION__, 12(%esp)
	movl	$219, 8(%esp)
	movl	$.LC4, 4(%esp)
	movl	$.LC14, (%esp)
	call	__assert_fail
.L87:
	cmpl	$2, 8(%ebp)
	jne	.L88
	movl	stderr, %eax
	movl	%eax, 12(%esp)
	movl	$12, 8(%esp)
	movl	$1, 4(%esp)
	movl	$.LC15, (%esp)
	call	fwrite
	jmp	.L89
.L88:
	cmpl	$0, 8(%ebp)
	je	.L90
	movl	$.LC16, %eax
	jmp	.L91
.L90:
	movl	$.LC17, %eax
.L91:
	movl	%eax, %edx
	movl	stderr, %eax
	movl	%edx, 8(%esp)
	movl	$.LC18, 4(%esp)
	movl	%eax, (%esp)
	call	fprintf
.L89:
	movl	$0, (%esp)
	call	exit
.LFE21:
	.size	_ZL8end_gameiPKcz, .-_ZL8end_gameiPKcz
.globl b
	.bss
	.align 32
	.type	b, @object
	.size	b, 256
b:
	.zero	256
.globl turn
	.align 4
	.type	turn, @object
	.size	turn, 4
turn:
	.zero	4
.globl idle
	.align 4
	.type	idle, @object
	.size	idle, 4
idle:
	.zero	4
.globl buffer
	.align 32
	.type	buffer, @object
	.size	buffer, 36
buffer:
	.zero	36
	.section	.rodata
	.align 4
.LC19:
	.string	"init failed ('B' or 'W' expected)\n"
.LC20:
	.string	"init failed (':' expected)\n"
	.text
.globl _Z4initPKc
	.type	_Z4initPKc, @function
_Z4initPKc:
.LFB22:
	pushl	%ebp
.LCFI46:
	movl	%esp, %ebp
.LCFI47:
	subl	$24, %esp
.LCFI48:
	cmpl	$0, 8(%ebp)
	je	.L98
.L93:
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$87, %al
	jne	.L95
	movl	turn, %eax
	incl	%eax
	movl	%eax, turn
	jmp	.L96
.L95:
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$66, %al
	je	.L96
	movl	$.LC19, (%esp)
	call	_ZL5errorPKcz
.L96:
	movl	8(%ebp), %eax
	incl	%eax
	movzbl	(%eax), %eax
	cmpb	$58, %al
	je	.L97
	movl	$.LC20, (%esp)
	call	_ZL5errorPKcz
.L97:
	movl	8(%ebp), %eax
	addl	$2, %eax
	movl	%eax, 4(%esp)
	movl	$b, (%esp)
	call	_ZN5Board11from_stringEPKc
	jmp	.L92
.L98:
	nop
.L92:
	leave
.LCFI49:
	ret
.LFE22:
	.size	_Z4initPKc, .-_Z4initPKc
.globl _Z9serializev
	.type	_Z9serializev, @function
_Z9serializev:
.LFB23:
	pushl	%ebp
.LCFI50:
	movl	%esp, %ebp
.LCFI51:
	subl	$24, %esp
.LCFI52:
	movl	turn, %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L100
	movl	$87, %eax
	jmp	.L101
.L100:
	movl	$66, %eax
.L101:
	movb	%al, buffer
	movb	$58, buffer+1
	movl	$buffer+2, 4(%esp)
	movl	$b, (%esp)
	call	_ZN5Board9to_stringEPc
	movb	$10, buffer+34
	movb	$0, buffer+35
	movl	$buffer, %eax
	leave
.LCFI53:
	ret
.LFE23:
	.size	_Z9serializev, .-_Z9serializev
	.section	.rodata
.LC21:
	.string	"no move '%s'"
.LC22:
	.string	"error parsing move '%s'"
	.align 4
.LC23:
	.string	"INVALID move %ld-%ld (jump forced)\n"
	.align 4
.LC24:
	.string	"INVALID move %ld-%ld (jump forced)"
.LC25:
	.string	"INVALID move %ld-%ld\n"
.LC26:
	.string	"INVALID move %ld-%ld"
.LC27:
	.string	"[mcp] valid move %ld-%ld\n"
.LC28:
	.string	"error parsing '%s'"
.LC29:
	.string	"INVALID jump %ldx%ld\n"
.LC30:
	.string	"INVALID jump %ldx%ld"
.LC31:
	.string	"[mcp] valid jump %ldx%ld\n"
	.align 4
.LC32:
	.string	"INVALID jump (jump forced %ld)\n"
	.align 4
.LC33:
	.string	"INVALID jump (jump forced %ld)"
.LC34:
	.string	"no moves left"
.LC35:
	.string	"20 moves timeout"
	.text
.globl _Z11deserializePc
	.type	_Z11deserializePc, @function
_Z11deserializePc:
.LFB24:
	pushl	%ebp
.LCFI54:
	movl	%esp, %ebp
.LCFI55:
	pushl	%edi
.LCFI56:
	pushl	%esi
.LCFI57:
	pushl	%ebx
.LCFI58:
	subl	$332, %esp
.LCFI59:
	movl	8(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	-56(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L103
	movl	turn, %eax
	movl	%eax, %edx
	andl	$1, %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$.LC21, 4(%esp)
	movl	%edx, (%esp)
	call	_ZL8end_gameiPKcz
.L103:
	movl	-56(%ebp), %eax
	movl	$10, 8(%esp)
	leal	-56(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	strtol
	movl	%eax, -28(%ebp)
	movl	-56(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$45, %al
	jne	.L104
	movl	-56(%ebp), %eax
	incl	%eax
	movl	%eax, -56(%ebp)
	movl	-56(%ebp), %eax
	movl	$10, 8(%esp)
	leal	-56(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	strtol
	movl	%eax, -32(%ebp)
	movl	-56(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L105
	movl	turn, %eax
	movl	%eax, %edx
	andl	$1, %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$.LC22, 4(%esp)
	movl	%edx, (%esp)
	call	_ZL8end_gameiPKcz
.L105:
	movl	turn, %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L106
	movl	$2, %eax
	jmp	.L107
.L106:
	movl	$1, %eax
.L107:
	movl	%eax, 8(%esp)
	movl	$b, 4(%esp)
	movl	$2, (%esp)
	call	_Z13can_move_jump9MOVE_JUMPRK5Board5Field
	testb	%al, %al
	je	.L108
	movzbl	debug, %eax
	testb	%al, %al
	je	.L109
	movl	stderr, %eax
	movl	-32(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-28(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$.LC23, 4(%esp)
	movl	%eax, (%esp)
	call	fprintf
	movl	$0, %eax
	jmp	.L110
.L109:
	movl	turn, %eax
	movl	%eax, %edx
	andl	$1, %edx
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$.LC24, 4(%esp)
	movl	%edx, (%esp)
	call	_ZL8end_gameiPKcz
.L108:
	movl	-28(%ebp), %eax
	addl	%eax, %eax
	leal	-1(%eax), %ecx
	movl	-28(%ebp), %eax
	decl	%eax
	leal	3(%eax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$2, %eax
	andl	$1, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -36(%ebp)
	movl	-32(%ebp), %eax
	addl	%eax, %eax
	leal	-1(%eax), %ecx
	movl	-32(%ebp), %eax
	decl	%eax
	leal	3(%eax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$2, %eax
	andl	$1, %eax
	movl	%ecx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	movl	%eax, -40(%ebp)
	movl	turn, %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L111
	movl	$2, %eax
	jmp	.L112
.L111:
	movl	$1, %eax
.L112:
	movl	-40(%ebp), %edx
	movzbl	%dl, %ecx
	movl	-36(%ebp), %edx
	movzbl	%dl, %edx
	movl	%eax, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$b, 4(%esp)
	movl	$1, (%esp)
	call	_Z9move_jump9MOVE_JUMPR5Boardhh5Field
	testl	%eax, %eax
	sete	%al
	testb	%al, %al
	je	.L113
	movzbl	debug, %eax
	testb	%al, %al
	je	.L114
	movl	stderr, %eax
	movl	-32(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-28(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$.LC25, 4(%esp)
	movl	%eax, (%esp)
	call	fprintf
	movl	$0, %eax
	jmp	.L110
.L114:
	movl	turn, %eax
	movl	%eax, %edx
	andl	$1, %edx
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$.LC26, 4(%esp)
	movl	%edx, (%esp)
	call	_ZL8end_gameiPKcz
.L113:
	movl	-40(%ebp), %eax
	movl	b(,%eax,4), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L115
	movl	idle, %eax
	incl	%eax
	jmp	.L116
.L115:
	movl	$0, %eax
.L116:
	movl	%eax, idle
	movl	stderr, %eax
	movl	-32(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-28(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$.LC27, 4(%esp)
	movl	%eax, (%esp)
	call	fprintf
	movl	-40(%ebp), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	$b, (%esp)
	call	_Z7upgradeR5Boardh
	jmp	.L117
.L104:
	movl	-56(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$120, %al
	jne	.L118
	movl	$b, 4(%esp)
	leal	-312(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN5BoardC1ERKS_
	jmp	.L119
.L130:
	movl	-56(%ebp), %eax
	incl	%eax
	movl	%eax, -56(%ebp)
	movl	-56(%ebp), %eax
	movl	$10, 8(%esp)
	leal	-56(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	strtol
	movl	%eax, -44(%ebp)
	movl	-56(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L120
	movl	-56(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$120, %al
	je	.L120
	movl	turn, %eax
	movl	%eax, %edx
	andl	$1, %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$.LC28, 4(%esp)
	movl	%edx, (%esp)
	call	_ZL8end_gameiPKcz
.L120:
	movl	-28(%ebp), %eax
	addl	%eax, %eax
	leal	-1(%eax), %ecx
	movl	-28(%ebp), %eax
	decl	%eax
	leal	3(%eax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$2, %eax
	andl	$1, %eax
	movl	%ecx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	movl	%eax, -48(%ebp)
	movl	-44(%ebp), %eax
	addl	%eax, %eax
	leal	-1(%eax), %ecx
	movl	-44(%ebp), %eax
	decl	%eax
	leal	3(%eax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$2, %eax
	andl	$1, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -52(%ebp)
	movl	turn, %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L121
	movl	$2, %eax
	jmp	.L122
.L121:
	movl	$1, %eax
.L122:
	movl	-52(%ebp), %edx
	movzbl	%dl, %ecx
	movl	-48(%ebp), %edx
	movzbl	%dl, %edx
	movl	%eax, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$b, 4(%esp)
	movl	$2, (%esp)
	call	_Z9move_jump9MOVE_JUMPR5Boardhh5Field
	testl	%eax, %eax
	sete	%al
	testb	%al, %al
	je	.L123
	movzbl	debug, %eax
	testb	%al, %al
	je	.L124
	movl	stderr, %eax
	movl	-44(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-28(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$.LC29, 4(%esp)
	movl	%eax, (%esp)
	call	fprintf
	movl	$b, %edx
	leal	-312(%ebp), %ebx
	movl	$64, %eax
	movl	%edx, %edi
	movl	%ebx, %esi
	movl	%eax, %ecx
	rep movsl
	movl	$0, %eax
	jmp	.L110
.L124:
	movl	turn, %eax
	movl	%eax, %edx
	andl	$1, %edx
	movl	-44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$.LC30, 4(%esp)
	movl	%edx, (%esp)
	call	_ZL8end_gameiPKcz
.L123:
	movl	$0, idle
	movl	stderr, %eax
	movl	-44(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-28(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$.LC31, 4(%esp)
	movl	%eax, (%esp)
	call	fprintf
	movl	-56(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L125
	movl	-44(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L119
.L125:
	movl	turn, %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L126
	movl	$2, %eax
	jmp	.L127
.L126:
	movl	$1, %eax
.L127:
	movl	-52(%ebp), %edx
	movzbl	%dl, %edx
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$b, 4(%esp)
	movl	$2, (%esp)
	call	_Z15check_move_jump9MOVE_JUMPRK5Boardh5Field
	testb	%al, %al
	je	.L128
	movzbl	debug, %eax
	testb	%al, %al
	je	.L129
	movl	stderr, %eax
	movl	-44(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$.LC32, 4(%esp)
	movl	%eax, (%esp)
	call	fprintf
	movl	$b, %edx
	leal	-312(%ebp), %ebx
	movl	$64, %eax
	movl	%edx, %edi
	movl	%ebx, %esi
	movl	%eax, %ecx
	rep movsl
	movl	$0, %eax
	jmp	.L110
.L129:
	movl	turn, %eax
	movl	%eax, %edx
	andl	$1, %edx
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$.LC33, 4(%esp)
	movl	%edx, (%esp)
	call	_ZL8end_gameiPKcz
.L128:
	movl	-52(%ebp), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	$b, (%esp)
	call	_Z7upgradeR5Boardh
.L119:
	movl	-56(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	setne	%al
	testb	%al, %al
	jne	.L130
	jmp	.L117
.L118:
	movl	turn, %eax
	movl	%eax, %edx
	andl	$1, %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$.LC28, 4(%esp)
	movl	%edx, (%esp)
	call	_ZL8end_gameiPKcz
.L117:
	movl	turn, %eax
	incl	%eax
	movl	%eax, turn
	movl	turn, %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L131
	movl	$2, %eax
	jmp	.L132
.L131:
	movl	$1, %eax
.L132:
	movl	%eax, 8(%esp)
	movl	$b, 4(%esp)
	movl	$1, (%esp)
	call	_Z13can_move_jump9MOVE_JUMPRK5Board5Field
	xorl	$1, %eax
	testb	%al, %al
	je	.L133
	movl	turn, %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L134
	movl	$2, %eax
	jmp	.L135
.L134:
	movl	$1, %eax
.L135:
	movl	%eax, 8(%esp)
	movl	$b, 4(%esp)
	movl	$2, (%esp)
	call	_Z13can_move_jump9MOVE_JUMPRK5Board5Field
	xorl	$1, %eax
	testb	%al, %al
	je	.L133
	movl	$1, %eax
	jmp	.L136
.L133:
	movl	$0, %eax
.L136:
	testb	%al, %al
	je	.L137
	movl	turn, %eax
	andl	$1, %eax
	movl	$.LC34, 4(%esp)
	movl	%eax, (%esp)
	call	_ZL8end_gameiPKcz
.L137:
	movl	idle, %eax
	cmpl	$20, %eax
	jle	.L138
	movl	$.LC35, 4(%esp)
	movl	$2, (%esp)
	call	_ZL8end_gameiPKcz
.L138:
	movl	$1, %eax
.L110:
	addl	$332, %esp
	popl	%ebx
.LCFI60:
	popl	%esi
.LCFI61:
	popl	%edi
.LCFI62:
	leave
.LCFI63:
	ret
.LFE24:
	.size	_Z11deserializePc, .-_Z11deserializePc
	.section	.text._Z4swapI5FieldEvRT_S2_,"axG",@progbits,_Z4swapI5FieldEvRT_S2_,comdat
	.weak	_Z4swapI5FieldEvRT_S2_
	.type	_Z4swapI5FieldEvRT_S2_, @function
_Z4swapI5FieldEvRT_S2_:
.LFB25:
	pushl	%ebp
.LCFI64:
	movl	%esp, %ebp
.LCFI65:
	subl	$16, %esp
.LCFI66:
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	-4(%ebp), %edx
	movl	%edx, (%eax)
	leave
.LCFI67:
	ret
.LFE25:
	.size	_Z4swapI5FieldEvRT_S2_, .-_Z4swapI5FieldEvRT_S2_
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB26:
	pushl	%ebp
.LCFI68:
	movl	%esp, %ebp
.LCFI69:
	subl	$24, %esp
.LCFI70:
	cmpl	$1, 8(%ebp)
	jne	.L140
	cmpl	$65535, 12(%ebp)
	jne	.L140
	movl	$b, (%esp)
	call	_ZN5BoardC1Ev
.L140:
	leave
.LCFI71:
	ret
.LFE26:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__I__ZN5Board11from_stringEPKc, @function
_GLOBAL__I__ZN5Board11from_stringEPKc:
.LFB27:
	pushl	%ebp
.LCFI72:
	movl	%esp, %ebp
.LCFI73:
	subl	$24, %esp
.LCFI74:
	movl	$65535, 4(%esp)
	movl	$1, (%esp)
	call	_Z41__static_initialization_and_destruction_0ii
	leave
.LCFI75:
	ret
.LFE27:
	.size	_GLOBAL__I__ZN5Board11from_stringEPKc, .-_GLOBAL__I__ZN5Board11from_stringEPKc
	.section	.ctors,"aw",@progbits
	.align 4
	.long	_GLOBAL__I__ZN5Board11from_stringEPKc
	.section	.rodata
	.align 32
	.type	_ZZL8end_gameiPKczE19__PRETTY_FUNCTION__, @object
	.size	_ZZL8end_gameiPKczE19__PRETTY_FUNCTION__, 37
_ZZL8end_gameiPKczE19__PRETTY_FUNCTION__:
	.string	"void end_game(int, const char*, ...)"
	.align 32
	.type	_ZZ13can_move_jump9MOVE_JUMPRK5Board5FieldE19__PRETTY_FUNCTION__, @object
	.size	_ZZ13can_move_jump9MOVE_JUMPRK5Board5FieldE19__PRETTY_FUNCTION__, 51
_ZZ13can_move_jump9MOVE_JUMPRK5Board5FieldE19__PRETTY_FUNCTION__:
	.string	"bool can_move_jump(MOVE_JUMP, const Board&, Field)"
	.align 32
	.type	_ZZ9move_jump9MOVE_JUMPR5Boardhh5FieldE19__PRETTY_FUNCTION__, @object
	.size	_ZZ9move_jump9MOVE_JUMPR5Boardhh5FieldE19__PRETTY_FUNCTION__, 70
_ZZ9move_jump9MOVE_JUMPR5Boardhh5FieldE19__PRETTY_FUNCTION__:
	.string	"int move_jump(MOVE_JUMP, Board&, unsigned char, unsigned char, Field)"
	.type	_ZZN5Board9to_stringEPcE19__PRETTY_FUNCTION__, @object
	.size	_ZZN5Board9to_stringEPcE19__PRETTY_FUNCTION__, 29
_ZZN5Board9to_stringEPcE19__PRETTY_FUNCTION__:
	.string	"void Board::to_string(char*)"
	.section	.eh_frame,"a",@progbits
.Lframe1:
	.long	.LECIE1-.LSCIE1
.LSCIE1:
	.long	0x0
	.byte	0x1
	.string	""
	.uleb128 0x1
	.sleb128 -4
	.byte	0x8
	.byte	0xc
	.uleb128 0x4
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x1
	.align 4
.LECIE1:
.LSFDE1:
	.long	.LEFDE1-.LASFDE1
.LASFDE1:
	.long	.LASFDE1-.Lframe1
	.long	.LFB0
	.long	.LFE0-.LFB0
	.byte	0x4
	.long	.LCFI0-.LFB0
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.long	.LFB3
	.long	.LFE3-.LFB3
	.byte	0x4
	.long	.LCFI3-.LFB3
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI6-.LCFI4
	.byte	0xc5
	.byte	0xc
	.uleb128 0x4
	.uleb128 0x4
	.align 4
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.long	.LFB11
	.long	.LFE11-.LFB11
	.byte	0x4
	.long	.LCFI11-.LFB11
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI14-.LCFI12
	.byte	0xc5
	.byte	0xc
	.uleb128 0x4
	.uleb128 0x4
	.align 4
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.long	.LFB16
	.long	.LFE16-.LFB16
	.byte	0x4
	.long	.LCFI23-.LFB16
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI24-.LCFI23
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI26-.LCFI24
	.byte	0xc5
	.byte	0xc
	.uleb128 0x4
	.uleb128 0x4
	.align 4
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.long	.LFB20
	.long	.LFE20-.LFB20
	.byte	0x4
	.long	.LCFI39-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI40-.LCFI39
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI42-.LCFI40
	.byte	0xc5
	.byte	0xc
	.uleb128 0x4
	.uleb128 0x4
	.align 4
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.long	.LFB21
	.long	.LFE21-.LFB21
	.byte	0x4
	.long	.LCFI43-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI44-.LCFI43
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE11:
.LSFDE13:
	.long	.LEFDE13-.LASFDE13
.LASFDE13:
	.long	.LASFDE13-.Lframe1
	.long	.LFB22
	.long	.LFE22-.LFB22
	.byte	0x4
	.long	.LCFI46-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI47-.LCFI46
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI49-.LCFI47
	.byte	0xc5
	.byte	0xc
	.uleb128 0x4
	.uleb128 0x4
	.align 4
.LEFDE13:
.LSFDE15:
	.long	.LEFDE15-.LASFDE15
.LASFDE15:
	.long	.LASFDE15-.Lframe1
	.long	.LFB24
	.long	.LFE24-.LFB24
	.byte	0x4
	.long	.LCFI54-.LFB24
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI55-.LCFI54
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI59-.LCFI55
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI60-.LCFI59
	.byte	0xc3
	.byte	0x4
	.long	.LCFI61-.LCFI60
	.byte	0xc6
	.byte	0x4
	.long	.LCFI62-.LCFI61
	.byte	0xc7
	.byte	0x4
	.long	.LCFI63-.LCFI62
	.byte	0xc5
	.byte	0xc
	.uleb128 0x4
	.uleb128 0x4
	.align 4
.LEFDE15:
	.ident	"GCC: (GNU) 4.5.1"
	.section	.note.GNU-stack,"",@progbits
#endif
#ifdef __x86_64__
	.file	"logic.cc"
	.section	.rodata
.LC0:
	.string	"errno = %d\n"
	.text
	.type	_ZL5errorPKcz, @function
_ZL5errorPKcz:
.LFB0:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movl	$.L2, %eax
	subq	%rdx, %rax
	leaq	-1(%rbp), %rdx
	jmp	*%rax
	movaps	%xmm7, -15(%rdx)
	movaps	%xmm6, -31(%rdx)
	movaps	%xmm5, -47(%rdx)
	movaps	%xmm4, -63(%rdx)
	movaps	%xmm3, -79(%rdx)
	movaps	%xmm2, -95(%rdx)
	movaps	%xmm1, -111(%rdx)
	movaps	%xmm0, -127(%rdx)
.L2:
	movq	%rdi, -216(%rbp)
	leaq	-208(%rbp), %rax
	movl	$8, (%rax)
	leaq	-208(%rbp), %rax
	movl	$48, 4(%rax)
	leaq	-208(%rbp), %rax
	leaq	16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	leaq	-208(%rbp), %rax
	leaq	-176(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	stderr(%rip), %rax
	leaq	-208(%rbp), %rdx
	movq	-216(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	vfprintf
	call	__errno_location
	movl	(%rax), %edx
	movq	stderr(%rip), %rax
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	$0, %edi
	call	perror
	movl	$-1, %edi
	call	exit
	.cfi_endproc
.LFE0:
	.size	_ZL5errorPKcz, .-_ZL5errorPKcz
	.section	.rodata
	.align 8
.LC1:
	.string	"bbbbbbbbbbbb--------wwwwwwwwwwww"
	.section	.text._ZN5BoardC1Ev,"axG",@progbits,_ZN5BoardC1Ev,comdat
	.align 2
	.weak	_ZN5BoardC1Ev
	.type	_ZN5BoardC1Ev, @function
_ZN5BoardC1Ev:
.LFB4:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$.LC1, %esi
	movq	%rax, %rdi
	call	_ZN5Board11from_stringEPKc
	leave
	ret
	.cfi_endproc
.LFE4:
	.size	_ZN5BoardC1Ev, .-_ZN5BoardC1Ev
	.section	.text._ZN5BoardC1ERKS_,"axG",@progbits,_ZN5BoardC1ERKS_,comdat
	.align 2
	.weak	_ZN5BoardC1ERKS_
	.type	_ZN5BoardC1ERKS_, @function
_ZN5BoardC1ERKS_:
.LFB7:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$256, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	leave
	ret
	.cfi_endproc
.LFE7:
	.size	_ZN5BoardC1ERKS_, .-_ZN5BoardC1ERKS_
	.section	.rodata
	.align 8
.LC2:
	.string	"input string must be 32 chars\n"
	.align 8
.LC3:
	.string	"unknown char '%c' in input string\n"
	.text
	.align 2
.globl _ZN5Board11from_stringEPKc
	.type	_ZN5Board11from_stringEPKc, @function
_ZN5Board11from_stringEPKc:
.LFB11:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	$32, %rax
	je	.L9
	movl	$.LC2, %edi
	movl	$0, %eax
	call	_ZL5errorPKcz
.L9:
	movl	$0, -12(%rbp)
	jmp	.L10
.L19:
	movl	-12(%rbp), %eax
	cltq
	addq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al,%eax
	cmpl	$87, %eax
	je	.L14
	cmpl	$87, %eax
	jg	.L17
	cmpl	$45, %eax
	je	.L12
	cmpl	$66, %eax
	je	.L13
	jmp	.L11
.L17:
	cmpl	$98, %eax
	je	.L15
	cmpl	$119, %eax
	je	.L16
	jmp	.L11
.L15:
	movl	$1, -8(%rbp)
	jmp	.L18
.L16:
	movl	$2, -8(%rbp)
	jmp	.L18
.L13:
	movl	$5, -8(%rbp)
	jmp	.L18
.L14:
	movl	$6, -8(%rbp)
	jmp	.L18
.L12:
	movl	$0, -8(%rbp)
	jmp	.L18
.L11:
	movl	-12(%rbp), %eax
	cltq
	addq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al,%eax
	movl	%eax, %esi
	movl	$.LC3, %edi
	movl	$0, %eax
	call	_ZL5errorPKcz
.L18:
	movl	-12(%rbp), %eax
	leal	3(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$2, %eax
	andl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %eax
	addl	%eax, %eax
	subl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movslq	%edx,%rdx
	movl	-8(%rbp), %ecx
	movl	%ecx, (%rax,%rdx,4)
	movl	-12(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	addl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movslq	%edx,%rdx
	movl	$0, (%rax,%rdx,4)
	incl	-12(%rbp)
.L10:
	movl	-12(%rbp), %eax
	cltq
	addq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	setne	%al
	testb	%al, %al
	jne	.L19
	leave
	ret
	.cfi_endproc
.LFE11:
	.size	_ZN5Board11from_stringEPKc, .-_ZN5Board11from_stringEPKc
	.section	.rodata
.LC4:
	.string	"Desktop/logic.cc"
.LC5:
	.string	"0"
	.text
	.align 2
.globl _ZN5Board9to_stringEPc
	.type	_ZN5Board9to_stringEPc, @function
_ZN5Board9to_stringEPc:
.LFB12:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L22
.L31:
	movl	-8(%rbp), %eax
	leal	3(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$2, %eax
	andl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	addl	%eax, %eax
	subl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movslq	%edx,%rdx
	movl	(%rax,%rdx,4), %eax
	cmpl	$6, %eax
	ja	.L23
	mov	%eax, %eax
	movq	.L29(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L29:
	.quad	.L24
	.quad	.L25
	.quad	.L26
	.quad	.L23
	.quad	.L23
	.quad	.L27
	.quad	.L28
	.text
.L25:
	movl	-8(%rbp), %eax
	cltq
	addq	-32(%rbp), %rax
	movb	$98, (%rax)
	jmp	.L30
.L26:
	movl	-8(%rbp), %eax
	cltq
	addq	-32(%rbp), %rax
	movb	$119, (%rax)
	jmp	.L30
.L27:
	movl	-8(%rbp), %eax
	cltq
	addq	-32(%rbp), %rax
	movb	$66, (%rax)
	jmp	.L30
.L28:
	movl	-8(%rbp), %eax
	cltq
	addq	-32(%rbp), %rax
	movb	$87, (%rax)
	jmp	.L30
.L24:
	movl	-8(%rbp), %eax
	cltq
	addq	-32(%rbp), %rax
	movb	$45, (%rax)
	jmp	.L30
.L23:
	movl	$_ZZN5Board9to_stringEPcE19__PRETTY_FUNCTION__, %ecx
	movl	$97, %edx
	movl	$.LC4, %esi
	movl	$.LC5, %edi
	call	__assert_fail
.L30:
	movq	-32(%rbp), %rax
	addq	$32, %rax
	movb	$0, (%rax)
	incl	-8(%rbp)
.L22:
	cmpl	$31, -8(%rbp)
	setle	%al
	testb	%al, %al
	jne	.L31
	leave
	ret
	.cfi_endproc
.LFE12:
	.size	_ZN5Board9to_stringEPc, .-_ZN5Board9to_stringEPc
	.align 2
.globl _ZN5BoardC2Ejjj
	.type	_ZN5BoardC2Ejjj, @function
_ZN5BoardC2Ejjj:
.LFB14:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	$1, -12(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L34
.L41:
	movl	-8(%rbp), %eax
	leal	3(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$2, %eax
	andl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %eax
	movl	-28(%rbp), %edx
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L35
	movl	-8(%rbp), %eax
	addl	%eax, %eax
	subl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movl	-12(%rbp), %eax
	movl	-36(%rbp), %edx
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L36
	movl	$5, %eax
	jmp	.L37
.L36:
	movl	$1, %eax
.L37:
	movq	-24(%rbp), %rdx
	movslq	%ecx,%rcx
	movl	%eax, (%rdx,%rcx,4)
.L35:
	movl	-12(%rbp), %eax
	movl	-32(%rbp), %edx
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L38
	movl	-8(%rbp), %eax
	addl	%eax, %eax
	subl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movl	-12(%rbp), %eax
	movl	-36(%rbp), %edx
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L39
	movl	$6, %eax
	jmp	.L40
.L39:
	movl	$2, %eax
.L40:
	movq	-24(%rbp), %rdx
	movslq	%ecx,%rcx
	movl	%eax, (%rdx,%rcx,4)
.L38:
	sall	-12(%rbp)
	incl	-8(%rbp)
.L34:
	cmpl	$31, -8(%rbp)
	setle	%al
	testb	%al, %al
	jne	.L41
	leave
	ret
	.cfi_endproc
.LFE14:
	.size	_ZN5BoardC2Ejjj, .-_ZN5BoardC2Ejjj
	.align 2
.globl _ZN5BoardC1Ejjj
	.type	_ZN5BoardC1Ejjj, @function
_ZN5BoardC1Ejjj:
.LFB15:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	$1, -12(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L44
.L51:
	movl	-8(%rbp), %eax
	leal	3(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$2, %eax
	andl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %eax
	movl	-28(%rbp), %edx
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L45
	movl	-8(%rbp), %eax
	addl	%eax, %eax
	subl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movl	-12(%rbp), %eax
	movl	-36(%rbp), %edx
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L46
	movl	$5, %eax
	jmp	.L47
.L46:
	movl	$1, %eax
.L47:
	movq	-24(%rbp), %rdx
	movslq	%ecx,%rcx
	movl	%eax, (%rdx,%rcx,4)
.L45:
	movl	-12(%rbp), %eax
	movl	-32(%rbp), %edx
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L48
	movl	-8(%rbp), %eax
	addl	%eax, %eax
	subl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movl	-12(%rbp), %eax
	movl	-36(%rbp), %edx
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L49
	movl	$6, %eax
	jmp	.L50
.L49:
	movl	$2, %eax
.L50:
	movq	-24(%rbp), %rdx
	movslq	%ecx,%rcx
	movl	%eax, (%rdx,%rcx,4)
.L48:
	sall	-12(%rbp)
	incl	-8(%rbp)
.L44:
	cmpl	$31, -8(%rbp)
	setle	%al
	testb	%al, %al
	jne	.L51
	leave
	ret
	.cfi_endproc
.LFE15:
	.size	_ZN5BoardC1Ejjj, .-_ZN5BoardC1Ejjj
	.section	.rodata
	.align 8
.LC6:
	.string	"+----+----+----+----+----+----+----+----+"
.LC7:
	.string	"|    "
.LC8:
	.string	"|%c%2d%c"
.LC9:
	.string	"|"
	.text
	.align 2
.globl _ZN5Board4drawEv
	.type	_ZN5Board4drawEv, @function
_ZN5Board4drawEv:
.LFB16:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdi, -40(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L54
	.cfi_offset 3, -24
.L64:
	movl	-24(%rbp), %eax
	andl	$7, %eax
	testl	%eax, %eax
	jne	.L55
	movl	$.LC6, %edi
	call	puts
.L55:
	movb	$32, -17(%rbp)
	movl	-24(%rbp), %edx
	movq	-40(%rbp), %rax
	movslq	%edx,%rdx
	movl	(%rax,%rdx,4), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L56
	movb	$98, -17(%rbp)
.L56:
	movl	-24(%rbp), %edx
	movq	-40(%rbp), %rax
	movslq	%edx,%rdx
	movl	(%rax,%rdx,4), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L57
	movb	$119, -17(%rbp)
.L57:
	movl	-24(%rbp), %edx
	movq	-40(%rbp), %rax
	movslq	%edx,%rdx
	movl	(%rax,%rdx,4), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L58
	movzbl	-17(%rbp), %eax
	subl	$32, %eax
	movb	%al, -17(%rbp)
.L58:
	movl	-24(%rbp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L59
	movl	-24(%rbp), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L60
.L59:
	movl	-24(%rbp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L61
	movl	-24(%rbp), %eax
	andl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L61
.L60:
	movl	$.LC7, %edi
	movl	$0, %eax
	call	printf
	jmp	.L62
.L61:
	movsbl	-17(%rbp),%edx
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	leal	(%rcx,%rax), %eax
	sarl	%eax
	leal	1(%rax), %ebx
	movsbl	-17(%rbp),%eax
	movl	%edx, %ecx
	movl	%ebx, %edx
	movl	%eax, %esi
	movl	$.LC8, %edi
	movl	$0, %eax
	call	printf
.L62:
	movl	-24(%rbp), %eax
	andl	$7, %eax
	cmpl	$7, %eax
	jne	.L63
	movl	$.LC9, %edi
	call	puts
.L63:
	incl	-24(%rbp)
.L54:
	cmpl	$63, -24(%rbp)
	setle	%al
	testb	%al, %al
	jne	.L64
	movl	$.LC6, %edi
	call	puts
	addq	$40, %rsp
	popq	%rbx
	leave
	ret
	.cfi_endproc
.LFE16:
	.size	_ZN5Board4drawEv, .-_ZN5Board4drawEv
	.section	.rodata
.LC10:
	.string	"(f == BLACK) || (f == WHITE)"
	.text
.globl _Z9move_jump9MOVE_JUMPR5Boardhh5Field
	.type	_Z9move_jump9MOVE_JUMPR5Boardhh5Field, @function
_Z9move_jump9MOVE_JUMPR5Boardhh5Field:
.LFB17:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%ecx, %eax
	movl	%r8d, -44(%rbp)
	movb	%dl, -36(%rbp)
	movb	%al, -40(%rbp)
	cmpl	$1, -44(%rbp)
	je	.L67
	cmpl	$2, -44(%rbp)
	je	.L67
	movl	$_ZZ9move_jump9MOVE_JUMPR5Boardhh5FieldE19__PRETTY_FUNCTION__, %ecx
	movl	$136, %edx
	movl	$.LC4, %esi
	movl	$.LC10, %edi
	call	__assert_fail
.L67:
	cmpb	$63, -36(%rbp)
	ja	.L68
	cmpb	$63, -40(%rbp)
	jbe	.L69
.L68:
	movl	$0, %eax
	jmp	.L70
.L69:
	movzbl	-36(%rbp), %edx
	movq	-32(%rbp), %rax
	movslq	%edx,%rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, %edx
	movl	-44(%rbp), %eax
	andl	%edx, %eax
	testl	%eax, %eax
	jne	.L71
	movl	$0, %eax
	jmp	.L70
.L71:
	movzbl	-40(%rbp), %edx
	movq	-32(%rbp), %rax
	movslq	%edx,%rdx
	movl	(%rax,%rdx,4), %eax
	testl	%eax, %eax
	je	.L72
	movl	$0, %eax
	jmp	.L70
.L72:
	movzbl	-36(%rbp), %eax
	cmpb	-40(%rbp), %al
	jae	.L73
	movl	-44(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L74
	movzbl	-36(%rbp), %edx
	movq	-32(%rbp), %rax
	movslq	%edx,%rdx
	movl	(%rax,%rdx,4), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L74
	movl	$0, %eax
	jmp	.L70
.L74:
	movzbl	-36(%rbp), %eax
	movl	%eax, %edx
	andl	$7, %edx
	movzbl	-40(%rbp), %eax
	andl	$7, %eax
	cmpl	%eax, %edx
	jge	.L75
	movl	$9, %eax
	jmp	.L76
.L75:
	movl	$7, %eax
.L76:
	movb	%al, -2(%rbp)
	jmp	.L77
.L73:
	movl	-44(%rbp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L78
	movzbl	-36(%rbp), %edx
	movq	-32(%rbp), %rax
	movslq	%edx,%rdx
	movl	(%rax,%rdx,4), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L78
	movl	$0, %eax
	jmp	.L70
.L78:
	movzbl	-36(%rbp), %eax
	movl	%eax, %edx
	andl	$7, %edx
	movzbl	-40(%rbp), %eax
	andl	$7, %eax
	cmpl	%eax, %edx
	jge	.L79
	movl	$-7, %eax
	jmp	.L80
.L79:
	movl	$-9, %eax
.L80:
	movb	%al, -2(%rbp)
.L77:
	movzbl	-40(%rbp), %edx
	movzbl	-36(%rbp), %eax
	subl	%eax, %edx
	movsbl	-2(%rbp),%eax
	movl	%eax, -56(%rbp)
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-56(%rbp)
	movl	%edx, %eax
	testl	%eax, %eax
	je	.L81
	movl	$0, %eax
	jmp	.L70
.L81:
	movzbl	-40(%rbp), %edx
	movzbl	-36(%rbp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movsbl	-2(%rbp),%edx
	movl	%edx, -52(%rbp)
	movl	%eax, %edx
	sarl	$31, %edx
	idivl	-52(%rbp)
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	cmpl	%eax, %edx
	je	.L82
	movl	$0, %eax
	jmp	.L70
.L82:
	movzbl	-40(%rbp), %eax
	movb	%al, -1(%rbp)
	cmpl	$2, -20(%rbp)
	jne	.L83
	movzbl	-2(%rbp), %eax
	subb	%al, -1(%rbp)
	movzbl	-1(%rbp), %edx
	movq	-32(%rbp), %rax
	movslq	%edx,%rdx
	movl	(%rax,%rdx,4), %eax
	testl	%eax, %eax
	je	.L84
	movzbl	-1(%rbp), %edx
	movq	-32(%rbp), %rax
	movslq	%edx,%rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, %edx
	movl	-44(%rbp), %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L85
.L84:
	movl	$0, %eax
	jmp	.L70
.L85:
	movzbl	-1(%rbp), %edx
	movq	-32(%rbp), %rax
	movslq	%edx,%rdx
	movl	$0, (%rax,%rdx,4)
.L83:
	movzbl	-40(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	addq	-32(%rbp), %rdx
	movzbl	-36(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z4swapI5FieldEvRT_S2_
	movl	$1, %eax
.L70:
	leave
	ret
	.cfi_endproc
.LFE17:
	.size	_Z9move_jump9MOVE_JUMPR5Boardhh5Field, .-_Z9move_jump9MOVE_JUMPR5Boardhh5Field
.globl _Z15check_move_jump9MOVE_JUMPRK5Boardh5Field
	.type	_Z15check_move_jump9MOVE_JUMPRK5Boardh5Field, @function
_Z15check_move_jump9MOVE_JUMPRK5Boardh5Field:
.LFB18:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$296, %rsp
	movl	%edi, -276(%rbp)
	movq	%rsi, -288(%rbp)
	movl	%edx, %eax
	movl	%ecx, -296(%rbp)
	movb	%al, -292(%rbp)
	movq	-288(%rbp), %rdx
	leaq	-272(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	_ZN5BoardC1ERKS_
	movl	-276(%rbp), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	negl	%eax
	addb	-292(%rbp), %al
	movzbl	%al, %ecx
	movzbl	-292(%rbp), %edx
	movl	-296(%rbp), %esi
	leaq	-272(%rbp), %rbx
	movl	-276(%rbp), %eax
	movl	%esi, %r8d
	movq	%rbx, %rsi
	movl	%eax, %edi
	call	_Z9move_jump9MOVE_JUMPR5Boardhh5Field
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L88
	movl	$1, %eax
	jmp	.L89
.L88:
	movl	-276(%rbp), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	subb	%dl, %al
	negl	%eax
	addb	-292(%rbp), %al
	movzbl	%al, %ecx
	movzbl	-292(%rbp), %edx
	movl	-296(%rbp), %esi
	leaq	-272(%rbp), %rbx
	movl	-276(%rbp), %eax
	movl	%esi, %r8d
	movq	%rbx, %rsi
	movl	%eax, %edi
	call	_Z9move_jump9MOVE_JUMPR5Boardhh5Field
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L90
	movl	$1, %eax
	jmp	.L89
.L90:
	movl	-276(%rbp), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	subb	%dl, %al
	addb	-292(%rbp), %al
	movzbl	%al, %ecx
	movzbl	-292(%rbp), %edx
	movl	-296(%rbp), %esi
	leaq	-272(%rbp), %rbx
	movl	-276(%rbp), %eax
	movl	%esi, %r8d
	movq	%rbx, %rsi
	movl	%eax, %edi
	call	_Z9move_jump9MOVE_JUMPR5Boardhh5Field
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L91
	movl	$1, %eax
	jmp	.L89
.L91:
	movl	-276(%rbp), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addb	-292(%rbp), %al
	movzbl	%al, %ecx
	movzbl	-292(%rbp), %edx
	movl	-296(%rbp), %esi
	leaq	-272(%rbp), %rbx
	movl	-276(%rbp), %eax
	movl	%esi, %r8d
	movq	%rbx, %rsi
	movl	%eax, %edi
	call	_Z9move_jump9MOVE_JUMPR5Boardhh5Field
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L92
	movl	$1, %eax
	jmp	.L89
.L92:
	movl	$0, %eax
.L89:
	addq	$296, %rsp
	popq	%rbx
	leave
	ret
	.cfi_endproc
.LFE18:
	.size	_Z15check_move_jump9MOVE_JUMPRK5Boardh5Field, .-_Z15check_move_jump9MOVE_JUMPRK5Boardh5Field
	.section	.rodata
.LC11:
	.string	"f == BLACK || f == WHITE"
	.text
.globl _Z13can_move_jump9MOVE_JUMPRK5Board5Field
	.type	_Z13can_move_jump9MOVE_JUMPRK5Board5Field, @function
_Z13can_move_jump9MOVE_JUMPRK5Board5Field:
.LFB19:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	cmpl	$1, -52(%rbp)
	je	.L95
	.cfi_offset 3, -24
	cmpl	$2, -52(%rbp)
	je	.L95
	movl	$_ZZ13can_move_jump9MOVE_JUMPRK5Board5FieldE19__PRETTY_FUNCTION__, %ecx
	movl	$190, %edx
	movl	$.LC4, %esi
	movl	$.LC11, %edi
	call	__assert_fail
.L95:
	movb	$0, -17(%rbp)
	jmp	.L96
.L101:
	movzbl	-17(%rbp), %edx
	movq	-48(%rbp), %rax
	movslq	%edx,%rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, %edx
	movl	-52(%rbp), %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L97
	movzbl	-17(%rbp), %edx
	movl	-52(%rbp), %ecx
	movq	-48(%rbp), %rbx
	movl	-36(%rbp), %eax
	movq	%rbx, %rsi
	movl	%eax, %edi
	call	_Z15check_move_jump9MOVE_JUMPRK5Boardh5Field
	testb	%al, %al
	je	.L97
	movl	$1, %eax
	jmp	.L98
.L97:
	movl	$0, %eax
.L98:
	testb	%al, %al
	je	.L99
	movl	$1, %eax
	jmp	.L100
.L99:
	incb	-17(%rbp)
.L96:
	cmpb	$63, -17(%rbp)
	setbe	%al
	testb	%al, %al
	jne	.L101
	movl	$0, %eax
.L100:
	addq	$56, %rsp
	popq	%rbx
	leave
	ret
	.cfi_endproc
.LFE19:
	.size	_Z13can_move_jump9MOVE_JUMPRK5Board5Field, .-_Z13can_move_jump9MOVE_JUMPRK5Board5Field
	.section	.rodata
.LC12:
	.string	"[mcp] upgrade\n"
	.text
.globl _Z7upgradeR5Boardh
	.type	_Z7upgradeR5Boardh, @function
_Z7upgradeR5Boardh:
.LFB20:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movb	%al, -12(%rbp)
	cmpb	$7, -12(%rbp)
	ja	.L104
	movzbl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movslq	%edx,%rdx
	movl	(%rax,%rdx,4), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L104
	movzbl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movslq	%edx,%rdx
	movl	$6, (%rax,%rdx,4)
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$14, %edx
	movl	$1, %esi
	movl	$.LC12, %edi
	call	fwrite
.L104:
	cmpb	$55, -12(%rbp)
	jbe	.L106
	movzbl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movslq	%edx,%rdx
	movl	(%rax,%rdx,4), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L106
	movzbl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movslq	%edx,%rdx
	movl	$5, (%rax,%rdx,4)
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$14, %edx
	movl	$1, %esi
	movl	$.LC12, %edi
	call	fwrite
.L106:
	leave
	ret
	.cfi_endproc
.LFE20:
	.size	_Z7upgradeR5Boardh, .-_Z7upgradeR5Boardh
	.section	.rodata
.LC13:
	.string	"[mcp] "
	.align 8
.LC14:
	.string	"(winner >= 0) && (winner <= 2)"
.LC15:
	.string	"[mcp] DRAW.\n"
.LC16:
	.string	"BLACK"
.LC17:
	.string	"WHITE"
.LC18:
	.string	"[mcp] %s wins.\n"
	.text
	.type	_ZL8end_gameiPKcz, @function
_ZL8end_gameiPKcz:
.LFB21:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movl	%edi, -212(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movl	$.L108, %eax
	subq	%rdx, %rax
	leaq	-1(%rbp), %rdx
	jmp	*%rax
	movaps	%xmm7, -15(%rdx)
	movaps	%xmm6, -31(%rdx)
	movaps	%xmm5, -47(%rdx)
	movaps	%xmm4, -63(%rdx)
	movaps	%xmm3, -79(%rdx)
	movaps	%xmm2, -95(%rdx)
	movaps	%xmm1, -111(%rdx)
	movaps	%xmm0, -127(%rdx)
.L108:
	movq	%rsi, -224(%rbp)
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$6, %edx
	movl	$1, %esi
	movl	$.LC13, %edi
	call	fwrite
	leaq	-208(%rbp), %rax
	movl	$16, (%rax)
	leaq	-208(%rbp), %rax
	movl	$48, 4(%rax)
	leaq	-208(%rbp), %rax
	leaq	16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	leaq	-208(%rbp), %rax
	leaq	-176(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	stderr(%rip), %rax
	leaq	-208(%rbp), %rdx
	movq	-224(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	vfprintf
	movq	stderr(%rip), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc
	cmpl	$0, -212(%rbp)
	js	.L109
	cmpl	$2, -212(%rbp)
	jle	.L110
.L109:
	movl	$_ZZL8end_gameiPKczE19__PRETTY_FUNCTION__, %ecx
	movl	$219, %edx
	movl	$.LC4, %esi
	movl	$.LC14, %edi
	call	__assert_fail
.L110:
	cmpl	$2, -212(%rbp)
	jne	.L111
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$12, %edx
	movl	$1, %esi
	movl	$.LC15, %edi
	call	fwrite
	jmp	.L112
.L111:
	cmpl	$0, -212(%rbp)
	je	.L113
	movl	$.LC16, %eax
	jmp	.L114
.L113:
	movl	$.LC17, %eax
.L114:
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movl	$.LC18, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
.L112:
	movl	$0, %edi
	call	exit
	.cfi_endproc
.LFE21:
	.size	_ZL8end_gameiPKcz, .-_ZL8end_gameiPKcz
.globl b
	.bss
	.align 32
	.type	b, @object
	.size	b, 256
b:
	.zero	256
.globl turn
	.align 4
	.type	turn, @object
	.size	turn, 4
turn:
	.zero	4
.globl idle
	.align 4
	.type	idle, @object
	.size	idle, 4
idle:
	.zero	4
.globl buffer
	.align 32
	.type	buffer, @object
	.size	buffer, 36
buffer:
	.zero	36
	.section	.rodata
	.align 8
.LC19:
	.string	"init failed ('B' or 'W' expected)\n"
.LC20:
	.string	"init failed (':' expected)\n"
	.text
.globl _Z4initPKc
	.type	_Z4initPKc, @function
_Z4initPKc:
.LFB22:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L123
.L117:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$87, %al
	jne	.L119
	movl	turn(%rip), %eax
	incl	%eax
	movl	%eax, turn(%rip)
	jmp	.L120
.L119:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$66, %al
	je	.L120
	movl	$.LC19, %edi
	movl	$0, %eax
	call	_ZL5errorPKcz
.L120:
	movq	-8(%rbp), %rax
	incq	%rax
	movzbl	(%rax), %eax
	cmpb	$58, %al
	je	.L121
	movl	$.LC20, %edi
	movl	$0, %eax
	call	_ZL5errorPKcz
.L121:
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movq	%rax, %rsi
	movl	$b, %edi
	call	_ZN5Board11from_stringEPKc
	jmp	.L122
.L123:
	nop
.L122:
	leave
	ret
	.cfi_endproc
.LFE22:
	.size	_Z4initPKc, .-_Z4initPKc
.globl _Z9serializev
	.type	_Z9serializev, @function
_Z9serializev:
.LFB23:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	movl	turn(%rip), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L125
	movl	$87, %eax
	jmp	.L126
.L125:
	movl	$66, %eax
.L126:
	movb	%al, buffer(%rip)
	movb	$58, buffer+1(%rip)
	movl	$buffer+2, %esi
	movl	$b, %edi
	call	_ZN5Board9to_stringEPc
	movb	$10, buffer+34(%rip)
	movb	$0, buffer+35(%rip)
	movl	$buffer, %eax
	leave
	ret
	.cfi_endproc
.LFE23:
	.size	_Z9serializev, .-_Z9serializev
	.section	.rodata
.LC21:
	.string	"no move '%s'"
.LC22:
	.string	"error parsing move '%s'"
	.align 8
.LC23:
	.string	"INVALID move %ld-%ld (jump forced)\n"
	.align 8
.LC24:
	.string	"INVALID move %ld-%ld (jump forced)"
.LC25:
	.string	"INVALID move %ld-%ld\n"
.LC26:
	.string	"INVALID move %ld-%ld"
.LC27:
	.string	"[mcp] valid move %ld-%ld\n"
.LC28:
	.string	"error parsing '%s'"
.LC29:
	.string	"INVALID jump %ldx%ld\n"
.LC30:
	.string	"INVALID jump %ldx%ld"
.LC31:
	.string	"[mcp] valid jump %ldx%ld\n"
	.align 8
.LC32:
	.string	"INVALID jump (jump forced %ld)\n"
	.align 8
.LC33:
	.string	"INVALID jump (jump forced %ld)"
.LC34:
	.string	"no moves left"
.LC35:
	.string	"20 moves timeout"
	.text
.globl _Z11deserializePc
	.type	_Z11deserializePc, @function
_Z11deserializePc:
.LFB24:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$328, %rsp
	movq	%rdi, -328(%rbp)
	movq	-328(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L129
	.cfi_offset 3, -24
	movl	turn(%rip), %eax
	movl	%eax, %ecx
	andl	$1, %ecx
	movq	-328(%rbp), %rax
	movq	%rax, %rdx
	movl	$.LC21, %esi
	movl	%ecx, %edi
	movl	$0, %eax
	call	_ZL8end_gameiPKcz
.L129:
	movq	-64(%rbp), %rax
	leaq	-64(%rbp), %rcx
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strtol
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L130
	movq	-64(%rbp), %rax
	incq	%rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	-64(%rbp), %rcx
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strtol
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L131
	movl	turn(%rip), %eax
	movl	%eax, %ecx
	andl	$1, %ecx
	movq	-328(%rbp), %rax
	movq	%rax, %rdx
	movl	$.LC22, %esi
	movl	%ecx, %edi
	movl	$0, %eax
	call	_ZL8end_gameiPKcz
.L131:
	movl	turn(%rip), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L132
	movl	$2, %eax
	jmp	.L133
.L132:
	movl	$1, %eax
.L133:
	movl	%eax, %edx
	movl	$b, %esi
	movl	$2, %edi
	call	_Z13can_move_jump9MOVE_JUMPRK5Board5Field
	testb	%al, %al
	je	.L134
	movzbl	debug(%rip), %eax
	testb	%al, %al
	je	.L135
	movq	stderr(%rip), %rax
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movl	$.LC23, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	$0, %eax
	jmp	.L136
.L135:
	movl	turn(%rip), %eax
	movl	%eax, %ebx
	andl	$1, %ebx
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$.LC24, %esi
	movl	%ebx, %edi
	movl	$0, %eax
	call	_ZL8end_gameiPKcz
.L134:
	movq	-56(%rbp), %rax
	leal	(%rax,%rax), %ecx
	movq	-56(%rbp), %rax
	decq	%rax
	leaq	3(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$2, %rax
	andl	$1, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	decl	%eax
	movl	%eax, -40(%rbp)
	movq	-48(%rbp), %rax
	leal	(%rax,%rax), %ecx
	movq	-48(%rbp), %rax
	decq	%rax
	leaq	3(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$2, %rax
	andl	$1, %eax
	movl	%ecx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	decl	%eax
	movl	%eax, -36(%rbp)
	movl	turn(%rip), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L137
	movl	$2, %eax
	jmp	.L138
.L137:
	movl	$1, %eax
.L138:
	movl	-36(%rbp), %edx
	movzbl	%dl, %ecx
	movl	-40(%rbp), %edx
	movzbl	%dl, %edx
	movl	%eax, %r8d
	movl	$b, %esi
	movl	$1, %edi
	call	_Z9move_jump9MOVE_JUMPR5Boardhh5Field
	testl	%eax, %eax
	sete	%al
	testb	%al, %al
	je	.L139
	movzbl	debug(%rip), %eax
	testb	%al, %al
	je	.L140
	movq	stderr(%rip), %rax
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movl	$.LC25, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	$0, %eax
	jmp	.L136
.L140:
	movl	turn(%rip), %eax
	movl	%eax, %ebx
	andl	$1, %ebx
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$.LC26, %esi
	movl	%ebx, %edi
	movl	$0, %eax
	call	_ZL8end_gameiPKcz
.L139:
	movl	-36(%rbp), %eax
	cltq
	movl	b(,%rax,4), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L141
	movl	idle(%rip), %eax
	incl	%eax
	jmp	.L142
.L141:
	movl	$0, %eax
.L142:
	movl	%eax, idle(%rip)
	movq	stderr(%rip), %rax
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movl	$.LC27, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	-36(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, %esi
	movl	$b, %edi
	call	_Z7upgradeR5Boardh
	jmp	.L143
.L130:
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$120, %al
	jne	.L144
	leaq	-320(%rbp), %rax
	movl	$b, %esi
	movq	%rax, %rdi
	call	_ZN5BoardC1ERKS_
	jmp	.L145
.L156:
	movq	-64(%rbp), %rax
	incq	%rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	-64(%rbp), %rcx
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strtol
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L146
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$120, %al
	je	.L146
	movl	turn(%rip), %eax
	movl	%eax, %ecx
	andl	$1, %ecx
	movq	-328(%rbp), %rax
	movq	%rax, %rdx
	movl	$.LC28, %esi
	movl	%ecx, %edi
	movl	$0, %eax
	call	_ZL8end_gameiPKcz
.L146:
	movq	-56(%rbp), %rax
	leal	(%rax,%rax), %ecx
	movq	-56(%rbp), %rax
	decq	%rax
	leaq	3(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$2, %rax
	andl	$1, %eax
	movl	%ecx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	decl	%eax
	movl	%eax, -24(%rbp)
	movq	-32(%rbp), %rax
	leal	(%rax,%rax), %ecx
	movq	-32(%rbp), %rax
	decq	%rax
	leaq	3(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$2, %rax
	andl	$1, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	decl	%eax
	movl	%eax, -20(%rbp)
	movl	turn(%rip), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L147
	movl	$2, %eax
	jmp	.L148
.L147:
	movl	$1, %eax
.L148:
	movl	-20(%rbp), %edx
	movzbl	%dl, %ecx
	movl	-24(%rbp), %edx
	movzbl	%dl, %edx
	movl	%eax, %r8d
	movl	$b, %esi
	movl	$2, %edi
	call	_Z9move_jump9MOVE_JUMPR5Boardhh5Field
	testl	%eax, %eax
	sete	%al
	testb	%al, %al
	je	.L149
	movzbl	debug(%rip), %eax
	testb	%al, %al
	je	.L150
	movq	stderr(%rip), %rax
	movq	-32(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movl	$.LC29, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	$b, %edx
	leaq	-320(%rbp), %rbx
	movl	$32, %eax
	movq	%rdx, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rcx
	rep movsq
	movl	$0, %eax
	jmp	.L136
.L150:
	movl	turn(%rip), %eax
	movl	%eax, %ebx
	andl	$1, %ebx
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$.LC30, %esi
	movl	%ebx, %edi
	movl	$0, %eax
	call	_ZL8end_gameiPKcz
.L149:
	movl	$0, idle(%rip)
	movq	stderr(%rip), %rax
	movq	-32(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movl	$.LC31, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L151
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.L145
.L151:
	movl	turn(%rip), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L152
	movl	$2, %eax
	jmp	.L153
.L152:
	movl	$1, %eax
.L153:
	movl	-20(%rbp), %edx
	movzbl	%dl, %edx
	movl	%eax, %ecx
	movl	$b, %esi
	movl	$2, %edi
	call	_Z15check_move_jump9MOVE_JUMPRK5Boardh5Field
	testb	%al, %al
	je	.L154
	movzbl	debug(%rip), %eax
	testb	%al, %al
	je	.L155
	movq	stderr(%rip), %rax
	movq	-32(%rbp), %rdx
	movl	$.LC32, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	$b, %edx
	leaq	-320(%rbp), %rbx
	movl	$32, %eax
	movq	%rdx, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rcx
	rep movsq
	movl	$0, %eax
	jmp	.L136
.L155:
	movl	turn(%rip), %eax
	movl	%eax, %ecx
	andl	$1, %ecx
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	movl	$.LC33, %esi
	movl	%ecx, %edi
	movl	$0, %eax
	call	_ZL8end_gameiPKcz
.L154:
	movl	-20(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, %esi
	movl	$b, %edi
	call	_Z7upgradeR5Boardh
.L145:
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	setne	%al
	testb	%al, %al
	jne	.L156
	jmp	.L143
.L144:
	movl	turn(%rip), %eax
	movl	%eax, %ecx
	andl	$1, %ecx
	movq	-328(%rbp), %rax
	movq	%rax, %rdx
	movl	$.LC28, %esi
	movl	%ecx, %edi
	movl	$0, %eax
	call	_ZL8end_gameiPKcz
.L143:
	movl	turn(%rip), %eax
	incl	%eax
	movl	%eax, turn(%rip)
	movl	turn(%rip), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L157
	movl	$2, %eax
	jmp	.L158
.L157:
	movl	$1, %eax
.L158:
	movl	%eax, %edx
	movl	$b, %esi
	movl	$1, %edi
	call	_Z13can_move_jump9MOVE_JUMPRK5Board5Field
	xorl	$1, %eax
	testb	%al, %al
	je	.L159
	movl	turn(%rip), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L160
	movl	$2, %eax
	jmp	.L161
.L160:
	movl	$1, %eax
.L161:
	movl	%eax, %edx
	movl	$b, %esi
	movl	$2, %edi
	call	_Z13can_move_jump9MOVE_JUMPRK5Board5Field
	xorl	$1, %eax
	testb	%al, %al
	je	.L159
	movl	$1, %eax
	jmp	.L162
.L159:
	movl	$0, %eax
.L162:
	testb	%al, %al
	je	.L163
	movl	turn(%rip), %eax
	andl	$1, %eax
	movl	$.LC34, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ZL8end_gameiPKcz
.L163:
	movl	idle(%rip), %eax
	cmpl	$20, %eax
	jle	.L164
	movl	$.LC35, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	_ZL8end_gameiPKcz
.L164:
	movl	$1, %eax
.L136:
	addq	$328, %rsp
	popq	%rbx
	leave
	ret
	.cfi_endproc
.LFE24:
	.size	_Z11deserializePc, .-_Z11deserializePc
	.section	.text._Z4swapI5FieldEvRT_S2_,"axG",@progbits,_Z4swapI5FieldEvRT_S2_,comdat
	.weak	_Z4swapI5FieldEvRT_S2_
	.type	_Z4swapI5FieldEvRT_S2_, @function
_Z4swapI5FieldEvRT_S2_:
.LFB25:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	leave
	ret
	.cfi_endproc
.LFE25:
	.size	_Z4swapI5FieldEvRT_S2_, .-_Z4swapI5FieldEvRT_S2_
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB26:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L170
	cmpl	$65535, -8(%rbp)
	jne	.L170
	movl	$b, %edi
	call	_ZN5BoardC1Ev
.L170:
	leave
	ret
	.cfi_endproc
.LFE26:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__I__ZN5Board11from_stringEPKc, @function
_GLOBAL__I__ZN5Board11from_stringEPKc:
.LFB27:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	leave
	ret
	.cfi_endproc
.LFE27:
	.size	_GLOBAL__I__ZN5Board11from_stringEPKc, .-_GLOBAL__I__ZN5Board11from_stringEPKc
	.section	.ctors,"aw",@progbits
	.align 8
	.quad	_GLOBAL__I__ZN5Board11from_stringEPKc
	.section	.rodata
	.align 32
	.type	_ZZL8end_gameiPKczE19__PRETTY_FUNCTION__, @object
	.size	_ZZL8end_gameiPKczE19__PRETTY_FUNCTION__, 37
_ZZL8end_gameiPKczE19__PRETTY_FUNCTION__:
	.string	"void end_game(int, const char*, ...)"
	.align 32
	.type	_ZZ13can_move_jump9MOVE_JUMPRK5Board5FieldE19__PRETTY_FUNCTION__, @object
	.size	_ZZ13can_move_jump9MOVE_JUMPRK5Board5FieldE19__PRETTY_FUNCTION__, 51
_ZZ13can_move_jump9MOVE_JUMPRK5Board5FieldE19__PRETTY_FUNCTION__:
	.string	"bool can_move_jump(MOVE_JUMP, const Board&, Field)"
	.align 32
	.type	_ZZ9move_jump9MOVE_JUMPR5Boardhh5FieldE19__PRETTY_FUNCTION__, @object
	.size	_ZZ9move_jump9MOVE_JUMPR5Boardhh5FieldE19__PRETTY_FUNCTION__, 70
_ZZ9move_jump9MOVE_JUMPR5Boardhh5FieldE19__PRETTY_FUNCTION__:
	.string	"int move_jump(MOVE_JUMP, Board&, unsigned char, unsigned char, Field)"
	.align 16
	.type	_ZZN5Board9to_stringEPcE19__PRETTY_FUNCTION__, @object
	.size	_ZZN5Board9to_stringEPcE19__PRETTY_FUNCTION__, 29
_ZZN5Board9to_stringEPcE19__PRETTY_FUNCTION__:
	.string	"void Board::to_string(char*)"
	.ident	"GCC: (Debian 4.4.5-8) 4.4.5"
	.section	.note.GNU-stack,"",@progbits
#endif
#endif
#ifdef __APPLE__
#ifdef __i386__
	.mod_init_func
	.align 2
	.long	__GLOBAL__I__ZN5Board11from_stringEPKc
	.text
	.align 1,0x90
.globl __ZN5BoardC2Ejjj
__ZN5BoardC2Ejjj:
LFB17:
	pushl	%ebp
LCFI0:
	movl	%esp, %ebp
LCFI1:
	subl	$40, %esp
LCFI2:
	movl	$1, -12(%ebp)
	movl	$0, -16(%ebp)
	jmp	L2
L3:
	movl	-16(%ebp), %eax
	leal	3(%eax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$2, %eax
	andl	$1, %eax
	movl	%eax, -20(%ebp)
	movl	-12(%ebp), %eax
	andl	12(%ebp), %eax
	testl	%eax, %eax
	je	L4
	movl	-16(%ebp), %eax
	addl	%eax, %eax
	subl	-20(%ebp), %eax
	incl	%eax
	movl	%eax, -40(%ebp)
	movl	-12(%ebp), %eax
	andl	20(%ebp), %eax
	testl	%eax, %eax
	je	L6
	movl	$5, -36(%ebp)
	jmp	L8
L6:
	movl	$1, -36(%ebp)
L8:
	movl	8(%ebp), %eax
	movl	-36(%ebp), %ecx
	movl	-40(%ebp), %edx
	movl	%ecx, (%eax,%edx,4)
L4:
	movl	-12(%ebp), %eax
	andl	16(%ebp), %eax
	testl	%eax, %eax
	je	L9
	movl	-16(%ebp), %eax
	addl	%eax, %eax
	subl	-20(%ebp), %eax
	incl	%eax
	movl	%eax, -32(%ebp)
	movl	-12(%ebp), %eax
	andl	20(%ebp), %eax
	testl	%eax, %eax
	je	L11
	movl	$6, -28(%ebp)
	jmp	L13
L11:
	movl	$2, -28(%ebp)
L13:
	movl	8(%ebp), %eax
	movl	-28(%ebp), %ecx
	movl	-32(%ebp), %edx
	movl	%ecx, (%eax,%edx,4)
L9:
	sall	-12(%ebp)
	incl	-16(%ebp)
L2:
	cmpl	$31, -16(%ebp)
	jle	L3
	leave
	ret
LFE17:
	.align 1,0x90
.globl __ZN5BoardC1Ejjj
__ZN5BoardC1Ejjj:
LFB18:
	pushl	%ebp
LCFI3:
	movl	%esp, %ebp
LCFI4:
	subl	$40, %esp
LCFI5:
	movl	$1, -12(%ebp)
	movl	$0, -16(%ebp)
	jmp	L17
L18:
	movl	-16(%ebp), %eax
	leal	3(%eax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$2, %eax
	andl	$1, %eax
	movl	%eax, -20(%ebp)
	movl	-12(%ebp), %eax
	andl	12(%ebp), %eax
	testl	%eax, %eax
	je	L19
	movl	-16(%ebp), %eax
	addl	%eax, %eax
	subl	-20(%ebp), %eax
	incl	%eax
	movl	%eax, -40(%ebp)
	movl	-12(%ebp), %eax
	andl	20(%ebp), %eax
	testl	%eax, %eax
	je	L21
	movl	$5, -36(%ebp)
	jmp	L23
L21:
	movl	$1, -36(%ebp)
L23:
	movl	8(%ebp), %eax
	movl	-36(%ebp), %ecx
	movl	-40(%ebp), %edx
	movl	%ecx, (%eax,%edx,4)
L19:
	movl	-12(%ebp), %eax
	andl	16(%ebp), %eax
	testl	%eax, %eax
	je	L24
	movl	-16(%ebp), %eax
	addl	%eax, %eax
	subl	-20(%ebp), %eax
	incl	%eax
	movl	%eax, -32(%ebp)
	movl	-12(%ebp), %eax
	andl	20(%ebp), %eax
	testl	%eax, %eax
	je	L26
	movl	$6, -28(%ebp)
	jmp	L28
L26:
	movl	$2, -28(%ebp)
L28:
	movl	8(%ebp), %eax
	movl	-28(%ebp), %ecx
	movl	-32(%ebp), %edx
	movl	%ecx, (%eax,%edx,4)
L24:
	sall	-12(%ebp)
	incl	-16(%ebp)
L17:
	cmpl	$31, -16(%ebp)
	jle	L18
	leave
	ret
LFE18:
	.section __TEXT,__textcoal_nt,coalesced,pure_instructions
.globl __Z4swapI5FieldEvRT_S2_
	.weak_definition __Z4swapI5FieldEvRT_S2_
__Z4swapI5FieldEvRT_S2_:
LFB28:
	pushl	%ebp
LCFI6:
	movl	%esp, %ebp
LCFI7:
	subl	$24, %esp
LCFI8:
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	movl	8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	leave
	ret
LFE28:
	.align 1
.globl __ZN5BoardC1ERKS_
	.weak_definition __ZN5BoardC1ERKS_
__ZN5BoardC1ERKS_:
LFB10:
	pushl	%ebp
LCFI9:
	movl	%esp, %ebp
LCFI10:
	subl	$24, %esp
LCFI11:
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	$256, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_memcpy
	leave
	ret
LFE10:
	.cstring
LC0:
	.ascii "[mcp] upgrade\12\0"
	.text
.globl __Z7upgradeR5Boardh
__Z7upgradeR5Boardh:
LFB23:
	pushl	%ebp
LCFI12:
	movl	%esp, %ebp
LCFI13:
	pushl	%ebx
LCFI14:
	subl	$36, %esp
LCFI15:
	call	L43
"L00000000001$pb":
L43:
	popl	%ebx
	movl	12(%ebp), %eax
	movb	%al, -12(%ebp)
	cmpb	$7, -12(%ebp)
	ja	L36
	movzbl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	L36
	movzbl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	$6, (%eax,%edx,4)
	leal	L___stderrp$non_lazy_ptr-"L00000000001$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$14, 8(%esp)
	movl	$1, 4(%esp)
	leal	LC0-"L00000000001$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	_fwrite$UNIX2003
L36:
	cmpb	$55, -12(%ebp)
	jbe	L42
	movzbl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	L42
	movzbl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	$5, (%eax,%edx,4)
	leal	L___stderrp$non_lazy_ptr-"L00000000001$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$14, 8(%esp)
	movl	$1, 4(%esp)
	leal	LC0-"L00000000001$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	_fwrite$UNIX2003
L42:
	addl	$36, %esp
	popl	%ebx
	leave
	ret
LFE23:
	.cstring
LC1:
	.ascii "(f == BLACK) || (f == WHITE)\0"
LC2:
	.ascii "logic.cc\0"
	.text
.globl __Z9move_jump9MOVE_JUMPR5Boardhh5Field
__Z9move_jump9MOVE_JUMPR5Boardhh5Field:
LFB20:
	pushl	%ebp
LCFI16:
	movl	%esp, %ebp
LCFI17:
	pushl	%ebx
LCFI18:
	subl	$68, %esp
LCFI19:
	call	L84
"L00000000002$pb":
L84:
	popl	%ebx
	movl	16(%ebp), %eax
	movl	20(%ebp), %edx
	movb	%al, -28(%ebp)
	movb	%dl, -32(%ebp)
	cmpl	$1, 24(%ebp)
	je	L45
	cmpl	$2, 24(%ebp)
	je	L45
	movb	$1, -41(%ebp)
	jmp	L48
L45:
	movb	$0, -41(%ebp)
L48:
	movzbl	-41(%ebp), %eax
	testl	%eax, %eax
	je	L49
	leal	LC1-"L00000000002$pb"(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$136, 8(%esp)
	leal	LC2-"L00000000002$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	__ZZ9move_jump9MOVE_JUMPR5Boardhh5FieldE8__func__-"L00000000002$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	___assert_rtn
L49:
	cmpb	$63, -28(%ebp)
	ja	L51
	cmpb	$63, -32(%ebp)
	jbe	L53
L51:
	movl	$0, -40(%ebp)
	jmp	L54
L53:
	movzbl	-28(%ebp), %edx
	movl	12(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, %edx
	movl	24(%ebp), %eax
	andl	%edx, %eax
	testl	%eax, %eax
	jne	L55
	movl	$0, -40(%ebp)
	jmp	L54
L55:
	movzbl	-32(%ebp), %eax
	movl	12(%ebp), %edx
	movl	(%edx,%eax,4), %eax
	testl	%eax, %eax
	je	L57
	movl	$0, -40(%ebp)
	jmp	L54
L57:
	movzbl	-28(%ebp), %eax
	cmpb	-32(%ebp), %al
	jae	L59
	movl	24(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	L61
	movzbl	-28(%ebp), %edx
	movl	12(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	L61
	movl	$0, -40(%ebp)
	jmp	L54
L61:
	movzbl	-28(%ebp), %eax
	movl	%eax, %edx
	andl	$7, %edx
	movzbl	-32(%ebp), %eax
	andl	$7, %eax
	cmpl	%eax, %edx
	jge	L64
	movb	$9, -34(%ebp)
	jmp	L66
L64:
	movb	$7, -34(%ebp)
L66:
	movzbl	-34(%ebp), %eax
	movb	%al, -9(%ebp)
	jmp	L67
L59:
	movl	24(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	L68
	movzbl	-28(%ebp), %edx
	movl	12(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	L68
	movl	$0, -40(%ebp)
	jmp	L54
L68:
	movzbl	-28(%ebp), %eax
	movl	%eax, %edx
	andl	$7, %edx
	movzbl	-32(%ebp), %eax
	andl	$7, %eax
	cmpl	%eax, %edx
	jge	L71
	movb	$-7, -33(%ebp)
	jmp	L73
L71:
	movb	$-9, -33(%ebp)
L73:
	movzbl	-33(%ebp), %ecx
	movb	%cl, -9(%ebp)
L67:
	movzbl	-32(%ebp), %edx
	movzbl	-28(%ebp), %eax
	subl	%eax, %edx
	movsbl	-9(%ebp),%eax
	movl	%eax, %ecx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	%ecx
	movl	%edx, %eax
	testl	%eax, %eax
	je	L74
	movl	$0, -40(%ebp)
	jmp	L54
L74:
	movzbl	-32(%ebp), %edx
	movzbl	-28(%ebp), %eax
	subl	%eax, %edx
	movsbl	-9(%ebp),%eax
	movl	%eax, %ecx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	%ecx
	movl	%eax, %edx
	movl	8(%ebp), %eax
	cmpl	%eax, %edx
	je	L76
	movl	$0, -40(%ebp)
	jmp	L54
L76:
	movzbl	-32(%ebp), %eax
	movb	%al, -10(%ebp)
	cmpl	$2, 8(%ebp)
	jne	L78
	movzbl	-9(%ebp), %eax
	subb	%al, -10(%ebp)
	movzbl	-10(%ebp), %edx
	movl	12(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	testl	%eax, %eax
	je	L80
	movzbl	-10(%ebp), %edx
	movl	12(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, %edx
	movl	24(%ebp), %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	L82
L80:
	movl	$0, -40(%ebp)
	jmp	L54
L82:
	movzbl	-10(%ebp), %edx
	movl	12(%ebp), %eax
	movl	$0, (%eax,%edx,4)
L78:
	movzbl	-32(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	12(%ebp), %edx
	movzbl	-28(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__Z4swapI5FieldEvRT_S2_
	movl	$1, -40(%ebp)
L54:
	movl	-40(%ebp), %eax
	addl	$68, %esp
	popl	%ebx
	leave
	ret
LFE20:
.globl __Z15check_move_jump9MOVE_JUMPRK5Boardh5Field
__Z15check_move_jump9MOVE_JUMPRK5Boardh5Field:
LFB21:
	pushl	%ebp
LCFI20:
	movl	%esp, %ebp
LCFI21:
	subl	$312, %esp
LCFI22:
	movl	16(%ebp), %eax
	movb	%al, -268(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-264(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN5BoardC1ERKS_
	movl	8(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	movl	%eax, %edx
	movzbl	-268(%ebp), %eax
	subb	%dl, %al
	movzbl	%al, %edx
	movzbl	-268(%ebp), %ecx
	movl	20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	-264(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__Z9move_jump9MOVE_JUMPR5Boardhh5Field
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	L86
	movl	$1, -272(%ebp)
	jmp	L88
L86:
	movl	8(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	movl	%eax, %edx
	movzbl	-268(%ebp), %eax
	subb	%dl, %al
	movzbl	%al, %edx
	movzbl	-268(%ebp), %ecx
	movl	20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	-264(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__Z9move_jump9MOVE_JUMPR5Boardhh5Field
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	L89
	movl	$1, -272(%ebp)
	jmp	L88
L89:
	movl	8(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	addb	-268(%ebp), %al
	movzbl	%al, %edx
	movzbl	-268(%ebp), %ecx
	movl	20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	-264(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__Z9move_jump9MOVE_JUMPR5Boardhh5Field
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	L91
	movl	$1, -272(%ebp)
	jmp	L88
L91:
	movl	8(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addb	-268(%ebp), %al
	movzbl	%al, %edx
	movzbl	-268(%ebp), %ecx
	movl	20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	-264(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__Z9move_jump9MOVE_JUMPR5Boardhh5Field
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	L93
	movl	$1, -272(%ebp)
	jmp	L88
L93:
	movl	$0, -272(%ebp)
L88:
	movl	-272(%ebp), %eax
	leave
	ret
LFE21:
	.cstring
LC3:
	.ascii "f == BLACK || f == WHITE\0"
	.text
.globl __Z13can_move_jump9MOVE_JUMPRK5Board5Field
__Z13can_move_jump9MOVE_JUMPRK5Board5Field:
LFB22:
	pushl	%ebp
LCFI23:
	movl	%esp, %ebp
LCFI24:
	pushl	%ebx
LCFI25:
	subl	$52, %esp
LCFI26:
	call	L114
"L00000000003$pb":
L114:
	popl	%ebx
	cmpl	$1, 16(%ebp)
	je	L97
	cmpl	$2, 16(%ebp)
	je	L97
	movb	$1, -30(%ebp)
	jmp	L100
L97:
	movb	$0, -30(%ebp)
L100:
	movzbl	-30(%ebp), %eax
	testl	%eax, %eax
	je	L101
	leal	LC3-"L00000000003$pb"(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$190, 8(%esp)
	leal	LC2-"L00000000003$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	__ZZ13can_move_jump9MOVE_JUMPRK5Board5FieldE8__func__-"L00000000003$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	___assert_rtn
L101:
	movb	$0, -9(%ebp)
	jmp	L103
L104:
	movzbl	-9(%ebp), %edx
	movl	12(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	L105
	movzbl	-9(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__Z15check_move_jump9MOVE_JUMPRK5Boardh5Field
	xorl	$1, %eax
	testb	%al, %al
	jne	L105
	movb	$1, -29(%ebp)
	jmp	L108
L105:
	movb	$0, -29(%ebp)
L108:
	movzbl	-29(%ebp), %eax
	testb	%al, %al
	je	L109
	movl	$1, -28(%ebp)
	jmp	L111
L109:
	incb	-9(%ebp)
L103:
	cmpb	$63, -9(%ebp)
	jbe	L104
	movl	$0, -28(%ebp)
L111:
	movl	-28(%ebp), %eax
	addl	$52, %esp
	popl	%ebx
	leave
	ret
LFE22:
	.cstring
LC4:
	.ascii "0\0"
	.text
	.align 1,0x90
.globl __ZN5Board9to_stringEPc
__ZN5Board9to_stringEPc:
LFB15:
	pushl	%ebp
LCFI27:
	movl	%esp, %ebp
LCFI28:
	pushl	%ebx
LCFI29:
	subl	$52, %esp
LCFI30:
	call	L128
"L00000000004$pb":
L128:
	popl	%ebx
	movl	$0, -12(%ebp)
	jmp	L116
L117:
	movl	-12(%ebp), %eax
	leal	3(%eax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$2, %eax
	andl	$1, %eax
	movl	%eax, -16(%ebp)
	movl	-12(%ebp), %eax
	addl	%eax, %eax
	subl	-16(%ebp), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -28(%ebp)
	cmpl	$6, -28(%ebp)
	ja	L118
	movl	-28(%ebp), %edx
	sall	$2, %edx
	leal	L124-"L00000000004$pb"(%ebx), %eax
	movl	(%edx,%eax), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.align 2,0x90
L124:
	.long	L119-"L00000000004$pb"
	.long	L120-"L00000000004$pb"
	.long	L121-"L00000000004$pb"
	.long	L118-"L00000000004$pb"
	.long	L118-"L00000000004$pb"
	.long	L122-"L00000000004$pb"
	.long	L123-"L00000000004$pb"
L120:
	movl	-12(%ebp), %eax
	addl	12(%ebp), %eax
	movb	$98, (%eax)
	jmp	L125
L121:
	movl	-12(%ebp), %eax
	addl	12(%ebp), %eax
	movb	$119, (%eax)
	jmp	L125
L122:
	movl	-12(%ebp), %eax
	addl	12(%ebp), %eax
	movb	$66, (%eax)
	jmp	L125
L123:
	movl	-12(%ebp), %eax
	addl	12(%ebp), %eax
	movb	$87, (%eax)
	jmp	L125
L119:
	movl	-12(%ebp), %eax
	addl	12(%ebp), %eax
	movb	$45, (%eax)
	jmp	L125
L118:
	leal	LC4-"L00000000004$pb"(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$97, 8(%esp)
	leal	LC2-"L00000000004$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	__ZZN5Board9to_stringEPcE8__func__-"L00000000004$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	___assert_rtn
L125:
	movl	12(%ebp), %eax
	addl	$32, %eax
	movb	$0, (%eax)
	incl	-12(%ebp)
L116:
	cmpl	$31, -12(%ebp)
	jle	L117
	addl	$52, %esp
	popl	%ebx
	leave
	ret
LFE15:
.globl __Z9serializev
__Z9serializev:
LFB26:
	pushl	%ebp
LCFI31:
	movl	%esp, %ebp
LCFI32:
	pushl	%ebx
LCFI33:
	subl	$36, %esp
LCFI34:
	call	L134
"L00000000005$pb":
L134:
	popl	%ebx
	leal	_turn-"L00000000005$pb"(%ebx), %eax
	movl	(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	L130
	movb	$87, -9(%ebp)
	jmp	L132
L130:
	movb	$66, -9(%ebp)
L132:
	leal	_buffer-"L00000000005$pb"(%ebx), %eax
	movzbl	-9(%ebp), %edx
	movb	%dl, (%eax)
	leal	_buffer-"L00000000005$pb"(%ebx), %eax
	movb	$58, 1(%eax)
	leal	_buffer-"L00000000005$pb"(%ebx), %eax
	leal	2(%eax), %eax
	movl	%eax, 4(%esp)
	leal	_b-"L00000000005$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	__ZN5Board9to_stringEPc
	leal	_buffer-"L00000000005$pb"(%ebx), %eax
	movb	$10, 34(%eax)
	leal	_buffer-"L00000000005$pb"(%ebx), %eax
	movb	$0, 35(%eax)
	leal	_buffer-"L00000000005$pb"(%ebx), %eax
	addl	$36, %esp
	popl	%ebx
	leave
	ret
LFE26:
	.cstring
LC5:
	.ascii "[mcp] \0"
	.align 2
LC6:
	.ascii "(winner >= 0) && (winner <= 2)\0"
LC7:
	.ascii "[mcp] DRAW.\12\0"
LC8:
	.ascii "BLACK\0"
LC9:
	.ascii "WHITE\0"
LC10:
	.ascii "[mcp] %s wins.\12\0"
	.text
__ZL8end_gameiPKcz:
LFB24:
	pushl	%ebp
LCFI35:
	movl	%esp, %ebp
LCFI36:
	pushl	%ebx
LCFI37:
	subl	$52, %esp
LCFI38:
	call	L149
"L00000000006$pb":
L149:
	popl	%ebx
	leal	L___stderrp$non_lazy_ptr-"L00000000006$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$6, 8(%esp)
	movl	$1, 4(%esp)
	leal	LC5-"L00000000006$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	_fwrite$UNIX2003
	leal	16(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %edx
	leal	L___stderrp$non_lazy_ptr-"L00000000006$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	_vfprintf
	leal	L___stderrp$non_lazy_ptr-"L00000000006$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	_fputc
	cmpl	$0, 8(%ebp)
	js	L136
	cmpl	$2, 8(%ebp)
	jle	L138
L136:
	movb	$1, -29(%ebp)
	jmp	L139
L138:
	movb	$0, -29(%ebp)
L139:
	movzbl	-29(%ebp), %eax
	testl	%eax, %eax
	je	L140
	leal	LC6-"L00000000006$pb"(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$219, 8(%esp)
	leal	LC2-"L00000000006$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	__ZZL8end_gameiPKczE8__func__-"L00000000006$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	___assert_rtn
L140:
	cmpl	$2, 8(%ebp)
	jne	L142
	leal	L___stderrp$non_lazy_ptr-"L00000000006$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$12, 8(%esp)
	movl	$1, 4(%esp)
	leal	LC7-"L00000000006$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	_fwrite$UNIX2003
	jmp	L144
L142:
	cmpl	$0, 8(%ebp)
	je	L145
	leal	LC8-"L00000000006$pb"(%ebx), %eax
	movl	%eax, -28(%ebp)
	jmp	L147
L145:
	leal	LC9-"L00000000006$pb"(%ebx), %eax
	movl	%eax, -28(%ebp)
L147:
	movl	-28(%ebp), %edx
	leal	L___stderrp$non_lazy_ptr-"L00000000006$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	LC10-"L00000000006$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	_fprintf
L144:
	movl	$0, (%esp)
	call	_exit
LFE24:
	.cstring
LC11:
	.ascii "no move '%s'\0"
LC12:
	.ascii "error parsing move '%s'\0"
	.align 2
LC13:
	.ascii "INVALID move %ld-%ld (jump forced)\12\0"
	.align 2
LC14:
	.ascii "INVALID move %ld-%ld (jump forced)\0"
LC15:
	.ascii "INVALID move %ld-%ld\12\0"
LC16:
	.ascii "INVALID move %ld-%ld\0"
LC17:
	.ascii "[mcp] valid move %ld-%ld\12\0"
LC18:
	.ascii "error parsing '%s'\0"
LC19:
	.ascii "INVALID jump %ldx%ld\12\0"
LC20:
	.ascii "INVALID jump %ldx%ld\0"
LC21:
	.ascii "[mcp] valid jump %ldx%ld\12\0"
	.align 2
LC22:
	.ascii "INVALID jump (jump forced %ld)\12\0"
	.align 2
LC23:
	.ascii "INVALID jump (jump forced %ld)\0"
LC24:
	.ascii "no moves left\0"
LC25:
	.ascii "20 moves timeout\0"
	.text
.globl __Z11deserializePc
__Z11deserializePc:
LFB27:
	pushl	%ebp
LCFI39:
	movl	%esp, %ebp
LCFI40:
	pushl	%ebx
LCFI41:
	subl	$372, %esp
LCFI42:
	call	L215
"L00000000007$pb":
L215:
	popl	%ebx
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	L151
	leal	_turn-"L00000000007$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	andl	$1, %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	LC11-"L00000000007$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL8end_gameiPKcz
L151:
	movl	-12(%ebp), %edx
	movl	$10, 8(%esp)
	leal	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_strtol
	movl	%eax, -16(%ebp)
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$45, %al
	jne	L153
	movl	-12(%ebp), %eax
	incl	%eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %edx
	movl	$10, 8(%esp)
	leal	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_strtol
	movl	%eax, -20(%ebp)
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	L155
	leal	_turn-"L00000000007$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	andl	$1, %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	LC12-"L00000000007$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL8end_gameiPKcz
L155:
	leal	_turn-"L00000000007$pb"(%ebx), %eax
	movl	(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	L157
	movl	$2, -332(%ebp)
	jmp	L159
L157:
	movl	$1, -332(%ebp)
L159:
	movl	-332(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	_b-"L00000000007$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$2, (%esp)
	call	__Z13can_move_jump9MOVE_JUMPRK5Board5Field
	testb	%al, %al
	je	L160
	leal	L_debug$non_lazy_ptr-"L00000000007$pb"(%ebx), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	L162
	leal	L___stderrp$non_lazy_ptr-"L00000000007$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	LC13-"L00000000007$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_fprintf
	movl	$0, -328(%ebp)
	jmp	L164
L162:
	leal	_turn-"L00000000007$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	andl	$1, %edx
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	LC14-"L00000000007$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL8end_gameiPKcz
L160:
	movl	-16(%ebp), %eax
	addl	%eax, %eax
	leal	-1(%eax), %ecx
	movl	-16(%ebp), %eax
	decl	%eax
	leal	3(%eax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$2, %eax
	andl	$1, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -24(%ebp)
	movl	-20(%ebp), %eax
	addl	%eax, %eax
	leal	-1(%eax), %ecx
	movl	-20(%ebp), %eax
	decl	%eax
	leal	3(%eax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$2, %eax
	andl	$1, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -28(%ebp)
	leal	_turn-"L00000000007$pb"(%ebx), %eax
	movl	(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	L165
	movl	$2, -324(%ebp)
	jmp	L167
L165:
	movl	$1, -324(%ebp)
L167:
	movl	-28(%ebp), %eax
	movzbl	%al, %edx
	movl	-24(%ebp), %eax
	movzbl	%al, %eax
	movl	-324(%ebp), %ecx
	movl	%ecx, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	_b-"L00000000007$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	__Z9move_jump9MOVE_JUMPR5Boardhh5Field
	testl	%eax, %eax
	sete	%al
	testb	%al, %al
	je	L168
	leal	L_debug$non_lazy_ptr-"L00000000007$pb"(%ebx), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	L170
	leal	L___stderrp$non_lazy_ptr-"L00000000007$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	LC15-"L00000000007$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_fprintf
	movl	$0, -328(%ebp)
	jmp	L164
L170:
	leal	_turn-"L00000000007$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	andl	$1, %edx
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	LC16-"L00000000007$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL8end_gameiPKcz
L168:
	movl	-28(%ebp), %edx
	leal	_b-"L00000000007$pb"(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	L172
	leal	_idle-"L00000000007$pb"(%ebx), %eax
	movl	(%eax), %eax
	incl	%eax
	movl	%eax, -320(%ebp)
	jmp	L174
L172:
	movl	$0, -320(%ebp)
L174:
	leal	_idle-"L00000000007$pb"(%ebx), %eax
	movl	-320(%ebp), %edx
	movl	%edx, (%eax)
	leal	L___stderrp$non_lazy_ptr-"L00000000007$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	LC17-"L00000000007$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_fprintf
	movl	-28(%ebp), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	leal	_b-"L00000000007$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z7upgradeR5Boardh
	jmp	L175
L153:
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$120, %al
	jne	L176
	leal	_b-"L00000000007$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-296(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN5BoardC1ERKS_
	jmp	L178
L179:
	movl	-12(%ebp), %eax
	incl	%eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %edx
	movl	$10, 8(%esp)
	leal	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_strtol
	movl	%eax, -32(%ebp)
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	L180
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$120, %al
	je	L180
	leal	_turn-"L00000000007$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	andl	$1, %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	LC18-"L00000000007$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL8end_gameiPKcz
L180:
	movl	-16(%ebp), %eax
	addl	%eax, %eax
	leal	-1(%eax), %ecx
	movl	-16(%ebp), %eax
	decl	%eax
	leal	3(%eax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$2, %eax
	andl	$1, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -36(%ebp)
	movl	-32(%ebp), %eax
	addl	%eax, %eax
	leal	-1(%eax), %ecx
	movl	-32(%ebp), %eax
	decl	%eax
	leal	3(%eax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$2, %eax
	andl	$1, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -40(%ebp)
	leal	_turn-"L00000000007$pb"(%ebx), %eax
	movl	(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	L183
	movl	$2, -316(%ebp)
	jmp	L185
L183:
	movl	$1, -316(%ebp)
L185:
	movl	-40(%ebp), %eax
	movzbl	%al, %edx
	movl	-36(%ebp), %eax
	movzbl	%al, %eax
	movl	-316(%ebp), %ecx
	movl	%ecx, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	_b-"L00000000007$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$2, (%esp)
	call	__Z9move_jump9MOVE_JUMPR5Boardhh5Field
	testl	%eax, %eax
	sete	%al
	testb	%al, %al
	je	L186
	leal	L_debug$non_lazy_ptr-"L00000000007$pb"(%ebx), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	L188
	leal	L___stderrp$non_lazy_ptr-"L00000000007$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	LC19-"L00000000007$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_fprintf
	leal	_b-"L00000000007$pb"(%ebx), %eax
	movl	%eax, %ecx
	leal	-296(%ebp), %edx
	movl	$256, %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	_memcpy
	movl	$0, -328(%ebp)
	jmp	L164
L188:
	leal	_turn-"L00000000007$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	andl	$1, %edx
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	LC20-"L00000000007$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL8end_gameiPKcz
L186:
	leal	_idle-"L00000000007$pb"(%ebx), %eax
	movl	$0, (%eax)
	leal	L___stderrp$non_lazy_ptr-"L00000000007$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	LC21-"L00000000007$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_fprintf
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	L190
	movl	-32(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	L178
L190:
	leal	_turn-"L00000000007$pb"(%ebx), %eax
	movl	(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	L192
	movl	$2, -312(%ebp)
	jmp	L194
L192:
	movl	$1, -312(%ebp)
L194:
	movl	-40(%ebp), %eax
	movzbl	%al, %eax
	movl	-312(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	_b-"L00000000007$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$2, (%esp)
	call	__Z15check_move_jump9MOVE_JUMPRK5Boardh5Field
	testb	%al, %al
	je	L195
	leal	L_debug$non_lazy_ptr-"L00000000007$pb"(%ebx), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	L197
	leal	L___stderrp$non_lazy_ptr-"L00000000007$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	LC22-"L00000000007$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_fprintf
	leal	_b-"L00000000007$pb"(%ebx), %eax
	movl	%eax, %ecx
	leal	-296(%ebp), %edx
	movl	$256, %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	_memcpy
	movl	$0, -328(%ebp)
	jmp	L164
L197:
	leal	_turn-"L00000000007$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	andl	$1, %edx
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	LC23-"L00000000007$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL8end_gameiPKcz
L195:
	movl	-40(%ebp), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	leal	_b-"L00000000007$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z7upgradeR5Boardh
L178:
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	L179
	jmp	L175
L176:
	leal	_turn-"L00000000007$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	andl	$1, %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	LC18-"L00000000007$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL8end_gameiPKcz
L175:
	leal	_turn-"L00000000007$pb"(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	leal	_turn-"L00000000007$pb"(%ebx), %eax
	movl	%edx, (%eax)
	leal	_turn-"L00000000007$pb"(%ebx), %eax
	movl	(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	L200
	movl	$2, -304(%ebp)
	jmp	L202
L200:
	movl	$1, -304(%ebp)
L202:
	movl	-304(%ebp), %ecx
	movl	%ecx, 8(%esp)
	leal	_b-"L00000000007$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	__Z13can_move_jump9MOVE_JUMPRK5Board5Field
	xorl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	L203
	leal	_turn-"L00000000007$pb"(%ebx), %eax
	movl	(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	L205
	movl	$2, -300(%ebp)
	jmp	L207
L205:
	movl	$1, -300(%ebp)
L207:
	movl	-300(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	_b-"L00000000007$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$2, (%esp)
	call	__Z13can_move_jump9MOVE_JUMPRK5Board5Field
	xorl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	L203
	movb	$1, -305(%ebp)
	jmp	L209
L203:
	movb	$0, -305(%ebp)
L209:
	movzbl	-305(%ebp), %eax
	testb	%al, %al
	je	L210
	leal	_turn-"L00000000007$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	andl	$1, %edx
	leal	LC24-"L00000000007$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL8end_gameiPKcz
L210:
	leal	_idle-"L00000000007$pb"(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$20, %eax
	jle	L212
	leal	LC25-"L00000000007$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$2, (%esp)
	call	__ZL8end_gameiPKcz
L212:
	movl	$1, -328(%ebp)
L164:
	movl	-328(%ebp), %eax
	addl	$372, %esp
	popl	%ebx
	leave
	ret
LFE27:
	.cstring
	.align 2
LC26:
	.ascii "+----+----+----+----+----+----+----+----+\0"
LC27:
	.ascii "|    \0"
LC28:
	.ascii "|%c%2d%c\0"
LC29:
	.ascii "|\0"
	.text
	.align 1,0x90
.globl __ZN5Board4drawEv
__ZN5Board4drawEv:
LFB19:
	pushl	%ebp
LCFI43:
	movl	%esp, %ebp
LCFI44:
	pushl	%ebx
LCFI45:
	subl	$36, %esp
LCFI46:
	call	L237
"L00000000008$pb":
L237:
	popl	%ebx
	movl	$0, -16(%ebp)
	jmp	L217
L218:
	movl	-16(%ebp), %eax
	andl	$7, %eax
	testl	%eax, %eax
	jne	L219
	leal	LC26-"L00000000008$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	_puts
L219:
	movb	$32, -9(%ebp)
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	andl	$1, %eax
	testb	%al, %al
	je	L221
	movb	$98, -9(%ebp)
L221:
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	L223
	movb	$119, -9(%ebp)
L223:
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	L225
	movzbl	-9(%ebp), %eax
	subl	$32, %eax
	movb	%al, -9(%ebp)
L225:
	movl	-16(%ebp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	L227
	movl	-16(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	L229
L227:
	movl	-16(%ebp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	L230
	movl	-16(%ebp), %eax
	andl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	L230
L229:
	leal	LC27-"L00000000008$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	_printf
	jmp	L232
L230:
	movsbl	-9(%ebp),%ecx
	movl	-16(%ebp), %edx
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	incl	%eax
	movsbl	-9(%ebp),%edx
	movl	%ecx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	LC28-"L00000000008$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	_printf
L232:
	movl	-16(%ebp), %eax
	andl	$7, %eax
	cmpl	$7, %eax
	jne	L233
	leal	LC29-"L00000000008$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	_puts
L233:
	incl	-16(%ebp)
L217:
	cmpl	$63, -16(%ebp)
	jle	L218
	leal	LC26-"L00000000008$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	_puts
	addl	$36, %esp
	popl	%ebx
	leave
	ret
LFE19:
	.cstring
LC30:
	.ascii "errno = %d\12\0"
	.text
__ZL5errorPKcz:
LFB3:
	pushl	%ebp
LCFI47:
	movl	%esp, %ebp
LCFI48:
	pushl	%ebx
LCFI49:
	subl	$36, %esp
LCFI50:
	call	L240
"L00000000009$pb":
L240:
	popl	%ebx
	leal	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %edx
	leal	L___stderrp$non_lazy_ptr-"L00000000009$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	_vfprintf
	call	___error
	movl	(%eax), %edx
	leal	L___stderrp$non_lazy_ptr-"L00000000009$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	LC30-"L00000000009$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	_fprintf
	movl	$0, (%esp)
	call	_perror
	movl	$-1, (%esp)
	call	_exit
LFE3:
	.cstring
	.align 2
LC31:
	.ascii "input string must be 32 chars\12\0"
	.align 2
LC32:
	.ascii "unknown char '%c' in input string\12\0"
	.text
	.align 1,0x90
.globl __ZN5Board11from_stringEPKc
__ZN5Board11from_stringEPKc:
LFB14:
	pushl	%ebp
LCFI51:
	movl	%esp, %ebp
LCFI52:
	pushl	%ebx
LCFI53:
	subl	$52, %esp
LCFI54:
	call	L256
"L00000000010$pb":
L256:
	popl	%ebx
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlen
	cmpl	$32, %eax
	je	L242
	leal	LC31-"L00000000010$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	__ZL5errorPKcz
L242:
	movl	$0, -12(%ebp)
	jmp	L244
L245:
	movl	-12(%ebp), %eax
	addl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movb	%al, -25(%ebp)
	cmpb	$87, -25(%ebp)
	je	L249
	cmpb	$87, -25(%ebp)
	jg	L252
	cmpb	$45, -25(%ebp)
	je	L247
	cmpb	$66, -25(%ebp)
	je	L248
	jmp	L246
L252:
	cmpb	$98, -25(%ebp)
	je	L250
	cmpb	$119, -25(%ebp)
	je	L251
	jmp	L246
L250:
	movl	$1, -16(%ebp)
	jmp	L253
L251:
	movl	$2, -16(%ebp)
	jmp	L253
L248:
	movl	$5, -16(%ebp)
	jmp	L253
L249:
	movl	$6, -16(%ebp)
	jmp	L253
L247:
	movl	$0, -16(%ebp)
	jmp	L253
L246:
	movl	-12(%ebp), %eax
	addl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movsbl	%al,%eax
	movl	%eax, 4(%esp)
	leal	LC32-"L00000000010$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	__ZL5errorPKcz
L253:
	movl	-12(%ebp), %eax
	leal	3(%eax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$2, %eax
	andl	$1, %eax
	movl	%eax, -20(%ebp)
	movl	-12(%ebp), %eax
	addl	%eax, %eax
	subl	-20(%ebp), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx,%ecx,4)
	movl	-12(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	addl	-20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	$0, (%eax,%edx,4)
	incl	-12(%ebp)
L244:
	movl	-12(%ebp), %eax
	addl	12(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	L245
	addl	$52, %esp
	popl	%ebx
	leave
	ret
LFE14:
	.cstring
	.align 2
LC33:
	.ascii "bbbbbbbbbbbb--------wwwwwwwwwwww\0"
	.section __TEXT,__textcoal_nt,coalesced,pure_instructions
	.align 1
.globl __ZN5BoardC1Ev
	.weak_definition __ZN5BoardC1Ev
__ZN5BoardC1Ev:
LFB7:
	pushl	%ebp
LCFI55:
	movl	%esp, %ebp
LCFI56:
	pushl	%ebx
LCFI57:
	subl	$20, %esp
LCFI58:
	call	L259
"L00000000011$pb":
L259:
	popl	%ebx
	leal	LC33-"L00000000011$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN5Board11from_stringEPKc
	addl	$20, %esp
	popl	%ebx
	leave
	ret
LFE7:
	.section __TEXT,__StaticInit,regular,pure_instructions
__Z41__static_initialization_and_destruction_0ii:
LFB29:
	pushl	%ebp
LCFI59:
	movl	%esp, %ebp
LCFI60:
	pushl	%ebx
LCFI61:
	subl	$20, %esp
LCFI62:
	call	L265
"L00000000012$pb":
L265:
	popl	%ebx
	cmpl	$1, 8(%ebp)
	jne	L264
	cmpl	$65535, 12(%ebp)
	jne	L264
	leal	_b-"L00000000012$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	__ZN5BoardC1Ev
L264:
	addl	$20, %esp
	popl	%ebx
	leave
	ret
LFE29:
__GLOBAL__I__ZN5Board11from_stringEPKc:
LFB30:
	pushl	%ebp
LCFI63:
	movl	%esp, %ebp
LCFI64:
	subl	$24, %esp
LCFI65:
	movl	$65535, 4(%esp)
	movl	$1, (%esp)
	call	__Z41__static_initialization_and_destruction_0ii
	leave
	ret
LFE30:
	.cstring
	.align 2
LC34:
	.ascii "init failed ('B' or 'W' expected)\12\0"
LC35:
	.ascii "init failed (':' expected)\12\0"
	.text
.globl __Z4initPKc
__Z4initPKc:
LFB25:
	pushl	%ebp
LCFI66:
	movl	%esp, %ebp
LCFI67:
	pushl	%ebx
LCFI68:
	subl	$20, %esp
LCFI69:
	call	L278
"L00000000013$pb":
L278:
	popl	%ebx
	cmpl	$0, 8(%ebp)
	je	L277
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$87, %al
	jne	L271
	leal	_turn-"L00000000013$pb"(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	leal	_turn-"L00000000013$pb"(%ebx), %eax
	movl	%edx, (%eax)
	jmp	L273
L271:
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$66, %al
	je	L273
	leal	LC34-"L00000000013$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	__ZL5errorPKcz
L273:
	movl	8(%ebp), %eax
	incl	%eax
	movzbl	(%eax), %eax
	cmpb	$58, %al
	je	L275
	leal	LC35-"L00000000013$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	__ZL5errorPKcz
L275:
	movl	8(%ebp), %eax
	addl	$2, %eax
	movl	%eax, 4(%esp)
	leal	_b-"L00000000013$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	__ZN5Board11from_stringEPKc
L277:
	addl	$20, %esp
	popl	%ebx
	leave
	ret
LFE25:
.globl _b
.zerofill __DATA, __common, _b, 256, 5
.globl _turn
	.data
	.align 2
_turn:
	.space 4
.globl _idle
	.align 2
_idle:
	.space 4
.globl _buffer
.zerofill __DATA, __common, _buffer, 36, 5
	.cstring
__ZZL8end_gameiPKczE8__func__:
	.ascii "end_game\0"
__ZZ13can_move_jump9MOVE_JUMPRK5Board5FieldE8__func__:
	.ascii "can_move_jump\0"
__ZZ9move_jump9MOVE_JUMPR5Boardhh5FieldE8__func__:
	.ascii "move_jump\0"
__ZZN5Board9to_stringEPcE8__func__:
	.ascii "to_string\0"
.globl __ZN5BoardC2Ejjj.eh
__ZN5BoardC2Ejjj.eh = 0
.no_dead_strip __ZN5BoardC2Ejjj.eh
.globl __ZN5BoardC1Ejjj.eh
__ZN5BoardC1Ejjj.eh = 0
.no_dead_strip __ZN5BoardC1Ejjj.eh
__GLOBAL__I__ZN5Board11from_stringEPKc.eh = 0
.no_dead_strip __GLOBAL__I__ZN5Board11from_stringEPKc.eh
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$0,LECIE1-LSCIE1
	.long L$set$0
LSCIE1:
	.long	0x0
	.byte	0x1
	.ascii "zPR\0"
	.byte	0x1
	.byte	0x7c
	.byte	0x8
	.byte	0x6
	.byte	0x9b
	.long	L___gxx_personality_v0$non_lazy_ptr-.
	.byte	0x10
	.byte	0xc
	.byte	0x5
	.byte	0x4
	.byte	0x88
	.byte	0x1
	.align 2
LECIE1:
.globl __Z4swapI5FieldEvRT_S2_.eh
	.weak_definition __Z4swapI5FieldEvRT_S2_.eh
__Z4swapI5FieldEvRT_S2_.eh:
LSFDE5:
	.set L$set$1,LEFDE5-LASFDE5
	.long L$set$1
LASFDE5:
	.long	LASFDE5-EH_frame1
	.long	LFB28-.
	.set L$set$2,LFE28-LFB28
	.long L$set$2
	.byte	0x0
	.byte	0x4
	.set L$set$3,LCFI6-LFB28
	.long L$set$3
	.byte	0xe
	.byte	0x8
	.byte	0x84
	.byte	0x2
	.byte	0x4
	.set L$set$4,LCFI7-LCFI6
	.long L$set$4
	.byte	0xd
	.byte	0x4
	.align 2
LEFDE5:
.globl __ZN5BoardC1ERKS_.eh
	.weak_definition __ZN5BoardC1ERKS_.eh
__ZN5BoardC1ERKS_.eh:
LSFDE7:
	.set L$set$5,LEFDE7-LASFDE7
	.long L$set$5
LASFDE7:
	.long	LASFDE7-EH_frame1
	.long	LFB10-.
	.set L$set$6,LFE10-LFB10
	.long L$set$6
	.byte	0x0
	.byte	0x4
	.set L$set$7,LCFI9-LFB10
	.long L$set$7
	.byte	0xe
	.byte	0x8
	.byte	0x84
	.byte	0x2
	.byte	0x4
	.set L$set$8,LCFI10-LCFI9
	.long L$set$8
	.byte	0xd
	.byte	0x4
	.align 2
LEFDE7:
.globl __Z7upgradeR5Boardh.eh
__Z7upgradeR5Boardh.eh:
LSFDE9:
	.set L$set$9,LEFDE9-LASFDE9
	.long L$set$9
LASFDE9:
	.long	LASFDE9-EH_frame1
	.long	LFB23-.
	.set L$set$10,LFE23-LFB23
	.long L$set$10
	.byte	0x0
	.byte	0x4
	.set L$set$11,LCFI12-LFB23
	.long L$set$11
	.byte	0xe
	.byte	0x8
	.byte	0x84
	.byte	0x2
	.byte	0x4
	.set L$set$12,LCFI13-LCFI12
	.long L$set$12
	.byte	0xd
	.byte	0x4
	.byte	0x4
	.set L$set$13,LCFI15-LCFI13
	.long L$set$13
	.byte	0x83
	.byte	0x3
	.align 2
LEFDE9:
.globl __Z9move_jump9MOVE_JUMPR5Boardhh5Field.eh
__Z9move_jump9MOVE_JUMPR5Boardhh5Field.eh:
LSFDE11:
	.set L$set$14,LEFDE11-LASFDE11
	.long L$set$14
LASFDE11:
	.long	LASFDE11-EH_frame1
	.long	LFB20-.
	.set L$set$15,LFE20-LFB20
	.long L$set$15
	.byte	0x0
	.byte	0x4
	.set L$set$16,LCFI16-LFB20
	.long L$set$16
	.byte	0xe
	.byte	0x8
	.byte	0x84
	.byte	0x2
	.byte	0x4
	.set L$set$17,LCFI17-LCFI16
	.long L$set$17
	.byte	0xd
	.byte	0x4
	.byte	0x4
	.set L$set$18,LCFI19-LCFI17
	.long L$set$18
	.byte	0x83
	.byte	0x3
	.align 2
LEFDE11:
.globl __Z15check_move_jump9MOVE_JUMPRK5Boardh5Field.eh
__Z15check_move_jump9MOVE_JUMPRK5Boardh5Field.eh:
LSFDE13:
	.set L$set$19,LEFDE13-LASFDE13
	.long L$set$19
LASFDE13:
	.long	LASFDE13-EH_frame1
	.long	LFB21-.
	.set L$set$20,LFE21-LFB21
	.long L$set$20
	.byte	0x0
	.byte	0x4
	.set L$set$21,LCFI20-LFB21
	.long L$set$21
	.byte	0xe
	.byte	0x8
	.byte	0x84
	.byte	0x2
	.byte	0x4
	.set L$set$22,LCFI21-LCFI20
	.long L$set$22
	.byte	0xd
	.byte	0x4
	.align 2
LEFDE13:
.globl __Z13can_move_jump9MOVE_JUMPRK5Board5Field.eh
__Z13can_move_jump9MOVE_JUMPRK5Board5Field.eh:
LSFDE15:
	.set L$set$23,LEFDE15-LASFDE15
	.long L$set$23
LASFDE15:
	.long	LASFDE15-EH_frame1
	.long	LFB22-.
	.set L$set$24,LFE22-LFB22
	.long L$set$24
	.byte	0x0
	.byte	0x4
	.set L$set$25,LCFI23-LFB22
	.long L$set$25
	.byte	0xe
	.byte	0x8
	.byte	0x84
	.byte	0x2
	.byte	0x4
	.set L$set$26,LCFI24-LCFI23
	.long L$set$26
	.byte	0xd
	.byte	0x4
	.byte	0x4
	.set L$set$27,LCFI26-LCFI24
	.long L$set$27
	.byte	0x83
	.byte	0x3
	.align 2
LEFDE15:
.globl __ZN5Board9to_stringEPc.eh
__ZN5Board9to_stringEPc.eh:
LSFDE17:
	.set L$set$28,LEFDE17-LASFDE17
	.long L$set$28
LASFDE17:
	.long	LASFDE17-EH_frame1
	.long	LFB15-.
	.set L$set$29,LFE15-LFB15
	.long L$set$29
	.byte	0x0
	.byte	0x4
	.set L$set$30,LCFI27-LFB15
	.long L$set$30
	.byte	0xe
	.byte	0x8
	.byte	0x84
	.byte	0x2
	.byte	0x4
	.set L$set$31,LCFI28-LCFI27
	.long L$set$31
	.byte	0xd
	.byte	0x4
	.byte	0x4
	.set L$set$32,LCFI30-LCFI28
	.long L$set$32
	.byte	0x83
	.byte	0x3
	.align 2
LEFDE17:
.globl __Z9serializev.eh
__Z9serializev.eh:
LSFDE19:
	.set L$set$33,LEFDE19-LASFDE19
	.long L$set$33
LASFDE19:
	.long	LASFDE19-EH_frame1
	.long	LFB26-.
	.set L$set$34,LFE26-LFB26
	.long L$set$34
	.byte	0x0
	.byte	0x4
	.set L$set$35,LCFI31-LFB26
	.long L$set$35
	.byte	0xe
	.byte	0x8
	.byte	0x84
	.byte	0x2
	.byte	0x4
	.set L$set$36,LCFI32-LCFI31
	.long L$set$36
	.byte	0xd
	.byte	0x4
	.byte	0x4
	.set L$set$37,LCFI34-LCFI32
	.long L$set$37
	.byte	0x83
	.byte	0x3
	.align 2
LEFDE19:
__ZL8end_gameiPKcz.eh:
LSFDE21:
	.set L$set$38,LEFDE21-LASFDE21
	.long L$set$38
LASFDE21:
	.long	LASFDE21-EH_frame1
	.long	LFB24-.
	.set L$set$39,LFE24-LFB24
	.long L$set$39
	.byte	0x0
	.byte	0x4
	.set L$set$40,LCFI35-LFB24
	.long L$set$40
	.byte	0xe
	.byte	0x8
	.byte	0x84
	.byte	0x2
	.byte	0x4
	.set L$set$41,LCFI36-LCFI35
	.long L$set$41
	.byte	0xd
	.byte	0x4
	.byte	0x4
	.set L$set$42,LCFI38-LCFI36
	.long L$set$42
	.byte	0x83
	.byte	0x3
	.align 2
LEFDE21:
.globl __Z11deserializePc.eh
__Z11deserializePc.eh:
LSFDE23:
	.set L$set$43,LEFDE23-LASFDE23
	.long L$set$43
LASFDE23:
	.long	LASFDE23-EH_frame1
	.long	LFB27-.
	.set L$set$44,LFE27-LFB27
	.long L$set$44
	.byte	0x0
	.byte	0x4
	.set L$set$45,LCFI39-LFB27
	.long L$set$45
	.byte	0xe
	.byte	0x8
	.byte	0x84
	.byte	0x2
	.byte	0x4
	.set L$set$46,LCFI40-LCFI39
	.long L$set$46
	.byte	0xd
	.byte	0x4
	.byte	0x4
	.set L$set$47,LCFI42-LCFI40
	.long L$set$47
	.byte	0x83
	.byte	0x3
	.align 2
LEFDE23:
.globl __ZN5Board4drawEv.eh
__ZN5Board4drawEv.eh:
LSFDE25:
	.set L$set$48,LEFDE25-LASFDE25
	.long L$set$48
LASFDE25:
	.long	LASFDE25-EH_frame1
	.long	LFB19-.
	.set L$set$49,LFE19-LFB19
	.long L$set$49
	.byte	0x0
	.byte	0x4
	.set L$set$50,LCFI43-LFB19
	.long L$set$50
	.byte	0xe
	.byte	0x8
	.byte	0x84
	.byte	0x2
	.byte	0x4
	.set L$set$51,LCFI44-LCFI43
	.long L$set$51
	.byte	0xd
	.byte	0x4
	.byte	0x4
	.set L$set$52,LCFI46-LCFI44
	.long L$set$52
	.byte	0x83
	.byte	0x3
	.align 2
LEFDE25:
__ZL5errorPKcz.eh:
LSFDE27:
	.set L$set$53,LEFDE27-LASFDE27
	.long L$set$53
LASFDE27:
	.long	LASFDE27-EH_frame1
	.long	LFB3-.
	.set L$set$54,LFE3-LFB3
	.long L$set$54
	.byte	0x0
	.byte	0x4
	.set L$set$55,LCFI47-LFB3
	.long L$set$55
	.byte	0xe
	.byte	0x8
	.byte	0x84
	.byte	0x2
	.byte	0x4
	.set L$set$56,LCFI48-LCFI47
	.long L$set$56
	.byte	0xd
	.byte	0x4
	.byte	0x4
	.set L$set$57,LCFI50-LCFI48
	.long L$set$57
	.byte	0x83
	.byte	0x3
	.align 2
LEFDE27:
.globl __ZN5Board11from_stringEPKc.eh
__ZN5Board11from_stringEPKc.eh:
LSFDE29:
	.set L$set$58,LEFDE29-LASFDE29
	.long L$set$58
LASFDE29:
	.long	LASFDE29-EH_frame1
	.long	LFB14-.
	.set L$set$59,LFE14-LFB14
	.long L$set$59
	.byte	0x0
	.byte	0x4
	.set L$set$60,LCFI51-LFB14
	.long L$set$60
	.byte	0xe
	.byte	0x8
	.byte	0x84
	.byte	0x2
	.byte	0x4
	.set L$set$61,LCFI52-LCFI51
	.long L$set$61
	.byte	0xd
	.byte	0x4
	.byte	0x4
	.set L$set$62,LCFI54-LCFI52
	.long L$set$62
	.byte	0x83
	.byte	0x3
	.align 2
LEFDE29:
.globl __ZN5BoardC1Ev.eh
	.weak_definition __ZN5BoardC1Ev.eh
__ZN5BoardC1Ev.eh:
LSFDE31:
	.set L$set$63,LEFDE31-LASFDE31
	.long L$set$63
LASFDE31:
	.long	LASFDE31-EH_frame1
	.long	LFB7-.
	.set L$set$64,LFE7-LFB7
	.long L$set$64
	.byte	0x0
	.byte	0x4
	.set L$set$65,LCFI55-LFB7
	.long L$set$65
	.byte	0xe
	.byte	0x8
	.byte	0x84
	.byte	0x2
	.byte	0x4
	.set L$set$66,LCFI56-LCFI55
	.long L$set$66
	.byte	0xd
	.byte	0x4
	.byte	0x4
	.set L$set$67,LCFI58-LCFI56
	.long L$set$67
	.byte	0x83
	.byte	0x3
	.align 2
LEFDE31:
__Z41__static_initialization_and_destruction_0ii.eh:
LSFDE33:
	.set L$set$68,LEFDE33-LASFDE33
	.long L$set$68
LASFDE33:
	.long	LASFDE33-EH_frame1
	.long	LFB29-.
	.set L$set$69,LFE29-LFB29
	.long L$set$69
	.byte	0x0
	.byte	0x4
	.set L$set$70,LCFI59-LFB29
	.long L$set$70
	.byte	0xe
	.byte	0x8
	.byte	0x84
	.byte	0x2
	.byte	0x4
	.set L$set$71,LCFI60-LCFI59
	.long L$set$71
	.byte	0xd
	.byte	0x4
	.byte	0x4
	.set L$set$72,LCFI62-LCFI60
	.long L$set$72
	.byte	0x83
	.byte	0x3
	.align 2
LEFDE33:
.globl __Z4initPKc.eh
__Z4initPKc.eh:
LSFDE37:
	.set L$set$73,LEFDE37-LASFDE37
	.long L$set$73
LASFDE37:
	.long	LASFDE37-EH_frame1
	.long	LFB25-.
	.set L$set$74,LFE25-LFB25
	.long L$set$74
	.byte	0x0
	.byte	0x4
	.set L$set$75,LCFI66-LFB25
	.long L$set$75
	.byte	0xe
	.byte	0x8
	.byte	0x84
	.byte	0x2
	.byte	0x4
	.set L$set$76,LCFI67-LCFI66
	.long L$set$76
	.byte	0xd
	.byte	0x4
	.byte	0x4
	.set L$set$77,LCFI69-LCFI67
	.long L$set$77
	.byte	0x83
	.byte	0x3
	.align 2
LEFDE37:
	.section __IMPORT,__pointers,non_lazy_symbol_pointers
L_debug$non_lazy_ptr:
	.indirect_symbol _debug
	.long	0
L___stderrp$non_lazy_ptr:
	.indirect_symbol ___stderrp
	.long	0
L___gxx_personality_v0$non_lazy_ptr:
	.indirect_symbol ___gxx_personality_v0
	.long	0
	.constructor
	.destructor
	.align 1
	.subsections_via_symbols
#endif
#ifdef __x86_64__
	.mod_init_func
	.align 3
	.quad	__GLOBAL__I__ZN5Board11from_stringEPKc
	.text
	.align 1,0x90
.globl __ZN5BoardC2Ejjj
__ZN5BoardC2Ejjj:
LFB17:
	pushq	%rbp
LCFI0:
	movq	%rsp, %rbp
LCFI1:
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	$1, -4(%rbp)
	movl	$0, -8(%rbp)
	jmp	L2
L3:
	movl	-8(%rbp), %eax
	leal	3(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$2, %eax
	andl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	andl	-28(%rbp), %eax
	testl	%eax, %eax
	je	L4
	movl	-8(%rbp), %eax
	addl	%eax, %eax
	subl	-12(%rbp), %eax
	incl	%eax
	movl	%eax, -52(%rbp)
	movl	-4(%rbp), %eax
	andl	-36(%rbp), %eax
	testl	%eax, %eax
	je	L6
	movl	$5, -48(%rbp)
	jmp	L8
L6:
	movl	$1, -48(%rbp)
L8:
	movq	-24(%rbp), %rdx
	movslq	-52(%rbp),%rax
	movl	-48(%rbp), %ecx
	movl	%ecx, (%rdx,%rax,4)
L4:
	movl	-4(%rbp), %eax
	andl	-32(%rbp), %eax
	testl	%eax, %eax
	je	L9
	movl	-8(%rbp), %eax
	addl	%eax, %eax
	subl	-12(%rbp), %eax
	incl	%eax
	movl	%eax, -44(%rbp)
	movl	-4(%rbp), %eax
	andl	-36(%rbp), %eax
	testl	%eax, %eax
	je	L11
	movl	$6, -40(%rbp)
	jmp	L13
L11:
	movl	$2, -40(%rbp)
L13:
	movq	-24(%rbp), %rdx
	movslq	-44(%rbp),%rax
	movl	-40(%rbp), %ecx
	movl	%ecx, (%rdx,%rax,4)
L9:
	sall	-4(%rbp)
	incl	-8(%rbp)
L2:
	cmpl	$31, -8(%rbp)
	jle	L3
	leave
	ret
LFE17:
	.align 1,0x90
.globl __ZN5BoardC1Ejjj
__ZN5BoardC1Ejjj:
LFB18:
	pushq	%rbp
LCFI2:
	movq	%rsp, %rbp
LCFI3:
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	$1, -4(%rbp)
	movl	$0, -8(%rbp)
	jmp	L17
L18:
	movl	-8(%rbp), %eax
	leal	3(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$2, %eax
	andl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	andl	-28(%rbp), %eax
	testl	%eax, %eax
	je	L19
	movl	-8(%rbp), %eax
	addl	%eax, %eax
	subl	-12(%rbp), %eax
	incl	%eax
	movl	%eax, -52(%rbp)
	movl	-4(%rbp), %eax
	andl	-36(%rbp), %eax
	testl	%eax, %eax
	je	L21
	movl	$5, -48(%rbp)
	jmp	L23
L21:
	movl	$1, -48(%rbp)
L23:
	movq	-24(%rbp), %rdx
	movslq	-52(%rbp),%rax
	movl	-48(%rbp), %ecx
	movl	%ecx, (%rdx,%rax,4)
L19:
	movl	-4(%rbp), %eax
	andl	-32(%rbp), %eax
	testl	%eax, %eax
	je	L24
	movl	-8(%rbp), %eax
	addl	%eax, %eax
	subl	-12(%rbp), %eax
	incl	%eax
	movl	%eax, -44(%rbp)
	movl	-4(%rbp), %eax
	andl	-36(%rbp), %eax
	testl	%eax, %eax
	je	L26
	movl	$6, -40(%rbp)
	jmp	L28
L26:
	movl	$2, -40(%rbp)
L28:
	movq	-24(%rbp), %rdx
	movslq	-44(%rbp),%rax
	movl	-40(%rbp), %ecx
	movl	%ecx, (%rdx,%rax,4)
L24:
	sall	-4(%rbp)
	incl	-8(%rbp)
L17:
	cmpl	$31, -8(%rbp)
	jle	L18
	leave
	ret
LFE18:
	.section __TEXT,__textcoal_nt,coalesced,pure_instructions
.globl __Z4swapI5FieldEvRT_S2_
	.weak_definition __Z4swapI5FieldEvRT_S2_
__Z4swapI5FieldEvRT_S2_:
LFB28:
	pushq	%rbp
LCFI4:
	movq	%rsp, %rbp
LCFI5:
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %eax
	movl	%eax, (%rdx)
	leave
	ret
LFE28:
	.align 1
.globl __ZN5BoardC1ERKS_
	.weak_definition __ZN5BoardC1ERKS_
__ZN5BoardC1ERKS_:
LFB10:
	pushq	%rbp
LCFI6:
	movq	%rsp, %rbp
LCFI7:
	subq	$16, %rsp
LCFI8:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movl	$256, %edx
	call	_memcpy
	leave
	ret
LFE10:
	.cstring
LC0:
	.ascii "[mcp] upgrade\12\0"
	.text
.globl __Z7upgradeR5Boardh
__Z7upgradeR5Boardh:
LFB23:
	pushq	%rbp
LCFI9:
	movq	%rsp, %rbp
LCFI10:
	subq	$16, %rsp
LCFI11:
	movq	%rdi, -8(%rbp)
	movb	%sil, -12(%rbp)
	cmpb	$7, -12(%rbp)
	ja	L36
	movzbl	-12(%rbp), %eax
	movq	-8(%rbp), %rdx
	cltq
	movl	(%rdx,%rax,4), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	L36
	movzbl	-12(%rbp), %eax
	movq	-8(%rbp), %rdx
	cltq
	movl	$6, (%rdx,%rax,4)
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	$14, %edx
	movl	$1, %esi
	leaq	LC0(%rip), %rdi
	call	_fwrite
L36:
	cmpb	$55, -12(%rbp)
	jbe	L42
	movzbl	-12(%rbp), %eax
	movq	-8(%rbp), %rdx
	cltq
	movl	(%rdx,%rax,4), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	L42
	movzbl	-12(%rbp), %eax
	movq	-8(%rbp), %rdx
	cltq
	movl	$5, (%rdx,%rax,4)
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	$14, %edx
	movl	$1, %esi
	leaq	LC0(%rip), %rdi
	call	_fwrite
L42:
	leave
	ret
LFE23:
	.cstring
LC1:
	.ascii "(f == BLACK) || (f == WHITE)\0"
LC2:
	.ascii "logic.cc\0"
	.text
.globl __Z9move_jump9MOVE_JUMPR5Boardhh5Field
__Z9move_jump9MOVE_JUMPR5Boardhh5Field:
LFB20:
	pushq	%rbp
LCFI12:
	movq	%rsp, %rbp
LCFI13:
	subq	$64, %rsp
LCFI14:
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%r8d, -44(%rbp)
	movb	%dl, -36(%rbp)
	movb	%cl, -40(%rbp)
	cmpl	$1, -44(%rbp)
	je	L44
	cmpl	$2, -44(%rbp)
	je	L44
	movb	$1, -53(%rbp)
	jmp	L47
L44:
	movb	$0, -53(%rbp)
L47:
	movzbl	-53(%rbp), %eax
	testq	%rax, %rax
	je	L48
	leaq	LC1(%rip), %rcx
	movl	$136, %edx
	leaq	LC2(%rip), %rsi
	leaq	__ZZ9move_jump9MOVE_JUMPR5Boardhh5FieldE8__func__(%rip), %rdi
	call	___assert_rtn
L48:
	cmpb	$63, -36(%rbp)
	ja	L50
	cmpb	$63, -40(%rbp)
	jbe	L52
L50:
	movl	$0, -52(%rbp)
	jmp	L53
L52:
	movzbl	-36(%rbp), %eax
	movq	-32(%rbp), %rdx
	cltq
	movl	(%rdx,%rax,4), %eax
	movl	%eax, %edx
	movl	-44(%rbp), %eax
	andl	%edx, %eax
	testl	%eax, %eax
	jne	L54
	movl	$0, -52(%rbp)
	jmp	L53
L54:
	movzbl	-40(%rbp), %eax
	movq	-32(%rbp), %rdx
	cltq
	movl	(%rdx,%rax,4), %eax
	testl	%eax, %eax
	je	L56
	movl	$0, -52(%rbp)
	jmp	L53
L56:
	movzbl	-36(%rbp), %eax
	cmpb	-40(%rbp), %al
	jae	L58
	movl	-44(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	L60
	movzbl	-36(%rbp), %eax
	movq	-32(%rbp), %rdx
	cltq
	movl	(%rdx,%rax,4), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	L60
	movl	$0, -52(%rbp)
	jmp	L53
L60:
	movzbl	-36(%rbp), %eax
	movl	%eax, %edx
	andl	$7, %edx
	movzbl	-40(%rbp), %eax
	andl	$7, %eax
	cmpl	%eax, %edx
	jge	L63
	movb	$9, -46(%rbp)
	jmp	L65
L63:
	movb	$7, -46(%rbp)
L65:
	movzbl	-46(%rbp), %eax
	movb	%al, -1(%rbp)
	jmp	L66
L58:
	movl	-44(%rbp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	L67
	movzbl	-36(%rbp), %eax
	movq	-32(%rbp), %rdx
	cltq
	movl	(%rdx,%rax,4), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	L67
	movl	$0, -52(%rbp)
	jmp	L53
L67:
	movzbl	-36(%rbp), %eax
	movl	%eax, %edx
	andl	$7, %edx
	movzbl	-40(%rbp), %eax
	andl	$7, %eax
	cmpl	%eax, %edx
	jge	L70
	movb	$-7, -45(%rbp)
	jmp	L72
L70:
	movb	$-9, -45(%rbp)
L72:
	movzbl	-45(%rbp), %ecx
	movb	%cl, -1(%rbp)
L66:
	movzbl	-40(%rbp), %edx
	movzbl	-36(%rbp), %eax
	subl	%eax, %edx
	movsbl	-1(%rbp),%eax
	movl	%eax, %ecx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	%ecx
	movl	%edx, %eax
	testl	%eax, %eax
	je	L73
	movl	$0, -52(%rbp)
	jmp	L53
L73:
	movzbl	-40(%rbp), %edx
	movzbl	-36(%rbp), %eax
	subl	%eax, %edx
	movsbl	-1(%rbp),%eax
	movl	%eax, %ecx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	%ecx
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	cmpl	%eax, %edx
	je	L75
	movl	$0, -52(%rbp)
	jmp	L53
L75:
	movzbl	-40(%rbp), %eax
	movb	%al, -2(%rbp)
	cmpl	$2, -20(%rbp)
	jne	L77
	movzbl	-1(%rbp), %eax
	subb	%al, -2(%rbp)
	movzbl	-2(%rbp), %eax
	movq	-32(%rbp), %rdx
	cltq
	movl	(%rdx,%rax,4), %eax
	testl	%eax, %eax
	je	L79
	movzbl	-2(%rbp), %eax
	movq	-32(%rbp), %rdx
	cltq
	movl	(%rdx,%rax,4), %eax
	movl	%eax, %edx
	movl	-44(%rbp), %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	L81
L79:
	movl	$0, -52(%rbp)
	jmp	L53
L81:
	movzbl	-2(%rbp), %eax
	movq	-32(%rbp), %rdx
	cltq
	movl	$0, (%rdx,%rax,4)
L77:
	movzbl	-40(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rsi
	addq	-32(%rbp), %rsi
	movzbl	-36(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdi
	addq	-32(%rbp), %rdi
	call	__Z4swapI5FieldEvRT_S2_
	movl	$1, -52(%rbp)
L53:
	movl	-52(%rbp), %eax
	leave
	ret
LFE20:
.globl __Z15check_move_jump9MOVE_JUMPRK5Boardh5Field
__Z15check_move_jump9MOVE_JUMPRK5Boardh5Field:
LFB21:
	pushq	%rbp
LCFI15:
	movq	%rsp, %rbp
LCFI16:
	subq	$288, %rsp
LCFI17:
	movl	%edi, -260(%rbp)
	movq	%rsi, -272(%rbp)
	movl	%ecx, -280(%rbp)
	movb	%dl, -276(%rbp)
	movq	-272(%rbp), %rsi
	leaq	-256(%rbp), %rdi
	call	__ZN5BoardC1ERKS_
	movl	-260(%rbp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	movl	%eax, %edx
	movzbl	-276(%rbp), %eax
	subb	%dl, %al
	movzbl	%al, %ecx
	movzbl	-276(%rbp), %edx
	movl	-280(%rbp), %eax
	leaq	-256(%rbp), %rsi
	movl	-260(%rbp), %edi
	movl	%eax, %r8d
	call	__Z9move_jump9MOVE_JUMPR5Boardhh5Field
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	L84
	movl	$1, -284(%rbp)
	jmp	L86
L84:
	movl	-260(%rbp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	movl	%eax, %edx
	movzbl	-276(%rbp), %eax
	subb	%dl, %al
	movzbl	%al, %ecx
	movzbl	-276(%rbp), %edx
	movl	-280(%rbp), %eax
	leaq	-256(%rbp), %rsi
	movl	-260(%rbp), %edi
	movl	%eax, %r8d
	call	__Z9move_jump9MOVE_JUMPR5Boardhh5Field
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	L87
	movl	$1, -284(%rbp)
	jmp	L86
L87:
	movl	-260(%rbp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	addb	-276(%rbp), %al
	movzbl	%al, %ecx
	movzbl	-276(%rbp), %edx
	movl	-280(%rbp), %eax
	leaq	-256(%rbp), %rsi
	movl	-260(%rbp), %edi
	movl	%eax, %r8d
	call	__Z9move_jump9MOVE_JUMPR5Boardhh5Field
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	L89
	movl	$1, -284(%rbp)
	jmp	L86
L89:
	movl	-260(%rbp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addb	-276(%rbp), %al
	movzbl	%al, %ecx
	movzbl	-276(%rbp), %edx
	movl	-280(%rbp), %eax
	leaq	-256(%rbp), %rsi
	movl	-260(%rbp), %edi
	movl	%eax, %r8d
	call	__Z9move_jump9MOVE_JUMPR5Boardhh5Field
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	L91
	movl	$1, -284(%rbp)
	jmp	L86
L91:
	movl	$0, -284(%rbp)
L86:
	movl	-284(%rbp), %eax
	leave
	ret
LFE21:
	.cstring
LC3:
	.ascii "f == BLACK || f == WHITE\0"
	.text
.globl __Z13can_move_jump9MOVE_JUMPRK5Board5Field
__Z13can_move_jump9MOVE_JUMPRK5Board5Field:
LFB22:
	pushq	%rbp
LCFI18:
	movq	%rsp, %rbp
LCFI19:
	subq	$48, %rsp
LCFI20:
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	cmpl	$1, -36(%rbp)
	je	L95
	cmpl	$2, -36(%rbp)
	je	L95
	movb	$1, -42(%rbp)
	jmp	L98
L95:
	movb	$0, -42(%rbp)
L98:
	movzbl	-42(%rbp), %eax
	testq	%rax, %rax
	je	L99
	leaq	LC3(%rip), %rcx
	movl	$190, %edx
	leaq	LC2(%rip), %rsi
	leaq	__ZZ13can_move_jump9MOVE_JUMPRK5Board5FieldE8__func__(%rip), %rdi
	call	___assert_rtn
L99:
	movb	$0, -1(%rbp)
	jmp	L101
L102:
	movzbl	-1(%rbp), %eax
	movq	-32(%rbp), %rdx
	cltq
	movl	(%rdx,%rax,4), %eax
	movl	%eax, %edx
	movl	-36(%rbp), %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	L103
	movzbl	-1(%rbp), %edx
	movl	-36(%rbp), %ecx
	movq	-32(%rbp), %rsi
	movl	-20(%rbp), %edi
	call	__Z15check_move_jump9MOVE_JUMPRK5Boardh5Field
	xorl	$1, %eax
	testb	%al, %al
	jne	L103
	movb	$1, -41(%rbp)
	jmp	L106
L103:
	movb	$0, -41(%rbp)
L106:
	movzbl	-41(%rbp), %eax
	testb	%al, %al
	je	L107
	movl	$1, -40(%rbp)
	jmp	L109
L107:
	incb	-1(%rbp)
L101:
	cmpb	$63, -1(%rbp)
	jbe	L102
	movl	$0, -40(%rbp)
L109:
	movl	-40(%rbp), %eax
	leave
	ret
LFE22:
	.cstring
LC4:
	.ascii "0\0"
	.text
	.align 1,0x90
.globl __ZN5Board9to_stringEPc
__ZN5Board9to_stringEPc:
LFB15:
	pushq	%rbp
LCFI21:
	movq	%rsp, %rbp
LCFI22:
	subq	$48, %rsp
LCFI23:
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	jmp	L113
L114:
	movl	-4(%rbp), %eax
	leal	3(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$2, %eax
	andl	$1, %eax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	addl	%eax, %eax
	subl	-8(%rbp), %eax
	incl	%eax
	movq	-24(%rbp), %rdx
	cltq
	movl	(%rdx,%rax,4), %eax
	movl	%eax, -36(%rbp)
	cmpl	$6, -36(%rbp)
	ja	L115
	mov	-36(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	L121(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movl	(%rax), %eax
	movslq	%eax,%rdx
	leaq	L121(%rip), %rax
	leaq	(%rdx,%rax), %rax
	jmp	*%rax
	.align 2,0x90
L121:
	.long	L116-L121
	.long	L117-L121
	.long	L118-L121
	.long	L115-L121
	.long	L115-L121
	.long	L119-L121
	.long	L120-L121
L117:
	movl	-4(%rbp), %eax
	cltq
	addq	-32(%rbp), %rax
	movb	$98, (%rax)
	jmp	L122
L118:
	movl	-4(%rbp), %eax
	cltq
	addq	-32(%rbp), %rax
	movb	$119, (%rax)
	jmp	L122
L119:
	movl	-4(%rbp), %eax
	cltq
	addq	-32(%rbp), %rax
	movb	$66, (%rax)
	jmp	L122
L120:
	movl	-4(%rbp), %eax
	cltq
	addq	-32(%rbp), %rax
	movb	$87, (%rax)
	jmp	L122
L116:
	movl	-4(%rbp), %eax
	cltq
	addq	-32(%rbp), %rax
	movb	$45, (%rax)
	jmp	L122
L115:
	leaq	LC4(%rip), %rcx
	movl	$97, %edx
	leaq	LC2(%rip), %rsi
	leaq	__ZZN5Board9to_stringEPcE8__func__(%rip), %rdi
	call	___assert_rtn
L122:
	movq	-32(%rbp), %rax
	addq	$32, %rax
	movb	$0, (%rax)
	incl	-4(%rbp)
L113:
	cmpl	$31, -4(%rbp)
	jle	L114
	leave
	ret
LFE15:
.globl __Z9serializev
__Z9serializev:
LFB26:
	pushq	%rbp
LCFI24:
	movq	%rsp, %rbp
LCFI25:
	subq	$16, %rsp
LCFI26:
	movl	_turn(%rip), %eax
	andl	$1, %eax
	testb	%al, %al
	je	L126
	movb	$87, -1(%rbp)
	jmp	L128
L126:
	movb	$66, -1(%rbp)
L128:
	movzbl	-1(%rbp), %eax
	movb	%al, _buffer(%rip)
	movb	$58, 1+_buffer(%rip)
	leaq	2+_buffer(%rip), %rsi
	leaq	_b(%rip), %rdi
	call	__ZN5Board9to_stringEPc
	movb	$10, 34+_buffer(%rip)
	movb	$0, 35+_buffer(%rip)
	leaq	_buffer(%rip), %rax
	leave
	ret
LFE26:
	.cstring
LC5:
	.ascii "[mcp] \0"
	.align 3
LC6:
	.ascii "(winner >= 0) && (winner <= 2)\0"
LC7:
	.ascii "[mcp] DRAW.\12\0"
LC8:
	.ascii "BLACK\0"
LC9:
	.ascii "WHITE\0"
LC10:
	.ascii "[mcp] %s wins.\12\0"
	.text
__ZL8end_gameiPKcz:
LFB24:
	pushq	%rbp
LCFI27:
	movq	%rsp, %rbp
LCFI28:
	subq	$256, %rsp
LCFI29:
	movl	%edi, -212(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	movzbl	%al, %eax
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rdx
	leaq	0(,%rdx,4), %rax
	leaq	L131(%rip), %rdx
	movq	%rdx, -248(%rbp)
	subq	%rax, -248(%rbp)
	leaq	-1(%rbp), %rax
	movq	-248(%rbp), %rdx
	jmp	*%rdx
	movaps	%xmm7, -15(%rax)
	movaps	%xmm6, -31(%rax)
	movaps	%xmm5, -47(%rax)
	movaps	%xmm4, -63(%rax)
	movaps	%xmm3, -79(%rax)
	movaps	%xmm2, -95(%rax)
	movaps	%xmm1, -111(%rax)
	movaps	%xmm0, -127(%rax)
L131:
	movq	%rsi, -224(%rbp)
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	$6, %edx
	movl	$1, %esi
	leaq	LC5(%rip), %rdi
	call	_fwrite
	leaq	-208(%rbp), %rax
	movl	$16, (%rax)
	leaq	-208(%rbp), %rax
	movl	$48, 4(%rax)
	leaq	-208(%rbp), %rax
	leaq	16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	leaq	-208(%rbp), %rax
	leaq	-176(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	leaq	-208(%rbp), %rdx
	movq	-224(%rbp), %rsi
	call	_vfprintf
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movl	$10, %edi
	call	_fputc
	cmpl	$0, -212(%rbp)
	js	L132
	cmpl	$2, -212(%rbp)
	jle	L134
L132:
	movb	$1, -233(%rbp)
	jmp	L135
L134:
	movb	$0, -233(%rbp)
L135:
	movzbl	-233(%rbp), %eax
	testq	%rax, %rax
	je	L136
	leaq	LC6(%rip), %rcx
	movl	$219, %edx
	leaq	LC2(%rip), %rsi
	leaq	__ZZL8end_gameiPKczE8__func__(%rip), %rdi
	call	___assert_rtn
L136:
	cmpl	$2, -212(%rbp)
	jne	L138
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	$12, %edx
	movl	$1, %esi
	leaq	LC7(%rip), %rdi
	call	_fwrite
	jmp	L140
L138:
	cmpl	$0, -212(%rbp)
	je	L141
	leaq	LC8(%rip), %rax
	movq	%rax, -232(%rbp)
	jmp	L143
L141:
	leaq	LC9(%rip), %rdx
	movq	%rdx, -232(%rbp)
L143:
	movq	-232(%rbp), %rdx
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	leaq	LC10(%rip), %rsi
	movl	$0, %eax
	call	_fprintf
L140:
	movl	$0, %edi
	call	_exit
LFE24:
	.cstring
LC11:
	.ascii "no move '%s'\0"
LC12:
	.ascii "error parsing move '%s'\0"
	.align 3
LC13:
	.ascii "INVALID move %ld-%ld (jump forced)\12\0"
	.align 3
LC14:
	.ascii "INVALID move %ld-%ld (jump forced)\0"
LC15:
	.ascii "INVALID move %ld-%ld\12\0"
LC16:
	.ascii "INVALID move %ld-%ld\0"
LC17:
	.ascii "[mcp] valid move %ld-%ld\12\0"
LC18:
	.ascii "error parsing '%s'\0"
LC19:
	.ascii "INVALID jump %ldx%ld\12\0"
LC20:
	.ascii "INVALID jump %ldx%ld\0"
LC21:
	.ascii "[mcp] valid jump %ldx%ld\12\0"
	.align 3
LC22:
	.ascii "INVALID jump (jump forced %ld)\12\0"
	.align 3
LC23:
	.ascii "INVALID jump (jump forced %ld)\0"
LC24:
	.ascii "no moves left\0"
LC25:
	.ascii "20 moves timeout\0"
	.text
.globl __Z11deserializePc
__Z11deserializePc:
LFB27:
	pushq	%rbp
LCFI30:
	movq	%rsp, %rbp
LCFI31:
	subq	$352, %rsp
LCFI32:
	movq	%rdi, -312(%rbp)
	movq	-312(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L146
	movl	_turn(%rip), %eax
	movl	%eax, %edi
	andl	$1, %edi
	movq	-312(%rbp), %rdx
	leaq	LC11(%rip), %rsi
	movl	$0, %eax
	call	__ZL8end_gameiPKcz
L146:
	movq	-24(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	movl	$10, %edx
	call	_strtol
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	L148
	movq	-24(%rbp), %rax
	incq	%rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	movl	$10, %edx
	call	_strtol
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	L150
	movl	_turn(%rip), %eax
	movl	%eax, %edi
	andl	$1, %edi
	movq	-312(%rbp), %rdx
	leaq	LC12(%rip), %rsi
	movl	$0, %eax
	call	__ZL8end_gameiPKcz
L150:
	movl	_turn(%rip), %eax
	andl	$1, %eax
	testb	%al, %al
	je	L152
	movl	$2, -348(%rbp)
	jmp	L154
L152:
	movl	$1, -348(%rbp)
L154:
	movl	-348(%rbp), %edx
	leaq	_b(%rip), %rsi
	movl	$2, %edi
	call	__Z13can_move_jump9MOVE_JUMPRK5Board5Field
	testb	%al, %al
	je	L155
	movq	_debug@GOTPCREL(%rip), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	L157
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	leaq	LC13(%rip), %rsi
	movl	$0, %eax
	call	_fprintf
	movl	$0, -344(%rbp)
	jmp	L159
L157:
	movl	_turn(%rip), %eax
	movl	%eax, %edi
	andl	$1, %edi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	leaq	LC14(%rip), %rsi
	movl	$0, %eax
	call	__ZL8end_gameiPKcz
L155:
	movq	-32(%rbp), %rax
	addq	%rax, %rax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	decq	%rax
	leaq	3(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$2, %rax
	andl	$1, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	decl	%eax
	movl	%eax, -4(%rbp)
	movq	-40(%rbp), %rax
	addq	%rax, %rax
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	decq	%rax
	leaq	3(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$2, %rax
	andl	$1, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	decl	%eax
	movl	%eax, -8(%rbp)
	movl	_turn(%rip), %eax
	andl	$1, %eax
	testb	%al, %al
	je	L160
	movl	$2, -340(%rbp)
	jmp	L162
L160:
	movl	$1, -340(%rbp)
L162:
	movl	-8(%rbp), %eax
	movzbl	%al, %ecx
	movl	-4(%rbp), %eax
	movzbl	%al, %edx
	movl	-340(%rbp), %r8d
	leaq	_b(%rip), %rsi
	movl	$1, %edi
	call	__Z9move_jump9MOVE_JUMPR5Boardhh5Field
	testl	%eax, %eax
	sete	%al
	testb	%al, %al
	je	L163
	movq	_debug@GOTPCREL(%rip), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	L165
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	leaq	LC15(%rip), %rsi
	movl	$0, %eax
	call	_fprintf
	movl	$0, -344(%rbp)
	jmp	L159
L165:
	movl	_turn(%rip), %eax
	movl	%eax, %edi
	andl	$1, %edi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	leaq	LC16(%rip), %rsi
	movl	$0, %eax
	call	__ZL8end_gameiPKcz
L163:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	_b(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movl	(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	L167
	movl	_idle(%rip), %eax
	incl	%eax
	movl	%eax, -336(%rbp)
	jmp	L169
L167:
	movl	$0, -336(%rbp)
L169:
	movl	-336(%rbp), %eax
	movl	%eax, _idle(%rip)
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	leaq	LC17(%rip), %rsi
	movl	$0, %eax
	call	_fprintf
	movl	-8(%rbp), %eax
	movzbl	%al, %esi
	leaq	_b(%rip), %rdi
	call	__Z7upgradeR5Boardh
	jmp	L170
L148:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$120, %al
	jne	L171
	leaq	-304(%rbp), %rdi
	leaq	_b(%rip), %rsi
	call	__ZN5BoardC1ERKS_
	jmp	L173
L174:
	movq	-24(%rbp), %rax
	incq	%rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	movl	$10, %edx
	call	_strtol
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	L175
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$120, %al
	je	L175
	movl	_turn(%rip), %eax
	movl	%eax, %edi
	andl	$1, %edi
	movq	-312(%rbp), %rdx
	leaq	LC18(%rip), %rsi
	movl	$0, %eax
	call	__ZL8end_gameiPKcz
L175:
	movq	-32(%rbp), %rax
	addq	%rax, %rax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	decq	%rax
	leaq	3(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$2, %rax
	andl	$1, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	decl	%eax
	movl	%eax, -12(%rbp)
	movq	-48(%rbp), %rax
	addq	%rax, %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	decq	%rax
	leaq	3(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$2, %rax
	andl	$1, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	decl	%eax
	movl	%eax, -16(%rbp)
	movl	_turn(%rip), %eax
	andl	$1, %eax
	testb	%al, %al
	je	L178
	movl	$2, -332(%rbp)
	jmp	L180
L178:
	movl	$1, -332(%rbp)
L180:
	movl	-16(%rbp), %eax
	movzbl	%al, %ecx
	movl	-12(%rbp), %eax
	movzbl	%al, %edx
	movl	-332(%rbp), %r8d
	leaq	_b(%rip), %rsi
	movl	$2, %edi
	call	__Z9move_jump9MOVE_JUMPR5Boardhh5Field
	testl	%eax, %eax
	sete	%al
	testb	%al, %al
	je	L181
	movq	_debug@GOTPCREL(%rip), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	L183
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rdx
	leaq	LC19(%rip), %rsi
	movl	$0, %eax
	call	_fprintf
	leaq	_b(%rip), %rdi
	leaq	-304(%rbp), %rsi
	movl	$256, %edx
	call	_memcpy
	movl	$0, -344(%rbp)
	jmp	L159
L183:
	movl	_turn(%rip), %eax
	movl	%eax, %edi
	andl	$1, %edi
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rdx
	leaq	LC20(%rip), %rsi
	movl	$0, %eax
	call	__ZL8end_gameiPKcz
L181:
	movl	$0, _idle(%rip)
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rdx
	leaq	LC21(%rip), %rsi
	movl	$0, %eax
	call	_fprintf
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	L185
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	L173
L185:
	movl	_turn(%rip), %eax
	andl	$1, %eax
	testb	%al, %al
	je	L187
	movl	$2, -328(%rbp)
	jmp	L189
L187:
	movl	$1, -328(%rbp)
L189:
	movl	-16(%rbp), %eax
	movzbl	%al, %edx
	movl	-328(%rbp), %ecx
	leaq	_b(%rip), %rsi
	movl	$2, %edi
	call	__Z15check_move_jump9MOVE_JUMPRK5Boardh5Field
	testb	%al, %al
	je	L190
	movq	_debug@GOTPCREL(%rip), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	L192
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	-48(%rbp), %rdx
	leaq	LC22(%rip), %rsi
	movl	$0, %eax
	call	_fprintf
	leaq	_b(%rip), %rdi
	leaq	-304(%rbp), %rsi
	movl	$256, %edx
	call	_memcpy
	movl	$0, -344(%rbp)
	jmp	L159
L192:
	movl	_turn(%rip), %eax
	movl	%eax, %edi
	andl	$1, %edi
	movq	-48(%rbp), %rdx
	leaq	LC23(%rip), %rsi
	movl	$0, %eax
	call	__ZL8end_gameiPKcz
L190:
	movl	-16(%rbp), %eax
	movzbl	%al, %esi
	leaq	_b(%rip), %rdi
	call	__Z7upgradeR5Boardh
L173:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L174
	jmp	L170
L171:
	movl	_turn(%rip), %eax
	movl	%eax, %edi
	andl	$1, %edi
	movq	-312(%rbp), %rdx
	leaq	LC18(%rip), %rsi
	movl	$0, %eax
	call	__ZL8end_gameiPKcz
L170:
	movl	_turn(%rip), %eax
	incl	%eax
	movl	%eax, _turn(%rip)
	movl	_turn(%rip), %eax
	andl	$1, %eax
	testb	%al, %al
	je	L195
	movl	$2, -320(%rbp)
	jmp	L197
L195:
	movl	$1, -320(%rbp)
L197:
	movl	-320(%rbp), %edx
	leaq	_b(%rip), %rsi
	movl	$1, %edi
	call	__Z13can_move_jump9MOVE_JUMPRK5Board5Field
	xorl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	L198
	movl	_turn(%rip), %eax
	andl	$1, %eax
	testb	%al, %al
	je	L200
	movl	$2, -316(%rbp)
	jmp	L202
L200:
	movl	$1, -316(%rbp)
L202:
	movl	-316(%rbp), %edx
	leaq	_b(%rip), %rsi
	movl	$2, %edi
	call	__Z13can_move_jump9MOVE_JUMPRK5Board5Field
	xorl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	L198
	movb	$1, -321(%rbp)
	jmp	L204
L198:
	movb	$0, -321(%rbp)
L204:
	movzbl	-321(%rbp), %eax
	testb	%al, %al
	je	L205
	movl	_turn(%rip), %eax
	movl	%eax, %edi
	andl	$1, %edi
	leaq	LC24(%rip), %rsi
	movl	$0, %eax
	call	__ZL8end_gameiPKcz
L205:
	movl	_idle(%rip), %eax
	cmpl	$20, %eax
	jle	L207
	leaq	LC25(%rip), %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__ZL8end_gameiPKcz
L207:
	movl	$1, -344(%rbp)
L159:
	movl	-344(%rbp), %eax
	leave
	ret
LFE27:
	.cstring
	.align 3
LC26:
	.ascii "+----+----+----+----+----+----+----+----+\0"
LC27:
	.ascii "|    \0"
LC28:
	.ascii "|%c%2d%c\0"
LC29:
	.ascii "|\0"
	.text
	.align 1,0x90
.globl __ZN5Board4drawEv
__ZN5Board4drawEv:
LFB19:
	pushq	%rbp
LCFI33:
	movq	%rsp, %rbp
LCFI34:
	subq	$32, %rsp
LCFI35:
	movq	%rdi, -24(%rbp)
	movl	$0, -8(%rbp)
	jmp	L211
L212:
	movl	-8(%rbp), %eax
	andl	$7, %eax
	testl	%eax, %eax
	jne	L213
	leaq	LC26(%rip), %rdi
	call	_puts
L213:
	movb	$32, -1(%rbp)
	movl	-8(%rbp), %eax
	movq	-24(%rbp), %rdx
	cltq
	movl	(%rdx,%rax,4), %eax
	andl	$1, %eax
	testb	%al, %al
	je	L215
	movb	$98, -1(%rbp)
L215:
	movl	-8(%rbp), %eax
	movq	-24(%rbp), %rdx
	cltq
	movl	(%rdx,%rax,4), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	L217
	movb	$119, -1(%rbp)
L217:
	movl	-8(%rbp), %eax
	movq	-24(%rbp), %rdx
	cltq
	movl	(%rdx,%rax,4), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	L219
	movzbl	-1(%rbp), %eax
	subl	$32, %eax
	movb	%al, -1(%rbp)
L219:
	movl	-8(%rbp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	L221
	movl	-8(%rbp), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	L223
L221:
	movl	-8(%rbp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	L224
	movl	-8(%rbp), %eax
	andl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	L224
L223:
	leaq	LC27(%rip), %rdi
	movl	$0, %eax
	call	_printf
	jmp	L226
L224:
	movsbl	-1(%rbp),%ecx
	movl	-8(%rbp), %edx
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	leal	1(%rax), %edx
	movsbl	-1(%rbp),%esi
	leaq	LC28(%rip), %rdi
	movl	$0, %eax
	call	_printf
L226:
	movl	-8(%rbp), %eax
	andl	$7, %eax
	cmpl	$7, %eax
	jne	L227
	leaq	LC29(%rip), %rdi
	call	_puts
L227:
	incl	-8(%rbp)
L211:
	cmpl	$63, -8(%rbp)
	jle	L212
	leaq	LC26(%rip), %rdi
	call	_puts
	leave
	ret
LFE19:
	.cstring
LC30:
	.ascii "errno = %d\12\0"
	.text
__ZL5errorPKcz:
LFB3:
	pushq	%rbp
LCFI36:
	movq	%rsp, %rbp
LCFI37:
	subq	$224, %rsp
LCFI38:
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	movzbl	%al, %eax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rdx
	leaq	0(,%rdx,4), %rax
	leaq	L232(%rip), %rdx
	movq	%rdx, -224(%rbp)
	subq	%rax, -224(%rbp)
	leaq	-1(%rbp), %rax
	movq	-224(%rbp), %rdx
	jmp	*%rdx
	movaps	%xmm7, -15(%rax)
	movaps	%xmm6, -31(%rax)
	movaps	%xmm5, -47(%rax)
	movaps	%xmm4, -63(%rax)
	movaps	%xmm3, -79(%rax)
	movaps	%xmm2, -95(%rax)
	movaps	%xmm1, -111(%rax)
	movaps	%xmm0, -127(%rax)
L232:
	movq	%rdi, -216(%rbp)
	leaq	-208(%rbp), %rax
	movl	$8, (%rax)
	leaq	-208(%rbp), %rax
	movl	$48, 4(%rax)
	leaq	-208(%rbp), %rax
	leaq	16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	leaq	-208(%rbp), %rax
	leaq	-176(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	leaq	-208(%rbp), %rdx
	movq	-216(%rbp), %rsi
	call	_vfprintf
	call	___error
	movl	(%rax), %edx
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	leaq	LC30(%rip), %rsi
	movl	$0, %eax
	call	_fprintf
	movl	$0, %edi
	call	_perror
	movl	$-1, %edi
	call	_exit
LFE3:
	.cstring
	.align 3
LC31:
	.ascii "input string must be 32 chars\12\0"
	.align 3
LC32:
	.ascii "unknown char '%c' in input string\12\0"
	.text
	.align 1,0x90
.globl __ZN5Board11from_stringEPKc
__ZN5Board11from_stringEPKc:
LFB14:
	pushq	%rbp
LCFI39:
	movq	%rsp, %rbp
LCFI40:
	subq	$48, %rsp
LCFI41:
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdi
	call	_strlen
	cmpq	$32, %rax
	je	L235
	leaq	LC31(%rip), %rdi
	movl	$0, %eax
	call	__ZL5errorPKcz
L235:
	movl	$0, -4(%rbp)
	jmp	L237
L238:
	movl	-4(%rbp), %eax
	cltq
	addq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -33(%rbp)
	cmpb	$87, -33(%rbp)
	je	L242
	cmpb	$87, -33(%rbp)
	jg	L245
	cmpb	$45, -33(%rbp)
	je	L240
	cmpb	$66, -33(%rbp)
	je	L241
	jmp	L239
L245:
	cmpb	$98, -33(%rbp)
	je	L243
	cmpb	$119, -33(%rbp)
	je	L244
	jmp	L239
L243:
	movl	$1, -8(%rbp)
	jmp	L246
L244:
	movl	$2, -8(%rbp)
	jmp	L246
L241:
	movl	$5, -8(%rbp)
	jmp	L246
L242:
	movl	$6, -8(%rbp)
	jmp	L246
L240:
	movl	$0, -8(%rbp)
	jmp	L246
L239:
	movl	-4(%rbp), %eax
	cltq
	addq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al,%esi
	leaq	LC32(%rip), %rdi
	movl	$0, %eax
	call	__ZL5errorPKcz
L246:
	movl	-4(%rbp), %eax
	leal	3(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$2, %eax
	andl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	addl	%eax, %eax
	subl	-12(%rbp), %eax
	incl	%eax
	movq	-24(%rbp), %rcx
	movslq	%eax,%rdx
	movl	-8(%rbp), %eax
	movl	%eax, (%rcx,%rdx,4)
	movl	-4(%rbp), %eax
	addl	%eax, %eax
	addl	-12(%rbp), %eax
	movq	-24(%rbp), %rdx
	cltq
	movl	$0, (%rdx,%rax,4)
	incl	-4(%rbp)
L237:
	movl	-4(%rbp), %eax
	cltq
	addq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L238
	leave
	ret
LFE14:
	.cstring
	.align 3
LC33:
	.ascii "bbbbbbbbbbbb--------wwwwwwwwwwww\0"
	.section __TEXT,__textcoal_nt,coalesced,pure_instructions
	.align 1
.globl __ZN5BoardC1Ev
	.weak_definition __ZN5BoardC1Ev
__ZN5BoardC1Ev:
LFB7:
	pushq	%rbp
LCFI42:
	movq	%rsp, %rbp
LCFI43:
	subq	$16, %rsp
LCFI44:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	leaq	LC33(%rip), %rsi
	call	__ZN5Board11from_stringEPKc
	leave
	ret
LFE7:
	.section __TEXT,__StaticInit,regular,pure_instructions
__Z41__static_initialization_and_destruction_0ii:
LFB29:
	pushq	%rbp
LCFI45:
	movq	%rsp, %rbp
LCFI46:
	subq	$16, %rsp
LCFI47:
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	L255
	cmpl	$65535, -8(%rbp)
	jne	L255
	leaq	_b(%rip), %rdi
	call	__ZN5BoardC1Ev
L255:
	leave
	ret
LFE29:
__GLOBAL__I__ZN5Board11from_stringEPKc:
LFB30:
	pushq	%rbp
LCFI48:
	movq	%rsp, %rbp
LCFI49:
	movl	$65535, %esi
	movl	$1, %edi
	call	__Z41__static_initialization_and_destruction_0ii
	leave
	ret
LFE30:
	.cstring
	.align 3
LC34:
	.ascii "init failed ('B' or 'W' expected)\12\0"
LC35:
	.ascii "init failed (':' expected)\12\0"
	.text
.globl __Z4initPKc
__Z4initPKc:
LFB25:
	pushq	%rbp
LCFI50:
	movq	%rsp, %rbp
LCFI51:
	subq	$16, %rsp
LCFI52:
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	L267
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$87, %al
	jne	L261
	movl	_turn(%rip), %eax
	incl	%eax
	movl	%eax, _turn(%rip)
	jmp	L263
L261:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$66, %al
	je	L263
	leaq	LC34(%rip), %rdi
	movl	$0, %eax
	call	__ZL5errorPKcz
L263:
	movq	-8(%rbp), %rax
	incq	%rax
	movzbl	(%rax), %eax
	cmpb	$58, %al
	je	L265
	leaq	LC35(%rip), %rdi
	movl	$0, %eax
	call	__ZL5errorPKcz
L265:
	movq	-8(%rbp), %rsi
	addq	$2, %rsi
	leaq	_b(%rip), %rdi
	call	__ZN5Board11from_stringEPKc
L267:
	leave
	ret
LFE25:
.globl _b
.zerofill __DATA, __common, _b, 256, 5
.globl _turn
	.data
	.align 2
_turn:
	.space 4
.globl _idle
	.align 2
_idle:
	.space 4
.globl _buffer
.zerofill __DATA, __common, _buffer, 36, 5
	.cstring
__ZZL8end_gameiPKczE8__func__:
	.ascii "end_game\0"
__ZZ13can_move_jump9MOVE_JUMPRK5Board5FieldE8__func__:
	.ascii "can_move_jump\0"
__ZZ9move_jump9MOVE_JUMPR5Boardhh5FieldE8__func__:
	.ascii "move_jump\0"
__ZZN5Board9to_stringEPcE8__func__:
	.ascii "to_string\0"
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$0,LECIE1-LSCIE1
	.long L$set$0
LSCIE1:
	.long	0x0
	.byte	0x1
	.ascii "zPR\0"
	.byte	0x1
	.byte	0x78
	.byte	0x10
	.byte	0x6
	.byte	0x9b
	.long	___gxx_personality_v0+4@GOTPCREL
	.byte	0x10
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x90
	.byte	0x1
	.align 3
LECIE1:
.globl __ZN5BoardC2Ejjj.eh
__ZN5BoardC2Ejjj.eh:
LSFDE1:
	.set L$set$1,LEFDE1-LASFDE1
	.long L$set$1
LASFDE1:
	.long	LASFDE1-EH_frame1
	.quad	LFB17-.
	.set L$set$2,LFE17-LFB17
	.quad L$set$2
	.byte	0x0
	.byte	0x4
	.set L$set$3,LCFI0-LFB17
	.long L$set$3
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE1:
.globl __ZN5BoardC1Ejjj.eh
__ZN5BoardC1Ejjj.eh:
LSFDE3:
	.set L$set$5,LEFDE3-LASFDE3
	.long L$set$5
LASFDE3:
	.long	LASFDE3-EH_frame1
	.quad	LFB18-.
	.set L$set$6,LFE18-LFB18
	.quad L$set$6
	.byte	0x0
	.byte	0x4
	.set L$set$7,LCFI2-LFB18
	.long L$set$7
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$8,LCFI3-LCFI2
	.long L$set$8
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE3:
.globl __Z4swapI5FieldEvRT_S2_.eh
	.weak_definition __Z4swapI5FieldEvRT_S2_.eh
__Z4swapI5FieldEvRT_S2_.eh:
LSFDE5:
	.set L$set$9,LEFDE5-LASFDE5
	.long L$set$9
LASFDE5:
	.long	LASFDE5-EH_frame1
	.quad	LFB28-.
	.set L$set$10,LFE28-LFB28
	.quad L$set$10
	.byte	0x0
	.byte	0x4
	.set L$set$11,LCFI4-LFB28
	.long L$set$11
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$12,LCFI5-LCFI4
	.long L$set$12
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE5:
.globl __ZN5BoardC1ERKS_.eh
	.weak_definition __ZN5BoardC1ERKS_.eh
__ZN5BoardC1ERKS_.eh:
LSFDE7:
	.set L$set$13,LEFDE7-LASFDE7
	.long L$set$13
LASFDE7:
	.long	LASFDE7-EH_frame1
	.quad	LFB10-.
	.set L$set$14,LFE10-LFB10
	.quad L$set$14
	.byte	0x0
	.byte	0x4
	.set L$set$15,LCFI6-LFB10
	.long L$set$15
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$16,LCFI7-LCFI6
	.long L$set$16
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE7:
.globl __Z7upgradeR5Boardh.eh
__Z7upgradeR5Boardh.eh:
LSFDE9:
	.set L$set$17,LEFDE9-LASFDE9
	.long L$set$17
LASFDE9:
	.long	LASFDE9-EH_frame1
	.quad	LFB23-.
	.set L$set$18,LFE23-LFB23
	.quad L$set$18
	.byte	0x0
	.byte	0x4
	.set L$set$19,LCFI9-LFB23
	.long L$set$19
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$20,LCFI10-LCFI9
	.long L$set$20
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE9:
.globl __Z9move_jump9MOVE_JUMPR5Boardhh5Field.eh
__Z9move_jump9MOVE_JUMPR5Boardhh5Field.eh:
LSFDE11:
	.set L$set$21,LEFDE11-LASFDE11
	.long L$set$21
LASFDE11:
	.long	LASFDE11-EH_frame1
	.quad	LFB20-.
	.set L$set$22,LFE20-LFB20
	.quad L$set$22
	.byte	0x0
	.byte	0x4
	.set L$set$23,LCFI12-LFB20
	.long L$set$23
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$24,LCFI13-LCFI12
	.long L$set$24
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE11:
.globl __Z15check_move_jump9MOVE_JUMPRK5Boardh5Field.eh
__Z15check_move_jump9MOVE_JUMPRK5Boardh5Field.eh:
LSFDE13:
	.set L$set$25,LEFDE13-LASFDE13
	.long L$set$25
LASFDE13:
	.long	LASFDE13-EH_frame1
	.quad	LFB21-.
	.set L$set$26,LFE21-LFB21
	.quad L$set$26
	.byte	0x0
	.byte	0x4
	.set L$set$27,LCFI15-LFB21
	.long L$set$27
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$28,LCFI16-LCFI15
	.long L$set$28
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE13:
.globl __Z13can_move_jump9MOVE_JUMPRK5Board5Field.eh
__Z13can_move_jump9MOVE_JUMPRK5Board5Field.eh:
LSFDE15:
	.set L$set$29,LEFDE15-LASFDE15
	.long L$set$29
LASFDE15:
	.long	LASFDE15-EH_frame1
	.quad	LFB22-.
	.set L$set$30,LFE22-LFB22
	.quad L$set$30
	.byte	0x0
	.byte	0x4
	.set L$set$31,LCFI18-LFB22
	.long L$set$31
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$32,LCFI19-LCFI18
	.long L$set$32
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE15:
.globl __ZN5Board9to_stringEPc.eh
__ZN5Board9to_stringEPc.eh:
LSFDE17:
	.set L$set$33,LEFDE17-LASFDE17
	.long L$set$33
LASFDE17:
	.long	LASFDE17-EH_frame1
	.quad	LFB15-.
	.set L$set$34,LFE15-LFB15
	.quad L$set$34
	.byte	0x0
	.byte	0x4
	.set L$set$35,LCFI21-LFB15
	.long L$set$35
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$36,LCFI22-LCFI21
	.long L$set$36
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE17:
.globl __Z9serializev.eh
__Z9serializev.eh:
LSFDE19:
	.set L$set$37,LEFDE19-LASFDE19
	.long L$set$37
LASFDE19:
	.long	LASFDE19-EH_frame1
	.quad	LFB26-.
	.set L$set$38,LFE26-LFB26
	.quad L$set$38
	.byte	0x0
	.byte	0x4
	.set L$set$39,LCFI24-LFB26
	.long L$set$39
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$40,LCFI25-LCFI24
	.long L$set$40
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE19:
__ZL8end_gameiPKcz.eh:
LSFDE21:
	.set L$set$41,LEFDE21-LASFDE21
	.long L$set$41
LASFDE21:
	.long	LASFDE21-EH_frame1
	.quad	LFB24-.
	.set L$set$42,LFE24-LFB24
	.quad L$set$42
	.byte	0x0
	.byte	0x4
	.set L$set$43,LCFI27-LFB24
	.long L$set$43
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$44,LCFI28-LCFI27
	.long L$set$44
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE21:
.globl __Z11deserializePc.eh
__Z11deserializePc.eh:
LSFDE23:
	.set L$set$45,LEFDE23-LASFDE23
	.long L$set$45
LASFDE23:
	.long	LASFDE23-EH_frame1
	.quad	LFB27-.
	.set L$set$46,LFE27-LFB27
	.quad L$set$46
	.byte	0x0
	.byte	0x4
	.set L$set$47,LCFI30-LFB27
	.long L$set$47
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$48,LCFI31-LCFI30
	.long L$set$48
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE23:
.globl __ZN5Board4drawEv.eh
__ZN5Board4drawEv.eh:
LSFDE25:
	.set L$set$49,LEFDE25-LASFDE25
	.long L$set$49
LASFDE25:
	.long	LASFDE25-EH_frame1
	.quad	LFB19-.
	.set L$set$50,LFE19-LFB19
	.quad L$set$50
	.byte	0x0
	.byte	0x4
	.set L$set$51,LCFI33-LFB19
	.long L$set$51
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$52,LCFI34-LCFI33
	.long L$set$52
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE25:
__ZL5errorPKcz.eh:
LSFDE27:
	.set L$set$53,LEFDE27-LASFDE27
	.long L$set$53
LASFDE27:
	.long	LASFDE27-EH_frame1
	.quad	LFB3-.
	.set L$set$54,LFE3-LFB3
	.quad L$set$54
	.byte	0x0
	.byte	0x4
	.set L$set$55,LCFI36-LFB3
	.long L$set$55
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$56,LCFI37-LCFI36
	.long L$set$56
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE27:
.globl __ZN5Board11from_stringEPKc.eh
__ZN5Board11from_stringEPKc.eh:
LSFDE29:
	.set L$set$57,LEFDE29-LASFDE29
	.long L$set$57
LASFDE29:
	.long	LASFDE29-EH_frame1
	.quad	LFB14-.
	.set L$set$58,LFE14-LFB14
	.quad L$set$58
	.byte	0x0
	.byte	0x4
	.set L$set$59,LCFI39-LFB14
	.long L$set$59
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$60,LCFI40-LCFI39
	.long L$set$60
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE29:
.globl __ZN5BoardC1Ev.eh
	.weak_definition __ZN5BoardC1Ev.eh
__ZN5BoardC1Ev.eh:
LSFDE31:
	.set L$set$61,LEFDE31-LASFDE31
	.long L$set$61
LASFDE31:
	.long	LASFDE31-EH_frame1
	.quad	LFB7-.
	.set L$set$62,LFE7-LFB7
	.quad L$set$62
	.byte	0x0
	.byte	0x4
	.set L$set$63,LCFI42-LFB7
	.long L$set$63
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$64,LCFI43-LCFI42
	.long L$set$64
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE31:
__Z41__static_initialization_and_destruction_0ii.eh:
LSFDE33:
	.set L$set$65,LEFDE33-LASFDE33
	.long L$set$65
LASFDE33:
	.long	LASFDE33-EH_frame1
	.quad	LFB29-.
	.set L$set$66,LFE29-LFB29
	.quad L$set$66
	.byte	0x0
	.byte	0x4
	.set L$set$67,LCFI45-LFB29
	.long L$set$67
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$68,LCFI46-LCFI45
	.long L$set$68
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE33:
__GLOBAL__I__ZN5Board11from_stringEPKc.eh:
LSFDE35:
	.set L$set$69,LEFDE35-LASFDE35
	.long L$set$69
LASFDE35:
	.long	LASFDE35-EH_frame1
	.quad	LFB30-.
	.set L$set$70,LFE30-LFB30
	.quad L$set$70
	.byte	0x0
	.byte	0x4
	.set L$set$71,LCFI48-LFB30
	.long L$set$71
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$72,LCFI49-LCFI48
	.long L$set$72
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE35:
.globl __Z4initPKc.eh
__Z4initPKc.eh:
LSFDE37:
	.set L$set$73,LEFDE37-LASFDE37
	.long L$set$73
LASFDE37:
	.long	LASFDE37-EH_frame1
	.quad	LFB25-.
	.set L$set$74,LFE25-LFB25
	.quad L$set$74
	.byte	0x0
	.byte	0x4
	.set L$set$75,LCFI50-LFB25
	.long L$set$75
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$76,LCFI51-LCFI50
	.long L$set$76
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE37:
	.constructor
	.destructor
	.align 1
	.subsections_via_symbols
#endif
#ifdef __ppc__
	.section __TEXT,__text,regular,pure_instructions
	.section __TEXT,__picsymbolstub1,symbol_stubs,pure_instructions,32
	.machine ppc7400
	.mod_init_func
	.align 2
	.long	__GLOBAL__I__ZN5Board11from_stringEPKc
	.text
	.align 2
	.globl __ZN5BoardC2Ejjj
__ZN5BoardC2Ejjj:
LFB17:
	stmw r30,-8(r1)
LCFI0:
	stwu r1,-80(r1)
LCFI1:
	mr r30,r1
LCFI2:
	stw r3,104(r30)
	stw r4,108(r30)
	stw r5,112(r30)
	stw r6,116(r30)
	li r0,1
	stw r0,60(r30)
	li r0,0
	stw r0,56(r30)
	b L2
L3:
	lwz r0,56(r30)
	srawi r0,r0,2
	addze r0,r0
	rlwinm r0,r0,0,31,31
	stw r0,52(r30)
	lwz r2,108(r30)
	lwz r0,60(r30)
	and r0,r2,r0
	cmpwi cr7,r0,0
	beq cr7,L4
	lwz r0,56(r30)
	slwi r2,r0,1
	lwz r0,52(r30)
	subf r2,r0,r2
	addi r2,r2,1
	stw r2,32(r30)
	lwz r2,116(r30)
	lwz r0,60(r30)
	and r0,r2,r0
	cmpwi cr7,r0,0
	beq cr7,L6
	li r0,5
	stw r0,36(r30)
	b L8
L6:
	li r9,1
	stw r9,36(r30)
L8:
	lwz r0,104(r30)
	lwz r9,32(r30)
	slwi r2,r9,2
	add r2,r2,r0
	lwz r0,36(r30)
	stw r0,0(r2)
L4:
	lwz r2,112(r30)
	lwz r0,60(r30)
	and r0,r2,r0
	cmpwi cr7,r0,0
	beq cr7,L9
	lwz r0,56(r30)
	slwi r2,r0,1
	lwz r0,52(r30)
	subf r2,r0,r2
	addi r2,r2,1
	stw r2,40(r30)
	lwz r2,116(r30)
	lwz r0,60(r30)
	and r0,r2,r0
	cmpwi cr7,r0,0
	beq cr7,L11
	li r9,6
	stw r9,44(r30)
	b L13
L11:
	li r0,2
	stw r0,44(r30)
L13:
	lwz r0,104(r30)
	lwz r9,40(r30)
	slwi r2,r9,2
	add r2,r2,r0
	lwz r0,44(r30)
	stw r0,0(r2)
L9:
	lwz r0,60(r30)
	slwi r0,r0,1
	stw r0,60(r30)
	lwz r2,56(r30)
	addi r0,r2,1
	stw r0,56(r30)
L2:
	lwz r0,56(r30)
	cmpwi cr7,r0,31
	ble cr7,L3
	lwz r1,0(r1)
	lmw r30,-8(r1)
	blr
LFE17:
	.align 2
	.globl __ZN5BoardC1Ejjj
__ZN5BoardC1Ejjj:
LFB18:
	stmw r30,-8(r1)
LCFI3:
	stwu r1,-80(r1)
LCFI4:
	mr r30,r1
LCFI5:
	stw r3,104(r30)
	stw r4,108(r30)
	stw r5,112(r30)
	stw r6,116(r30)
	li r0,1
	stw r0,60(r30)
	li r0,0
	stw r0,56(r30)
	b L17
L18:
	lwz r0,56(r30)
	srawi r0,r0,2
	addze r0,r0
	rlwinm r0,r0,0,31,31
	stw r0,52(r30)
	lwz r2,108(r30)
	lwz r0,60(r30)
	and r0,r2,r0
	cmpwi cr7,r0,0
	beq cr7,L19
	lwz r0,56(r30)
	slwi r2,r0,1
	lwz r0,52(r30)
	subf r2,r0,r2
	addi r2,r2,1
	stw r2,32(r30)
	lwz r2,116(r30)
	lwz r0,60(r30)
	and r0,r2,r0
	cmpwi cr7,r0,0
	beq cr7,L21
	li r0,5
	stw r0,36(r30)
	b L23
L21:
	li r9,1
	stw r9,36(r30)
L23:
	lwz r0,104(r30)
	lwz r9,32(r30)
	slwi r2,r9,2
	add r2,r2,r0
	lwz r0,36(r30)
	stw r0,0(r2)
L19:
	lwz r2,112(r30)
	lwz r0,60(r30)
	and r0,r2,r0
	cmpwi cr7,r0,0
	beq cr7,L24
	lwz r0,56(r30)
	slwi r2,r0,1
	lwz r0,52(r30)
	subf r2,r0,r2
	addi r2,r2,1
	stw r2,40(r30)
	lwz r2,116(r30)
	lwz r0,60(r30)
	and r0,r2,r0
	cmpwi cr7,r0,0
	beq cr7,L26
	li r9,6
	stw r9,44(r30)
	b L28
L26:
	li r0,2
	stw r0,44(r30)
L28:
	lwz r0,104(r30)
	lwz r9,40(r30)
	slwi r2,r9,2
	add r2,r2,r0
	lwz r0,44(r30)
	stw r0,0(r2)
L24:
	lwz r0,60(r30)
	slwi r0,r0,1
	stw r0,60(r30)
	lwz r2,56(r30)
	addi r0,r2,1
	stw r0,56(r30)
L17:
	lwz r0,56(r30)
	cmpwi cr7,r0,31
	ble cr7,L18
	lwz r1,0(r1)
	lmw r30,-8(r1)
	blr
LFE18:
	.section __TEXT,__textcoal_nt,coalesced,pure_instructions
	.align 2
	.globl __Z4swapI5FieldEvRT_S2_
	.weak_definition __Z4swapI5FieldEvRT_S2_
__Z4swapI5FieldEvRT_S2_:
LFB28:
	stmw r30,-8(r1)
LCFI6:
	stwu r1,-64(r1)
LCFI7:
	mr r30,r1
LCFI8:
	stw r3,88(r30)
	stw r4,92(r30)
	lwz r2,92(r30)
	lwz r0,0(r2)
	stw r0,44(r30)
	lwz r2,88(r30)
	lwz r0,0(r2)
	lwz r2,92(r30)
	stw r0,0(r2)
	lwz r2,88(r30)
	lwz r0,44(r30)
	stw r0,0(r2)
	lwz r1,0(r1)
	lmw r30,-8(r1)
	blr
LFE28:
	.align 2
	.globl __ZN5BoardC1ERKS_
	.weak_definition __ZN5BoardC1ERKS_
__ZN5BoardC1ERKS_:
LFB10:
	mflr r0
LCFI9:
	stmw r30,-8(r1)
LCFI10:
	stw r0,8(r1)
LCFI11:
	stwu r1,-80(r1)
LCFI12:
	mr r30,r1
LCFI13:
	stw r3,104(r30)
	stw r4,108(r30)
	lwz r0,104(r30)
	lwz r2,108(r30)
	mr r3,r0
	mr r4,r2
	li r5,256
	bl _memcpy
	lwz r1,0(r1)
	lwz r0,8(r1)
	mtlr r0
	lmw r30,-8(r1)
	blr
LFE10:
	.cstring
	.align 2
LC0:
	.ascii "[mcp] upgrade\12\0"
	.text
	.align 2
	.globl __Z7upgradeR5Boardh
__Z7upgradeR5Boardh:
LFB23:
	mflr r0
LCFI14:
	stmw r30,-8(r1)
LCFI15:
	stw r0,8(r1)
LCFI16:
	stwu r1,-80(r1)
LCFI17:
	mr r30,r1
LCFI18:
	bcl 20,31,"L00000000001$pb"
"L00000000001$pb":
	mflr r31
	stw r3,104(r30)
	mr r0,r4
	stb r0,108(r30)
	lbz r0,108(r30)
	rlwinm r0,r0,0,0xff
	cmplwi cr7,r0,7
	bgt cr7,L36
	lbz r0,108(r30)
	rlwinm r0,r0,0,0xff
	lwz r2,104(r30)
	slwi r0,r0,2
	add r2,r0,r2
	lwz r0,0(r2)
	rlwinm r0,r0,0,29,29
	cmpwi cr7,r0,0
	bne cr7,L36
	lbz r0,108(r30)
	rlwinm r0,r0,0,0xff
	lwz r2,104(r30)
	slwi r0,r0,2
	add r2,r0,r2
	li r0,6
	stw r0,0(r2)
	addis r2,r31,ha16(L___stderrp$non_lazy_ptr-"L00000000001$pb")
	lwz r2,lo16(L___stderrp$non_lazy_ptr-"L00000000001$pb")(r2)
	lwz r0,0(r2)
	addis r2,r31,ha16(LC0-"L00000000001$pb")
	la r3,lo16(LC0-"L00000000001$pb")(r2)
	li r4,1
	li r5,14
	mr r6,r0
	bl _fwrite$UNIX2003
L36:
	lbz r0,108(r30)
	rlwinm r0,r0,0,0xff
	cmplwi cr7,r0,55
	ble cr7,L42
	lbz r0,108(r30)
	rlwinm r0,r0,0,0xff
	lwz r2,104(r30)
	slwi r0,r0,2
	add r2,r0,r2
	lwz r0,0(r2)
	rlwinm r0,r0,0,29,29
	cmpwi cr7,r0,0
	bne cr7,L42
	lbz r0,108(r30)
	rlwinm r0,r0,0,0xff
	lwz r2,104(r30)
	slwi r0,r0,2
	add r2,r0,r2
	li r0,5
	stw r0,0(r2)
	addis r2,r31,ha16(L___stderrp$non_lazy_ptr-"L00000000001$pb")
	lwz r2,lo16(L___stderrp$non_lazy_ptr-"L00000000001$pb")(r2)
	lwz r0,0(r2)
	addis r2,r31,ha16(LC0-"L00000000001$pb")
	la r3,lo16(LC0-"L00000000001$pb")(r2)
	li r4,1
	li r5,14
	mr r6,r0
	bl _fwrite$UNIX2003
L42:
	lwz r1,0(r1)
	lwz r0,8(r1)
	mtlr r0
	lmw r30,-8(r1)
	blr
LFE23:
	.cstring
	.align 2
LC1:
	.ascii "logic.cc\0"
	.align 2
LC2:
	.ascii "(f == BLACK) || (f == WHITE)\0"
	.text
	.align 2
	.globl __Z9move_jump9MOVE_JUMPR5Boardhh5Field
__Z9move_jump9MOVE_JUMPR5Boardhh5Field:
LFB20:
	mflr r0
LCFI19:
	stmw r30,-8(r1)
LCFI20:
	stw r0,8(r1)
LCFI21:
	stwu r1,-112(r1)
LCFI22:
	mr r30,r1
LCFI23:
	bcl 20,31,"L00000000002$pb"
"L00000000002$pb":
	mflr r31
	stw r3,136(r30)
	stw r4,140(r30)
	mr r0,r5
	mr r2,r6
	stw r7,152(r30)
	stb r0,144(r30)
	stb r2,148(r30)
	lwz r0,152(r30)
	cmpwi cr7,r0,1
	beq cr7,L44
	lwz r0,152(r30)
	cmpwi cr7,r0,2
	beq cr7,L44
	li r0,1
	stw r0,64(r30)
	b L47
L44:
	li r0,0
	stw r0,64(r30)
L47:
	lwz r0,64(r30)
	cmpwi cr7,r0,0
	beq cr7,L48
	addis r2,r31,ha16(__ZZ9move_jump9MOVE_JUMPR5Boardhh5FieldE8__func__-"L00000000002$pb")
	la r3,lo16(__ZZ9move_jump9MOVE_JUMPR5Boardhh5FieldE8__func__-"L00000000002$pb")(r2)
	addis r2,r31,ha16(LC1-"L00000000002$pb")
	la r4,lo16(LC1-"L00000000002$pb")(r2)
	li r5,136
	addis r2,r31,ha16(LC2-"L00000000002$pb")
	la r6,lo16(LC2-"L00000000002$pb")(r2)
	bl ___assert_rtn
L48:
	lbz r0,144(r30)
	rlwinm r0,r0,0,0xff
	cmplwi cr7,r0,63
	bgt cr7,L50
	lbz r0,148(r30)
	rlwinm r0,r0,0,0xff
	cmplwi cr7,r0,63
	ble cr7,L52
L50:
	li r0,0
	stw r0,68(r30)
	b L53
L52:
	lbz r0,144(r30)
	rlwinm r0,r0,0,0xff
	lwz r2,140(r30)
	slwi r0,r0,2
	add r2,r0,r2
	lwz r0,0(r2)
	mr r2,r0
	lwz r0,152(r30)
	and r0,r2,r0
	cmpwi cr7,r0,0
	bne cr7,L54
	li r0,0
	stw r0,68(r30)
	b L53
L54:
	lbz r0,148(r30)
	rlwinm r0,r0,0,0xff
	lwz r2,140(r30)
	slwi r0,r0,2
	add r2,r0,r2
	lwz r0,0(r2)
	cmpwi cr7,r0,0
	beq cr7,L56
	li r0,0
	stw r0,68(r30)
	b L53
L56:
	lbz r0,144(r30)
	rlwinm r2,r0,0,0xff
	lbz r0,148(r30)
	rlwinm r0,r0,0,0xff
	cmplw cr7,r2,r0
	bge cr7,L58
	lwz r0,152(r30)
	rlwinm r0,r0,0,30,30
	cmpwi cr7,r0,0
	beq cr7,L60
	lbz r0,144(r30)
	rlwinm r0,r0,0,0xff
	lwz r2,140(r30)
	slwi r0,r0,2
	add r2,r0,r2
	lwz r0,0(r2)
	rlwinm r0,r0,0,29,29
	cmpwi cr7,r0,0
	bne cr7,L60
	li r0,0
	stw r0,68(r30)
	b L53
L60:
	lbz r0,144(r30)
	rlwinm r0,r0,0,0xff
	rlwinm r2,r0,0,29,31
	lbz r0,148(r30)
	rlwinm r0,r0,0,0xff
	rlwinm r0,r0,0,29,31
	cmpw cr7,r2,r0
	bge cr7,L63
	li r0,9
	stw r0,72(r30)
	b L65
L63:
	li r0,7
	stw r0,72(r30)
L65:
	lwz r0,72(r30)
	stb r0,95(r30)
	b L66
L58:
	lwz r0,152(r30)
	rlwinm r0,r0,0,31,31
	cmpwi cr7,r0,0
	beq cr7,L67
	lbz r0,144(r30)
	rlwinm r0,r0,0,0xff
	lwz r2,140(r30)
	slwi r0,r0,2
	add r2,r0,r2
	lwz r0,0(r2)
	rlwinm r0,r0,0,29,29
	cmpwi cr7,r0,0
	bne cr7,L67
	li r0,0
	stw r0,68(r30)
	b L53
L67:
	lbz r0,144(r30)
	rlwinm r0,r0,0,0xff
	rlwinm r2,r0,0,29,31
	lbz r0,148(r30)
	rlwinm r0,r0,0,0xff
	rlwinm r0,r0,0,29,31
	cmpw cr7,r2,r0
	bge cr7,L70
	li r0,-7
	stw r0,76(r30)
	b L72
L70:
	li r0,-9
	stw r0,76(r30)
L72:
	lwz r0,76(r30)
	stb r0,95(r30)
L66:
	lbz r0,148(r30)
	rlwinm r2,r0,0,0xff
	lbz r0,144(r30)
	rlwinm r0,r0,0,0xff
	subf r9,r0,r2
	lbz r0,95(r30)
	extsb r2,r0
	divw r0,r9,r2
	mullw r0,r0,r2
	subf r0,r0,r9
	cmpwi cr7,r0,0
	beq cr7,L73
	li r0,0
	stw r0,68(r30)
	b L53
L73:
	lbz r0,148(r30)
	rlwinm r2,r0,0,0xff
	lbz r0,144(r30)
	rlwinm r0,r0,0,0xff
	subf r2,r0,r2
	lbz r0,95(r30)
	extsb r0,r0
	divw r2,r2,r0
	lwz r0,136(r30)
	cmpw cr7,r2,r0
	beq cr7,L75
	li r0,0
	stw r0,68(r30)
	b L53
L75:
	lbz r0,148(r30)
	stb r0,94(r30)
	lwz r0,136(r30)
	cmpwi cr7,r0,2
	bne cr7,L77
	lbz r0,95(r30)
	rlwinm r2,r0,0,0xff
	lbz r0,94(r30)
	subf r0,r2,r0
	stb r0,94(r30)
	lbz r0,94(r30)
	rlwinm r0,r0,0,0xff
	lwz r2,140(r30)
	slwi r0,r0,2
	add r2,r0,r2
	lwz r0,0(r2)
	cmpwi cr7,r0,0
	beq cr7,L79
	lbz r0,94(r30)
	rlwinm r0,r0,0,0xff
	lwz r2,140(r30)
	slwi r0,r0,2
	add r2,r0,r2
	lwz r0,0(r2)
	mr r2,r0
	lwz r0,152(r30)
	and r0,r2,r0
	cmpwi cr7,r0,0
	beq cr7,L81
L79:
	li r0,0
	stw r0,68(r30)
	b L53
L81:
	lbz r0,94(r30)
	rlwinm r0,r0,0,0xff
	lwz r2,140(r30)
	slwi r0,r0,2
	add r2,r0,r2
	li r0,0
	stw r0,0(r2)
L77:
	lbz r0,144(r30)
	rlwinm r0,r0,0,0xff
	slwi r2,r0,2
	lwz r0,140(r30)
	add r9,r2,r0
	lbz r0,148(r30)
	rlwinm r0,r0,0,0xff
	slwi r2,r0,2
	lwz r0,140(r30)
	add r0,r2,r0
	mr r3,r9
	mr r4,r0
	bl __Z4swapI5FieldEvRT_S2_
	li r0,1
	stw r0,68(r30)
L53:
	lwz r0,68(r30)
	mr r3,r0
	lwz r1,0(r1)
	lwz r0,8(r1)
	mtlr r0
	lmw r30,-8(r1)
	blr
LFE20:
	.align 2
	.globl __Z15check_move_jump9MOVE_JUMPRK5Boardh5Field
__Z15check_move_jump9MOVE_JUMPRK5Boardh5Field:
LFB21:
	mflr r0
LCFI24:
	stmw r30,-8(r1)
LCFI25:
	stw r0,8(r1)
LCFI26:
	stwu r1,-352(r1)
LCFI27:
	mr r30,r1
LCFI28:
	stw r3,376(r30)
	stw r4,380(r30)
	mr r0,r5
	stw r6,388(r30)
	stb r0,384(r30)
	addi r0,r30,80
	mr r3,r0
	lwz r4,380(r30)
	bl __ZN5BoardC1ERKS_
	lwz r2,376(r30)
	mr r0,r2
	slwi r0,r0,3
	add r0,r0,r2
	rlwinm r2,r0,0,0xff
	lbz r0,384(r30)
	subf r0,r2,r0
	rlwinm r9,r0,0,0xff
	addi r2,r30,80
	lbz r0,384(r30)
	rlwinm r0,r0,0,0xff
	lwz r3,376(r30)
	mr r4,r2
	mr r5,r0
	mr r6,r9
	lwz r7,388(r30)
	bl __Z9move_jump9MOVE_JUMPR5Boardhh5Field
	mr r0,r3
	srawi r2,r0,31
	xor r0,r2,r0
	subf r0,r2,r0
	neg r0,r0
	srwi r0,r0,31
	cmpwi cr7,r0,0
	beq cr7,L84
	li r0,1
	stw r0,76(r30)
	b L86
L84:
	lwz r2,376(r30)
	mr r0,r2
	slwi r0,r0,3
	subf r0,r2,r0
	rlwinm r2,r0,0,0xff
	lbz r0,384(r30)
	subf r0,r2,r0
	rlwinm r9,r0,0,0xff
	addi r2,r30,80
	lbz r0,384(r30)
	rlwinm r0,r0,0,0xff
	lwz r3,376(r30)
	mr r4,r2
	mr r5,r0
	mr r6,r9
	lwz r7,388(r30)
	bl __Z9move_jump9MOVE_JUMPR5Boardhh5Field
	mr r0,r3
	srawi r2,r0,31
	xor r0,r2,r0
	subf r0,r2,r0
	neg r0,r0
	srwi r0,r0,31
	cmpwi cr7,r0,0
	beq cr7,L87
	li r0,1
	stw r0,76(r30)
	b L86
L87:
	lwz r2,376(r30)
	mr r0,r2
	slwi r0,r0,3
	subf r0,r2,r0
	rlwinm r2,r0,0,0xff
	lbz r0,384(r30)
	add r0,r2,r0
	rlwinm r9,r0,0,0xff
	addi r2,r30,80
	lbz r0,384(r30)
	rlwinm r0,r0,0,0xff
	lwz r3,376(r30)
	mr r4,r2
	mr r5,r0
	mr r6,r9
	lwz r7,388(r30)
	bl __Z9move_jump9MOVE_JUMPR5Boardhh5Field
	mr r0,r3
	srawi r2,r0,31
	xor r0,r2,r0
	subf r0,r2,r0
	neg r0,r0
	srwi r0,r0,31
	cmpwi cr7,r0,0
	beq cr7,L89
	li r0,1
	stw r0,76(r30)
	b L86
L89:
	lwz r2,376(r30)
	mr r0,r2
	slwi r0,r0,3
	add r0,r0,r2
	rlwinm r2,r0,0,0xff
	lbz r0,384(r30)
	add r0,r2,r0
	rlwinm r9,r0,0,0xff
	addi r2,r30,80
	lbz r0,384(r30)
	rlwinm r0,r0,0,0xff
	lwz r3,376(r30)
	mr r4,r2
	mr r5,r0
	mr r6,r9
	lwz r7,388(r30)
	bl __Z9move_jump9MOVE_JUMPR5Boardhh5Field
	mr r0,r3
	srawi r2,r0,31
	xor r0,r2,r0
	subf r0,r2,r0
	neg r0,r0
	srwi r0,r0,31
	cmpwi cr7,r0,0
	beq cr7,L91
	li r0,1
	stw r0,76(r30)
	b L86
L91:
	li r2,0
	stw r2,76(r30)
L86:
	lwz r0,76(r30)
	mr r3,r0
	lwz r1,0(r1)
	lwz r0,8(r1)
	mtlr r0
	lmw r30,-8(r1)
	blr
LFE21:
	.cstring
	.align 2
LC3:
	.ascii "f == BLACK || f == WHITE\0"
	.text
	.align 2
	.globl __Z13can_move_jump9MOVE_JUMPRK5Board5Field
__Z13can_move_jump9MOVE_JUMPRK5Board5Field:
LFB22:
	mflr r0
LCFI29:
	stmw r30,-8(r1)
LCFI30:
	stw r0,8(r1)
LCFI31:
	stwu r1,-112(r1)
LCFI32:
	mr r30,r1
LCFI33:
	bcl 20,31,"L00000000003$pb"
"L00000000003$pb":
	mflr r31
	stw r3,136(r30)
	stw r4,140(r30)
	stw r5,144(r30)
	lwz r0,144(r30)
	cmpwi cr7,r0,1
	beq cr7,L95
	lwz r0,144(r30)
	cmpwi cr7,r0,2
	beq cr7,L95
	li r0,1
	stw r0,68(r30)
	b L98
L95:
	li r0,0
	stw r0,68(r30)
L98:
	lwz r0,68(r30)
	cmpwi cr7,r0,0
	beq cr7,L99
	addis r2,r31,ha16(__ZZ13can_move_jump9MOVE_JUMPRK5Board5FieldE8__func__-"L00000000003$pb")
	la r3,lo16(__ZZ13can_move_jump9MOVE_JUMPRK5Board5FieldE8__func__-"L00000000003$pb")(r2)
	addis r2,r31,ha16(LC1-"L00000000003$pb")
	la r4,lo16(LC1-"L00000000003$pb")(r2)
	li r5,190
	addis r2,r31,ha16(LC3-"L00000000003$pb")
	la r6,lo16(LC3-"L00000000003$pb")(r2)
	bl ___assert_rtn
L99:
	li r0,0
	stb r0,95(r30)
	b L101
L102:
	lbz r0,95(r30)
	rlwinm r0,r0,0,0xff
	lwz r2,140(r30)
	slwi r0,r0,2
	add r2,r0,r2
	lwz r0,0(r2)
	mr r2,r0
	lwz r0,144(r30)
	and r0,r2,r0
	cmpwi cr7,r0,0
	beq cr7,L103
	lbz r0,95(r30)
	rlwinm r0,r0,0,0xff
	lwz r3,136(r30)
	lwz r4,140(r30)
	mr r5,r0
	lwz r6,144(r30)
	bl __Z15check_move_jump9MOVE_JUMPRK5Boardh5Field
	mr r0,r3
	xori r0,r0,1
	cmpwi cr7,r0,0
	bne cr7,L103
	li r0,1
	stw r0,72(r30)
	b L106
L103:
	li r0,0
	stw r0,72(r30)
L106:
	lwz r0,72(r30)
	cmpwi cr7,r0,0
	beq cr7,L107
	li r0,1
	stw r0,76(r30)
	b L109
L107:
	lbz r2,95(r30)
	addi r0,r2,1
	stb r0,95(r30)
L101:
	lbz r0,95(r30)
	rlwinm r0,r0,0,0xff
	cmplwi cr7,r0,63
	ble cr7,L102
	li r0,0
	stw r0,76(r30)
L109:
	lwz r0,76(r30)
	mr r3,r0
	lwz r1,0(r1)
	lwz r0,8(r1)
	mtlr r0
	lmw r30,-8(r1)
	blr
LFE22:
	.cstring
	.align 2
LC4:
	.ascii "0\0"
	.text
	.align 2
	.globl __ZN5Board9to_stringEPc
__ZN5Board9to_stringEPc:
LFB15:
	mflr r0
LCFI34:
	stmw r30,-8(r1)
LCFI35:
	stw r0,8(r1)
LCFI36:
	stwu r1,-112(r1)
LCFI37:
	mr r30,r1
LCFI38:
	bcl 20,31,"L00000000004$pb"
"L00000000004$pb":
	mflr r31
	stw r3,136(r30)
	stw r4,140(r30)
	li r0,0
	stw r0,92(r30)
	b L113
L114:
	lwz r0,92(r30)
	srawi r0,r0,2
	addze r0,r0
	rlwinm r0,r0,0,31,31
	stw r0,88(r30)
	lwz r0,92(r30)
	slwi r2,r0,1
	lwz r0,88(r30)
	subf r2,r0,r2
	addi r0,r2,1
	lwz r2,136(r30)
	slwi r0,r0,2
	add r2,r0,r2
	lwz r0,0(r2)
	stw r0,76(r30)
	lwz r0,76(r30)
	cmplwi cr7,r0,6
	bgt cr7,L115
	lwz r2,76(r30)
	slwi r0,r2,2
	addis r2,r31,ha16(L121-"L00000000004$pb")
	la r2,lo16(L121-"L00000000004$pb")(r2)
	add r2,r0,r2
	lwz r0,0(r2)
	addis r2,r31,ha16(L121-"L00000000004$pb")
	la r2,lo16(L121-"L00000000004$pb")(r2)
	add r0,r0,r2
	mtctr r0
	bctr
	.p2align 2
L121:
	.long L116-L121
	.long L117-L121
	.long L118-L121
	.long L115-L121
	.long L115-L121
	.long L119-L121
	.long L120-L121
L117:
	lwz r0,92(r30)
	mr r2,r0
	lwz r0,140(r30)
	add r2,r2,r0
	li r0,98
	stb r0,0(r2)
	b L122
L118:
	lwz r0,92(r30)
	mr r2,r0
	lwz r0,140(r30)
	add r2,r2,r0
	li r0,119
	stb r0,0(r2)
	b L122
L119:
	lwz r0,92(r30)
	mr r2,r0
	lwz r0,140(r30)
	add r2,r2,r0
	li r0,66
	stb r0,0(r2)
	b L122
L120:
	lwz r0,92(r30)
	mr r2,r0
	lwz r0,140(r30)
	add r2,r2,r0
	li r0,87
	stb r0,0(r2)
	b L122
L116:
	lwz r0,92(r30)
	mr r2,r0
	lwz r0,140(r30)
	add r2,r2,r0
	li r0,45
	stb r0,0(r2)
	b L122
L115:
	addis r2,r31,ha16(__ZZN5Board9to_stringEPcE8__func__-"L00000000004$pb")
	la r3,lo16(__ZZN5Board9to_stringEPcE8__func__-"L00000000004$pb")(r2)
	addis r2,r31,ha16(LC1-"L00000000004$pb")
	la r4,lo16(LC1-"L00000000004$pb")(r2)
	li r5,97
	addis r2,r31,ha16(LC4-"L00000000004$pb")
	la r6,lo16(LC4-"L00000000004$pb")(r2)
	bl ___assert_rtn
L122:
	lwz r2,140(r30)
	addi r2,r2,32
	li r0,0
	stb r0,0(r2)
	lwz r2,92(r30)
	addi r0,r2,1
	stw r0,92(r30)
L113:
	lwz r0,92(r30)
	cmpwi cr7,r0,31
	ble cr7,L114
	lwz r1,0(r1)
	lwz r0,8(r1)
	mtlr r0
	lmw r30,-8(r1)
	blr
LFE15:
	.align 2
	.globl __Z9serializev
__Z9serializev:
LFB26:
	mflr r0
LCFI39:
	stmw r30,-8(r1)
LCFI40:
	stw r0,8(r1)
LCFI41:
	stwu r1,-96(r1)
LCFI42:
	mr r30,r1
LCFI43:
	bcl 20,31,"L00000000005$pb"
"L00000000005$pb":
	mflr r31
	addis r2,r31,ha16(_turn-"L00000000005$pb")
	la r2,lo16(_turn-"L00000000005$pb")(r2)
	lwz r0,0(r2)
	rlwinm r0,r0,0,31,31
	cmpwi cr7,r0,0
	beq cr7,L126
	li r0,87
	stw r0,76(r30)
	b L128
L126:
	li r0,66
	stw r0,76(r30)
L128:
	addis r2,r31,ha16(_buffer-"L00000000005$pb")
	la r2,lo16(_buffer-"L00000000005$pb")(r2)
	lwz r0,76(r30)
	stb r0,0(r2)
	addis r2,r31,ha16(_buffer-"L00000000005$pb")
	la r2,lo16(_buffer-"L00000000005$pb")(r2)
	li r0,58
	stb r0,1(r2)
	addis r2,r31,ha16(_buffer-"L00000000005$pb")
	la r2,lo16(_buffer-"L00000000005$pb")(r2)
	addi r0,r2,2
	addis r2,r31,ha16(_b-"L00000000005$pb")
	la r3,lo16(_b-"L00000000005$pb")(r2)
	mr r4,r0
	bl __ZN5Board9to_stringEPc
	addis r2,r31,ha16(_buffer-"L00000000005$pb")
	la r2,lo16(_buffer-"L00000000005$pb")(r2)
	li r0,10
	stb r0,34(r2)
	addis r2,r31,ha16(_buffer-"L00000000005$pb")
	la r2,lo16(_buffer-"L00000000005$pb")(r2)
	li r0,0
	stb r0,35(r2)
	addis r2,r31,ha16(_buffer-"L00000000005$pb")
	la r0,lo16(_buffer-"L00000000005$pb")(r2)
	mr r3,r0
	lwz r1,0(r1)
	lwz r0,8(r1)
	mtlr r0
	lmw r30,-8(r1)
	blr
LFE26:
	.cstring
	.align 2
LC5:
	.ascii "[mcp] \0"
	.align 2
LC6:
	.ascii "(winner >= 0) && (winner <= 2)\0"
	.align 2
LC7:
	.ascii "[mcp] DRAW.\12\0"
	.align 2
LC8:
	.ascii "BLACK\0"
	.align 2
LC9:
	.ascii "WHITE\0"
	.align 2
LC10:
	.ascii "[mcp] %s wins.\12\0"
	.text
	.align 2
__ZL8end_gameiPKcz:
LFB24:
	mflr r0
LCFI44:
	stmw r30,-8(r1)
LCFI45:
	stw r0,8(r1)
LCFI46:
	stwu r1,-112(r1)
LCFI47:
	mr r30,r1
LCFI48:
	bcl 20,31,"L00000000006$pb"
"L00000000006$pb":
	mflr r31
	stw r3,136(r30)
	stw r5,144(r30)
	stw r6,148(r30)
	stw r7,152(r30)
	stw r8,156(r30)
	stw r9,160(r30)
	stw r10,164(r30)
	stw r4,140(r30)
	addis r2,r31,ha16(L___stderrp$non_lazy_ptr-"L00000000006$pb")
	lwz r2,lo16(L___stderrp$non_lazy_ptr-"L00000000006$pb")(r2)
	lwz r0,0(r2)
	addis r2,r31,ha16(LC5-"L00000000006$pb")
	la r3,lo16(LC5-"L00000000006$pb")(r2)
	li r4,1
	li r5,6
	mr r6,r0
	bl _fwrite$UNIX2003
	addi r0,r30,144
	stw r0,92(r30)
	addis r2,r31,ha16(L___stderrp$non_lazy_ptr-"L00000000006$pb")
	lwz r2,lo16(L___stderrp$non_lazy_ptr-"L00000000006$pb")(r2)
	lwz r0,0(r2)
	lwz r2,92(r30)
	mr r3,r0
	lwz r4,140(r30)
	mr r5,r2
	bl _vfprintf$LDBL128
	addis r2,r31,ha16(L___stderrp$non_lazy_ptr-"L00000000006$pb")
	lwz r2,lo16(L___stderrp$non_lazy_ptr-"L00000000006$pb")(r2)
	lwz r0,0(r2)
	li r3,10
	mr r4,r0
	bl _fputc
	lwz r0,136(r30)
	cmpwi cr7,r0,0
	blt cr7,L131
	lwz r0,136(r30)
	cmpwi cr7,r0,2
	ble cr7,L133
L131:
	li r0,1
	stw r0,68(r30)
	b L134
L133:
	li r0,0
	stw r0,68(r30)
L134:
	lwz r0,68(r30)
	cmpwi cr7,r0,0
	beq cr7,L135
	addis r2,r31,ha16(__ZZL8end_gameiPKczE8__func__-"L00000000006$pb")
	la r3,lo16(__ZZL8end_gameiPKczE8__func__-"L00000000006$pb")(r2)
	addis r2,r31,ha16(LC1-"L00000000006$pb")
	la r4,lo16(LC1-"L00000000006$pb")(r2)
	li r5,219
	addis r2,r31,ha16(LC6-"L00000000006$pb")
	la r6,lo16(LC6-"L00000000006$pb")(r2)
	bl ___assert_rtn
L135:
	lwz r0,136(r30)
	cmpwi cr7,r0,2
	bne cr7,L137
	addis r2,r31,ha16(L___stderrp$non_lazy_ptr-"L00000000006$pb")
	lwz r2,lo16(L___stderrp$non_lazy_ptr-"L00000000006$pb")(r2)
	lwz r0,0(r2)
	addis r2,r31,ha16(LC7-"L00000000006$pb")
	la r3,lo16(LC7-"L00000000006$pb")(r2)
	li r4,1
	li r5,12
	mr r6,r0
	bl _fwrite$UNIX2003
	b L139
L137:
	addis r2,r31,ha16(L___stderrp$non_lazy_ptr-"L00000000006$pb")
	lwz r2,lo16(L___stderrp$non_lazy_ptr-"L00000000006$pb")(r2)
	lwz r2,0(r2)
	stw r2,72(r30)
	lwz r0,136(r30)
	cmpwi cr7,r0,0
	beq cr7,L140
	addis r2,r31,ha16(LC8-"L00000000006$pb")
	la r2,lo16(LC8-"L00000000006$pb")(r2)
	stw r2,76(r30)
	b L142
L140:
	addis r2,r31,ha16(LC9-"L00000000006$pb")
	la r2,lo16(LC9-"L00000000006$pb")(r2)
	stw r2,76(r30)
L142:
	lwz r0,76(r30)
	lwz r3,72(r30)
	addis r2,r31,ha16(LC10-"L00000000006$pb")
	la r4,lo16(LC10-"L00000000006$pb")(r2)
	mr r5,r0
	bl _fprintf$LDBL128
L139:
	li r3,0
	bl _exit
LFE24:
	.cstring
	.align 2
LC11:
	.ascii "no move '%s'\0"
	.align 2
LC12:
	.ascii "error parsing move '%s'\0"
	.align 2
LC13:
	.ascii "INVALID move %ld-%ld (jump forced)\12\0"
	.align 2
LC14:
	.ascii "INVALID move %ld-%ld (jump forced)\0"
	.align 2
LC15:
	.ascii "INVALID move %ld-%ld\12\0"
	.align 2
LC16:
	.ascii "INVALID move %ld-%ld\0"
	.align 2
LC17:
	.ascii "[mcp] valid move %ld-%ld\12\0"
	.align 2
LC18:
	.ascii "error parsing '%s'\0"
	.align 2
LC19:
	.ascii "INVALID jump %ldx%ld\12\0"
	.align 2
LC20:
	.ascii "INVALID jump %ldx%ld\0"
	.align 2
LC21:
	.ascii "[mcp] valid jump %ldx%ld\12\0"
	.align 2
LC22:
	.ascii "INVALID jump (jump forced %ld)\12\0"
	.align 2
LC23:
	.ascii "INVALID jump (jump forced %ld)\0"
	.align 2
LC24:
	.ascii "no moves left\0"
	.align 2
LC25:
	.ascii "20 moves timeout\0"
	.text
	.align 2
	.globl __Z11deserializePc
__Z11deserializePc:
LFB27:
	mflr r0
LCFI49:
	stmw r30,-8(r1)
LCFI50:
	stw r0,8(r1)
LCFI51:
	stwu r1,-432(r1)
LCFI52:
	mr r30,r1
LCFI53:
	bcl 20,31,"L00000000007$pb"
"L00000000007$pb":
	mflr r31
	stw r3,456(r30)
	lwz r0,456(r30)
	stw r0,412(r30)
	lwz r2,412(r30)
	lbz r0,0(r2)
	extsb r0,r0
	cmpwi cr7,r0,0
	bne cr7,L145
	addis r2,r31,ha16(_turn-"L00000000007$pb")
	la r2,lo16(_turn-"L00000000007$pb")(r2)
	lwz r0,0(r2)
	rlwinm r0,r0,0,31,31
	mr r3,r0
	addis r2,r31,ha16(LC11-"L00000000007$pb")
	la r4,lo16(LC11-"L00000000007$pb")(r2)
	lwz r5,456(r30)
	bl __ZL8end_gameiPKcz
L145:
	lwz r0,412(r30)
	addi r2,r30,412
	mr r3,r0
	mr r4,r2
	li r5,10
	bl _strtol
	mr r0,r3
	stw r0,408(r30)
	lwz r2,412(r30)
	lbz r0,0(r2)
	extsb r0,r0
	cmpwi cr7,r0,45
	bne cr7,L147
	lwz r2,412(r30)
	addi r0,r2,1
	stw r0,412(r30)
	lwz r0,412(r30)
	addi r2,r30,412
	mr r3,r0
	mr r4,r2
	li r5,10
	bl _strtol
	mr r0,r3
	stw r0,404(r30)
	lwz r2,412(r30)
	lbz r0,0(r2)
	extsb r0,r0
	cmpwi cr7,r0,0
	beq cr7,L149
	addis r2,r31,ha16(_turn-"L00000000007$pb")
	la r2,lo16(_turn-"L00000000007$pb")(r2)
	lwz r0,0(r2)
	rlwinm r0,r0,0,31,31
	mr r3,r0
	addis r2,r31,ha16(LC12-"L00000000007$pb")
	la r4,lo16(LC12-"L00000000007$pb")(r2)
	lwz r5,456(r30)
	bl __ZL8end_gameiPKcz
L149:
	addis r2,r31,ha16(_turn-"L00000000007$pb")
	la r2,lo16(_turn-"L00000000007$pb")(r2)
	lwz r0,0(r2)
	rlwinm r0,r0,0,31,31
	cmpwi cr7,r0,0
	beq cr7,L151
	li r0,2
	stw r0,72(r30)
	b L153
L151:
	li r0,1
	stw r0,72(r30)
L153:
	li r3,2
	addis r2,r31,ha16(_b-"L00000000007$pb")
	la r4,lo16(_b-"L00000000007$pb")(r2)
	lwz r5,72(r30)
	bl __Z13can_move_jump9MOVE_JUMPRK5Board5Field
	mr r0,r3
	cmpwi cr7,r0,0
	beq cr7,L154
	addis r2,r31,ha16(L_debug$non_lazy_ptr-"L00000000007$pb")
	lwz r2,lo16(L_debug$non_lazy_ptr-"L00000000007$pb")(r2)
	lwz r0,0(r2)
	cmpwi cr7,r0,0
	beq cr7,L156
	addis r2,r31,ha16(L___stderrp$non_lazy_ptr-"L00000000007$pb")
	lwz r2,lo16(L___stderrp$non_lazy_ptr-"L00000000007$pb")(r2)
	lwz r0,0(r2)
	mr r3,r0
	addis r2,r31,ha16(LC13-"L00000000007$pb")
	la r4,lo16(LC13-"L00000000007$pb")(r2)
	lwz r5,408(r30)
	lwz r6,404(r30)
	bl _fprintf$LDBL128
	li r0,0
	stw r0,76(r30)
	b L158
L156:
	addis r2,r31,ha16(_turn-"L00000000007$pb")
	la r2,lo16(_turn-"L00000000007$pb")(r2)
	lwz r0,0(r2)
	rlwinm r0,r0,0,31,31
	mr r3,r0
	addis r2,r31,ha16(LC14-"L00000000007$pb")
	la r4,lo16(LC14-"L00000000007$pb")(r2)
	lwz r5,408(r30)
	lwz r6,404(r30)
	bl __ZL8end_gameiPKcz
L154:
	lwz r0,408(r30)
	slwi r2,r0,1
	addi r9,r2,-1
	lwz r2,408(r30)
	addi r0,r2,-1
	srawi r0,r0,2
	addze r0,r0
	rlwinm r0,r0,0,31,31
	subf r0,r0,r9
	stw r0,400(r30)
	lwz r0,404(r30)
	slwi r2,r0,1
	addi r9,r2,-1
	lwz r2,404(r30)
	addi r0,r2,-1
	srawi r0,r0,2
	addze r0,r0
	rlwinm r0,r0,0,31,31
	subf r0,r0,r9
	stw r0,396(r30)
	lwz r0,400(r30)
	rlwinm r0,r0,0,0xff
	stw r0,80(r30)
	lwz r0,396(r30)
	rlwinm r0,r0,0,0xff
	stw r0,84(r30)
	addis r2,r31,ha16(_turn-"L00000000007$pb")
	la r2,lo16(_turn-"L00000000007$pb")(r2)
	lwz r0,0(r2)
	rlwinm r0,r0,0,31,31
	cmpwi cr7,r0,0
	beq cr7,L159
	li r0,2
	stw r0,88(r30)
	b L161
L159:
	li r0,1
	stw r0,88(r30)
L161:
	li r3,1
	addis r2,r31,ha16(_b-"L00000000007$pb")
	la r4,lo16(_b-"L00000000007$pb")(r2)
	lwz r5,80(r30)
	lwz r6,84(r30)
	lwz r7,88(r30)
	bl __Z9move_jump9MOVE_JUMPR5Boardhh5Field
	mr r0,r3
	cmpwi cr7,r0,0
	mfcr r0
	rlwinm r0,r0,31,1
	cmpwi cr7,r0,0
	beq cr7,L162
	addis r2,r31,ha16(L_debug$non_lazy_ptr-"L00000000007$pb")
	lwz r2,lo16(L_debug$non_lazy_ptr-"L00000000007$pb")(r2)
	lwz r0,0(r2)
	cmpwi cr7,r0,0
	beq cr7,L164
	addis r2,r31,ha16(L___stderrp$non_lazy_ptr-"L00000000007$pb")
	lwz r2,lo16(L___stderrp$non_lazy_ptr-"L00000000007$pb")(r2)
	lwz r0,0(r2)
	mr r3,r0
	addis r2,r31,ha16(LC15-"L00000000007$pb")
	la r4,lo16(LC15-"L00000000007$pb")(r2)
	lwz r5,408(r30)
	lwz r6,404(r30)
	bl _fprintf$LDBL128
	li r0,0
	stw r0,76(r30)
	b L158
L164:
	addis r2,r31,ha16(_turn-"L00000000007$pb")
	la r2,lo16(_turn-"L00000000007$pb")(r2)
	lwz r0,0(r2)
	rlwinm r0,r0,0,31,31
	mr r3,r0
	addis r2,r31,ha16(LC16-"L00000000007$pb")
	la r4,lo16(LC16-"L00000000007$pb")(r2)
	lwz r5,408(r30)
	lwz r6,404(r30)
	bl __ZL8end_gameiPKcz
L162:
	lwz r0,396(r30)
	addis r2,r31,ha16(_b-"L00000000007$pb")
	la r2,lo16(_b-"L00000000007$pb")(r2)
	slwi r0,r0,2
	add r2,r0,r2
	lwz r0,0(r2)
	rlwinm r0,r0,0,29,29
	cmpwi cr7,r0,0
	beq cr7,L166
	addis r2,r31,ha16(_idle-"L00000000007$pb")
	la r2,lo16(_idle-"L00000000007$pb")(r2)
	lwz r2,0(r2)
	addi r2,r2,1
	stw r2,92(r30)
	b L168
L166:
	li r0,0
	stw r0,92(r30)
L168:
	addis r2,r31,ha16(_idle-"L00000000007$pb")
	la r2,lo16(_idle-"L00000000007$pb")(r2)
	lwz r0,92(r30)
	stw r0,0(r2)
	addis r2,r31,ha16(L___stderrp$non_lazy_ptr-"L00000000007$pb")
	lwz r2,lo16(L___stderrp$non_lazy_ptr-"L00000000007$pb")(r2)
	lwz r0,0(r2)
	mr r3,r0
	addis r2,r31,ha16(LC17-"L00000000007$pb")
	la r4,lo16(LC17-"L00000000007$pb")(r2)
	lwz r5,408(r30)
	lwz r6,404(r30)
	bl _fprintf$LDBL128
	lwz r0,396(r30)
	rlwinm r0,r0,0,0xff
	addis r2,r31,ha16(_b-"L00000000007$pb")
	la r3,lo16(_b-"L00000000007$pb")(r2)
	mr r4,r0
	bl __Z7upgradeR5Boardh
	b L169
L147:
	lwz r2,412(r30)
	lbz r0,0(r2)
	extsb r0,r0
	cmpwi cr7,r0,120
	bne cr7,L170
	addi r0,r30,128
	mr r3,r0
	addis r2,r31,ha16(_b-"L00000000007$pb")
	la r4,lo16(_b-"L00000000007$pb")(r2)
	bl __ZN5BoardC1ERKS_
	b L172
L173:
	lwz r2,412(r30)
	addi r0,r2,1
	stw r0,412(r30)
	lwz r0,412(r30)
	addi r2,r30,412
	mr r3,r0
	mr r4,r2
	li r5,10
	bl _strtol
	mr r0,r3
	stw r0,392(r30)
	lwz r2,412(r30)
	lbz r0,0(r2)
	extsb r0,r0
	cmpwi cr7,r0,0
	beq cr7,L174
	lwz r2,412(r30)
	lbz r0,0(r2)
	extsb r0,r0
	cmpwi cr7,r0,120
	beq cr7,L174
	addis r2,r31,ha16(_turn-"L00000000007$pb")
	la r2,lo16(_turn-"L00000000007$pb")(r2)
	lwz r0,0(r2)
	rlwinm r0,r0,0,31,31
	mr r3,r0
	addis r2,r31,ha16(LC18-"L00000000007$pb")
	la r4,lo16(LC18-"L00000000007$pb")(r2)
	lwz r5,456(r30)
	bl __ZL8end_gameiPKcz
L174:
	lwz r0,408(r30)
	slwi r2,r0,1
	addi r9,r2,-1
	lwz r2,408(r30)
	addi r0,r2,-1
	srawi r0,r0,2
	addze r0,r0
	rlwinm r0,r0,0,31,31
	subf r0,r0,r9
	stw r0,388(r30)
	lwz r0,392(r30)
	slwi r2,r0,1
	addi r9,r2,-1
	lwz r2,392(r30)
	addi r0,r2,-1
	srawi r0,r0,2
	addze r0,r0
	rlwinm r0,r0,0,31,31
	subf r0,r0,r9
	stw r0,384(r30)
	lwz r0,388(r30)
	rlwinm r0,r0,0,0xff
	stw r0,96(r30)
	lwz r0,384(r30)
	rlwinm r0,r0,0,0xff
	stw r0,100(r30)
	addis r2,r31,ha16(_turn-"L00000000007$pb")
	la r2,lo16(_turn-"L00000000007$pb")(r2)
	lwz r0,0(r2)
	rlwinm r0,r0,0,31,31
	cmpwi cr7,r0,0
	beq cr7,L177
	li r0,2
	stw r0,104(r30)
	b L179
L177:
	li r0,1
	stw r0,104(r30)
L179:
	li r3,2
	addis r2,r31,ha16(_b-"L00000000007$pb")
	la r4,lo16(_b-"L00000000007$pb")(r2)
	lwz r5,96(r30)
	lwz r6,100(r30)
	lwz r7,104(r30)
	bl __Z9move_jump9MOVE_JUMPR5Boardhh5Field
	mr r0,r3
	cmpwi cr7,r0,0
	mfcr r0
	rlwinm r0,r0,31,1
	cmpwi cr7,r0,0
	beq cr7,L180
	addis r2,r31,ha16(L_debug$non_lazy_ptr-"L00000000007$pb")
	lwz r2,lo16(L_debug$non_lazy_ptr-"L00000000007$pb")(r2)
	lwz r0,0(r2)
	cmpwi cr7,r0,0
	beq cr7,L182
	addis r2,r31,ha16(L___stderrp$non_lazy_ptr-"L00000000007$pb")
	lwz r2,lo16(L___stderrp$non_lazy_ptr-"L00000000007$pb")(r2)
	lwz r0,0(r2)
	mr r3,r0
	addis r2,r31,ha16(LC19-"L00000000007$pb")
	la r4,lo16(LC19-"L00000000007$pb")(r2)
	lwz r5,408(r30)
	lwz r6,392(r30)
	bl _fprintf$LDBL128
	addis r2,r31,ha16(_b-"L00000000007$pb")
	la r0,lo16(_b-"L00000000007$pb")(r2)
	addi r2,r30,128
	li r9,256
	mr r3,r0
	mr r4,r2
	mr r5,r9
	bl _memcpy
	li r0,0
	stw r0,76(r30)
	b L158
L182:
	addis r2,r31,ha16(_turn-"L00000000007$pb")
	la r2,lo16(_turn-"L00000000007$pb")(r2)
	lwz r0,0(r2)
	rlwinm r0,r0,0,31,31
	mr r3,r0
	addis r2,r31,ha16(LC20-"L00000000007$pb")
	la r4,lo16(LC20-"L00000000007$pb")(r2)
	lwz r5,408(r30)
	lwz r6,392(r30)
	bl __ZL8end_gameiPKcz
L180:
	addis r2,r31,ha16(_idle-"L00000000007$pb")
	la r2,lo16(_idle-"L00000000007$pb")(r2)
	li r0,0
	stw r0,0(r2)
	addis r2,r31,ha16(L___stderrp$non_lazy_ptr-"L00000000007$pb")
	lwz r2,lo16(L___stderrp$non_lazy_ptr-"L00000000007$pb")(r2)
	lwz r0,0(r2)
	mr r3,r0
	addis r2,r31,ha16(LC21-"L00000000007$pb")
	la r4,lo16(LC21-"L00000000007$pb")(r2)
	lwz r5,408(r30)
	lwz r6,392(r30)
	bl _fprintf$LDBL128
	lwz r2,412(r30)
	lbz r0,0(r2)
	extsb r0,r0
	cmpwi cr7,r0,0
	beq cr7,L184
	lwz r0,392(r30)
	stw r0,408(r30)
	b L172
L184:
	lwz r0,384(r30)
	rlwinm r0,r0,0,0xff
	stw r0,108(r30)
	addis r2,r31,ha16(_turn-"L00000000007$pb")
	la r2,lo16(_turn-"L00000000007$pb")(r2)
	lwz r0,0(r2)
	rlwinm r0,r0,0,31,31
	cmpwi cr7,r0,0
	beq cr7,L186
	li r0,2
	stw r0,112(r30)
	b L188
L186:
	li r0,1
	stw r0,112(r30)
L188:
	li r3,2
	addis r2,r31,ha16(_b-"L00000000007$pb")
	la r4,lo16(_b-"L00000000007$pb")(r2)
	lwz r5,108(r30)
	lwz r6,112(r30)
	bl __Z15check_move_jump9MOVE_JUMPRK5Boardh5Field
	mr r0,r3
	cmpwi cr7,r0,0
	beq cr7,L189
	addis r2,r31,ha16(L_debug$non_lazy_ptr-"L00000000007$pb")
	lwz r2,lo16(L_debug$non_lazy_ptr-"L00000000007$pb")(r2)
	lwz r0,0(r2)
	cmpwi cr7,r0,0
	beq cr7,L191
	addis r2,r31,ha16(L___stderrp$non_lazy_ptr-"L00000000007$pb")
	lwz r2,lo16(L___stderrp$non_lazy_ptr-"L00000000007$pb")(r2)
	lwz r0,0(r2)
	mr r3,r0
	addis r2,r31,ha16(LC22-"L00000000007$pb")
	la r4,lo16(LC22-"L00000000007$pb")(r2)
	lwz r5,392(r30)
	bl _fprintf$LDBL128
	addis r2,r31,ha16(_b-"L00000000007$pb")
	la r0,lo16(_b-"L00000000007$pb")(r2)
	addi r2,r30,128
	li r9,256
	mr r3,r0
	mr r4,r2
	mr r5,r9
	bl _memcpy
	li r0,0
	stw r0,76(r30)
	b L158
L191:
	addis r2,r31,ha16(_turn-"L00000000007$pb")
	la r2,lo16(_turn-"L00000000007$pb")(r2)
	lwz r0,0(r2)
	rlwinm r0,r0,0,31,31
	mr r3,r0
	addis r2,r31,ha16(LC23-"L00000000007$pb")
	la r4,lo16(LC23-"L00000000007$pb")(r2)
	lwz r5,392(r30)
	bl __ZL8end_gameiPKcz
L189:
	lwz r0,384(r30)
	rlwinm r0,r0,0,0xff
	addis r2,r31,ha16(_b-"L00000000007$pb")
	la r3,lo16(_b-"L00000000007$pb")(r2)
	mr r4,r0
	bl __Z7upgradeR5Boardh
L172:
	lwz r2,412(r30)
	lbz r0,0(r2)
	extsb r0,r0
	cmpwi cr7,r0,0
	bne cr7,L173
	b L169
L170:
	addis r2,r31,ha16(_turn-"L00000000007$pb")
	la r2,lo16(_turn-"L00000000007$pb")(r2)
	lwz r0,0(r2)
	rlwinm r0,r0,0,31,31
	mr r3,r0
	addis r2,r31,ha16(LC18-"L00000000007$pb")
	la r4,lo16(LC18-"L00000000007$pb")(r2)
	lwz r5,456(r30)
	bl __ZL8end_gameiPKcz
L169:
	addis r2,r31,ha16(_turn-"L00000000007$pb")
	la r2,lo16(_turn-"L00000000007$pb")(r2)
	lwz r2,0(r2)
	addi r0,r2,1
	addis r2,r31,ha16(_turn-"L00000000007$pb")
	la r2,lo16(_turn-"L00000000007$pb")(r2)
	stw r0,0(r2)
	addis r2,r31,ha16(_turn-"L00000000007$pb")
	la r2,lo16(_turn-"L00000000007$pb")(r2)
	lwz r0,0(r2)
	rlwinm r0,r0,0,31,31
	cmpwi cr7,r0,0
	beq cr7,L194
	li r0,2
	stw r0,120(r30)
	b L196
L194:
	li r0,1
	stw r0,120(r30)
L196:
	li r3,1
	addis r2,r31,ha16(_b-"L00000000007$pb")
	la r4,lo16(_b-"L00000000007$pb")(r2)
	lwz r5,120(r30)
	bl __Z13can_move_jump9MOVE_JUMPRK5Board5Field
	mr r0,r3
	xori r0,r0,1
	xori r0,r0,1
	cmpwi cr7,r0,0
	bne cr7,L197
	addis r2,r31,ha16(_turn-"L00000000007$pb")
	la r2,lo16(_turn-"L00000000007$pb")(r2)
	lwz r0,0(r2)
	rlwinm r0,r0,0,31,31
	cmpwi cr7,r0,0
	beq cr7,L199
	li r0,2
	stw r0,124(r30)
	b L201
L199:
	li r0,1
	stw r0,124(r30)
L201:
	li r3,2
	addis r2,r31,ha16(_b-"L00000000007$pb")
	la r4,lo16(_b-"L00000000007$pb")(r2)
	lwz r5,124(r30)
	bl __Z13can_move_jump9MOVE_JUMPRK5Board5Field
	mr r0,r3
	xori r0,r0,1
	xori r0,r0,1
	cmpwi cr7,r0,0
	bne cr7,L197
	li r0,1
	stw r0,116(r30)
	b L203
L197:
	li r0,0
	stw r0,116(r30)
L203:
	lwz r0,116(r30)
	cmpwi cr7,r0,0
	beq cr7,L204
	addis r2,r31,ha16(_turn-"L00000000007$pb")
	la r2,lo16(_turn-"L00000000007$pb")(r2)
	lwz r0,0(r2)
	rlwinm r0,r0,0,31,31
	mr r3,r0
	addis r2,r31,ha16(LC24-"L00000000007$pb")
	la r4,lo16(LC24-"L00000000007$pb")(r2)
	bl __ZL8end_gameiPKcz
L204:
	addis r2,r31,ha16(_idle-"L00000000007$pb")
	la r2,lo16(_idle-"L00000000007$pb")(r2)
	lwz r0,0(r2)
	cmpwi cr7,r0,20
	ble cr7,L206
	li r3,2
	addis r2,r31,ha16(LC25-"L00000000007$pb")
	la r4,lo16(LC25-"L00000000007$pb")(r2)
	bl __ZL8end_gameiPKcz
L206:
	li r0,1
	stw r0,76(r30)
L158:
	lwz r0,76(r30)
	mr r3,r0
	lwz r1,0(r1)
	lwz r0,8(r1)
	mtlr r0
	lmw r30,-8(r1)
	blr
LFE27:
	.cstring
	.align 2
LC26:
	.ascii "+----+----+----+----+----+----+----+----+\0"
	.align 2
LC27:
	.ascii "|    \0"
	.align 2
LC28:
	.ascii "|%c%2d%c\0"
	.align 2
LC29:
	.ascii "|\0"
	.text
	.align 2
	.globl __ZN5Board4drawEv
__ZN5Board4drawEv:
LFB19:
	mflr r0
LCFI54:
	stmw r30,-8(r1)
LCFI55:
	stw r0,8(r1)
LCFI56:
	stwu r1,-96(r1)
LCFI57:
	mr r30,r1
LCFI58:
	bcl 20,31,"L00000000008$pb"
"L00000000008$pb":
	mflr r31
	stw r3,120(r30)
	li r0,0
	stw r0,72(r30)
	b L210
L211:
	lwz r0,72(r30)
	rlwinm r0,r0,0,29,31
	cmpwi cr7,r0,0
	bne cr7,L212
	addis r2,r31,ha16(LC26-"L00000000008$pb")
	la r3,lo16(LC26-"L00000000008$pb")(r2)
	bl _puts
L212:
	li r0,32
	stb r0,79(r30)
	lwz r0,72(r30)
	lwz r2,120(r30)
	slwi r0,r0,2
	add r2,r0,r2
	lwz r0,0(r2)
	rlwinm r0,r0,0,31,31
	cmpwi cr7,r0,0
	beq cr7,L214
	li r0,98
	stb r0,79(r30)
L214:
	lwz r0,72(r30)
	lwz r2,120(r30)
	slwi r0,r0,2
	add r2,r0,r2
	lwz r0,0(r2)
	rlwinm r0,r0,0,30,30
	cmpwi cr7,r0,0
	beq cr7,L216
	li r0,119
	stb r0,79(r30)
L216:
	lwz r0,72(r30)
	lwz r2,120(r30)
	slwi r0,r0,2
	add r2,r0,r2
	lwz r0,0(r2)
	rlwinm r0,r0,0,29,29
	cmpwi cr7,r0,0
	beq cr7,L218
	lbz r0,79(r30)
	rlwinm r2,r0,0,0xff
	addi r0,r2,-32
	rlwinm r0,r0,0,0xff
	stb r0,79(r30)
L218:
	lwz r0,72(r30)
	rlwinm r0,r0,0,28,28
	cmpwi cr7,r0,0
	beq cr7,L220
	lwz r0,72(r30)
	rlwinm r0,r0,0,31,31
	cmpwi cr7,r0,0
	bne cr7,L222
L220:
	lwz r0,72(r30)
	rlwinm r0,r0,0,28,28
	cmpwi cr7,r0,0
	bne cr7,L223
	lwz r0,72(r30)
	rlwinm r0,r0,0,31,31
	xori r0,r0,1
	cmpwi cr7,r0,0
	beq cr7,L223
L222:
	addis r2,r31,ha16(LC27-"L00000000008$pb")
	la r3,lo16(LC27-"L00000000008$pb")(r2)
	bl _printf$LDBL128
	b L225
L223:
	lbz r0,79(r30)
	extsb r9,r0
	lwz r0,72(r30)
	srawi r2,r0,1
	addze r2,r2
	addi r11,r2,1
	lbz r0,79(r30)
	extsb r0,r0
	addis r2,r31,ha16(LC28-"L00000000008$pb")
	la r3,lo16(LC28-"L00000000008$pb")(r2)
	mr r4,r9
	mr r5,r11
	mr r6,r0
	bl _printf$LDBL128
L225:
	lwz r0,72(r30)
	rlwinm r0,r0,0,29,31
	cmpwi cr7,r0,7
	bne cr7,L226
	addis r2,r31,ha16(LC29-"L00000000008$pb")
	la r3,lo16(LC29-"L00000000008$pb")(r2)
	bl _puts
L226:
	lwz r2,72(r30)
	addi r0,r2,1
	stw r0,72(r30)
L210:
	lwz r0,72(r30)
	cmpwi cr7,r0,63
	ble cr7,L211
	addis r2,r31,ha16(LC26-"L00000000008$pb")
	la r3,lo16(LC26-"L00000000008$pb")(r2)
	bl _puts
	lwz r1,0(r1)
	lwz r0,8(r1)
	mtlr r0
	lmw r30,-8(r1)
	blr
LFE19:
	.cstring
	.align 2
LC30:
	.ascii "errno = %d\12\0"
	.text
	.align 2
__ZL5errorPKcz:
LFB3:
	mflr r0
LCFI59:
	stmw r29,-12(r1)
LCFI60:
	stw r0,8(r1)
LCFI61:
	stwu r1,-96(r1)
LCFI62:
	mr r30,r1
LCFI63:
	bcl 20,31,"L00000000009$pb"
"L00000000009$pb":
	mflr r31
	stw r4,124(r30)
	stw r5,128(r30)
	stw r6,132(r30)
	stw r7,136(r30)
	stw r8,140(r30)
	stw r9,144(r30)
	stw r10,148(r30)
	stw r3,120(r30)
	addi r0,r30,124
	stw r0,76(r30)
	addis r2,r31,ha16(L___stderrp$non_lazy_ptr-"L00000000009$pb")
	lwz r2,lo16(L___stderrp$non_lazy_ptr-"L00000000009$pb")(r2)
	lwz r0,0(r2)
	lwz r2,76(r30)
	mr r3,r0
	lwz r4,120(r30)
	mr r5,r2
	bl _vfprintf$LDBL128
	addis r2,r31,ha16(L___stderrp$non_lazy_ptr-"L00000000009$pb")
	lwz r2,lo16(L___stderrp$non_lazy_ptr-"L00000000009$pb")(r2)
	lwz r29,0(r2)
	bl ___error
	mr r2,r3
	lwz r0,0(r2)
	mr r3,r29
	addis r2,r31,ha16(LC30-"L00000000009$pb")
	la r4,lo16(LC30-"L00000000009$pb")(r2)
	mr r5,r0
	bl _fprintf$LDBL128
	li r3,0
	bl _perror
	li r3,-1
	bl _exit
LFE3:
	.cstring
	.align 2
LC31:
	.ascii "input string must be 32 chars\12\0"
	.align 2
LC32:
	.ascii "unknown char '%c' in input string\12\0"
	.text
	.align 2
	.globl __ZN5Board11from_stringEPKc
__ZN5Board11from_stringEPKc:
LFB14:
	mflr r0
LCFI64:
	stmw r30,-8(r1)
LCFI65:
	stw r0,8(r1)
LCFI66:
	stwu r1,-112(r1)
LCFI67:
	mr r30,r1
LCFI68:
	bcl 20,31,"L00000000010$pb"
"L00000000010$pb":
	mflr r31
	stw r3,136(r30)
	stw r4,140(r30)
	lwz r3,140(r30)
	bl _strlen
	mr r0,r3
	cmpwi cr7,r0,32
	beq cr7,L233
	addis r2,r31,ha16(LC31-"L00000000010$pb")
	la r3,lo16(LC31-"L00000000010$pb")(r2)
	bl __ZL5errorPKcz
L233:
	li r0,0
	stw r0,92(r30)
	b L235
L236:
	lwz r0,92(r30)
	mr r2,r0
	lwz r0,140(r30)
	add r2,r2,r0
	lbz r0,0(r2)
	extsb r0,r0
	stw r0,76(r30)
	lwz r0,76(r30)
	cmpwi cr7,r0,87
	beq cr7,L240
	lwz r0,76(r30)
	cmpwi cr7,r0,87
	bgt cr7,L243
	lwz r0,76(r30)
	cmpwi cr7,r0,45
	beq cr7,L238
	lwz r0,76(r30)
	cmpwi cr7,r0,66
	beq cr7,L239
	b L237
L243:
	lwz r0,76(r30)
	cmpwi cr7,r0,98
	beq cr7,L241
	lwz r0,76(r30)
	cmpwi cr7,r0,119
	beq cr7,L242
	b L237
L241:
	li r0,1
	stw r0,88(r30)
	b L244
L242:
	li r0,2
	stw r0,88(r30)
	b L244
L239:
	li r0,5
	stw r0,88(r30)
	b L244
L240:
	li r0,6
	stw r0,88(r30)
	b L244
L238:
	li r0,0
	stw r0,88(r30)
	b L244
L237:
	lwz r0,92(r30)
	mr r2,r0
	lwz r0,140(r30)
	add r2,r2,r0
	lbz r0,0(r2)
	extsb r0,r0
	addis r2,r31,ha16(LC32-"L00000000010$pb")
	la r3,lo16(LC32-"L00000000010$pb")(r2)
	mr r4,r0
	bl __ZL5errorPKcz
L244:
	lwz r0,92(r30)
	srawi r0,r0,2
	addze r0,r0
	rlwinm r0,r0,0,31,31
	stw r0,84(r30)
	lwz r0,92(r30)
	slwi r2,r0,1
	lwz r0,84(r30)
	subf r2,r0,r2
	addi r0,r2,1
	lwz r2,136(r30)
	slwi r0,r0,2
	add r2,r0,r2
	lwz r0,88(r30)
	stw r0,0(r2)
	lwz r0,92(r30)
	slwi r2,r0,1
	lwz r0,84(r30)
	add r0,r2,r0
	lwz r2,136(r30)
	slwi r0,r0,2
	add r2,r0,r2
	li r0,0
	stw r0,0(r2)
	lwz r2,92(r30)
	addi r0,r2,1
	stw r0,92(r30)
L235:
	lwz r0,92(r30)
	mr r2,r0
	lwz r0,140(r30)
	add r2,r2,r0
	lbz r0,0(r2)
	extsb r0,r0
	cmpwi cr7,r0,0
	bne cr7,L236
	lwz r1,0(r1)
	lwz r0,8(r1)
	mtlr r0
	lmw r30,-8(r1)
	blr
LFE14:
	.cstring
	.align 2
LC33:
	.ascii "bbbbbbbbbbbb--------wwwwwwwwwwww\0"
	.section __TEXT,__textcoal_nt,coalesced,pure_instructions
	.align 2
	.globl __ZN5BoardC1Ev
	.weak_definition __ZN5BoardC1Ev
__ZN5BoardC1Ev:
LFB7:
	mflr r0
LCFI69:
	stmw r30,-8(r1)
LCFI70:
	stw r0,8(r1)
LCFI71:
	stwu r1,-80(r1)
LCFI72:
	mr r30,r1
LCFI73:
	bcl 20,31,"L00000000011$pb"
"L00000000011$pb":
	mflr r31
	stw r3,104(r30)
	lwz r3,104(r30)
	addis r2,r31,ha16(LC33-"L00000000011$pb")
	la r4,lo16(LC33-"L00000000011$pb")(r2)
	bl __ZN5Board11from_stringEPKc
	lwz r1,0(r1)
	lwz r0,8(r1)
	mtlr r0
	lmw r30,-8(r1)
	blr
LFE7:
	.section __TEXT,__StaticInit,regular,pure_instructions
	.align 2
__Z41__static_initialization_and_destruction_0ii:
LFB29:
	mflr r0
LCFI74:
	stmw r30,-8(r1)
LCFI75:
	stw r0,8(r1)
LCFI76:
	stwu r1,-80(r1)
LCFI77:
	mr r30,r1
LCFI78:
	bcl 20,31,"L00000000012$pb"
"L00000000012$pb":
	mflr r31
	stw r3,104(r30)
	stw r4,108(r30)
	lwz r0,104(r30)
	cmpwi cr7,r0,1
	bne cr7,L253
	lwz r0,108(r30)
	li r2,0
	ori r2,r2,65535
	cmpw cr7,r0,r2
	bne cr7,L253
	addis r2,r31,ha16(_b-"L00000000012$pb")
	la r3,lo16(_b-"L00000000012$pb")(r2)
	bl __ZN5BoardC1Ev
L253:
	lwz r1,0(r1)
	lwz r0,8(r1)
	mtlr r0
	lmw r30,-8(r1)
	blr
LFE29:
	.align 2
__GLOBAL__I__ZN5Board11from_stringEPKc:
LFB30:
	mflr r0
LCFI79:
	stmw r30,-8(r1)
LCFI80:
	stw r0,8(r1)
LCFI81:
	stwu r1,-80(r1)
LCFI82:
	mr r30,r1
LCFI83:
	li r3,1
	li r4,0
	ori r4,r4,65535
	bl __Z41__static_initialization_and_destruction_0ii
	lwz r1,0(r1)
	lwz r0,8(r1)
	mtlr r0
	lmw r30,-8(r1)
	blr
LFE30:
	.cstring
	.align 2
LC34:
	.ascii "init failed ('B' or 'W' expected)\12\0"
	.align 2
LC35:
	.ascii "init failed (':' expected)\12\0"
	.text
	.align 2
	.globl __Z4initPKc
__Z4initPKc:
LFB25:
	mflr r0
LCFI84:
	stmw r30,-8(r1)
LCFI85:
	stw r0,8(r1)
LCFI86:
	stwu r1,-80(r1)
LCFI87:
	mr r30,r1
LCFI88:
	bcl 20,31,"L00000000013$pb"
"L00000000013$pb":
	mflr r31
	stw r3,104(r30)
	lwz r0,104(r30)
	cmpwi cr7,r0,0
	beq cr7,L265
	lwz r2,104(r30)
	lbz r0,0(r2)
	extsb r0,r0
	cmpwi cr7,r0,87
	bne cr7,L259
	addis r2,r31,ha16(_turn-"L00000000013$pb")
	la r2,lo16(_turn-"L00000000013$pb")(r2)
	lwz r2,0(r2)
	addi r0,r2,1
	addis r2,r31,ha16(_turn-"L00000000013$pb")
	la r2,lo16(_turn-"L00000000013$pb")(r2)
	stw r0,0(r2)
	b L261
L259:
	lwz r2,104(r30)
	lbz r0,0(r2)
	extsb r0,r0
	cmpwi cr7,r0,66
	beq cr7,L261
	addis r2,r31,ha16(LC34-"L00000000013$pb")
	la r3,lo16(LC34-"L00000000013$pb")(r2)
	bl __ZL5errorPKcz
L261:
	lwz r2,104(r30)
	addi r2,r2,1
	lbz r0,0(r2)
	extsb r0,r0
	cmpwi cr7,r0,58
	beq cr7,L263
	addis r2,r31,ha16(LC35-"L00000000013$pb")
	la r3,lo16(LC35-"L00000000013$pb")(r2)
	bl __ZL5errorPKcz
L263:
	lwz r2,104(r30)
	addi r0,r2,2
	addis r2,r31,ha16(_b-"L00000000013$pb")
	la r3,lo16(_b-"L00000000013$pb")(r2)
	mr r4,r0
	bl __ZN5Board11from_stringEPKc
L265:
	lwz r1,0(r1)
	lwz r0,8(r1)
	mtlr r0
	lmw r30,-8(r1)
	blr
LFE25:
	.globl _b
.zerofill __DATA, __common, _b, 256, 2
	.globl _turn
	.data
	.align 2
_turn:
	.space 4
	.globl _idle
	.align 2
_idle:
	.space 4
	.globl _buffer
.zerofill __DATA, __common, _buffer, 36, 2
	.cstring
	.align 2
__ZZL8end_gameiPKczE8__func__:
	.ascii "end_game\0"
	.align 2
__ZZ13can_move_jump9MOVE_JUMPRK5Board5FieldE8__func__:
	.ascii "can_move_jump\0"
	.align 2
__ZZ9move_jump9MOVE_JUMPR5Boardhh5FieldE8__func__:
	.ascii "move_jump\0"
	.align 2
__ZZN5Board9to_stringEPcE8__func__:
	.ascii "to_string\0"
	.globl __ZN5BoardC2Ejjj.eh
__ZN5BoardC2Ejjj.eh = 0
.no_dead_strip __ZN5BoardC2Ejjj.eh
	.globl __ZN5BoardC1Ejjj.eh
__ZN5BoardC1Ejjj.eh = 0
.no_dead_strip __ZN5BoardC1Ejjj.eh
__GLOBAL__I__ZN5Board11from_stringEPKc.eh = 0
.no_dead_strip __GLOBAL__I__ZN5Board11from_stringEPKc.eh
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$0,LECIE1-LSCIE1
	.long L$set$0
LSCIE1:
	.long	0x0
	.byte	0x1
	.ascii "zPR\0"
	.byte	0x1
	.byte	0x7c
	.byte	0x41
	.byte	0x6
	.byte	0x9b
	.long	L___gxx_personality_v0$non_lazy_ptr-.
	.byte	0x10
	.byte	0xc
	.byte	0x1
	.byte	0x0
	.align 2
LECIE1:
	.globl __Z4swapI5FieldEvRT_S2_.eh
	.weak_definition __Z4swapI5FieldEvRT_S2_.eh
__Z4swapI5FieldEvRT_S2_.eh:
LSFDE5:
	.set L$set$1,LEFDE5-LASFDE5
	.long L$set$1
LASFDE5:
	.long	LASFDE5-EH_frame1
	.long	LFB28-.
	.set L$set$2,LFE28-LFB28
	.long L$set$2
	.byte	0x0
	.byte	0x4
	.set L$set$3,LCFI7-LFB28
	.long L$set$3
	.byte	0xe
	.byte	0x40
	.byte	0x9f
	.byte	0x1
	.byte	0x9e
	.byte	0x2
	.byte	0x4
	.set L$set$4,LCFI8-LCFI7
	.long L$set$4
	.byte	0xd
	.byte	0x1e
	.align 2
LEFDE5:
	.globl __ZN5BoardC1ERKS_.eh
	.weak_definition __ZN5BoardC1ERKS_.eh
__ZN5BoardC1ERKS_.eh:
LSFDE7:
	.set L$set$5,LEFDE7-LASFDE7
	.long L$set$5
LASFDE7:
	.long	LASFDE7-EH_frame1
	.long	LFB10-.
	.set L$set$6,LFE10-LFB10
	.long L$set$6
	.byte	0x0
	.byte	0x4
	.set L$set$7,LCFI12-LFB10
	.long L$set$7
	.byte	0xe
	.byte	0x50
	.byte	0x9f
	.byte	0x1
	.byte	0x9e
	.byte	0x2
	.byte	0x11
	.byte	0x41
	.byte	0x7e
	.byte	0x4
	.set L$set$8,LCFI13-LCFI12
	.long L$set$8
	.byte	0xd
	.byte	0x1e
	.align 2
LEFDE7:
	.globl __Z7upgradeR5Boardh.eh
__Z7upgradeR5Boardh.eh:
LSFDE9:
	.set L$set$9,LEFDE9-LASFDE9
	.long L$set$9
LASFDE9:
	.long	LASFDE9-EH_frame1
	.long	LFB23-.
	.set L$set$10,LFE23-LFB23
	.long L$set$10
	.byte	0x0
	.byte	0x4
	.set L$set$11,LCFI17-LFB23
	.long L$set$11
	.byte	0xe
	.byte	0x50
	.byte	0x9f
	.byte	0x1
	.byte	0x9e
	.byte	0x2
	.byte	0x11
	.byte	0x41
	.byte	0x7e
	.byte	0x4
	.set L$set$12,LCFI18-LCFI17
	.long L$set$12
	.byte	0xd
	.byte	0x1e
	.align 2
LEFDE9:
	.globl __Z9move_jump9MOVE_JUMPR5Boardhh5Field.eh
__Z9move_jump9MOVE_JUMPR5Boardhh5Field.eh:
LSFDE11:
	.set L$set$13,LEFDE11-LASFDE11
	.long L$set$13
LASFDE11:
	.long	LASFDE11-EH_frame1
	.long	LFB20-.
	.set L$set$14,LFE20-LFB20
	.long L$set$14
	.byte	0x0
	.byte	0x4
	.set L$set$15,LCFI22-LFB20
	.long L$set$15
	.byte	0xe
	.byte	0x70
	.byte	0x9f
	.byte	0x1
	.byte	0x9e
	.byte	0x2
	.byte	0x11
	.byte	0x41
	.byte	0x7e
	.byte	0x4
	.set L$set$16,LCFI23-LCFI22
	.long L$set$16
	.byte	0xd
	.byte	0x1e
	.align 2
LEFDE11:
	.globl __Z15check_move_jump9MOVE_JUMPRK5Boardh5Field.eh
__Z15check_move_jump9MOVE_JUMPRK5Boardh5Field.eh:
LSFDE13:
	.set L$set$17,LEFDE13-LASFDE13
	.long L$set$17
LASFDE13:
	.long	LASFDE13-EH_frame1
	.long	LFB21-.
	.set L$set$18,LFE21-LFB21
	.long L$set$18
	.byte	0x0
	.byte	0x4
	.set L$set$19,LCFI27-LFB21
	.long L$set$19
	.byte	0xe
	.byte	0xe0,0x2
	.byte	0x9f
	.byte	0x1
	.byte	0x9e
	.byte	0x2
	.byte	0x11
	.byte	0x41
	.byte	0x7e
	.byte	0x4
	.set L$set$20,LCFI28-LCFI27
	.long L$set$20
	.byte	0xd
	.byte	0x1e
	.align 2
LEFDE13:
	.globl __Z13can_move_jump9MOVE_JUMPRK5Board5Field.eh
__Z13can_move_jump9MOVE_JUMPRK5Board5Field.eh:
LSFDE15:
	.set L$set$21,LEFDE15-LASFDE15
	.long L$set$21
LASFDE15:
	.long	LASFDE15-EH_frame1
	.long	LFB22-.
	.set L$set$22,LFE22-LFB22
	.long L$set$22
	.byte	0x0
	.byte	0x4
	.set L$set$23,LCFI32-LFB22
	.long L$set$23
	.byte	0xe
	.byte	0x70
	.byte	0x9f
	.byte	0x1
	.byte	0x9e
	.byte	0x2
	.byte	0x11
	.byte	0x41
	.byte	0x7e
	.byte	0x4
	.set L$set$24,LCFI33-LCFI32
	.long L$set$24
	.byte	0xd
	.byte	0x1e
	.align 2
LEFDE15:
	.globl __ZN5Board9to_stringEPc.eh
__ZN5Board9to_stringEPc.eh:
LSFDE17:
	.set L$set$25,LEFDE17-LASFDE17
	.long L$set$25
LASFDE17:
	.long	LASFDE17-EH_frame1
	.long	LFB15-.
	.set L$set$26,LFE15-LFB15
	.long L$set$26
	.byte	0x0
	.byte	0x4
	.set L$set$27,LCFI37-LFB15
	.long L$set$27
	.byte	0xe
	.byte	0x70
	.byte	0x9f
	.byte	0x1
	.byte	0x9e
	.byte	0x2
	.byte	0x11
	.byte	0x41
	.byte	0x7e
	.byte	0x4
	.set L$set$28,LCFI38-LCFI37
	.long L$set$28
	.byte	0xd
	.byte	0x1e
	.align 2
LEFDE17:
	.globl __Z9serializev.eh
__Z9serializev.eh:
LSFDE19:
	.set L$set$29,LEFDE19-LASFDE19
	.long L$set$29
LASFDE19:
	.long	LASFDE19-EH_frame1
	.long	LFB26-.
	.set L$set$30,LFE26-LFB26
	.long L$set$30
	.byte	0x0
	.byte	0x4
	.set L$set$31,LCFI42-LFB26
	.long L$set$31
	.byte	0xe
	.byte	0x60
	.byte	0x9f
	.byte	0x1
	.byte	0x9e
	.byte	0x2
	.byte	0x11
	.byte	0x41
	.byte	0x7e
	.byte	0x4
	.set L$set$32,LCFI43-LCFI42
	.long L$set$32
	.byte	0xd
	.byte	0x1e
	.align 2
LEFDE19:
__ZL8end_gameiPKcz.eh:
LSFDE21:
	.set L$set$33,LEFDE21-LASFDE21
	.long L$set$33
LASFDE21:
	.long	LASFDE21-EH_frame1
	.long	LFB24-.
	.set L$set$34,LFE24-LFB24
	.long L$set$34
	.byte	0x0
	.byte	0x4
	.set L$set$35,LCFI47-LFB24
	.long L$set$35
	.byte	0xe
	.byte	0x70
	.byte	0x9f
	.byte	0x1
	.byte	0x9e
	.byte	0x2
	.byte	0x11
	.byte	0x41
	.byte	0x7e
	.byte	0x4
	.set L$set$36,LCFI48-LCFI47
	.long L$set$36
	.byte	0xd
	.byte	0x1e
	.align 2
LEFDE21:
	.globl __Z11deserializePc.eh
__Z11deserializePc.eh:
LSFDE23:
	.set L$set$37,LEFDE23-LASFDE23
	.long L$set$37
LASFDE23:
	.long	LASFDE23-EH_frame1
	.long	LFB27-.
	.set L$set$38,LFE27-LFB27
	.long L$set$38
	.byte	0x0
	.byte	0x4
	.set L$set$39,LCFI52-LFB27
	.long L$set$39
	.byte	0xe
	.byte	0xb0,0x3
	.byte	0x9f
	.byte	0x1
	.byte	0x9e
	.byte	0x2
	.byte	0x11
	.byte	0x41
	.byte	0x7e
	.byte	0x4
	.set L$set$40,LCFI53-LCFI52
	.long L$set$40
	.byte	0xd
	.byte	0x1e
	.align 2
LEFDE23:
	.globl __ZN5Board4drawEv.eh
__ZN5Board4drawEv.eh:
LSFDE25:
	.set L$set$41,LEFDE25-LASFDE25
	.long L$set$41
LASFDE25:
	.long	LASFDE25-EH_frame1
	.long	LFB19-.
	.set L$set$42,LFE19-LFB19
	.long L$set$42
	.byte	0x0
	.byte	0x4
	.set L$set$43,LCFI57-LFB19
	.long L$set$43
	.byte	0xe
	.byte	0x60
	.byte	0x9f
	.byte	0x1
	.byte	0x9e
	.byte	0x2
	.byte	0x11
	.byte	0x41
	.byte	0x7e
	.byte	0x4
	.set L$set$44,LCFI58-LCFI57
	.long L$set$44
	.byte	0xd
	.byte	0x1e
	.align 2
LEFDE25:
__ZL5errorPKcz.eh:
LSFDE27:
	.set L$set$45,LEFDE27-LASFDE27
	.long L$set$45
LASFDE27:
	.long	LASFDE27-EH_frame1
	.long	LFB3-.
	.set L$set$46,LFE3-LFB3
	.long L$set$46
	.byte	0x0
	.byte	0x4
	.set L$set$47,LCFI62-LFB3
	.long L$set$47
	.byte	0xe
	.byte	0x60
	.byte	0x9f
	.byte	0x1
	.byte	0x9e
	.byte	0x2
	.byte	0x9d
	.byte	0x3
	.byte	0x11
	.byte	0x41
	.byte	0x7e
	.byte	0x4
	.set L$set$48,LCFI63-LCFI62
	.long L$set$48
	.byte	0xd
	.byte	0x1e
	.align 2
LEFDE27:
	.globl __ZN5Board11from_stringEPKc.eh
__ZN5Board11from_stringEPKc.eh:
LSFDE29:
	.set L$set$49,LEFDE29-LASFDE29
	.long L$set$49
LASFDE29:
	.long	LASFDE29-EH_frame1
	.long	LFB14-.
	.set L$set$50,LFE14-LFB14
	.long L$set$50
	.byte	0x0
	.byte	0x4
	.set L$set$51,LCFI67-LFB14
	.long L$set$51
	.byte	0xe
	.byte	0x70
	.byte	0x9f
	.byte	0x1
	.byte	0x9e
	.byte	0x2
	.byte	0x11
	.byte	0x41
	.byte	0x7e
	.byte	0x4
	.set L$set$52,LCFI68-LCFI67
	.long L$set$52
	.byte	0xd
	.byte	0x1e
	.align 2
LEFDE29:
	.globl __ZN5BoardC1Ev.eh
	.weak_definition __ZN5BoardC1Ev.eh
__ZN5BoardC1Ev.eh:
LSFDE31:
	.set L$set$53,LEFDE31-LASFDE31
	.long L$set$53
LASFDE31:
	.long	LASFDE31-EH_frame1
	.long	LFB7-.
	.set L$set$54,LFE7-LFB7
	.long L$set$54
	.byte	0x0
	.byte	0x4
	.set L$set$55,LCFI72-LFB7
	.long L$set$55
	.byte	0xe
	.byte	0x50
	.byte	0x9f
	.byte	0x1
	.byte	0x9e
	.byte	0x2
	.byte	0x11
	.byte	0x41
	.byte	0x7e
	.byte	0x4
	.set L$set$56,LCFI73-LCFI72
	.long L$set$56
	.byte	0xd
	.byte	0x1e
	.align 2
LEFDE31:
__Z41__static_initialization_and_destruction_0ii.eh:
LSFDE33:
	.set L$set$57,LEFDE33-LASFDE33
	.long L$set$57
LASFDE33:
	.long	LASFDE33-EH_frame1
	.long	LFB29-.
	.set L$set$58,LFE29-LFB29
	.long L$set$58
	.byte	0x0
	.byte	0x4
	.set L$set$59,LCFI77-LFB29
	.long L$set$59
	.byte	0xe
	.byte	0x50
	.byte	0x9f
	.byte	0x1
	.byte	0x9e
	.byte	0x2
	.byte	0x11
	.byte	0x41
	.byte	0x7e
	.byte	0x4
	.set L$set$60,LCFI78-LCFI77
	.long L$set$60
	.byte	0xd
	.byte	0x1e
	.align 2
LEFDE33:
	.globl __Z4initPKc.eh
__Z4initPKc.eh:
LSFDE37:
	.set L$set$61,LEFDE37-LASFDE37
	.long L$set$61
LASFDE37:
	.long	LASFDE37-EH_frame1
	.long	LFB25-.
	.set L$set$62,LFE25-LFB25
	.long L$set$62
	.byte	0x0
	.byte	0x4
	.set L$set$63,LCFI87-LFB25
	.long L$set$63
	.byte	0xe
	.byte	0x50
	.byte	0x9f
	.byte	0x1
	.byte	0x9e
	.byte	0x2
	.byte	0x11
	.byte	0x41
	.byte	0x7e
	.byte	0x4
	.set L$set$64,LCFI88-LCFI87
	.long L$set$64
	.byte	0xd
	.byte	0x1e
	.align 2
LEFDE37:
	.non_lazy_symbol_pointer
L_debug$non_lazy_ptr:
	.indirect_symbol _debug
	.long	0
L___stderrp$non_lazy_ptr:
	.indirect_symbol ___stderrp
	.long	0
L___gxx_personality_v0$non_lazy_ptr:
	.indirect_symbol ___gxx_personality_v0
	.long	0
	.constructor
	.destructor
	.align 1
	.subsections_via_symbols
#endif
#ifdef __ppc64__
	.section __TEXT,__text,regular,pure_instructions
	.section __TEXT,__picsymbolstub1,symbol_stubs,pure_instructions,32
	.machine ppc64
	.mod_init_func
	.align 3
	.quad	__GLOBAL__I__ZN5Board11from_stringEPKc
	.text
	.align 2
	.globl __ZN5BoardC2Ejjj
__ZN5BoardC2Ejjj:
LFB17:
	std r30,-16(r1)
LCFI0:
	stdu r1,-112(r1)
LCFI1:
	mr r30,r1
LCFI2:
	std r3,160(r30)
	mr r0,r4
	mr r2,r5
	mr r9,r6
	stw r0,168(r30)
	stw r2,176(r30)
	stw r9,184(r30)
	li r0,1
	stw r0,92(r30)
	li r0,0
	stw r0,88(r30)
	b L2
L3:
	lwz r0,88(r30)
	srawi r0,r0,2
	addze r0,r0
	extsw r0,r0
	rlwinm r0,r0,0,31,31
	stw r0,84(r30)
	lwz r2,168(r30)
	lwz r0,92(r30)
	and r0,r2,r0
	rldicl r0,r0,0,32
	cmpdi cr7,r0,0
	beq cr7,L4
	lwz r0,88(r30)
	slwi r0,r0,1
	extsw r2,r0
	lwz r0,84(r30)
	subf r0,r0,r2
	extsw r2,r0
	addi r0,r2,1
	extsw r0,r0
	std r0,48(r30)
	lwz r2,184(r30)
	lwz r0,92(r30)
	and r0,r2,r0
	rldicl r0,r0,0,32
	cmpdi cr7,r0,0
	beq cr7,L6
	li r0,5
	std r0,56(r30)
	b L8
L6:
	li r9,1
	std r9,56(r30)
L8:
	ld r0,160(r30)
	ld r9,48(r30)
	sldi r2,r9,2
	add r2,r2,r0
	ld r0,56(r30)
	stw r0,0(r2)
L4:
	lwz r2,176(r30)
	lwz r0,92(r30)
	and r0,r2,r0
	rldicl r0,r0,0,32
	cmpdi cr7,r0,0
	beq cr7,L9
	lwz r0,88(r30)
	slwi r0,r0,1
	extsw r2,r0
	lwz r0,84(r30)
	subf r0,r0,r2
	extsw r2,r0
	addi r0,r2,1
	extsw r0,r0
	std r0,64(r30)
	lwz r2,184(r30)
	lwz r0,92(r30)
	and r0,r2,r0
	rldicl r0,r0,0,32
	cmpdi cr7,r0,0
	beq cr7,L11
	li r9,6
	std r9,72(r30)
	b L13
L11:
	li r0,2
	std r0,72(r30)
L13:
	ld r0,160(r30)
	ld r9,64(r30)
	sldi r2,r9,2
	add r2,r2,r0
	ld r0,72(r30)
	stw r0,0(r2)
L9:
	lwz r0,92(r30)
	slwi r0,r0,1
	stw r0,92(r30)
	lwz r2,88(r30)
	addi r0,r2,1
	stw r0,88(r30)
L2:
	lwz r0,88(r30)
	cmpwi cr7,r0,31
	ble cr7,L3
	ld r1,0(r1)
	ld r30,-16(r1)
	blr
LFE17:
	.align 2
	.globl __ZN5BoardC1Ejjj
__ZN5BoardC1Ejjj:
LFB18:
	std r30,-16(r1)
LCFI3:
	stdu r1,-112(r1)
LCFI4:
	mr r30,r1
LCFI5:
	std r3,160(r30)
	mr r0,r4
	mr r2,r5
	mr r9,r6
	stw r0,168(r30)
	stw r2,176(r30)
	stw r9,184(r30)
	li r0,1
	stw r0,92(r30)
	li r0,0
	stw r0,88(r30)
	b L17
L18:
	lwz r0,88(r30)
	srawi r0,r0,2
	addze r0,r0
	extsw r0,r0
	rlwinm r0,r0,0,31,31
	stw r0,84(r30)
	lwz r2,168(r30)
	lwz r0,92(r30)
	and r0,r2,r0
	rldicl r0,r0,0,32
	cmpdi cr7,r0,0
	beq cr7,L19
	lwz r0,88(r30)
	slwi r0,r0,1
	extsw r2,r0
	lwz r0,84(r30)
	subf r0,r0,r2
	extsw r2,r0
	addi r0,r2,1
	extsw r0,r0
	std r0,48(r30)
	lwz r2,184(r30)
	lwz r0,92(r30)
	and r0,r2,r0
	rldicl r0,r0,0,32
	cmpdi cr7,r0,0
	beq cr7,L21
	li r0,5
	std r0,56(r30)
	b L23
L21:
	li r9,1
	std r9,56(r30)
L23:
	ld r0,160(r30)
	ld r9,48(r30)
	sldi r2,r9,2
	add r2,r2,r0
	ld r0,56(r30)
	stw r0,0(r2)
L19:
	lwz r2,176(r30)
	lwz r0,92(r30)
	and r0,r2,r0
	rldicl r0,r0,0,32
	cmpdi cr7,r0,0
	beq cr7,L24
	lwz r0,88(r30)
	slwi r0,r0,1
	extsw r2,r0
	lwz r0,84(r30)
	subf r0,r0,r2
	extsw r2,r0
	addi r0,r2,1
	extsw r0,r0
	std r0,64(r30)
	lwz r2,184(r30)
	lwz r0,92(r30)
	and r0,r2,r0
	rldicl r0,r0,0,32
	cmpdi cr7,r0,0
	beq cr7,L26
	li r9,6
	std r9,72(r30)
	b L28
L26:
	li r0,2
	std r0,72(r30)
L28:
	ld r0,160(r30)
	ld r9,64(r30)
	sldi r2,r9,2
	add r2,r2,r0
	ld r0,72(r30)
	stw r0,0(r2)
L24:
	lwz r0,92(r30)
	slwi r0,r0,1
	stw r0,92(r30)
	lwz r2,88(r30)
	addi r0,r2,1
	stw r0,88(r30)
L17:
	lwz r0,88(r30)
	cmpwi cr7,r0,31
	ble cr7,L18
	ld r1,0(r1)
	ld r30,-16(r1)
	blr
LFE18:
	.section __TEXT,__textcoal_nt,coalesced,pure_instructions
	.align 2
	.globl __Z4swapI5FieldEvRT_S2_
	.weak_definition __Z4swapI5FieldEvRT_S2_
__Z4swapI5FieldEvRT_S2_:
LFB28:
	std r30,-16(r1)
LCFI6:
	stdu r1,-80(r1)
LCFI7:
	mr r30,r1
LCFI8:
	std r3,128(r30)
	std r4,136(r30)
	ld r2,136(r30)
	lwz r0,0(r2)
	stw r0,60(r30)
	ld r2,128(r30)
	lwz r0,0(r2)
	rldicl r0,r0,0,32
	ld r2,136(r30)
	stw r0,0(r2)
	ld r2,128(r30)
	lwz r0,60(r30)
	stw r0,0(r2)
	ld r1,0(r1)
	ld r30,-16(r1)
	blr
LFE28:
	.align 2
	.globl __ZN5BoardC1ERKS_
	.weak_definition __ZN5BoardC1ERKS_
__ZN5BoardC1ERKS_:
LFB10:
	mflr r0
LCFI9:
	std r30,-16(r1)
LCFI10:
	std r0,16(r1)
LCFI11:
	stdu r1,-128(r1)
LCFI12:
	mr r30,r1
LCFI13:
	std r3,176(r30)
	std r4,184(r30)
	ld r0,176(r30)
	ld r2,184(r30)
	mr r3,r0
	mr r4,r2
	li r5,256
	bl _memcpy
	ld r1,0(r1)
	ld r0,16(r1)
	mtlr r0
	ld r30,-16(r1)
	blr
LFE10:
	.cstring
	.align 3
LC0:
	.ascii "[mcp] upgrade\12\0"
	.text
	.align 2
	.globl __Z7upgradeR5Boardh
__Z7upgradeR5Boardh:
LFB23:
	mflr r0
LCFI14:
	std r30,-16(r1)
LCFI15:
	std r31,-8(r1)
LCFI16:
	std r0,16(r1)
LCFI17:
	stdu r1,-128(r1)
LCFI18:
	mr r30,r1
LCFI19:
	bcl 20,31,"L00000000001$pb"
"L00000000001$pb":
	mflr r31
	std r3,176(r30)
	mr r0,r4
	stb r0,184(r30)
	lbz r0,184(r30)
	rlwinm r0,r0,0,0xff
	cmplwi cr7,r0,7
	bgt cr7,L36
	lbz r0,184(r30)
	rldicl r0,r0,0,56
	ld r2,176(r30)
	sldi r0,r0,2
	add r2,r0,r2
	lwz r0,0(r2)
	rldicl r0,r0,0,32
	extsw r0,r0
	rldicl r0,r0,0,32
	rlwinm r0,r0,0,29,29
	cmpdi cr7,r0,0
	bne cr7,L36
	lbz r0,184(r30)
	rldicl r0,r0,0,56
	ld r2,176(r30)
	sldi r0,r0,2
	add r2,r0,r2
	li r0,6
	stw r0,0(r2)
	addis r2,r31,ha16(L___stderrp$non_lazy_ptr-"L00000000001$pb")
	ld r2,lo16(L___stderrp$non_lazy_ptr-"L00000000001$pb")(r2)
	ld r0,0(r2)
	addis r2,r31,ha16(LC0-"L00000000001$pb")
	la r3,lo16(LC0-"L00000000001$pb")(r2)
	li r4,1
	li r5,14
	mr r6,r0
	bl _fwrite
L36:
	lbz r0,184(r30)
	rlwinm r0,r0,0,0xff
	cmplwi cr7,r0,55
	ble cr7,L42
	lbz r0,184(r30)
	rldicl r0,r0,0,56
	ld r2,176(r30)
	sldi r0,r0,2
	add r2,r0,r2
	lwz r0,0(r2)
	rldicl r0,r0,0,32
	extsw r0,r0
	rldicl r0,r0,0,32
	rlwinm r0,r0,0,29,29
	cmpdi cr7,r0,0
	bne cr7,L42
	lbz r0,184(r30)
	rldicl r0,r0,0,56
	ld r2,176(r30)
	sldi r0,r0,2
	add r2,r0,r2
	li r0,5
	stw r0,0(r2)
	addis r2,r31,ha16(L___stderrp$non_lazy_ptr-"L00000000001$pb")
	ld r2,lo16(L___stderrp$non_lazy_ptr-"L00000000001$pb")(r2)
	ld r0,0(r2)
	addis r2,r31,ha16(LC0-"L00000000001$pb")
	la r3,lo16(LC0-"L00000000001$pb")(r2)
	li r4,1
	li r5,14
	mr r6,r0
	bl _fwrite
L42:
	ld r1,0(r1)
	ld r0,16(r1)
	mtlr r0
	ld r30,-16(r1)
	ld r31,-8(r1)
	blr
LFE23:
	.cstring
	.align 3
LC1:
	.ascii "logic.cc\0"
	.align 3
LC2:
	.ascii "(f == BLACK) || (f == WHITE)\0"
	.text
	.align 2
	.globl __Z9move_jump9MOVE_JUMPR5Boardhh5Field
__Z9move_jump9MOVE_JUMPR5Boardhh5Field:
LFB20:
	mflr r0
LCFI20:
	std r30,-16(r1)
LCFI21:
	std r31,-8(r1)
LCFI22:
	std r0,16(r1)
LCFI23:
	stdu r1,-176(r1)
LCFI24:
	mr r30,r1
LCFI25:
	bcl 20,31,"L00000000002$pb"
"L00000000002$pb":
	mflr r31
	mr r0,r3
	std r4,232(r30)
	mr r2,r5
	mr r9,r6
	mr r11,r7
	stw r0,224(r30)
	stb r2,240(r30)
	stb r9,248(r30)
	stw r11,256(r30)
	lwz r0,256(r30)
	cmpwi cr7,r0,1
	beq cr7,L44
	lwz r0,256(r30)
	cmpwi cr7,r0,2
	beq cr7,L44
	li r0,1
	std r0,112(r30)
	b L47
L44:
	li r0,0
	std r0,112(r30)
L47:
	ld r0,112(r30)
	cmpdi cr7,r0,0
	beq cr7,L48
	addis r2,r31,ha16(__ZZ9move_jump9MOVE_JUMPR5Boardhh5FieldE8__func__-"L00000000002$pb")
	la r3,lo16(__ZZ9move_jump9MOVE_JUMPR5Boardhh5FieldE8__func__-"L00000000002$pb")(r2)
	addis r2,r31,ha16(LC1-"L00000000002$pb")
	la r4,lo16(LC1-"L00000000002$pb")(r2)
	li r5,136
	addis r2,r31,ha16(LC2-"L00000000002$pb")
	la r6,lo16(LC2-"L00000000002$pb")(r2)
	bl ___assert_rtn
L48:
	lbz r0,240(r30)
	rlwinm r0,r0,0,0xff
	cmplwi cr7,r0,63
	bgt cr7,L50
	lbz r0,248(r30)
	rlwinm r0,r0,0,0xff
	cmplwi cr7,r0,63
	ble cr7,L52
L50:
	li r0,0
	std r0,120(r30)
	b L53
L52:
	lbz r0,240(r30)
	rldicl r0,r0,0,56
	ld r2,232(r30)
	sldi r0,r0,2
	add r2,r0,r2
	lwz r0,0(r2)
	rldicl r0,r0,0,32
	extsw r2,r0
	lwz r0,256(r30)
	extsw r0,r0
	and r0,r2,r0
	extsw r0,r0
	cmpdi cr7,r0,0
	bne cr7,L54
	li r0,0
	std r0,120(r30)
	b L53
L54:
	lbz r0,248(r30)
	rldicl r0,r0,0,56
	ld r2,232(r30)
	sldi r0,r0,2
	add r2,r0,r2
	lwz r0,0(r2)
	rldicl r0,r0,0,32
	cmpdi cr7,r0,0
	beq cr7,L56
	li r0,0
	std r0,120(r30)
	b L53
L56:
	lbz r0,240(r30)
	rlwinm r2,r0,0,0xff
	lbz r0,248(r30)
	rlwinm r0,r0,0,0xff
	cmplw cr7,r2,r0
	bge cr7,L58
	lwz r0,256(r30)
	extsw r0,r0
	rldicl r0,r0,0,32
	rlwinm r0,r0,0,30,30
	cmpdi cr7,r0,0
	beq cr7,L60
	lbz r0,240(r30)
	rldicl r0,r0,0,56
	ld r2,232(r30)
	sldi r0,r0,2
	add r2,r0,r2
	lwz r0,0(r2)
	rldicl r0,r0,0,32
	extsw r0,r0
	rldicl r0,r0,0,32
	rlwinm r0,r0,0,29,29
	cmpdi cr7,r0,0
	bne cr7,L60
	li r0,0
	std r0,120(r30)
	b L53
L60:
	lbz r0,240(r30)
	rldicl r0,r0,0,56
	rldicl r2,r0,0,32
	rldicl r2,r2,0,61
	lbz r0,248(r30)
	rldicl r0,r0,0,56
	rldicl r0,r0,0,32
	rldicl r0,r0,0,61
	cmpw cr7,r2,r0
	bge cr7,L63
	li r0,9
	std r0,128(r30)
	b L65
L63:
	li r0,7
	std r0,128(r30)
L65:
	ld r0,128(r30)
	stb r0,159(r30)
	b L66
L58:
	lwz r0,256(r30)
	extsw r0,r0
	rldicl r0,r0,0,32
	rldicl r0,r0,0,63
	rldicl r0,r0,0,56
	cmpdi cr7,r0,0
	beq cr7,L67
	lbz r0,240(r30)
	rldicl r0,r0,0,56
	ld r2,232(r30)
	sldi r0,r0,2
	add r2,r0,r2
	lwz r0,0(r2)
	rldicl r0,r0,0,32
	extsw r0,r0
	rldicl r0,r0,0,32
	rlwinm r0,r0,0,29,29
	cmpdi cr7,r0,0
	bne cr7,L67
	li r0,0
	std r0,120(r30)
	b L53
L67:
	lbz r0,240(r30)
	rldicl r0,r0,0,56
	rldicl r2,r0,0,32
	rldicl r2,r2,0,61
	lbz r0,248(r30)
	rldicl r0,r0,0,56
	rldicl r0,r0,0,32
	rldicl r0,r0,0,61
	cmpw cr7,r2,r0
	bge cr7,L70
	li r0,-7
	std r0,136(r30)
	b L72
L70:
	li r0,-9
	std r0,136(r30)
L72:
	ld r0,136(r30)
	stb r0,159(r30)
L66:
	lbz r0,248(r30)
	rldicl r2,r0,0,56
	lbz r0,240(r30)
	rldicl r0,r0,0,56
	subf r0,r0,r2
	extsw r2,r0
	lbz r0,159(r30)
	extsb r9,r0
	mr r0,r9
	divw r0,r2,r0
	mullw r0,r0,r9
	subf r0,r0,r2
	extsw r0,r0
	cmpdi cr7,r0,0
	beq cr7,L73
	li r0,0
	std r0,120(r30)
	b L53
L73:
	lbz r0,248(r30)
	rldicl r2,r0,0,56
	lbz r0,240(r30)
	rldicl r0,r0,0,56
	subf r0,r0,r2
	extsw r2,r0
	lbz r0,159(r30)
	extsb r0,r0
	divw r0,r2,r0
	extsw r2,r0
	lwz r0,224(r30)
	extsw r0,r0
	cmpw cr7,r2,r0
	beq cr7,L75
	li r0,0
	std r0,120(r30)
	b L53
L75:
	lbz r0,248(r30)
	stb r0,158(r30)
	lwz r0,224(r30)
	cmpwi cr7,r0,2
	bne cr7,L77
	lbz r0,159(r30)
	rldicl r2,r0,0,56
	lbz r0,158(r30)
	subf r0,r2,r0
	stb r0,158(r30)
	lbz r0,158(r30)
	rldicl r0,r0,0,56
	ld r2,232(r30)
	sldi r0,r0,2
	add r2,r0,r2
	lwz r0,0(r2)
	rldicl r0,r0,0,32
	cmpdi cr7,r0,0
	beq cr7,L79
	lbz r0,158(r30)
	rldicl r0,r0,0,56
	ld r2,232(r30)
	sldi r0,r0,2
	add r2,r0,r2
	lwz r0,0(r2)
	rldicl r0,r0,0,32
	extsw r2,r0
	lwz r0,256(r30)
	extsw r0,r0
	and r0,r2,r0
	extsw r0,r0
	cmpdi cr7,r0,0
	beq cr7,L81
L79:
	li r0,0
	std r0,120(r30)
	b L53
L81:
	lbz r0,158(r30)
	rldicl r0,r0,0,56
	ld r2,232(r30)
	sldi r0,r0,2
	add r2,r0,r2
	li r0,0
	stw r0,0(r2)
L77:
	lbz r0,240(r30)
	rldicl r0,r0,0,56
	sldi r2,r0,2
	ld r0,232(r30)
	add r9,r2,r0
	lbz r0,248(r30)
	rldicl r0,r0,0,56
	sldi r2,r0,2
	ld r0,232(r30)
	add r0,r2,r0
	mr r3,r9
	mr r4,r0
	bl __Z4swapI5FieldEvRT_S2_
	li r0,1
	std r0,120(r30)
L53:
	ld r0,120(r30)
	mr r3,r0
	ld r1,0(r1)
	ld r0,16(r1)
	mtlr r0
	ld r30,-16(r1)
	ld r31,-8(r1)
	blr
LFE20:
	.align 2
	.globl __Z15check_move_jump9MOVE_JUMPRK5Boardh5Field
__Z15check_move_jump9MOVE_JUMPRK5Boardh5Field:
LFB21:
	mflr r0
LCFI26:
	std r30,-16(r1)
LCFI27:
	std r0,16(r1)
LCFI28:
	stdu r1,-400(r1)
LCFI29:
	mr r30,r1
LCFI30:
	mr r9,r3
	std r4,456(r30)
	mr r0,r5
	mr r2,r6
	stw r9,448(r30)
	stb r0,464(r30)
	stw r2,472(r30)
	addi r0,r30,128
	mr r3,r0
	ld r4,456(r30)
	bl __ZN5BoardC1ERKS_
	lwz r0,448(r30)
	extsw r0,r0
	mulli r0,r0,9
	extsw r0,r0
	rldicl r2,r0,0,56
	lbz r0,464(r30)
	subf r0,r2,r0
	rldicl r10,r0,0,56
	lwz r0,448(r30)
	rldicl r9,r0,0,32
	addi r11,r30,128
	lbz r0,464(r30)
	rldicl r2,r0,0,56
	lwz r0,472(r30)
	rldicl r0,r0,0,32
	mr r3,r9
	mr r4,r11
	mr r5,r2
	mr r6,r10
	mr r7,r0
	bl __Z9move_jump9MOVE_JUMPR5Boardhh5Field
	mr r0,r3
	srawi r2,r0,31
	xor r0,r2,r0
	subf r0,r2,r0
	neg r0,r0
	srwi r0,r0,31
	extsw r0,r0
	cmpdi cr7,r0,0
	beq cr7,L84
	li r0,1
	std r0,120(r30)
	b L86
L84:
	lwz r0,448(r30)
	extsw r0,r0
	mulli r0,r0,7
	extsw r0,r0
	rldicl r2,r0,0,56
	lbz r0,464(r30)
	subf r0,r2,r0
	rldicl r10,r0,0,56
	lwz r0,448(r30)
	rldicl r9,r0,0,32
	addi r11,r30,128
	lbz r0,464(r30)
	rldicl r2,r0,0,56
	lwz r0,472(r30)
	rldicl r0,r0,0,32
	mr r3,r9
	mr r4,r11
	mr r5,r2
	mr r6,r10
	mr r7,r0
	bl __Z9move_jump9MOVE_JUMPR5Boardhh5Field
	mr r0,r3
	srawi r2,r0,31
	xor r0,r2,r0
	subf r0,r2,r0
	neg r0,r0
	srwi r0,r0,31
	extsw r0,r0
	cmpdi cr7,r0,0
	beq cr7,L87
	li r0,1
	std r0,120(r30)
	b L86
L87:
	lwz r0,448(r30)
	extsw r0,r0
	mulli r0,r0,7
	extsw r0,r0
	rldicl r2,r0,0,56
	lbz r0,464(r30)
	add r0,r0,r2
	rldicl r10,r0,0,56
	lwz r0,448(r30)
	rldicl r9,r0,0,32
	addi r11,r30,128
	lbz r0,464(r30)
	rldicl r2,r0,0,56
	lwz r0,472(r30)
	rldicl r0,r0,0,32
	mr r3,r9
	mr r4,r11
	mr r5,r2
	mr r6,r10
	mr r7,r0
	bl __Z9move_jump9MOVE_JUMPR5Boardhh5Field
	mr r0,r3
	srawi r2,r0,31
	xor r0,r2,r0
	subf r0,r2,r0
	neg r0,r0
	srwi r0,r0,31
	extsw r0,r0
	cmpdi cr7,r0,0
	beq cr7,L89
	li r0,1
	std r0,120(r30)
	b L86
L89:
	lwz r0,448(r30)
	extsw r0,r0
	mulli r0,r0,9
	extsw r0,r0
	rldicl r2,r0,0,56
	lbz r0,464(r30)
	add r0,r0,r2
	rldicl r10,r0,0,56
	lwz r0,448(r30)
	rldicl r9,r0,0,32
	addi r11,r30,128
	lbz r0,464(r30)
	rldicl r2,r0,0,56
	lwz r0,472(r30)
	rldicl r0,r0,0,32
	mr r3,r9
	mr r4,r11
	mr r5,r2
	mr r6,r10
	mr r7,r0
	bl __Z9move_jump9MOVE_JUMPR5Boardhh5Field
	mr r0,r3
	srawi r2,r0,31
	xor r0,r2,r0
	subf r0,r2,r0
	neg r0,r0
	srwi r0,r0,31
	extsw r0,r0
	cmpdi cr7,r0,0
	beq cr7,L91
	li r0,1
	std r0,120(r30)
	b L86
L91:
	li r2,0
	std r2,120(r30)
L86:
	ld r0,120(r30)
	mr r3,r0
	ld r1,0(r1)
	ld r0,16(r1)
	mtlr r0
	ld r30,-16(r1)
	blr
LFE21:
	.cstring
	.align 3
LC3:
	.ascii "f == BLACK || f == WHITE\0"
	.text
	.align 2
	.globl __Z13can_move_jump9MOVE_JUMPRK5Board5Field
__Z13can_move_jump9MOVE_JUMPRK5Board5Field:
LFB22:
	mflr r0
LCFI31:
	std r30,-16(r1)
LCFI32:
	std r31,-8(r1)
LCFI33:
	std r0,16(r1)
LCFI34:
	stdu r1,-176(r1)
LCFI35:
	mr r30,r1
LCFI36:
	bcl 20,31,"L00000000003$pb"
"L00000000003$pb":
	mflr r31
	mr r2,r3
	std r4,232(r30)
	mr r0,r5
	stw r2,224(r30)
	stw r0,240(r30)
	lwz r0,240(r30)
	cmpwi cr7,r0,1
	beq cr7,L95
	lwz r0,240(r30)
	cmpwi cr7,r0,2
	beq cr7,L95
	li r0,1
	std r0,120(r30)
	b L98
L95:
	li r0,0
	std r0,120(r30)
L98:
	ld r0,120(r30)
	cmpdi cr7,r0,0
	beq cr7,L99
	addis r2,r31,ha16(__ZZ13can_move_jump9MOVE_JUMPRK5Board5FieldE8__func__-"L00000000003$pb")
	la r3,lo16(__ZZ13can_move_jump9MOVE_JUMPRK5Board5FieldE8__func__-"L00000000003$pb")(r2)
	addis r2,r31,ha16(LC1-"L00000000003$pb")
	la r4,lo16(LC1-"L00000000003$pb")(r2)
	li r5,190
	addis r2,r31,ha16(LC3-"L00000000003$pb")
	la r6,lo16(LC3-"L00000000003$pb")(r2)
	bl ___assert_rtn
L99:
	li r0,0
	stb r0,159(r30)
	b L101
L102:
	lbz r0,159(r30)
	rldicl r0,r0,0,56
	ld r2,232(r30)
	sldi r0,r0,2
	add r2,r0,r2
	lwz r0,0(r2)
	rldicl r0,r0,0,32
	extsw r2,r0
	lwz r0,240(r30)
	extsw r0,r0
	and r0,r2,r0
	extsw r0,r0
	cmpdi cr7,r0,0
	beq cr7,L103
	lwz r0,224(r30)
	rldicl r2,r0,0,32
	lbz r0,159(r30)
	rldicl r9,r0,0,56
	lwz r0,240(r30)
	rldicl r0,r0,0,32
	mr r3,r2
	ld r4,232(r30)
	mr r5,r9
	mr r6,r0
	bl __Z15check_move_jump9MOVE_JUMPRK5Boardh5Field
	mr r0,r3
	xori r0,r0,1
	rldicl r0,r0,0,56
	cmpdi cr7,r0,0
	bne cr7,L103
	li r0,1
	std r0,128(r30)
	b L106
L103:
	li r0,0
	std r0,128(r30)
L106:
	ld r0,128(r30)
	cmpdi cr7,r0,0
	beq cr7,L107
	li r0,1
	std r0,136(r30)
	b L109
L107:
	lbz r2,159(r30)
	addi r0,r2,1
	stb r0,159(r30)
L101:
	lbz r0,159(r30)
	rlwinm r0,r0,0,0xff
	cmplwi cr7,r0,63
	ble cr7,L102
	li r0,0
	std r0,136(r30)
L109:
	ld r0,136(r30)
	mr r3,r0
	ld r1,0(r1)
	ld r0,16(r1)
	mtlr r0
	ld r30,-16(r1)
	ld r31,-8(r1)
	blr
LFE22:
	.cstring
	.align 3
LC4:
	.ascii "0\0"
	.text
	.align 2
	.globl __ZN5Board9to_stringEPc
__ZN5Board9to_stringEPc:
LFB15:
	mflr r0
LCFI37:
	std r30,-16(r1)
LCFI38:
	std r31,-8(r1)
LCFI39:
	std r0,16(r1)
LCFI40:
	stdu r1,-160(r1)
LCFI41:
	mr r30,r1
LCFI42:
	bcl 20,31,"L00000000004$pb"
"L00000000004$pb":
	mflr r31
	std r3,208(r30)
	std r4,216(r30)
	li r0,0
	stw r0,140(r30)
	b L113
L114:
	lwz r0,140(r30)
	srawi r0,r0,2
	addze r0,r0
	extsw r0,r0
	rlwinm r0,r0,0,31,31
	stw r0,136(r30)
	lwz r0,140(r30)
	slwi r0,r0,1
	extsw r2,r0
	lwz r0,136(r30)
	subf r0,r0,r2
	extsw r2,r0
	addi r0,r2,1
	extsw r0,r0
	ld r2,208(r30)
	sldi r0,r0,2
	add r2,r0,r2
	lwz r0,0(r2)
	rldicl r0,r0,0,32
	extsw r0,r0
	std r0,120(r30)
	ld r0,120(r30)
	cmplwi cr7,r0,6
	bgt cr7,L115
	ld r2,120(r30)
	rldicl r0,r2,0,32
	sldi r0,r0,2
	addis r2,r31,ha16(L121-"L00000000004$pb")
	la r2,lo16(L121-"L00000000004$pb")(r2)
	add r2,r0,r2
	lwz r0,0(r2)
	addis r2,r31,ha16(L121-"L00000000004$pb")
	la r2,lo16(L121-"L00000000004$pb")(r2)
	extsw r0,r0
	add r0,r0,r2
	mtctr r0
	bctr
	.p2align 2
L121:
	.long L116-L121
	.long L117-L121
	.long L118-L121
	.long L115-L121
	.long L115-L121
	.long L119-L121
	.long L120-L121
L117:
	lwz r0,140(r30)
	extsw r0,r0
	mr r2,r0
	ld r0,216(r30)
	add r2,r2,r0
	li r0,98
	stb r0,0(r2)
	b L122
L118:
	lwz r0,140(r30)
	extsw r0,r0
	mr r2,r0
	ld r0,216(r30)
	add r2,r2,r0
	li r0,119
	stb r0,0(r2)
	b L122
L119:
	lwz r0,140(r30)
	extsw r0,r0
	mr r2,r0
	ld r0,216(r30)
	add r2,r2,r0
	li r0,66
	stb r0,0(r2)
	b L122
L120:
	lwz r0,140(r30)
	extsw r0,r0
	mr r2,r0
	ld r0,216(r30)
	add r2,r2,r0
	li r0,87
	stb r0,0(r2)
	b L122
L116:
	lwz r0,140(r30)
	extsw r0,r0
	mr r2,r0
	ld r0,216(r30)
	add r2,r2,r0
	li r0,45
	stb r0,0(r2)
	b L122
L115:
	addis r2,r31,ha16(__ZZN5Board9to_stringEPcE8__func__-"L00000000004$pb")
	la r3,lo16(__ZZN5Board9to_stringEPcE8__func__-"L00000000004$pb")(r2)
	addis r2,r31,ha16(LC1-"L00000000004$pb")
	la r4,lo16(LC1-"L00000000004$pb")(r2)
	li r5,97
	addis r2,r31,ha16(LC4-"L00000000004$pb")
	la r6,lo16(LC4-"L00000000004$pb")(r2)
	bl ___assert_rtn
L122:
	ld r2,216(r30)
	addi r2,r2,32
	li r0,0
	stb r0,0(r2)
	lwz r2,140(r30)
	addi r0,r2,1
	stw r0,140(r30)
L113:
	lwz r0,140(r30)
	cmpwi cr7,r0,31
	ble cr7,L114
	ld r1,0(r1)
	ld r0,16(r1)
	mtlr r0
	ld r30,-16(r1)
	ld r31,-8(r1)
	blr
LFE15:
	.align 2
	.globl __Z9serializev
__Z9serializev:
LFB26:
	mflr r0
LCFI43:
	std r30,-16(r1)
LCFI44:
	std r31,-8(r1)
LCFI45:
	std r0,16(r1)
LCFI46:
	stdu r1,-144(r1)
LCFI47:
	mr r30,r1
LCFI48:
	bcl 20,31,"L00000000005$pb"
"L00000000005$pb":
	mflr r31
	addis r2,r31,ha16(_turn-"L00000000005$pb")
	la r2,lo16(_turn-"L00000000005$pb")(r2)
	lwz r0,0(r2)
	extsw r0,r0
	rldicl r0,r0,0,32
	rldicl r0,r0,0,63
	rldicl r0,r0,0,56
	cmpdi cr7,r0,0
	beq cr7,L126
	li r0,87
	std r0,120(r30)
	b L128
L126:
	li r0,66
	std r0,120(r30)
L128:
	addis r2,r31,ha16(_buffer-"L00000000005$pb")
	la r2,lo16(_buffer-"L00000000005$pb")(r2)
	ld r0,120(r30)
	stb r0,0(r2)
	addis r2,r31,ha16(_buffer-"L00000000005$pb")
	la r2,lo16(_buffer-"L00000000005$pb")(r2)
	li r0,58
	stb r0,1(r2)
	addis r2,r31,ha16(_buffer-"L00000000005$pb")
	la r2,lo16(_buffer-"L00000000005$pb")(r2)
	addi r0,r2,2
	addis r2,r31,ha16(_b-"L00000000005$pb")
	la r3,lo16(_b-"L00000000005$pb")(r2)
	mr r4,r0
	bl __ZN5Board9to_stringEPc
	addis r2,r31,ha16(_buffer-"L00000000005$pb")
	la r2,lo16(_buffer-"L00000000005$pb")(r2)
	li r0,10
	stb r0,34(r2)
	addis r2,r31,ha16(_buffer-"L00000000005$pb")
	la r2,lo16(_buffer-"L00000000005$pb")(r2)
	li r0,0
	stb r0,35(r2)
	addis r2,r31,ha16(_buffer-"L00000000005$pb")
	la r0,lo16(_buffer-"L00000000005$pb")(r2)
	mr r3,r0
	ld r1,0(r1)
	ld r0,16(r1)
	mtlr r0
	ld r30,-16(r1)
	ld r31,-8(r1)
	blr
LFE26:
	.cstring
	.align 3
LC5:
	.ascii "[mcp] \0"
	.align 3
LC6:
	.ascii "(winner >= 0) && (winner <= 2)\0"
	.align 3
LC7:
	.ascii "[mcp] DRAW.\12\0"
	.align 3
LC8:
	.ascii "BLACK\0"
	.align 3
LC9:
	.ascii "WHITE\0"
	.align 3
LC10:
	.ascii "[mcp] %s wins.\12\0"
	.text
	.align 2
__ZL8end_gameiPKcz:
LFB24:
	mflr r0
LCFI49:
	std r30,-16(r1)
LCFI50:
	std r31,-8(r1)
LCFI51:
	std r0,16(r1)
LCFI52:
	stdu r1,-176(r1)
LCFI53:
	mr r30,r1
LCFI54:
	bcl 20,31,"L00000000006$pb"
"L00000000006$pb":
	mflr r31
	mr r0,r3
	std r5,240(r30)
	std r6,248(r30)
	std r7,256(r30)
	std r8,264(r30)
	std r9,272(r30)
	std r10,280(r30)
	std r4,232(r30)
	stw r0,224(r30)
	addis r2,r31,ha16(L___stderrp$non_lazy_ptr-"L00000000006$pb")
	ld r2,lo16(L___stderrp$non_lazy_ptr-"L00000000006$pb")(r2)
	ld r0,0(r2)
	addis r2,r31,ha16(LC5-"L00000000006$pb")
	la r3,lo16(LC5-"L00000000006$pb")(r2)
	li r4,1
	li r5,6
	mr r6,r0
	bl _fwrite
	addi r0,r30,240
	std r0,152(r30)
	addis r2,r31,ha16(L___stderrp$non_lazy_ptr-"L00000000006$pb")
	ld r2,lo16(L___stderrp$non_lazy_ptr-"L00000000006$pb")(r2)
	ld r0,0(r2)
	ld r2,152(r30)
	mr r3,r0
	ld r4,232(r30)
	mr r5,r2
	bl _vfprintf
	addis r2,r31,ha16(L___stderrp$non_lazy_ptr-"L00000000006$pb")
	ld r2,lo16(L___stderrp$non_lazy_ptr-"L00000000006$pb")(r2)
	ld r0,0(r2)
	li r3,10
	mr r4,r0
	bl _fputc
	lwz r0,224(r30)
	cmpwi cr7,r0,0
	blt cr7,L131
	lwz r0,224(r30)
	cmpwi cr7,r0,2
	ble cr7,L133
L131:
	li r0,1
	std r0,120(r30)
	b L134
L133:
	li r0,0
	std r0,120(r30)
L134:
	ld r0,120(r30)
	cmpdi cr7,r0,0
	beq cr7,L135
	addis r2,r31,ha16(__ZZL8end_gameiPKczE8__func__-"L00000000006$pb")
	la r3,lo16(__ZZL8end_gameiPKczE8__func__-"L00000000006$pb")(r2)
	addis r2,r31,ha16(LC1-"L00000000006$pb")
	la r4,lo16(LC1-"L00000000006$pb")(r2)
	li r5,219
	addis r2,r31,ha16(LC6-"L00000000006$pb")
	la r6,lo16(LC6-"L00000000006$pb")(r2)
	bl ___assert_rtn
L135:
	lwz r0,224(r30)
	cmpwi cr7,r0,2
	bne cr7,L137
	addis r2,r31,ha16(L___stderrp$non_lazy_ptr-"L00000000006$pb")
	ld r2,lo16(L___stderrp$non_lazy_ptr-"L00000000006$pb")(r2)
	ld r0,0(r2)
	addis r2,r31,ha16(LC7-"L00000000006$pb")
	la r3,lo16(LC7-"L00000000006$pb")(r2)
	li r4,1
	li r5,12
	mr r6,r0
	bl _fwrite
	b L139
L137:
	addis r2,r31,ha16(L___stderrp$non_lazy_ptr-"L00000000006$pb")
	ld r2,lo16(L___stderrp$non_lazy_ptr-"L00000000006$pb")(r2)
	ld r2,0(r2)
	std r2,128(r30)
	lwz r0,224(r30)
	cmpwi cr7,r0,0
	beq cr7,L140
	addis r2,r31,ha16(LC8-"L00000000006$pb")
	la r2,lo16(LC8-"L00000000006$pb")(r2)
	std r2,136(r30)
	b L142
L140:
	addis r2,r31,ha16(LC9-"L00000000006$pb")
	la r2,lo16(LC9-"L00000000006$pb")(r2)
	std r2,136(r30)
L142:
	ld r0,136(r30)
	ld r3,128(r30)
	addis r2,r31,ha16(LC10-"L00000000006$pb")
	la r4,lo16(LC10-"L00000000006$pb")(r2)
	mr r5,r0
	bl _fprintf
L139:
	li r3,0
	bl _exit
LFE24:
	.cstring
	.align 3
LC11:
	.ascii "no move '%s'\0"
	.align 3
LC12:
	.ascii "error parsing move '%s'\0"
	.align 3
LC13:
	.ascii "INVALID move %ld-%ld (jump forced)\12\0"
	.align 3
LC14:
	.ascii "INVALID move %ld-%ld (jump forced)\0"
	.align 3
LC15:
	.ascii "INVALID move %ld-%ld\12\0"
	.align 3
LC16:
	.ascii "INVALID move %ld-%ld\0"
	.align 3
LC17:
	.ascii "[mcp] valid move %ld-%ld\12\0"
	.align 3
LC18:
	.ascii "error parsing '%s'\0"
	.align 3
LC19:
	.ascii "INVALID jump %ldx%ld\12\0"
	.align 3
LC20:
	.ascii "INVALID jump %ldx%ld\0"
	.align 3
LC21:
	.ascii "[mcp] valid jump %ldx%ld\12\0"
	.align 3
LC22:
	.ascii "INVALID jump (jump forced %ld)\12\0"
	.align 3
LC23:
	.ascii "INVALID jump (jump forced %ld)\0"
	.align 3
LC24:
	.ascii "no moves left\0"
	.align 3
LC25:
	.ascii "20 moves timeout\0"
	.text
	.align 2
	.globl __Z11deserializePc
__Z11deserializePc:
LFB27:
	mflr r0
LCFI55:
	std r30,-16(r1)
LCFI56:
	std r31,-8(r1)
LCFI57:
	std r0,16(r1)
LCFI58:
	stdu r1,-544(r1)
LCFI59:
	mr r30,r1
LCFI60:
	bcl 20,31,"L00000000007$pb"
"L00000000007$pb":
	mflr r31
	std r3,592(r30)
	ld r0,592(r30)
	std r0,504(r30)
	ld r2,504(r30)
	lbz r0,0(r2)
	extsb r0,r0
	cmpdi cr7,r0,0
	bne cr7,L145
	addis r2,r31,ha16(_turn-"L00000000007$pb")
	la r2,lo16(_turn-"L00000000007$pb")(r2)
	lwz r0,0(r2)
	extsw r0,r0
	rldicl r0,r0,0,32
	rldicl r0,r0,0,63
	mr r3,r0
	addis r2,r31,ha16(LC11-"L00000000007$pb")
	la r4,lo16(LC11-"L00000000007$pb")(r2)
	ld r5,592(r30)
	bl __ZL8end_gameiPKcz
L145:
	ld r0,504(r30)
	addi r2,r30,504
	mr r3,r0
	mr r4,r2
	li r5,10
	bl _strtol
	mr r0,r3
	std r0,496(r30)
	ld r2,504(r30)
	lbz r0,0(r2)
	extsb r0,r0
	cmpwi cr7,r0,45
	bne cr7,L147
	ld r2,504(r30)
	addi r0,r2,1
	std r0,504(r30)
	ld r0,504(r30)
	addi r2,r30,504
	mr r3,r0
	mr r4,r2
	li r5,10
	bl _strtol
	mr r0,r3
	std r0,488(r30)
	ld r2,504(r30)
	lbz r0,0(r2)
	extsb r0,r0
	cmpdi cr7,r0,0
	beq cr7,L149
	addis r2,r31,ha16(_turn-"L00000000007$pb")
	la r2,lo16(_turn-"L00000000007$pb")(r2)
	lwz r0,0(r2)
	extsw r0,r0
	rldicl r0,r0,0,32
	rldicl r0,r0,0,63
	mr r3,r0
	addis r2,r31,ha16(LC12-"L00000000007$pb")
	la r4,lo16(LC12-"L00000000007$pb")(r2)
	ld r5,592(r30)
	bl __ZL8end_gameiPKcz
L149:
	addis r2,r31,ha16(_turn-"L00000000007$pb")
	la r2,lo16(_turn-"L00000000007$pb")(r2)
	lwz r0,0(r2)
	extsw r0,r0
	rldicl r0,r0,0,32
	rldicl r0,r0,0,63
	rldicl r0,r0,0,56
	cmpdi cr7,r0,0
	beq cr7,L151
	li r0,2
	std r0,112(r30)
	b L153
L151:
	li r0,1
	std r0,112(r30)
L153:
	li r3,2
	addis r2,r31,ha16(_b-"L00000000007$pb")
	la r4,lo16(_b-"L00000000007$pb")(r2)
	ld r5,112(r30)
	bl __Z13can_move_jump9MOVE_JUMPRK5Board5Field
	mr r0,r3
	cmpdi cr7,r0,0
	beq cr7,L154
	addis r2,r31,ha16(L_debug$non_lazy_ptr-"L00000000007$pb")
	ld r2,lo16(L_debug$non_lazy_ptr-"L00000000007$pb")(r2)
	lbz r0,0(r2)
	rldicl r0,r0,0,56
	cmpdi cr7,r0,0
	beq cr7,L156
	addis r2,r31,ha16(L___stderrp$non_lazy_ptr-"L00000000007$pb")
	ld r2,lo16(L___stderrp$non_lazy_ptr-"L00000000007$pb")(r2)
	ld r0,0(r2)
	mr r3,r0
	addis r2,r31,ha16(LC13-"L00000000007$pb")
	la r4,lo16(LC13-"L00000000007$pb")(r2)
	ld r5,496(r30)
	ld r6,488(r30)
	bl _fprintf
	li r0,0
	std r0,120(r30)
	b L158
L156:
	addis r2,r31,ha16(_turn-"L00000000007$pb")
	la r2,lo16(_turn-"L00000000007$pb")(r2)
	lwz r0,0(r2)
	extsw r0,r0
	rldicl r0,r0,0,32
	rldicl r0,r0,0,63
	mr r3,r0
	addis r2,r31,ha16(LC14-"L00000000007$pb")
	la r4,lo16(LC14-"L00000000007$pb")(r2)
	ld r5,496(r30)
	ld r6,488(r30)
	bl __ZL8end_gameiPKcz
L154:
	ld r0,496(r30)
	sldi r0,r0,1
	rldicl r9,r0,0,32
	ld r2,496(r30)
	addi r0,r2,-1
	sradi r0,r0,2
	addze r0,r0
	rldicl r0,r0,0,32
	rldicl r0,r0,0,63
	subf r0,r0,r9
	rldicl r2,r0,0,32
	addi r0,r2,-1
	rldicl r0,r0,0,32
	stw r0,524(r30)
	ld r0,488(r30)
	sldi r0,r0,1
	rldicl r9,r0,0,32
	ld r2,488(r30)
	addi r0,r2,-1
	sradi r0,r0,2
	addze r0,r0
	rldicl r0,r0,0,32
	rldicl r0,r0,0,63
	subf r0,r0,r9
	rldicl r2,r0,0,32
	addi r0,r2,-1
	rldicl r0,r0,0,32
	stw r0,520(r30)
	lwz r0,524(r30)
	rldicl r0,r0,0,56
	std r0,128(r30)
	lwz r0,520(r30)
	rldicl r0,r0,0,56
	std r0,136(r30)
	addis r2,r31,ha16(_turn-"L00000000007$pb")
	la r2,lo16(_turn-"L00000000007$pb")(r2)
	lwz r0,0(r2)
	extsw r0,r0
	rldicl r0,r0,0,32
	rldicl r0,r0,0,63
	rldicl r0,r0,0,56
	cmpdi cr7,r0,0
	beq cr7,L159
	li r0,2
	std r0,144(r30)
	b L161
L159:
	li r0,1
	std r0,144(r30)
L161:
	li r3,1
	addis r2,r31,ha16(_b-"L00000000007$pb")
	la r4,lo16(_b-"L00000000007$pb")(r2)
	ld r5,128(r30)
	ld r6,136(r30)
	ld r7,144(r30)
	bl __Z9move_jump9MOVE_JUMPR5Boardhh5Field
	mr r0,r3
	cmpwi cr7,r0,0
	mfcr r0
	rlwinm r0,r0,31,1
	rldicl r0,r0,0,32
	cmpdi cr7,r0,0
	beq cr7,L162
	addis r2,r31,ha16(L_debug$non_lazy_ptr-"L00000000007$pb")
	ld r2,lo16(L_debug$non_lazy_ptr-"L00000000007$pb")(r2)
	lbz r0,0(r2)
	rldicl r0,r0,0,56
	cmpdi cr7,r0,0
	beq cr7,L164
	addis r2,r31,ha16(L___stderrp$non_lazy_ptr-"L00000000007$pb")
	ld r2,lo16(L___stderrp$non_lazy_ptr-"L00000000007$pb")(r2)
	ld r0,0(r2)
	mr r3,r0
	addis r2,r31,ha16(LC15-"L00000000007$pb")
	la r4,lo16(LC15-"L00000000007$pb")(r2)
	ld r5,496(r30)
	ld r6,488(r30)
	bl _fprintf
	li r0,0
	std r0,120(r30)
	b L158
L164:
	addis r2,r31,ha16(_turn-"L00000000007$pb")
	la r2,lo16(_turn-"L00000000007$pb")(r2)
	lwz r0,0(r2)
	extsw r0,r0
	rldicl r0,r0,0,32
	rldicl r0,r0,0,63
	mr r3,r0
	addis r2,r31,ha16(LC16-"L00000000007$pb")
	la r4,lo16(LC16-"L00000000007$pb")(r2)
	ld r5,496(r30)
	ld r6,488(r30)
	bl __ZL8end_gameiPKcz
L162:
	lwz r0,520(r30)
	extsw r0,r0
	addis r2,r31,ha16(_b-"L00000000007$pb")
	la r2,lo16(_b-"L00000000007$pb")(r2)
	sldi r0,r0,2
	add r2,r0,r2
	lwz r0,0(r2)
	rldicl r0,r0,0,32
	extsw r0,r0
	rldicl r0,r0,0,32
	rlwinm r0,r0,0,29,29
	cmpdi cr7,r0,0
	beq cr7,L166
	addis r2,r31,ha16(_idle-"L00000000007$pb")
	la r2,lo16(_idle-"L00000000007$pb")(r2)
	lwz r0,0(r2)
	extsw r2,r0
	addi r0,r2,1
	extsw r0,r0
	std r0,152(r30)
	b L168
L166:
	li r0,0
	std r0,152(r30)
L168:
	addis r2,r31,ha16(_idle-"L00000000007$pb")
	la r2,lo16(_idle-"L00000000007$pb")(r2)
	ld r0,152(r30)
	stw r0,0(r2)
	addis r2,r31,ha16(L___stderrp$non_lazy_ptr-"L00000000007$pb")
	ld r2,lo16(L___stderrp$non_lazy_ptr-"L00000000007$pb")(r2)
	ld r0,0(r2)
	mr r3,r0
	addis r2,r31,ha16(LC17-"L00000000007$pb")
	la r4,lo16(LC17-"L00000000007$pb")(r2)
	ld r5,496(r30)
	ld r6,488(r30)
	bl _fprintf
	lwz r0,520(r30)
	rldicl r0,r0,0,56
	addis r2,r31,ha16(_b-"L00000000007$pb")
	la r3,lo16(_b-"L00000000007$pb")(r2)
	mr r4,r0
	bl __Z7upgradeR5Boardh
	b L169
L147:
	ld r2,504(r30)
	lbz r0,0(r2)
	extsb r0,r0
	cmpwi cr7,r0,120
	bne cr7,L170
	addi r0,r30,224
	mr r3,r0
	addis r2,r31,ha16(_b-"L00000000007$pb")
	la r4,lo16(_b-"L00000000007$pb")(r2)
	bl __ZN5BoardC1ERKS_
	b L172
L173:
	ld r2,504(r30)
	addi r0,r2,1
	std r0,504(r30)
	ld r0,504(r30)
	addi r2,r30,504
	mr r3,r0
	mr r4,r2
	li r5,10
	bl _strtol
	mr r0,r3
	std r0,480(r30)
	ld r2,504(r30)
	lbz r0,0(r2)
	extsb r0,r0
	cmpdi cr7,r0,0
	beq cr7,L174
	ld r2,504(r30)
	lbz r0,0(r2)
	extsb r0,r0
	cmpwi cr7,r0,120
	beq cr7,L174
	addis r2,r31,ha16(_turn-"L00000000007$pb")
	la r2,lo16(_turn-"L00000000007$pb")(r2)
	lwz r0,0(r2)
	extsw r0,r0
	rldicl r0,r0,0,32
	rldicl r0,r0,0,63
	mr r3,r0
	addis r2,r31,ha16(LC18-"L00000000007$pb")
	la r4,lo16(LC18-"L00000000007$pb")(r2)
	ld r5,592(r30)
	bl __ZL8end_gameiPKcz
L174:
	ld r0,496(r30)
	sldi r0,r0,1
	rldicl r9,r0,0,32
	ld r2,496(r30)
	addi r0,r2,-1
	sradi r0,r0,2
	addze r0,r0
	rldicl r0,r0,0,32
	rldicl r0,r0,0,63
	subf r0,r0,r9
	rldicl r2,r0,0,32
	addi r0,r2,-1
	rldicl r0,r0,0,32
	stw r0,516(r30)
	ld r0,480(r30)
	sldi r0,r0,1
	rldicl r9,r0,0,32
	ld r2,480(r30)
	addi r0,r2,-1
	sradi r0,r0,2
	addze r0,r0
	rldicl r0,r0,0,32
	rldicl r0,r0,0,63
	subf r0,r0,r9
	rldicl r2,r0,0,32
	addi r0,r2,-1
	rldicl r0,r0,0,32
	stw r0,512(r30)
	lwz r0,516(r30)
	rldicl r0,r0,0,56
	std r0,160(r30)
	lwz r0,512(r30)
	rldicl r0,r0,0,56
	std r0,168(r30)
	addis r2,r31,ha16(_turn-"L00000000007$pb")
	la r2,lo16(_turn-"L00000000007$pb")(r2)
	lwz r0,0(r2)
	extsw r0,r0
	rldicl r0,r0,0,32
	rldicl r0,r0,0,63
	rldicl r0,r0,0,56
	cmpdi cr7,r0,0
	beq cr7,L177
	li r0,2
	std r0,176(r30)
	b L179
L177:
	li r0,1
	std r0,176(r30)
L179:
	li r3,2
	addis r2,r31,ha16(_b-"L00000000007$pb")
	la r4,lo16(_b-"L00000000007$pb")(r2)
	ld r5,160(r30)
	ld r6,168(r30)
	ld r7,176(r30)
	bl __Z9move_jump9MOVE_JUMPR5Boardhh5Field
	mr r0,r3
	cmpwi cr7,r0,0
	mfcr r0
	rlwinm r0,r0,31,1
	rldicl r0,r0,0,32
	cmpdi cr7,r0,0
	beq cr7,L180
	addis r2,r31,ha16(L_debug$non_lazy_ptr-"L00000000007$pb")
	ld r2,lo16(L_debug$non_lazy_ptr-"L00000000007$pb")(r2)
	lbz r0,0(r2)
	rldicl r0,r0,0,56
	cmpdi cr7,r0,0
	beq cr7,L182
	addis r2,r31,ha16(L___stderrp$non_lazy_ptr-"L00000000007$pb")
	ld r2,lo16(L___stderrp$non_lazy_ptr-"L00000000007$pb")(r2)
	ld r0,0(r2)
	mr r3,r0
	addis r2,r31,ha16(LC19-"L00000000007$pb")
	la r4,lo16(LC19-"L00000000007$pb")(r2)
	ld r5,496(r30)
	ld r6,480(r30)
	bl _fprintf
	addis r2,r31,ha16(_b-"L00000000007$pb")
	la r0,lo16(_b-"L00000000007$pb")(r2)
	addi r2,r30,224
	li r9,256
	mr r3,r0
	mr r4,r2
	mr r5,r9
	bl _memcpy
	li r0,0
	std r0,120(r30)
	b L158
L182:
	addis r2,r31,ha16(_turn-"L00000000007$pb")
	la r2,lo16(_turn-"L00000000007$pb")(r2)
	lwz r0,0(r2)
	extsw r0,r0
	rldicl r0,r0,0,32
	rldicl r0,r0,0,63
	mr r3,r0
	addis r2,r31,ha16(LC20-"L00000000007$pb")
	la r4,lo16(LC20-"L00000000007$pb")(r2)
	ld r5,496(r30)
	ld r6,480(r30)
	bl __ZL8end_gameiPKcz
L180:
	addis r2,r31,ha16(_idle-"L00000000007$pb")
	la r2,lo16(_idle-"L00000000007$pb")(r2)
	li r0,0
	stw r0,0(r2)
	addis r2,r31,ha16(L___stderrp$non_lazy_ptr-"L00000000007$pb")
	ld r2,lo16(L___stderrp$non_lazy_ptr-"L00000000007$pb")(r2)
	ld r0,0(r2)
	mr r3,r0
	addis r2,r31,ha16(LC21-"L00000000007$pb")
	la r4,lo16(LC21-"L00000000007$pb")(r2)
	ld r5,496(r30)
	ld r6,480(r30)
	bl _fprintf
	ld r2,504(r30)
	lbz r0,0(r2)
	extsb r0,r0
	cmpdi cr7,r0,0
	beq cr7,L184
	ld r0,480(r30)
	std r0,496(r30)
	b L172
L184:
	lwz r0,512(r30)
	rldicl r0,r0,0,56
	std r0,184(r30)
	addis r2,r31,ha16(_turn-"L00000000007$pb")
	la r2,lo16(_turn-"L00000000007$pb")(r2)
	lwz r0,0(r2)
	extsw r0,r0
	rldicl r0,r0,0,32
	rldicl r0,r0,0,63
	rldicl r0,r0,0,56
	cmpdi cr7,r0,0
	beq cr7,L186
	li r0,2
	std r0,192(r30)
	b L188
L186:
	li r0,1
	std r0,192(r30)
L188:
	li r3,2
	addis r2,r31,ha16(_b-"L00000000007$pb")
	la r4,lo16(_b-"L00000000007$pb")(r2)
	ld r5,184(r30)
	ld r6,192(r30)
	bl __Z15check_move_jump9MOVE_JUMPRK5Boardh5Field
	mr r0,r3
	cmpdi cr7,r0,0
	beq cr7,L189
	addis r2,r31,ha16(L_debug$non_lazy_ptr-"L00000000007$pb")
	ld r2,lo16(L_debug$non_lazy_ptr-"L00000000007$pb")(r2)
	lbz r0,0(r2)
	rldicl r0,r0,0,56
	cmpdi cr7,r0,0
	beq cr7,L191
	addis r2,r31,ha16(L___stderrp$non_lazy_ptr-"L00000000007$pb")
	ld r2,lo16(L___stderrp$non_lazy_ptr-"L00000000007$pb")(r2)
	ld r0,0(r2)
	mr r3,r0
	addis r2,r31,ha16(LC22-"L00000000007$pb")
	la r4,lo16(LC22-"L00000000007$pb")(r2)
	ld r5,480(r30)
	bl _fprintf
	addis r2,r31,ha16(_b-"L00000000007$pb")
	la r0,lo16(_b-"L00000000007$pb")(r2)
	addi r2,r30,224
	li r9,256
	mr r3,r0
	mr r4,r2
	mr r5,r9
	bl _memcpy
	li r0,0
	std r0,120(r30)
	b L158
L191:
	addis r2,r31,ha16(_turn-"L00000000007$pb")
	la r2,lo16(_turn-"L00000000007$pb")(r2)
	lwz r0,0(r2)
	extsw r0,r0
	rldicl r0,r0,0,32
	rldicl r0,r0,0,63
	mr r3,r0
	addis r2,r31,ha16(LC23-"L00000000007$pb")
	la r4,lo16(LC23-"L00000000007$pb")(r2)
	ld r5,480(r30)
	bl __ZL8end_gameiPKcz
L189:
	lwz r0,512(r30)
	rldicl r0,r0,0,56
	addis r2,r31,ha16(_b-"L00000000007$pb")
	la r3,lo16(_b-"L00000000007$pb")(r2)
	mr r4,r0
	bl __Z7upgradeR5Boardh
L172:
	ld r2,504(r30)
	lbz r0,0(r2)
	extsb r0,r0
	cmpdi cr7,r0,0
	bne cr7,L173
	b L169
L170:
	addis r2,r31,ha16(_turn-"L00000000007$pb")
	la r2,lo16(_turn-"L00000000007$pb")(r2)
	lwz r0,0(r2)
	extsw r0,r0
	rldicl r0,r0,0,32
	rldicl r0,r0,0,63
	mr r3,r0
	addis r2,r31,ha16(LC18-"L00000000007$pb")
	la r4,lo16(LC18-"L00000000007$pb")(r2)
	ld r5,592(r30)
	bl __ZL8end_gameiPKcz
L169:
	addis r2,r31,ha16(_turn-"L00000000007$pb")
	la r2,lo16(_turn-"L00000000007$pb")(r2)
	lwz r0,0(r2)
	extsw r2,r0
	addi r0,r2,1
	extsw r0,r0
	addis r2,r31,ha16(_turn-"L00000000007$pb")
	la r2,lo16(_turn-"L00000000007$pb")(r2)
	stw r0,0(r2)
	addis r2,r31,ha16(_turn-"L00000000007$pb")
	la r2,lo16(_turn-"L00000000007$pb")(r2)
	lwz r0,0(r2)
	extsw r0,r0
	rldicl r0,r0,0,32
	rldicl r0,r0,0,63
	rldicl r0,r0,0,56
	cmpdi cr7,r0,0
	beq cr7,L194
	li r0,2
	std r0,208(r30)
	b L196
L194:
	li r0,1
	std r0,208(r30)
L196:
	li r3,1
	addis r2,r31,ha16(_b-"L00000000007$pb")
	la r4,lo16(_b-"L00000000007$pb")(r2)
	ld r5,208(r30)
	bl __Z13can_move_jump9MOVE_JUMPRK5Board5Field
	mr r0,r3
	xori r0,r0,1
	rldicl r0,r0,0,56
	xori r0,r0,1
	rldicl r0,r0,0,56
	cmpdi cr7,r0,0
	bne cr7,L197
	addis r2,r31,ha16(_turn-"L00000000007$pb")
	la r2,lo16(_turn-"L00000000007$pb")(r2)
	lwz r0,0(r2)
	extsw r0,r0
	rldicl r0,r0,0,32
	rldicl r0,r0,0,63
	rldicl r0,r0,0,56
	cmpdi cr7,r0,0
	beq cr7,L199
	li r0,2
	std r0,216(r30)
	b L201
L199:
	li r0,1
	std r0,216(r30)
L201:
	li r3,2
	addis r2,r31,ha16(_b-"L00000000007$pb")
	la r4,lo16(_b-"L00000000007$pb")(r2)
	ld r5,216(r30)
	bl __Z13can_move_jump9MOVE_JUMPRK5Board5Field
	mr r0,r3
	xori r0,r0,1
	rldicl r0,r0,0,56
	xori r0,r0,1
	rldicl r0,r0,0,56
	cmpdi cr7,r0,0
	bne cr7,L197
	li r0,1
	std r0,200(r30)
	b L203
L197:
	li r0,0
	std r0,200(r30)
L203:
	ld r0,200(r30)
	cmpdi cr7,r0,0
	beq cr7,L204
	addis r2,r31,ha16(_turn-"L00000000007$pb")
	la r2,lo16(_turn-"L00000000007$pb")(r2)
	lwz r0,0(r2)
	extsw r0,r0
	rldicl r0,r0,0,32
	rldicl r0,r0,0,63
	mr r3,r0
	addis r2,r31,ha16(LC24-"L00000000007$pb")
	la r4,lo16(LC24-"L00000000007$pb")(r2)
	bl __ZL8end_gameiPKcz
L204:
	addis r2,r31,ha16(_idle-"L00000000007$pb")
	la r2,lo16(_idle-"L00000000007$pb")(r2)
	lwz r0,0(r2)
	extsw r0,r0
	cmpwi cr7,r0,20
	ble cr7,L206
	li r3,2
	addis r2,r31,ha16(LC25-"L00000000007$pb")
	la r4,lo16(LC25-"L00000000007$pb")(r2)
	bl __ZL8end_gameiPKcz
L206:
	li r0,1
	std r0,120(r30)
L158:
	ld r0,120(r30)
	mr r3,r0
	ld r1,0(r1)
	ld r0,16(r1)
	mtlr r0
	ld r30,-16(r1)
	ld r31,-8(r1)
	blr
LFE27:
	.cstring
	.align 3
LC26:
	.ascii "+----+----+----+----+----+----+----+----+\0"
	.align 3
LC27:
	.ascii "|    \0"
	.align 3
LC28:
	.ascii "|%c%2d%c\0"
	.align 3
LC29:
	.ascii "|\0"
	.text
	.align 2
	.globl __ZN5Board4drawEv
__ZN5Board4drawEv:
LFB19:
	mflr r0
LCFI61:
	std r30,-16(r1)
LCFI62:
	std r31,-8(r1)
LCFI63:
	std r0,16(r1)
LCFI64:
	stdu r1,-144(r1)
LCFI65:
	mr r30,r1
LCFI66:
	bcl 20,31,"L00000000008$pb"
"L00000000008$pb":
	mflr r31
	std r3,192(r30)
	li r0,0
	stw r0,120(r30)
	b L210
L211:
	lwz r0,120(r30)
	rldicl r0,r0,0,32
	rldicl r0,r0,0,61
	cmpdi cr7,r0,0
	bne cr7,L212
	addis r2,r31,ha16(LC26-"L00000000008$pb")
	la r3,lo16(LC26-"L00000000008$pb")(r2)
	bl _puts
L212:
	li r0,32
	stb r0,127(r30)
	lwz r0,120(r30)
	extsw r0,r0
	ld r2,192(r30)
	sldi r0,r0,2
	add r2,r0,r2
	lwz r0,0(r2)
	rldicl r0,r0,0,32
	extsw r0,r0
	rldicl r0,r0,0,32
	rldicl r0,r0,0,63
	rldicl r0,r0,0,56
	cmpdi cr7,r0,0
	beq cr7,L214
	li r0,98
	stb r0,127(r30)
L214:
	lwz r0,120(r30)
	extsw r0,r0
	ld r2,192(r30)
	sldi r0,r0,2
	add r2,r0,r2
	lwz r0,0(r2)
	rldicl r0,r0,0,32
	extsw r0,r0
	rldicl r0,r0,0,32
	rlwinm r0,r0,0,30,30
	cmpdi cr7,r0,0
	beq cr7,L216
	li r0,119
	stb r0,127(r30)
L216:
	lwz r0,120(r30)
	extsw r0,r0
	ld r2,192(r30)
	sldi r0,r0,2
	add r2,r0,r2
	lwz r0,0(r2)
	rldicl r0,r0,0,32
	extsw r0,r0
	rldicl r0,r0,0,32
	rlwinm r0,r0,0,29,29
	cmpdi cr7,r0,0
	beq cr7,L218
	lbz r0,127(r30)
	rldicl r2,r0,0,56
	addi r0,r2,-32
	rldicl r0,r0,0,56
	stb r0,127(r30)
L218:
	lwz r0,120(r30)
	rldicl r0,r0,0,32
	rlwinm r0,r0,0,28,28
	cmpdi cr7,r0,0
	beq cr7,L220
	lwz r0,120(r30)
	rldicl r0,r0,0,32
	rldicl r0,r0,0,63
	rldicl r0,r0,0,56
	cmpdi cr7,r0,0
	bne cr7,L222
L220:
	lwz r0,120(r30)
	rldicl r0,r0,0,32
	rlwinm r0,r0,0,28,28
	cmpdi cr7,r0,0
	bne cr7,L223
	lwz r0,120(r30)
	rldicl r0,r0,0,32
	rldicl r0,r0,0,63
	rldicl r0,r0,0,56
	xori r0,r0,1
	rldicl r0,r0,0,56
	cmpdi cr7,r0,0
	beq cr7,L223
L222:
	addis r2,r31,ha16(LC27-"L00000000008$pb")
	la r3,lo16(LC27-"L00000000008$pb")(r2)
	bl _printf
	b L225
L223:
	lbz r0,127(r30)
	extsb r11,r0
	lwz r0,120(r30)
	srawi r0,r0,1
	addze r0,r0
	extsw r2,r0
	addi r0,r2,1
	extsw r9,r0
	lbz r0,127(r30)
	extsb r0,r0
	addis r2,r31,ha16(LC28-"L00000000008$pb")
	la r3,lo16(LC28-"L00000000008$pb")(r2)
	mr r4,r11
	mr r5,r9
	mr r6,r0
	bl _printf
L225:
	lwz r0,120(r30)
	rldicl r0,r0,0,32
	rldicl r0,r0,0,61
	cmpwi cr7,r0,7
	bne cr7,L226
	addis r2,r31,ha16(LC29-"L00000000008$pb")
	la r3,lo16(LC29-"L00000000008$pb")(r2)
	bl _puts
L226:
	lwz r2,120(r30)
	addi r0,r2,1
	stw r0,120(r30)
L210:
	lwz r0,120(r30)
	cmpwi cr7,r0,63
	ble cr7,L211
	addis r2,r31,ha16(LC26-"L00000000008$pb")
	la r3,lo16(LC26-"L00000000008$pb")(r2)
	bl _puts
	ld r1,0(r1)
	ld r0,16(r1)
	mtlr r0
	ld r30,-16(r1)
	ld r31,-8(r1)
	blr
LFE19:
	.cstring
	.align 3
LC30:
	.ascii "errno = %d\12\0"
	.text
	.align 2
__ZL5errorPKcz:
LFB3:
	mflr r0
LCFI67:
	std r29,-24(r1)
LCFI68:
	std r30,-16(r1)
LCFI69:
	std r31,-8(r1)
LCFI70:
	std r0,16(r1)
LCFI71:
	stdu r1,-160(r1)
LCFI72:
	mr r30,r1
LCFI73:
	bcl 20,31,"L00000000009$pb"
"L00000000009$pb":
	mflr r31
	std r4,216(r30)
	std r5,224(r30)
	std r6,232(r30)
	std r7,240(r30)
	std r8,248(r30)
	std r9,256(r30)
	std r10,264(r30)
	std r3,208(r30)
	addi r0,r30,216
	std r0,120(r30)
	addis r2,r31,ha16(L___stderrp$non_lazy_ptr-"L00000000009$pb")
	ld r2,lo16(L___stderrp$non_lazy_ptr-"L00000000009$pb")(r2)
	ld r0,0(r2)
	ld r2,120(r30)
	mr r3,r0
	ld r4,208(r30)
	mr r5,r2
	bl _vfprintf
	addis r2,r31,ha16(L___stderrp$non_lazy_ptr-"L00000000009$pb")
	ld r2,lo16(L___stderrp$non_lazy_ptr-"L00000000009$pb")(r2)
	ld r29,0(r2)
	bl ___error
	mr r2,r3
	lwz r0,0(r2)
	extsw r0,r0
	mr r3,r29
	addis r2,r31,ha16(LC30-"L00000000009$pb")
	la r4,lo16(LC30-"L00000000009$pb")(r2)
	mr r5,r0
	bl _fprintf
	li r3,0
	bl _perror
	li r3,-1
	bl _exit
LFE3:
	.cstring
	.align 3
LC31:
	.ascii "input string must be 32 chars\12\0"
	.align 3
LC32:
	.ascii "unknown char '%c' in input string\12\0"
	.text
	.align 2
	.globl __ZN5Board11from_stringEPKc
__ZN5Board11from_stringEPKc:
LFB14:
	mflr r0
LCFI74:
	std r30,-16(r1)
LCFI75:
	std r31,-8(r1)
LCFI76:
	std r0,16(r1)
LCFI77:
	stdu r1,-160(r1)
LCFI78:
	mr r30,r1
LCFI79:
	bcl 20,31,"L00000000010$pb"
"L00000000010$pb":
	mflr r31
	std r3,208(r30)
	std r4,216(r30)
	ld r3,216(r30)
	bl _strlen
	mr r0,r3
	cmpdi cr7,r0,32
	beq cr7,L233
	addis r2,r31,ha16(LC31-"L00000000010$pb")
	la r3,lo16(LC31-"L00000000010$pb")(r2)
	bl __ZL5errorPKcz
L233:
	li r0,0
	stw r0,140(r30)
	b L235
L236:
	lwz r0,140(r30)
	extsw r0,r0
	mr r2,r0
	ld r0,216(r30)
	add r2,r2,r0
	lbz r0,0(r2)
	extsb r0,r0
	std r0,120(r30)
	ld r0,120(r30)
	cmpwi cr7,r0,87
	beq cr7,L240
	ld r0,120(r30)
	cmpwi cr7,r0,87
	bgt cr7,L243
	ld r0,120(r30)
	cmpwi cr7,r0,45
	beq cr7,L238
	ld r0,120(r30)
	cmpwi cr7,r0,66
	beq cr7,L239
	b L237
L243:
	ld r0,120(r30)
	cmpwi cr7,r0,98
	beq cr7,L241
	ld r0,120(r30)
	cmpwi cr7,r0,119
	beq cr7,L242
	b L237
L241:
	li r0,1
	stw r0,136(r30)
	b L244
L242:
	li r0,2
	stw r0,136(r30)
	b L244
L239:
	li r0,5
	stw r0,136(r30)
	b L244
L240:
	li r0,6
	stw r0,136(r30)
	b L244
L238:
	li r0,0
	stw r0,136(r30)
	b L244
L237:
	lwz r0,140(r30)
	extsw r0,r0
	mr r2,r0
	ld r0,216(r30)
	add r2,r2,r0
	lbz r0,0(r2)
	extsb r0,r0
	addis r2,r31,ha16(LC32-"L00000000010$pb")
	la r3,lo16(LC32-"L00000000010$pb")(r2)
	mr r4,r0
	bl __ZL5errorPKcz
L244:
	lwz r0,140(r30)
	srawi r0,r0,2
	addze r0,r0
	extsw r0,r0
	rlwinm r0,r0,0,31,31
	stw r0,132(r30)
	lwz r0,140(r30)
	slwi r0,r0,1
	extsw r2,r0
	lwz r0,132(r30)
	subf r0,r0,r2
	extsw r2,r0
	addi r0,r2,1
	extsw r0,r0
	ld r2,208(r30)
	sldi r0,r0,2
	add r2,r0,r2
	lwz r0,136(r30)
	stw r0,0(r2)
	lwz r0,140(r30)
	slwi r0,r0,1
	extsw r2,r0
	lwz r0,132(r30)
	add r0,r0,r2
	extsw r0,r0
	ld r2,208(r30)
	sldi r0,r0,2
	add r2,r0,r2
	li r0,0
	stw r0,0(r2)
	lwz r2,140(r30)
	addi r0,r2,1
	stw r0,140(r30)
L235:
	lwz r0,140(r30)
	extsw r0,r0
	mr r2,r0
	ld r0,216(r30)
	add r2,r2,r0
	lbz r0,0(r2)
	extsb r0,r0
	cmpdi cr7,r0,0
	bne cr7,L236
	ld r1,0(r1)
	ld r0,16(r1)
	mtlr r0
	ld r30,-16(r1)
	ld r31,-8(r1)
	blr
LFE14:
	.cstring
	.align 3
LC33:
	.ascii "bbbbbbbbbbbb--------wwwwwwwwwwww\0"
	.section __TEXT,__textcoal_nt,coalesced,pure_instructions
	.align 2
	.globl __ZN5BoardC1Ev
	.weak_definition __ZN5BoardC1Ev
__ZN5BoardC1Ev:
LFB7:
	mflr r0
LCFI80:
	std r30,-16(r1)
LCFI81:
	std r31,-8(r1)
LCFI82:
	std r0,16(r1)
LCFI83:
	stdu r1,-128(r1)
LCFI84:
	mr r30,r1
LCFI85:
	bcl 20,31,"L00000000011$pb"
"L00000000011$pb":
	mflr r31
	std r3,176(r30)
	ld r3,176(r30)
	addis r2,r31,ha16(LC33-"L00000000011$pb")
	la r4,lo16(LC33-"L00000000011$pb")(r2)
	bl __ZN5Board11from_stringEPKc
	ld r1,0(r1)
	ld r0,16(r1)
	mtlr r0
	ld r30,-16(r1)
	ld r31,-8(r1)
	blr
LFE7:
	.section __TEXT,__StaticInit,regular,pure_instructions
	.align 2
__Z41__static_initialization_and_destruction_0ii:
LFB29:
	mflr r0
LCFI86:
	std r30,-16(r1)
LCFI87:
	std r31,-8(r1)
LCFI88:
	std r0,16(r1)
LCFI89:
	stdu r1,-128(r1)
LCFI90:
	mr r30,r1
LCFI91:
	bcl 20,31,"L00000000012$pb"
"L00000000012$pb":
	mflr r31
	mr r0,r3
	mr r2,r4
	stw r0,176(r30)
	stw r2,184(r30)
	lwz r0,176(r30)
	cmpwi cr7,r0,1
	bne cr7,L253
	lwz r0,184(r30)
	li r2,0
	ori r2,r2,65535
	cmpw cr7,r0,r2
	bne cr7,L253
	addis r2,r31,ha16(_b-"L00000000012$pb")
	la r3,lo16(_b-"L00000000012$pb")(r2)
	bl __ZN5BoardC1Ev
L253:
	ld r1,0(r1)
	ld r0,16(r1)
	mtlr r0
	ld r30,-16(r1)
	ld r31,-8(r1)
	blr
LFE29:
	.align 2
__GLOBAL__I__ZN5Board11from_stringEPKc:
LFB30:
	mflr r0
LCFI92:
	std r30,-16(r1)
LCFI93:
	std r0,16(r1)
LCFI94:
	stdu r1,-128(r1)
LCFI95:
	mr r30,r1
LCFI96:
	li r3,1
	li r4,-1
	rldicl r4,r4,0,48
	bl __Z41__static_initialization_and_destruction_0ii
	ld r1,0(r1)
	ld r0,16(r1)
	mtlr r0
	ld r30,-16(r1)
	blr
LFE30:
	.cstring
	.align 3
LC34:
	.ascii "init failed ('B' or 'W' expected)\12\0"
	.align 3
LC35:
	.ascii "init failed (':' expected)\12\0"
	.text
	.align 2
	.globl __Z4initPKc
__Z4initPKc:
LFB25:
	mflr r0
LCFI97:
	std r30,-16(r1)
LCFI98:
	std r31,-8(r1)
LCFI99:
	std r0,16(r1)
LCFI100:
	stdu r1,-128(r1)
LCFI101:
	mr r30,r1
LCFI102:
	bcl 20,31,"L00000000013$pb"
"L00000000013$pb":
	mflr r31
	std r3,176(r30)
	ld r0,176(r30)
	cmpdi cr7,r0,0
	beq cr7,L265
	ld r2,176(r30)
	lbz r0,0(r2)
	extsb r0,r0
	cmpwi cr7,r0,87
	bne cr7,L259
	addis r2,r31,ha16(_turn-"L00000000013$pb")
	la r2,lo16(_turn-"L00000000013$pb")(r2)
	lwz r0,0(r2)
	extsw r2,r0
	addi r0,r2,1
	extsw r0,r0
	addis r2,r31,ha16(_turn-"L00000000013$pb")
	la r2,lo16(_turn-"L00000000013$pb")(r2)
	stw r0,0(r2)
	b L261
L259:
	ld r2,176(r30)
	lbz r0,0(r2)
	extsb r0,r0
	cmpwi cr7,r0,66
	beq cr7,L261
	addis r2,r31,ha16(LC34-"L00000000013$pb")
	la r3,lo16(LC34-"L00000000013$pb")(r2)
	bl __ZL5errorPKcz
L261:
	ld r2,176(r30)
	addi r2,r2,1
	lbz r0,0(r2)
	extsb r0,r0
	cmpwi cr7,r0,58
	beq cr7,L263
	addis r2,r31,ha16(LC35-"L00000000013$pb")
	la r3,lo16(LC35-"L00000000013$pb")(r2)
	bl __ZL5errorPKcz
L263:
	ld r2,176(r30)
	addi r0,r2,2
	addis r2,r31,ha16(_b-"L00000000013$pb")
	la r3,lo16(_b-"L00000000013$pb")(r2)
	mr r4,r0
	bl __ZN5Board11from_stringEPKc
L265:
	ld r1,0(r1)
	ld r0,16(r1)
	mtlr r0
	ld r30,-16(r1)
	ld r31,-8(r1)
	blr
LFE25:
	.globl _b
.zerofill __DATA, __common, _b, 256, 2
	.globl _turn
	.data
	.align 2
_turn:
	.space 4
	.globl _idle
	.align 2
_idle:
	.space 4
	.globl _buffer
.zerofill __DATA, __common, _buffer, 36, 3
	.cstring
	.align 3
__ZZL8end_gameiPKczE8__func__:
	.ascii "end_game\0"
	.align 3
__ZZ13can_move_jump9MOVE_JUMPRK5Board5FieldE8__func__:
	.ascii "can_move_jump\0"
	.align 3
__ZZ9move_jump9MOVE_JUMPR5Boardhh5FieldE8__func__:
	.ascii "move_jump\0"
	.align 3
__ZZN5Board9to_stringEPcE8__func__:
	.ascii "to_string\0"
	.globl __ZN5BoardC2Ejjj.eh
__ZN5BoardC2Ejjj.eh = 0
.no_dead_strip __ZN5BoardC2Ejjj.eh
	.globl __ZN5BoardC1Ejjj.eh
__ZN5BoardC1Ejjj.eh = 0
.no_dead_strip __ZN5BoardC1Ejjj.eh
__GLOBAL__I__ZN5Board11from_stringEPKc.eh = 0
.no_dead_strip __GLOBAL__I__ZN5Board11from_stringEPKc.eh
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$0,LECIE1-LSCIE1
	.long L$set$0
LSCIE1:
	.long	0x0
	.byte	0x1
	.ascii "zPR\0"
	.byte	0x1
	.byte	0x78
	.byte	0x41
	.byte	0x6
	.byte	0x9b
	.long	L___gxx_personality_v0$non_lazy_ptr-.
	.byte	0x10
	.byte	0xc
	.byte	0x1
	.byte	0x0
	.align 3
LECIE1:
	.globl __Z4swapI5FieldEvRT_S2_.eh
	.weak_definition __Z4swapI5FieldEvRT_S2_.eh
__Z4swapI5FieldEvRT_S2_.eh:
LSFDE5:
	.set L$set$1,LEFDE5-LASFDE5
	.long L$set$1
LASFDE5:
	.long	LASFDE5-EH_frame1
	.quad	LFB28-.
	.set L$set$2,LFE28-LFB28
	.quad L$set$2
	.byte	0x0
	.byte	0x4
	.set L$set$3,LCFI7-LFB28
	.long L$set$3
	.byte	0xe
	.byte	0x50
	.byte	0x9e
	.byte	0x2
	.byte	0x4
	.set L$set$4,LCFI8-LCFI7
	.long L$set$4
	.byte	0xd
	.byte	0x1e
	.align 3
LEFDE5:
	.globl __ZN5BoardC1ERKS_.eh
	.weak_definition __ZN5BoardC1ERKS_.eh
__ZN5BoardC1ERKS_.eh:
LSFDE7:
	.set L$set$5,LEFDE7-LASFDE7
	.long L$set$5
LASFDE7:
	.long	LASFDE7-EH_frame1
	.quad	LFB10-.
	.set L$set$6,LFE10-LFB10
	.quad L$set$6
	.byte	0x0
	.byte	0x4
	.set L$set$7,LCFI12-LFB10
	.long L$set$7
	.byte	0xe
	.byte	0x80,0x1
	.byte	0x9e
	.byte	0x2
	.byte	0x11
	.byte	0x41
	.byte	0x7e
	.byte	0x4
	.set L$set$8,LCFI13-LCFI12
	.long L$set$8
	.byte	0xd
	.byte	0x1e
	.align 3
LEFDE7:
	.globl __Z7upgradeR5Boardh.eh
__Z7upgradeR5Boardh.eh:
LSFDE9:
	.set L$set$9,LEFDE9-LASFDE9
	.long L$set$9
LASFDE9:
	.long	LASFDE9-EH_frame1
	.quad	LFB23-.
	.set L$set$10,LFE23-LFB23
	.quad L$set$10
	.byte	0x0
	.byte	0x4
	.set L$set$11,LCFI18-LFB23
	.long L$set$11
	.byte	0xe
	.byte	0x80,0x1
	.byte	0x9f
	.byte	0x1
	.byte	0x9e
	.byte	0x2
	.byte	0x11
	.byte	0x41
	.byte	0x7e
	.byte	0x4
	.set L$set$12,LCFI19-LCFI18
	.long L$set$12
	.byte	0xd
	.byte	0x1e
	.align 3
LEFDE9:
	.globl __Z9move_jump9MOVE_JUMPR5Boardhh5Field.eh
__Z9move_jump9MOVE_JUMPR5Boardhh5Field.eh:
LSFDE11:
	.set L$set$13,LEFDE11-LASFDE11
	.long L$set$13
LASFDE11:
	.long	LASFDE11-EH_frame1
	.quad	LFB20-.
	.set L$set$14,LFE20-LFB20
	.quad L$set$14
	.byte	0x0
	.byte	0x4
	.set L$set$15,LCFI24-LFB20
	.long L$set$15
	.byte	0xe
	.byte	0xb0,0x1
	.byte	0x9f
	.byte	0x1
	.byte	0x9e
	.byte	0x2
	.byte	0x11
	.byte	0x41
	.byte	0x7e
	.byte	0x4
	.set L$set$16,LCFI25-LCFI24
	.long L$set$16
	.byte	0xd
	.byte	0x1e
	.align 3
LEFDE11:
	.globl __Z15check_move_jump9MOVE_JUMPRK5Boardh5Field.eh
__Z15check_move_jump9MOVE_JUMPRK5Boardh5Field.eh:
LSFDE13:
	.set L$set$17,LEFDE13-LASFDE13
	.long L$set$17
LASFDE13:
	.long	LASFDE13-EH_frame1
	.quad	LFB21-.
	.set L$set$18,LFE21-LFB21
	.quad L$set$18
	.byte	0x0
	.byte	0x4
	.set L$set$19,LCFI29-LFB21
	.long L$set$19
	.byte	0xe
	.byte	0x90,0x3
	.byte	0x9e
	.byte	0x2
	.byte	0x11
	.byte	0x41
	.byte	0x7e
	.byte	0x4
	.set L$set$20,LCFI30-LCFI29
	.long L$set$20
	.byte	0xd
	.byte	0x1e
	.align 3
LEFDE13:
	.globl __Z13can_move_jump9MOVE_JUMPRK5Board5Field.eh
__Z13can_move_jump9MOVE_JUMPRK5Board5Field.eh:
LSFDE15:
	.set L$set$21,LEFDE15-LASFDE15
	.long L$set$21
LASFDE15:
	.long	LASFDE15-EH_frame1
	.quad	LFB22-.
	.set L$set$22,LFE22-LFB22
	.quad L$set$22
	.byte	0x0
	.byte	0x4
	.set L$set$23,LCFI35-LFB22
	.long L$set$23
	.byte	0xe
	.byte	0xb0,0x1
	.byte	0x9f
	.byte	0x1
	.byte	0x9e
	.byte	0x2
	.byte	0x11
	.byte	0x41
	.byte	0x7e
	.byte	0x4
	.set L$set$24,LCFI36-LCFI35
	.long L$set$24
	.byte	0xd
	.byte	0x1e
	.align 3
LEFDE15:
	.globl __ZN5Board9to_stringEPc.eh
__ZN5Board9to_stringEPc.eh:
LSFDE17:
	.set L$set$25,LEFDE17-LASFDE17
	.long L$set$25
LASFDE17:
	.long	LASFDE17-EH_frame1
	.quad	LFB15-.
	.set L$set$26,LFE15-LFB15
	.quad L$set$26
	.byte	0x0
	.byte	0x4
	.set L$set$27,LCFI41-LFB15
	.long L$set$27
	.byte	0xe
	.byte	0xa0,0x1
	.byte	0x9f
	.byte	0x1
	.byte	0x9e
	.byte	0x2
	.byte	0x11
	.byte	0x41
	.byte	0x7e
	.byte	0x4
	.set L$set$28,LCFI42-LCFI41
	.long L$set$28
	.byte	0xd
	.byte	0x1e
	.align 3
LEFDE17:
	.globl __Z9serializev.eh
__Z9serializev.eh:
LSFDE19:
	.set L$set$29,LEFDE19-LASFDE19
	.long L$set$29
LASFDE19:
	.long	LASFDE19-EH_frame1
	.quad	LFB26-.
	.set L$set$30,LFE26-LFB26
	.quad L$set$30
	.byte	0x0
	.byte	0x4
	.set L$set$31,LCFI47-LFB26
	.long L$set$31
	.byte	0xe
	.byte	0x90,0x1
	.byte	0x9f
	.byte	0x1
	.byte	0x9e
	.byte	0x2
	.byte	0x11
	.byte	0x41
	.byte	0x7e
	.byte	0x4
	.set L$set$32,LCFI48-LCFI47
	.long L$set$32
	.byte	0xd
	.byte	0x1e
	.align 3
LEFDE19:
__ZL8end_gameiPKcz.eh:
LSFDE21:
	.set L$set$33,LEFDE21-LASFDE21
	.long L$set$33
LASFDE21:
	.long	LASFDE21-EH_frame1
	.quad	LFB24-.
	.set L$set$34,LFE24-LFB24
	.quad L$set$34
	.byte	0x0
	.byte	0x4
	.set L$set$35,LCFI53-LFB24
	.long L$set$35
	.byte	0xe
	.byte	0xb0,0x1
	.byte	0x9f
	.byte	0x1
	.byte	0x9e
	.byte	0x2
	.byte	0x11
	.byte	0x41
	.byte	0x7e
	.byte	0x4
	.set L$set$36,LCFI54-LCFI53
	.long L$set$36
	.byte	0xd
	.byte	0x1e
	.align 3
LEFDE21:
	.globl __Z11deserializePc.eh
__Z11deserializePc.eh:
LSFDE23:
	.set L$set$37,LEFDE23-LASFDE23
	.long L$set$37
LASFDE23:
	.long	LASFDE23-EH_frame1
	.quad	LFB27-.
	.set L$set$38,LFE27-LFB27
	.quad L$set$38
	.byte	0x0
	.byte	0x4
	.set L$set$39,LCFI59-LFB27
	.long L$set$39
	.byte	0xe
	.byte	0xa0,0x4
	.byte	0x9f
	.byte	0x1
	.byte	0x9e
	.byte	0x2
	.byte	0x11
	.byte	0x41
	.byte	0x7e
	.byte	0x4
	.set L$set$40,LCFI60-LCFI59
	.long L$set$40
	.byte	0xd
	.byte	0x1e
	.align 3
LEFDE23:
	.globl __ZN5Board4drawEv.eh
__ZN5Board4drawEv.eh:
LSFDE25:
	.set L$set$41,LEFDE25-LASFDE25
	.long L$set$41
LASFDE25:
	.long	LASFDE25-EH_frame1
	.quad	LFB19-.
	.set L$set$42,LFE19-LFB19
	.quad L$set$42
	.byte	0x0
	.byte	0x4
	.set L$set$43,LCFI65-LFB19
	.long L$set$43
	.byte	0xe
	.byte	0x90,0x1
	.byte	0x9f
	.byte	0x1
	.byte	0x9e
	.byte	0x2
	.byte	0x11
	.byte	0x41
	.byte	0x7e
	.byte	0x4
	.set L$set$44,LCFI66-LCFI65
	.long L$set$44
	.byte	0xd
	.byte	0x1e
	.align 3
LEFDE25:
__ZL5errorPKcz.eh:
LSFDE27:
	.set L$set$45,LEFDE27-LASFDE27
	.long L$set$45
LASFDE27:
	.long	LASFDE27-EH_frame1
	.quad	LFB3-.
	.set L$set$46,LFE3-LFB3
	.quad L$set$46
	.byte	0x0
	.byte	0x4
	.set L$set$47,LCFI72-LFB3
	.long L$set$47
	.byte	0xe
	.byte	0xa0,0x1
	.byte	0x9f
	.byte	0x1
	.byte	0x9e
	.byte	0x2
	.byte	0x9d
	.byte	0x3
	.byte	0x11
	.byte	0x41
	.byte	0x7e
	.byte	0x4
	.set L$set$48,LCFI73-LCFI72
	.long L$set$48
	.byte	0xd
	.byte	0x1e
	.align 3
LEFDE27:
	.globl __ZN5Board11from_stringEPKc.eh
__ZN5Board11from_stringEPKc.eh:
LSFDE29:
	.set L$set$49,LEFDE29-LASFDE29
	.long L$set$49
LASFDE29:
	.long	LASFDE29-EH_frame1
	.quad	LFB14-.
	.set L$set$50,LFE14-LFB14
	.quad L$set$50
	.byte	0x0
	.byte	0x4
	.set L$set$51,LCFI78-LFB14
	.long L$set$51
	.byte	0xe
	.byte	0xa0,0x1
	.byte	0x9f
	.byte	0x1
	.byte	0x9e
	.byte	0x2
	.byte	0x11
	.byte	0x41
	.byte	0x7e
	.byte	0x4
	.set L$set$52,LCFI79-LCFI78
	.long L$set$52
	.byte	0xd
	.byte	0x1e
	.align 3
LEFDE29:
	.globl __ZN5BoardC1Ev.eh
	.weak_definition __ZN5BoardC1Ev.eh
__ZN5BoardC1Ev.eh:
LSFDE31:
	.set L$set$53,LEFDE31-LASFDE31
	.long L$set$53
LASFDE31:
	.long	LASFDE31-EH_frame1
	.quad	LFB7-.
	.set L$set$54,LFE7-LFB7
	.quad L$set$54
	.byte	0x0
	.byte	0x4
	.set L$set$55,LCFI84-LFB7
	.long L$set$55
	.byte	0xe
	.byte	0x80,0x1
	.byte	0x9f
	.byte	0x1
	.byte	0x9e
	.byte	0x2
	.byte	0x11
	.byte	0x41
	.byte	0x7e
	.byte	0x4
	.set L$set$56,LCFI85-LCFI84
	.long L$set$56
	.byte	0xd
	.byte	0x1e
	.align 3
LEFDE31:
__Z41__static_initialization_and_destruction_0ii.eh:
LSFDE33:
	.set L$set$57,LEFDE33-LASFDE33
	.long L$set$57
LASFDE33:
	.long	LASFDE33-EH_frame1
	.quad	LFB29-.
	.set L$set$58,LFE29-LFB29
	.quad L$set$58
	.byte	0x0
	.byte	0x4
	.set L$set$59,LCFI90-LFB29
	.long L$set$59
	.byte	0xe
	.byte	0x80,0x1
	.byte	0x9f
	.byte	0x1
	.byte	0x9e
	.byte	0x2
	.byte	0x11
	.byte	0x41
	.byte	0x7e
	.byte	0x4
	.set L$set$60,LCFI91-LCFI90
	.long L$set$60
	.byte	0xd
	.byte	0x1e
	.align 3
LEFDE33:
	.globl __Z4initPKc.eh
__Z4initPKc.eh:
LSFDE37:
	.set L$set$61,LEFDE37-LASFDE37
	.long L$set$61
LASFDE37:
	.long	LASFDE37-EH_frame1
	.quad	LFB25-.
	.set L$set$62,LFE25-LFB25
	.quad L$set$62
	.byte	0x0
	.byte	0x4
	.set L$set$63,LCFI101-LFB25
	.long L$set$63
	.byte	0xe
	.byte	0x80,0x1
	.byte	0x9f
	.byte	0x1
	.byte	0x9e
	.byte	0x2
	.byte	0x11
	.byte	0x41
	.byte	0x7e
	.byte	0x4
	.set L$set$64,LCFI102-LCFI101
	.long L$set$64
	.byte	0xd
	.byte	0x1e
	.align 3
LEFDE37:
	.non_lazy_symbol_pointer
L_debug$non_lazy_ptr:
	.indirect_symbol _debug
	.quad	0
L___stderrp$non_lazy_ptr:
	.indirect_symbol ___stderrp
	.quad	0
L___gxx_personality_v0$non_lazy_ptr:
	.indirect_symbol ___gxx_personality_v0
	.quad	0
	.constructor
	.destructor
	.align 1
	.subsections_via_symbols
#endif
#endif
#ifdef __WIN32__
#ifdef __i386__
	.file	"logic.cc"
	.text
	.align 2
.globl __ZN5BoardC2Ejjj
	.def	__ZN5BoardC2Ejjj;	.scl	2;	.type	32;	.endef
__ZN5BoardC2Ejjj:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$32, %esp
	movl	$1, -12(%ebp)
	movl	$0, -8(%ebp)
	jmp	L2
L9:
	movl	-8(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$30, %eax
	addl	%edx, %eax
	sarl	$2, %eax
	andl	$1, %eax
	movl	%eax, -4(%ebp)
	movl	-12(%ebp), %edx
	movl	12(%ebp), %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	L3
	movl	-8(%ebp), %eax
	addl	%eax, %eax
	subl	-4(%ebp), %eax
	incl	%eax
	movl	%eax, -32(%ebp)
	movl	-12(%ebp), %edx
	movl	20(%ebp), %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	L4
	movl	$5, -28(%ebp)
	jmp	L5
L4:
	movl	$1, -28(%ebp)
L5:
	movl	8(%ebp), %eax
	movl	-28(%ebp), %ecx
	movl	-32(%ebp), %edx
	movl	%ecx, (%eax,%edx,4)
L3:
	movl	-12(%ebp), %eax
	movl	16(%ebp), %edx
	andl	%edx, %eax
	testl	%eax, %eax
	je	L6
	movl	-8(%ebp), %eax
	addl	%eax, %eax
	subl	-4(%ebp), %eax
	incl	%eax
	movl	%eax, -24(%ebp)
	movl	-12(%ebp), %edx
	movl	20(%ebp), %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	L7
	movl	$6, -20(%ebp)
	jmp	L8
L7:
	movl	$2, -20(%ebp)
L8:
	movl	8(%ebp), %eax
	movl	-20(%ebp), %ecx
	movl	-24(%ebp), %edx
	movl	%ecx, (%eax,%edx,4)
L6:
	sall	-12(%ebp)
	incl	-8(%ebp)
L2:
	cmpl	$31, -8(%ebp)
	jle	L9
	leave
	ret
	.align 2
.globl __ZN5BoardC1Ejjj
	.def	__ZN5BoardC1Ejjj;	.scl	2;	.type	32;	.endef
__ZN5BoardC1Ejjj:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$32, %esp
	movl	$1, -12(%ebp)
	movl	$0, -8(%ebp)
	jmp	L12
L19:
	movl	-8(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$30, %eax
	addl	%edx, %eax
	sarl	$2, %eax
	andl	$1, %eax
	movl	%eax, -4(%ebp)
	movl	-12(%ebp), %edx
	movl	12(%ebp), %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	L13
	movl	-8(%ebp), %eax
	addl	%eax, %eax
	subl	-4(%ebp), %eax
	incl	%eax
	movl	%eax, -32(%ebp)
	movl	-12(%ebp), %edx
	movl	20(%ebp), %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	L14
	movl	$5, -28(%ebp)
	jmp	L15
L14:
	movl	$1, -28(%ebp)
L15:
	movl	8(%ebp), %eax
	movl	-28(%ebp), %ecx
	movl	-32(%ebp), %edx
	movl	%ecx, (%eax,%edx,4)
L13:
	movl	-12(%ebp), %eax
	movl	16(%ebp), %edx
	andl	%edx, %eax
	testl	%eax, %eax
	je	L16
	movl	-8(%ebp), %eax
	addl	%eax, %eax
	subl	-4(%ebp), %eax
	incl	%eax
	movl	%eax, -24(%ebp)
	movl	-12(%ebp), %edx
	movl	20(%ebp), %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	L17
	movl	$6, -20(%ebp)
	jmp	L18
L17:
	movl	$2, -20(%ebp)
L18:
	movl	8(%ebp), %eax
	movl	-20(%ebp), %ecx
	movl	-24(%ebp), %edx
	movl	%ecx, (%eax,%edx,4)
L16:
	sall	-12(%ebp)
	incl	-8(%ebp)
L12:
	cmpl	$31, -8(%ebp)
	jle	L19
	leave
	ret
	.section	.text$_Z4swapI5FieldEvRT_S2_,"x"
	.linkonce discard
.globl __Z4swapI5FieldEvRT_S2_
	.def	__Z4swapI5FieldEvRT_S2_;	.scl	2;	.type	32;	.endef
__Z4swapI5FieldEvRT_S2_:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$16, %esp
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	movl	8(%ebp), %edx
	movl	-4(%ebp), %eax
	movl	%eax, (%edx)
	leave
	ret
	.section	.text$_ZN5BoardC1ERKS_,"x"
	.linkonce discard
	.align 2
.globl __ZN5BoardC1ERKS_
	.def	__ZN5BoardC1ERKS_;	.scl	2;	.type	32;	.endef
__ZN5BoardC1ERKS_:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	$256, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_memcpy
	leave
	ret
	.text
	.def	_vfprintf;	.scl	3;	.type	32;	.endef
_vfprintf:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%eax, -4(%ebp)
	movl	%edx, -8(%ebp)
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-4(%ebp), %eax
	movl	%eax, (%esp)
	call	___mingw_vfprintf
	leave
	ret
	.def	_fprintf;	.scl	3;	.type	32;	.endef
_fprintf:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	leal	16(%ebp), %eax
	movl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	___mingw_vfprintf
	leave
	ret
	.section .rdata,"dr"
LC0:
	.ascii "[mcp] upgrade\12\0"
	.text
.globl __Z7upgradeR5Boardh
	.def	__Z7upgradeR5Boardh;	.scl	2;	.type	32;	.endef
__Z7upgradeR5Boardh:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	12(%ebp), %eax
	movb	%al, -4(%ebp)
	cmpb	$7, -4(%ebp)
	ja	L30
	movzbl	-4(%ebp), %edx
	movl	8(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	L30
	movzbl	-4(%ebp), %edx
	movl	8(%ebp), %eax
	movl	$6, (%eax,%edx,4)
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	$LC0, 4(%esp)
	movl	%eax, (%esp)
	call	_fprintf
L30:
	cmpb	$55, -4(%ebp)
	jbe	L32
	movzbl	-4(%ebp), %edx
	movl	8(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	L32
	movzbl	-4(%ebp), %edx
	movl	8(%ebp), %eax
	movl	$5, (%eax,%edx,4)
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	$LC0, 4(%esp)
	movl	%eax, (%esp)
	call	_fprintf
L32:
	leave
	ret
	.section .rdata,"dr"
LC1:
	.ascii "logic.cc\0"
LC2:
	.ascii "(f == BLACK) || (f == WHITE)\0"
	.text
.globl __Z9move_jump9MOVE_JUMPR5Boardhh5Field
	.def	__Z9move_jump9MOVE_JUMPR5Boardhh5Field;	.scl	2;	.type	32;	.endef
__Z9move_jump9MOVE_JUMPR5Boardhh5Field:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$72, %esp
	movl	16(%ebp), %eax
	movl	20(%ebp), %edx
	movb	%al, -20(%ebp)
	movb	%dl, -24(%ebp)
	cmpl	$1, 24(%ebp)
	je	L34
	cmpl	$2, 24(%ebp)
	je	L34
	movl	$136, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$LC2, (%esp)
	call	__assert
L34:
	cmpb	$63, -20(%ebp)
	ja	L35
	cmpb	$63, -24(%ebp)
	jbe	L36
L35:
	movl	$0, -32(%ebp)
	jmp	L37
L36:
	movzbl	-20(%ebp), %edx
	movl	12(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, %edx
	movl	24(%ebp), %eax
	andl	%edx, %eax
	testl	%eax, %eax
	jne	L38
	movl	$0, -32(%ebp)
	jmp	L37
L38:
	movzbl	-24(%ebp), %eax
	movl	12(%ebp), %edx
	movl	(%edx,%eax,4), %eax
	testl	%eax, %eax
	je	L39
	movl	$0, -32(%ebp)
	jmp	L37
L39:
	movzbl	-20(%ebp), %eax
	cmpb	-24(%ebp), %al
	jae	L40
	movl	24(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	L41
	movzbl	-20(%ebp), %edx
	movl	12(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	L41
	movl	$0, -32(%ebp)
	jmp	L37
L41:
	movzbl	-20(%ebp), %eax
	movl	%eax, %edx
	andl	$7, %edx
	movzbl	-24(%ebp), %eax
	andl	$7, %eax
	cmpl	%eax, %edx
	jge	L42
	movb	$9, -26(%ebp)
	jmp	L43
L42:
	movb	$7, -26(%ebp)
L43:
	movzbl	-26(%ebp), %eax
	movb	%al, -2(%ebp)
	jmp	L44
L40:
	movl	24(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	L45
	movzbl	-20(%ebp), %edx
	movl	12(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	L45
	movl	$0, -32(%ebp)
	jmp	L37
L45:
	movzbl	-20(%ebp), %eax
	movl	%eax, %edx
	andl	$7, %edx
	movzbl	-24(%ebp), %eax
	andl	$7, %eax
	cmpl	%eax, %edx
	jge	L46
	movb	$-7, -25(%ebp)
	jmp	L47
L46:
	movb	$-9, -25(%ebp)
L47:
	movzbl	-25(%ebp), %edx
	movb	%dl, -2(%ebp)
L44:
	movzbl	-24(%ebp), %edx
	movzbl	-20(%ebp), %eax
	subl	%eax, %edx
	movsbl	-2(%ebp),%ecx
	movl	%ecx, -48(%ebp)
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-48(%ebp)
	movl	%edx, %eax
	testl	%eax, %eax
	je	L48
	movl	$0, -32(%ebp)
	jmp	L37
L48:
	movzbl	-24(%ebp), %edx
	movzbl	-20(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, -44(%ebp)
	movsbl	-2(%ebp),%eax
	movl	-44(%ebp), %edx
	movl	%eax, %ecx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	%ecx
	movl	%eax, %edx
	movl	8(%ebp), %eax
	cmpl	%eax, %edx
	je	L49
	movl	$0, -32(%ebp)
	jmp	L37
L49:
	movzbl	-24(%ebp), %eax
	movb	%al, -1(%ebp)
	cmpl	$2, 8(%ebp)
	jne	L50
	movzbl	-2(%ebp), %eax
	subb	%al, -1(%ebp)
	movzbl	-1(%ebp), %edx
	movl	12(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	testl	%eax, %eax
	je	L51
	movzbl	-1(%ebp), %edx
	movl	12(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, %edx
	movl	24(%ebp), %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	L52
L51:
	movl	$0, -32(%ebp)
	jmp	L37
L52:
	movzbl	-1(%ebp), %edx
	movl	12(%ebp), %eax
	movl	$0, (%eax,%edx,4)
L50:
	movzbl	-24(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	12(%ebp), %edx
	movzbl	-20(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__Z4swapI5FieldEvRT_S2_
	movl	$1, -32(%ebp)
L37:
	movl	-32(%ebp), %eax
	leave
	ret
.globl __Z15check_move_jump9MOVE_JUMPRK5Boardh5Field
	.def	__Z15check_move_jump9MOVE_JUMPRK5Boardh5Field;	.scl	2;	.type	32;	.endef
__Z15check_move_jump9MOVE_JUMPRK5Boardh5Field:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$296, %esp
	movl	16(%ebp), %eax
	movb	%al, -260(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-256(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN5BoardC1ERKS_
	movl	8(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	negl	%eax
	addb	-260(%ebp), %al
	movzbl	%al, %edx
	movzbl	-260(%ebp), %ecx
	movl	20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	-256(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__Z9move_jump9MOVE_JUMPR5Boardhh5Field
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	L55
	movb	$1, -261(%ebp)
	jmp	L56
L55:
	movl	8(%ebp), %eax
	imull	$-7, %eax, %eax
	addb	-260(%ebp), %al
	movzbl	%al, %edx
	movzbl	-260(%ebp), %ecx
	movl	20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	-256(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__Z9move_jump9MOVE_JUMPR5Boardhh5Field
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	L57
	movb	$1, -261(%ebp)
	jmp	L56
L57:
	movl	8(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	addb	-260(%ebp), %al
	movzbl	%al, %edx
	movzbl	-260(%ebp), %ecx
	movl	20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	-256(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__Z9move_jump9MOVE_JUMPR5Boardhh5Field
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	L58
	movb	$1, -261(%ebp)
	jmp	L56
L58:
	movl	8(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addb	-260(%ebp), %al
	movzbl	%al, %edx
	movzbl	-260(%ebp), %ecx
	movl	20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	-256(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__Z9move_jump9MOVE_JUMPR5Boardhh5Field
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	L59
	movb	$1, -261(%ebp)
	jmp	L56
L59:
	movb	$0, -261(%ebp)
L56:
	movzbl	-261(%ebp), %eax
	leave
	ret
	.section .rdata,"dr"
LC3:
	.ascii "f == BLACK || f == WHITE\0"
	.text
.globl __Z13can_move_jump9MOVE_JUMPRK5Board5Field
	.def	__Z13can_move_jump9MOVE_JUMPRK5Board5Field;	.scl	2;	.type	32;	.endef
__Z13can_move_jump9MOVE_JUMPRK5Board5Field:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	cmpl	$1, 16(%ebp)
	je	L62
	cmpl	$2, 16(%ebp)
	je	L62
	movl	$190, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$LC3, (%esp)
	call	__assert
L62:
	movb	$0, -1(%ebp)
	jmp	L63
L68:
	movzbl	-1(%ebp), %edx
	movl	12(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	L64
	movzbl	-1(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__Z15check_move_jump9MOVE_JUMPRK5Boardh5Field
	xorl	$1, %eax
	testb	%al, %al
	jne	L64
	movb	$1, -18(%ebp)
	jmp	L65
L64:
	movb	$0, -18(%ebp)
L65:
	movzbl	-18(%ebp), %eax
	testb	%al, %al
	je	L66
	movb	$1, -17(%ebp)
	jmp	L67
L66:
	incb	-1(%ebp)
L63:
	cmpb	$63, -1(%ebp)
	jbe	L68
	movb	$0, -17(%ebp)
L67:
	movzbl	-17(%ebp), %eax
	leave
	ret
	.section .rdata,"dr"
LC4:
	.ascii "0\0"
	.text
	.align 2
.globl __ZN5Board9to_stringEPc
	.def	__ZN5Board9to_stringEPc;	.scl	2;	.type	32;	.endef
__ZN5Board9to_stringEPc:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$0, -8(%ebp)
	jmp	L71
L80:
	movl	-8(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$30, %eax
	addl	%edx, %eax
	sarl	$2, %eax
	andl	$1, %eax
	movl	%eax, -4(%ebp)
	movl	-8(%ebp), %eax
	addl	%eax, %eax
	subl	-4(%ebp), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -20(%ebp)
	cmpl	$6, -20(%ebp)
	ja	L72
	movl	-20(%ebp), %edx
	movl	L78(,%edx,4), %eax
	jmp	*%eax
	.section .rdata,"dr"
	.align 4
L78:
	.long	L73
	.long	L74
	.long	L75
	.long	L72
	.long	L72
	.long	L76
	.long	L77
	.text
L74:
	movl	-8(%ebp), %eax
	addl	12(%ebp), %eax
	movb	$98, (%eax)
	jmp	L79
L75:
	movl	-8(%ebp), %eax
	addl	12(%ebp), %eax
	movb	$119, (%eax)
	jmp	L79
L76:
	movl	-8(%ebp), %eax
	addl	12(%ebp), %eax
	movb	$66, (%eax)
	jmp	L79
L77:
	movl	-8(%ebp), %eax
	addl	12(%ebp), %eax
	movb	$87, (%eax)
	jmp	L79
L73:
	movl	-8(%ebp), %eax
	addl	12(%ebp), %eax
	movb	$45, (%eax)
	jmp	L79
L72:
	movl	$97, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$LC4, (%esp)
	call	__assert
L79:
	movl	12(%ebp), %eax
	addl	$32, %eax
	movb	$0, (%eax)
	incl	-8(%ebp)
L71:
	cmpl	$31, -8(%ebp)
	jle	L80
	leave
	ret
.globl __Z9serializev
	.def	__Z9serializev;	.scl	2;	.type	32;	.endef
__Z9serializev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	_turn, %eax
	andl	$1, %eax
	testb	%al, %al
	je	L83
	movb	$87, -1(%ebp)
	jmp	L84
L83:
	movb	$66, -1(%ebp)
L84:
	movzbl	-1(%ebp), %eax
	movb	%al, _buffer
	movb	$58, _buffer+1
	movl	$_buffer+2, 4(%esp)
	movl	$_b, (%esp)
	call	__ZN5Board9to_stringEPc
	movb	$10, _buffer+34
	movb	$0, _buffer+35
	movl	$_buffer, %eax
	leave
	ret
	.section .rdata,"dr"
LC5:
	.ascii "[mcp] \0"
LC6:
	.ascii "\12\0"
	.align 4
LC7:
	.ascii "(winner >= 0) && (winner <= 2)\0"
LC8:
	.ascii "[mcp] DRAW.\12\0"
LC9:
	.ascii "BLACK\0"
LC10:
	.ascii "WHITE\0"
LC11:
	.ascii "[mcp] %s wins.\12\0"
	.text
	.def	__ZL8end_gameiPKcz;	.scl	3;	.type	32;	.endef
__ZL8end_gameiPKcz:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	$LC5, 4(%esp)
	movl	%eax, (%esp)
	call	_fprintf
	leal	16(%ebp), %eax
	movl	%eax, -4(%ebp)
	movl	-4(%ebp), %ecx
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	12(%ebp), %edx
	call	_vfprintf
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	$LC6, 4(%esp)
	movl	%eax, (%esp)
	call	_fprintf
	cmpl	$0, 8(%ebp)
	js	L87
	cmpl	$2, 8(%ebp)
	jle	L88
L87:
	movl	$219, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$LC7, (%esp)
	call	__assert
L88:
	cmpl	$2, 8(%ebp)
	jne	L89
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	$LC8, 4(%esp)
	movl	%eax, (%esp)
	call	_fprintf
	jmp	L90
L89:
	cmpl	$0, 8(%ebp)
	je	L91
	movl	$LC9, -20(%ebp)
	jmp	L92
L91:
	movl	$LC10, -20(%ebp)
L92:
	movl	-20(%ebp), %eax
	movl	__imp___iob, %edx
	addl	$64, %edx
	movl	%eax, 8(%esp)
	movl	$LC11, 4(%esp)
	movl	%edx, (%esp)
	call	_fprintf
L90:
	movl	$0, (%esp)
	call	_exit
	.section .rdata,"dr"
LC12:
	.ascii "no move '%s'\0"
LC13:
	.ascii "error parsing move '%s'\0"
	.align 4
LC14:
	.ascii "INVALID move %ld-%ld (jump forced)\12\0"
	.align 4
LC15:
	.ascii "INVALID move %ld-%ld (jump forced)\0"
LC16:
	.ascii "INVALID move %ld-%ld\12\0"
LC17:
	.ascii "INVALID move %ld-%ld\0"
LC18:
	.ascii "[mcp] valid move %ld-%ld\12\0"
LC19:
	.ascii "error parsing '%s'\0"
LC20:
	.ascii "INVALID jump %ldx%ld\12\0"
LC21:
	.ascii "INVALID jump %ldx%ld\0"
LC22:
	.ascii "[mcp] valid jump %ldx%ld\12\0"
	.align 4
LC23:
	.ascii "INVALID jump (jump forced %ld)\12\0"
	.align 4
LC24:
	.ascii "INVALID jump (jump forced %ld)\0"
LC25:
	.ascii "no moves left\0"
LC26:
	.ascii "20 moves timeout\0"
	.text
.globl __Z11deserializePc
	.def	__Z11deserializePc;	.scl	2;	.type	32;	.endef
__Z11deserializePc:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	subl	$368, %esp
	movl	8(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	L95
	movl	_turn, %eax
	movl	%eax, %edx
	andl	$1, %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$LC12, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL8end_gameiPKcz
L95:
	movl	-40(%ebp), %edx
	movl	$10, 8(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_strtol
	movl	%eax, -36(%ebp)
	movl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$45, %al
	jne	L96
	movl	-40(%ebp), %eax
	incl	%eax
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %edx
	movl	$10, 8(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_strtol
	movl	%eax, -32(%ebp)
	movl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	L97
	movl	_turn, %eax
	movl	%eax, %edx
	andl	$1, %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$LC13, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL8end_gameiPKcz
L97:
	movl	_turn, %eax
	andl	$1, %eax
	testb	%al, %al
	je	L98
	movl	$2, -332(%ebp)
	jmp	L99
L98:
	movl	$1, -332(%ebp)
L99:
	movl	-332(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$_b, 4(%esp)
	movl	$2, (%esp)
	call	__Z13can_move_jump9MOVE_JUMPRK5Board5Field
	testb	%al, %al
	je	L100
	movzbl	_debug, %eax
	testb	%al, %al
	je	L101
	movl	__imp___iob, %eax
	leal	64(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$LC14, 4(%esp)
	movl	%edx, (%esp)
	call	_fprintf
	movl	$0, -328(%ebp)
	jmp	L102
L101:
	movl	_turn, %eax
	movl	%eax, %edx
	andl	$1, %edx
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$LC15, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL8end_gameiPKcz
L100:
	movl	-36(%ebp), %eax
	addl	%eax, %eax
	leal	-1(%eax), %ecx
	movl	-36(%ebp), %eax
	leal	-1(%eax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$30, %eax
	addl	%edx, %eax
	sarl	$2, %eax
	andl	$1, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -28(%ebp)
	movl	-32(%ebp), %eax
	addl	%eax, %eax
	leal	-1(%eax), %ecx
	movl	-32(%ebp), %eax
	leal	-1(%eax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$30, %eax
	addl	%edx, %eax
	sarl	$2, %eax
	andl	$1, %eax
	movl	%ecx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	movl	%eax, -24(%ebp)
	movl	_turn, %eax
	andl	$1, %eax
	testb	%al, %al
	je	L103
	movl	$2, -324(%ebp)
	jmp	L104
L103:
	movl	$1, -324(%ebp)
L104:
	movl	-24(%ebp), %eax
	movzbl	%al, %edx
	movl	-28(%ebp), %eax
	movzbl	%al, %eax
	movl	-324(%ebp), %edi
	movl	%edi, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$_b, 4(%esp)
	movl	$1, (%esp)
	call	__Z9move_jump9MOVE_JUMPR5Boardhh5Field
	testl	%eax, %eax
	sete	%al
	testb	%al, %al
	je	L105
	movzbl	_debug, %eax
	testb	%al, %al
	je	L106
	movl	__imp___iob, %eax
	leal	64(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$LC16, 4(%esp)
	movl	%edx, (%esp)
	call	_fprintf
	movl	$0, -328(%ebp)
	jmp	L102
L106:
	movl	_turn, %eax
	movl	%eax, %edx
	andl	$1, %edx
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$LC17, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL8end_gameiPKcz
L105:
	movl	-24(%ebp), %eax
	movl	_b(,%eax,4), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	L107
	movl	_idle, %eax
	incl	%eax
	movl	%eax, -320(%ebp)
	jmp	L108
L107:
	movl	$0, -320(%ebp)
L108:
	movl	-320(%ebp), %eax
	movl	%eax, _idle
	movl	__imp___iob, %eax
	leal	64(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$LC18, 4(%esp)
	movl	%edx, (%esp)
	call	_fprintf
	movl	-24(%ebp), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	$_b, (%esp)
	call	__Z7upgradeR5Boardh
	jmp	L109
L96:
	movl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$120, %al
	jne	L110
	movl	$_b, 4(%esp)
	leal	-296(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN5BoardC1ERKS_
	jmp	L111
L122:
	movl	-40(%ebp), %eax
	incl	%eax
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %edx
	movl	$10, 8(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_strtol
	movl	%eax, -20(%ebp)
	movl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	L112
	movl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$120, %al
	je	L112
	movl	_turn, %eax
	movl	%eax, %edx
	andl	$1, %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$LC19, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL8end_gameiPKcz
L112:
	movl	-36(%ebp), %eax
	addl	%eax, %eax
	leal	-1(%eax), %ecx
	movl	-36(%ebp), %eax
	leal	-1(%eax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$30, %eax
	addl	%edx, %eax
	sarl	$2, %eax
	andl	$1, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -16(%ebp)
	movl	-20(%ebp), %eax
	addl	%eax, %eax
	leal	-1(%eax), %ecx
	movl	-20(%ebp), %eax
	leal	-1(%eax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$30, %eax
	addl	%edx, %eax
	sarl	$2, %eax
	andl	$1, %eax
	movl	%ecx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	movl	%eax, -12(%ebp)
	movl	_turn, %eax
	andl	$1, %eax
	testb	%al, %al
	je	L113
	movl	$2, -316(%ebp)
	jmp	L114
L113:
	movl	$1, -316(%ebp)
L114:
	movl	-12(%ebp), %eax
	movzbl	%al, %edx
	movl	-16(%ebp), %eax
	movzbl	%al, %eax
	movl	-316(%ebp), %edi
	movl	%edi, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$_b, 4(%esp)
	movl	$2, (%esp)
	call	__Z9move_jump9MOVE_JUMPR5Boardhh5Field
	testl	%eax, %eax
	sete	%al
	testb	%al, %al
	je	L115
	movzbl	_debug, %eax
	testb	%al, %al
	je	L116
	movl	__imp___iob, %eax
	leal	64(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$LC20, 4(%esp)
	movl	%edx, (%esp)
	call	_fprintf
	movl	$_b, -336(%ebp)
	leal	-296(%ebp), %eax
	movl	%eax, -340(%ebp)
	movl	$64, -344(%ebp)
	movl	-336(%ebp), %edi
	movl	-340(%ebp), %esi
	movl	-344(%ebp), %ecx
	rep movsl
	movl	$0, -328(%ebp)
	jmp	L102
L116:
	movl	_turn, %eax
	movl	%eax, %edx
	andl	$1, %edx
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$LC21, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL8end_gameiPKcz
L115:
	movl	$0, _idle
	movl	__imp___iob, %eax
	leal	64(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$LC22, 4(%esp)
	movl	%edx, (%esp)
	call	_fprintf
	movl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	L117
	movl	-20(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	L111
L117:
	movl	_turn, %eax
	andl	$1, %eax
	testb	%al, %al
	je	L118
	movl	$2, -312(%ebp)
	jmp	L119
L118:
	movl	$1, -312(%ebp)
L119:
	movl	-12(%ebp), %eax
	movzbl	%al, %eax
	movl	-312(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$_b, 4(%esp)
	movl	$2, (%esp)
	call	__Z15check_move_jump9MOVE_JUMPRK5Boardh5Field
	testb	%al, %al
	je	L120
	movzbl	_debug, %eax
	testb	%al, %al
	je	L121
	movl	__imp___iob, %eax
	leal	64(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$LC23, 4(%esp)
	movl	%edx, (%esp)
	call	_fprintf
	movl	$_b, -348(%ebp)
	leal	-296(%ebp), %ecx
	movl	%ecx, -352(%ebp)
	movl	$64, -356(%ebp)
	movl	-348(%ebp), %edi
	movl	-352(%ebp), %esi
	movl	-356(%ebp), %ecx
	rep movsl
	movl	$0, -328(%ebp)
	jmp	L102
L121:
	movl	_turn, %eax
	movl	%eax, %edx
	andl	$1, %edx
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$LC24, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL8end_gameiPKcz
L120:
	movl	-12(%ebp), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	$_b, (%esp)
	call	__Z7upgradeR5Boardh
L111:
	movl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	L122
	jmp	L109
L110:
	movl	_turn, %eax
	movl	%eax, %edx
	andl	$1, %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$LC19, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL8end_gameiPKcz
L109:
	movl	_turn, %eax
	incl	%eax
	movl	%eax, _turn
	movl	_turn, %eax
	andl	$1, %eax
	testb	%al, %al
	je	L123
	movl	$2, -304(%ebp)
	jmp	L124
L123:
	movl	$1, -304(%ebp)
L124:
	movl	-304(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$_b, 4(%esp)
	movl	$1, (%esp)
	call	__Z13can_move_jump9MOVE_JUMPRK5Board5Field
	xorl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	L125
	movl	_turn, %eax
	andl	$1, %eax
	testb	%al, %al
	je	L126
	movl	$2, -300(%ebp)
	jmp	L127
L126:
	movl	$1, -300(%ebp)
L127:
	movl	-300(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$_b, 4(%esp)
	movl	$2, (%esp)
	call	__Z13can_move_jump9MOVE_JUMPRK5Board5Field
	xorl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	L125
	movb	$1, -305(%ebp)
	jmp	L128
L125:
	movb	$0, -305(%ebp)
L128:
	movzbl	-305(%ebp), %eax
	testb	%al, %al
	je	L129
	movl	_turn, %eax
	andl	$1, %eax
	movl	$LC25, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL8end_gameiPKcz
L129:
	movl	_idle, %eax
	cmpl	$20, %eax
	jle	L130
	movl	$LC26, 4(%esp)
	movl	$2, (%esp)
	call	__ZL8end_gameiPKcz
L130:
	movl	$1, -328(%ebp)
L102:
	movl	-328(%ebp), %eax
	addl	$368, %esp
	popl	%esi
	popl	%edi
	leave
	ret
	.def	_printf;	.scl	3;	.type	32;	.endef
_printf:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	leal	12(%ebp), %eax
	movl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	___mingw_vprintf
	leave
	ret
	.section .rdata,"dr"
	.align 4
LC27:
	.ascii "+----+----+----+----+----+----+----+----+\12\0"
LC28:
	.ascii "|    \0"
LC29:
	.ascii "|%c%2d%c\0"
LC30:
	.ascii "|\12\0"
	.text
	.align 2
.globl __ZN5Board4drawEv
	.def	__ZN5Board4drawEv;	.scl	2;	.type	32;	.endef
__ZN5Board4drawEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$0, -8(%ebp)
	jmp	L135
L145:
	movl	-8(%ebp), %eax
	andl	$7, %eax
	testl	%eax, %eax
	jne	L136
	movl	$LC27, (%esp)
	call	_printf
L136:
	movb	$32, -1(%ebp)
	movl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	andl	$1, %eax
	testb	%al, %al
	je	L137
	movb	$98, -1(%ebp)
L137:
	movl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	L138
	movb	$119, -1(%ebp)
L138:
	movl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	L139
	movzbl	-1(%ebp), %eax
	subl	$32, %eax
	movb	%al, -1(%ebp)
L139:
	movl	-8(%ebp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	L140
	movl	-8(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	L141
L140:
	movl	-8(%ebp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	L142
	movl	-8(%ebp), %eax
	andl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	L142
L141:
	movl	$LC28, (%esp)
	call	_printf
	jmp	L143
L142:
	movsbl	-1(%ebp),%ecx
	movl	-8(%ebp), %edx
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	incl	%eax
	movsbl	-1(%ebp),%edx
	movl	%ecx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$LC29, (%esp)
	call	_printf
L143:
	movl	-8(%ebp), %eax
	andl	$7, %eax
	cmpl	$7, %eax
	jne	L144
	movl	$LC30, (%esp)
	call	_printf
L144:
	incl	-8(%ebp)
L135:
	cmpl	$63, -8(%ebp)
	jle	L145
	movl	$LC27, (%esp)
	call	_printf
	leave
	ret
	.section .rdata,"dr"
LC31:
	.ascii "errno = %d\12\0"
	.text
	.def	__ZL5errorPKcz;	.scl	3;	.type	32;	.endef
__ZL5errorPKcz:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	leal	12(%ebp), %eax
	movl	%eax, -4(%ebp)
	movl	-4(%ebp), %ecx
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	8(%ebp), %edx
	call	_vfprintf
	call	__errno
	movl	(%eax), %edx
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%edx, 8(%esp)
	movl	$LC31, 4(%esp)
	movl	%eax, (%esp)
	call	_fprintf
	movl	$0, (%esp)
	call	_perror
	movl	$-1, (%esp)
	call	_exit
	.section .rdata,"dr"
	.align 4
LC32:
	.ascii "input string must be 32 chars\12\0"
	.align 4
LC33:
	.ascii "unknown char '%c' in input string\12\0"
	.text
	.align 2
.globl __ZN5Board11from_stringEPKc
	.def	__ZN5Board11from_stringEPKc;	.scl	2;	.type	32;	.endef
__ZN5Board11from_stringEPKc:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlen
	cmpl	$32, %eax
	je	L150
	movl	$LC32, (%esp)
	call	__ZL5errorPKcz
L150:
	movl	$0, -12(%ebp)
	jmp	L151
L160:
	movl	-12(%ebp), %eax
	addl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movb	%al, -17(%ebp)
	cmpb	$87, -17(%ebp)
	je	L155
	cmpb	$87, -17(%ebp)
	jg	L158
	cmpb	$45, -17(%ebp)
	je	L153
	cmpb	$66, -17(%ebp)
	je	L154
	jmp	L152
L158:
	cmpb	$98, -17(%ebp)
	je	L156
	cmpb	$119, -17(%ebp)
	je	L157
	jmp	L152
L156:
	movl	$1, -8(%ebp)
	jmp	L159
L157:
	movl	$2, -8(%ebp)
	jmp	L159
L154:
	movl	$5, -8(%ebp)
	jmp	L159
L155:
	movl	$6, -8(%ebp)
	jmp	L159
L153:
	movl	$0, -8(%ebp)
	jmp	L159
L152:
	movl	-12(%ebp), %eax
	addl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movsbl	%al,%eax
	movl	%eax, 4(%esp)
	movl	$LC33, (%esp)
	call	__ZL5errorPKcz
L159:
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$30, %eax
	addl	%edx, %eax
	sarl	$2, %eax
	andl	$1, %eax
	movl	%eax, -4(%ebp)
	movl	-12(%ebp), %eax
	addl	%eax, %eax
	subl	-4(%ebp), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx,%ecx,4)
	movl	-12(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	addl	-4(%ebp), %edx
	movl	8(%ebp), %eax
	movl	$0, (%eax,%edx,4)
	incl	-12(%ebp)
L151:
	movl	-12(%ebp), %eax
	addl	12(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	L160
	leave
	ret
	.section .rdata,"dr"
	.align 4
LC34:
	.ascii "bbbbbbbbbbbb--------wwwwwwwwwwww\0"
	.section	.text$_ZN5BoardC1Ev,"x"
	.linkonce discard
	.align 2
.globl __ZN5BoardC1Ev
	.def	__ZN5BoardC1Ev;	.scl	2;	.type	32;	.endef
__ZN5BoardC1Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	movl	$LC34, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN5Board11from_stringEPKc
	leave
	ret
	.text
	.def	__Z41__static_initialization_and_destruction_0ii;	.scl	3;	.type	32;	.endef
__Z41__static_initialization_and_destruction_0ii:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	cmpl	$1, 8(%ebp)
	jne	L166
	cmpl	$65535, 12(%ebp)
	jne	L166
	movl	$_b, (%esp)
	call	__ZN5BoardC1Ev
L166:
	leave
	ret
	.def	__GLOBAL__I__ZN5Board11from_stringEPKc;	.scl	3;	.type	32;	.endef
__GLOBAL__I__ZN5Board11from_stringEPKc:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	movl	$65535, 4(%esp)
	movl	$1, (%esp)
	call	__Z41__static_initialization_and_destruction_0ii
	leave
	ret
	.section	.ctors,"w"
	.align 4
	.long	__GLOBAL__I__ZN5Board11from_stringEPKc
	.section .rdata,"dr"
	.align 4
LC35:
	.ascii "init failed ('B' or 'W' expected)\12\0"
LC36:
	.ascii "init failed (':' expected)\12\0"
	.text
.globl __Z4initPKc
	.def	__Z4initPKc;	.scl	2;	.type	32;	.endef
__Z4initPKc:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	cmpl	$0, 8(%ebp)
	je	L174
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$87, %al
	jne	L171
	movl	_turn, %eax
	incl	%eax
	movl	%eax, _turn
	jmp	L172
L171:
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$66, %al
	je	L172
	movl	$LC35, (%esp)
	call	__ZL5errorPKcz
L172:
	movl	8(%ebp), %eax
	incl	%eax
	movzbl	(%eax), %eax
	cmpb	$58, %al
	je	L173
	movl	$LC36, (%esp)
	call	__ZL5errorPKcz
L173:
	movl	8(%ebp), %eax
	addl	$2, %eax
	movl	%eax, 4(%esp)
	movl	$_b, (%esp)
	call	__ZN5Board11from_stringEPKc
L174:
	leave
	ret
.globl _b
	.bss
	.align 32
_b:
	.space 256
.globl _turn
	.align 4
_turn:
	.space 4
.globl _idle
	.align 4
_idle:
	.space 4
.globl _buffer
	.align 32
_buffer:
	.space 36
	.def	___mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	___mingw_vprintf;	.scl	2;	.type	32;	.endef
	.def	__errno;	.scl	2;	.type	32;	.endef
	.def	_perror;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	__assert;	.scl	2;	.type	32;	.endef
	.def	_exit;	.scl	2;	.type	32;	.endef
	.def	_strtol;	.scl	2;	.type	32;	.endef
#endif
#endif
