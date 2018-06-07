	.file	"buffer.bc"
	.file	1 "main.cpp"
	.file	2 "./stringbuffer.hpp"
	.file	3 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h"
	.file	4 "stringbuffer.cpp"
	.section	.debug_info,"",@progbits
.Lsection_info:
	.section	.debug_abbrev,"",@progbits
.Lsection_abbrev:
	.section	.debug_aranges,"",@progbits
	.section	.debug_macinfo,"",@progbits
	.section	.debug_line,"",@progbits
.Lsection_line:
	.section	.debug_loc,"",@progbits
	.section	.debug_pubtypes,"",@progbits
	.section	.debug_str,"MS",@progbits,1
.Lsection_str:
	.section	.debug_ranges,"",@progbits
.Ldebug_range:
	.section	.debug_loc,"",@progbits
.Lsection_debug_loc:
	.text
.Ltext_begin:
	.data
	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	__cxx_global_var_init,@function
__cxx_global_var_init:                  # @__cxx_global_var_init
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
.Leh_func_begin0:
	.cfi_lsda 3, .Lexception0
.Lfunc_begin0:
	.loc	1 6 0                   # main.cpp:6:0
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 32
.Ltmp7:
	.cfi_offset %rbx, -16
	movl	$56, %edi
	.loc	1 6 0 prologue_end      # main.cpp:6:0
.Ltmp8:
	callq	_Znwm
	movq	%rax, %rbx
.Ltmp0:
	movq	%rbx, %rdi
	movl	$.L.str, %esi
	callq	_ZN12StringBufferC1EPc
.Ltmp1:
# BB#1:                                 # %invoke.cont
	movq	%rbx, buffer(%rip)
	addq	$16, %rsp
	popq	%rbx
	ret
.LBB0_2:                                # %eh.resume
.Ltmp2:
	movq	%rax, 8(%rsp)
	movl	%edx, 4(%rsp)
	movq	%rbx, %rdi
	callq	_ZdlPv
	movq	8(%rsp), %rdi
	callq	_Unwind_Resume
.Ltmp9:
.Ltmp10:
	.size	__cxx_global_var_init, .Ltmp10-__cxx_global_var_init
.Lfunc_end0:
	.cfi_endproc
.Leh_func_end0:
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table0:
.Lexception0:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.byte	41                      # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	39                      # Call site table length
.Lset0 = .Leh_func_begin0-.Leh_func_begin0 # >> Call Site 1 <<
	.long	.Lset0
.Lset1 = .Ltmp0-.Leh_func_begin0        #   Call between .Leh_func_begin0 and .Ltmp0
	.long	.Lset1
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
.Lset2 = .Ltmp0-.Leh_func_begin0        # >> Call Site 2 <<
	.long	.Lset2
.Lset3 = .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.long	.Lset3
.Lset4 = .Ltmp2-.Leh_func_begin0        #     jumps to .Ltmp2
	.long	.Lset4
	.byte	0                       #   On action: cleanup
.Lset5 = .Ltmp1-.Leh_func_begin0        # >> Call Site 3 <<
	.long	.Lset5
.Lset6 = .Leh_func_end0-.Ltmp1          #   Call between .Ltmp1 and .Leh_func_end0
	.long	.Lset6
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.align	4

	.text
	.globl	_Z11thread_mainPv
	.align	16, 0x90
	.type	_Z11thread_mainPv,@function
_Z11thread_mainPv:                      # @_Z11thread_mainPv
	.cfi_startproc
.Lfunc_begin1:
	.loc	1 8 0                   # main.cpp:8:0
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp12:
	.cfi_def_cfa_offset 32
	movq	%rdi, 8(%rsp)
	.align	16, 0x90
.LBB1_1:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	.loc	1 10 0 prologue_end     # main.cpp:10:0
.Ltmp13:
	movq	buffer(%rip), %rdi
	xorl	%esi, %esi
	movl	$3, %edx
	callq	_ZN12StringBuffer5eraseEii
	.loc	1 11 0                  # main.cpp:11:0
	movq	buffer(%rip), %rdi
	movl	$.L.str, %esi
	callq	_ZN12StringBuffer6appendEPc
	.loc	1 12 0                  # main.cpp:12:0
	jmp	.LBB1_1
.Ltmp14:
.Ltmp15:
	.size	_Z11thread_mainPv, .Ltmp15-_Z11thread_mainPv
.Lfunc_end1:
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
.Leh_func_begin2:
	.cfi_lsda 3, .Lexception2
.Lfunc_begin2:
	.loc	1 15 0                  # main.cpp:15:0
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp21:
	.cfi_def_cfa_offset 16
	subq	$64, %rsp
.Ltmp22:
	.cfi_def_cfa_offset 80
.Ltmp23:
	.cfi_offset %rbx, -16
	movl	$0, 60(%rsp)
	movl	%edi, 56(%rsp)
	movq	%rsi, 48(%rsp)
	leaq	40(%rsp), %rdi
	xorl	%esi, %esi
	.loc	1 19 0 prologue_end     # main.cpp:19:0
.Ltmp24:
	movl	$_Z11thread_mainPv, %edx
	xorl	%ecx, %ecx
	callq	pthread_create
	movl	%eax, 36(%rsp)
	jmp	.LBB2_1
	.align	16, 0x90
.LBB2_2:                                # %invoke.cont
                                        #   in Loop: Header=BB2_1 Depth=1
	.loc	1 22 0                  # main.cpp:22:0
.Ltmp25:
	movq	%rbx, 24(%rsp)
	.loc	1 23 0                  # main.cpp:23:0
	movq	buffer(%rip), %rsi
	movq	%rbx, %rdi
	callq	_ZN12StringBuffer6appendEPS_
.LBB2_1:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
.Ltmp26:
	#DEBUG_VALUE: sb <- [%rsp+$24]+$0
	movl	$56, %edi
	.loc	1 22 0                  # main.cpp:22:0
	callq	_Znwm
	movq	%rax, %rbx
.Ltmp16:
	movq	%rbx, %rdi
	callq	_ZN12StringBufferC1Ev
.Ltmp17:
	jmp	.LBB2_2
.LBB2_3:                                # %eh.resume
.Ltmp18:
	movq	%rax, 16(%rsp)
	movl	%edx, 12(%rsp)
	movq	%rbx, %rdi
	callq	_ZdlPv
	movq	16(%rsp), %rdi
	callq	_Unwind_Resume
.Ltmp27:
.Ltmp28:
	.size	main, .Ltmp28-main
.Lfunc_end2:
	.cfi_endproc
.Leh_func_end2:
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table2:
.Lexception2:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.byte	41                      # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	39                      # Call site table length
.Lset7 = .Leh_func_begin2-.Leh_func_begin2 # >> Call Site 1 <<
	.long	.Lset7
.Lset8 = .Ltmp16-.Leh_func_begin2       #   Call between .Leh_func_begin2 and .Ltmp16
	.long	.Lset8
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
.Lset9 = .Ltmp16-.Leh_func_begin2       # >> Call Site 2 <<
	.long	.Lset9
.Lset10 = .Ltmp17-.Ltmp16               #   Call between .Ltmp16 and .Ltmp17
	.long	.Lset10
.Lset11 = .Ltmp18-.Leh_func_begin2      #     jumps to .Ltmp18
	.long	.Lset11
	.byte	0                       #   On action: cleanup
.Lset12 = .Ltmp17-.Leh_func_begin2      # >> Call Site 3 <<
	.long	.Lset12
.Lset13 = .Leh_func_end2-.Ltmp17        #   Call between .Ltmp17 and .Leh_func_end2
	.long	.Lset13
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.align	4

	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	_GLOBAL__I_a,@function
_GLOBAL__I_a:                           # @_GLOBAL__I_a
	.cfi_startproc
.Lfunc_begin3:
	.loc	1 27 0                  # main.cpp:27:0
# BB#0:                                 # %entry
	.loc	1 27 0 prologue_end     # main.cpp:27:0
	pushq	%rax
.Ltmp30:
	.cfi_def_cfa_offset 16
	callq	__cxx_global_var_init
	popq	%rax
	ret
.Ltmp31:
.Ltmp32:
	.size	_GLOBAL__I_a, .Ltmp32-_GLOBAL__I_a
.Lfunc_end3:
	.cfi_endproc

	.align	16, 0x90
	.type	__cxx_global_var_init4,@function
__cxx_global_var_init4:                 # @__cxx_global_var_init4
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
.Leh_func_begin4:
	.cfi_lsda 3, .Lexception4
.Lfunc_begin4:
	.loc	4 11 0                  # stringbuffer.cpp:11:0
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp38:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp39:
	.cfi_def_cfa_offset 32
.Ltmp40:
	.cfi_offset %rbx, -16
	movl	$56, %edi
	.loc	4 11 0 prologue_end     # stringbuffer.cpp:11:0
.Ltmp41:
	callq	_Znwm
	movq	%rax, %rbx
.Ltmp33:
	movq	%rbx, %rdi
	movl	$.L.str1, %esi
	callq	_ZN12StringBufferC1EPc
.Ltmp34:
# BB#1:                                 # %invoke.cont
	movq	%rbx, _ZN12StringBuffer11null_bufferE(%rip)
	addq	$16, %rsp
	popq	%rbx
	ret
.LBB4_2:                                # %eh.resume
.Ltmp35:
	movq	%rax, 8(%rsp)
	movl	%edx, 4(%rsp)
	movq	%rbx, %rdi
	callq	_ZdlPv
	movq	8(%rsp), %rdi
	callq	_Unwind_Resume
.Ltmp42:
.Ltmp43:
	.size	__cxx_global_var_init4, .Ltmp43-__cxx_global_var_init4
.Lfunc_end4:
	.cfi_endproc
.Leh_func_end4:
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table4:
.Lexception4:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.byte	41                      # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	39                      # Call site table length
.Lset14 = .Leh_func_begin4-.Leh_func_begin4 # >> Call Site 1 <<
	.long	.Lset14
.Lset15 = .Ltmp33-.Leh_func_begin4      #   Call between .Leh_func_begin4 and .Ltmp33
	.long	.Lset15
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
.Lset16 = .Ltmp33-.Leh_func_begin4      # >> Call Site 2 <<
	.long	.Lset16
.Lset17 = .Ltmp34-.Ltmp33               #   Call between .Ltmp33 and .Ltmp34
	.long	.Lset17
.Lset18 = .Ltmp35-.Leh_func_begin4      #     jumps to .Ltmp35
	.long	.Lset18
	.byte	0                       #   On action: cleanup
.Lset19 = .Ltmp34-.Leh_func_begin4      # >> Call Site 3 <<
	.long	.Lset19
.Lset20 = .Leh_func_end4-.Ltmp34        #   Call between .Ltmp34 and .Leh_func_end4
	.long	.Lset20
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.align	4

	.text
	.globl	_ZN12StringBufferC2Ev
	.align	16, 0x90
	.type	_ZN12StringBufferC2Ev,@function
_ZN12StringBufferC2Ev:                  # @_ZN12StringBufferC2Ev
	.cfi_startproc
.Lfunc_begin5:
	.loc	4 13 0                  # stringbuffer.cpp:13:0
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp46:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp47:
	.cfi_def_cfa_offset 32
.Ltmp48:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	%rbx, 8(%rsp)
	movl	$16, %edi
	.loc	4 14 0 prologue_end     # stringbuffer.cpp:14:0
.Ltmp49:
	callq	_Znam
	movq	%rax, (%rbx)
	.loc	4 15 0                  # stringbuffer.cpp:15:0
	movq	$16, 8(%rbx)
.Ltmp50:
	.loc	4 13 0                  # stringbuffer.cpp:13:0
	addq	$16, %rbx
	.loc	4 17 0                  # stringbuffer.cpp:17:0
.Ltmp51:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	pthread_mutex_init
	.loc	4 18 0                  # stringbuffer.cpp:18:0
	addq	$16, %rsp
	popq	%rbx
	ret
.Ltmp52:
.Ltmp53:
	.size	_ZN12StringBufferC2Ev, .Ltmp53-_ZN12StringBufferC2Ev
.Lfunc_end5:
	.cfi_endproc

	.globl	_ZN12StringBufferC2Ei
	.align	16, 0x90
	.type	_ZN12StringBufferC2Ei,@function
_ZN12StringBufferC2Ei:                  # @_ZN12StringBufferC2Ei
	.cfi_startproc
.Lfunc_begin6:
	.loc	4 20 0                  # stringbuffer.cpp:20:0
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp56:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp57:
	.cfi_def_cfa_offset 32
.Ltmp58:
	.cfi_offset %rbx, -16
	movq	%rdi, 8(%rsp)
	movl	%esi, 4(%rsp)
	movq	$-1, %rdi
	.loc	4 21 0 prologue_end     # stringbuffer.cpp:21:0
.Ltmp59:
	movslq	4(%rsp), %rax
	testq	%rax, %rax
	cmovnsq	%rax, %rdi
	movq	8(%rsp), %rbx
	callq	_Znam
	movq	%rax, (%rbx)
	.loc	4 22 0                  # stringbuffer.cpp:22:0
	movl	4(%rsp), %eax
	movl	%eax, 8(%rbx)
	.loc	4 23 0                  # stringbuffer.cpp:23:0
	movl	$0, 12(%rbx)
.Ltmp60:
	.loc	4 20 0                  # stringbuffer.cpp:20:0
	leaq	16(%rbx), %rdi
	xorl	%esi, %esi
	.loc	4 24 0                  # stringbuffer.cpp:24:0
.Ltmp61:
	callq	pthread_mutex_init
	.loc	4 25 0                  # stringbuffer.cpp:25:0
	addq	$16, %rsp
	popq	%rbx
	ret
.Ltmp62:
.Ltmp63:
	.size	_ZN12StringBufferC2Ei, .Ltmp63-_ZN12StringBufferC2Ei
.Lfunc_end6:
	.cfi_endproc

	.globl	_ZN12StringBufferC2EPc
	.align	16, 0x90
	.type	_ZN12StringBufferC2EPc,@function
_ZN12StringBufferC2EPc:                 # @_ZN12StringBufferC2EPc
	.cfi_startproc
.Lfunc_begin7:
	.loc	4 27 0                  # stringbuffer.cpp:27:0
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp66:
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
.Ltmp67:
	.cfi_def_cfa_offset 48
.Ltmp68:
	.cfi_offset %rbx, -16
	movq	%rdi, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movq	24(%rsp), %rbx
	.loc	4 28 0 prologue_end     # stringbuffer.cpp:28:0
.Ltmp69:
	movq	%rsi, %rdi
	callq	strlen
	movq	$-1, %rdi
	addl	$16, %eax
	movl	%eax, 12(%rsp)
	.loc	4 29 0                  # stringbuffer.cpp:29:0
	movslq	12(%rsp), %rax
	testq	%rax, %rax
	cmovnsq	%rax, %rdi
	callq	_Znam
.Ltmp70:
	.loc	4 27 0                  # stringbuffer.cpp:27:0
	leaq	16(%rbx), %rdi
	.loc	4 29 0                  # stringbuffer.cpp:29:0
.Ltmp71:
	movq	%rax, (%rbx)
	.loc	4 30 0                  # stringbuffer.cpp:30:0
	movl	12(%rsp), %eax
	movl	%eax, 8(%rbx)
	.loc	4 31 0                  # stringbuffer.cpp:31:0
	movl	$0, 12(%rbx)
	xorl	%esi, %esi
	.loc	4 32 0                  # stringbuffer.cpp:32:0
	callq	pthread_mutex_init
	.loc	4 33 0                  # stringbuffer.cpp:33:0
	movq	16(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_ZN12StringBuffer6appendEPc
	.loc	4 34 0                  # stringbuffer.cpp:34:0
	addq	$32, %rsp
	popq	%rbx
	ret
.Ltmp72:
.Ltmp73:
	.size	_ZN12StringBufferC2EPc, .Ltmp73-_ZN12StringBufferC2EPc
.Lfunc_end7:
	.cfi_endproc

	.globl	_ZN12StringBuffer6appendEPc
	.align	16, 0x90
	.type	_ZN12StringBuffer6appendEPc,@function
_ZN12StringBuffer6appendEPc:            # @_ZN12StringBuffer6appendEPc
	.cfi_startproc
.Lfunc_begin8:
	.loc	4 79 0                  # stringbuffer.cpp:79:0
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp77:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp78:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp79:
	.cfi_def_cfa_offset 48
.Ltmp80:
	.cfi_offset %rbx, -24
.Ltmp81:
	.cfi_offset %r14, -16
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	16(%rsp), %rbx
	.loc	4 80 0 prologue_end     # stringbuffer.cpp:80:0
.Ltmp82:
	leaq	16(%rbx), %r14
	movq	%r14, %rdi
	callq	pthread_mutex_lock
	.loc	4 81 0                  # stringbuffer.cpp:81:0
	cmpq	$0, 8(%rsp)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	.loc	4 82 0                  # stringbuffer.cpp:82:0
.Ltmp83:
	movq	$.L.str1, 8(%rsp)
.Ltmp84:
.LBB8_2:                                # %if.end
	.loc	4 85 0                  # stringbuffer.cpp:85:0
	movq	8(%rsp), %rdi
	callq	strlen
	movl	%eax, 4(%rsp)
	.loc	4 86 0                  # stringbuffer.cpp:86:0
	addl	12(%rbx), %eax
	movl	%eax, (%rsp)
	cmpl	8(%rbx), %eax
	jle	.LBB8_4
# BB#3:                                 # %if.then4
	.loc	4 88 0                  # stringbuffer.cpp:88:0
	movl	(%rsp), %esi
	movq	%rbx, %rdi
	callq	_ZN12StringBuffer14expandCapacityEi
.LBB8_4:                                # %if.end5
	.loc	4 89 0                  # stringbuffer.cpp:89:0
	movslq	12(%rbx), %rdi
	addq	(%rbx), %rdi
	movslq	4(%rsp), %rdx
	movq	8(%rsp), %rsi
	callq	memcpy
	.loc	4 90 0                  # stringbuffer.cpp:90:0
	movl	(%rsp), %eax
	movl	%eax, 12(%rbx)
	.loc	4 91 0                  # stringbuffer.cpp:91:0
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	.loc	4 92 0                  # stringbuffer.cpp:92:0
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	ret
.Ltmp85:
.Ltmp86:
	.size	_ZN12StringBuffer6appendEPc, .Ltmp86-_ZN12StringBuffer6appendEPc
.Lfunc_end8:
	.cfi_endproc

	.globl	_ZN12StringBufferD2Ev
	.align	16, 0x90
	.type	_ZN12StringBufferD2Ev,@function
_ZN12StringBufferD2Ev:                  # @_ZN12StringBufferD2Ev
	.cfi_startproc
.Lfunc_begin9:
	.loc	4 36 0                  # stringbuffer.cpp:36:0
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp88:
	.cfi_def_cfa_offset 16
	movq	%rdi, (%rsp)
	.loc	4 37 0 prologue_end     # stringbuffer.cpp:37:0
.Ltmp89:
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB9_2
# BB#1:                                 # %delete.notnull
	callq	_ZdaPv
.LBB9_2:                                # %delete.end
	.loc	4 38 0                  # stringbuffer.cpp:38:0
	popq	%rax
	ret
.Ltmp90:
.Ltmp91:
	.size	_ZN12StringBufferD2Ev, .Ltmp91-_ZN12StringBufferD2Ev
.Lfunc_end9:
	.cfi_endproc

	.globl	_ZN12StringBuffer6lengthEv
	.align	16, 0x90
	.type	_ZN12StringBuffer6lengthEv,@function
_ZN12StringBuffer6lengthEv:             # @_ZN12StringBuffer6lengthEv
	.cfi_startproc
.Lfunc_begin10:
	.loc	4 40 0                  # stringbuffer.cpp:40:0
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp95:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp96:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp97:
	.cfi_def_cfa_offset 48
.Ltmp98:
	.cfi_offset %rbx, -24
.Ltmp99:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	%rbx, 16(%rsp)
	.loc	4 41 0 prologue_end     # stringbuffer.cpp:41:0
.Ltmp100:
	leaq	16(%rbx), %r14
	movq	%r14, %rdi
	callq	pthread_mutex_lock
	.loc	4 42 0                  # stringbuffer.cpp:42:0
	movl	12(%rbx), %eax
	movl	%eax, 12(%rsp)
	.loc	4 43 0                  # stringbuffer.cpp:43:0
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	.loc	4 44 0                  # stringbuffer.cpp:44:0
	movl	12(%rsp), %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	ret
.Ltmp101:
.Ltmp102:
	.size	_ZN12StringBuffer6lengthEv, .Ltmp102-_ZN12StringBuffer6lengthEv
.Lfunc_end10:
	.cfi_endproc

	.globl	_ZN12StringBuffer8getCharsEiiPci
	.align	16, 0x90
	.type	_ZN12StringBuffer8getCharsEiiPci,@function
_ZN12StringBuffer8getCharsEiiPci:       # @_ZN12StringBuffer8getCharsEiiPci
	.cfi_startproc
.Lfunc_begin11:
	.loc	4 48 0                  # stringbuffer.cpp:48:0
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp106:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp107:
	.cfi_def_cfa_offset 24
	subq	$40, %rsp
.Ltmp108:
	.cfi_def_cfa_offset 64
.Ltmp109:
	.cfi_offset %rbx, -24
.Ltmp110:
	.cfi_offset %r14, -16
	movq	%rdi, 32(%rsp)
	movl	%esi, 28(%rsp)
	movl	%edx, 24(%rsp)
	movq	%rcx, 16(%rsp)
	movl	%r8d, 12(%rsp)
	movq	32(%rsp), %rbx
	.loc	4 49 0 prologue_end     # stringbuffer.cpp:49:0
.Ltmp111:
	leaq	16(%rbx), %r14
	movq	%r14, %rdi
	callq	pthread_mutex_lock
	.loc	4 50 0                  # stringbuffer.cpp:50:0
	cmpl	$0, 28(%rsp)
	js	.LBB11_5
# BB#1:                                 # %if.end
	.loc	4 53 0                  # stringbuffer.cpp:53:0
	cmpl	$0, 24(%rsp)
	js	.LBB11_6
# BB#2:                                 # %lor.lhs.false
	movl	24(%rsp), %eax
	cmpl	12(%rbx), %eax
	jg	.LBB11_6
# BB#3:                                 # %if.end5
	.loc	4 56 0                  # stringbuffer.cpp:56:0
	movl	28(%rsp), %eax
	cmpl	24(%rsp), %eax
	jg	.LBB11_7
# BB#4:                                 # %if.end8
	.loc	4 59 0                  # stringbuffer.cpp:59:0
	movslq	28(%rsp), %rax
	movq	(%rbx), %rsi
	addq	%rax, %rsi
	movl	24(%rsp), %ecx
	subl	%eax, %ecx
	movslq	%ecx, %rdx
	movslq	12(%rsp), %rdi
	addq	16(%rsp), %rdi
	callq	memcpy
	.loc	4 60 0                  # stringbuffer.cpp:60:0
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	.loc	4 61 0                  # stringbuffer.cpp:61:0
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	ret
.LBB11_5:                               # %if.then
	.loc	4 51 0                  # stringbuffer.cpp:51:0
.Ltmp112:
	movl	$.L.str12, %edi
	movl	$.L.str2, %esi
	movl	$51, %edx
	movl	$.L__PRETTY_FUNCTION__._ZN12StringBuffer8getCharsEiiPci, %ecx
	callq	__assert_fail
.Ltmp113:
.LBB11_6:                               # %if.then4
	.loc	4 54 0                  # stringbuffer.cpp:54:0
	movl	$.L.str12, %edi
	movl	$.L.str2, %esi
	movl	$54, %edx
	movl	$.L__PRETTY_FUNCTION__._ZN12StringBuffer8getCharsEiiPci, %ecx
	callq	__assert_fail
.Ltmp114:
.LBB11_7:                               # %if.then7
	.loc	4 57 0                  # stringbuffer.cpp:57:0
	movl	$.L.str12, %edi
	movl	$.L.str2, %esi
	movl	$57, %edx
	movl	$.L__PRETTY_FUNCTION__._ZN12StringBuffer8getCharsEiiPci, %ecx
	callq	__assert_fail
.Ltmp115:
.Ltmp116:
	.size	_ZN12StringBuffer8getCharsEiiPci, .Ltmp116-_ZN12StringBuffer8getCharsEiiPci
.Lfunc_end11:
	.cfi_endproc

	.globl	_ZN12StringBuffer6appendEPS_
	.align	16, 0x90
	.type	_ZN12StringBuffer6appendEPS_,@function
_ZN12StringBuffer6appendEPS_:           # @_ZN12StringBuffer6appendEPS_
	.cfi_startproc
.Lfunc_begin12:
	.loc	4 63 0                  # stringbuffer.cpp:63:0
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp120:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp121:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp122:
	.cfi_def_cfa_offset 48
.Ltmp123:
	.cfi_offset %rbx, -24
.Ltmp124:
	.cfi_offset %r14, -16
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	16(%rsp), %rbx
	.loc	4 64 0 prologue_end     # stringbuffer.cpp:64:0
.Ltmp125:
	leaq	16(%rbx), %r14
	movq	%r14, %rdi
	callq	pthread_mutex_lock
	.loc	4 65 0                  # stringbuffer.cpp:65:0
	cmpq	$0, 8(%rsp)
	jne	.LBB12_2
# BB#1:                                 # %if.then
	.loc	4 66 0                  # stringbuffer.cpp:66:0
.Ltmp126:
	movq	_ZN12StringBuffer11null_bufferE(%rip), %rax
	movq	%rax, 8(%rsp)
.Ltmp127:
.LBB12_2:                               # %if.end
	.loc	4 69 0                  # stringbuffer.cpp:69:0
	movq	8(%rsp), %rdi
	callq	_ZN12StringBuffer6lengthEv
	movl	%eax, 4(%rsp)
	.loc	4 70 0                  # stringbuffer.cpp:70:0
	addl	12(%rbx), %eax
	movl	%eax, (%rsp)
	cmpl	8(%rbx), %eax
	jle	.LBB12_4
# BB#3:                                 # %if.then4
	.loc	4 72 0                  # stringbuffer.cpp:72:0
	movl	(%rsp), %esi
	movq	%rbx, %rdi
	callq	_ZN12StringBuffer14expandCapacityEi
.LBB12_4:                               # %if.end5
	.loc	4 73 0                  # stringbuffer.cpp:73:0
	movl	12(%rbx), %r8d
	movq	(%rbx), %rcx
	movl	4(%rsp), %edx
	movq	8(%rsp), %rdi
	xorl	%esi, %esi
	callq	_ZN12StringBuffer8getCharsEiiPci
	.loc	4 74 0                  # stringbuffer.cpp:74:0
	movl	(%rsp), %eax
	movl	%eax, 12(%rbx)
	.loc	4 75 0                  # stringbuffer.cpp:75:0
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	.loc	4 76 0                  # stringbuffer.cpp:76:0
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	ret
.Ltmp128:
.Ltmp129:
	.size	_ZN12StringBuffer6appendEPS_, .Ltmp129-_ZN12StringBuffer6appendEPS_
.Lfunc_end12:
	.cfi_endproc

	.globl	_ZN12StringBuffer14expandCapacityEi
	.align	16, 0x90
	.type	_ZN12StringBuffer14expandCapacityEi,@function
_ZN12StringBuffer14expandCapacityEi:    # @_ZN12StringBuffer14expandCapacityEi
	.cfi_startproc
.Lfunc_begin13:
	.loc	4 120 0                 # stringbuffer.cpp:120:0
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp132:
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
.Ltmp133:
	.cfi_def_cfa_offset 48
.Ltmp134:
	.cfi_offset %rbx, -16
	movq	%rdi, 24(%rsp)
	movl	%esi, 20(%rsp)
	movq	24(%rsp), %rbx
	.loc	4 121 0 prologue_end    # stringbuffer.cpp:121:0
.Ltmp135:
	movl	8(%rbx), %eax
	leal	2(%rax,%rax), %eax
	movl	%eax, 16(%rsp)
	testl	%eax, %eax
	js	.LBB13_1
# BB#2:                                 # %if.else
	.loc	4 124 0                 # stringbuffer.cpp:124:0
	movl	20(%rsp), %eax
	cmpl	16(%rsp), %eax
	jle	.LBB13_4
# BB#3:                                 # %if.then3
	.loc	4 125 0                 # stringbuffer.cpp:125:0
.Ltmp136:
	movl	20(%rsp), %eax
	movl	%eax, 16(%rsp)
	jmp	.LBB13_4
.Ltmp137:
.LBB13_1:                               # %if.then
	.loc	4 123 0                 # stringbuffer.cpp:123:0
	movl	$2147483647, 16(%rsp)   # imm = 0x7FFFFFFF
.Ltmp138:
.LBB13_4:                               # %if.end4
	movq	$-1, %rdi
	.loc	4 128 0                 # stringbuffer.cpp:128:0
	movslq	16(%rsp), %rax
	testq	%rax, %rax
	cmovnsq	%rax, %rdi
	callq	_Znam
	movq	%rax, 8(%rsp)
	.loc	4 129 0                 # stringbuffer.cpp:129:0
	movslq	12(%rbx), %rdx
	movq	(%rbx), %rsi
	movq	%rax, %rdi
	callq	memcpy
	.loc	4 130 0                 # stringbuffer.cpp:130:0
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB13_6
# BB#5:                                 # %delete.notnull
	callq	_ZdaPv
.LBB13_6:                               # %delete.end
	.loc	4 131 0                 # stringbuffer.cpp:131:0
	movq	8(%rsp), %rax
	movq	%rax, (%rbx)
	.loc	4 132 0                 # stringbuffer.cpp:132:0
	movl	16(%rsp), %eax
	movl	%eax, 8(%rbx)
	.loc	4 133 0                 # stringbuffer.cpp:133:0
	addq	$32, %rsp
	popq	%rbx
	ret
.Ltmp139:
.Ltmp140:
	.size	_ZN12StringBuffer14expandCapacityEi, .Ltmp140-_ZN12StringBuffer14expandCapacityEi
.Lfunc_end13:
	.cfi_endproc

	.globl	_ZN12StringBuffer5eraseEii
	.align	16, 0x90
	.type	_ZN12StringBuffer5eraseEii,@function
_ZN12StringBuffer5eraseEii:             # @_ZN12StringBuffer5eraseEii
	.cfi_startproc
.Lfunc_begin14:
	.loc	4 95 0                  # stringbuffer.cpp:95:0
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp144:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp145:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp146:
	.cfi_def_cfa_offset 48
.Ltmp147:
	.cfi_offset %rbx, -24
.Ltmp148:
	.cfi_offset %r14, -16
	movq	%rdi, 16(%rsp)
	movl	%esi, 12(%rsp)
	movl	%edx, 8(%rsp)
	movq	16(%rsp), %rbx
	.loc	4 96 0 prologue_end     # stringbuffer.cpp:96:0
.Ltmp149:
	leaq	16(%rbx), %r14
	movq	%r14, %rdi
	callq	pthread_mutex_lock
	.loc	4 97 0                  # stringbuffer.cpp:97:0
	cmpl	$0, 12(%rsp)
	js	.LBB14_7
# BB#1:                                 # %if.end
	.loc	4 99 0                  # stringbuffer.cpp:99:0
	movl	8(%rsp), %eax
	cmpl	12(%rbx), %eax
	jle	.LBB14_3
# BB#2:                                 # %if.then3
	.loc	4 100 0                 # stringbuffer.cpp:100:0
	movl	12(%rbx), %eax
	movl	%eax, 8(%rsp)
.LBB14_3:                               # %if.end5
	.loc	4 101 0                 # stringbuffer.cpp:101:0
	movl	12(%rsp), %eax
	cmpl	8(%rsp), %eax
	jg	.LBB14_8
# BB#4:                                 # %if.end8
	.loc	4 104 0                 # stringbuffer.cpp:104:0
	movl	8(%rsp), %eax
	subl	12(%rsp), %eax
	movl	%eax, 4(%rsp)
	testl	%eax, %eax
	jle	.LBB14_6
# BB#5:                                 # %if.then10
	.loc	4 106 0                 # stringbuffer.cpp:106:0
.Ltmp150:
	movslq	12(%rsp), %rdi
	addq	(%rbx), %rdi
	movslq	4(%rsp), %rsi
	addq	%rdi, %rsi
	movl	12(%rbx), %eax
	subl	8(%rsp), %eax
	movslq	%eax, %rdx
	callq	memcpy
	.loc	4 107 0                 # stringbuffer.cpp:107:0
	movl	4(%rsp), %eax
	subl	%eax, 12(%rbx)
.Ltmp151:
.LBB14_6:                               # %if.end20
	.loc	4 109 0                 # stringbuffer.cpp:109:0
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	.loc	4 110 0                 # stringbuffer.cpp:110:0
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	ret
.LBB14_7:                               # %if.then
	.loc	4 98 0                  # stringbuffer.cpp:98:0
	movl	$.L.str12, %edi
	movl	$.L.str2, %esi
	movl	$98, %edx
	movl	$.L__PRETTY_FUNCTION__._ZN12StringBuffer5eraseEii, %ecx
	callq	__assert_fail
.LBB14_8:                               # %if.then7
	.loc	4 102 0                 # stringbuffer.cpp:102:0
	movl	$.L.str12, %edi
	movl	$.L.str2, %esi
	movl	$102, %edx
	movl	$.L__PRETTY_FUNCTION__._ZN12StringBuffer5eraseEii, %ecx
	callq	__assert_fail
.Ltmp152:
.Ltmp153:
	.size	_ZN12StringBuffer5eraseEii, .Ltmp153-_ZN12StringBuffer5eraseEii
.Lfunc_end14:
	.cfi_endproc

	.globl	_ZN12StringBuffer5printEv
	.align	16, 0x90
	.type	_ZN12StringBuffer5printEv,@function
_ZN12StringBuffer5printEv:              # @_ZN12StringBuffer5printEv
	.cfi_startproc
.Lfunc_begin15:
	.loc	4 113 0                 # stringbuffer.cpp:113:0
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp156:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp157:
	.cfi_def_cfa_offset 32
.Ltmp158:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	%rbx, 8(%rsp)
	.loc	4 114 0 prologue_end    # stringbuffer.cpp:114:0
.Ltmp159:
	movl	$0, 4(%rsp)
	jmp	.LBB15_1
	.align	16, 0x90
.LBB15_2:                               # %for.inc
                                        #   in Loop: Header=BB15_1 Depth=1
	.loc	4 115 0                 # stringbuffer.cpp:115:0
.Ltmp160:
	movq	(%rbx), %rax
	movslq	4(%rsp), %rcx
	movsbl	(%rax,%rcx), %esi
	movl	$.L.str3, %edi
	xorb	%al, %al
	callq	printf
.Ltmp161:
	.loc	4 114 0                 # stringbuffer.cpp:114:0
	incl	4(%rsp)
.LBB15_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	4(%rsp), %eax
	cmpl	12(%rbx), %eax
	jl	.LBB15_2
.Ltmp162:
# BB#3:                                 # %for.end
	.loc	4 117 0                 # stringbuffer.cpp:117:0
	movl	$.L.str4, %edi
	xorb	%al, %al
	callq	printf
	.loc	4 118 0                 # stringbuffer.cpp:118:0
	addq	$16, %rsp
	popq	%rbx
	ret
.Ltmp163:
.Ltmp164:
	.size	_ZN12StringBuffer5printEv, .Ltmp164-_ZN12StringBuffer5printEv
.Lfunc_end15:
	.cfi_endproc

	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	_GLOBAL__I_a11,@function
_GLOBAL__I_a11:                         # @_GLOBAL__I_a11
	.cfi_startproc
.Lfunc_begin16:
	.loc	4 133 0                 # stringbuffer.cpp:133:0
# BB#0:                                 # %entry
	.loc	4 133 0 prologue_end    # stringbuffer.cpp:133:0
	pushq	%rax
.Ltmp166:
	.cfi_def_cfa_offset 16
	callq	__cxx_global_var_init4
	popq	%rax
	ret
.Ltmp167:
.Ltmp168:
	.size	_GLOBAL__I_a11, .Ltmp168-_GLOBAL__I_a11
.Lfunc_end16:
	.cfi_endproc

	.type	buffer,@object          # @buffer
	.bss
	.globl	buffer
	.align	8
buffer:
	.quad	0
	.size	buffer, 8

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "abc"
	.size	.L.str, 4

	.section	.ctors,"aw",@progbits
	.align	8
	.quad	_GLOBAL__I_a
	.quad	_GLOBAL__I_a11
	.type	_ZN12StringBuffer11null_bufferE,@object # @_ZN12StringBuffer11null_bufferE
	.bss
	.globl	_ZN12StringBuffer11null_bufferE
	.align	8
_ZN12StringBuffer11null_bufferE:
	.quad	0
	.size	_ZN12StringBuffer11null_bufferE, 8

	.type	.L.str1,@object         # @.str1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str1:
	.asciz	 "null"
	.size	.L.str1, 5

	.type	.L.str12,@object        # @.str12
.L.str12:
	.asciz	 "0"
	.size	.L.str12, 2

	.type	.L.str2,@object         # @.str2
.L.str2:
	.asciz	 "stringbuffer.cpp"
	.size	.L.str2, 17

	.type	.L__PRETTY_FUNCTION__._ZN12StringBuffer8getCharsEiiPci,@object # @__PRETTY_FUNCTION__._ZN12StringBuffer8getCharsEiiPci
.L__PRETTY_FUNCTION__._ZN12StringBuffer8getCharsEiiPci:
	.asciz	 "void StringBuffer::getChars(int, int, char *, int)"
	.size	.L__PRETTY_FUNCTION__._ZN12StringBuffer8getCharsEiiPci, 51

	.type	.L__PRETTY_FUNCTION__._ZN12StringBuffer5eraseEii,@object # @__PRETTY_FUNCTION__._ZN12StringBuffer5eraseEii
.L__PRETTY_FUNCTION__._ZN12StringBuffer5eraseEii:
	.asciz	 "StringBuffer *StringBuffer::erase(int, int)"
	.size	.L__PRETTY_FUNCTION__._ZN12StringBuffer5eraseEii, 44

	.type	.L.str3,@object         # @.str3
.L.str3:
	.asciz	 "%c"
	.size	.L.str3, 3

	.type	.L.str4,@object         # @.str4
.L.str4:
	.asciz	 "\n"
	.size	.L.str4, 2

	.text
.Ltext_end:
	.data
.Ldata_end:
	.text
.Lsection_end1:
	.section	.debug_info,"",@progbits
.Linfo_begin1:
	.long	946                     # Length of Compilation Unit Info
	.short	2                       # DWARF version number
	.long	.Labbrev_begin          # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x3ab DW_TAG_compile_unit
	.long	.Lstring0               # DW_AT_producer
	.short	4                       # DW_AT_language
	.long	.Lstring1               # DW_AT_name
	.quad	0                       # DW_AT_low_pc
	.long	.Lsection_line          # DW_AT_stmt_list
	.long	.Lstring2               # DW_AT_comp_dir
	.byte	2                       # Abbrev [2] 0x26:0x7 DW_TAG_base_type
	.long	.Lstring5               # DW_AT_name
	.byte	6                       # DW_AT_encoding
	.byte	1                       # DW_AT_byte_size
	.byte	3                       # Abbrev [3] 0x2d:0x5 DW_TAG_pointer_type
	.long	38                      # DW_AT_type
	.byte	2                       # Abbrev [2] 0x32:0x7 DW_TAG_base_type
	.long	.Lstring7               # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	2                       # Abbrev [2] 0x39:0x7 DW_TAG_base_type
	.long	.Lstring13              # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	2                       # Abbrev [2] 0x40:0x7 DW_TAG_base_type
	.long	.Lstring18              # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	2                       # DW_AT_byte_size
	.byte	3                       # Abbrev [3] 0x47:0x5 DW_TAG_pointer_type
	.long	76                      # DW_AT_type
	.byte	4                       # Abbrev [4] 0x4c:0x27 DW_TAG_structure_type
	.long	.Lstring23              # DW_AT_name
	.byte	16                      # DW_AT_byte_size
	.byte	3                       # DW_AT_decl_file
	.byte	75                      # DW_AT_decl_line
	.byte	5                       # Abbrev [5] 0x54:0xf DW_TAG_member
	.long	.Lstring21              # DW_AT_name
	.long	71                      # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	77                      # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	5                       # Abbrev [5] 0x63:0xf DW_TAG_member
	.long	.Lstring22              # DW_AT_name
	.long	71                      # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	78                      # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	8
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	0                       # End Of Children Mark
	.byte	6                       # Abbrev [6] 0x73:0xb DW_TAG_typedef
	.long	76                      # DW_AT_type
	.long	.Lstring24              # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	79                      # DW_AT_decl_line
	.byte	7                       # Abbrev [7] 0x7e:0x3 DW_TAG_base_type
	.byte	4                       # DW_AT_byte_size
	.byte	5                       # DW_AT_encoding
	.byte	8                       # Abbrev [8] 0x81:0xc DW_TAG_array_type
	.long	38                      # DW_AT_type
	.byte	9                       # Abbrev [9] 0x86:0x6 DW_TAG_subrange_type
	.long	126                     # DW_AT_type
	.byte	39                      # DW_AT_upper_bound
	.byte	0                       # End Of Children Mark
	.byte	2                       # Abbrev [2] 0x8d:0x7 DW_TAG_base_type
	.long	.Lstring28              # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	8                       # DW_AT_byte_size
	.byte	10                      # Abbrev [10] 0x94:0xb3 DW_TAG_union_type
	.byte	40                      # DW_AT_byte_size
	.byte	3                       # DW_AT_decl_file
	.byte	90                      # DW_AT_decl_line
	.byte	4                       # Abbrev [4] 0x98:0x81 DW_TAG_structure_type
	.long	.Lstring25              # DW_AT_name
	.byte	40                      # DW_AT_byte_size
	.byte	3                       # DW_AT_decl_file
	.byte	92                      # DW_AT_decl_line
	.byte	5                       # Abbrev [5] 0xa0:0xf DW_TAG_member
	.long	.Lstring11              # DW_AT_name
	.long	50                      # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	94                      # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	5                       # Abbrev [5] 0xaf:0xf DW_TAG_member
	.long	.Lstring12              # DW_AT_name
	.long	57                      # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	95                      # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	4
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	5                       # Abbrev [5] 0xbe:0xf DW_TAG_member
	.long	.Lstring14              # DW_AT_name
	.long	50                      # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	96                      # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	8
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	5                       # Abbrev [5] 0xcd:0xf DW_TAG_member
	.long	.Lstring15              # DW_AT_name
	.long	57                      # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	98                      # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	12
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	5                       # Abbrev [5] 0xdc:0xf DW_TAG_member
	.long	.Lstring16              # DW_AT_name
	.long	50                      # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	102                     # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	16
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	5                       # Abbrev [5] 0xeb:0xf DW_TAG_member
	.long	.Lstring17              # DW_AT_name
	.long	64                      # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	104                     # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	20
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	5                       # Abbrev [5] 0xfa:0xf DW_TAG_member
	.long	.Lstring19              # DW_AT_name
	.long	64                      # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	105                     # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	22
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	5                       # Abbrev [5] 0x109:0xf DW_TAG_member
	.long	.Lstring20              # DW_AT_name
	.long	115                     # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	106                     # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	24
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	0                       # End Of Children Mark
	.byte	5                       # Abbrev [5] 0x119:0xf DW_TAG_member
	.long	.Lstring10              # DW_AT_name
	.long	152                     # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	124                     # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	5                       # Abbrev [5] 0x128:0xf DW_TAG_member
	.long	.Lstring26              # DW_AT_name
	.long	129                     # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	125                     # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	5                       # Abbrev [5] 0x137:0xf DW_TAG_member
	.long	.Lstring27              # DW_AT_name
	.long	141                     # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	126                     # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	0                       # End Of Children Mark
	.byte	6                       # Abbrev [6] 0x147:0xb DW_TAG_typedef
	.long	148                     # DW_AT_type
	.long	.Lstring29              # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	127                     # DW_AT_decl_line
	.byte	3                       # Abbrev [3] 0x152:0x5 DW_TAG_pointer_type
	.long	343                     # DW_AT_type
	.byte	11                      # Abbrev [11] 0x157:0x142 DW_TAG_class_type
	.long	.Lstring30              # DW_AT_name
	.byte	56                      # DW_AT_byte_size
	.byte	2                       # DW_AT_decl_file
	.byte	11                      # DW_AT_decl_line
	.byte	5                       # Abbrev [5] 0x15f:0xf DW_TAG_member
	.long	.Lstring4               # DW_AT_name
	.long	45                      # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	26                      # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	3                       # DW_AT_accessibility
                                        # DW_ACCESS_private
	.byte	5                       # Abbrev [5] 0x16e:0xf DW_TAG_member
	.long	.Lstring6               # DW_AT_name
	.long	50                      # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	27                      # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	8
	.byte	3                       # DW_AT_accessibility
                                        # DW_ACCESS_private
	.byte	5                       # Abbrev [5] 0x17d:0xf DW_TAG_member
	.long	.Lstring8               # DW_AT_name
	.long	50                      # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	28                      # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	12
	.byte	3                       # DW_AT_accessibility
                                        # DW_ACCESS_private
	.byte	5                       # Abbrev [5] 0x18c:0xf DW_TAG_member
	.long	.Lstring9               # DW_AT_name
	.long	327                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	29                      # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	16
	.byte	3                       # DW_AT_accessibility
                                        # DW_ACCESS_private
	.byte	12                      # Abbrev [12] 0x19b:0xe DW_TAG_subprogram
	.long	.Lstring30              # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	13                      # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	13                      # Abbrev [13] 0x1a3:0x5 DW_TAG_formal_parameter
	.long	338                     # DW_AT_type
                                        # DW_AT_artificial
	.byte	0                       # End Of Children Mark
	.byte	14                      # Abbrev [14] 0x1a9:0x13 DW_TAG_subprogram
	.long	.Lstring30              # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	14                      # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
                                        # DW_AT_explicit
	.byte	13                      # Abbrev [13] 0x1b1:0x5 DW_TAG_formal_parameter
	.long	338                     # DW_AT_type
                                        # DW_AT_artificial
	.byte	15                      # Abbrev [15] 0x1b6:0x5 DW_TAG_formal_parameter
	.long	50                      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	14                      # Abbrev [14] 0x1bc:0x13 DW_TAG_subprogram
	.long	.Lstring30              # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	15                      # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
                                        # DW_AT_explicit
	.byte	13                      # Abbrev [13] 0x1c4:0x5 DW_TAG_formal_parameter
	.long	338                     # DW_AT_type
                                        # DW_AT_artificial
	.byte	15                      # Abbrev [15] 0x1c9:0x5 DW_TAG_formal_parameter
	.long	45                      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	12                      # Abbrev [12] 0x1cf:0xe DW_TAG_subprogram
	.long	.Lstring31              # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	16                      # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	13                      # Abbrev [13] 0x1d7:0x5 DW_TAG_formal_parameter
	.long	338                     # DW_AT_type
                                        # DW_AT_artificial
	.byte	0                       # End Of Children Mark
	.byte	16                      # Abbrev [16] 0x1dd:0x16 DW_TAG_subprogram
	.long	.Lstring32              # DW_AT_MIPS_linkage_name
	.long	.Lstring33              # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	18                      # DW_AT_decl_line
	.long	50                      # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	13                      # Abbrev [13] 0x1ed:0x5 DW_TAG_formal_parameter
	.long	338                     # DW_AT_type
                                        # DW_AT_artificial
	.byte	0                       # End Of Children Mark
	.byte	17                      # Abbrev [17] 0x1f3:0x26 DW_TAG_subprogram
	.long	.Lstring34              # DW_AT_MIPS_linkage_name
	.long	.Lstring35              # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	19                      # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	13                      # Abbrev [13] 0x1ff:0x5 DW_TAG_formal_parameter
	.long	338                     # DW_AT_type
                                        # DW_AT_artificial
	.byte	15                      # Abbrev [15] 0x204:0x5 DW_TAG_formal_parameter
	.long	50                      # DW_AT_type
	.byte	15                      # Abbrev [15] 0x209:0x5 DW_TAG_formal_parameter
	.long	50                      # DW_AT_type
	.byte	15                      # Abbrev [15] 0x20e:0x5 DW_TAG_formal_parameter
	.long	45                      # DW_AT_type
	.byte	15                      # Abbrev [15] 0x213:0x5 DW_TAG_formal_parameter
	.long	50                      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	16                      # Abbrev [16] 0x219:0x1b DW_TAG_subprogram
	.long	.Lstring36              # DW_AT_MIPS_linkage_name
	.long	.Lstring37              # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	20                      # DW_AT_decl_line
	.long	665                     # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	13                      # Abbrev [13] 0x229:0x5 DW_TAG_formal_parameter
	.long	338                     # DW_AT_type
                                        # DW_AT_artificial
	.byte	15                      # Abbrev [15] 0x22e:0x5 DW_TAG_formal_parameter
	.long	665                     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	16                      # Abbrev [16] 0x234:0x1b DW_TAG_subprogram
	.long	.Lstring38              # DW_AT_MIPS_linkage_name
	.long	.Lstring37              # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	21                      # DW_AT_decl_line
	.long	665                     # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	13                      # Abbrev [13] 0x244:0x5 DW_TAG_formal_parameter
	.long	338                     # DW_AT_type
                                        # DW_AT_artificial
	.byte	15                      # Abbrev [15] 0x249:0x5 DW_TAG_formal_parameter
	.long	45                      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	16                      # Abbrev [16] 0x24f:0x20 DW_TAG_subprogram
	.long	.Lstring39              # DW_AT_MIPS_linkage_name
	.long	.Lstring40              # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	22                      # DW_AT_decl_line
	.long	665                     # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	13                      # Abbrev [13] 0x25f:0x5 DW_TAG_formal_parameter
	.long	338                     # DW_AT_type
                                        # DW_AT_artificial
	.byte	15                      # Abbrev [15] 0x264:0x5 DW_TAG_formal_parameter
	.long	50                      # DW_AT_type
	.byte	15                      # Abbrev [15] 0x269:0x5 DW_TAG_formal_parameter
	.long	50                      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	17                      # Abbrev [17] 0x26f:0x12 DW_TAG_subprogram
	.long	.Lstring41              # DW_AT_MIPS_linkage_name
	.long	.Lstring42              # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	23                      # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	13                      # Abbrev [13] 0x27b:0x5 DW_TAG_formal_parameter
	.long	338                     # DW_AT_type
                                        # DW_AT_artificial
	.byte	0                       # End Of Children Mark
	.byte	17                      # Abbrev [17] 0x281:0x17 DW_TAG_subprogram
	.long	.Lstring43              # DW_AT_MIPS_linkage_name
	.long	.Lstring44              # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	33                      # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	3                       # DW_AT_accessibility
                                        # DW_ACCESS_private
	.byte	13                      # Abbrev [13] 0x28d:0x5 DW_TAG_formal_parameter
	.long	338                     # DW_AT_type
                                        # DW_AT_artificial
	.byte	15                      # Abbrev [15] 0x292:0x5 DW_TAG_formal_parameter
	.long	50                      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	3                       # Abbrev [3] 0x299:0x5 DW_TAG_pointer_type
	.long	343                     # DW_AT_type
	.byte	18                      # Abbrev [18] 0x29e:0x15 DW_TAG_variable
	.long	.Lstring3               # DW_AT_name
	.long	665                     # DW_AT_type
                                        # DW_AT_external
	.byte	1                       # DW_AT_decl_file
	.byte	6                       # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	buffer
	.byte	19                      # Abbrev [19] 0x2b3:0x19 DW_TAG_subprogram
	.long	.Lstring45              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	6                       # DW_AT_decl_line
	.quad	.Lfunc_begin0           # DW_AT_low_pc
	.quad	.Lfunc_end0             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	20                      # Abbrev [20] 0x2cc:0x30 DW_TAG_subprogram
	.long	.Lstring46              # DW_AT_MIPS_linkage_name
	.long	.Lstring47              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	8                       # DW_AT_decl_line
	.long	764                     # DW_AT_type
                                        # DW_AT_external
	.quad	.Lfunc_begin1           # DW_AT_low_pc
	.quad	.Lfunc_end1             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	21                      # Abbrev [21] 0x2ed:0xe DW_TAG_formal_parameter
	.long	.Lstring53              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	8                       # DW_AT_decl_line
	.long	764                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	8
	.byte	0                       # End Of Children Mark
	.byte	22                      # Abbrev [22] 0x2fc:0x1 DW_TAG_pointer_type
	.byte	23                      # Abbrev [23] 0x2fd:0x88 DW_TAG_subprogram
	.long	.Lstring48              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	15                      # DW_AT_decl_line
	.long	50                      # DW_AT_type
                                        # DW_AT_external
	.quad	.Lfunc_begin2           # DW_AT_low_pc
	.quad	.Lfunc_end2             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	21                      # Abbrev [21] 0x31a:0xe DW_TAG_formal_parameter
	.long	.Lstring54              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	15                      # DW_AT_decl_line
	.long	50                      # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	56
	.byte	21                      # Abbrev [21] 0x328:0xe DW_TAG_formal_parameter
	.long	.Lstring55              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	15                      # DW_AT_decl_line
	.long	926                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	48
	.byte	24                      # Abbrev [24] 0x336:0x4e DW_TAG_lexical_block
	.quad	.Ltmp24                 # DW_AT_low_pc
	.quad	.Ltmp27                 # DW_AT_high_pc
	.byte	25                      # Abbrev [25] 0x347:0xe DW_TAG_variable
	.long	.Lstring56              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	16                      # DW_AT_decl_line
	.long	938                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	40
	.byte	25                      # Abbrev [25] 0x355:0xe DW_TAG_variable
	.long	.Lstring59              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	17                      # DW_AT_decl_line
	.long	50                      # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	36
	.byte	24                      # Abbrev [24] 0x363:0x20 DW_TAG_lexical_block
	.quad	.Ltmp25                 # DW_AT_low_pc
	.quad	.Ltmp27                 # DW_AT_high_pc
	.byte	25                      # Abbrev [25] 0x374:0xe DW_TAG_variable
	.long	.Lstring60              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	22                      # DW_AT_decl_line
	.long	665                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	24
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	26                      # Abbrev [26] 0x385:0x19 DW_TAG_subprogram
	.long	.Lstring49              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	27                      # DW_AT_decl_line
                                        # DW_AT_artificial
	.quad	.Lfunc_begin3           # DW_AT_low_pc
	.quad	.Lfunc_end3             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	3                       # Abbrev [3] 0x39e:0x5 DW_TAG_pointer_type
	.long	45                      # DW_AT_type
	.byte	2                       # Abbrev [2] 0x3a3:0x7 DW_TAG_base_type
	.long	.Lstring57              # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	8                       # DW_AT_byte_size
	.byte	6                       # Abbrev [6] 0x3aa:0xb DW_TAG_typedef
	.long	931                     # DW_AT_type
	.long	.Lstring58              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	60                      # DW_AT_decl_line
	.byte	0                       # End Of Children Mark
.Linfo_end1:
.Linfo_begin4:
	.long	1000                    # Length of Compilation Unit Info
	.short	2                       # DWARF version number
	.long	.Labbrev_begin          # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x3e1 DW_TAG_compile_unit
	.long	.Lstring0               # DW_AT_producer
	.short	4                       # DW_AT_language
	.long	.Lstring50              # DW_AT_name
	.quad	0                       # DW_AT_low_pc
	.long	.Lsection_line          # DW_AT_stmt_list
	.long	.Lstring2               # DW_AT_comp_dir
	.byte	2                       # Abbrev [2] 0x26:0x7 DW_TAG_base_type
	.long	.Lstring5               # DW_AT_name
	.byte	6                       # DW_AT_encoding
	.byte	1                       # DW_AT_byte_size
	.byte	3                       # Abbrev [3] 0x2d:0x5 DW_TAG_pointer_type
	.long	38                      # DW_AT_type
	.byte	2                       # Abbrev [2] 0x32:0x7 DW_TAG_base_type
	.long	.Lstring7               # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	2                       # Abbrev [2] 0x39:0x7 DW_TAG_base_type
	.long	.Lstring13              # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	2                       # Abbrev [2] 0x40:0x7 DW_TAG_base_type
	.long	.Lstring18              # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	2                       # DW_AT_byte_size
	.byte	3                       # Abbrev [3] 0x47:0x5 DW_TAG_pointer_type
	.long	76                      # DW_AT_type
	.byte	4                       # Abbrev [4] 0x4c:0x27 DW_TAG_structure_type
	.long	.Lstring23              # DW_AT_name
	.byte	16                      # DW_AT_byte_size
	.byte	3                       # DW_AT_decl_file
	.byte	75                      # DW_AT_decl_line
	.byte	5                       # Abbrev [5] 0x54:0xf DW_TAG_member
	.long	.Lstring21              # DW_AT_name
	.long	71                      # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	77                      # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	5                       # Abbrev [5] 0x63:0xf DW_TAG_member
	.long	.Lstring22              # DW_AT_name
	.long	71                      # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	78                      # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	8
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	0                       # End Of Children Mark
	.byte	6                       # Abbrev [6] 0x73:0xb DW_TAG_typedef
	.long	76                      # DW_AT_type
	.long	.Lstring24              # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	79                      # DW_AT_decl_line
	.byte	7                       # Abbrev [7] 0x7e:0x3 DW_TAG_base_type
	.byte	4                       # DW_AT_byte_size
	.byte	5                       # DW_AT_encoding
	.byte	8                       # Abbrev [8] 0x81:0xc DW_TAG_array_type
	.long	38                      # DW_AT_type
	.byte	9                       # Abbrev [9] 0x86:0x6 DW_TAG_subrange_type
	.long	126                     # DW_AT_type
	.byte	39                      # DW_AT_upper_bound
	.byte	0                       # End Of Children Mark
	.byte	2                       # Abbrev [2] 0x8d:0x7 DW_TAG_base_type
	.long	.Lstring28              # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	8                       # DW_AT_byte_size
	.byte	10                      # Abbrev [10] 0x94:0xb3 DW_TAG_union_type
	.byte	40                      # DW_AT_byte_size
	.byte	3                       # DW_AT_decl_file
	.byte	90                      # DW_AT_decl_line
	.byte	4                       # Abbrev [4] 0x98:0x81 DW_TAG_structure_type
	.long	.Lstring25              # DW_AT_name
	.byte	40                      # DW_AT_byte_size
	.byte	3                       # DW_AT_decl_file
	.byte	92                      # DW_AT_decl_line
	.byte	5                       # Abbrev [5] 0xa0:0xf DW_TAG_member
	.long	.Lstring11              # DW_AT_name
	.long	50                      # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	94                      # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	5                       # Abbrev [5] 0xaf:0xf DW_TAG_member
	.long	.Lstring12              # DW_AT_name
	.long	57                      # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	95                      # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	4
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	5                       # Abbrev [5] 0xbe:0xf DW_TAG_member
	.long	.Lstring14              # DW_AT_name
	.long	50                      # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	96                      # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	8
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	5                       # Abbrev [5] 0xcd:0xf DW_TAG_member
	.long	.Lstring15              # DW_AT_name
	.long	57                      # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	98                      # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	12
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	5                       # Abbrev [5] 0xdc:0xf DW_TAG_member
	.long	.Lstring16              # DW_AT_name
	.long	50                      # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	102                     # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	16
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	5                       # Abbrev [5] 0xeb:0xf DW_TAG_member
	.long	.Lstring17              # DW_AT_name
	.long	64                      # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	104                     # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	20
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	5                       # Abbrev [5] 0xfa:0xf DW_TAG_member
	.long	.Lstring19              # DW_AT_name
	.long	64                      # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	105                     # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	22
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	5                       # Abbrev [5] 0x109:0xf DW_TAG_member
	.long	.Lstring20              # DW_AT_name
	.long	115                     # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	106                     # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	24
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	0                       # End Of Children Mark
	.byte	5                       # Abbrev [5] 0x119:0xf DW_TAG_member
	.long	.Lstring10              # DW_AT_name
	.long	152                     # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	124                     # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	5                       # Abbrev [5] 0x128:0xf DW_TAG_member
	.long	.Lstring26              # DW_AT_name
	.long	129                     # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	125                     # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	5                       # Abbrev [5] 0x137:0xf DW_TAG_member
	.long	.Lstring27              # DW_AT_name
	.long	141                     # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	126                     # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	0                       # End Of Children Mark
	.byte	6                       # Abbrev [6] 0x147:0xb DW_TAG_typedef
	.long	148                     # DW_AT_type
	.long	.Lstring29              # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	127                     # DW_AT_decl_line
	.byte	3                       # Abbrev [3] 0x152:0x5 DW_TAG_pointer_type
	.long	343                     # DW_AT_type
	.byte	11                      # Abbrev [11] 0x157:0x151 DW_TAG_class_type
	.long	.Lstring30              # DW_AT_name
	.byte	56                      # DW_AT_byte_size
	.byte	2                       # DW_AT_decl_file
	.byte	11                      # DW_AT_decl_line
	.byte	5                       # Abbrev [5] 0x15f:0xf DW_TAG_member
	.long	.Lstring4               # DW_AT_name
	.long	45                      # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	26                      # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	3                       # DW_AT_accessibility
                                        # DW_ACCESS_private
	.byte	5                       # Abbrev [5] 0x16e:0xf DW_TAG_member
	.long	.Lstring6               # DW_AT_name
	.long	50                      # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	27                      # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	8
	.byte	3                       # DW_AT_accessibility
                                        # DW_ACCESS_private
	.byte	5                       # Abbrev [5] 0x17d:0xf DW_TAG_member
	.long	.Lstring8               # DW_AT_name
	.long	50                      # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	28                      # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	12
	.byte	3                       # DW_AT_accessibility
                                        # DW_ACCESS_private
	.byte	5                       # Abbrev [5] 0x18c:0xf DW_TAG_member
	.long	.Lstring9               # DW_AT_name
	.long	327                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	29                      # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	16
	.byte	3                       # DW_AT_accessibility
                                        # DW_ACCESS_private
	.byte	12                      # Abbrev [12] 0x19b:0xe DW_TAG_subprogram
	.long	.Lstring30              # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	13                      # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	13                      # Abbrev [13] 0x1a3:0x5 DW_TAG_formal_parameter
	.long	338                     # DW_AT_type
                                        # DW_AT_artificial
	.byte	0                       # End Of Children Mark
	.byte	14                      # Abbrev [14] 0x1a9:0x13 DW_TAG_subprogram
	.long	.Lstring30              # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	14                      # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
                                        # DW_AT_explicit
	.byte	13                      # Abbrev [13] 0x1b1:0x5 DW_TAG_formal_parameter
	.long	338                     # DW_AT_type
                                        # DW_AT_artificial
	.byte	15                      # Abbrev [15] 0x1b6:0x5 DW_TAG_formal_parameter
	.long	50                      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	14                      # Abbrev [14] 0x1bc:0x13 DW_TAG_subprogram
	.long	.Lstring30              # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	15                      # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
                                        # DW_AT_explicit
	.byte	13                      # Abbrev [13] 0x1c4:0x5 DW_TAG_formal_parameter
	.long	338                     # DW_AT_type
                                        # DW_AT_artificial
	.byte	15                      # Abbrev [15] 0x1c9:0x5 DW_TAG_formal_parameter
	.long	45                      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	12                      # Abbrev [12] 0x1cf:0xe DW_TAG_subprogram
	.long	.Lstring31              # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	16                      # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	13                      # Abbrev [13] 0x1d7:0x5 DW_TAG_formal_parameter
	.long	338                     # DW_AT_type
                                        # DW_AT_artificial
	.byte	0                       # End Of Children Mark
	.byte	16                      # Abbrev [16] 0x1dd:0x16 DW_TAG_subprogram
	.long	.Lstring32              # DW_AT_MIPS_linkage_name
	.long	.Lstring33              # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	18                      # DW_AT_decl_line
	.long	50                      # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	13                      # Abbrev [13] 0x1ed:0x5 DW_TAG_formal_parameter
	.long	338                     # DW_AT_type
                                        # DW_AT_artificial
	.byte	0                       # End Of Children Mark
	.byte	17                      # Abbrev [17] 0x1f3:0x26 DW_TAG_subprogram
	.long	.Lstring34              # DW_AT_MIPS_linkage_name
	.long	.Lstring35              # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	19                      # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	13                      # Abbrev [13] 0x1ff:0x5 DW_TAG_formal_parameter
	.long	338                     # DW_AT_type
                                        # DW_AT_artificial
	.byte	15                      # Abbrev [15] 0x204:0x5 DW_TAG_formal_parameter
	.long	50                      # DW_AT_type
	.byte	15                      # Abbrev [15] 0x209:0x5 DW_TAG_formal_parameter
	.long	50                      # DW_AT_type
	.byte	15                      # Abbrev [15] 0x20e:0x5 DW_TAG_formal_parameter
	.long	45                      # DW_AT_type
	.byte	15                      # Abbrev [15] 0x213:0x5 DW_TAG_formal_parameter
	.long	50                      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	16                      # Abbrev [16] 0x219:0x1b DW_TAG_subprogram
	.long	.Lstring36              # DW_AT_MIPS_linkage_name
	.long	.Lstring37              # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	20                      # DW_AT_decl_line
	.long	680                     # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	13                      # Abbrev [13] 0x229:0x5 DW_TAG_formal_parameter
	.long	338                     # DW_AT_type
                                        # DW_AT_artificial
	.byte	15                      # Abbrev [15] 0x22e:0x5 DW_TAG_formal_parameter
	.long	680                     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	16                      # Abbrev [16] 0x234:0x1b DW_TAG_subprogram
	.long	.Lstring38              # DW_AT_MIPS_linkage_name
	.long	.Lstring37              # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	21                      # DW_AT_decl_line
	.long	680                     # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	13                      # Abbrev [13] 0x244:0x5 DW_TAG_formal_parameter
	.long	338                     # DW_AT_type
                                        # DW_AT_artificial
	.byte	15                      # Abbrev [15] 0x249:0x5 DW_TAG_formal_parameter
	.long	45                      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	16                      # Abbrev [16] 0x24f:0x20 DW_TAG_subprogram
	.long	.Lstring39              # DW_AT_MIPS_linkage_name
	.long	.Lstring40              # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	22                      # DW_AT_decl_line
	.long	680                     # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	13                      # Abbrev [13] 0x25f:0x5 DW_TAG_formal_parameter
	.long	338                     # DW_AT_type
                                        # DW_AT_artificial
	.byte	15                      # Abbrev [15] 0x264:0x5 DW_TAG_formal_parameter
	.long	50                      # DW_AT_type
	.byte	15                      # Abbrev [15] 0x269:0x5 DW_TAG_formal_parameter
	.long	50                      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	17                      # Abbrev [17] 0x26f:0x12 DW_TAG_subprogram
	.long	.Lstring41              # DW_AT_MIPS_linkage_name
	.long	.Lstring42              # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	23                      # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	13                      # Abbrev [13] 0x27b:0x5 DW_TAG_formal_parameter
	.long	338                     # DW_AT_type
                                        # DW_AT_artificial
	.byte	0                       # End Of Children Mark
	.byte	17                      # Abbrev [17] 0x281:0x17 DW_TAG_subprogram
	.long	.Lstring43              # DW_AT_MIPS_linkage_name
	.long	.Lstring44              # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	33                      # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	3                       # DW_AT_accessibility
                                        # DW_ACCESS_private
	.byte	13                      # Abbrev [13] 0x28d:0x5 DW_TAG_formal_parameter
	.long	338                     # DW_AT_type
                                        # DW_AT_artificial
	.byte	15                      # Abbrev [15] 0x292:0x5 DW_TAG_formal_parameter
	.long	50                      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	27                      # Abbrev [27] 0x298:0xf DW_TAG_variable
	.long	.Lstring51              # DW_AT_name
	.long	.Lstring52              # DW_AT_MIPS_linkage_name
	.long	680                     # DW_AT_type
                                        # DW_AT_external
	.byte	4                       # DW_AT_decl_file
	.byte	11                      # DW_AT_decl_line
                                        # DW_AT_declaration
	.byte	0                       # End Of Children Mark
	.byte	3                       # Abbrev [3] 0x2a8:0x5 DW_TAG_pointer_type
	.long	343                     # DW_AT_type
	.byte	28                      # Abbrev [28] 0x2ad:0xf DW_TAG_variable
	.long	664                     # DW_AT_specification
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	_ZN12StringBuffer11null_bufferE
	.byte	19                      # Abbrev [19] 0x2bc:0x19 DW_TAG_subprogram
	.long	.Lstring45              # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	11                      # DW_AT_decl_line
	.quad	.Lfunc_begin4           # DW_AT_low_pc
	.quad	.Lfunc_end4             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	29                      # Abbrev [29] 0x2d5:0x17 DW_TAG_subprogram
	.long	411                     # DW_AT_specification
	.quad	.Lfunc_begin5           # DW_AT_low_pc
	.quad	.Lfunc_end5             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	29                      # Abbrev [29] 0x2ec:0x17 DW_TAG_subprogram
	.long	425                     # DW_AT_specification
	.quad	.Lfunc_begin6           # DW_AT_low_pc
	.quad	.Lfunc_end6             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	29                      # Abbrev [29] 0x303:0x17 DW_TAG_subprogram
	.long	444                     # DW_AT_specification
	.quad	.Lfunc_begin7           # DW_AT_low_pc
	.quad	.Lfunc_end7             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	29                      # Abbrev [29] 0x31a:0x17 DW_TAG_subprogram
	.long	463                     # DW_AT_specification
	.quad	.Lfunc_begin9           # DW_AT_low_pc
	.quad	.Lfunc_end9             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	29                      # Abbrev [29] 0x331:0x17 DW_TAG_subprogram
	.long	477                     # DW_AT_specification
	.quad	.Lfunc_begin10          # DW_AT_low_pc
	.quad	.Lfunc_end10            # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	29                      # Abbrev [29] 0x348:0x17 DW_TAG_subprogram
	.long	499                     # DW_AT_specification
	.quad	.Lfunc_begin11          # DW_AT_low_pc
	.quad	.Lfunc_end11            # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	29                      # Abbrev [29] 0x35f:0x17 DW_TAG_subprogram
	.long	537                     # DW_AT_specification
	.quad	.Lfunc_begin12          # DW_AT_low_pc
	.quad	.Lfunc_end12            # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	29                      # Abbrev [29] 0x376:0x17 DW_TAG_subprogram
	.long	564                     # DW_AT_specification
	.quad	.Lfunc_begin8           # DW_AT_low_pc
	.quad	.Lfunc_end8             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	29                      # Abbrev [29] 0x38d:0x17 DW_TAG_subprogram
	.long	591                     # DW_AT_specification
	.quad	.Lfunc_begin14          # DW_AT_low_pc
	.quad	.Lfunc_end14            # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	29                      # Abbrev [29] 0x3a4:0x17 DW_TAG_subprogram
	.long	623                     # DW_AT_specification
	.quad	.Lfunc_begin15          # DW_AT_low_pc
	.quad	.Lfunc_end15            # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	29                      # Abbrev [29] 0x3bb:0x17 DW_TAG_subprogram
	.long	641                     # DW_AT_specification
	.quad	.Lfunc_begin13          # DW_AT_low_pc
	.quad	.Lfunc_end13            # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	26                      # Abbrev [26] 0x3d2:0x19 DW_TAG_subprogram
	.long	.Lstring49              # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	133                     # DW_AT_decl_line
                                        # DW_AT_artificial
	.quad	.Lfunc_begin16          # DW_AT_low_pc
	.quad	.Lfunc_end16            # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	0                       # End Of Children Mark
.Linfo_end4:
	.section	.debug_abbrev,"",@progbits
.Labbrev_begin:
	.byte	1                       # Abbreviation Code
	.byte	17                      # DW_TAG_compile_unit
	.byte	1                       # DW_CHILDREN_yes
	.byte	37                      # DW_AT_producer
	.byte	14                      # DW_FORM_strp
	.byte	19                      # DW_AT_language
	.byte	5                       # DW_FORM_data2
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	16                      # DW_AT_stmt_list
	.byte	6                       # DW_FORM_data4
	.byte	27                      # DW_AT_comp_dir
	.byte	14                      # DW_FORM_strp
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	2                       # Abbreviation Code
	.byte	36                      # DW_TAG_base_type
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	62                      # DW_AT_encoding
	.byte	11                      # DW_FORM_data1
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	3                       # Abbreviation Code
	.byte	15                      # DW_TAG_pointer_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	4                       # Abbreviation Code
	.byte	19                      # DW_TAG_structure_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	5                       # Abbreviation Code
	.byte	13                      # DW_TAG_member
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	56                      # DW_AT_data_member_location
	.byte	10                      # DW_FORM_block1
	.byte	50                      # DW_AT_accessibility
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	6                       # Abbreviation Code
	.byte	22                      # DW_TAG_typedef
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	7                       # Abbreviation Code
	.byte	36                      # DW_TAG_base_type
	.byte	0                       # DW_CHILDREN_no
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	62                      # DW_AT_encoding
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	8                       # Abbreviation Code
	.byte	1                       # DW_TAG_array_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	9                       # Abbreviation Code
	.byte	33                      # DW_TAG_subrange_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	47                      # DW_AT_upper_bound
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	10                      # Abbreviation Code
	.byte	23                      # DW_TAG_union_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	11                      # Abbreviation Code
	.byte	2                       # DW_TAG_class_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	12                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	50                      # DW_AT_accessibility
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	13                      # Abbreviation Code
	.byte	5                       # DW_TAG_formal_parameter
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	52                      # DW_AT_artificial
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	14                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	50                      # DW_AT_accessibility
	.byte	11                      # DW_FORM_data1
	.byte	99                      # DW_AT_explicit
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	15                      # Abbreviation Code
	.byte	5                       # DW_TAG_formal_parameter
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	16                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.ascii	 "\207@"                # DW_AT_MIPS_linkage_name
	.byte	14                      # DW_FORM_strp
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	50                      # DW_AT_accessibility
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	17                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.ascii	 "\207@"                # DW_AT_MIPS_linkage_name
	.byte	14                      # DW_FORM_strp
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	50                      # DW_AT_accessibility
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	18                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	2                       # DW_AT_location
	.byte	10                      # DW_FORM_block1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	19                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	1                       # DW_FORM_addr
	.byte	64                      # DW_AT_frame_base
	.byte	10                      # DW_FORM_block1
	.ascii	 "\347\177"             # DW_AT_APPLE_omit_frame_ptr
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	20                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.ascii	 "\207@"                # DW_AT_MIPS_linkage_name
	.byte	14                      # DW_FORM_strp
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	1                       # DW_FORM_addr
	.byte	64                      # DW_AT_frame_base
	.byte	10                      # DW_FORM_block1
	.ascii	 "\347\177"             # DW_AT_APPLE_omit_frame_ptr
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	21                      # Abbreviation Code
	.byte	5                       # DW_TAG_formal_parameter
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	2                       # DW_AT_location
	.byte	10                      # DW_FORM_block1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	22                      # Abbreviation Code
	.byte	15                      # DW_TAG_pointer_type
	.byte	0                       # DW_CHILDREN_no
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	23                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	1                       # DW_FORM_addr
	.byte	64                      # DW_AT_frame_base
	.byte	10                      # DW_FORM_block1
	.ascii	 "\347\177"             # DW_AT_APPLE_omit_frame_ptr
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	24                      # Abbreviation Code
	.byte	11                      # DW_TAG_lexical_block
	.byte	1                       # DW_CHILDREN_yes
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	1                       # DW_FORM_addr
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	25                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	2                       # DW_AT_location
	.byte	10                      # DW_FORM_block1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	26                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	52                      # DW_AT_artificial
	.byte	25                      # DW_FORM_flag_present
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	1                       # DW_FORM_addr
	.byte	64                      # DW_AT_frame_base
	.byte	10                      # DW_FORM_block1
	.ascii	 "\347\177"             # DW_AT_APPLE_omit_frame_ptr
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	27                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.ascii	 "\207@"                # DW_AT_MIPS_linkage_name
	.byte	14                      # DW_FORM_strp
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	28                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	71                      # DW_AT_specification
	.byte	19                      # DW_FORM_ref4
	.byte	2                       # DW_AT_location
	.byte	10                      # DW_FORM_block1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	29                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	0                       # DW_CHILDREN_no
	.byte	71                      # DW_AT_specification
	.byte	19                      # DW_FORM_ref4
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	1                       # DW_FORM_addr
	.byte	64                      # DW_AT_frame_base
	.byte	10                      # DW_FORM_block1
	.ascii	 "\347\177"             # DW_AT_APPLE_omit_frame_ptr
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	0                       # EOM(3)
.Labbrev_end:
	.section	.debug_aranges,"",@progbits
	.section	.debug_ranges,"",@progbits
	.section	.debug_macinfo,"",@progbits
	.section	.debug_str,"MS",@progbits,1
.Lstring0:
	.asciz	 "clang version 3.2 (tags/RELEASE_32/final)"
.Lstring1:
	.asciz	 "main.cpp"
.Lstring2:
	.asciz	 "/home/tyu/Documents/concurrency-bugs/stringbuffer-jdk1.4"
.Lstring3:
	.asciz	 "buffer"
.Lstring4:
	.asciz	 "value"
.Lstring5:
	.asciz	 "char"
.Lstring6:
	.asciz	 "value_length"
.Lstring7:
	.asciz	 "int"
.Lstring8:
	.asciz	 "count"
.Lstring9:
	.asciz	 "mutex_lock"
.Lstring10:
	.asciz	 "__data"
.Lstring11:
	.asciz	 "__lock"
.Lstring12:
	.asciz	 "__count"
.Lstring13:
	.asciz	 "unsigned int"
.Lstring14:
	.asciz	 "__owner"
.Lstring15:
	.asciz	 "__nusers"
.Lstring16:
	.asciz	 "__kind"
.Lstring17:
	.asciz	 "__spins"
.Lstring18:
	.asciz	 "short"
.Lstring19:
	.asciz	 "__elision"
.Lstring20:
	.asciz	 "__list"
.Lstring21:
	.asciz	 "__prev"
.Lstring22:
	.asciz	 "__next"
.Lstring23:
	.asciz	 "__pthread_internal_list"
.Lstring24:
	.asciz	 "__pthread_list_t"
.Lstring25:
	.asciz	 "__pthread_mutex_s"
.Lstring26:
	.asciz	 "__size"
.Lstring27:
	.asciz	 "__align"
.Lstring28:
	.asciz	 "long int"
.Lstring29:
	.asciz	 "pthread_mutex_t"
.Lstring30:
	.asciz	 "StringBuffer"
.Lstring31:
	.asciz	 "~StringBuffer"
.Lstring32:
	.asciz	 "_ZN12StringBuffer6lengthEv"
.Lstring33:
	.asciz	 "length"
.Lstring34:
	.asciz	 "_ZN12StringBuffer8getCharsEiiPci"
.Lstring35:
	.asciz	 "getChars"
.Lstring36:
	.asciz	 "_ZN12StringBuffer6appendEPS_"
.Lstring37:
	.asciz	 "append"
.Lstring38:
	.asciz	 "_ZN12StringBuffer6appendEPc"
.Lstring39:
	.asciz	 "_ZN12StringBuffer5eraseEii"
.Lstring40:
	.asciz	 "erase"
.Lstring41:
	.asciz	 "_ZN12StringBuffer5printEv"
.Lstring42:
	.asciz	 "print"
.Lstring43:
	.asciz	 "_ZN12StringBuffer14expandCapacityEi"
.Lstring44:
	.asciz	 "expandCapacity"
.Lstring45:
	.asciz	 "__cxx_global_var_init"
.Lstring46:
	.asciz	 "_Z11thread_mainPv"
.Lstring47:
	.asciz	 "thread_main"
.Lstring48:
	.asciz	 "main"
.Lstring49:
	.asciz	 "_GLOBAL__I_a"
.Lstring50:
	.asciz	 "stringbuffer.cpp"
.Lstring51:
	.asciz	 "null_buffer"
.Lstring52:
	.asciz	 "_ZN12StringBuffer11null_bufferE"
.Lstring53:
	.asciz	 "args"
.Lstring54:
	.asciz	 "argc"
.Lstring55:
	.asciz	 "argv"
.Lstring56:
	.asciz	 "thd"
.Lstring57:
	.asciz	 "long unsigned int"
.Lstring58:
	.asciz	 "pthread_t"
.Lstring59:
	.asciz	 "rc"
.Lstring60:
	.asciz	 "sb"

	.globl	_ZN12StringBufferC1Ev
_ZN12StringBufferC1Ev = _ZN12StringBufferC2Ev
	.globl	_ZN12StringBufferC1Ei
_ZN12StringBufferC1Ei = _ZN12StringBufferC2Ei
	.globl	_ZN12StringBufferC1EPc
_ZN12StringBufferC1EPc = _ZN12StringBufferC2EPc
	.globl	_ZN12StringBufferD1Ev
_ZN12StringBufferD1Ev = _ZN12StringBufferD2Ev
	.section	".note.GNU-stack","",@progbits
