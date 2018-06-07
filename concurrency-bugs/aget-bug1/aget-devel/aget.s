	.file	"aget.bc"
	.file	1 "Aget.c"
	.file	2 "./Data.h"
	.file	3 "./Defs.h"
	.file	4 "Download.c"
	.file	5 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h"
	.file	6 "/usr/include/pthread.h"
	.file	7 "/usr/include/x86_64-linux-gnu/bits/socket_type.h"
	.file	8 "Ftp.c"
	.file	9 "Head.c"
	.file	10 "/usr/include/ctype.h"
	.file	11 "loadrc.c"
	.file	12 "./loadrc.h"
	.file	13 "main.c"
	.file	14 "/usr/include/netinet/in.h"
	.file	15 "Misc.c"
	.file	16 "Resume.c"
	.file	17 "Signal.c"
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
	.text
	.globl	startHTTP
	.align	16, 0x90
	.type	startHTTP,@function
startHTTP:                              # @startHTTP
	.cfi_startproc
.Lfunc_begin0:
	.loc	1 48 0                  # Aget.c:48:0
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp3:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp4:
	.cfi_def_cfa_offset 24
	subq	$16584, %rsp            # imm = 0x40C8
.Ltmp5:
	.cfi_def_cfa_offset 16608
.Ltmp6:
	.cfi_offset %rbx, -24
.Ltmp7:
	.cfi_offset %r14, -16
	movq	%rdi, 16576(%rsp)
	.loc	1 49 0 prologue_end     # Aget.c:49:0
.Ltmp8:
	movl	$0, 16556(%rsp)
	leaq	16400(%rsp), %rdi
	.loc	1 54 0                  # Aget.c:54:0
	callq	sigfillset
	.loc	1 55 0                  # Aget.c:55:0
	movq	16576(%rsp), %rdi
	callq	http_head_req
	.loc	1 66 0                  # Aget.c:66:0
	movq	16576(%rsp), %rax
	movl	34840(%rax), %edi
	callq	numofthreads
	movl	%eax, 16568(%rsp)
	.loc	1 67 0                  # Aget.c:67:0
	cmpl	$0, fsuggested(%rip)
	jne	.LBB0_4
# BB#1:                                 # %if.then
	.loc	1 68 0                  # Aget.c:68:0
.Ltmp9:
	cmpl	$0, 16568(%rsp)
	je	.LBB0_2
# BB#3:                                 # %if.else
	.loc	1 71 0                  # Aget.c:71:0
	movl	16568(%rsp), %eax
	movl	%eax, nthreads(%rip)
	jmp	.LBB0_4
.LBB0_2:                                # %if.then3
	.loc	1 69 0                  # Aget.c:69:0
	movl	$1, nthreads(%rip)
.Ltmp10:
.LBB0_4:                                # %if.end4
	.loc	1 73 0                  # Aget.c:73:0
	movslq	nthreads(%rip), %rdi
	movl	$17736, %esi            # imm = 0x4548
	callq	calloc
	movq	%rax, wthread(%rip)
	.loc	1 74 0                  # Aget.c:74:0
	movq	16576(%rsp), %rcx
	movl	34832(%rcx), %r9d
	movl	34840(%rcx), %edx
	movl	nthreads(%rip), %eax
	leaq	1024(%rcx), %rsi
	movl	%eax, (%rsp)
	movl	$.L.str, %edi
	leaq	18432(%rcx), %r8
	xorb	%al, %al
	callq	Log
	.loc	1 77 0                  # Aget.c:77:0
	movq	16576(%rsp), %rdi
	addq	$10240, %rdi            # imm = 0x2800
	movl	$194, %esi
	movl	$448, %edx              # imm = 0x1C0
	xorb	%al, %al
	callq	open
	movl	%eax, 16564(%rsp)
	cmpl	$-1, %eax
	jne	.LBB0_10
# BB#5:                                 # %if.then13
	.loc	1 78 0                  # Aget.c:78:0
.Ltmp11:
	callq	__errno_location
	cmpl	$17, (%rax)
	jne	.LBB0_10
# BB#6:
	leaq	8208(%rsp), %rbx
	.align	16, 0x90
.LBB0_7:                                # %again
                                        # =>This Inner Loop Header: Depth=1
	.loc	1 81 0                  # Aget.c:81:0
.Ltmp12:
	movq	stderr(%rip), %rdi
	movl	$.L.str1, %esi
	xorb	%al, %al
	callq	fprintf
	.loc	1 82 0                  # Aget.c:82:0
	movl	$.L.str2, %edi
	movq	%rbx, %rsi
	xorb	%al, %al
	callq	scanf
	.loc	1 84 0                  # Aget.c:84:0
	movsbl	8208(%rsp), %eax
	cmpl	$110, %eax
	je	.LBB0_47
# BB#8:                                 # %if.else25
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 86 0                  # Aget.c:86:0
	movsbl	8208(%rsp), %eax
	cmpl	$121, %eax
	jne	.LBB0_7
# BB#9:                                 # %if.then30
	.loc	1 87 0                  # Aget.c:87:0
.Ltmp13:
	movq	16576(%rsp), %rdi
	addq	$10240, %rdi            # imm = 0x2800
	movl	$66, %esi
	movl	$448, %edx              # imm = 0x1C0
	xorb	%al, %al
	callq	open
	movl	%eax, 16564(%rsp)
	cmpl	$-1, %eax
	je	.LBB0_48
.Ltmp14:
.LBB0_10:                               # %if.end47
	.loc	1 97 0                  # Aget.c:97:0
	movq	16576(%rsp), %rax
	movl	34840(%rax), %eax
	movl	16564(%rsp), %edi
	decl	%eax
	movslq	%eax, %rsi
	xorl	%edx, %edx
	callq	lseek
	cmpq	$-1, %rax
	je	.LBB0_11
# BB#13:                                # %if.end57
	.loc	1 102 0                 # Aget.c:102:0
	movl	16564(%rsp), %edi
	movl	$.L.str5, %esi
	movl	$1, %edx
	callq	write
	cmpq	$-1, %rax
	je	.LBB0_14
# BB#15:                                # %if.end65
	movl	$254, %edi
	movl	$1, %esi
	.loc	1 108 0                 # Aget.c:108:0
	callq	calloc
	movq	%rax, 16528(%rsp)
	.loc	1 109 0                 # Aget.c:109:0
	movl	$t_start, %edi
	callq	time
	leaq	16(%rsp), %rbx
	leaq	16400(%rsp), %r14
	.align	16, 0x90
.LBB0_16:                               # %retry
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_17 Depth 2
                                        #     Child Loop BB0_32 Depth 2
                                        #     Child Loop BB0_38 Depth 2
	.loc	1 111 0                 # Aget.c:111:0
.Ltmp15:
	movl	$0, 16572(%rsp)
	jmp	.LBB0_17
	.align	16, 0x90
.LBB0_29:                               # %if.else143
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 131 0                 # Aget.c:131:0
.Ltmp16:
	movl	$.L.str10, %r9d
	xorb	%al, %al
.Ltmp17:
	.loc	1 133 0                 # Aget.c:133:0
	callq	snprintf
.Ltmp18:
	.loc	1 135 0                 # Aget.c:135:0
	movslq	16572(%rsp), %rax
	imulq	$17736, %rax, %rax      # imm = 0x4548
	movq	wthread(%rip), %rcx
	leaq	16(%rcx,%rax), %rdi
	movq	16528(%rsp), %rsi
	movl	$256, %edx              # imm = 0x100
	callq	strncpy
.Ltmp19:
	.loc	1 111 0                 # Aget.c:111:0
	incl	16572(%rsp)
.LBB0_17:                               # %for.cond
                                        #   Parent Loop BB0_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorb	%al, %al
	movl	16572(%rsp), %ecx
	cmpl	nthreads(%rip), %ecx
	jge	.LBB0_19
# BB#18:                                # %land.rhs
                                        #   in Loop: Header=BB0_17 Depth=2
	movb	$1, %al
.LBB0_19:                               # %land.end
                                        #   in Loop: Header=BB0_17 Depth=2
	cmpb	$1, %al
	jne	.LBB0_30
# BB#20:                                # %for.body
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 112 0                 # Aget.c:112:0
.Ltmp20:
	movq	16576(%rsp), %rax
	movl	34840(%rax), %edi
	movl	nthreads(%rip), %edx
	movl	16572(%rsp), %esi
	callq	calc_offset
	movslq	%eax, %rax
	movq	%rax, 16544(%rsp)
	.loc	1 113 0                 # Aget.c:113:0
	movq	16576(%rsp), %rax
	movl	34840(%rax), %edi
	movl	nthreads(%rip), %edx
	movl	16572(%rsp), %esi
	incl	%esi
	callq	calc_offset
	movslq	%eax, %rax
	movq	%rax, 16536(%rsp)
	.loc	1 114 0                 # Aget.c:114:0
	movslq	16572(%rsp), %rax
	imulq	$17736, %rax, %rax      # imm = 0x4548
	movq	wthread(%rip), %rcx
	movq	16544(%rsp), %rdx
	movq	%rdx, 272(%rcx,%rax)
	.loc	1 115 0                 # Aget.c:115:0
	movl	nthreads(%rip), %eax
	decl	%eax
	cmpl	%eax, 16572(%rsp)
	jne	.LBB0_22
# BB#21:                                # %cond.true
                                        #   in Loop: Header=BB0_17 Depth=2
	movq	16576(%rsp), %rax
	movslq	34840(%rax), %rax
	jmp	.LBB0_23
	.align	16, 0x90
.LBB0_22:                               # %cond.false
                                        #   in Loop: Header=BB0_17 Depth=2
	movq	16536(%rsp), %rax
.LBB0_23:                               # %cond.end
                                        #   in Loop: Header=BB0_17 Depth=2
	movslq	16572(%rsp), %rcx
	imulq	$17736, %rcx, %rcx      # imm = 0x4548
	movq	wthread(%rip), %rdx
	movq	%rax, 280(%rdx,%rcx)
	.loc	1 116 0                 # Aget.c:116:0
	movslq	16572(%rsp), %rax
	imulq	$17736, %rax, %rax      # imm = 0x4548
	movq	wthread(%rip), %rcx
	movq	272(%rcx,%rax), %rdx
	movq	%rdx, 288(%rcx,%rax)
	.loc	1 117 0                 # Aget.c:117:0
	movslq	16572(%rsp), %rax
	imulq	$17736, %rax, %rax      # imm = 0x4548
	movq	wthread(%rip), %rcx
	movw	$2, (%rcx,%rax)
	.loc	1 118 0                 # Aget.c:118:0
	movq	16576(%rsp), %rdi
	addq	$18432, %rdi            # imm = 0x4800
	callq	inet_addr
	movslq	16572(%rsp), %rcx
	imulq	$17736, %rcx, %rcx      # imm = 0x4548
	movq	wthread(%rip), %rdx
	movl	%eax, 4(%rdx,%rcx)
	.loc	1 119 0                 # Aget.c:119:0
	movq	16576(%rsp), %rax
	movzwl	34832(%rax), %edi
	callq	htons
	movslq	16572(%rsp), %rcx
	imulq	$17736, %rcx, %rcx      # imm = 0x4548
	movq	wthread(%rip), %rdx
	movw	%ax, 2(%rdx,%rcx)
	.loc	1 120 0                 # Aget.c:120:0
	movl	16564(%rsp), %edi
	callq	dup
	movslq	16572(%rsp), %rcx
	imulq	$17736, %rcx, %rcx      # imm = 0x4548
	movq	wthread(%rip), %rdx
	movl	%eax, 304(%rdx,%rcx)
	.loc	1 121 0                 # Aget.c:121:0
	movq	16576(%rsp), %rax
	movslq	34840(%rax), %rax
	movslq	16572(%rsp), %rcx
	imulq	$17736, %rcx, %rcx      # imm = 0x4548
	movq	wthread(%rip), %rdx
	movq	%rax, 296(%rdx,%rcx)
	.loc	1 122 0                 # Aget.c:122:0
	movl	$http_proxyhost, %edi
	callq	strlen
	testq	%rax, %rax
	je	.LBB0_28
# BB#24:                                # %if.then120
                                        #   in Loop: Header=BB0_17 Depth=2
.Ltmp21:
	#DEBUG_VALUE: tmp <- [%rsp+$16]+$0
	.loc	1 124 0                 # Aget.c:124:0
	movq	16576(%rsp), %rax
	movzbl	34844(%rax), %eax
	.loc	1 127 0                 # Aget.c:127:0
.Ltmp22:
	movq	%rbx, %rdi
.Ltmp23:
	.loc	1 124 0                 # Aget.c:124:0
	cmpl	$255, %eax
	jne	.LBB0_26
# BB#25:                                # %if.then124
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 125 0                 # Aget.c:125:0
.Ltmp24:
	movl	$.L.str7, %esi
	jmp	.LBB0_27
.Ltmp25:
	.align	16, 0x90
.LBB0_28:                               # %if.else143
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 133 0                 # Aget.c:133:0
	movq	16528(%rsp), %rdi
	movq	16576(%rsp), %r8
	movq	16544(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	1024(%r8), %rcx
	movl	$256, %esi              # imm = 0x100
.Ltmp26:
	.loc	1 131 0                 # Aget.c:131:0
	movl	$.L.str9, %edx
	jmp	.LBB0_29
	.align	16, 0x90
.LBB0_26:                               # %if.else127
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 127 0                 # Aget.c:127:0
.Ltmp27:
	movl	$.L.str8, %esi
.LBB0_27:                               # %if.else127
                                        #   in Loop: Header=BB0_17 Depth=2
	callq	strcpy
.Ltmp28:
	.loc	1 129 0                 # Aget.c:129:0
	movq	16576(%rsp), %rsi
	movq	%rbx, %rdi
	movl	$8192, %edx             # imm = 0x2000
	callq	strncat
	.loc	1 130 0                 # Aget.c:130:0
	movq	16576(%rsp), %rsi
	addq	$1024, %rsi             # imm = 0x400
	movq	%rbx, %rdi
	movl	$8192, %edx             # imm = 0x2000
	callq	strncat
	.loc	1 131 0                 # Aget.c:131:0
	movq	16576(%rsp), %r8
	movq	16528(%rsp), %rdi
	movq	16544(%rsp), %rax
	movq	%rax, (%rsp)
	movl	$256, %esi              # imm = 0x100
	movl	$.L.str9, %edx
	movq	%rbx, %rcx
	jmp	.LBB0_29
.Ltmp29:
	.align	16, 0x90
.LBB0_30:                               # %for.end
                                        #   in Loop: Header=BB0_16 Depth=1
	xorl	%edi, %edi
	.loc	1 146 0                 # Aget.c:146:0
	movq	%r14, %rsi
	xorl	%edx, %edx
	callq	pthread_sigmask
	.loc	1 152 0                 # Aget.c:152:0
	movl	$hthread, %edi
	xorl	%esi, %esi
	movl	$signal_waiter, %edx
	xorl	%ecx, %ecx
	callq	pthread_create
	movl	%eax, 16568(%rsp)
	testl	%eax, %eax
	jne	.LBB0_49
# BB#31:                                # %if.end162
                                        #   in Loop: Header=BB0_16 Depth=1
	.loc	1 157 0                 # Aget.c:157:0
.Ltmp30:
	movl	$0, 16572(%rsp)
	jmp	.LBB0_32
	.align	16, 0x90
.LBB0_36:                               # %for.inc184
                                        #   in Loop: Header=BB0_32 Depth=2
	.loc	1 162 0                 # Aget.c:162:0
.Ltmp31:
	callq	pthread_testcancel
.Ltmp32:
	.loc	1 157 0                 # Aget.c:157:0
	incl	16572(%rsp)
.LBB0_32:                               # %for.cond163
                                        #   Parent Loop BB0_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorb	%al, %al
	movl	16572(%rsp), %ecx
	cmpl	nthreads(%rip), %ecx
	jge	.LBB0_34
# BB#33:                                # %land.rhs166
                                        #   in Loop: Header=BB0_32 Depth=2
	movb	$1, %al
.LBB0_34:                               # %land.end173
                                        #   in Loop: Header=BB0_32 Depth=2
	cmpb	$1, %al
	jne	.LBB0_37
# BB#35:                                # %for.body174
                                        #   in Loop: Header=BB0_32 Depth=2
	.loc	1 158 0                 # Aget.c:158:0
.Ltmp33:
	movslq	16572(%rsp), %rax
	imulq	$17736, %rax, %rax      # imm = 0x4548
	movq	wthread(%rip), %rcx
	leaq	312(%rcx,%rax), %rdi
	addq	%rax, %rcx
	xorl	%esi, %esi
	movl	$http_get, %edx
	callq	pthread_create
	testl	%eax, %eax
	jne	.LBB0_50
	jmp	.LBB0_36
.Ltmp34:
	.align	16, 0x90
.LBB0_37:                               # %for.end186
                                        #   in Loop: Header=BB0_16 Depth=1
	.loc	1 165 0                 # Aget.c:165:0
	callq	pthread_testcancel
	.loc	1 168 0                 # Aget.c:168:0
.Ltmp35:
	movl	$0, 16572(%rsp)
	jmp	.LBB0_38
	.align	16, 0x90
.LBB0_42:                               # %for.inc215
                                        #   in Loop: Header=BB0_38 Depth=2
	.loc	1 178 0                 # Aget.c:178:0
.Ltmp36:
	movslq	16572(%rsp), %rax
	imulq	$17736, %rax, %rax      # imm = 0x4548
	movq	wthread(%rip), %rcx
	movq	$-1, 312(%rcx,%rax)
	.loc	1 179 0                 # Aget.c:179:0
	callq	pthread_testcancel
.Ltmp37:
	.loc	1 168 0                 # Aget.c:168:0
	incl	16572(%rsp)
.LBB0_38:                               # %for.cond187
                                        #   Parent Loop BB0_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	16572(%rsp), %eax
	cmpl	nthreads(%rip), %eax
	jge	.LBB0_43
# BB#39:                                # %for.body190
                                        #   in Loop: Header=BB0_38 Depth=2
	.loc	1 169 0                 # Aget.c:169:0
.Ltmp38:
	movslq	16572(%rsp), %rax
	imulq	$17736, %rax, %rax      # imm = 0x4548
	movq	wthread(%rip), %rcx
	cmpl	$-1, 312(%rcx,%rax)
	je	.LBB0_42
# BB#40:                                # %if.then197
                                        #   in Loop: Header=BB0_38 Depth=2
	.loc	1 170 0                 # Aget.c:170:0
.Ltmp39:
	movslq	16572(%rsp), %rax
	imulq	$17736, %rax, %rax      # imm = 0x4548
	movq	wthread(%rip), %rcx
	movq	312(%rcx,%rax), %rdi
	xorl	%esi, %esi
	callq	pthread_join
	.loc	1 171 0                 # Aget.c:171:0
	movslq	16572(%rsp), %rax
	imulq	$17736, %rax, %rax      # imm = 0x4548
	movq	wthread(%rip), %rcx
	movzbl	320(%rcx,%rax), %eax
	cmpl	$255, %eax
	jne	.LBB0_42
# BB#41:                                # %if.then208
                                        #   in Loop: Header=BB0_38 Depth=2
	.loc	1 172 0                 # Aget.c:172:0
	incl	16556(%rsp)
	jmp	.LBB0_42
.Ltmp40:
	.align	16, 0x90
.LBB0_43:                               # %for.end217
                                        #   in Loop: Header=BB0_16 Depth=1
	.loc	1 182 0                 # Aget.c:182:0
	movl	16556(%rsp), %eax
	cmpl	nthreads(%rip), %eax
	jne	.LBB0_16
# BB#44:                                # %if.end224
	leaq	16400(%rsp), %rsi
	xorl	%edi, %edi
	xorl	%edx, %edx
	.loc	1 184 0                 # Aget.c:184:0
.Ltmp41:
	callq	pthread_sigmask
	.loc	1 185 0                 # Aget.c:185:0
	movq	hthread(%rip), %rdi
	callq	pthread_cancel
.Ltmp42:
	.loc	1 190 0                 # Aget.c:190:0
	movq	16528(%rsp), %rdi
	callq	free
	.loc	1 193 0                 # Aget.c:193:0
	movl	$t_finish, %edi
	callq	time
	.loc	1 194 0                 # Aget.c:194:0
	movl	t_finish(%rip), %eax
	subl	t_start(%rip), %eax
	movl	%eax, 16560(%rsp)
	jne	.LBB0_46
# BB#45:                                # %if.then230
	.loc	1 195 0                 # Aget.c:195:0
	movl	$1, 16560(%rsp)
.LBB0_46:                               # %if.end231
	.loc	1 197 0                 # Aget.c:197:0
	movq	16576(%rsp), %rax
	movl	34840(%rax), %eax
	movl	16560(%rsp), %esi
	cltd
	idivl	%esi
	movl	%eax, %edx
	sarl	$31, %edx
	shrl	$22, %edx
	addl	%eax, %edx
	sarl	$10, %edx
	movl	$.L.str13, %edi
	xorb	%al, %al
	callq	Log
	.loc	1 200 0                 # Aget.c:200:0
	movl	$.L.str14, %edi
	xorb	%al, %al
	callq	Log
	.loc	1 201 0                 # Aget.c:201:0
	movl	16564(%rsp), %edi
	callq	close
	.loc	1 202 0                 # Aget.c:202:0
	addq	$16584, %rsp            # imm = 0x40C8
	popq	%rbx
	popq	%r14
	ret
.LBB0_47:                               # %if.then24
	movl	$1, %edi
	.loc	1 85 0                  # Aget.c:85:0
.Ltmp43:
	callq	exit
.LBB0_48:                               # %if.then36
	movl	$10240, %ebx            # imm = 0x2800
	.loc	1 88 0                  # Aget.c:88:0
.Ltmp44:
	addq	16576(%rsp), %rbx
	movq	stderr(%rip), %r14
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movq	%r14, %rdi
	movl	$.L.str3, %esi
	movq	%rbx, %rdx
	movq	%rax, %rcx
	xorb	%al, %al
	callq	fprintf
	movl	$1, %edi
	.loc	1 89 0                  # Aget.c:89:0
	callq	exit
.Ltmp45:
.LBB0_11:                               # %if.then53
	.loc	1 98 0                  # Aget.c:98:0
	movq	stderr(%rip), %rbx
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movq	%rbx, %rdi
	movl	$.L.str4, %esi
	jmp	.LBB0_12
.Ltmp46:
.LBB0_14:                               # %if.then61
	.loc	1 103 0                 # Aget.c:103:0
	movq	stderr(%rip), %rbx
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movq	%rbx, %rdi
	movl	$.L.str6, %esi
.Ltmp47:
.LBB0_12:                               # %if.then53
	.loc	1 98 0                  # Aget.c:98:0
	movq	%rax, %rdx
	xorb	%al, %al
	callq	fprintf
	movl	$1, %edi
	.loc	1 99 0                  # Aget.c:99:0
	callq	exit
.Ltmp48:
.LBB0_49:                               # %if.then158
	.loc	1 153 0                 # Aget.c:153:0
	movq	stderr(%rip), %rbx
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movq	%rbx, %rdi
	movl	$.L.str11, %esi
	movq	%rax, %rdx
	xorb	%al, %al
	callq	fprintf
	movl	$-1, %edi
	.loc	1 154 0                 # Aget.c:154:0
	callq	exit
.Ltmp49:
.LBB0_50:                               # %if.then182
	.loc	1 159 0                 # Aget.c:159:0
	movl	$.L.str12, %edi
	xorb	%al, %al
	callq	Log
	movl	$2, %edi
	.loc	1 160 0                 # Aget.c:160:0
	callq	exit
.Ltmp50:
.Ltmp51:
	.size	startHTTP, .Ltmp51-startHTTP
.Lfunc_end0:
	.file	18 "/usr/include/x86_64-linux-gnu/bits/sigset.h"
	.cfi_endproc

	.globl	startFTP
	.align	16, 0x90
	.type	startFTP,@function
startFTP:                               # @startFTP
	.cfi_startproc
.Lfunc_begin1:
	.loc	1 205 0                 # Aget.c:205:0
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp57:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp58:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp59:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp60:
	.cfi_def_cfa_offset 40
	subq	$8392, %rsp             # imm = 0x20C8
.Ltmp61:
	.cfi_def_cfa_offset 8432
.Ltmp62:
	.cfi_offset %rbx, -40
.Ltmp63:
	.cfi_offset %r12, -32
.Ltmp64:
	.cfi_offset %r14, -24
.Ltmp65:
	.cfi_offset %r15, -16
	movq	%rdi, 8384(%rsp)
	.loc	1 206 0 prologue_end    # Aget.c:206:0
.Ltmp66:
	movl	$0, 8364(%rsp)
	leaq	8208(%rsp), %rdi
	.loc	1 211 0                 # Aget.c:211:0
	callq	sigfillset
	.loc	1 213 0                 # Aget.c:213:0
	movl	$http_proxyhost, %edi
	callq	strlen
	testq	%rax, %rax
	je	.LBB1_2
# BB#1:                                 # %if.then
	.loc	1 214 0                 # Aget.c:214:0
.Ltmp67:
	movq	8384(%rsp), %rdi
	callq	startHTTP
.Ltmp68:
.LBB1_2:                                # %if.end
	.loc	1 222 0                 # Aget.c:222:0
	movl	$-1, 8340(%rsp)
	.loc	1 223 0                 # Aget.c:223:0
	movq	8384(%rsp), %rdi
	leaq	8340(%rsp), %rsi
	callq	ftp_head_req
	movl	%eax, 8376(%rsp)
	cmpl	$1, %eax
	jne	.LBB1_6
# BB#3:                                 # %if.then4
	.loc	1 230 0                 # Aget.c:230:0
.Ltmp69:
	movq	8384(%rsp), %rax
	movl	34840(%rax), %edi
	callq	numofthreads
	movl	%eax, 8376(%rsp)
	.loc	1 231 0                 # Aget.c:231:0
	cmpl	$0, fsuggested(%rip)
	jne	.LBB1_7
# BB#4:                                 # %if.then7
	.loc	1 232 0                 # Aget.c:232:0
.Ltmp70:
	cmpl	$0, 8376(%rsp)
	je	.LBB1_6
# BB#5:                                 # %if.else
	.loc	1 235 0                 # Aget.c:235:0
	movl	8376(%rsp), %eax
	movl	%eax, nthreads(%rip)
	jmp	.LBB1_7
.Ltmp71:
.LBB1_6:                                # %if.else12
	.loc	1 238 0                 # Aget.c:238:0
	movl	$1, nthreads(%rip)
.LBB1_7:                                # %if.end13
	.loc	1 244 0                 # Aget.c:244:0
	movslq	nthreads(%rip), %rdi
	movl	$17736, %esi            # imm = 0x4548
	callq	calloc
	movq	%rax, wthread(%rip)
	.loc	1 245 0                 # Aget.c:245:0
	movq	8384(%rsp), %rcx
	movl	34832(%rcx), %r9d
	movl	34840(%rcx), %edx
	movl	nthreads(%rip), %eax
	leaq	1024(%rcx), %rsi
	movl	%eax, (%rsp)
	movl	$.L.str, %edi
	leaq	18432(%rcx), %r8
	xorb	%al, %al
	callq	Log
	.loc	1 248 0                 # Aget.c:248:0
	movq	8384(%rsp), %rdi
	addq	$10240, %rdi            # imm = 0x2800
	movl	$194, %esi
	movl	$448, %edx              # imm = 0x1C0
	xorb	%al, %al
	callq	open
	movl	%eax, 8372(%rsp)
	cmpl	$-1, %eax
	jne	.LBB1_13
# BB#8:                                 # %if.then22
	.loc	1 249 0                 # Aget.c:249:0
.Ltmp72:
	callq	__errno_location
	cmpl	$17, (%rax)
	jne	.LBB1_13
# BB#9:
	leaq	16(%rsp), %rbx
	.align	16, 0x90
.LBB1_10:                               # %again
                                        # =>This Inner Loop Header: Depth=1
	.loc	1 252 0                 # Aget.c:252:0
.Ltmp73:
	movq	stderr(%rip), %rdi
	movl	$.L.str1, %esi
	xorb	%al, %al
	callq	fprintf
	.loc	1 253 0                 # Aget.c:253:0
	movl	$.L.str2, %edi
	movq	%rbx, %rsi
	xorb	%al, %al
	callq	scanf
	.loc	1 255 0                 # Aget.c:255:0
	movsbl	16(%rsp), %eax
	cmpl	$110, %eax
	je	.LBB1_46
# BB#11:                                # %if.else34
                                        #   in Loop: Header=BB1_10 Depth=1
	.loc	1 257 0                 # Aget.c:257:0
	movsbl	16(%rsp), %eax
	cmpl	$121, %eax
	jne	.LBB1_10
# BB#12:                                # %if.then39
	.loc	1 258 0                 # Aget.c:258:0
.Ltmp74:
	movq	8384(%rsp), %rdi
	addq	$10240, %rdi            # imm = 0x2800
	movl	$66, %esi
	movl	$448, %edx              # imm = 0x1C0
	xorb	%al, %al
	callq	open
	movl	%eax, 8372(%rsp)
	cmpl	$-1, %eax
	je	.LBB1_47
.Ltmp75:
.LBB1_13:                               # %if.end56
	.loc	1 268 0                 # Aget.c:268:0
	movq	8384(%rsp), %rax
	movl	34840(%rax), %eax
	movl	8372(%rsp), %edi
	decl	%eax
	movslq	%eax, %rsi
	xorl	%edx, %edx
	callq	lseek
	cmpq	$-1, %rax
	je	.LBB1_14
# BB#16:                                # %if.end66
	.loc	1 273 0                 # Aget.c:273:0
	movl	8372(%rsp), %edi
	movl	$.L.str5, %esi
	movl	$1, %edx
	callq	write
	cmpq	$-1, %rax
	je	.LBB1_17
# BB#18:                                # %if.end74
	.loc	1 279 0                 # Aget.c:279:0
	movl	$t_start, %edi
	callq	time
	movl	$18448, %r15d           # imm = 0x4810
	movl	$26640, %r12d           # imm = 0x6810
	movl	$1024, %ebx             # imm = 0x400
	leaq	8208(%rsp), %r14
	.align	16, 0x90
.LBB1_19:                               # %retry
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_20 Depth 2
                                        #     Child Loop BB1_31 Depth 2
                                        #     Child Loop BB1_37 Depth 2
	.loc	1 281 0                 # Aget.c:281:0
.Ltmp76:
	movl	$0, 8380(%rsp)
	jmp	.LBB1_20
	.align	16, 0x90
.LBB1_28:                               # %for.inc
                                        #   in Loop: Header=BB1_20 Depth=2
	.loc	1 286 0                 # Aget.c:286:0
.Ltmp77:
	movslq	8380(%rsp), %rcx
	imulq	$17736, %rcx, %rcx      # imm = 0x4548
	movq	wthread(%rip), %rdx
	movq	%rax, 280(%rdx,%rcx)
	.loc	1 287 0                 # Aget.c:287:0
	movslq	8380(%rsp), %rax
	imulq	$17736, %rax, %rax      # imm = 0x4548
	movq	wthread(%rip), %rcx
	movq	272(%rcx,%rax), %rdx
	movq	%rdx, 288(%rcx,%rax)
	.loc	1 288 0                 # Aget.c:288:0
	movslq	8380(%rsp), %rax
	imulq	$17736, %rax, %rax      # imm = 0x4548
	movq	wthread(%rip), %rcx
	movw	$2, (%rcx,%rax)
	.loc	1 289 0                 # Aget.c:289:0
	movq	8384(%rsp), %rdi
	addq	$18432, %rdi            # imm = 0x4800
	callq	inet_addr
	movslq	8380(%rsp), %rcx
	imulq	$17736, %rcx, %rcx      # imm = 0x4548
	movq	wthread(%rip), %rdx
	movl	%eax, 4(%rdx,%rcx)
	.loc	1 290 0                 # Aget.c:290:0
	movq	8384(%rsp), %rax
	movzwl	34832(%rax), %edi
	callq	htons
	movslq	8380(%rsp), %rcx
	imulq	$17736, %rcx, %rcx      # imm = 0x4548
	movq	wthread(%rip), %rdx
	movw	%ax, 2(%rdx,%rcx)
	.loc	1 291 0                 # Aget.c:291:0
	movl	8372(%rsp), %edi
	callq	dup
	movslq	8380(%rsp), %rcx
	imulq	$17736, %rcx, %rcx      # imm = 0x4548
	movq	wthread(%rip), %rdx
	movl	%eax, 304(%rdx,%rcx)
	.loc	1 292 0                 # Aget.c:292:0
	movq	8384(%rsp), %rax
	movslq	34840(%rax), %rax
	movslq	8380(%rsp), %rcx
	imulq	$17736, %rcx, %rcx      # imm = 0x4548
	movq	wthread(%rip), %rdx
	movq	%rax, 296(%rdx,%rcx)
	.loc	1 293 0                 # Aget.c:293:0
	movslq	8380(%rsp), %rax
	imulq	$17736, %rax, %rax      # imm = 0x4548
	movq	wthread(%rip), %rcx
	leaq	321(%rcx,%rax), %rdi
	movq	8384(%rsp), %rsi
	addq	%r15, %rsi
	movl	$8191, %edx             # imm = 0x1FFF
	callq	strncpy
	.loc	1 294 0                 # Aget.c:294:0
	movslq	8380(%rsp), %rax
	imulq	$17736, %rax, %rax      # imm = 0x4548
	movq	wthread(%rip), %rcx
	leaq	8513(%rcx,%rax), %rdi
	movq	8384(%rsp), %rsi
	addq	%r12, %rsi
	movl	$8191, %edx             # imm = 0x1FFF
	callq	strncpy
	.loc	1 295 0                 # Aget.c:295:0
	movslq	8380(%rsp), %rax
	imulq	$17736, %rax, %rax      # imm = 0x4548
	movq	wthread(%rip), %rcx
	leaq	16705(%rcx,%rax), %rdi
	movq	8384(%rsp), %rsi
	addq	%rbx, %rsi
	movl	$1023, %edx             # imm = 0x3FF
	callq	strncpy
.Ltmp78:
	.loc	1 281 0                 # Aget.c:281:0
	incl	8380(%rsp)
.LBB1_20:                               # %for.cond
                                        #   Parent Loop BB1_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorb	%al, %al
	movl	8380(%rsp), %ecx
	cmpl	nthreads(%rip), %ecx
	jge	.LBB1_22
# BB#21:                                # %land.rhs
                                        #   in Loop: Header=BB1_20 Depth=2
	movb	$1, %al
.LBB1_22:                               # %land.end
                                        #   in Loop: Header=BB1_20 Depth=2
	cmpb	$1, %al
	jne	.LBB1_29
# BB#23:                                # %for.body
                                        #   in Loop: Header=BB1_20 Depth=2
	.loc	1 282 0                 # Aget.c:282:0
.Ltmp79:
	movq	8384(%rsp), %rax
	movl	34840(%rax), %edi
	movl	nthreads(%rip), %edx
	movl	8380(%rsp), %esi
	callq	calc_offset
	movslq	%eax, %rax
	movq	%rax, 8352(%rsp)
	.loc	1 283 0                 # Aget.c:283:0
	movq	8384(%rsp), %rax
	movl	34840(%rax), %edi
	movl	nthreads(%rip), %edx
	movl	8380(%rsp), %esi
	incl	%esi
	callq	calc_offset
	movl	$-1, %ecx
	movslq	%eax, %rax
	movq	%rax, 8344(%rsp)
	.loc	1 284 0                 # Aget.c:284:0
	cmpl	$0, 8380(%rsp)
	jne	.LBB1_25
# BB#24:                                # %cond.true
                                        #   in Loop: Header=BB1_20 Depth=2
	movl	8340(%rsp), %ecx
.LBB1_25:                               # %cond.end
                                        #   in Loop: Header=BB1_20 Depth=2
	movslq	8380(%rsp), %rax
	imulq	$17736, %rax, %rax      # imm = 0x4548
	movq	wthread(%rip), %rdx
	movl	%ecx, 17732(%rdx,%rax)
	.loc	1 285 0                 # Aget.c:285:0
	movslq	8380(%rsp), %rax
	imulq	$17736, %rax, %rax      # imm = 0x4548
	movq	wthread(%rip), %rcx
	movq	8352(%rsp), %rdx
	movq	%rdx, 272(%rcx,%rax)
	.loc	1 286 0                 # Aget.c:286:0
	movl	nthreads(%rip), %eax
	decl	%eax
	cmpl	%eax, 8380(%rsp)
	jne	.LBB1_27
# BB#26:                                # %cond.true97
                                        #   in Loop: Header=BB1_20 Depth=2
	movq	8384(%rsp), %rax
	movslq	34840(%rax), %rax
	jmp	.LBB1_28
	.align	16, 0x90
.LBB1_27:                               # %cond.false100
                                        #   in Loop: Header=BB1_20 Depth=2
	movq	8344(%rsp), %rax
	jmp	.LBB1_28
.Ltmp80:
	.align	16, 0x90
.LBB1_29:                               # %for.end
                                        #   in Loop: Header=BB1_19 Depth=1
	xorl	%edi, %edi
	.loc	1 306 0                 # Aget.c:306:0
	movq	%r14, %rsi
	xorl	%edx, %edx
	callq	pthread_sigmask
	.loc	1 312 0                 # Aget.c:312:0
	movl	$hthread, %edi
	xorl	%esi, %esi
	movl	$signal_waiter, %edx
	xorl	%ecx, %ecx
	callq	pthread_create
	movl	%eax, 8376(%rsp)
	testl	%eax, %eax
	jne	.LBB1_48
# BB#30:                                # %if.end161
                                        #   in Loop: Header=BB1_19 Depth=1
	.loc	1 317 0                 # Aget.c:317:0
.Ltmp81:
	movl	$0, 8380(%rsp)
	jmp	.LBB1_31
	.align	16, 0x90
.LBB1_35:                               # %for.inc183
                                        #   in Loop: Header=BB1_31 Depth=2
	.loc	1 322 0                 # Aget.c:322:0
.Ltmp82:
	callq	pthread_testcancel
.Ltmp83:
	.loc	1 317 0                 # Aget.c:317:0
	incl	8380(%rsp)
.LBB1_31:                               # %for.cond162
                                        #   Parent Loop BB1_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorb	%al, %al
	movl	8380(%rsp), %ecx
	cmpl	nthreads(%rip), %ecx
	jge	.LBB1_33
# BB#32:                                # %land.rhs165
                                        #   in Loop: Header=BB1_31 Depth=2
	movb	$1, %al
.LBB1_33:                               # %land.end172
                                        #   in Loop: Header=BB1_31 Depth=2
	cmpb	$1, %al
	jne	.LBB1_36
# BB#34:                                # %for.body173
                                        #   in Loop: Header=BB1_31 Depth=2
	.loc	1 318 0                 # Aget.c:318:0
.Ltmp84:
	movslq	8380(%rsp), %rax
	imulq	$17736, %rax, %rax      # imm = 0x4548
	movq	wthread(%rip), %rcx
	leaq	312(%rcx,%rax), %rdi
	addq	%rax, %rcx
	xorl	%esi, %esi
	movl	$ftp_get, %edx
	callq	pthread_create
	testl	%eax, %eax
	jne	.LBB1_49
	jmp	.LBB1_35
.Ltmp85:
	.align	16, 0x90
.LBB1_36:                               # %for.end185
                                        #   in Loop: Header=BB1_19 Depth=1
	.loc	1 325 0                 # Aget.c:325:0
	callq	pthread_testcancel
	.loc	1 328 0                 # Aget.c:328:0
.Ltmp86:
	movl	$0, 8380(%rsp)
	jmp	.LBB1_37
	.align	16, 0x90
.LBB1_41:                               # %for.inc214
                                        #   in Loop: Header=BB1_37 Depth=2
	.loc	1 337 0                 # Aget.c:337:0
.Ltmp87:
	movslq	8380(%rsp), %rax
	imulq	$17736, %rax, %rax      # imm = 0x4548
	movq	wthread(%rip), %rcx
	movq	$-1, 312(%rcx,%rax)
	.loc	1 338 0                 # Aget.c:338:0
	callq	pthread_testcancel
.Ltmp88:
	.loc	1 328 0                 # Aget.c:328:0
	incl	8380(%rsp)
.LBB1_37:                               # %for.cond186
                                        #   Parent Loop BB1_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	8380(%rsp), %eax
	cmpl	nthreads(%rip), %eax
	jge	.LBB1_42
# BB#38:                                # %for.body189
                                        #   in Loop: Header=BB1_37 Depth=2
	.loc	1 329 0                 # Aget.c:329:0
.Ltmp89:
	movslq	8380(%rsp), %rax
	imulq	$17736, %rax, %rax      # imm = 0x4548
	movq	wthread(%rip), %rcx
	cmpl	$-1, 312(%rcx,%rax)
	je	.LBB1_41
# BB#39:                                # %if.then196
                                        #   in Loop: Header=BB1_37 Depth=2
	.loc	1 330 0                 # Aget.c:330:0
.Ltmp90:
	movslq	8380(%rsp), %rax
	imulq	$17736, %rax, %rax      # imm = 0x4548
	movq	wthread(%rip), %rcx
	movq	312(%rcx,%rax), %rdi
	xorl	%esi, %esi
	callq	pthread_join
	.loc	1 331 0                 # Aget.c:331:0
	movslq	8380(%rsp), %rax
	imulq	$17736, %rax, %rax      # imm = 0x4548
	movq	wthread(%rip), %rcx
	movzbl	320(%rcx,%rax), %eax
	cmpl	$255, %eax
	jne	.LBB1_41
# BB#40:                                # %if.then207
                                        #   in Loop: Header=BB1_37 Depth=2
	.loc	1 332 0                 # Aget.c:332:0
	incl	8364(%rsp)
	jmp	.LBB1_41
.Ltmp91:
	.align	16, 0x90
.LBB1_42:                               # %for.end216
                                        #   in Loop: Header=BB1_19 Depth=1
	.loc	1 341 0                 # Aget.c:341:0
	movl	8364(%rsp), %eax
	cmpl	nthreads(%rip), %eax
	jne	.LBB1_19
# BB#43:                                # %if.end223
	leaq	8208(%rsp), %rsi
	xorl	%edi, %edi
	xorl	%edx, %edx
	.loc	1 343 0                 # Aget.c:343:0
.Ltmp92:
	callq	pthread_sigmask
	.loc	1 344 0                 # Aget.c:344:0
	movq	hthread(%rip), %rdi
	callq	pthread_cancel
.Ltmp93:
	.loc	1 350 0                 # Aget.c:350:0
	movl	$t_finish, %edi
	callq	time
	.loc	1 351 0                 # Aget.c:351:0
	movl	t_finish(%rip), %eax
	subl	t_start(%rip), %eax
	movl	%eax, 8368(%rsp)
	jne	.LBB1_45
# BB#44:                                # %if.then229
	.loc	1 352 0                 # Aget.c:352:0
	movl	$1, 8368(%rsp)
.LBB1_45:                               # %if.end230
	.loc	1 354 0                 # Aget.c:354:0
	movq	8384(%rsp), %rax
	movl	34840(%rax), %eax
	movl	8368(%rsp), %esi
	cltd
	idivl	%esi
	movl	%eax, %edx
	sarl	$31, %edx
	shrl	$22, %edx
	addl	%eax, %edx
	sarl	$10, %edx
	movl	$.L.str13, %edi
	xorb	%al, %al
	callq	Log
	.loc	1 356 0                 # Aget.c:356:0
	movl	$.L.str14, %edi
	xorb	%al, %al
	callq	Log
	.loc	1 357 0                 # Aget.c:357:0
	movl	8372(%rsp), %edi
	callq	close
	.loc	1 358 0                 # Aget.c:358:0
	addq	$8392, %rsp             # imm = 0x20C8
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	ret
.LBB1_46:                               # %if.then33
	movl	$1, %edi
	.loc	1 256 0                 # Aget.c:256:0
.Ltmp94:
	callq	exit
.LBB1_47:                               # %if.then45
	movl	$10240, %ebx            # imm = 0x2800
	.loc	1 259 0                 # Aget.c:259:0
.Ltmp95:
	addq	8384(%rsp), %rbx
	movq	stderr(%rip), %r14
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movq	%r14, %rdi
	movl	$.L.str3, %esi
	movq	%rbx, %rdx
	movq	%rax, %rcx
	xorb	%al, %al
	callq	fprintf
	movl	$1, %edi
	.loc	1 260 0                 # Aget.c:260:0
	callq	exit
.Ltmp96:
.LBB1_14:                               # %if.then62
	.loc	1 269 0                 # Aget.c:269:0
	movq	stderr(%rip), %rbx
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movq	%rbx, %rdi
	movl	$.L.str4, %esi
	jmp	.LBB1_15
.Ltmp97:
.LBB1_17:                               # %if.then70
	.loc	1 274 0                 # Aget.c:274:0
	movq	stderr(%rip), %rbx
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movq	%rbx, %rdi
	movl	$.L.str6, %esi
.Ltmp98:
.LBB1_15:                               # %if.then62
	.loc	1 269 0                 # Aget.c:269:0
	movq	%rax, %rdx
	xorb	%al, %al
	callq	fprintf
	movl	$1, %edi
	.loc	1 270 0                 # Aget.c:270:0
	callq	exit
.Ltmp99:
.LBB1_48:                               # %if.then157
	.loc	1 313 0                 # Aget.c:313:0
	movq	stderr(%rip), %rbx
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movq	%rbx, %rdi
	movl	$.L.str15, %esi
	movq	%rax, %rdx
	xorb	%al, %al
	callq	fprintf
	movl	$-1, %edi
	.loc	1 314 0                 # Aget.c:314:0
	callq	exit
.Ltmp100:
.LBB1_49:                               # %if.then181
	.loc	1 319 0                 # Aget.c:319:0
	movl	$.L.str12, %edi
	xorb	%al, %al
	callq	Log
	movl	$2, %edi
	.loc	1 320 0                 # Aget.c:320:0
	callq	exit
.Ltmp101:
.Ltmp102:
	.size	startFTP, .Ltmp102-startFTP
.Lfunc_end1:
	.cfi_endproc

	.globl	resumeDownload
	.align	16, 0x90
	.type	resumeDownload,@function
resumeDownload:                         # @resumeDownload
	.cfi_startproc
.Lfunc_begin2:
	.loc	1 364 0                 # Aget.c:364:0
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp106:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp107:
	.cfi_def_cfa_offset 24
	subq	$184, %rsp
.Ltmp108:
	.cfi_def_cfa_offset 208
.Ltmp109:
	.cfi_offset %rbx, -24
.Ltmp110:
	.cfi_offset %r14, -16
	movq	%rdi, 176(%rsp)
	movl	%esi, 172(%rsp)
	.loc	1 365 0 prologue_end    # Aget.c:365:0
.Ltmp111:
	movl	$0, 156(%rsp)
	leaq	16(%rsp), %rdi
	.loc	1 369 0                 # Aget.c:369:0
	callq	sigfillset
	.loc	1 370 0                 # Aget.c:370:0
	movq	176(%rsp), %rax
	movl	34856(%rax), %eax
	movl	%eax, nthreads(%rip)
	movl	$254, %edi
	movl	$1, %esi
	.loc	1 371 0                 # Aget.c:371:0
	callq	calloc
	movq	%rax, 144(%rsp)
	.loc	1 372 0                 # Aget.c:372:0
	movslq	nthreads(%rip), %rax
	imulq	$17736, %rax, %rdi      # imm = 0x4548
	callq	malloc
	movq	%rax, wthread(%rip)
	.loc	1 373 0                 # Aget.c:373:0
	movq	176(%rsp), %rsi
	movq	req(%rip), %rdi
	movl	$34856, %edx            # imm = 0x8828
	callq	memcpy
	movl	$34864, %esi            # imm = 0x8830
	.loc	1 374 0                 # Aget.c:374:0
	addq	176(%rsp), %rsi
	movq	wthread(%rip), %rdi
	movslq	nthreads(%rip), %rax
	imulq	$17736, %rax, %rdx      # imm = 0x4548
	callq	memcpy
	.loc	1 376 0                 # Aget.c:376:0
	movq	req(%rip), %rcx
	movl	34832(%rcx), %r9d
	movl	34840(%rcx), %edx
	movl	nthreads(%rip), %eax
	movl	%eax, (%rsp)
	leaq	1024(%rcx), %rsi
	movl	$.L.str16, %edi
	leaq	18432(%rcx), %r8
	xorb	%al, %al
	callq	Log
	.loc	1 379 0                 # Aget.c:379:0
	movq	req(%rip), %rdi
	addq	$10240, %rdi            # imm = 0x2800
	movl	$2, %esi
	movl	$448, %edx              # imm = 0x1C0
	xorb	%al, %al
	callq	open
	movl	%eax, 164(%rsp)
	cmpl	$-1, %eax
	je	.LBB2_28
# BB#1:                                 # %if.end
	.loc	1 384 0                 # Aget.c:384:0
	movl	$t_start, %edi
	callq	time
	leaq	16(%rsp), %rbx
	.align	16, 0x90
.LBB2_2:                                # %retry
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_3 Depth 2
                                        #     Child Loop BB2_9 Depth 2
                                        #     Child Loop BB2_19 Depth 2
	.loc	1 387 0                 # Aget.c:387:0
.Ltmp112:
	movl	$0, 168(%rsp)
	jmp	.LBB2_3
	.align	16, 0x90
.LBB2_6:                                # %for.inc
                                        #   in Loop: Header=BB2_3 Depth=2
	.loc	1 388 0                 # Aget.c:388:0
.Ltmp113:
	movslq	168(%rsp), %rax
	imulq	$17736, %rax, %rax      # imm = 0x4548
	movq	wthread(%rip), %rcx
	movl	$-1, 17732(%rcx,%rax)
	.loc	1 389 0                 # Aget.c:389:0
	movslq	168(%rsp), %rax
	imulq	$17736, %rax, %rax      # imm = 0x4548
	movq	wthread(%rip), %rcx
	movq	288(%rcx,%rax), %rdx
	movq	%rdx, 272(%rcx,%rax)
	.loc	1 390 0                 # Aget.c:390:0
	movl	164(%rsp), %edi
	callq	dup
	movslq	168(%rsp), %rcx
	imulq	$17736, %rcx, %rcx      # imm = 0x4548
	movq	wthread(%rip), %rdx
	movl	%eax, 304(%rdx,%rcx)
	.loc	1 391 0                 # Aget.c:391:0
	movslq	168(%rsp), %rax
	imulq	$17736, %rax, %rax      # imm = 0x4548
	movq	wthread(%rip), %rcx
	movq	288(%rcx,%rax), %rax
	movq	144(%rsp), %rdi
	movq	req(%rip), %r8
	movq	%rax, (%rsp)
	leaq	1024(%r8), %rcx
	movl	$256, %esi              # imm = 0x100
	movl	$.L.str9, %edx
	movl	$.L.str10, %r9d
	xorb	%al, %al
	callq	snprintf
	.loc	1 392 0                 # Aget.c:392:0
	movslq	168(%rsp), %rax
	imulq	$17736, %rax, %rax      # imm = 0x4548
	movq	wthread(%rip), %rcx
	leaq	16(%rcx,%rax), %rdi
	movq	144(%rsp), %rsi
	movl	$256, %edx              # imm = 0x100
	callq	strncpy
.Ltmp114:
	.loc	1 387 0                 # Aget.c:387:0
	incl	168(%rsp)
.LBB2_3:                                # %for.cond
                                        #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorb	%al, %al
	movl	168(%rsp), %ecx
	cmpl	nthreads(%rip), %ecx
	jge	.LBB2_5
.Ltmp115:
# BB#4:                                 # %land.rhs
                                        #   in Loop: Header=BB2_3 Depth=2
	movb	$1, %al
.LBB2_5:                                # %land.end
                                        #   in Loop: Header=BB2_3 Depth=2
	cmpb	$1, %al
	je	.LBB2_6
# BB#7:                                 # %for.end
                                        #   in Loop: Header=BB2_2 Depth=1
	xorl	%edi, %edi
	.loc	1 403 0                 # Aget.c:403:0
	movq	%rbx, %rsi
	xorl	%edx, %edx
	callq	pthread_sigmask
	.loc	1 409 0                 # Aget.c:409:0
	movl	$hthread, %edi
	xorl	%esi, %esi
	movl	$signal_waiter, %edx
	xorl	%ecx, %ecx
	callq	pthread_create
	movl	%eax, 152(%rsp)
	testl	%eax, %eax
	jne	.LBB2_29
# BB#8:                                 # %if.end49
                                        #   in Loop: Header=BB2_2 Depth=1
	.loc	1 414 0                 # Aget.c:414:0
.Ltmp116:
	movl	$0, 168(%rsp)
	jmp	.LBB2_9
	.align	16, 0x90
.LBB2_17:                               # %for.inc81
                                        #   in Loop: Header=BB2_9 Depth=2
	.loc	1 419 0                 # Aget.c:419:0
.Ltmp117:
	callq	pthread_testcancel
.Ltmp118:
	.loc	1 414 0                 # Aget.c:414:0
	incl	168(%rsp)
.LBB2_9:                                # %for.cond50
                                        #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorb	%al, %al
	movl	168(%rsp), %ecx
	cmpl	nthreads(%rip), %ecx
	jge	.LBB2_11
# BB#10:                                # %land.rhs53
                                        #   in Loop: Header=BB2_9 Depth=2
	movb	$1, %al
.LBB2_11:                               # %land.end60
                                        #   in Loop: Header=BB2_9 Depth=2
	cmpb	$1, %al
	jne	.LBB2_18
# BB#12:                                # %for.body61
                                        #   in Loop: Header=BB2_9 Depth=2
	.loc	1 415 0                 # Aget.c:415:0
.Ltmp119:
	cmpl	$0, 172(%rsp)
	jne	.LBB2_14
# BB#13:                                # %if.then64
                                        #   in Loop: Header=BB2_9 Depth=2
	.loc	1 416 0                 # Aget.c:416:0
	movslq	168(%rsp), %rax
	imulq	$17736, %rax, %rax      # imm = 0x4548
	movq	wthread(%rip), %rcx
	leaq	312(%rcx,%rax), %rdi
	addq	%rax, %rcx
	xorl	%esi, %esi
	movl	$ftp_get, %edx
	jmp	.LBB2_16
	.align	16, 0x90
.LBB2_14:                               # %if.else
                                        #   in Loop: Header=BB2_9 Depth=2
	.loc	1 417 0                 # Aget.c:417:0
	cmpl	$255, 172(%rsp)
	jne	.LBB2_17
# BB#15:                                # %if.then72
                                        #   in Loop: Header=BB2_9 Depth=2
	.loc	1 418 0                 # Aget.c:418:0
	movslq	168(%rsp), %rax
	imulq	$17736, %rax, %rax      # imm = 0x4548
	movq	wthread(%rip), %rcx
	leaq	312(%rcx,%rax), %rdi
	addq	%rax, %rcx
	xorl	%esi, %esi
	movl	$http_get, %edx
.LBB2_16:                               # %if.then72
                                        #   in Loop: Header=BB2_9 Depth=2
	callq	pthread_create
	jmp	.LBB2_17
.Ltmp120:
	.align	16, 0x90
.LBB2_18:                               # %for.end83
                                        #   in Loop: Header=BB2_2 Depth=1
	.loc	1 422 0                 # Aget.c:422:0
	callq	pthread_testcancel
	.loc	1 424 0                 # Aget.c:424:0
.Ltmp121:
	movl	$0, 168(%rsp)
	jmp	.LBB2_19
	.align	16, 0x90
.LBB2_23:                               # %for.inc112
                                        #   in Loop: Header=BB2_19 Depth=2
	.loc	1 433 0                 # Aget.c:433:0
.Ltmp122:
	movslq	168(%rsp), %rax
	imulq	$17736, %rax, %rax      # imm = 0x4548
	movq	wthread(%rip), %rcx
	movq	$-1, 312(%rcx,%rax)
	.loc	1 434 0                 # Aget.c:434:0
	callq	pthread_testcancel
.Ltmp123:
	.loc	1 424 0                 # Aget.c:424:0
	incl	168(%rsp)
.LBB2_19:                               # %for.cond84
                                        #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	168(%rsp), %eax
	cmpl	nthreads(%rip), %eax
	jge	.LBB2_24
# BB#20:                                # %for.body87
                                        #   in Loop: Header=BB2_19 Depth=2
	.loc	1 425 0                 # Aget.c:425:0
.Ltmp124:
	movslq	168(%rsp), %rax
	imulq	$17736, %rax, %rax      # imm = 0x4548
	movq	wthread(%rip), %rcx
	cmpl	$-1, 312(%rcx,%rax)
	je	.LBB2_23
# BB#21:                                # %if.then94
                                        #   in Loop: Header=BB2_19 Depth=2
	.loc	1 426 0                 # Aget.c:426:0
.Ltmp125:
	movslq	168(%rsp), %rax
	imulq	$17736, %rax, %rax      # imm = 0x4548
	movq	wthread(%rip), %rcx
	movq	312(%rcx,%rax), %rdi
	xorl	%esi, %esi
	callq	pthread_join
	.loc	1 427 0                 # Aget.c:427:0
	movslq	168(%rsp), %rax
	imulq	$17736, %rax, %rax      # imm = 0x4548
	movq	wthread(%rip), %rcx
	movzbl	320(%rcx,%rax), %eax
	cmpl	$255, %eax
	jne	.LBB2_23
# BB#22:                                # %if.then105
                                        #   in Loop: Header=BB2_19 Depth=2
	.loc	1 428 0                 # Aget.c:428:0
	incl	156(%rsp)
	jmp	.LBB2_23
.Ltmp126:
	.align	16, 0x90
.LBB2_24:                               # %for.end114
                                        #   in Loop: Header=BB2_2 Depth=1
	.loc	1 437 0                 # Aget.c:437:0
	movl	156(%rsp), %eax
	cmpl	nthreads(%rip), %eax
	jne	.LBB2_2
# BB#25:                                # %if.end121
	leaq	16(%rsp), %rsi
	xorl	%edi, %edi
	xorl	%edx, %edx
	.loc	1 439 0                 # Aget.c:439:0
.Ltmp127:
	callq	pthread_sigmask
	.loc	1 440 0                 # Aget.c:440:0
	movq	hthread(%rip), %rdi
	callq	pthread_cancel
.Ltmp128:
	.loc	1 445 0                 # Aget.c:445:0
	movl	$t_finish, %edi
	callq	time
	.loc	1 446 0                 # Aget.c:446:0
	movl	t_finish(%rip), %eax
	subl	t_start(%rip), %eax
	movl	%eax, 160(%rsp)
	jne	.LBB2_27
# BB#26:                                # %if.then126
	.loc	1 447 0                 # Aget.c:447:0
	movl	$1, 160(%rsp)
.LBB2_27:                               # %if.end127
	.loc	1 448 0                 # Aget.c:448:0
	movq	req(%rip), %rax
	movl	34840(%rax), %eax
	movq	176(%rsp), %rcx
	subl	34860(%rcx), %eax
	movl	160(%rsp), %esi
	cltd
	idivl	%esi
	movl	%eax, %edx
	sarl	$31, %edx
	shrl	$22, %edx
	addl	%eax, %edx
	sarl	$10, %edx
	movl	$.L.str13, %edi
	xorb	%al, %al
	callq	Log
	.loc	1 450 0                 # Aget.c:450:0
	movq	req(%rip), %rax
	movslq	160(%rsp), %rsi
	addq	34848(%rax), %rsi
	movslq	34840(%rax), %rax
	cqto
	idivq	%rsi
	movq	%rax, %rdx
	sarq	$63, %rdx
	shrq	$54, %rdx
	addq	%rax, %rdx
	sarq	$10, %rdx
	movl	$.L.str17, %edi
	xorb	%al, %al
	callq	Log
	.loc	1 452 0                 # Aget.c:452:0
	movl	$.L.str14, %edi
	xorb	%al, %al
	callq	Log
	.loc	1 453 0                 # Aget.c:453:0
	movl	164(%rsp), %edi
	callq	close
	.loc	1 454 0                 # Aget.c:454:0
	addq	$184, %rsp
	popq	%rbx
	popq	%r14
	ret
.LBB2_28:                               # %if.then
	movl	$10240, %ebx            # imm = 0x2800
	.loc	1 380 0                 # Aget.c:380:0
.Ltmp129:
	addq	req(%rip), %rbx
	movq	stderr(%rip), %r14
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movq	%r14, %rdi
	movl	$.L.str3, %esi
	movq	%rbx, %rdx
	movq	%rax, %rcx
	xorb	%al, %al
	callq	fprintf
	movl	$1, %edi
	.loc	1 381 0                 # Aget.c:381:0
	callq	exit
.Ltmp130:
.LBB2_29:                               # %if.then45
	.loc	1 410 0                 # Aget.c:410:0
	movq	stderr(%rip), %rbx
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movq	%rbx, %rdi
	movl	$.L.str15, %esi
	movq	%rax, %rdx
	xorb	%al, %al
	callq	fprintf
	movl	$-1, %edi
	.loc	1 411 0                 # Aget.c:411:0
	callq	exit
.Ltmp131:
.Ltmp132:
	.size	resumeDownload, .Ltmp132-resumeDownload
.Lfunc_end2:
	.file	19 "./Resume.h"
	.cfi_endproc

	.globl	http_get
	.align	16, 0x90
	.type	http_get,@function
http_get:                               # @http_get
	.cfi_startproc
.Lfunc_begin3:
	.loc	4 40 0                  # Download.c:40:0
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp136:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp137:
	.cfi_def_cfa_offset 24
	subq	$360, %rsp              # imm = 0x168
.Ltmp138:
	.cfi_def_cfa_offset 384
.Ltmp139:
	.cfi_offset %rbx, -24
.Ltmp140:
	.cfi_offset %rbp, -16
	movq	%rdi, 344(%rsp)
	.loc	4 49 0 prologue_end     # Download.c:49:0
.Ltmp141:
	callq	pthread_self
	movq	%rax, 280(%rsp)
	leaq	152(%rsp), %rbx
	.loc	4 51 0                  # Download.c:51:0
	movq	%rbx, %rdi
	callq	sigfillset
	xorl	%edi, %edi
	.loc	4 52 0                  # Download.c:52:0
	movq	%rbx, %rsi
	xorl	%edx, %edx
	callq	pthread_sigmask
	movl	$1, %edi
	xorl	%esi, %esi
	.loc	4 54 0                  # Download.c:54:0
	callq	pthread_setcanceltype
	.loc	4 56 0                  # Download.c:56:0
	movq	344(%rsp), %rax
	movq	%rax, 336(%rsp)
	.loc	4 57 0                  # Download.c:57:0
	movq	280(%rax), %rax
	movq	%rax, 288(%rsp)
	.loc	4 59 0                  # Download.c:59:0
	movq	336(%rsp), %rax
	cmpq	$0, 272(%rax)
	js	.LBB3_32
# BB#1:                                 # %lor.lhs.false
	movq	336(%rsp), %rax
	movq	272(%rax), %rcx
	cmpq	280(%rax), %rcx
	jge	.LBB3_32
# BB#2:                                 # %if.end
	movl	$8192, %edi             # imm = 0x2000
	movl	$1, %esi
	.loc	4 65 0                  # Download.c:65:0
	callq	calloc
	movq	%rax, 320(%rsp)
	movl	$2, %edi
	movl	$1, %esi
	xorl	%edx, %edx
	.loc	4 66 0                  # Download.c:66:0
	callq	socket
	movl	%eax, 332(%rsp)
	cmpl	$-1, %eax
	je	.LBB3_3
# BB#5:                                 # %if.end14
	.loc	4 71 0                  # Download.c:71:0
	movl	332(%rsp), %edi
	movq	336(%rsp), %rsi
	movq	%rsi, 136(%rsp)
	movq	%rsi, 144(%rsp)
	movl	$16, %edx
	callq	connect
	cmpl	$-1, %eax
	je	.LBB3_6
# BB#7:                                 # %if.end20
	.loc	4 76 0                  # Download.c:76:0
	movl	332(%rsp), %ebp
	movq	336(%rsp), %rbx
	addq	$16, %rbx
	movq	%rbx, %rdi
	callq	strlen
	movl	%ebp, %edi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	xorl	%ecx, %ecx
	callq	send
	cmpq	$-1, %rax
	je	.LBB3_8
# BB#9:                                 # %if.end29
	.loc	4 81 0                  # Download.c:81:0
	movq	320(%rsp), %rsi
	movl	332(%rsp), %edi
	movl	$8191, %edx             # imm = 0x1FFF
	xorl	%ecx, %ecx
	callq	recv
	movl	%eax, 308(%rsp)
	cmpl	$-1, %eax
	je	.LBB3_10
# BB#11:                                # %if.end36
	.loc	4 85 0                  # Download.c:85:0
	movq	320(%rsp), %rax
	movslq	308(%rsp), %rcx
	movb	$0, (%rax,%rcx)
	.loc	4 87 0                  # Download.c:87:0
	movq	320(%rsp), %rdi
	callq	handleHttpRetcode
	.loc	4 88 0                  # Download.c:88:0
	movq	320(%rsp), %rdi
	movl	$.L.str422, %esi
	callq	strstr
	testq	%rax, %rax
	je	.LBB3_33
# BB#12:                                # %if.end42
	.loc	4 92 0                  # Download.c:92:0
	movq	320(%rsp), %rax
	movq	%rax, 312(%rsp)
	.loc	4 93 0                  # Download.c:93:0
	movl	$0, 300(%rsp)
	jmp	.LBB3_13
	.align	16, 0x90
.LBB3_34:                               # %if.end70
                                        #   in Loop: Header=BB3_13 Depth=1
	.loc	4 100 0                 # Download.c:100:0
.Ltmp142:
	incq	312(%rsp)
	.loc	4 101 0                 # Download.c:101:0
	incl	300(%rsp)
.Ltmp143:
.LBB3_13:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	.loc	4 94 0                  # Download.c:94:0
	movq	312(%rsp), %rax
	subq	320(%rsp), %rax
	movslq	308(%rsp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB3_20
# BB#14:                                # %while.body
                                        #   in Loop: Header=BB3_13 Depth=1
	.loc	4 95 0                  # Download.c:95:0
.Ltmp144:
	movq	312(%rsp), %rax
	movsbl	(%rax), %eax
	cmpl	$10, %eax
	jne	.LBB3_34
# BB#15:                                # %land.lhs.true
                                        #   in Loop: Header=BB3_13 Depth=1
	movq	312(%rsp), %rax
	movsbl	-1(%rax), %eax
	cmpl	$13, %eax
	jne	.LBB3_34
# BB#16:                                # %land.lhs.true52
                                        #   in Loop: Header=BB3_13 Depth=1
	movq	312(%rsp), %rax
	movsbl	-2(%rax), %eax
	cmpl	$10, %eax
	jne	.LBB3_34
# BB#17:                                # %land.lhs.true57
                                        #   in Loop: Header=BB3_13 Depth=1
	movq	312(%rsp), %rax
	movsbl	-3(%rax), %eax
	cmpl	$13, %eax
	jne	.LBB3_34
# BB#18:                                # %land.lhs.true62
                                        #   in Loop: Header=BB3_13 Depth=1
	movq	312(%rsp), %rax
	subq	320(%rsp), %rax
	movslq	308(%rsp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB3_34
# BB#19:                                # %if.then69
	.loc	4 96 0                  # Download.c:96:0
.Ltmp145:
	incq	312(%rsp)
	.loc	4 97 0                  # Download.c:97:0
	incl	300(%rsp)
.Ltmp146:
.LBB3_20:                               # %while.end
	.loc	4 104 0                 # Download.c:104:0
	movl	308(%rsp), %eax
	subl	300(%rsp), %eax
	movslq	%eax, %rax
	cmpq	288(%rsp), %rax
	jle	.LBB3_22
# BB#21:                                # %if.then76
	.loc	4 105 0                 # Download.c:105:0
	movslq	300(%rsp), %rax
	movq	288(%rsp), %rdx
	subq	%rax, %rdx
	movq	336(%rsp), %rax
	movq	272(%rax), %rcx
	movl	304(%rax), %edi
	movq	312(%rsp), %rsi
	jmp	.LBB3_23
.LBB3_22:                               # %if.else
	.loc	4 107 0                 # Download.c:107:0
	movq	336(%rsp), %rax
	movq	272(%rax), %rcx
	movl	304(%rax), %edi
	movl	308(%rsp), %eax
	subl	300(%rsp), %eax
	movq	312(%rsp), %rsi
	movslq	%eax, %rdx
.LBB3_23:                               # %if.else
	callq	pwrite
	movl	%eax, 304(%rsp)
	.loc	4 108 0                 # Download.c:108:0
	movq	336(%rsp), %rax
	movslq	304(%rsp), %rcx
	addq	272(%rax), %rcx
	movq	%rcx, 288(%rax)
	.loc	4 109 0                 # Download.c:109:0
	movl	$bwritten_mutex, %edi
	callq	pthread_mutex_lock
	.loc	4 110 0                 # Download.c:110:0
	movl	304(%rsp), %eax
	addl	%eax, bwritten(%rip)
	.loc	4 109 0                 # Download.c:109:0
	movl	$bwritten_mutex, %edi
	.loc	4 111 0                 # Download.c:111:0
	callq	pthread_mutex_unlock
	.loc	4 113 0                 # Download.c:113:0
	callq	pthread_testcancel
	leaq	8(%rsp), %rbx
	movl	$1, %ebp
	jmp	.LBB3_24
	.align	16, 0x90
.LBB3_28:                               # %if.else122
                                        #   in Loop: Header=BB3_24 Depth=1
	.loc	4 139 0                 # Download.c:139:0
.Ltmp147:
	movq	320(%rsp), %rsi
	callq	pwrite
	movl	%eax, 304(%rsp)
	.loc	4 140 0                 # Download.c:140:0
	movq	336(%rsp), %rax
	movslq	304(%rsp), %rcx
	addq	%rcx, 288(%rax)
.Ltmp148:
	.loc	4 109 0                 # Download.c:109:0
	movl	$bwritten_mutex, %edi
	.loc	4 142 0                 # Download.c:142:0
.Ltmp149:
	callq	pthread_mutex_lock
	.loc	4 143 0                 # Download.c:143:0
	movl	304(%rsp), %eax
	addl	%eax, bwritten(%rip)
.Ltmp150:
	.loc	4 109 0                 # Download.c:109:0
	movl	$bwritten_mutex, %edi
	.loc	4 144 0                 # Download.c:144:0
.Ltmp151:
	callq	pthread_mutex_unlock
	.loc	4 145 0                 # Download.c:145:0
	callq	pthread_testcancel
.Ltmp152:
.LBB3_24:                               # %while.cond94
                                        # =>This Inner Loop Header: Depth=1
	.loc	4 115 0                 # Download.c:115:0
	movq	336(%rsp), %rax
	movq	288(%rax), %rax
	cmpq	288(%rsp), %rax
	jge	.LBB3_29
# BB#25:                                # %do.end
                                        #   in Loop: Header=BB3_24 Depth=1
	movl	$1, %edi
	xorl	%esi, %esi
	.loc	4 120 0                 # Download.c:120:0
.Ltmp153:
	callq	pthread_setcanceltype
	xorl	%eax, %eax
	movl	$16, %ecx
	.loc	4 125 0                 # Download.c:125:0
.Ltmp154:
	movq	%rbx, %rdi
	#APP
	cld; rep; stosq
	#NO_APP
	movl	%ecx, 4(%rsp)
	movl	%edi, (%rsp)
.Ltmp155:
	.loc	4 126 0                 # Download.c:126:0
	movl	332(%rsp), %ecx
	movl	%ecx, %eax
	sarl	$31, %eax
	shrl	$26, %eax
	addl	%ecx, %eax
	movl	%eax, %edx
	andl	$192, %edx
	subl	%edx, %ecx
	shlxq	%rcx, %rbp, %rcx
	sarl	$6, %eax
	movslq	%eax, %rax
	orq	%rcx, 8(%rsp,%rax,8)
	movl	$1024, %edi             # imm = 0x400
	.loc	4 127 0                 # Download.c:127:0
	movq	%rbx, %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	select
	.loc	4 130 0                 # Download.c:130:0
	movq	320(%rsp), %rdi
	xorl	%esi, %esi
	movl	$8192, %edx             # imm = 0x2000
	callq	memset
	.loc	4 131 0                 # Download.c:131:0
	movq	320(%rsp), %rsi
	movl	332(%rsp), %edi
	movl	$8192, %edx             # imm = 0x2000
	xorl	%ecx, %ecx
	callq	recv
	movl	%eax, 308(%rsp)
	xorl	%edi, %edi
	xorl	%esi, %esi
	.loc	4 134 0                 # Download.c:134:0
	callq	pthread_setcanceltype
	.loc	4 136 0                 # Download.c:136:0
	movq	336(%rsp), %rax
	movslq	308(%rsp), %rcx
	addq	288(%rax), %rcx
	cmpq	288(%rsp), %rcx
	jle	.LBB3_27
# BB#26:                                # %if.then115
                                        #   in Loop: Header=BB3_24 Depth=1
	.loc	4 137 0                 # Download.c:137:0
	movq	336(%rsp), %rax
	movq	288(%rax), %rcx
	movq	288(%rsp), %rdx
	subq	%rcx, %rdx
	movl	304(%rax), %edi
	jmp	.LBB3_28
	.align	16, 0x90
.LBB3_27:                               # %if.else122
                                        #   in Loop: Header=BB3_24 Depth=1
	.loc	4 139 0                 # Download.c:139:0
	movq	336(%rsp), %rax
	movq	288(%rax), %rcx
	movl	304(%rax), %edi
	movslq	308(%rsp), %rdx
	jmp	.LBB3_28
.Ltmp156:
.LBB3_32:                               # %if.then
	.loc	4 60 0                  # Download.c:60:0
	movq	336(%rsp), %rax
	movb	$-1, 320(%rax)
	movl	$1, %edi
	.loc	4 61 0                  # Download.c:61:0
	callq	pthread_exit
.Ltmp157:
.LBB3_3:                                # %if.then11
	.loc	4 67 0                  # Download.c:67:0
	movq	280(%rsp), %rbx
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str18, %edi
	jmp	.LBB3_4
.Ltmp158:
.LBB3_6:                                # %if.then17
	.loc	4 72 0                  # Download.c:72:0
	movq	280(%rsp), %rbx
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str119, %edi
	jmp	.LBB3_4
.Ltmp159:
.LBB3_8:                                # %if.then26
	.loc	4 77 0                  # Download.c:77:0
	movq	280(%rsp), %rbx
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str220, %edi
	jmp	.LBB3_4
.Ltmp160:
.LBB3_10:                               # %if.then33
	.loc	4 82 0                  # Download.c:82:0
	movq	280(%rsp), %rbx
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str321, %edi
.Ltmp161:
.LBB3_4:                                # %if.then11
	.loc	4 67 0                  # Download.c:67:0
	movq	%rbx, %rsi
	movq	%rax, %rdx
	xorb	%al, %al
	callq	Log
	movl	$1, %edi
	.loc	4 68 0                  # Download.c:68:0
	callq	pthread_exit
.Ltmp162:
.LBB3_33:                               # %if.then40
	.loc	4 89 0                  # Download.c:89:0
	movq	stderr(%rip), %rdi
	movl	$.L.str523, %esi
	xorb	%al, %al
	callq	fprintf
	movl	$1, %edi
	.loc	4 90 0                  # Download.c:90:0
	callq	exit
.Ltmp163:
.LBB3_29:                               # %while.end135
	.loc	4 148 0                 # Download.c:148:0
	movq	336(%rsp), %rax
	movq	288(%rax), %rcx
	cmpq	280(%rax), %rcx
	jne	.LBB3_31
# BB#30:                                # %if.then140
	.loc	4 149 0                 # Download.c:149:0
	movq	336(%rsp), %rax
	movb	$-1, 320(%rax)
.LBB3_31:                               # %if.end142
	.loc	4 150 0                 # Download.c:150:0
	movl	332(%rsp), %edi
	callq	close
	xorl	%edi, %edi
	.loc	4 151 0                 # Download.c:151:0
	callq	pthread_exit
.Ltmp164:
.Ltmp165:
	.size	http_get, .Ltmp165-http_get
.Lfunc_end3:
	.cfi_endproc

	.globl	ftp_get
	.align	16, 0x90
	.type	ftp_get,@function
ftp_get:                                # @ftp_get
	.cfi_startproc
.Lfunc_begin4:
	.loc	8 46 0                  # Ftp.c:46:0
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp169:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp170:
	.cfi_def_cfa_offset 24
	subq	$248, %rsp
.Ltmp171:
	.cfi_def_cfa_offset 272
.Ltmp172:
	.cfi_offset %rbx, -24
.Ltmp173:
	.cfi_offset %rbp, -16
	movq	%rdi, 232(%rsp)
	.loc	8 56 0 prologue_end     # Ftp.c:56:0
.Ltmp174:
	callq	pthread_self
	movq	%rax, 32(%rsp)
	leaq	40(%rsp), %rbx
	.loc	8 58 0                  # Ftp.c:58:0
	movq	%rbx, %rdi
	callq	sigfillset
	xorl	%edi, %edi
	.loc	8 59 0                  # Ftp.c:59:0
	movq	%rbx, %rsi
	xorl	%edx, %edx
	callq	pthread_sigmask
	movl	$1, %edi
	xorl	%esi, %esi
	.loc	8 61 0                  # Ftp.c:61:0
	callq	pthread_setcanceltype
	.loc	8 63 0                  # Ftp.c:63:0
	movq	232(%rsp), %rax
	movq	%rax, 208(%rsp)
	.loc	8 64 0                  # Ftp.c:64:0
	movq	280(%rax), %rax
	movq	%rax, 168(%rsp)
	.loc	8 66 0                  # Ftp.c:66:0
	movq	208(%rsp), %rax
	cmpq	$0, 272(%rax)
	js	.LBB4_39
# BB#1:                                 # %lor.lhs.false
	movq	208(%rsp), %rax
	movq	272(%rax), %rcx
	cmpq	280(%rax), %rcx
	jge	.LBB4_39
# BB#2:                                 # %if.end
	movl	$8192, %edi             # imm = 0x2000
	movl	$1, %esi
	.loc	8 72 0                  # Ftp.c:72:0
	callq	calloc
	movq	%rax, 184(%rsp)
	movl	$8192, %edi             # imm = 0x2000
	movl	$1, %esi
	.loc	8 73 0                  # Ftp.c:73:0
	callq	calloc
	movq	%rax, 192(%rsp)
	.loc	8 75 0                  # Ftp.c:75:0
	movq	208(%rsp), %rax
	cmpl	$-1, 17732(%rax)
	jne	.LBB4_20
# BB#3:                                 # %if.then11
	movl	$2, %edi
	movl	$1, %esi
	xorl	%edx, %edx
	.loc	8 76 0                  # Ftp.c:76:0
.Ltmp175:
	callq	socket
	movl	%eax, 204(%rsp)
	cmpl	$-1, %eax
	je	.LBB4_4
# BB#6:                                 # %if.end17
	.loc	8 81 0                  # Ftp.c:81:0
	movl	204(%rsp), %edi
	movq	208(%rsp), %rsi
	movq	%rsi, 16(%rsp)
	movq	%rsi, 24(%rsp)
	movl	$16, %edx
	callq	connect
	cmpl	$-1, %eax
	je	.LBB4_7
# BB#8:                                 # %if.end23
	.loc	8 87 0                  # Ftp.c:87:0
	movq	184(%rsp), %rsi
	movl	204(%rsp), %edi
	movl	$8192, %edx             # imm = 0x2000
	xorl	%ecx, %ecx
	callq	recv_reply
	cmpl	$-1, %eax
	je	.LBB4_40
# BB#9:                                 # %if.else
	.loc	8 92 0                  # Ftp.c:92:0
	movq	184(%rsp), %rax
	movsbl	(%rax), %eax
	cmpl	$50, %eax
	je	.LBB4_12
# BB#10:                                # %land.lhs.true
	movq	184(%rsp), %rax
	movsbl	(%rax), %eax
	cmpl	$49, %eax
	je	.LBB4_12
# BB#11:                                # %land.lhs.true36
	movq	184(%rsp), %rax
	movsbl	(%rax), %eax
	cmpl	$51, %eax
	jne	.LBB4_41
.LBB4_12:                               # %if.end44
	.loc	8 98 0                  # Ftp.c:98:0
	movq	184(%rsp), %rax
	movsbl	(%rax), %eax
	cmpl	$49, %eax
	je	.LBB4_15
# BB#13:                                # %land.lhs.true49
	movq	184(%rsp), %rax
	movsbl	(%rax), %eax
	cmpl	$50, %eax
	je	.LBB4_15
# BB#14:                                # %land.lhs.true54
	movq	184(%rsp), %rax
	movsbl	(%rax), %eax
	cmpl	$51, %eax
	jne	.LBB4_42
.LBB4_15:                               # %if.end62
	movl	$321, %ecx              # imm = 0x141
	.loc	8 105 0                 # Ftp.c:105:0
	addq	208(%rsp), %rcx
	movq	192(%rsp), %rdi
	movl	$8191, %esi             # imm = 0x1FFF
	movl	$.L.str531, %edx
	xorb	%al, %al
	callq	snprintf
	.loc	8 106 0                 # Ftp.c:106:0
	movq	184(%rsp), %rdi
	xorl	%esi, %esi
	movl	$8192, %edx             # imm = 0x2000
	callq	memset
	.loc	8 107 0                 # Ftp.c:107:0
	movl	204(%rsp), %ebp
	movq	192(%rsp), %rbx
	movq	%rbx, %rdi
	callq	strlen
	movl	%ebp, %edi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	xorl	%ecx, %ecx
	callq	send
	.loc	8 108 0                 # Ftp.c:108:0
	movq	184(%rsp), %rsi
	movl	204(%rsp), %edi
	movl	$8192, %edx             # imm = 0x2000
	xorl	%ecx, %ecx
	callq	recv_reply
	.loc	8 109 0                 # Ftp.c:109:0
	movq	184(%rsp), %rdi
	movl	$.L.str632, %esi
	movl	$3, %edx
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB4_16
# BB#18:                                # %if.end73
	movl	$8513, %ecx             # imm = 0x2141
	.loc	8 115 0                 # Ftp.c:115:0
	addq	208(%rsp), %rcx
	movq	192(%rsp), %rdi
	movl	$8191, %esi             # imm = 0x1FFF
	movl	$.L.str935, %edx
	xorb	%al, %al
	callq	snprintf
	.loc	8 116 0                 # Ftp.c:116:0
	movq	184(%rsp), %rdi
	xorl	%esi, %esi
	movl	$8192, %edx             # imm = 0x2000
	callq	memset
	.loc	8 117 0                 # Ftp.c:117:0
	movl	204(%rsp), %ebx
	movq	192(%rsp), %rbp
	movq	%rbp, %rdi
	callq	strlen
	movl	%ebx, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	xorl	%ecx, %ecx
	callq	send
	.loc	8 118 0                 # Ftp.c:118:0
	movq	184(%rsp), %rsi
	movl	204(%rsp), %edi
	movl	$8192, %edx             # imm = 0x2000
	xorl	%ecx, %ecx
	callq	recv_reply
	.loc	8 119 0                 # Ftp.c:119:0
	movq	184(%rsp), %rdi
	movl	$.L.str1036, %esi
	movl	$3, %edx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB4_21
# BB#19:                                # %if.then82
	.loc	8 120 0                 # Ftp.c:120:0
.Ltmp176:
	movq	stderr(%rip), %rdi
	movl	$.L.str1137, %esi
	jmp	.LBB4_17
.Ltmp177:
.LBB4_20:                               # %if.else86
	.loc	8 125 0                 # Ftp.c:125:0
	movq	208(%rsp), %rax
	movl	17732(%rax), %edi
	movl	%edi, 204(%rsp)
	.loc	8 126 0                 # Ftp.c:126:0
	movq	184(%rsp), %rsi
	movl	$8192, %edx             # imm = 0x2000
	xorl	%ecx, %ecx
	callq	recv_reply
.Ltmp178:
.LBB4_21:                               # %if.end89
	.loc	8 129 0                 # Ftp.c:129:0
	movq	208(%rsp), %rax
	movq	272(%rax), %rcx
	movq	192(%rsp), %rdi
	movl	$8191, %esi             # imm = 0x1FFF
	movl	$.L.str1238, %edx
	xorb	%al, %al
	callq	snprintf
	.loc	8 130 0                 # Ftp.c:130:0
	movq	184(%rsp), %rdi
	xorl	%esi, %esi
	movl	$8192, %edx             # imm = 0x2000
	callq	memset
	.loc	8 131 0                 # Ftp.c:131:0
	movl	204(%rsp), %ebx
	movq	192(%rsp), %rbp
	movq	%rbp, %rdi
	callq	strlen
	movl	%ebx, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	xorl	%ecx, %ecx
	callq	send
	.loc	8 132 0                 # Ftp.c:132:0
	movq	184(%rsp), %rsi
	movl	204(%rsp), %edi
	movl	$8192, %edx             # imm = 0x2000
	xorl	%ecx, %ecx
	callq	recv_reply
	.loc	8 133 0                 # Ftp.c:133:0
	movq	184(%rsp), %rdi
	movl	$.L.str1339, %esi
	movl	$3, %edx
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB4_22
# BB#23:                                # %if.end101
	.loc	8 139 0                 # Ftp.c:139:0
	movq	192(%rsp), %rdi
	movl	$.L.str1541, %esi
	xorb	%al, %al
	callq	sprintf
	.loc	8 140 0                 # Ftp.c:140:0
	movq	184(%rsp), %rdi
	xorl	%esi, %esi
	movl	$8192, %edx             # imm = 0x2000
	callq	memset
	.loc	8 141 0                 # Ftp.c:141:0
	movl	204(%rsp), %ebx
	movq	192(%rsp), %rbp
	movq	%rbp, %rdi
	callq	strlen
	movl	%ebx, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	xorl	%ecx, %ecx
	callq	send
	.loc	8 142 0                 # Ftp.c:142:0
	movq	184(%rsp), %rsi
	movl	204(%rsp), %edi
	movl	$8192, %edx             # imm = 0x2000
	xorl	%ecx, %ecx
	callq	recv_reply
	.loc	8 143 0                 # Ftp.c:143:0
	movq	184(%rsp), %rdi
	movl	$.L.str1642, %esi
	movl	$3, %edx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB4_25
# BB#24:                                # %if.then109
	.loc	8 144 0                 # Ftp.c:144:0
.Ltmp179:
	movq	stderr(%rip), %rdi
	movl	$.L.str1743, %esi
	xorb	%al, %al
	callq	fprintf
	.loc	8 145 0                 # Ftp.c:145:0
	movq	184(%rsp), %rdx
	movq	stderr(%rip), %rdi
	movl	$.L.str834, %esi
	xorb	%al, %al
	callq	fprintf
.Ltmp180:
.LBB4_25:                               # %if.end112
	.loc	8 148 0                 # Ftp.c:148:0
	movq	192(%rsp), %rdi
	movl	$.L.str1844, %esi
	xorb	%al, %al
	callq	sprintf
	.loc	8 149 0                 # Ftp.c:149:0
	movq	184(%rsp), %rdi
	xorl	%esi, %esi
	movl	$8192, %edx             # imm = 0x2000
	callq	memset
	.loc	8 150 0                 # Ftp.c:150:0
	movl	204(%rsp), %ebx
	movq	192(%rsp), %rbp
	movq	%rbp, %rdi
	callq	strlen
	movl	%ebx, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	xorl	%ecx, %ecx
	callq	send
	.loc	8 151 0                 # Ftp.c:151:0
	movq	184(%rsp), %rsi
	movl	204(%rsp), %edi
	movl	$8192, %edx             # imm = 0x2000
	xorl	%ecx, %ecx
	callq	recv_reply
	leaq	216(%rsp), %rbx
	.loc	8 152 0                 # Ftp.c:152:0
	movq	184(%rsp), %rdi
	movl	$8192, %esi             # imm = 0x2000
	movq	%rbx, %rdx
	callq	parse_pasv_reply2
	movl	$2, %edi
	movl	$1, %esi
	xorl	%edx, %edx
	.loc	8 155 0                 # Ftp.c:155:0
	callq	socket
	movl	%eax, 200(%rsp)
	cmpl	$-1, %eax
	je	.LBB4_26
# BB#28:                                # %if.end124
	.loc	8 159 0                 # Ftp.c:159:0
	movl	200(%rsp), %edi
	movq	%rbx, (%rsp)
	movq	%rbx, 8(%rsp)
	movq	%rbx, %rsi
	movl	$16, %edx
	callq	connect
	cmpl	$-1, %eax
	je	.LBB4_29
# BB#30:                                # %if.end135
	movl	$16706, %ecx            # imm = 0x4142
	.loc	8 165 0                 # Ftp.c:165:0
	addq	208(%rsp), %rcx
	movq	192(%rsp), %rdi
	movl	$8191, %esi             # imm = 0x1FFF
	movl	$.L.str21, %edx
	xorb	%al, %al
	callq	snprintf
	.loc	8 166 0                 # Ftp.c:166:0
	movq	184(%rsp), %rdi
	xorl	%esi, %esi
	movl	$8192, %edx             # imm = 0x2000
	callq	memset
	.loc	8 167 0                 # Ftp.c:167:0
	movl	204(%rsp), %ebx
	movq	192(%rsp), %rbp
	movq	%rbp, %rdi
	callq	strlen
	movl	%ebx, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	xorl	%ecx, %ecx
	callq	send
	.loc	8 169 0                 # Ftp.c:169:0
	movq	208(%rsp), %rax
	movq	272(%rax), %rcx
	movq	%rcx, 288(%rax)
	jmp	.LBB4_31
	.align	16, 0x90
.LBB4_35:                               # %if.else156
                                        #   in Loop: Header=BB4_31 Depth=1
	.loc	8 187 0                 # Ftp.c:187:0
.Ltmp181:
	movq	184(%rsp), %rsi
	callq	pwrite
	movl	%eax, 176(%rsp)
	.loc	8 188 0                 # Ftp.c:188:0
	movq	208(%rsp), %rax
	movslq	176(%rsp), %rcx
	addq	%rcx, 288(%rax)
	.loc	8 189 0                 # Ftp.c:189:0
	movl	$bwritten_mutex, %edi
	callq	pthread_mutex_lock
	.loc	8 190 0                 # Ftp.c:190:0
	movl	176(%rsp), %eax
	addl	%eax, bwritten(%rip)
	.loc	8 189 0                 # Ftp.c:189:0
	movl	$bwritten_mutex, %edi
	.loc	8 191 0                 # Ftp.c:191:0
	callq	pthread_mutex_unlock
	.loc	8 192 0                 # Ftp.c:192:0
	callq	pthread_testcancel
.Ltmp182:
.LBB4_31:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	.loc	8 171 0                 # Ftp.c:171:0
	movq	208(%rsp), %rax
	movq	288(%rax), %rax
	cmpq	168(%rsp), %rax
	jge	.LBB4_36
# BB#32:                                # %while.body
                                        #   in Loop: Header=BB4_31 Depth=1
	movl	$1, %edi
	xorl	%esi, %esi
	.loc	8 176 0                 # Ftp.c:176:0
.Ltmp183:
	callq	pthread_setcanceltype
	.loc	8 178 0                 # Ftp.c:178:0
	movq	184(%rsp), %rsi
	.loc	8 179 0                 # Ftp.c:179:0
	movl	200(%rsp), %edi
	movl	$8192, %edx             # imm = 0x2000
	callq	recv_data
	movl	%eax, 180(%rsp)
	xorl	%edi, %edi
	xorl	%esi, %esi
	.loc	8 182 0                 # Ftp.c:182:0
	callq	pthread_setcanceltype
	.loc	8 184 0                 # Ftp.c:184:0
	movq	208(%rsp), %rax
	movslq	180(%rsp), %rcx
	addq	288(%rax), %rcx
	cmpq	168(%rsp), %rcx
	jle	.LBB4_34
# BB#33:                                # %if.then151
                                        #   in Loop: Header=BB4_31 Depth=1
	.loc	8 185 0                 # Ftp.c:185:0
	movq	208(%rsp), %rax
	movq	288(%rax), %rcx
	movq	168(%rsp), %rdx
	subq	%rcx, %rdx
	movl	304(%rax), %edi
	jmp	.LBB4_35
	.align	16, 0x90
.LBB4_34:                               # %if.else156
                                        #   in Loop: Header=BB4_31 Depth=1
	.loc	8 187 0                 # Ftp.c:187:0
	movq	208(%rsp), %rax
	movq	288(%rax), %rcx
	movl	304(%rax), %edi
	movslq	180(%rsp), %rdx
	jmp	.LBB4_35
.Ltmp184:
.LBB4_39:                               # %if.then
	.loc	8 67 0                  # Ftp.c:67:0
	movq	208(%rsp), %rax
	movb	$-1, 320(%rax)
	movl	$1, %edi
	.loc	8 68 0                  # Ftp.c:68:0
	callq	pthread_exit
.Ltmp185:
.LBB4_4:                                # %if.then14
	.loc	8 77 0                  # Ftp.c:77:0
	movq	32(%rsp), %rbx
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str26, %edi
	jmp	.LBB4_5
.Ltmp186:
.LBB4_7:                                # %if.then20
	.loc	8 82 0                  # Ftp.c:82:0
	movq	32(%rsp), %rbx
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str127, %edi
.Ltmp187:
.LBB4_5:                                # %if.then14
	.loc	8 77 0                  # Ftp.c:77:0
	movq	%rbx, %rsi
	movq	%rax, %rdx
	xorb	%al, %al
	callq	Log
	movl	$1, %edi
	.loc	8 78 0                  # Ftp.c:78:0
	callq	pthread_exit
.Ltmp188:
.LBB4_40:                               # %if.then26
	.loc	8 88 0                  # Ftp.c:88:0
	movq	184(%rsp), %rdx
	movq	stderr(%rip), %rdi
	movl	$.L.str228, %esi
	xorb	%al, %al
	callq	fprintf
	.loc	8 89 0                  # Ftp.c:89:0
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str329, %edi
	movq	%rax, %rsi
	xorb	%al, %al
	callq	Log
	movl	$1, %edi
	.loc	8 90 0                  # Ftp.c:90:0
	callq	pthread_exit
.Ltmp189:
.LBB4_41:                               # %if.then41
	.loc	8 93 0                  # Ftp.c:93:0
	movq	184(%rsp), %rdx
	movq	stderr(%rip), %rdi
	movl	$.L.str228, %esi
	xorb	%al, %al
	callq	fprintf
	.loc	8 94 0                  # Ftp.c:94:0
	movl	$.L.str430, %edi
	xorb	%al, %al
	callq	Log
	movl	$1, %edi
	.loc	8 95 0                  # Ftp.c:95:0
	callq	pthread_exit
.Ltmp190:
.LBB4_42:                               # %if.then59
	.loc	8 99 0                  # Ftp.c:99:0
	movq	184(%rsp), %rsi
	movq	stderr(%rip), %rdi
	xorb	%al, %al
	callq	fprintf
	.loc	8 100 0                 # Ftp.c:100:0
	movq	184(%rsp), %rdi
	callq	handleFTPRetcode
	.loc	8 101 0                 # Ftp.c:101:0
	movl	204(%rsp), %edi
	callq	close
	movl	$1, %edi
	.loc	8 102 0                 # Ftp.c:102:0
	callq	pthread_exit
.Ltmp191:
.LBB4_16:                               # %if.then70
	.loc	8 110 0                 # Ftp.c:110:0
	movq	stderr(%rip), %rdi
	movl	$.L.str733, %esi
	jmp	.LBB4_17
.Ltmp192:
.LBB4_22:                               # %if.then98
	.loc	8 134 0                 # Ftp.c:134:0
	movq	stderr(%rip), %rdi
	movl	$.L.str1440, %esi
.Ltmp193:
.LBB4_17:                               # %if.then70
	xorb	%al, %al
	.loc	8 110 0                 # Ftp.c:110:0
.Ltmp194:
	callq	fprintf
	.loc	8 111 0                 # Ftp.c:111:0
	movq	184(%rsp), %rdx
	movq	stderr(%rip), %rdi
	movl	$.L.str834, %esi
	xorb	%al, %al
	callq	fprintf
	movl	$1, %edi
	.loc	8 112 0                 # Ftp.c:112:0
	callq	exit
.Ltmp195:
.LBB4_26:                               # %if.then121
	.loc	8 156 0                 # Ftp.c:156:0
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str19, %edi
	jmp	.LBB4_27
.Ltmp196:
.LBB4_29:                               # %if.then132
	.loc	8 160 0                 # Ftp.c:160:0
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str20, %edi
.Ltmp197:
.LBB4_27:                               # %if.then121
	.loc	8 156 0                 # Ftp.c:156:0
	movq	%rax, %rsi
	xorb	%al, %al
	callq	Log
	movl	$1, %edi
	.loc	8 157 0                 # Ftp.c:157:0
	callq	exit
.Ltmp198:
.LBB4_36:                               # %while.end
	.loc	8 195 0                 # Ftp.c:195:0
	movq	208(%rsp), %rax
	movq	288(%rax), %rcx
	cmpq	280(%rax), %rcx
	jne	.LBB4_38
# BB#37:                                # %if.then173
	.loc	8 196 0                 # Ftp.c:196:0
	movq	208(%rsp), %rax
	movb	$-1, 320(%rax)
.LBB4_38:                               # %if.end175
	.loc	8 197 0                 # Ftp.c:197:0
	movl	204(%rsp), %edi
	callq	close
	.loc	8 198 0                 # Ftp.c:198:0
	movl	200(%rsp), %edi
	callq	close
	xorl	%edi, %edi
	.loc	8 200 0                 # Ftp.c:200:0
	callq	pthread_exit
.Ltmp199:
.Ltmp200:
	.size	ftp_get, .Ltmp200-ftp_get
.Lfunc_end4:
	.cfi_endproc

	.globl	http_head_req
	.align	16, 0x90
	.type	http_head_req,@function
http_head_req:                          # @http_head_req
	.cfi_startproc
.Lfunc_begin5:
	.loc	9 50 0                  # Head.c:50:0
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp204:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp205:
	.cfi_def_cfa_offset 24
	subq	$9336, %rsp             # imm = 0x2478
.Ltmp206:
	.cfi_def_cfa_offset 9360
.Ltmp207:
	.cfi_offset %rbx, -24
.Ltmp208:
	.cfi_offset %rbp, -16
	movq	%rdi, 9328(%rsp)
	.loc	9 60 0 prologue_end     # Head.c:60:0
.Ltmp209:
	movl	$80, 8220(%rsp)
	.loc	9 61 0                  # Head.c:61:0
	movl	$0, 8216(%rsp)
	.loc	9 63 0                  # Head.c:63:0
	movl	$http_proxyhost, %edi
	callq	strlen
	testq	%rax, %rax
	je	.LBB5_3
# BB#1:                                 # %if.then
	leaq	8224(%rsp), %rdi
	.loc	9 64 0                  # Head.c:64:0
.Ltmp210:
	movl	$http_proxyhost, %esi
	movl	$1023, %edx             # imm = 0x3FF
	callq	strncpy
	movl	$80, %eax
	.loc	9 65 0                  # Head.c:65:0
	cmpl	$0, http_proxyport(%rip)
	jle	.LBB5_4
# BB#2:                                 # %cond.false
	movl	http_proxyport(%rip), %eax
	jmp	.LBB5_4
.Ltmp211:
.LBB5_3:                                # %if.else
	.loc	9 67 0                  # Head.c:67:0
	movq	9328(%rsp), %rsi
	leaq	8224(%rsp), %rdi
	movl	$1023, %edx             # imm = 0x3FF
	callq	strncpy
	.loc	9 68 0                  # Head.c:68:0
	movq	9328(%rsp), %rax
	movl	34832(%rax), %eax
.LBB5_4:                                # %if.else
	movl	%eax, 8220(%rsp)
.Ltmp212:
	.loc	9 71 0                  # Head.c:71:0
	movq	9328(%rsp), %rdi
	addq	$1024, %rdi             # imm = 0x400
	callq	strlen
	leaq	512(%rax), %rdi
	movl	$1, %esi
	callq	calloc
	movq	%rax, 9288(%rsp)
	movl	$512, %edi              # imm = 0x200
	movl	$1, %esi
	.loc	9 72 0                  # Head.c:72:0
	callq	calloc
	leaq	8224(%rsp), %rdi
	movq	%rax, 9280(%rsp)
	.loc	9 74 0                  # Head.c:74:0
	callq	gethostbyname
	movq	%rax, 9304(%rsp)
	testq	%rax, %rax
	je	.LBB5_22
# BB#5:                                 # %if.end18
	movl	$18432, %ebx            # imm = 0x4800
	.loc	9 80 0                  # Head.c:80:0
	addq	9328(%rsp), %rbx
	movq	9304(%rsp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movl	(%rax), %edi
	callq	inet_ntoa
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movl	$15, %edx
	callq	strncpy
	vxorps	%xmm0, %xmm0, %xmm0
	.loc	9 81 0                  # Head.c:81:0
	vmovaps	%xmm0, 9312(%rsp)
	.loc	9 82 0                  # Head.c:82:0
	movw	$2, 9312(%rsp)
	.loc	9 83 0                  # Head.c:83:0
	movq	9328(%rsp), %rdi
	addq	$18432, %rdi            # imm = 0x4800
	callq	inet_addr
	movl	%eax, 9316(%rsp)
	.loc	9 84 0                  # Head.c:84:0
	movzwl	8220(%rsp), %edi
	callq	htons
	movw	%ax, 9314(%rsp)
	movl	$2, %edi
	movl	$1, %esi
	xorl	%edx, %edx
	.loc	9 85 0                  # Head.c:85:0
	callq	socket
	movl	%eax, 9300(%rsp)
	cmpl	$-1, %eax
	je	.LBB5_6
# BB#8:                                 # %if.end32
	.loc	9 89 0                  # Head.c:89:0
	movl	9300(%rsp), %edi
	leaq	9312(%rsp), %rsi
	movq	%rsi, 8200(%rsp)
	movq	%rsi, 8208(%rsp)
	movl	$16, %edx
	callq	connect
	cmpl	$-1, %eax
	je	.LBB5_9
# BB#10:                                # %if.end40
	.loc	9 93 0                  # Head.c:93:0
	movl	$.L.str350, %edi
	xorb	%al, %al
	callq	Log
	.loc	9 95 0                  # Head.c:95:0
	movl	$http_proxyhost, %edi
	callq	strlen
	testq	%rax, %rax
	je	.LBB5_12
# BB#11:                                # %if.then44
	.loc	9 97 0                  # Head.c:97:0
.Ltmp213:
	movq	9328(%rsp), %rcx
	movl	34832(%rcx), %r8d
	leaq	(%rsp), %rbx
	movq	%rbx, %rdi
	movl	$8191, %esi             # imm = 0x1FFF
	movl	$.L.str451, %edx
	leaq	1024(%rcx), %r9
	xorb	%al, %al
	callq	snprintf
	.loc	9 98 0                  # Head.c:98:0
	movq	9328(%rsp), %r8
	movq	9288(%rsp), %rdi
	movl	$511, %esi              # imm = 0x1FF
	movl	$.L.str552, %edx
	movq	%rbx, %rcx
	jmp	.LBB5_13
.Ltmp214:
.LBB5_12:                               # %if.else56
	.loc	9 100 0                 # Head.c:100:0
	movq	9328(%rsp), %r8
	leaq	1024(%r8), %rcx
	movq	9288(%rsp), %rdi
	movl	$511, %esi              # imm = 0x1FF
	movl	$.L.str552, %edx
.LBB5_13:                               # %if.else56
	movl	$.L.str653, %r9d
	xorb	%al, %al
	callq	snprintf
.Ltmp215:
	.loc	9 103 0                 # Head.c:103:0
	movl	9300(%rsp), %ebp
	movq	9288(%rsp), %rbx
	movq	%rbx, %rdi
	callq	strlen
	movl	%ebp, %edi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	xorl	%ecx, %ecx
	callq	send
	cmpq	$-1, %rax
	je	.LBB5_14
# BB#15:                                # %if.end70
	.loc	9 107 0                 # Head.c:107:0
	movq	9280(%rsp), %rsi
	movl	9300(%rsp), %edi
	movl	$512, %edx              # imm = 0x200
	xorl	%ecx, %ecx
	callq	recv
	movl	%eax, 8216(%rsp)
	cmpl	$-1, %eax
	je	.LBB5_16
# BB#17:                                # %if.end78
	.loc	9 111 0                 # Head.c:111:0
	movq	9280(%rsp), %rax
	movslq	8216(%rsp), %rcx
	movb	$0, (%rax,%rcx)
	.loc	9 112 0                 # Head.c:112:0
	movq	9280(%rsp), %rdi
	callq	handleHttpRetcode
	.loc	9 113 0                 # Head.c:113:0
	movq	9280(%rsp), %rdi
	movl	$.L.str956, %esi
	callq	strtok
	movq	%rax, 9272(%rsp)
	.loc	9 114 0                 # Head.c:114:0
	movq	%rax, %rdi
	movl	$.L.str1057, %esi
	callq	strstr
	testq	%rax, %rax
	je	.LBB5_21
	jmp	.LBB5_18
	.align	16, 0x90
.LBB5_20:                               # %if.then91
                                        #   in Loop: Header=BB5_18 Depth=1
	.loc	9 117 0                 # Head.c:117:0
.Ltmp216:
	movq	9272(%rsp), %rdi
	addq	$16, %rdi
	movq	%rdi, 9264(%rsp)
	.loc	9 118 0                 # Head.c:118:0
	callq	atoi
	movl	%eax, 9260(%rsp)
	.loc	9 119 0                 # Head.c:119:0
	movq	9328(%rsp), %rcx
	movl	%eax, 34840(%rcx)
.Ltmp217:
.LBB5_18:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edi, %edi
	.loc	9 115 0                 # Head.c:115:0
	movl	$.L.str956, %esi
	callq	strtok
	movq	%rax, 9272(%rsp)
	testq	%rax, %rax
	je	.LBB5_21
# BB#19:                                # %while.body
                                        #   in Loop: Header=BB5_18 Depth=1
	.loc	9 116 0                 # Head.c:116:0
.Ltmp218:
	movq	9272(%rsp), %rdi
	movl	$.L.str1158, %esi
	callq	strstr
	testq	%rax, %rax
	je	.LBB5_18
	jmp	.LBB5_20
.Ltmp219:
.LBB5_21:                               # %if.end95
	.loc	9 123 0                 # Head.c:123:0
	movq	9288(%rsp), %rdi
	callq	free
	.loc	9 124 0                 # Head.c:124:0
	movq	9280(%rsp), %rdi
	callq	free
	.loc	9 125 0                 # Head.c:125:0
	addq	$9336, %rsp             # imm = 0x2478
	popq	%rbx
	popq	%rbp
	ret
.LBB5_22:                               # %if.then13
	.loc	9 75 0                  # Head.c:75:0
.Ltmp220:
	movq	9328(%rsp), %rbx
	.loc	9 77 0                  # Head.c:77:0
	callq	__h_errno_location
	movl	(%rax), %edi
	callq	hstrerror
	movl	$.L.str47, %edi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	xorb	%al, %al
	callq	Log
	movl	$1, %edi
	.loc	9 78 0                  # Head.c:78:0
	callq	exit
.Ltmp221:
.LBB5_6:                                # %if.then29
	.loc	9 86 0                  # Head.c:86:0
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str148, %edi
	jmp	.LBB5_7
.Ltmp222:
.LBB5_9:                                # %if.then37
	.loc	9 90 0                  # Head.c:90:0
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str249, %edi
	jmp	.LBB5_7
.Ltmp223:
.LBB5_14:                               # %if.then67
	.loc	9 104 0                 # Head.c:104:0
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str754, %edi
	jmp	.LBB5_7
.Ltmp224:
.LBB5_16:                               # %if.then75
	.loc	9 108 0                 # Head.c:108:0
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str855, %edi
.Ltmp225:
.LBB5_7:                                # %if.then29
	.loc	9 86 0                  # Head.c:86:0
	movq	%rax, %rsi
	xorb	%al, %al
	callq	Log
	movl	$1, %edi
	.loc	9 87 0                  # Head.c:87:0
	callq	exit
.Ltmp226:
.Ltmp227:
	.size	http_head_req, .Ltmp227-http_head_req
.Lfunc_end5:
	.cfi_endproc

	.globl	ftp_head_req
	.align	16, 0x90
	.type	ftp_head_req,@function
ftp_head_req:                           # @ftp_head_req
	.cfi_startproc
.Lfunc_begin6:
	.loc	9 128 0                 # Head.c:128:0
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp232:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp233:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp234:
	.cfi_def_cfa_offset 32
	subq	$112, %rsp
.Ltmp235:
	.cfi_def_cfa_offset 144
.Ltmp236:
	.cfi_offset %rbx, -32
.Ltmp237:
	.cfi_offset %r14, -24
.Ltmp238:
	.cfi_offset %rbp, -16
	movq	%rdi, 104(%rsp)
	movq	%rsi, 96(%rsp)
	.loc	9 137 0 prologue_end    # Head.c:137:0
.Ltmp239:
	movq	104(%rsp), %rdi
	addq	$1024, %rdi             # imm = 0x400
	callq	strlen
	leaq	8192(%rax), %rdi
	movl	$1, %esi
	callq	calloc
	movq	%rax, 40(%rsp)
	movl	$8200, %edi             # imm = 0x2008
	movl	$1, %esi
	.loc	9 138 0                 # Head.c:138:0
	callq	calloc
	movq	%rax, 32(%rsp)
	.loc	9 140 0                 # Head.c:140:0
	movl	$0, 28(%rsp)
	.loc	9 142 0                 # Head.c:142:0
	movq	104(%rsp), %rdi
	callq	gethostbyname
	movq	%rax, 56(%rsp)
	testq	%rax, %rax
	je	.LBB6_32
# BB#1:                                 # %if.end
	movl	$18432, %ebx            # imm = 0x4800
	.loc	9 148 0                 # Head.c:148:0
	addq	104(%rsp), %rbx
	movq	56(%rsp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movl	(%rax), %edi
	callq	inet_ntoa
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movl	$15, %edx
	callq	strncpy
	vxorps	%xmm0, %xmm0, %xmm0
	.loc	9 149 0                 # Head.c:149:0
	vmovaps	%xmm0, 80(%rsp)
	.loc	9 150 0                 # Head.c:150:0
	movw	$2, 80(%rsp)
	.loc	9 151 0                 # Head.c:151:0
	movq	104(%rsp), %rdi
	addq	$18432, %rdi            # imm = 0x4800
	callq	inet_addr
	movl	%eax, 84(%rsp)
	.loc	9 152 0                 # Head.c:152:0
	movq	104(%rsp), %rdi
	addq	$18432, %rdi            # imm = 0x4800
	xorb	%al, %al
	callq	printf
	.loc	9 153 0                 # Head.c:153:0
	movq	104(%rsp), %rax
	movzwl	34832(%rax), %edi
	callq	htons
	movw	%ax, 82(%rsp)
	movl	$2, %edi
	movl	$1, %esi
	xorl	%edx, %edx
	.loc	9 154 0                 # Head.c:154:0
	callq	socket
	movl	%eax, 52(%rsp)
	cmpl	$-1, %eax
	je	.LBB6_2
# BB#4:                                 # %if.end25
	.loc	9 158 0                 # Head.c:158:0
	movl	52(%rsp), %edi
	leaq	80(%rsp), %rsi
	movq	%rsi, 8(%rsp)
	movq	%rsi, 16(%rsp)
	movl	$16, %edx
	callq	connect
	cmpl	$-1, %eax
	je	.LBB6_5
# BB#6:                                 # %if.end33
	.loc	9 164 0                 # Head.c:164:0
	movq	32(%rsp), %rsi
	movl	52(%rsp), %edi
	movl	$8192, %edx             # imm = 0x2000
	xorl	%ecx, %ecx
	callq	recv_reply
	cmpl	$-1, %eax
	je	.LBB6_7
# BB#8:                                 # %if.else
	.loc	9 169 0                 # Head.c:169:0
	movq	32(%rsp), %rax
	movsbl	(%rax), %eax
	cmpl	$50, %eax
	je	.LBB6_14
# BB#9:                                 # %land.lhs.true
	movq	32(%rsp), %rax
	movsbl	(%rax), %eax
	cmpl	$49, %eax
	je	.LBB6_14
# BB#10:                                # %land.lhs.true49
	movq	32(%rsp), %rax
	movsbl	(%rax), %eax
	cmpl	$51, %eax
	jne	.LBB6_11
.LBB6_14:                               # %if.end57
	.loc	9 175 0                 # Head.c:175:0
	movq	32(%rsp), %rdx
	movq	stderr(%rip), %rdi
	movl	$.L.str1360, %esi
	xorb	%al, %al
	callq	fprintf
	.loc	9 177 0                 # Head.c:177:0
	movq	32(%rsp), %rax
	movb	$0, 8190(%rax)
	.loc	9 178 0                 # Head.c:178:0
	movq	32(%rsp), %rax
	movsbl	(%rax), %eax
	cmpl	$50, %eax
	je	.LBB6_17
# BB#15:                                # %land.lhs.true64
	movq	32(%rsp), %rax
	movsbl	(%rax), %eax
	cmpl	$49, %eax
	je	.LBB6_17
# BB#16:                                # %land.lhs.true69
	movq	32(%rsp), %rax
	movsbl	(%rax), %eax
	cmpl	$51, %eax
	jne	.LBB6_33
.LBB6_17:                               # %if.end75
	.loc	9 183 0                 # Head.c:183:0
	movq	104(%rsp), %rsi
	addq	$18448, %rsi            # imm = 0x4810
	movl	$.L.str1562, %edi
	xorb	%al, %al
	callq	Log
	movl	$18448, %ecx            # imm = 0x4810
	.loc	9 185 0                 # Head.c:185:0
	addq	104(%rsp), %rcx
	movq	40(%rsp), %rdi
	movl	$8191, %esi             # imm = 0x1FFF
	movl	$.L.str1663, %edx
	xorb	%al, %al
	callq	snprintf
	.loc	9 186 0                 # Head.c:186:0
	movq	40(%rsp), %rsi
	movl	$.L.str1764, %edi
	xorb	%al, %al
	callq	printf
	.loc	9 187 0                 # Head.c:187:0
	movq	32(%rsp), %rdi
	xorl	%esi, %esi
	movl	$8192, %edx             # imm = 0x2000
	callq	memset
	.loc	9 188 0                 # Head.c:188:0
	movl	52(%rsp), %ebp
	movq	40(%rsp), %rbx
	movq	%rbx, %rdi
	callq	strlen
	movl	%ebp, %edi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	xorl	%ecx, %ecx
	callq	send
	.loc	9 189 0                 # Head.c:189:0
	movq	32(%rsp), %rsi
	movl	52(%rsp), %edi
	movl	$8192, %edx             # imm = 0x2000
	xorl	%ecx, %ecx
	callq	recv_reply
	.loc	9 190 0                 # Head.c:190:0
	movq	32(%rsp), %rdx
	movq	stderr(%rip), %rdi
	movl	$.L.str1865, %esi
	xorb	%al, %al
	callq	fprintf
	.loc	9 191 0                 # Head.c:191:0
	movq	32(%rsp), %rdi
	movl	$.L.str1966, %esi
	movl	$3, %edx
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB6_18
# BB#20:                                # %if.end91
	movl	$26640, %ecx            # imm = 0x6810
	.loc	9 197 0                 # Head.c:197:0
	addq	104(%rsp), %rcx
	movq	40(%rsp), %rdi
	movl	$8191, %esi             # imm = 0x1FFF
	movl	$.L.str2168, %edx
	xorb	%al, %al
	callq	snprintf
	.loc	9 198 0                 # Head.c:198:0
	movl	$.L.str22, %edi
	xorb	%al, %al
	callq	printf
	.loc	9 199 0                 # Head.c:199:0
	movq	32(%rsp), %rdi
	xorl	%esi, %esi
	movl	$8192, %edx             # imm = 0x2000
	callq	memset
	.loc	9 200 0                 # Head.c:200:0
	movl	52(%rsp), %ebx
	movq	40(%rsp), %rbp
	movq	%rbp, %rdi
	callq	strlen
	movl	%ebx, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	xorl	%ecx, %ecx
	callq	send
	.loc	9 201 0                 # Head.c:201:0
	movq	32(%rsp), %rsi
	movl	52(%rsp), %edi
	movl	$8192, %edx             # imm = 0x2000
	xorl	%ecx, %ecx
	callq	recv_reply
	.loc	9 202 0                 # Head.c:202:0
	movq	32(%rsp), %rdx
	movq	stderr(%rip), %rdi
	movl	$.L.str1865, %esi
	xorb	%al, %al
	callq	fprintf
	.loc	9 203 0                 # Head.c:203:0
	movq	32(%rsp), %rdi
	movl	$.L.str23, %esi
	movl	$3, %edx
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB6_21
# BB#22:                                # %if.end105
	.loc	9 208 0                 # Head.c:208:0
	movl	$.L.str25, %edi
	xorb	%al, %al
	callq	Log
	.loc	9 210 0                 # Head.c:210:0
	movq	40(%rsp), %rdi
	movl	$.L.str2669, %esi
	xorb	%al, %al
	callq	sprintf
	.loc	9 211 0                 # Head.c:211:0
	movq	40(%rsp), %rsi
	movl	$.L.str1764, %edi
	xorb	%al, %al
	callq	printf
	.loc	9 212 0                 # Head.c:212:0
	movq	32(%rsp), %rdi
	xorl	%esi, %esi
	movl	$8192, %edx             # imm = 0x2000
	callq	memset
	.loc	9 213 0                 # Head.c:213:0
	movl	52(%rsp), %ebx
	movq	40(%rsp), %rbp
	movq	%rbp, %rdi
	callq	strlen
	movl	%ebx, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	xorl	%ecx, %ecx
	callq	send
	.loc	9 214 0                 # Head.c:214:0
	movq	32(%rsp), %rsi
	movl	52(%rsp), %edi
	movl	$8192, %edx             # imm = 0x2000
	xorl	%ecx, %ecx
	callq	recv_reply
	.loc	9 215 0                 # Head.c:215:0
	movq	32(%rsp), %rdx
	movq	stderr(%rip), %rdi
	movl	$.L.str1865, %esi
	xorb	%al, %al
	callq	fprintf
	.loc	9 216 0                 # Head.c:216:0
	movq	32(%rsp), %rdi
	movl	$.L.str27, %esi
	movl	$3, %edx
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB6_34
# BB#23:                                # %if.end118
	.loc	9 222 0                 # Head.c:222:0
	movl	$1, 28(%rsp)
	.loc	9 224 0                 # Head.c:224:0
	movq	40(%rsp), %rdi
	movl	$.L.str29, %esi
	xorb	%al, %al
	callq	sprintf
	.loc	9 225 0                 # Head.c:225:0
	movq	40(%rsp), %rsi
	movl	$.L.str1764, %edi
	xorb	%al, %al
	callq	printf
	.loc	9 226 0                 # Head.c:226:0
	movq	32(%rsp), %rdi
	xorl	%esi, %esi
	movl	$8192, %edx             # imm = 0x2000
	callq	memset
	.loc	9 227 0                 # Head.c:227:0
	movl	52(%rsp), %ebx
	movq	40(%rsp), %rbp
	movq	%rbp, %rdi
	callq	strlen
	movl	%ebx, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	xorl	%ecx, %ecx
	callq	send
	.loc	9 228 0                 # Head.c:228:0
	movq	32(%rsp), %rsi
	movl	52(%rsp), %edi
	movl	$8192, %edx             # imm = 0x2000
	xorl	%ecx, %ecx
	callq	recv_reply
	.loc	9 229 0                 # Head.c:229:0
	movq	32(%rsp), %rdx
	movq	stderr(%rip), %rdi
	movl	$.L.str1865, %esi
	xorb	%al, %al
	callq	fprintf
	.loc	9 230 0                 # Head.c:230:0
	movq	32(%rsp), %rdi
	movl	$.L.str30, %esi
	movl	$3, %edx
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB6_24
# BB#25:                                # %if.end131
	.loc	9 235 0                 # Head.c:235:0
	movq	32(%rsp), %rdi
	movl	$.L.str32, %esi
	callq	strstr
	testq	%rax, %rax
	je	.LBB6_27
# BB#26:                                # %if.then135
	.loc	9 236 0                 # Head.c:236:0
	movq	104(%rsp), %rax
	movl	$1, 34836(%rax)
	jmp	.LBB6_28
.LBB6_27:                               # %if.else136
	.loc	9 238 0                 # Head.c:238:0
	movq	104(%rsp), %rax
	movl	$2, 34836(%rax)
.LBB6_28:                               # %if.end138
	.loc	9 240 0                 # Head.c:240:0
	movq	40(%rsp), %rdi
	movl	$.L.str33, %esi
	xorb	%al, %al
	callq	sprintf
	.loc	9 241 0                 # Head.c:241:0
	movq	40(%rsp), %rsi
	movl	$.L.str1764, %edi
	xorb	%al, %al
	callq	printf
	.loc	9 242 0                 # Head.c:242:0
	movq	32(%rsp), %rdi
	xorl	%esi, %esi
	movl	$8192, %edx             # imm = 0x2000
	callq	memset
	.loc	9 243 0                 # Head.c:243:0
	movl	52(%rsp), %ebx
	movq	40(%rsp), %rbp
	movq	%rbp, %rdi
	callq	strlen
	movl	%ebx, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	xorl	%ecx, %ecx
	callq	send
	.loc	9 244 0                 # Head.c:244:0
	movq	32(%rsp), %rsi
	movl	52(%rsp), %edi
	movl	$8192, %edx             # imm = 0x2000
	xorl	%ecx, %ecx
	callq	recv_reply
	.loc	9 245 0                 # Head.c:245:0
	movq	32(%rsp), %rdx
	movq	stderr(%rip), %rdi
	movl	$.L.str1865, %esi
	xorb	%al, %al
	callq	fprintf
	.loc	9 246 0                 # Head.c:246:0
	movq	32(%rsp), %rdi
	movl	$.L.str34, %esi
	movl	$3, %edx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB6_30
# BB#29:                                # %if.then148
	.loc	9 247 0                 # Head.c:247:0
.Ltmp240:
	movq	stderr(%rip), %rdi
	movl	$.L.str35, %esi
	xorb	%al, %al
	callq	fprintf
	.loc	9 248 0                 # Head.c:248:0
	movq	32(%rsp), %rdx
	movq	stderr(%rip), %rdi
	movl	$.L.str1865, %esi
	xorb	%al, %al
	callq	fprintf
.Ltmp241:
.LBB6_30:                               # %if.end151
	.loc	9 251 0                 # Head.c:251:0
	movq	40(%rsp), %rdi
	movl	$.L.str36, %esi
	xorb	%al, %al
	callq	sprintf
	.loc	9 252 0                 # Head.c:252:0
	movq	40(%rsp), %rsi
	movl	$.L.str1764, %edi
	xorb	%al, %al
	callq	printf
	.loc	9 253 0                 # Head.c:253:0
	movq	32(%rsp), %rdi
	xorl	%esi, %esi
	movl	$8192, %edx             # imm = 0x2000
	callq	memset
	.loc	9 254 0                 # Head.c:254:0
	movl	52(%rsp), %ebx
	movq	40(%rsp), %rbp
	movq	%rbp, %rdi
	callq	strlen
	movl	%ebx, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	xorl	%ecx, %ecx
	callq	send
	.loc	9 255 0                 # Head.c:255:0
	movq	32(%rsp), %rsi
	movl	52(%rsp), %edi
	movl	$8192, %edx             # imm = 0x2000
	xorl	%ecx, %ecx
	callq	recv_reply
	.loc	9 256 0                 # Head.c:256:0
	movq	32(%rsp), %rdx
	movq	stderr(%rip), %rdi
	movl	$.L.str1865, %esi
	xorb	%al, %al
	callq	fprintf
	leaq	64(%rsp), %r14
	.loc	9 257 0                 # Head.c:257:0
	movq	32(%rsp), %rdi
	movl	$8192, %esi             # imm = 0x2000
	movq	%r14, %rdx
	callq	parse_pasv_reply2
	movl	$1025, %ecx             # imm = 0x401
	.loc	9 259 0                 # Head.c:259:0
	addq	104(%rsp), %rcx
	movq	40(%rsp), %rdi
	movl	$8191, %esi             # imm = 0x1FFF
	movl	$.L.str37, %edx
	xorb	%al, %al
	callq	snprintf
	.loc	9 260 0                 # Head.c:260:0
	movq	40(%rsp), %rsi
	.loc	9 252 0                 # Head.c:252:0
	movl	$.L.str1764, %edi
	xorb	%al, %al
	.loc	9 260 0                 # Head.c:260:0
	callq	printf
	.loc	9 261 0                 # Head.c:261:0
	movq	32(%rsp), %rdi
	xorl	%esi, %esi
	movl	$8192, %edx             # imm = 0x2000
	callq	memset
	.loc	9 262 0                 # Head.c:262:0
	movl	52(%rsp), %ebp
	movq	40(%rsp), %rbx
	movq	%rbx, %rdi
	callq	strlen
	movl	%ebp, %edi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	xorl	%ecx, %ecx
	callq	send
	.loc	9 265 0                 # Head.c:265:0
	movq	104(%rsp), %rsi
	movl	34836(%rsi), %edx
	addq	$1025, %rsi             # imm = 0x401
	movq	%r14, %rdi
	callq	ftp_get_size
	movq	104(%rsp), %rcx
	movl	%eax, 34840(%rcx)
	cmpl	$-1, %eax
	je	.LBB6_35
# BB#31:                                # %if.end174
	.loc	9 269 0                 # Head.c:269:0
	movq	32(%rsp), %rsi
	movl	52(%rsp), %edi
	movl	$8192, %edx             # imm = 0x2000
	xorl	%ecx, %ecx
	callq	recv_reply
	movl	%eax, 24(%rsp)
	.loc	9 270 0                 # Head.c:270:0
	movq	32(%rsp), %rdx
	movq	stderr(%rip), %rdi
	movl	$.L.str1865, %esi
	xorb	%al, %al
	callq	fprintf
	.loc	9 272 0                 # Head.c:272:0
	movq	104(%rsp), %rax
	movl	34840(%rax), %esi
	movl	$.L.str39, %edi
	xorb	%al, %al
	callq	Log
	.loc	9 275 0                 # Head.c:275:0
	movq	96(%rsp), %rax
	movl	52(%rsp), %ecx
	movl	%ecx, (%rax)
	.loc	9 277 0                 # Head.c:277:0
	movq	40(%rsp), %rdi
	callq	free
	.loc	9 278 0                 # Head.c:278:0
	movq	32(%rsp), %rdi
	callq	free
	.loc	9 280 0                 # Head.c:280:0
	movl	28(%rsp), %eax
	addq	$112, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
.LBB6_32:                               # %if.then
	.loc	9 143 0                 # Head.c:143:0
.Ltmp242:
	movq	104(%rsp), %rbx
	.loc	9 145 0                 # Head.c:145:0
	callq	__h_errno_location
	movl	(%rax), %edi
	callq	hstrerror
	movl	$.L.str47, %edi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	xorb	%al, %al
	callq	Log
	movl	$1, %edi
	.loc	9 146 0                 # Head.c:146:0
	callq	exit
.Ltmp243:
.LBB6_2:                                # %if.then22
	.loc	9 155 0                 # Head.c:155:0
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str148, %edi
	jmp	.LBB6_3
.Ltmp244:
.LBB6_5:                                # %if.then30
	.loc	9 159 0                 # Head.c:159:0
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str249, %edi
.Ltmp245:
.LBB6_3:                                # %if.then22
	.loc	9 155 0                 # Head.c:155:0
	movq	%rax, %rsi
	xorb	%al, %al
	callq	Log
	movl	$1, %edi
	.loc	9 156 0                 # Head.c:156:0
	callq	exit
.Ltmp246:
.LBB6_7:                                # %if.then37
	.loc	9 165 0                 # Head.c:165:0
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str1259, %edi
	movq	%rax, %rsi
	xorb	%al, %al
	callq	Log
	jmp	.LBB6_12
.Ltmp247:
.LBB6_11:                               # %if.then54
	.loc	9 170 0                 # Head.c:170:0
	movl	$.L.str1461, %edi
	xorb	%al, %al
	callq	Log
.LBB6_12:                               # %if.then54
	.loc	9 171 0                 # Head.c:171:0
	movq	32(%rsp), %rdx
	movq	stderr(%rip), %rdi
	movl	$.L.str1360, %esi
	jmp	.LBB6_13
.Ltmp248:
.LBB6_33:                               # %if.then74
	.loc	9 179 0                 # Head.c:179:0
	movq	32(%rsp), %rdi
	callq	handleFTPRetcode
	movl	$1, %edi
	.loc	9 180 0                 # Head.c:180:0
	callq	exit
.Ltmp249:
.LBB6_18:                               # %if.then88
	.loc	9 192 0                 # Head.c:192:0
	movq	stderr(%rip), %rdi
	movl	$.L.str2067, %esi
	jmp	.LBB6_19
.Ltmp250:
.LBB6_21:                               # %if.then102
	.loc	9 204 0                 # Head.c:204:0
	movq	stderr(%rip), %rdi
	movl	$.L.str24, %esi
	jmp	.LBB6_19
.Ltmp251:
.LBB6_34:                               # %if.then115
	.loc	9 217 0                 # Head.c:217:0
	movq	stderr(%rip), %rdi
	movl	$.L.str28, %esi
	xorb	%al, %al
	callq	fprintf
	.loc	9 218 0                 # Head.c:218:0
	movq	32(%rsp), %rdx
	movq	stderr(%rip), %rdi
	movl	$.L.str1865, %esi
	xorb	%al, %al
	callq	fprintf
	.loc	9 219 0                 # Head.c:219:0
	movl	$0, 28(%rsp)
	movl	$1, %edi
	.loc	9 220 0                 # Head.c:220:0
	callq	exit
.Ltmp252:
.LBB6_24:                               # %if.then128
	.loc	9 231 0                 # Head.c:231:0
	movq	stderr(%rip), %rdi
	movl	$.L.str31, %esi
.Ltmp253:
.LBB6_19:                               # %if.then88
	xorb	%al, %al
	.loc	9 192 0                 # Head.c:192:0
.Ltmp254:
	callq	fprintf
	.loc	9 193 0                 # Head.c:193:0
	movq	32(%rsp), %rdx
	movq	stderr(%rip), %rdi
	movl	$.L.str1865, %esi
.Ltmp255:
.LBB6_13:                               # %if.then54
	xorb	%al, %al
	.loc	9 171 0                 # Head.c:171:0
.Ltmp256:
	callq	fprintf
	movl	$1, %edi
	.loc	9 172 0                 # Head.c:172:0
	callq	exit
.Ltmp257:
.LBB6_35:                               # %if.then172
	.loc	9 266 0                 # Head.c:266:0
	movq	stderr(%rip), %rdi
	movl	$.L.str38, %esi
	xorb	%al, %al
	callq	fprintf
	movl	$1, %edi
	.loc	9 267 0                 # Head.c:267:0
	callq	exit
.Ltmp258:
.Ltmp259:
	.size	ftp_head_req, .Ltmp259-ftp_head_req
.Lfunc_end6:
	.cfi_endproc

	.globl	parse_pasv_reply2
	.align	16, 0x90
	.type	parse_pasv_reply2,@function
parse_pasv_reply2:                      # @parse_pasv_reply2
	.cfi_startproc
.Lfunc_begin7:
	.loc	9 325 0                 # Head.c:325:0
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp262:
	.cfi_def_cfa_offset 16
	subq	$144, %rsp
.Ltmp263:
	.cfi_def_cfa_offset 160
.Ltmp264:
	.cfi_offset %rbx, -16
	movq	%rdi, 128(%rsp)
	movl	%esi, 124(%rsp)
	movq	%rdx, 112(%rsp)
	.loc	9 326 0 prologue_end    # Head.c:326:0
.Ltmp265:
	movq	128(%rsp), %rax
	movq	%rax, 104(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	.loc	9 328 0                 # Head.c:328:0
	vmovaps	%xmm0, 64(%rsp)
	vmovaps	%xmm0, 48(%rsp)
	movq	$0, 80(%rsp)
	.loc	9 331 0                 # Head.c:331:0
	movl	$0, 24(%rsp)
	movl	$0, 20(%rsp)
	jmp	.LBB7_1
	.align	16, 0x90
.LBB7_7:                                # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	.loc	9 334 0                 # Head.c:334:0
.Ltmp266:
	incq	104(%rsp)
.LBB7_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	.loc	9 333 0                 # Head.c:333:0
	movq	104(%rsp), %rcx
	subq	128(%rsp), %rcx
	xorb	%al, %al
	movslq	124(%rsp), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB7_6
# BB#2:                                 # %land.lhs.true
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	104(%rsp), %rcx
	movsbl	(%rcx), %ecx
	testl	%ecx, %ecx
	je	.LBB7_6
# BB#3:                                 # %land.lhs.true10
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	104(%rsp), %rcx
	movsbl	(%rcx), %ecx
	cmpl	$13, %ecx
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true14
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	104(%rsp), %rcx
	movsbl	(%rcx), %ecx
	cmpl	$10, %ecx
	je	.LBB7_6
# BB#5:                                 # %land.rhs
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	104(%rsp), %rax
	movsbl	(%rax), %eax
	cmpl	$40, %eax
	setne	%al
.Ltmp267:
	.align	16, 0x90
.LBB7_6:                                # %land.end
                                        #   in Loop: Header=BB7_1 Depth=1
	cmpb	$1, %al
	je	.LBB7_7
# BB#8:                                 # %for.end
	.loc	9 335 0                 # Head.c:335:0
	incq	104(%rsp)
	.loc	9 336 0                 # Head.c:336:0
.Ltmp268:
	movl	$0, 24(%rsp)
	leaq	100(%rsp), %rbx
	jmp	.LBB7_9
	.align	16, 0x90
.LBB7_25:                               # %for.inc85
                                        #   in Loop: Header=BB7_9 Depth=1
	.loc	9 339 0                 # Head.c:339:0
.Ltmp269:
	movslq	20(%rsp), %rax
	movb	$0, 100(%rsp,%rax)
	.loc	9 340 0                 # Head.c:340:0
	movq	%rbx, %rdi
	callq	atoi
	movslq	24(%rsp), %rcx
	movl	%eax, 48(%rsp,%rcx,4)
	.loc	9 341 0                 # Head.c:341:0
	incl	24(%rsp)
.Ltmp270:
	.loc	9 336 0                 # Head.c:336:0
	incq	104(%rsp)
.LBB7_9:                                # %for.cond22
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_16 Depth 2
	movq	104(%rsp), %rcx
	subq	128(%rsp), %rcx
	xorb	%al, %al
	movslq	124(%rsp), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB7_14
# BB#10:                                # %land.lhs.true29
                                        #   in Loop: Header=BB7_9 Depth=1
	movq	104(%rsp), %rcx
	movsbl	(%rcx), %ecx
	testl	%ecx, %ecx
	je	.LBB7_14
# BB#11:                                # %land.lhs.true33
                                        #   in Loop: Header=BB7_9 Depth=1
	movq	104(%rsp), %rcx
	movsbl	(%rcx), %ecx
	cmpl	$13, %ecx
	je	.LBB7_14
# BB#12:                                # %land.lhs.true37
                                        #   in Loop: Header=BB7_9 Depth=1
	movq	104(%rsp), %rcx
	movsbl	(%rcx), %ecx
	cmpl	$10, %ecx
	je	.LBB7_14
# BB#13:                                # %land.rhs41
                                        #   in Loop: Header=BB7_9 Depth=1
	cmpl	$6, 24(%rsp)
	setl	%al
	.align	16, 0x90
.LBB7_14:                               # %land.end44
                                        #   in Loop: Header=BB7_9 Depth=1
	cmpb	$1, %al
	jne	.LBB7_26
# BB#15:                                # %for.body45
                                        #   in Loop: Header=BB7_9 Depth=1
	.loc	9 337 0                 # Head.c:337:0
.Ltmp271:
	movl	$0, 20(%rsp)
	jmp	.LBB7_16
	.align	16, 0x90
.LBB7_24:                               # %for.inc
                                        #   in Loop: Header=BB7_16 Depth=2
	.loc	9 338 0                 # Head.c:338:0
	movq	104(%rsp), %rax
	movb	(%rax), %al
	movslq	20(%rsp), %rcx
	movb	%al, 100(%rsp,%rcx)
	.loc	9 337 0                 # Head.c:337:0
	incq	104(%rsp)
	incl	20(%rsp)
.LBB7_16:                               # %for.cond46
                                        #   Parent Loop BB7_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	104(%rsp), %rcx
	subq	128(%rsp), %rcx
	xorb	%al, %al
	movslq	124(%rsp), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB7_23
# BB#17:                                # %land.lhs.true53
                                        #   in Loop: Header=BB7_16 Depth=2
	movq	104(%rsp), %rcx
	movsbl	(%rcx), %ecx
	testl	%ecx, %ecx
	je	.LBB7_23
# BB#18:                                # %land.lhs.true57
                                        #   in Loop: Header=BB7_16 Depth=2
	movq	104(%rsp), %rcx
	movsbl	(%rcx), %ecx
	cmpl	$13, %ecx
	je	.LBB7_23
# BB#19:                                # %land.lhs.true61
                                        #   in Loop: Header=BB7_16 Depth=2
	movq	104(%rsp), %rcx
	movsbl	(%rcx), %ecx
	cmpl	$10, %ecx
	je	.LBB7_23
# BB#20:                                # %land.lhs.true65
                                        #   in Loop: Header=BB7_16 Depth=2
	movq	104(%rsp), %rcx
	movsbl	(%rcx), %ecx
	cmpl	$44, %ecx
	je	.LBB7_23
# BB#21:                                # %land.lhs.true69
                                        #   in Loop: Header=BB7_16 Depth=2
	movq	104(%rsp), %rcx
	movsbl	(%rcx), %ecx
	cmpl	$41, %ecx
	je	.LBB7_23
# BB#22:                                # %land.rhs73
                                        #   in Loop: Header=BB7_16 Depth=2
	cmpl	$3, 20(%rsp)
	setl	%al
.Ltmp272:
	.align	16, 0x90
.LBB7_23:                               # %land.end76
                                        #   in Loop: Header=BB7_16 Depth=2
	cmpb	$1, %al
	jne	.LBB7_25
	jmp	.LBB7_24
.LBB7_26:                               # %for.end87
	.loc	9 343 0                 # Head.c:343:0
	cmpl	$0, 48(%rsp)
	je	.LBB7_27
# BB#28:                                # %if.end
	.loc	9 346 0                 # Head.c:346:0
	movl	56(%rsp), %r9d
	movl	48(%rsp), %ecx
	movl	52(%rsp), %r8d
	movl	60(%rsp), %eax
	movl	%eax, (%rsp)
	leaq	32(%rsp), %rbx
	movq	%rbx, %rdi
	movl	$15, %esi
	movl	$.L.str40, %edx
	xorb	%al, %al
	callq	snprintf
	.loc	9 347 0                 # Head.c:347:0
	movl	64(%rsp), %eax
	shll	$8, %eax
	addl	68(%rsp), %eax
	movw	%ax, 30(%rsp)
	.loc	9 349 0                 # Head.c:349:0
	movq	112(%rsp), %rax
	movq	$0, 8(%rax)
	movq	$0, (%rax)
	.loc	9 350 0                 # Head.c:350:0
	movq	112(%rsp), %rax
	movw	$2, (%rax)
	.loc	9 351 0                 # Head.c:351:0
	movzwl	30(%rsp), %edi
	callq	htons
	movq	112(%rsp), %rcx
	movw	%ax, 2(%rcx)
	.loc	9 352 0                 # Head.c:352:0
	movq	%rbx, %rdi
	callq	inet_addr
	movq	112(%rsp), %rcx
	movl	%eax, 4(%rcx)
	.loc	9 354 0                 # Head.c:354:0
	movl	$0, 140(%rsp)
	jmp	.LBB7_29
.LBB7_27:                               # %if.then
	.loc	9 344 0                 # Head.c:344:0
	movl	$-1, 140(%rsp)
.LBB7_29:                               # %return
	.loc	9 355 0                 # Head.c:355:0
	movl	140(%rsp), %eax
	addq	$144, %rsp
	popq	%rbx
	ret
.Ltmp273:
.Ltmp274:
	.size	parse_pasv_reply2, .Ltmp274-parse_pasv_reply2
.Lfunc_end7:
	.cfi_endproc

	.globl	ftp_get_size
	.align	16, 0x90
	.type	ftp_get_size,@function
ftp_get_size:                           # @ftp_get_size
	.cfi_startproc
.Lfunc_begin8:
	.loc	9 360 0                 # Head.c:360:0
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp277:
	.cfi_def_cfa_offset 16
	subq	$8672, %rsp             # imm = 0x21E0
.Ltmp278:
	.cfi_def_cfa_offset 8688
.Ltmp279:
	.cfi_offset %rbx, -16
	movq	%rdi, 8656(%rsp)
	movq	%rsi, 8648(%rsp)
	movl	%edx, 8644(%rsp)
	leaq	448(%rsp), %rdi
	xorl	%esi, %esi
	movl	$8192, %edx             # imm = 0x2000
	.loc	9 373 0 prologue_end    # Head.c:373:0
.Ltmp280:
	callq	memset
	vxorps	%xmm0, %xmm0, %xmm0
	.loc	9 374 0                 # Head.c:374:0
	vmovaps	%xmm0, 432(%rsp)
	.loc	9 375 0                 # Head.c:375:0
	vmovaps	%xmm0, 416(%rsp)
	.loc	9 376 0                 # Head.c:376:0
	vmovaps	%xmm0, 400(%rsp)
	.loc	9 377 0                 # Head.c:377:0
	vmovaps	%xmm0, 384(%rsp)
	.loc	9 378 0                 # Head.c:378:0
	vmovaps	%xmm0, 368(%rsp)
	.loc	9 379 0                 # Head.c:379:0
	vmovaps	%xmm0, 352(%rsp)
	.loc	9 380 0                 # Head.c:380:0
	vmovaps	%xmm0, 336(%rsp)
	.loc	9 381 0                 # Head.c:381:0
	vmovaps	%xmm0, 320(%rsp)
	.loc	9 382 0                 # Head.c:382:0
	vmovaps	%xmm0, 64(%rsp)
	movl	$2, %edi
	movl	$1, %esi
	xorl	%edx, %edx
	.loc	9 384 0                 # Head.c:384:0
	callq	socket
	movl	%eax, 8640(%rsp)
	cmpl	$-1, %eax
	jne	.LBB8_3
# BB#1:                                 # %if.then
	.loc	9 385 0                 # Head.c:385:0
.Ltmp281:
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str41, %edi
	jmp	.LBB8_2
.Ltmp282:
.LBB8_3:                                # %if.end
	.loc	9 388 0                 # Head.c:388:0
	movl	8640(%rsp), %edi
	movq	8656(%rsp), %rsi
	movq	%rsi, 48(%rsp)
	movq	%rsi, 56(%rsp)
	movl	$16, %edx
	callq	connect
	cmpl	$-1, %eax
	jne	.LBB8_5
# BB#4:                                 # %if.then5
	.loc	9 389 0                 # Head.c:389:0
.Ltmp283:
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str42, %edi
.Ltmp284:
.LBB8_2:                                # %if.then
	.loc	9 385 0                 # Head.c:385:0
	movq	%rax, %rsi
	xorb	%al, %al
	callq	Log
	.loc	9 386 0                 # Head.c:386:0
	movl	$-1, 8668(%rsp)
	jmp	.LBB8_6
.Ltmp285:
.LBB8_5:                                # %if.end8
	leaq	448(%rsp), %rbx
	.loc	9 393 0                 # Head.c:393:0
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$8192, %edx             # imm = 0x2000
	callq	memset
	.loc	9 394 0                 # Head.c:394:0
	movl	8640(%rsp), %edi
	movq	%rbx, %rsi
	movl	$8191, %edx             # imm = 0x1FFF
	xorl	%ecx, %ecx
	callq	recv
	.loc	9 395 0                 # Head.c:395:0
	movl	$.L.str1865, %edi
	movq	%rbx, %rsi
	xorb	%al, %al
	callq	printf
	.loc	9 397 0                 # Head.c:397:0
	cmpl	$1, 8644(%rsp)
	leaq	368(%rsp), %rbx
	leaq	352(%rsp), %rax
	leaq	336(%rsp), %rcx
	leaq	320(%rsp), %rdx
	leaq	64(%rsp), %rsi
	.loc	9 413 0                 # Head.c:413:0
.Ltmp286:
	movq	%rsi, 32(%rsp)
	movq	%rdx, 24(%rsp)
	movq	%rcx, 16(%rsp)
	movq	%rax, 8(%rsp)
	movq	%rbx, (%rsp)
	leaq	448(%rsp), %rdi
	leaq	432(%rsp), %rdx
	leaq	416(%rsp), %rcx
	leaq	400(%rsp), %r8
	leaq	384(%rsp), %r9
	movl	$.L.str43, %esi
	xorb	%al, %al
	callq	sscanf
	.loc	9 423 0                 # Head.c:423:0
	movl	$.L.str44, %edi
	movq	%rbx, %rsi
	xorb	%al, %al
	callq	printf
.Ltmp287:
	.loc	9 426 0                 # Head.c:426:0
	movl	8640(%rsp), %edi
	callq	close
	leaq	368(%rsp), %rdi
	.loc	9 427 0                 # Head.c:427:0
	callq	atoi
	movl	%eax, 8668(%rsp)
.LBB8_6:                                # %return
	.loc	9 428 0                 # Head.c:428:0
	movl	8668(%rsp), %eax
	addq	$8672, %rsp             # imm = 0x21E0
	popq	%rbx
	ret
.Ltmp288:
.Ltmp289:
	.size	ftp_get_size, .Ltmp289-ftp_get_size
.Lfunc_end8:
	.cfi_endproc

	.globl	parse_pasv_reply
	.align	16, 0x90
	.type	parse_pasv_reply,@function
parse_pasv_reply:                       # @parse_pasv_reply
	.cfi_startproc
.Lfunc_begin9:
	.loc	9 286 0                 # Head.c:286:0
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp292:
	.cfi_def_cfa_offset 16
	subq	$112, %rsp
.Ltmp293:
	.cfi_def_cfa_offset 128
.Ltmp294:
	.cfi_offset %rbx, -16
	movq	%rdi, 104(%rsp)
	movl	%esi, 100(%rsp)
	movq	%rdx, 88(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	.loc	9 288 0 prologue_end    # Head.c:288:0
.Ltmp295:
	vmovaps	%xmm0, 48(%rsp)
	movq	$0, 64(%rsp)
	.loc	9 295 0                 # Head.c:295:0
	movq	104(%rsp), %rdi
	callq	strdup
	movq	%rax, 80(%rsp)
	.loc	9 296 0                 # Head.c:296:0
	movq	104(%rsp), %rdi
	callq	strlen
	movl	%eax, 20(%rsp)
	.loc	9 297 0                 # Head.c:297:0
	addq	$4, 80(%rsp)
	.loc	9 299 0                 # Head.c:299:0
	movl	$0, 24(%rsp)
	jmp	.LBB9_1
	.align	16, 0x90
.LBB9_4:                                # %while.body
                                        #   in Loop: Header=BB9_1 Depth=1
	.loc	9 301 0                 # Head.c:301:0
	incq	80(%rsp)
.LBB9_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	.loc	9 300 0                 # Head.c:300:0
	movq	80(%rsp), %rax
	movsbq	(%rax), %rbx
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movzwl	(%rax,%rbx,2), %ecx
	xorb	%al, %al
	testb	$8, %ch
	jne	.LBB9_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	24(%rsp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, 24(%rsp)
	cmpl	20(%rsp), %eax
	setl	%al
.LBB9_3:                                # %land.end
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpb	$1, %al
	je	.LBB9_4
# BB#5:                                 # %while.end
	.loc	9 303 0                 # Head.c:303:0
.Ltmp296:
	movl	$0, 24(%rsp)
	jmp	.LBB9_6
	.align	16, 0x90
.LBB9_13:                               # %for.inc
                                        #   in Loop: Header=BB9_6 Depth=1
	.loc	9 306 0                 # Head.c:306:0
.Ltmp297:
	incq	80(%rsp)
.Ltmp298:
	.loc	9 303 0                 # Head.c:303:0
	incl	24(%rsp)
.LBB9_6:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_7 Depth 2
	cmpl	$5, 24(%rsp)
	jg	.LBB9_14
	jmp	.LBB9_7
	.align	16, 0x90
.LBB9_12:                               # %while.body21
                                        #   in Loop: Header=BB9_7 Depth=2
	.loc	9 305 0                 # Head.c:305:0
.Ltmp299:
	movq	80(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 80(%rsp)
	movsbl	(%rax), %eax
	movslq	24(%rsp), %rcx
	imull	$10, 48(%rsp,%rcx,4), %edx
	leal	-48(%rax,%rdx), %eax
	movl	%eax, 48(%rsp,%rcx,4)
.LBB9_7:                                # %while.cond8
                                        #   Parent Loop BB9_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	9 304 0                 # Head.c:304:0
	cmpl	$4, 24(%rsp)
	jg	.LBB9_9
# BB#8:                                 # %land.lhs.true
                                        #   in Loop: Header=BB9_7 Depth=2
	movq	80(%rsp), %rax
	movsbl	(%rax), %ecx
	movb	$1, %al
	cmpl	$44, %ecx
	jne	.LBB9_11
.LBB9_9:                                # %lor.rhs
                                        #   in Loop: Header=BB9_7 Depth=2
	xorb	%al, %al
	cmpl	$5, 24(%rsp)
	jne	.LBB9_11
# BB#10:                                # %land.rhs16
                                        #   in Loop: Header=BB9_7 Depth=2
	movq	80(%rsp), %rax
	movsbl	(%rax), %eax
	cmpl	$41, %eax
	setne	%al
.Ltmp300:
.LBB9_11:                               # %lor.end
                                        #   in Loop: Header=BB9_7 Depth=2
	cmpb	$1, %al
	jne	.LBB9_13
	jmp	.LBB9_12
.LBB9_14:                               # %for.end
	.loc	9 308 0                 # Head.c:308:0
	movl	56(%rsp), %r9d
	movl	48(%rsp), %ecx
	movl	52(%rsp), %r8d
	movl	60(%rsp), %eax
	movl	%eax, (%rsp)
	leaq	32(%rsp), %rbx
	movq	%rbx, %rdi
	movl	$15, %esi
	movl	$.L.str40, %edx
	xorb	%al, %al
	callq	snprintf
	.loc	9 309 0                 # Head.c:309:0
	movl	64(%rsp), %eax
	shll	$8, %eax
	addl	68(%rsp), %eax
	movw	%ax, 30(%rsp)
	.loc	9 315 0                 # Head.c:315:0
	movq	88(%rsp), %rax
	movq	$0, 8(%rax)
	movq	$0, (%rax)
	.loc	9 316 0                 # Head.c:316:0
	movq	88(%rsp), %rax
	movw	$2, (%rax)
	.loc	9 317 0                 # Head.c:317:0
	movzwl	30(%rsp), %edi
	callq	htons
	movq	88(%rsp), %rcx
	movw	%ax, 2(%rcx)
	.loc	9 318 0                 # Head.c:318:0
	movq	%rbx, %rdi
	callq	inet_addr
	movq	88(%rsp), %rcx
	movl	%eax, 4(%rcx)
	xorl	%eax, %eax
	.loc	9 320 0                 # Head.c:320:0
	addq	$112, %rsp
	popq	%rbx
	ret
.Ltmp301:
.Ltmp302:
	.size	parse_pasv_reply, .Ltmp302-parse_pasv_reply
.Lfunc_end9:
	.cfi_endproc

	.globl	parse_list_reply
	.align	16, 0x90
	.type	parse_list_reply,@function
parse_list_reply:                       # @parse_list_reply
	.cfi_startproc
.Lfunc_begin10:
	.loc	9 432 0                 # Head.c:432:0
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp305:
	.cfi_def_cfa_offset 16
	subq	$832, %rsp              # imm = 0x340
.Ltmp306:
	.cfi_def_cfa_offset 848
.Ltmp307:
	.cfi_offset %rbx, -16
	movq	%rdi, 816(%rsp)
	movl	%esi, 812(%rsp)
	.loc	9 436 0 prologue_end    # Head.c:436:0
.Ltmp308:
	movq	816(%rsp), %rdi
	leaq	(%rsp), %rdx
	movl	$.L.str956, %esi
	callq	strtok_r
	movq	%rax, 800(%rsp)
	testq	%rax, %rax
	je	.LBB10_1
# BB#2:                                 # %if.end
	.loc	9 439 0                 # Head.c:439:0
	movq	800(%rsp), %rdx
	movq	stderr(%rip), %rdi
	movl	$.L.str1865, %esi
	xorb	%al, %al
	callq	fprintf
	leaq	(%rsp), %rbx
	jmp	.LBB10_3
	.align	16, 0x90
.LBB10_4:                               # %while.body
                                        #   in Loop: Header=BB10_3 Depth=1
	.loc	9 442 0                 # Head.c:442:0
	movq	800(%rsp), %rdx
	movq	stderr(%rip), %rdi
	.loc	9 439 0                 # Head.c:439:0
	movl	$.L.str1865, %esi
	xorb	%al, %al
	.loc	9 442 0                 # Head.c:442:0
	callq	fprintf
.LBB10_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edi, %edi
	.loc	9 441 0                 # Head.c:441:0
	movl	$.L.str956, %esi
	movq	%rbx, %rdx
	callq	strtok_r
	movq	%rax, 800(%rsp)
	testq	%rax, %rax
	jne	.LBB10_4
# BB#5:                                 # %while.end
	.loc	9 444 0                 # Head.c:444:0
	movl	$0, 828(%rsp)
	jmp	.LBB10_6
.LBB10_1:                               # %if.then
	.loc	9 437 0                 # Head.c:437:0
	movl	$-1, 828(%rsp)
.LBB10_6:                               # %return
	.loc	9 445 0                 # Head.c:445:0
	movl	828(%rsp), %eax
	addq	$832, %rsp              # imm = 0x340
	popq	%rbx
	ret
.Ltmp309:
.Ltmp310:
	.size	parse_list_reply, .Ltmp310-parse_list_reply
.Lfunc_end10:
	.cfi_endproc

	.globl	loadconfig
	.align	16, 0x90
	.type	loadconfig,@function
loadconfig:                             # @loadconfig
	.cfi_startproc
.Lfunc_begin11:
	.loc	11 17 0                 # loadrc.c:17:0
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp316:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp317:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp318:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp319:
	.cfi_def_cfa_offset 40
	subq	$1480, %rsp             # imm = 0x5C8
.Ltmp320:
	.cfi_def_cfa_offset 1520
.Ltmp321:
	.cfi_offset %rbx, -40
.Ltmp322:
	.cfi_offset %r12, -32
.Ltmp323:
	.cfi_offset %r14, -24
.Ltmp324:
	.cfi_offset %r15, -16
	movq	%rdi, 1472(%rsp)
	.loc	11 30 0 prologue_end    # loadrc.c:30:0
.Ltmp325:
	movq	.Lloadconfig.variables+48(%rip), %rax
	movq	%rax, 80(%rsp)
	vmovaps	.Lloadconfig.variables+32(%rip), %xmm0
	vmovaps	%xmm0, 64(%rsp)
	vmovaps	.Lloadconfig.variables+16(%rip), %xmm0
	vmovaps	%xmm0, 48(%rsp)
	vmovaps	.Lloadconfig.variables(%rip), %xmm0
	vmovaps	%xmm0, 32(%rsp)
	.loc	11 32 0                 # loadrc.c:32:0
	movl	$7, 16(%rsp)
	.loc	11 33 0                 # loadrc.c:33:0
	movl	$0, 12(%rsp)
	.loc	11 34 0                 # loadrc.c:34:0
	movl	$0, 8(%rsp)
	.loc	11 36 0                 # loadrc.c:36:0
	movq	1472(%rsp), %rdi
	movl	$.L.str785, %esi
	callq	fopen
	movq	%rax, 1464(%rsp)
	testq	%rax, %rax
	je	.LBB11_53
# BB#1:                                 # %if.end
	.loc	11 40 0                 # loadrc.c:40:0
	movl	$0, 20(%rsp)
	.loc	11 41 0                 # loadrc.c:41:0
	movl	$0, 28(%rsp)
	leaq	432(%rsp), %r12
	leaq	368(%rsp), %r14
	leaq	112(%rsp), %r15
	jmp	.LBB11_2
.LBB11_46:                              # %sw.bb160
                                        #   in Loop: Header=BB11_2 Depth=1
	.loc	11 84 0                 # loadrc.c:84:0
.Ltmp326:
	movq	%r15, %rsi
	movl	$256, %edx              # imm = 0x100
	callq	strncpy
.Ltmp327:
	.align	16, 0x90
.LBB11_2:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_6 Depth 2
                                        #     Child Loop BB11_11 Depth 2
                                        #     Child Loop BB11_18 Depth 2
                                        #     Child Loop BB11_24 Depth 2
                                        #     Child Loop BB11_29 Depth 2
                                        #     Child Loop BB11_39 Depth 2
	.loc	11 42 0                 # loadrc.c:42:0
	movq	1464(%rsp), %rdx
	movq	%r12, %rdi
	movl	$1024, %esi             # imm = 0x400
	callq	fgets
	testq	%rax, %rax
	je	.LBB11_52
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB11_2 Depth=1
	.loc	11 43 0                 # loadrc.c:43:0
.Ltmp328:
	incl	20(%rsp)
	.loc	11 44 0                 # loadrc.c:44:0
	movsbl	432(%rsp), %eax
	cmpl	$35, %eax
	je	.LBB11_2
# BB#4:                                 # %if.end7
                                        #   in Loop: Header=BB11_2 Depth=1
	.loc	11 46 0                 # loadrc.c:46:0
	movq	%r12, %rdi
	callq	strlen
	movl	%eax, 12(%rsp)
	cmpl	$2, %eax
	jl	.LBB11_2
# BB#5:                                 # %if.end14
                                        #   in Loop: Header=BB11_2 Depth=1
	.loc	11 48 0                 # loadrc.c:48:0
	movq	%r12, 104(%rsp)
	.loc	11 49 0                 # loadrc.c:49:0
	movq	%r14, 96(%rsp)
	jmp	.LBB11_6
	.align	16, 0x90
.LBB11_9:                               # %while.body26
                                        #   in Loop: Header=BB11_6 Depth=2
	.loc	11 51 0                 # loadrc.c:51:0
	incq	104(%rsp)
.LBB11_6:                               # %while.cond17
                                        #   Parent Loop BB11_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	11 50 0                 # loadrc.c:50:0
	movq	104(%rsp), %rax
	movsbq	(%rax), %rbx
	callq	__ctype_b_loc
	movq	(%rax), %rcx
	xorb	%al, %al
	testb	$32, 1(%rcx,%rbx,2)
	je	.LBB11_8
# BB#7:                                 # %land.rhs
                                        #   in Loop: Header=BB11_6 Depth=2
	movq	104(%rsp), %rax
	subq	%r12, %rax
	movslq	12(%rsp), %rcx
	cmpq	%rcx, %rax
	setl	%al
.LBB11_8:                               # %land.end
                                        #   in Loop: Header=BB11_6 Depth=2
	cmpb	$1, %al
	je	.LBB11_9
# BB#10:                                # %while.end
                                        #   in Loop: Header=BB11_2 Depth=1
	.loc	11 52 0                 # loadrc.c:52:0
	movl	$0, 8(%rsp)
	jmp	.LBB11_11
	.align	16, 0x90
.LBB11_16:                              # %while.body51
                                        #   in Loop: Header=BB11_11 Depth=2
	.loc	11 54 0                 # loadrc.c:54:0
	movq	104(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 104(%rsp)
	movb	(%rax), %al
	movq	96(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 96(%rsp)
	movb	%al, (%rcx)
.LBB11_11:                              # %while.cond27
                                        #   Parent Loop BB11_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	11 53 0                 # loadrc.c:53:0
	movq	104(%rsp), %rax
	movsbq	(%rax), %rbx
	callq	__ctype_b_loc
	movq	(%rax), %rcx
	xorb	%al, %al
	testb	$-128, 1(%rcx,%rbx,2)
	je	.LBB11_15
# BB#12:                                # %land.lhs.true
                                        #   in Loop: Header=BB11_11 Depth=2
	movq	104(%rsp), %rcx
	movsbl	(%rcx), %ecx
	cmpl	$61, %ecx
	je	.LBB11_15
# BB#13:                                # %land.lhs.true38
                                        #   in Loop: Header=BB11_11 Depth=2
	movl	8(%rsp), %ecx
	leal	1(%rcx), %edx
	movl	%edx, 8(%rsp)
	cmpl	$61, %ecx
	jg	.LBB11_15
# BB#14:                                # %land.rhs42
                                        #   in Loop: Header=BB11_11 Depth=2
	movq	104(%rsp), %rax
	subq	%r12, %rax
	movslq	12(%rsp), %rcx
	cmpq	%rcx, %rax
	setl	%al
	.align	16, 0x90
.LBB11_15:                              # %land.end50
                                        #   in Loop: Header=BB11_11 Depth=2
	cmpb	$1, %al
	je	.LBB11_16
# BB#17:                                # %while.end54
                                        #   in Loop: Header=BB11_2 Depth=1
	.loc	11 55 0                 # loadrc.c:55:0
	movl	$0, 8(%rsp)
	.loc	11 56 0                 # loadrc.c:56:0
	movq	96(%rsp), %rax
	movb	$0, (%rax)
	.loc	11 57 0                 # loadrc.c:57:0
	movq	%r15, 96(%rsp)
	jmp	.LBB11_18
	.align	16, 0x90
.LBB11_23:                              # %while.body77
                                        #   in Loop: Header=BB11_18 Depth=2
	.loc	11 59 0                 # loadrc.c:59:0
	incq	104(%rsp)
.LBB11_18:                              # %while.cond56
                                        #   Parent Loop BB11_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	11 58 0                 # loadrc.c:58:0
	movq	104(%rsp), %rax
	movsbl	(%rax), %ecx
	xorb	%al, %al
	testl	%ecx, %ecx
	je	.LBB11_22
# BB#19:                                # %land.lhs.true60
                                        #   in Loop: Header=BB11_18 Depth=2
	movq	104(%rsp), %rcx
	movsbl	(%rcx), %ecx
	cmpl	$10, %ecx
	je	.LBB11_22
# BB#20:                                # %land.lhs.true64
                                        #   in Loop: Header=BB11_18 Depth=2
	movq	104(%rsp), %rcx
	movsbl	(%rcx), %ecx
	cmpl	$61, %ecx
	je	.LBB11_22
# BB#21:                                # %land.rhs68
                                        #   in Loop: Header=BB11_18 Depth=2
	movq	104(%rsp), %rax
	subq	%r12, %rax
	movslq	12(%rsp), %rcx
	cmpq	%rcx, %rax
	setl	%al
	.align	16, 0x90
.LBB11_22:                              # %land.end76
                                        #   in Loop: Header=BB11_18 Depth=2
	cmpb	$1, %al
	je	.LBB11_23
	.align	16, 0x90
.LBB11_24:                              # %while.end79
                                        #   Parent Loop BB11_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	11 60 0                 # loadrc.c:60:0
	incq	104(%rsp)
	.loc	11 61 0                 # loadrc.c:61:0
	movq	104(%rsp), %rax
	movsbq	(%rax), %rbx
	callq	__ctype_b_loc
	movq	(%rax), %rcx
	xorb	%al, %al
	testb	$32, 1(%rcx,%rbx,2)
	je	.LBB11_26
# BB#25:                                # %land.rhs89
                                        #   in Loop: Header=BB11_24 Depth=2
	movq	104(%rsp), %rax
	subq	%r12, %rax
	movslq	12(%rsp), %rcx
	cmpq	%rcx, %rax
	setl	%al
.LBB11_26:                              # %land.end97
                                        #   in Loop: Header=BB11_24 Depth=2
	cmpb	$1, %al
	je	.LBB11_24
# BB#27:                                # %while.end100
                                        #   in Loop: Header=BB11_2 Depth=1
	.loc	11 63 0                 # loadrc.c:63:0
	movq	104(%rsp), %rax
	movsbl	(%rax), %eax
	cmpl	$34, %eax
	jne	.LBB11_29
# BB#28:                                # %if.then104
                                        #   in Loop: Header=BB11_2 Depth=1
	.loc	11 64 0                 # loadrc.c:64:0
	incq	104(%rsp)
	jmp	.LBB11_29
	.align	16, 0x90
.LBB11_35:                              # %while.body132
                                        #   in Loop: Header=BB11_29 Depth=2
	.loc	11 66 0                 # loadrc.c:66:0
	movq	104(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 104(%rsp)
	movb	(%rax), %al
	movq	96(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 96(%rsp)
	movb	%al, (%rcx)
.LBB11_29:                              # %while.cond107
                                        #   Parent Loop BB11_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	11 65 0                 # loadrc.c:65:0
	movq	104(%rsp), %rax
	movsbl	(%rax), %ecx
	xorb	%al, %al
	testl	%ecx, %ecx
	je	.LBB11_34
# BB#30:                                # %land.lhs.true111
                                        #   in Loop: Header=BB11_29 Depth=2
	movq	104(%rsp), %rcx
	movsbl	(%rcx), %ecx
	cmpl	$10, %ecx
	je	.LBB11_34
# BB#31:                                # %land.lhs.true115
                                        #   in Loop: Header=BB11_29 Depth=2
	movq	104(%rsp), %rcx
	movsbl	(%rcx), %ecx
	cmpl	$34, %ecx
	je	.LBB11_34
# BB#32:                                # %land.lhs.true119
                                        #   in Loop: Header=BB11_29 Depth=2
	movl	8(%rsp), %ecx
	leal	1(%rcx), %edx
	movl	%edx, 8(%rsp)
	cmpl	$253, %ecx
	jg	.LBB11_34
# BB#33:                                # %land.rhs123
                                        #   in Loop: Header=BB11_29 Depth=2
	movq	104(%rsp), %rax
	subq	%r12, %rax
	movslq	12(%rsp), %rcx
	cmpq	%rcx, %rax
	setl	%al
	.align	16, 0x90
.LBB11_34:                              # %land.end131
                                        #   in Loop: Header=BB11_29 Depth=2
	cmpb	$1, %al
	je	.LBB11_35
# BB#36:                                # %while.end135
                                        #   in Loop: Header=BB11_2 Depth=1
	.loc	11 67 0                 # loadrc.c:67:0
	movq	96(%rsp), %rax
	leaq	-1(%rax), %rcx
	movq	%rcx, 96(%rsp)
	movb	$0, (%rax)
	.loc	11 68 0                 # loadrc.c:68:0
	movsbl	368(%rsp), %eax
	testl	%eax, %eax
	je	.LBB11_2
# BB#37:                                # %lor.lhs.false
                                        #   in Loop: Header=BB11_2 Depth=1
	movsbl	112(%rsp), %eax
	testl	%eax, %eax
	je	.LBB11_2
# BB#38:                                # %if.end146
                                        #   in Loop: Header=BB11_2 Depth=1
	.loc	11 70 0                 # loadrc.c:70:0
	movl	$0, 24(%rsp)
	.loc	11 71 0                 # loadrc.c:71:0
.Ltmp329:
	movl	$0, 28(%rsp)
	jmp	.LBB11_39
	.align	16, 0x90
.LBB11_54:                              # %for.inc
                                        #   in Loop: Header=BB11_39 Depth=2
	incl	28(%rsp)
.LBB11_39:                              # %for.cond
                                        #   Parent Loop BB11_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	28(%rsp), %eax
	cmpl	16(%rsp), %eax
	jge	.LBB11_42
# BB#40:                                # %for.body
                                        #   in Loop: Header=BB11_39 Depth=2
	.loc	11 72 0                 # loadrc.c:72:0
.Ltmp330:
	movslq	28(%rsp), %rax
	movq	32(%rsp,%rax,8), %rsi
	movq	%r14, %rdi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB11_54
# BB#41:                                # %if.then155
                                        #   in Loop: Header=BB11_2 Depth=1
	.loc	11 73 0                 # loadrc.c:73:0
.Ltmp331:
	movl	28(%rsp), %eax
	movl	%eax, 24(%rsp)
.Ltmp332:
.LBB11_42:                              # %for.end
                                        #   in Loop: Header=BB11_2 Depth=1
	.loc	11 79 0                 # loadrc.c:79:0
	movl	24(%rsp), %eax
	cmpq	$6, %rax
	ja	.LBB11_2
# BB#43:                                # %for.end
                                        #   in Loop: Header=BB11_2 Depth=1
	jmpq	*.LJTI11_0(,%rax,8)
.LBB11_44:                              # %sw.bb
                                        #   in Loop: Header=BB11_2 Depth=1
	.loc	11 81 0                 # loadrc.c:81:0
.Ltmp333:
	movq	1472(%rsp), %rdx
	movq	stderr(%rip), %rdi
	movl	$.L.str987, %esi
	movq	%r14, %rcx
	xorb	%al, %al
	callq	fprintf
	jmp	.LBB11_2
.LBB11_45:                              # %sw.bb160
                                        #   in Loop: Header=BB11_2 Depth=1
	.loc	11 84 0                 # loadrc.c:84:0
	movl	$ftpanonymoususer, %edi
	jmp	.LBB11_46
.LBB11_47:                              # %sw.bb163
                                        #   in Loop: Header=BB11_2 Depth=1
	.loc	11 87 0                 # loadrc.c:87:0
	movl	$ftpanonymouspass, %edi
	jmp	.LBB11_46
.LBB11_48:                              # %sw.bb166
                                        #   in Loop: Header=BB11_2 Depth=1
	.loc	11 90 0                 # loadrc.c:90:0
	movl	$http_proxyhost, %edi
	jmp	.LBB11_46
.LBB11_49:                              # %sw.bb169
                                        #   in Loop: Header=BB11_2 Depth=1
	.loc	11 93 0                 # loadrc.c:93:0
	movl	$http_proxyuser, %edi
	jmp	.LBB11_46
.LBB11_50:                              # %sw.bb172
                                        #   in Loop: Header=BB11_2 Depth=1
	.loc	11 96 0                 # loadrc.c:96:0
	movl	$http_proxypass, %edi
	jmp	.LBB11_46
.LBB11_51:                              # %sw.bb175
                                        #   in Loop: Header=BB11_2 Depth=1
	.loc	11 99 0                 # loadrc.c:99:0
	movq	%r15, %rdi
	callq	atoi
	movl	%eax, preferredthread(%rip)
	jmp	.LBB11_2
.Ltmp334:
.LBB11_52:                              # %while.end178
	.loc	11 103 0                # loadrc.c:103:0
	movq	1464(%rsp), %rdi
	callq	fclose
	.loc	11 104 0                # loadrc.c:104:0
	addq	$1480, %rsp             # imm = 0x5C8
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	ret
.LBB11_53:                              # %if.then
	.loc	11 37 0                 # loadrc.c:37:0
.Ltmp335:
	movq	1472(%rsp), %rdx
	movq	stderr(%rip), %rdi
	movl	$.L.str886, %esi
	xorb	%al, %al
	callq	fprintf
	movl	$-1, %edi
	.loc	11 38 0                 # loadrc.c:38:0
	callq	exit
.Ltmp336:
.Ltmp337:
	.size	loadconfig, .Ltmp337-loadconfig
.Lfunc_end11:
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI11_0:
	.quad	.LBB11_44
	.quad	.LBB11_45
	.quad	.LBB11_47
	.quad	.LBB11_48
	.quad	.LBB11_49
	.quad	.LBB11_50
	.quad	.LBB11_51

	.text
	.globl	createrc
	.align	16, 0x90
	.type	createrc,@function
createrc:                               # @createrc
	.cfi_startproc
.Lfunc_begin12:
	.loc	11 108 0                # loadrc.c:108:0
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp341:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp342:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp343:
	.cfi_def_cfa_offset 48
.Ltmp344:
	.cfi_offset %rbx, -24
.Ltmp345:
	.cfi_offset %r14, -16
	movq	%rdi, 16(%rsp)
	.loc	11 111 0 prologue_end   # loadrc.c:111:0
.Ltmp346:
	movl	$.L.str1090, %esi
	callq	fopen
	movq	%rax, 8(%rsp)
	testq	%rax, %rax
	je	.LBB12_1
# BB#2:                                 # %if.end
	.loc	11 116 0                # loadrc.c:116:0
	movq	8(%rsp), %rdi
	movl	$.L.str1292, %esi
	xorb	%al, %al
	callq	fprintf
	.loc	11 117 0                # loadrc.c:117:0
	movq	8(%rsp), %rdi
	movl	$.L.str1393, %esi
	xorb	%al, %al
	callq	fprintf
	.loc	11 119 0                # loadrc.c:119:0
	movq	8(%rsp), %rdi
	callq	fclose
	jmp	.LBB12_3
.LBB12_1:                               # %if.then
	.loc	11 112 0                # loadrc.c:112:0
.Ltmp347:
	movq	16(%rsp), %r14
	movq	stderr(%rip), %rbx
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movq	%rbx, %rdi
	movl	$.L.str1191, %esi
	movq	%r14, %rdx
	movq	%rax, %rcx
	xorb	%al, %al
	callq	fprintf
.Ltmp348:
.LBB12_3:                               # %return
	.loc	11 120 0                # loadrc.c:120:0
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	ret
.Ltmp349:
.Ltmp350:
	.size	createrc, .Ltmp350-createrc
.Lfunc_end12:
	.cfi_endproc

	.globl	readrc
	.align	16, 0x90
	.type	readrc,@function
readrc:                                 # @readrc
	.cfi_startproc
.Lfunc_begin13:
	.loc	11 124 0                # loadrc.c:124:0
# BB#0:                                 # %entry
	.loc	11 132 0 prologue_end   # loadrc.c:132:0
	pushq	%rbx
.Ltmp353:
	.cfi_def_cfa_offset 16
	subq	$1200, %rsp             # imm = 0x4B0
.Ltmp354:
	.cfi_def_cfa_offset 1216
.Ltmp355:
	.cfi_offset %rbx, -16
	callq	getuid
	movl	%eax, %edi
	callq	getpwuid
	movq	%rax, 1192(%rsp)
	testq	%rax, %rax
	je	.LBB13_11
# BB#1:                                 # %if.end
	.loc	11 135 0                # loadrc.c:135:0
	movq	1192(%rsp), %rax
	movq	32(%rax), %rcx
	leaq	16(%rsp), %rbx
	movq	%rbx, %rdi
	movl	$1020, %esi             # imm = 0x3FC
	movl	$.L.str1494, %edx
	xorb	%al, %al
	callq	snprintf
	leaq	1048(%rsp), %rsi
	.loc	11 136 0                # loadrc.c:136:0
	movq	%rbx, %rdi
	callq	stat
	cmpl	$-1, %eax
	jne	.LBB13_5
# BB#2:                                 # %if.then6
	.loc	11 137 0                # loadrc.c:137:0
.Ltmp356:
	callq	__errno_location
	cmpl	$2, (%rax)
	jne	.LBB13_4
# BB#3:                                 # %if.then9
	leaq	16(%rsp), %rdi
	.loc	11 138 0                # loadrc.c:138:0
	callq	createrc
	jmp	.LBB13_6
.Ltmp357:
.LBB13_5:                               # %if.else16
	leaq	16(%rsp), %rdi
	.loc	11 145 0                # loadrc.c:145:0
	callq	loadconfig
.LBB13_6:                               # %if.end18
	.loc	11 147 0                # loadrc.c:147:0
	movl	$http_proxyhost, %edi
	callq	strlen
	testq	%rax, %rax
	je	.LBB13_11
# BB#7:                                 # %if.then21
	.loc	11 148 0                # loadrc.c:148:0
.Ltmp358:
	movl	$http_proxyhost, %edi
	movl	$.L.str1696, %esi
	callq	strtok
	movq	%rax, 8(%rsp)
	testq	%rax, %rax
	je	.LBB13_11
# BB#8:                                 # %if.then24
	.loc	11 149 0                # loadrc.c:149:0
.Ltmp359:
	movq	8(%rsp), %rsi
	movl	$http_proxyhost, %edi
	movl	$255, %edx
	callq	strncpy
	xorl	%edi, %edi
	.loc	11 150 0                # loadrc.c:150:0
	movl	$.L.str1696, %esi
	callq	strtok
	movq	%rax, 8(%rsp)
	testq	%rax, %rax
	.loc	11 151 0                # loadrc.c:151:0
	je	.LBB13_10
# BB#9:                                 # %if.then28
	.loc	11 152 0                # loadrc.c:152:0
.Ltmp360:
	movq	8(%rsp), %rdi
	callq	atoi
	movl	%eax, http_proxyport(%rip)
	jmp	.LBB13_11
.Ltmp361:
.LBB13_10:                              # %if.else30
	.loc	11 154 0                # loadrc.c:154:0
	movl	$80, http_proxyport(%rip)
.Ltmp362:
.LBB13_11:                              # %if.end33
	.loc	11 169 0                # loadrc.c:169:0
	addq	$1200, %rsp             # imm = 0x4B0
	popq	%rbx
	ret
.LBB13_4:                               # %if.else
	.loc	11 140 0                # loadrc.c:140:0
.Ltmp363:
	movq	stderr(%rip), %rbx
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	leaq	16(%rsp), %rdx
	movq	%rbx, %rdi
	movl	$.L.str1595, %esi
	movq	%rax, %rcx
	xorb	%al, %al
	callq	fprintf
	movl	$1, %edi
	.loc	11 141 0                # loadrc.c:141:0
	callq	exit
.Ltmp364:
.Ltmp365:
	.size	readrc, .Ltmp365-readrc
.Lfunc_end13:
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
.Lfunc_begin14:
	.loc	13 49 0                 # main.c:49:0
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp370:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp371:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp372:
	.cfi_def_cfa_offset 32
	subq	$220592, %rsp           # imm = 0x35DB0
.Ltmp373:
	.cfi_def_cfa_offset 220624
.Ltmp374:
	.cfi_offset %rbx, -32
.Ltmp375:
	.cfi_offset %r14, -24
.Ltmp376:
	.cfi_offset %r15, -16
	movl	$0, 220588(%rsp)
	movl	%edi, 220584(%rsp)
	movq	%rsi, 220576(%rsp)
	.loc	13 50 0 prologue_end    # main.c:50:0
.Ltmp377:
	movl	$0, 220568(%rsp)
	.loc	13 59 0                 # main.c:59:0
	callq	pthread_self
	movq	%rax, main_tid(%rip)
	movl	$1, %edi
	movl	$34856, %esi            # imm = 0x8828
	.loc	13 64 0                 # main.c:64:0
	callq	calloc
	leaq	8(%rsp), %rbx
	movq	%rax, req(%rip)
	.loc	13 69 0                 # main.c:69:0
	movq	$0, wthread(%rip)
	.loc	13 79 0                 # main.c:79:0
	movq	%rbx, %rdi
	callq	sigfillset
	xorl	%edi, %edi
	.loc	13 80 0                 # main.c:80:0
	movq	%rbx, %rsi
	xorl	%edx, %edx
	callq	pthread_sigmask
	xorl	%edi, %edi
	xorl	%esi, %esi
	.loc	13 92 0                 # main.c:92:0
	callq	pthread_setcanceltype
	xorb	%al, %al
	.loc	13 96 0                 # main.c:96:0
	callq	readrc
	.loc	13 100 0                # main.c:100:0
	cmpl	$-1, preferredthread(%rip)
	je	.LBB14_2
# BB#1:                                 # %if.then
	.loc	13 101 0                # main.c:101:0
	movl	preferredthread(%rip), %eax
	movl	%eax, nthreads(%rip)
	jmp	.LBB14_2
.LBB14_9:                               # %sw.bb10
                                        #   in Loop: Header=BB14_2 Depth=1
	movl	$10240, %edi            # imm = 0x2800
	.loc	13 109 0                # main.c:109:0
.Ltmp378:
	addq	req(%rip), %rdi
	movq	optarg(%rip), %rsi
	movl	$8191, %edx             # imm = 0x1FFF
	callq	strncpy
.Ltmp379:
	.align	16, 0x90
.LBB14_2:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	.loc	13 103 0                # main.c:103:0
	cmpl	$0, 220568(%rsp)
	movb	$0, %al
	jne	.LBB14_4
# BB#3:                                 # %land.rhs
                                        #   in Loop: Header=BB14_2 Depth=1
	movq	220576(%rsp), %rsi
	movl	220584(%rsp), %edi
	movl	$.L.str103, %edx
	callq	getopt
	movl	%eax, 220572(%rsp)
	cmpl	$-1, %eax
	setne	%al
.LBB14_4:                               # %land.end
                                        #   in Loop: Header=BB14_2 Depth=1
	cmpb	$1, %al
	jne	.LBB14_15
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB14_2 Depth=1
	.loc	13 104 0                # main.c:104:0
.Ltmp380:
	movl	220572(%rsp), %eax
	cmpl	$117, %eax
	ja	.LBB14_13
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB14_2 Depth=1
	addl	$-104, %eax
	cmpl	$8, %eax
	ja	.LBB14_14
# BB#7:                                 # %while.body
                                        #   in Loop: Header=BB14_2 Depth=1
	jmpq	*.LJTI14_0(,%rax,8)
.LBB14_10:                              # %sw.bb12
                                        #   in Loop: Header=BB14_2 Depth=1
	.loc	13 112 0                # main.c:112:0
.Ltmp381:
	movl	$1, fsuggested(%rip)
	.loc	13 113 0                # main.c:113:0
	movq	optarg(%rip), %rdi
	callq	atoi
	movl	%eax, nthreads(%rip)
	cmpl	$11, %eax
	jl	.LBB14_2
	jmp	.LBB14_11
.LBB14_8:                               # %sw.bb
                                        #   in Loop: Header=BB14_2 Depth=1
	.loc	13 106 0                # main.c:106:0
	movq	optarg(%rip), %rdi
	callq	atoi
	movq	req(%rip), %rcx
	movl	%eax, 34832(%rcx)
	jmp	.LBB14_2
.LBB14_13:                              # %while.body
	cmpl	$118, %eax
	jne	.LBB14_14
# BB#38:                                # %sw.bb19
	.loc	13 124 0                # main.c:124:0
	movl	$.L.str4109, %edi
	movl	$.L.str3108, %esi
	xorb	%al, %al
	callq	printf
	xorl	%edi, %edi
	.loc	13 125 0                # main.c:125:0
	callq	exit
.LBB14_14:                              # %sw.default
	.loc	13 128 0                # main.c:128:0
	movl	$1, 220568(%rsp)
.Ltmp382:
.LBB14_19:                              # %if.then22
	xorb	%al, %al
	.loc	13 136 0                # main.c:136:0
.Ltmp383:
	callq	usage
	movl	$1, %edi
	.loc	13 137 0                # main.c:137:0
	callq	exit
.Ltmp384:
.LBB14_15:                              # %while.end
	.loc	13 135 0                # main.c:135:0
	cmpl	$0, 220568(%rsp)
	jne	.LBB14_19
# BB#16:                                # %if.end23
	.loc	13 140 0                # main.c:140:0
	cmpl	$1, fsuggested(%rip)
	jne	.LBB14_20
# BB#17:                                # %land.lhs.true
	cmpl	$0, nthreads(%rip)
	je	.LBB14_18
.LBB14_20:                              # %if.end28
	.loc	13 146 0                # main.c:146:0
	cmpl	$2, 220584(%rsp)
	jne	.LBB14_23
# BB#21:                                # %if.then30
	.loc	13 147 0                # main.c:147:0
	movq	220576(%rsp), %rax
	movq	8(%rax), %rdi
	jmp	.LBB14_22
.LBB14_23:                              # %if.else
	.loc	13 149 0                # main.c:149:0
	movl	optind(%rip), %eax
	cmpl	220584(%rsp), %eax
	jge	.LBB14_26
# BB#24:                                # %if.then33
	.loc	13 150 0                # main.c:150:0
	cmpl	$3, 220584(%rsp)
	jl	.LBB14_19
# BB#25:                                # %if.then35
	.loc	13 151 0                # main.c:151:0
	movslq	optind(%rip), %rax
	movq	220576(%rsp), %rcx
	movq	(%rcx,%rax,8), %rdi
.LBB14_22:                              # %if.then30
	.loc	13 147 0                # main.c:147:0
	callq	strdup
	movq	%rax, 136(%rsp)
	jmp	.LBB14_27
.LBB14_26:                              # %if.else40
	.loc	13 157 0                # main.c:157:0
	movl	optind(%rip), %eax
	cmpl	220584(%rsp), %eax
	je	.LBB14_19
.LBB14_27:                              # %if.end45
	.loc	13 162 0                # main.c:162:0
	movq	req(%rip), %rsi
	movq	136(%rsp), %rdi
	callq	parse_url
	.loc	13 165 0                # main.c:165:0
	movq	req(%rip), %rdi
	addq	$10240, %rdi            # imm = 0x2800
	callq	strlen
	testq	%rax, %rax
	jne	.LBB14_29
# BB#28:                                # %if.then50
	.loc	13 166 0                # main.c:166:0
	movq	req(%rip), %rsi
	leaq	10240(%rsi), %rdi
	addq	$2048, %rsi             # imm = 0x800
	movl	$8190, %edx             # imm = 0x1FFE
	callq	strncpy
.LBB14_29:                              # %if.end55
	leaq	144(%rsp), %r14
	.loc	13 168 0                # main.c:168:0
	movq	%r14, %rdi
	movl	$8190, %esi             # imm = 0x1FFE
	callq	getcwd
	.loc	13 169 0                # main.c:169:0
	movq	%r14, %rdi
	callq	strlen
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	strlen
	movl	$8190, %edx             # imm = 0x1FFE
	subq	%rax, %rdx
	leaq	144(%rsp,%rbx), %rdi
	movl	$.L.str6111, %esi
	callq	strncpy
	.loc	13 170 0                # main.c:170:0
	movq	%r14, %rdi
	callq	strlen
	movq	%rax, %r15
	movq	req(%rip), %rbx
	movq	%r14, %rdi
	callq	strlen
	movl	$8189, %edx             # imm = 0x1FFD
	subq	%rax, %rdx
	leaq	144(%rsp,%r15), %rdi
	addq	$10240, %rbx            # imm = 0x2800
	movq	%rbx, %rsi
	callq	strncpy
	.loc	13 171 0                # main.c:171:0
	movq	req(%rip), %rdi
	addq	$10240, %rdi            # imm = 0x2800
	movq	%r14, %rsi
	movl	$8190, %edx             # imm = 0x1FFE
	callq	strncpy
	.loc	13 179 0                # main.c:179:0
	movq	req(%rip), %rax
	movzbl	34844(%rax), %eax
	testl	%eax, %eax
	jne	.LBB14_30
# BB#34:                                # %sw.bb87
	leaq	8344(%rsp), %rdi
	.loc	13 187 0                # main.c:187:0
.Ltmp385:
	callq	read_log
	movl	%eax, 8340(%rsp)
	cmpl	$-1, %eax
	je	.LBB14_36
# BB#35:                                # %if.then91
	leaq	8344(%rsp), %rdi
	xorl	%esi, %esi
	.loc	13 188 0                # main.c:188:0
	callq	resumeDownload
	jmp	.LBB14_37
.LBB14_30:                              # %if.end55
	cmpl	$255, %eax
	jne	.LBB14_37
# BB#31:                                # %sw.bb80
	leaq	8344(%rsp), %rdi
	.loc	13 181 0                # main.c:181:0
	callq	read_log
	movl	%eax, 8340(%rsp)
	cmpl	$-1, %eax
	je	.LBB14_33
# BB#32:                                # %if.then84
	leaq	8344(%rsp), %rdi
	movl	$255, %esi
	.loc	13 182 0                # main.c:182:0
	callq	resumeDownload
	jmp	.LBB14_37
.LBB14_36:                              # %if.else92
	.loc	13 190 0                # main.c:190:0
	movq	req(%rip), %rdi
	callq	startFTP
	jmp	.LBB14_37
.LBB14_33:                              # %if.else85
	.loc	13 184 0                # main.c:184:0
	movq	req(%rip), %rdi
	callq	startHTTP
.Ltmp386:
.LBB14_37:                              # %sw.epilog94
	xorl	%eax, %eax
	.loc	13 193 0                # main.c:193:0
	addq	$220592, %rsp           # imm = 0x35DB0
	popq	%rbx
	popq	%r14
	popq	%r15
	ret
.LBB14_12:                              # %sw.bb17
	.loc	13 119 0                # main.c:119:0
.Ltmp387:
	movl	$.L.str2107, %edi
	movl	$.L.str3108, %esi
	xorb	%al, %al
	callq	printf
	xorb	%al, %al
	.loc	13 120 0                # main.c:120:0
	callq	usage
	xorl	%edi, %edi
	.loc	13 121 0                # main.c:121:0
	callq	exit
.LBB14_11:                              # %if.then15
	.loc	13 114 0                # main.c:114:0
.Ltmp388:
	movl	$.L.str1106, %edi
	movl	$10, %esi
	xorb	%al, %al
	callq	Log
	movl	$1, %edi
	.loc	13 115 0                # main.c:115:0
	callq	exit
.Ltmp389:
.LBB14_18:                              # %if.then26
	.loc	13 141 0                # main.c:141:0
	movq	stderr(%rip), %rdi
	movl	$.L.str5110, %esi
	xorb	%al, %al
	callq	fprintf
	jmp	.LBB14_19
.Ltmp390:
.Ltmp391:
	.size	main, .Ltmp391-main
.Lfunc_end14:
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI14_0:
	.quad	.LBB14_12
	.quad	.LBB14_14
	.quad	.LBB14_14
	.quad	.LBB14_14
	.quad	.LBB14_9
	.quad	.LBB14_14
	.quad	.LBB14_10
	.quad	.LBB14_14
	.quad	.LBB14_8

	.text
	.globl	parse_url
	.align	16, 0x90
	.type	parse_url,@function
parse_url:                              # @parse_url
	.cfi_startproc
.Lfunc_begin15:
	.loc	15 41 0                 # Misc.c:41:0
# BB#0:                                 # %entry
	subq	$40, %rsp
.Ltmp393:
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movq	%rsi, 24(%rsp)
	.loc	15 45 0 prologue_end    # Misc.c:45:0
.Ltmp394:
	movl	$0, 4(%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 12(%rsp)
	.loc	15 46 0                 # Misc.c:46:0
	movq	32(%rsp), %rax
	movq	%rax, 16(%rsp)
	.loc	15 47 0                 # Misc.c:47:0
	movq	32(%rsp), %rdi
	movl	$.L.str114, %esi
	movl	$8, %edx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB15_1
# BB#3:                                 # %if.else
	.loc	15 50 0                 # Misc.c:50:0
	movq	32(%rsp), %rdi
	movl	$.L.str2116, %esi
	movl	$6, %edx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB15_4
# BB#7:                                 # %if.else8
	.loc	15 53 0                 # Misc.c:53:0
	movq	32(%rsp), %rdi
	movl	$.L.str3117, %esi
	movl	$7, %edx
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB15_53
# BB#8:                                 # %if.then11
	movl	$80, %eax
	.loc	15 54 0                 # Misc.c:54:0
.Ltmp395:
	movq	24(%rsp), %rcx
	cmpl	$0, 34832(%rcx)
	je	.LBB15_10
# BB#9:                                 # %cond.false15
	movq	24(%rsp), %rax
	movl	34832(%rax), %eax
.LBB15_10:                              # %cond.end17
	movq	24(%rsp), %rcx
	movl	%eax, 34832(%rcx)
	.loc	15 55 0                 # Misc.c:55:0
	movq	24(%rsp), %rax
	movb	$-1, 34844(%rax)
	jmp	.LBB15_11
.Ltmp396:
.LBB15_4:                               # %if.then4
	movl	$21, %eax
	.loc	15 51 0                 # Misc.c:51:0
.Ltmp397:
	movq	24(%rsp), %rcx
	cmpl	$0, 34832(%rcx)
	je	.LBB15_6
# BB#5:                                 # %cond.false
	movq	24(%rsp), %rax
	movl	34832(%rax), %eax
.LBB15_6:                               # %cond.end
	movq	24(%rsp), %rcx
	movl	%eax, 34832(%rcx)
	.loc	15 52 0                 # Misc.c:52:0
	movq	24(%rsp), %rax
	movb	$0, 34844(%rax)
.Ltmp398:
.LBB15_11:                              # %if.end24
	.loc	15 61 0                 # Misc.c:61:0
	movq	32(%rsp), %rdi
	movl	$.L.str3117, %esi
	movl	$7, %edx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB15_14
# BB#12:                                # %land.lhs.true
	movq	24(%rsp), %rax
	movzbl	34844(%rax), %eax
	cmpl	$255, %eax
	je	.LBB15_13
.LBB15_14:                              # %if.end32
	.loc	15 66 0                 # Misc.c:66:0
	movq	32(%rsp), %rdi
	movl	$.L.str2116, %esi
	movl	$6, %edx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB15_17
# BB#15:                                # %land.lhs.true36
	movq	24(%rsp), %rax
	movzbl	34844(%rax), %eax
	testl	%eax, %eax
	je	.LBB15_16
.LBB15_17:                              # %if.end43
	.loc	15 71 0                 # Misc.c:71:0
	movq	24(%rsp), %rax
	movzbl	34844(%rax), %eax
	cmpl	$255, %eax
	jne	.LBB15_19
# BB#18:                                # %cond.true48
	movq	32(%rsp), %rax
	addq	$7, %rax
	jmp	.LBB15_20
.LBB15_19:                              # %cond.false49
	movq	32(%rsp), %rax
	addq	$6, %rax
.LBB15_20:                              # %cond.end51
	movq	%rax, 16(%rsp)
	.loc	15 72 0                 # Misc.c:72:0
.Ltmp399:
	movl	$0, 12(%rsp)
	jmp	.LBB15_21
	.align	16, 0x90
.LBB15_37:                              # %for.inc
                                        #   in Loop: Header=BB15_21 Depth=1
	.loc	15 102 0                # Misc.c:102:0
.Ltmp400:
	movq	16(%rsp), %rax
	movb	(%rax), %al
	movq	24(%rsp), %rcx
	movslq	12(%rsp), %rdx
	movb	%al, (%rcx,%rdx)
.Ltmp401:
	.loc	15 72 0                 # Misc.c:72:0
	incl	12(%rsp)
	incq	16(%rsp)
.LBB15_21:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_25 Depth 2
                                        #     Child Loop BB15_28 Depth 2
                                        #     Child Loop BB15_31 Depth 2
                                        #     Child Loop BB15_32 Depth 2
	movq	16(%rsp), %rax
	movsbl	(%rax), %eax
	cmpl	$47, %eax
	je	.LBB15_38
# BB#22:                                # %for.body
                                        #   in Loop: Header=BB15_21 Depth=1
	.loc	15 73 0                 # Misc.c:73:0
.Ltmp402:
	cmpl	$1025, 12(%rsp)         # imm = 0x401
	jge	.LBB15_23
# BB#24:                                # %if.end60
                                        #   in Loop: Header=BB15_21 Depth=1
	.loc	15 77 0                 # Misc.c:77:0
	movq	16(%rsp), %rax
	movsbl	(%rax), %eax
	cmpl	$58, %eax
	jne	.LBB15_37
	jmp	.LBB15_25
	.align	16, 0x90
.LBB15_26:                              # %while.body
                                        #   in Loop: Header=BB15_25 Depth=2
	.loc	15 79 0                 # Misc.c:79:0
.Ltmp403:
	movq	16(%rsp), %rax
	leaq	-1(%rax), %rcx
	movq	%rcx, 16(%rsp)
	movb	-1(%rax), %al
	movslq	8(%rsp), %rcx
	leal	1(%rcx), %edx
	movl	%edx, 8(%rsp)
	movq	24(%rsp), %rdx
	movb	%al, 18448(%rdx,%rcx)
	.loc	15 80 0                 # Misc.c:80:0
	decl	12(%rsp)
.Ltmp404:
.LBB15_25:                              # %while.cond
                                        #   Parent Loop BB15_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	15 78 0                 # Misc.c:78:0
	movq	16(%rsp), %rax
	movsbl	(%rax), %eax
	cmpl	$47, %eax
	jne	.LBB15_26
# BB#27:                                # %while.end
                                        #   in Loop: Header=BB15_21 Depth=1
	.loc	15 82 0                 # Misc.c:82:0
	movl	8(%rsp), %eax
	decl	%eax
	movl	%eax, 8(%rsp)
	movslq	%eax, %rax
	movq	24(%rsp), %rcx
	movb	$0, 18448(%rcx,%rax)
	.loc	15 83 0                 # Misc.c:83:0
	movq	24(%rsp), %rdi
	addq	$18448, %rdi            # imm = 0x4810
	callq	revstr
	jmp	.LBB15_28
	.align	16, 0x90
.LBB15_29:                              # %while.body77
                                        #   in Loop: Header=BB15_28 Depth=2
	.loc	15 85 0                 # Misc.c:85:0
	incq	16(%rsp)
.LBB15_28:                              # %while.cond73
                                        #   Parent Loop BB15_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rsp), %rax
	movsbl	(%rax), %eax
	cmpl	$58, %eax
	je	.LBB15_31
	jmp	.LBB15_29
	.align	16, 0x90
.LBB15_30:                              # %if.end101
                                        #   in Loop: Header=BB15_31 Depth=2
	.loc	15 98 0                 # Misc.c:98:0
.Ltmp405:
	incq	16(%rsp)
.LBB15_31:                              # %while.body81
                                        #   Parent Loop BB15_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	15 88 0                 # Misc.c:88:0
	movq	16(%rsp), %rax
	movsbl	(%rax), %eax
	cmpl	$58, %eax
	jne	.LBB15_30
	jmp	.LBB15_32
	.align	16, 0x90
.LBB15_35:                              # %if.end95
                                        #   in Loop: Header=BB15_32 Depth=2
	.loc	15 94 0                 # Misc.c:94:0
.Ltmp406:
	movq	16(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 16(%rsp)
	movb	1(%rax), %al
	movslq	4(%rsp), %rcx
	leal	1(%rcx), %edx
	movl	%edx, 4(%rsp)
	movq	24(%rsp), %rdx
	movb	%al, 26640(%rdx,%rcx)
.Ltmp407:
.LBB15_32:                              # %while.cond86
                                        #   Parent Loop BB15_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	15 89 0                 # Misc.c:89:0
	movq	16(%rsp), %rax
	movsbl	(%rax), %eax
	cmpl	$64, %eax
	je	.LBB15_36
# BB#33:                                # %while.body90
                                        #   in Loop: Header=BB15_32 Depth=2
	.loc	15 90 0                 # Misc.c:90:0
.Ltmp408:
	cmpl	$8193, 4(%rsp)          # imm = 0x2001
	jl	.LBB15_35
	jmp	.LBB15_34
.Ltmp409:
	.align	16, 0x90
.LBB15_36:                              # %while.end103
                                        #   in Loop: Header=BB15_21 Depth=1
	.loc	15 100 0                # Misc.c:100:0
	movl	4(%rsp), %eax
	decl	%eax
	movl	%eax, 4(%rsp)
	movslq	%eax, %rax
	movq	24(%rsp), %rcx
	movb	$0, 26640(%rcx,%rax)
	jmp	.LBB15_37
.Ltmp410:
.LBB15_38:                              # %for.end
	.loc	15 104 0                # Misc.c:104:0
	movq	24(%rsp), %rax
	movslq	12(%rsp), %rcx
	movb	$0, (%rax,%rcx)
	.loc	15 105 0                # Misc.c:105:0
.Ltmp411:
	movl	$0, 12(%rsp)
	jmp	.LBB15_39
	.align	16, 0x90
.LBB15_42:                              # %for.inc129
                                        #   in Loop: Header=BB15_39 Depth=1
	.loc	15 110 0                # Misc.c:110:0
.Ltmp412:
	movq	16(%rsp), %rax
	movb	(%rax), %al
	movq	24(%rsp), %rcx
	movslq	12(%rsp), %rdx
	movb	%al, 1024(%rcx,%rdx)
.Ltmp413:
	.loc	15 105 0                # Misc.c:105:0
	incl	12(%rsp)
	incq	16(%rsp)
.LBB15_39:                              # %for.cond116
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%rsp), %rax
	movsbl	(%rax), %eax
	testl	%eax, %eax
	je	.LBB15_43
# BB#40:                                # %for.body120
                                        #   in Loop: Header=BB15_39 Depth=1
	.loc	15 106 0                # Misc.c:106:0
.Ltmp414:
	cmpl	$1025, 12(%rsp)         # imm = 0x401
	jl	.LBB15_42
# BB#41:                                # %if.then123
	.loc	15 107 0                # Misc.c:107:0
.Ltmp415:
	movq	stderr(%rip), %rdi
	movl	$.L.str9123, %esi
	jmp	.LBB15_2
.Ltmp416:
.LBB15_43:                              # %for.end132
	.loc	15 112 0                # Misc.c:112:0
	movq	24(%rsp), %rax
	movslq	12(%rsp), %rcx
	movb	$0, 1024(%rax,%rcx)
	.loc	15 113 0                # Misc.c:113:0
	decq	16(%rsp)
	.loc	15 114 0                # Misc.c:114:0
.Ltmp417:
	movl	$0, 12(%rsp)
	jmp	.LBB15_44
	.align	16, 0x90
.LBB15_47:                              # %for.inc149
                                        #   in Loop: Header=BB15_44 Depth=1
	.loc	15 119 0                # Misc.c:119:0
.Ltmp418:
	movq	16(%rsp), %rax
	movb	(%rax), %al
	movq	24(%rsp), %rcx
	movslq	12(%rsp), %rdx
	movb	%al, 2048(%rcx,%rdx)
.Ltmp419:
	.loc	15 114 0                # Misc.c:114:0
	incl	12(%rsp)
	decq	16(%rsp)
.LBB15_44:                              # %for.cond137
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%rsp), %rax
	movsbl	(%rax), %eax
	cmpl	$47, %eax
	je	.LBB15_48
# BB#45:                                # %for.body141
                                        #   in Loop: Header=BB15_44 Depth=1
	.loc	15 115 0                # Misc.c:115:0
.Ltmp420:
	cmpl	$8193, 12(%rsp)         # imm = 0x2001
	jl	.LBB15_47
# BB#46:                                # %if.then144
	.loc	15 116 0                # Misc.c:116:0
.Ltmp421:
	movq	stderr(%rip), %rdi
	movl	$.L.str10124, %esi
	jmp	.LBB15_2
.Ltmp422:
.LBB15_48:                              # %for.end152
	.loc	15 121 0                # Misc.c:121:0
	movq	24(%rsp), %rax
	movslq	12(%rsp), %rcx
	movb	$0, 2048(%rax,%rcx)
	.loc	15 122 0                # Misc.c:122:0
	movq	24(%rsp), %rdi
	addq	$2048, %rdi             # imm = 0x800
	callq	revstr
	.loc	15 125 0                # Misc.c:125:0
	movq	24(%rsp), %rdi
	addq	$18448, %rdi            # imm = 0x4810
	callq	strlen
	testq	%rax, %rax
	jne	.LBB15_50
# BB#49:                                # %if.then163
	.loc	15 126 0                # Misc.c:126:0
	movq	24(%rsp), %rdi
	addq	$18448, %rdi            # imm = 0x4810
	movl	$ftpanonymoususer, %esi
	movl	$8190, %edx             # imm = 0x1FFE
	callq	strncpy
.LBB15_50:                              # %if.end167
	.loc	15 127 0                # Misc.c:127:0
	movq	24(%rsp), %rdi
	addq	$26640, %rdi            # imm = 0x6810
	callq	strlen
	testq	%rax, %rax
	jne	.LBB15_52
# BB#51:                                # %if.then173
	.loc	15 128 0                # Misc.c:128:0
	movq	24(%rsp), %rdi
	addq	$26640, %rdi            # imm = 0x6810
	movl	$ftpanonymouspass, %esi
	movl	$8190, %edx             # imm = 0x1FFE
	callq	strncpy
.LBB15_52:                              # %if.end177
	.loc	15 129 0                # Misc.c:129:0
	addq	$40, %rsp
	ret
.LBB15_1:                               # %if.then
	.loc	15 48 0                 # Misc.c:48:0
.Ltmp423:
	movq	stderr(%rip), %rdi
	movl	$.L.str1115, %esi
	jmp	.LBB15_2
.Ltmp424:
.LBB15_53:                              # %if.else21
	.loc	15 57 0                 # Misc.c:57:0
	movq	stderr(%rip), %rdi
	movl	$.L.str4118, %esi
	jmp	.LBB15_2
.Ltmp425:
.LBB15_13:                              # %if.then30
	.loc	15 62 0                 # Misc.c:62:0
	movq	stderr(%rip), %rdi
	movl	$.L.str5119, %esi
	jmp	.LBB15_2
.Ltmp426:
.LBB15_16:                              # %if.then41
	.loc	15 67 0                 # Misc.c:67:0
	movq	stderr(%rip), %rdi
	movl	$.L.str6120, %esi
	jmp	.LBB15_2
.Ltmp427:
.LBB15_23:                              # %if.then58
	.loc	15 74 0                 # Misc.c:74:0
	movq	stderr(%rip), %rdi
	movl	$.L.str7121, %esi
	jmp	.LBB15_2
.Ltmp428:
.LBB15_34:                              # %if.then93
	.loc	15 91 0                 # Misc.c:91:0
	movq	stderr(%rip), %rdi
	movl	$.L.str8122, %esi
.Ltmp429:
.LBB15_2:                               # %if.then
	xorb	%al, %al
	.loc	15 48 0                 # Misc.c:48:0
.Ltmp430:
	callq	fprintf
	movl	$1, %edi
	.loc	15 49 0                 # Misc.c:49:0
	callq	exit
.Ltmp431:
.Ltmp432:
	.size	parse_url, .Ltmp432-parse_url
.Lfunc_end15:
	.cfi_endproc

	.globl	revstr
	.align	16, 0x90
	.type	revstr,@function
revstr:                                 # @revstr
	.cfi_startproc
.Lfunc_begin16:
	.loc	15 177 0                # Misc.c:177:0
# BB#0:                                 # %entry
	subq	$40, %rsp
.Ltmp434:
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	.loc	15 182 0 prologue_end   # Misc.c:182:0
.Ltmp435:
	callq	strlen
	movl	%eax, 8(%rsp)
	testl	%eax, %eax
	je	.LBB16_5
# BB#1:                                 # %if.end
	.loc	15 184 0                # Misc.c:184:0
	movl	8(%rsp), %eax
	incl	%eax
	movslq	%eax, %rdi
	movl	$1, %esi
	callq	calloc
	movq	%rax, 24(%rsp)
	.loc	15 185 0                # Misc.c:185:0
	movq	%rax, 16(%rsp)
	.loc	15 186 0                # Misc.c:186:0
.Ltmp436:
	movl	8(%rsp), %eax
	movl	%eax, 12(%rsp)
	jmp	.LBB16_2
	.align	16, 0x90
.LBB16_3:                               # %for.inc
                                        #   in Loop: Header=BB16_2 Depth=1
	.loc	15 187 0                # Misc.c:187:0
	movslq	12(%rsp), %rax
	movq	32(%rsp), %rcx
	movb	-1(%rcx,%rax), %al
	movq	16(%rsp), %rcx
	movb	%al, (%rcx)
	.loc	15 186 0                # Misc.c:186:0
	decl	12(%rsp)
	incq	16(%rsp)
.LBB16_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, 12(%rsp)
	jg	.LBB16_3
.Ltmp437:
# BB#4:                                 # %for.end
	.loc	15 188 0                # Misc.c:188:0
	movq	16(%rsp), %rax
	movb	$0, (%rax)
	.loc	15 189 0                # Misc.c:189:0
	movslq	8(%rsp), %rdx
	movq	32(%rsp), %rdi
	xorl	%esi, %esi
	callq	memset
	.loc	15 190 0                # Misc.c:190:0
	movslq	8(%rsp), %rdx
	movq	24(%rsp), %rsi
	movq	32(%rsp), %rdi
	callq	strncpy
	.loc	15 191 0                # Misc.c:191:0
	movq	24(%rsp), %rdi
	callq	free
.LBB16_5:                               # %return
	.loc	15 192 0                # Misc.c:192:0
	addq	$40, %rsp
	ret
.Ltmp438:
.Ltmp439:
	.size	revstr, .Ltmp439-revstr
.Lfunc_end16:
	.cfi_endproc

	.globl	numofthreads
	.align	16, 0x90
	.type	numofthreads,@function
numofthreads:                           # @numofthreads
	.cfi_startproc
.Lfunc_begin17:
	.loc	15 132 0                # Misc.c:132:0
# BB#0:                                 # %entry
	movl	%edi, -8(%rsp)
	testl	%edi, %edi
	je	.LBB17_1
# BB#2:                                 # %if.else
	.loc	15 135 0 prologue_end   # Misc.c:135:0
.Ltmp440:
	cmpl	$32767, -8(%rsp)        # imm = 0x7FFF
	jg	.LBB17_4
# BB#3:                                 # %if.then2
	.loc	15 136 0                # Misc.c:136:0
	movl	$1, -4(%rsp)
	.loc	15 155 0                # Misc.c:155:0
	movl	-4(%rsp), %eax
	ret
.LBB17_1:                               # %if.then
	.loc	15 134 0                # Misc.c:134:0
	movl	$0, -4(%rsp)
	.loc	15 155 0                # Misc.c:155:0
	movl	-4(%rsp), %eax
	ret
.LBB17_4:                               # %if.else3
	.loc	15 137 0                # Misc.c:137:0
	cmpl	$32768, -8(%rsp)        # imm = 0x8000
	jl	.LBB17_7
# BB#5:                                 # %land.lhs.true
	cmpl	$65535, -8(%rsp)        # imm = 0xFFFF
	jg	.LBB17_7
# BB#6:                                 # %if.then6
	.loc	15 138 0                # Misc.c:138:0
	movl	$2, -4(%rsp)
	.loc	15 155 0                # Misc.c:155:0
	movl	-4(%rsp), %eax
	ret
.LBB17_7:                               # %if.else7
	.loc	15 139 0                # Misc.c:139:0
	cmpl	$65536, -8(%rsp)        # imm = 0x10000
	jl	.LBB17_10
# BB#8:                                 # %land.lhs.true9
	cmpl	$131071, -8(%rsp)       # imm = 0x1FFFF
	jg	.LBB17_10
# BB#9:                                 # %if.then11
	.loc	15 140 0                # Misc.c:140:0
	movl	$3, -4(%rsp)
	.loc	15 155 0                # Misc.c:155:0
	movl	-4(%rsp), %eax
	ret
.LBB17_10:                              # %if.else12
	.loc	15 141 0                # Misc.c:141:0
	cmpl	$131072, -8(%rsp)       # imm = 0x20000
	jl	.LBB17_13
# BB#11:                                # %land.lhs.true14
	cmpl	$262143, -8(%rsp)       # imm = 0x3FFFF
	jg	.LBB17_13
# BB#12:                                # %if.then16
	.loc	15 142 0                # Misc.c:142:0
	movl	$4, -4(%rsp)
	.loc	15 155 0                # Misc.c:155:0
	movl	-4(%rsp), %eax
	ret
.LBB17_13:                              # %if.else17
	.loc	15 143 0                # Misc.c:143:0
	cmpl	$262144, -8(%rsp)       # imm = 0x40000
	jl	.LBB17_16
# BB#14:                                # %land.lhs.true19
	cmpl	$524287, -8(%rsp)       # imm = 0x7FFFF
	jg	.LBB17_16
# BB#15:                                # %if.then21
	.loc	15 144 0                # Misc.c:144:0
	movl	$5, -4(%rsp)
	.loc	15 155 0                # Misc.c:155:0
	movl	-4(%rsp), %eax
	ret
.LBB17_16:                              # %if.else22
	.loc	15 145 0                # Misc.c:145:0
	cmpl	$524288, -8(%rsp)       # imm = 0x80000
	jl	.LBB17_19
# BB#17:                                # %land.lhs.true24
	cmpl	$1048575, -8(%rsp)      # imm = 0xFFFFF
	jg	.LBB17_19
# BB#18:                                # %if.then26
	.loc	15 146 0                # Misc.c:146:0
	movl	$6, -4(%rsp)
	.loc	15 155 0                # Misc.c:155:0
	movl	-4(%rsp), %eax
	ret
.LBB17_19:                              # %if.else27
	.loc	15 147 0                # Misc.c:147:0
	cmpl	$1048576, -8(%rsp)      # imm = 0x100000
	jl	.LBB17_22
# BB#20:                                # %land.lhs.true29
	cmpl	$2097151, -8(%rsp)      # imm = 0x1FFFFF
	jg	.LBB17_22
# BB#21:                                # %if.then31
	.loc	15 148 0                # Misc.c:148:0
	movl	$7, -4(%rsp)
	.loc	15 155 0                # Misc.c:155:0
	movl	-4(%rsp), %eax
	ret
.LBB17_22:                              # %if.else32
	.loc	15 149 0                # Misc.c:149:0
	cmpl	$2097152, -8(%rsp)      # imm = 0x200000
	jl	.LBB17_25
# BB#23:                                # %land.lhs.true34
	cmpl	$4194303, -8(%rsp)      # imm = 0x3FFFFF
	jg	.LBB17_25
# BB#24:                                # %if.then36
	.loc	15 150 0                # Misc.c:150:0
	movl	$8, -4(%rsp)
	.loc	15 155 0                # Misc.c:155:0
	movl	-4(%rsp), %eax
	ret
.LBB17_25:                              # %if.else37
	.loc	15 151 0                # Misc.c:151:0
	cmpl	$4194304, -8(%rsp)      # imm = 0x400000
	jl	.LBB17_28
# BB#26:                                # %land.lhs.true39
	cmpl	$8388607, -8(%rsp)      # imm = 0x7FFFFF
	jg	.LBB17_28
# BB#27:                                # %if.then41
	.loc	15 152 0                # Misc.c:152:0
	movl	$9, -4(%rsp)
	.loc	15 155 0                # Misc.c:155:0
	movl	-4(%rsp), %eax
	ret
.LBB17_28:                              # %if.else42
	.loc	15 154 0                # Misc.c:154:0
	movl	$10, -4(%rsp)
	.loc	15 155 0                # Misc.c:155:0
	movl	-4(%rsp), %eax
	ret
.Ltmp441:
.Ltmp442:
	.size	numofthreads, .Ltmp442-numofthreads
.Lfunc_end17:
	.cfi_endproc

	.globl	calc_offset
	.align	16, 0x90
	.type	calc_offset,@function
calc_offset:                            # @calc_offset
	.cfi_startproc
.Lfunc_begin18:
	.loc	15 158 0                # Misc.c:158:0
# BB#0:                                 # %entry
	movl	%edx, %ecx
	movl	%edi, -4(%rsp)
	movl	%esi, -8(%rsp)
	movl	%ecx, -12(%rsp)
	.loc	15 159 0 prologue_end   # Misc.c:159:0
.Ltmp443:
	movl	-4(%rsp), %eax
	cltd
	idivl	%ecx
	imull	-8(%rsp), %eax
	ret
.Ltmp444:
.Ltmp445:
	.size	calc_offset, .Ltmp445-calc_offset
.Lfunc_end18:
	.cfi_endproc

	.globl	usage
	.align	16, 0x90
	.type	usage,@function
usage:                                  # @usage
	.cfi_startproc
.Lfunc_begin19:
	.loc	15 163 0                # Misc.c:163:0
# BB#0:                                 # %entry
	.loc	15 164 0 prologue_end   # Misc.c:164:0
	pushq	%rax
.Ltmp447:
	.cfi_def_cfa_offset 16
	movq	stderr(%rip), %rdi
	movl	$.L.str11125, %esi
	xorb	%al, %al
	callq	fprintf
	.loc	15 165 0                # Misc.c:165:0
	movq	stderr(%rip), %rdi
	movl	$.L.str12126, %esi
	xorb	%al, %al
	callq	fprintf
	.loc	15 166 0                # Misc.c:166:0
	movq	stderr(%rip), %rdi
	movl	$.L.str13127, %esi
	xorb	%al, %al
	callq	fprintf
	.loc	15 167 0                # Misc.c:167:0
	movq	stderr(%rip), %rdi
	movl	$.L.str14128, %esi
	xorb	%al, %al
	callq	fprintf
	.loc	15 168 0                # Misc.c:168:0
	movq	stderr(%rip), %rdi
	movl	$.L.str15129, %esi
	xorb	%al, %al
	callq	fprintf
	.loc	15 169 0                # Misc.c:169:0
	movq	stderr(%rip), %rdi
	movl	$.L.str16130, %esi
	xorb	%al, %al
	callq	fprintf
	.loc	15 170 0                # Misc.c:170:0
	movq	stderr(%rip), %rdi
	movl	$.L.str17131, %esi
	xorb	%al, %al
	callq	fprintf
	.loc	15 171 0                # Misc.c:171:0
	movq	stderr(%rip), %rdi
	movl	$.L.str18132, %esi
	xorb	%al, %al
	callq	fprintf
	.loc	15 172 0                # Misc.c:172:0
	movq	stderr(%rip), %rdi
	movl	$.L.str19133, %esi
	xorb	%al, %al
	callq	fprintf
	.loc	15 173 0                # Misc.c:173:0
	popq	%rax
	ret
.Ltmp448:
.Ltmp449:
	.size	usage, .Ltmp449-usage
.Lfunc_end19:
	.cfi_endproc

	.globl	Log
	.align	16, 0x90
	.type	Log,@function
Log:                                    # @Log
	.cfi_startproc
.Lfunc_begin20:
	.loc	15 196 0                # Misc.c:196:0
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp452:
	.cfi_def_cfa_offset 16
	subq	$224, %rsp
.Ltmp453:
	.cfi_def_cfa_offset 240
.Ltmp454:
	.cfi_offset %rbx, -16
	testb	%al, %al
	je	.LBB20_2
# BB#1:                                 # %entry
	vmovaps	%xmm0, 48(%rsp)
	vmovaps	%xmm1, 64(%rsp)
	vmovaps	%xmm2, 80(%rsp)
	vmovaps	%xmm3, 96(%rsp)
	vmovaps	%xmm4, 112(%rsp)
	vmovaps	%xmm5, 128(%rsp)
	vmovaps	%xmm6, 144(%rsp)
	vmovaps	%xmm7, 160(%rsp)
.LBB20_2:                               # %entry
	movq	%r9, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdi, 216(%rsp)
	.loc	15 200 0 prologue_end   # Misc.c:200:0
.Ltmp455:
	callq	strlen
	leaq	16(%rax), %rdi
	movl	$1, %esi
	callq	calloc
	movq	%rax, 184(%rsp)
	.loc	15 201 0                # Misc.c:201:0
	movq	216(%rsp), %rdx
	movq	%rax, %rdi
	movl	$.L.str20134, %esi
	xorb	%al, %al
	callq	sprintf
	.loc	15 203 0                # Misc.c:203:0
	movq	stdout(%rip), %rdi
	callq	fflush
	leaq	240(%rsp), %rax
	leaq	(%rsp), %rcx
	leaq	192(%rsp), %rdx
	.loc	15 204 0                # Misc.c:204:0
	movq	%rcx, 208(%rsp)
	movq	%rax, 200(%rsp)
	movl	$48, 196(%rsp)
	movl	$8, 192(%rsp)
	.loc	15 205 0                # Misc.c:205:0
	movq	184(%rsp), %rsi
	movq	stderr(%rip), %rdi
	callq	vfprintf
	.loc	15 208 0                # Misc.c:208:0
	movq	216(%rsp), %rax
	movsbl	(%rax), %eax
	testl	%eax, %eax
	je	.LBB20_5
# BB#3:                                 # %land.lhs.true
	movq	216(%rsp), %rdi
	callq	strlen
	movq	216(%rsp), %rcx
	movsbl	-1(%rax,%rcx), %eax
	cmpl	$58, %eax
	jne	.LBB20_5
# BB#4:                                 # %if.then
	.loc	15 209 0                # Misc.c:209:0
	movq	stderr(%rip), %rbx
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movq	%rbx, %rdi
	movl	$.L.str21135, %esi
	movq	%rax, %rdx
	xorb	%al, %al
	callq	fprintf
.LBB20_5:                               # %if.end
	.loc	15 210 0                # Misc.c:210:0
	movq	stderr(%rip), %rdi
	movl	$.L.str18132, %esi
	xorb	%al, %al
	callq	fprintf
	.loc	15 211 0                # Misc.c:211:0
	movq	184(%rsp), %rdi
	callq	free
	.loc	15 212 0                # Misc.c:212:0
	addq	$224, %rsp
	popq	%rbx
	ret
.Ltmp456:
.Ltmp457:
	.size	Log, .Ltmp457-Log
.Lfunc_end20:
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI21_0:
	.long	1120403456              # float 1.000000e+02
                                        #  (0x42c80000)
	.text
	.globl	updateProgressBar
	.align	16, 0x90
	.type	updateProgressBar,@function
updateProgressBar:                      # @updateProgressBar
	.cfi_startproc
.Lfunc_begin21:
	.loc	15 221 0                # Misc.c:221:0
# BB#0:                                 # %entry
	.loc	15 226 0 prologue_end   # Misc.c:226:0
	pushq	%rbx
.Ltmp460:
	.cfi_def_cfa_offset 16
	subq	$160, %rsp
.Ltmp461:
	.cfi_def_cfa_offset 176
.Ltmp462:
	.cfi_offset %rbx, -16
	movl	bwritten(%rip), %eax
	vcvtsi2ssq	%rax, %xmm0, %xmm0
	vmovss	%xmm0, 12(%rsp)
	.loc	15 227 0                # Misc.c:227:0
	movq	req(%rip), %rax
	vcvtsi2ss	34840(%rax), %xmm0, %xmm0
	vmovss	%xmm0, 8(%rsp)
	.loc	15 229 0                # Misc.c:229:0
	vmovss	12(%rsp), %xmm1
	vdivss	%xmm0, %xmm1, %xmm0
	vmovss	%xmm0, 156(%rsp)
	.loc	15 230 0                # Misc.c:230:0
	vmulss	.LCPI21_0(%rip), %xmm0, %xmm0
	vcvttss2si	%xmm0, %eax
	movl	%eax, 152(%rsp)
	cmpl	$101, %eax
	jl	.LBB21_2
# BB#1:                                 # %if.then
	.loc	15 233 0                # Misc.c:233:0
	movl	$100, 152(%rsp)
.LBB21_2:                               # %if.end
	.loc	15 234 0                # Misc.c:234:0
.Ltmp463:
	movl	$0, 148(%rsp)
	jmp	.LBB21_3
	.align	16, 0x90
.LBB21_4:                               # %for.inc
                                        #   in Loop: Header=BB21_3 Depth=1
	movl	$61, %edi
	.loc	15 235 0                # Misc.c:235:0
	callq	putchar
	.loc	15 234 0                # Misc.c:234:0
	addl	$2, 148(%rsp)
.LBB21_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	148(%rsp), %eax
	cmpl	152(%rsp), %eax
	jl	.LBB21_4
.Ltmp464:
# BB#5:                                 # %for.end
	movl	$62, %edi
	.loc	15 236 0                # Misc.c:236:0
	callq	putchar
	.loc	15 237 0                # Misc.c:237:0
	addl	$2, 148(%rsp)
	.loc	15 238 0                # Misc.c:238:0
.Ltmp465:
	movl	152(%rsp), %eax
	decl	%eax
	movl	%eax, 148(%rsp)
	jmp	.LBB21_6
	.align	16, 0x90
.LBB21_7:                               # %for.inc13
                                        #   in Loop: Header=BB21_6 Depth=1
	movl	$32, %edi
	.loc	15 239 0                # Misc.c:239:0
	callq	putchar
	.loc	15 238 0                # Misc.c:238:0
	addl	$2, 148(%rsp)
.LBB21_6:                               # %for.cond8
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$99, 148(%rsp)
	jle	.LBB21_7
.Ltmp466:
# BB#8:                                 # %for.end15
	.loc	15 240 0                # Misc.c:240:0
	movl	bwritten(%rip), %ecx
	movl	152(%rsp), %edx
	leaq	16(%rsp), %rbx
	movq	%rbx, %rdi
	movl	$.L.str22136, %esi
	xorb	%al, %al
	callq	sprintf
	.loc	15 241 0                # Misc.c:241:0
	movq	%rbx, %rdi
	callq	strlen
	addl	%eax, 148(%rsp)
	.loc	15 242 0                # Misc.c:242:0
	vcvtsi2ss	152(%rsp), %xmm0, %xmm0
	vmovss	%xmm0, updateProgressBar.prev(%rip)
	.loc	15 243 0                # Misc.c:243:0
	movl	$.L.str23137, %edi
	movq	%rbx, %rsi
	xorb	%al, %al
	callq	printf
	.loc	15 245 0                # Misc.c:245:0
.Ltmp467:
	movl	$0, 144(%rsp)
	jmp	.LBB21_9
	.align	16, 0x90
.LBB21_10:                              # %for.inc30
                                        #   in Loop: Header=BB21_9 Depth=1
	movl	$8, %edi
	.loc	15 246 0                # Misc.c:246:0
	callq	putchar
	.loc	15 245 0                # Misc.c:245:0
	incl	144(%rsp)
.LBB21_9:                               # %for.cond25
                                        # =>This Inner Loop Header: Depth=1
	movl	144(%rsp), %eax
	cmpl	148(%rsp), %eax
	jl	.LBB21_10
.Ltmp468:
# BB#11:                                # %for.end31
	.loc	15 247 0                # Misc.c:247:0
	movq	stdout(%rip), %rdi
	callq	fflush
	.loc	15 248 0                # Misc.c:248:0
	addq	$160, %rsp
	popq	%rbx
	ret
.Ltmp469:
.Ltmp470:
	.size	updateProgressBar, .Ltmp470-updateProgressBar
.Lfunc_end21:
	.cfi_endproc

	.globl	handleHttpRetcode
	.align	16, 0x90
	.type	handleHttpRetcode,@function
handleHttpRetcode:                      # @handleHttpRetcode
	.cfi_startproc
.Lfunc_begin22:
	.loc	15 251 0                # Misc.c:251:0
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp472:
	.cfi_def_cfa_offset 16
	movq	%rdi, (%rsp)
	.loc	15 252 0 prologue_end   # Misc.c:252:0
.Ltmp473:
	movl	$.L.str24138, %esi
	callq	strstr
	testq	%rax, %rax
	jne	.LBB22_1
# BB#3:                                 # %if.else
	.loc	15 256 0                # Misc.c:256:0
	movq	(%rsp), %rdi
	movl	$.L.str26140, %esi
	callq	strstr
	testq	%rax, %rax
	jne	.LBB22_4
# BB#5:                                 # %if.else4
	.loc	15 260 0                # Misc.c:260:0
	movq	(%rsp), %rdi
	movl	$.L.str28142, %esi
	callq	strstr
	testq	%rax, %rax
	jne	.LBB22_6
# BB#7:                                 # %if.end9
	.loc	15 264 0                # Misc.c:264:0
	popq	%rax
	ret
.LBB22_1:                               # %if.then
	.loc	15 253 0                # Misc.c:253:0
.Ltmp474:
	movl	$.L.str25139, %edi
	jmp	.LBB22_2
.Ltmp475:
.LBB22_4:                               # %if.then3
	.loc	15 257 0                # Misc.c:257:0
	movl	$.L.str27141, %edi
	jmp	.LBB22_2
.Ltmp476:
.LBB22_6:                               # %if.then7
	.loc	15 261 0                # Misc.c:261:0
	movl	$.L.str29143, %edi
.Ltmp477:
.LBB22_2:                               # %if.then
	xorb	%al, %al
	.loc	15 253 0                # Misc.c:253:0
.Ltmp478:
	callq	Log
	movl	$1, %edi
	.loc	15 254 0                # Misc.c:254:0
	callq	exit
.Ltmp479:
.Ltmp480:
	.size	handleHttpRetcode, .Ltmp480-handleHttpRetcode
.Lfunc_end22:
	.cfi_endproc

	.globl	recv_data
	.align	16, 0x90
	.type	recv_data,@function
recv_data:                              # @recv_data
	.cfi_startproc
.Lfunc_begin23:
	.loc	15 272 0                # Misc.c:272:0
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp485:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp486:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp487:
	.cfi_def_cfa_offset 32
	subq	$192, %rsp
.Ltmp488:
	.cfi_def_cfa_offset 224
.Ltmp489:
	.cfi_offset %rbx, -32
.Ltmp490:
	.cfi_offset %r14, -24
.Ltmp491:
	.cfi_offset %r15, -16
	movl	%edi, 188(%rsp)
	movq	%rsi, 176(%rsp)
	movl	%edx, 172(%rsp)
	.loc	15 276 0 prologue_end   # Misc.c:276:0
.Ltmp492:
	movl	$3, 16(%rsp)
	leaq	40(%rsp), %rbx
	movl	$1, %r15d
	leaq	24(%rsp), %r14
	.align	16, 0x90
.LBB23_1:                               # %retry
                                        # =>This Inner Loop Header: Depth=1
	.loc	15 279 0                # Misc.c:279:0
	movslq	172(%rsp), %rdx
	movq	176(%rsp), %rsi
	movl	188(%rsp), %edi
	xorl	%ecx, %ecx
	callq	recv
	movl	%eax, 168(%rsp)
	cmpl	$-1, %eax
	jne	.LBB23_5
# BB#2:                                 # %land.lhs.true
                                        #   in Loop: Header=BB23_1 Depth=1
	callq	__errno_location
	cmpl	$4, (%rax)
	jne	.LBB23_3
.LBB23_5:                               # %if.end
                                        #   in Loop: Header=BB23_1 Depth=1
	.loc	15 283 0                # Misc.c:283:0
	cmpl	$0, 168(%rsp)
	jne	.LBB23_10
# BB#6:                                 # %do.end
                                        #   in Loop: Header=BB23_1 Depth=1
	xorl	%eax, %eax
	movl	$16, %ecx
	.loc	15 284 0                # Misc.c:284:0
.Ltmp493:
	movq	%rbx, %rdi
	#APP
	cld; rep; stosq
	#NO_APP
	movl	%ecx, 12(%rsp)
	movl	%edi, 8(%rsp)
.Ltmp494:
	.loc	15 285 0                # Misc.c:285:0
	movl	188(%rsp), %ecx
	movl	%ecx, %eax
	sarl	$31, %eax
	shrl	$26, %eax
	addl	%ecx, %eax
	movl	%eax, %edx
	andl	$192, %edx
	subl	%edx, %ecx
	shlxq	%rcx, %r15, %rcx
	sarl	$6, %eax
	movslq	%eax, %rax
	orq	%rcx, 40(%rsp,%rax,8)
	.loc	15 286 0                # Misc.c:286:0
	movq	$1, 24(%rsp)
	.loc	15 287 0                # Misc.c:287:0
	movq	$0, 32(%rsp)
	.loc	15 288 0                # Misc.c:288:0
	movl	188(%rsp), %edi
	incl	%edi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%r14, %r8
	callq	select
	movl	%eax, 20(%rsp)
	cmpl	$-1, %eax
	je	.LBB23_7
# BB#8:                                 # %if.end20
                                        #   in Loop: Header=BB23_1 Depth=1
	.loc	15 292 0                # Misc.c:292:0
	cmpl	$0, 20(%rsp)
	jle	.LBB23_10
# BB#9:                                 # %if.then23
                                        #   in Loop: Header=BB23_1 Depth=1
	.loc	15 293 0                # Misc.c:293:0
.Ltmp495:
	movl	16(%rsp), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 16(%rsp)
	testl	%eax, %eax
	jne	.LBB23_1
.Ltmp496:
.LBB23_10:                              # %if.end27
	.loc	15 297 0                # Misc.c:297:0
	movl	168(%rsp), %eax
	addq	$192, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	ret
.LBB23_3:                               # %if.then
	.loc	15 280 0                # Misc.c:280:0
.Ltmp497:
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str30144, %edi
	jmp	.LBB23_4
.Ltmp498:
.LBB23_7:                               # %if.then17
	.loc	15 289 0                # Misc.c:289:0
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str31145, %edi
.Ltmp499:
.LBB23_4:                               # %if.then
	.loc	15 280 0                # Misc.c:280:0
	movq	%rax, %rsi
	xorb	%al, %al
	callq	Log
	movl	$1, %edi
	.loc	15 281 0                # Misc.c:281:0
	callq	exit
.Ltmp500:
.Ltmp501:
	.size	recv_data, .Ltmp501-recv_data
.Lfunc_end23:
	.cfi_endproc

	.globl	handleFTPRetcode
	.align	16, 0x90
	.type	handleFTPRetcode,@function
handleFTPRetcode:                       # @handleFTPRetcode
	.cfi_startproc
.Lfunc_begin24:
	.loc	15 303 0                # Misc.c:303:0
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp503:
	.cfi_def_cfa_offset 16
	movq	%rdi, (%rsp)
	.loc	15 304 0 prologue_end   # Misc.c:304:0
.Ltmp504:
	movsbl	(%rdi), %eax
	cmpl	$52, %eax
	jne	.LBB24_7
# BB#1:                                 # %if.then
	.loc	15 305 0                # Misc.c:305:0
.Ltmp505:
	movq	(%rsp), %rax
	movsbl	1(%rax), %eax
	cmpl	$50, %eax
	jne	.LBB24_3
# BB#2:                                 # %if.then6
	.loc	15 306 0                # Misc.c:306:0
	movl	$.L.str32146, %edi
	jmp	.LBB24_5
.Ltmp506:
.LBB24_7:                               # %if.else13
	.loc	15 312 0                # Misc.c:312:0
	movq	(%rsp), %rax
	movsbl	(%rax), %eax
	cmpl	$53, %eax
	jne	.LBB24_17
# BB#8:                                 # %if.then18
	.loc	15 313 0                # Misc.c:313:0
.Ltmp507:
	movq	(%rsp), %rax
	movsbl	1(%rax), %eax
	cmpl	$48, %eax
	jne	.LBB24_10
# BB#9:                                 # %if.then23
	.loc	15 314 0                # Misc.c:314:0
	movl	$.L.str36150, %edi
	jmp	.LBB24_14
.Ltmp508:
.LBB24_3:                               # %if.else
	.loc	15 307 0                # Misc.c:307:0
	movq	(%rsp), %rax
	movsbl	1(%rax), %eax
	cmpl	$53, %eax
	jne	.LBB24_6
# BB#4:                                 # %if.then11
	.loc	15 308 0                # Misc.c:308:0
	movl	$.L.str33147, %edi
.LBB24_5:                               # %if.then11
	xorb	%al, %al
	callq	Log
.LBB24_6:                               # %if.end12
	.loc	15 309 0                # Misc.c:309:0
	movl	$.L.str34148, %edi
	xorb	%al, %al
	callq	Log
	.loc	15 310 0                # Misc.c:310:0
	movl	$.L.str35149, %edi
	jmp	.LBB24_16
.Ltmp509:
.LBB24_10:                              # %if.else24
	.loc	15 315 0                # Misc.c:315:0
	movq	(%rsp), %rax
	movsbl	1(%rax), %eax
	cmpl	$51, %eax
	jne	.LBB24_12
# BB#11:                                # %if.then29
	.loc	15 316 0                # Misc.c:316:0
	movl	$.L.str37151, %edi
	jmp	.LBB24_14
.LBB24_12:                              # %if.else30
	.loc	15 317 0                # Misc.c:317:0
	movq	(%rsp), %rax
	movsbl	1(%rax), %eax
	cmpl	$53, %eax
	jne	.LBB24_15
# BB#13:                                # %if.then35
	.loc	15 318 0                # Misc.c:318:0
	movl	$.L.str33147, %edi
.LBB24_14:                              # %if.then35
	xorb	%al, %al
	callq	Log
.LBB24_15:                              # %if.end38
	.loc	15 319 0                # Misc.c:319:0
	movl	$.L.str38152, %edi
.LBB24_16:                              # %if.end38
	xorb	%al, %al
	callq	Log
.Ltmp510:
.LBB24_17:                              # %if.end40
	.loc	15 321 0                # Misc.c:321:0
	popq	%rax
	ret
.Ltmp511:
.Ltmp512:
	.size	handleFTPRetcode, .Ltmp512-handleFTPRetcode
.Lfunc_end24:
	.cfi_endproc

	.globl	recv_reply
	.align	16, 0x90
	.type	recv_reply,@function
recv_reply:                             # @recv_reply
	.cfi_startproc
.Lfunc_begin25:
	.loc	15 325 0                # Misc.c:325:0
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp517:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp518:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp519:
	.cfi_def_cfa_offset 32
	subq	$1088, %rsp             # imm = 0x440
.Ltmp520:
	.cfi_def_cfa_offset 1120
.Ltmp521:
	.cfi_offset %rbx, -32
.Ltmp522:
	.cfi_offset %r14, -24
.Ltmp523:
	.cfi_offset %r15, -16
	movl	%edi, 1080(%rsp)
	movq	%rsi, 1072(%rsp)
	movl	%edx, 1068(%rsp)
	movl	%ecx, 1064(%rsp)
	.loc	15 330 0 prologue_end   # Misc.c:330:0
.Ltmp524:
	movl	$0, 12(%rsp)
	.loc	15 332 0                # Misc.c:332:0
	movl	1080(%rsp), %edi
	movl	$.L.str39153, %esi
	callq	fdopen
	movq	%rax, 24(%rsp)
	testq	%rax, %rax
	je	.LBB25_1
# BB#2:                                 # %if.end
	.loc	15 335 0                # Misc.c:335:0
	movl	$0, 20(%rsp)
	.loc	15 336 0                # Misc.c:336:0
	movl	$0, 16(%rsp)
	leaq	32(%rsp), %r15
	leaq	12(%rsp), %r14
	.align	16, 0x90
.LBB25_3:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	.loc	15 338 0                # Misc.c:338:0
.Ltmp525:
	movq	24(%rsp), %rdx
	movq	%r15, %rdi
	movl	$1020, %esi             # imm = 0x3FC
	callq	fgets
	.loc	15 339 0                # Misc.c:339:0
	movsbl	35(%rsp), %eax
	cmpl	$45, %eax
	jne	.LBB25_6
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB25_3 Depth=1
	movsbl	12(%rsp), %eax
	testl	%eax, %eax
	jne	.LBB25_6
# BB#5:                                 # %if.then8
                                        #   in Loop: Header=BB25_3 Depth=1
	.loc	15 340 0                # Misc.c:340:0
	movq	%r14, %rdi
	movq	%r15, %rsi
	movl	$3, %edx
	callq	strncpy
.LBB25_6:                               # %if.end12
                                        #   in Loop: Header=BB25_3 Depth=1
	.loc	15 342 0                # Misc.c:342:0
	movsbl	35(%rsp), %eax
	cmpl	$32, %eax
	jne	.LBB25_10
# BB#7:                                 # %if.then17
                                        #   in Loop: Header=BB25_3 Depth=1
	.loc	15 343 0                # Misc.c:343:0
.Ltmp526:
	movsbl	12(%rsp), %eax
	testl	%eax, %eax
	je	.LBB25_9
# BB#8:                                 # %if.then22
                                        #   in Loop: Header=BB25_3 Depth=1
	.loc	15 344 0                # Misc.c:344:0
.Ltmp527:
	movq	%r14, %rdi
	movq	%r15, %rsi
	movl	$3, %edx
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB25_10
.Ltmp528:
.LBB25_9:                               # %if.else
                                        #   in Loop: Header=BB25_3 Depth=1
	.loc	15 348 0                # Misc.c:348:0
	movl	$1, 16(%rsp)
.Ltmp529:
.LBB25_10:                              # %do.cond
                                        #   in Loop: Header=BB25_3 Depth=1
	.loc	15 350 0                # Misc.c:350:0
	movslq	20(%rsp), %rbx
	addq	1072(%rsp), %rbx
	movq	%r15, %rdi
	callq	strlen
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	memcpy
	.loc	15 351 0                # Misc.c:351:0
	movq	%r15, %rdi
	callq	strlen
	xorb	%cl, %cl
	addl	%eax, 20(%rsp)
	.loc	15 352 0                # Misc.c:352:0
	cmpl	$1, 16(%rsp)
	je	.LBB25_12
# BB#11:                                # %land.rhs
                                        #   in Loop: Header=BB25_3 Depth=1
	cmpl	$1022, 20(%rsp)         # imm = 0x3FE
	setl	%cl
.Ltmp530:
.LBB25_12:                              # %land.end
                                        #   in Loop: Header=BB25_3 Depth=1
	testb	%cl, %cl
	jne	.LBB25_3
# BB#13:                                # %do.end
	.loc	15 358 0                # Misc.c:358:0
	movl	20(%rsp), %eax
	movl	%eax, 1084(%rsp)
	jmp	.LBB25_14
.LBB25_1:                               # %if.then
	.loc	15 333 0                # Misc.c:333:0
	movl	$-1, 1084(%rsp)
.LBB25_14:                              # %return
	.loc	15 359 0                # Misc.c:359:0
	movl	1084(%rsp), %eax
	addq	$1088, %rsp             # imm = 0x440
	popq	%rbx
	popq	%r14
	popq	%r15
	ret
.Ltmp531:
.Ltmp532:
	.size	recv_reply, .Ltmp532-recv_reply
.Lfunc_end25:
	.cfi_endproc

	.globl	save_log
	.align	16, 0x90
	.type	save_log,@function
save_log:                               # @save_log
	.cfi_startproc
.Lfunc_begin26:
	.loc	16 31 0                 # Resume.c:31:0
# BB#0:                                 # %entry
	.loc	16 38 0 prologue_end    # Resume.c:38:0
	pushq	%r14
.Ltmp536:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp537:
	.cfi_def_cfa_offset 24
	subq	$212264, %rsp           # imm = 0x33D28
.Ltmp538:
	.cfi_def_cfa_offset 212288
.Ltmp539:
	.cfi_offset %rbx, -24
.Ltmp540:
	.cfi_offset %r14, -16
	cmpq	$0, wthread(%rip)
	je	.LBB26_17
# BB#1:                                 # %if.end
	.loc	16 41 0                 # Resume.c:41:0
	movq	req(%rip), %rax
	movl	bwritten(%rip), %ecx
	cmpl	34840(%rax), %ecx
	jne	.LBB26_5
# BB#2:                                 # %if.then2
	.loc	16 42 0                 # Resume.c:42:0
.Ltmp541:
	movl	$t_finish, %edi
	callq	time
	.loc	16 43 0                 # Resume.c:43:0
	movq	t_finish(%rip), %rax
	subq	t_start(%rip), %rax
	movq	%rax, 8(%rsp)
	jne	.LBB26_4
# BB#3:                                 # %if.then4
	.loc	16 44 0                 # Resume.c:44:0
	movq	$1, 8(%rsp)
.LBB26_4:                               # %if.end5
	.loc	16 46 0                 # Resume.c:46:0
	movq	req(%rip), %rax
	movslq	34840(%rax), %rax
	movq	8(%rsp), %rsi
	cqto
	idivq	%rsi
	movq	%rax, %rdx
	sarq	$63, %rdx
	shrq	$54, %rdx
	addq	%rax, %rdx
	sarq	$10, %rdx
	movl	$.L.str172, %edi
	xorb	%al, %al
	callq	Log
	.loc	16 48 0                 # Resume.c:48:0
	movl	$.L.str1173, %edi
	xorb	%al, %al
	callq	Log
	jmp	.LBB26_17
.Ltmp542:
.LBB26_5:                               # %if.end8
	movl	$255, %edi
	movl	$1, %esi
	.loc	16 52 0                 # Resume.c:52:0
	callq	calloc
	movq	%rax, 212256(%rsp)
	.loc	16 55 0                 # Resume.c:55:0
	callq	getuid
	movl	%eax, %edi
	callq	getpwuid
	movq	%rax, (%rsp)
	.loc	16 56 0                 # Resume.c:56:0
	cmpq	$0, 32(%rax)
	je	.LBB26_6
# BB#7:                                 # %if.else
	.loc	16 63 0                 # Resume.c:63:0
.Ltmp543:
	movq	req(%rip), %rdi
	addq	$10240, %rdi            # imm = 0x2800
	callq	strlen
	movq	req(%rip), %rcx
	leaq	10239(%rax,%rcx), %rax
	movq	%rax, 212248(%rsp)
	movl	$10240, %eax            # imm = 0x2800
	jmp	.LBB26_8
	.align	16, 0x90
.LBB26_11:                              # %while.body
                                        #   in Loop: Header=BB26_8 Depth=1
	.loc	16 65 0                 # Resume.c:65:0
	decq	212248(%rsp)
.LBB26_8:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	.loc	16 64 0                 # Resume.c:64:0
	movq	212248(%rsp), %rcx
	movsbl	(%rcx), %edx
	xorb	%cl, %cl
	cmpl	$47, %edx
	je	.LBB26_10
# BB#9:                                 # %land.rhs
                                        #   in Loop: Header=BB26_8 Depth=1
	movq	req(%rip), %rcx
	addq	%rax, %rcx
	cmpq	%rcx, 212248(%rsp)
	setne	%cl
.LBB26_10:                              # %land.end
                                        #   in Loop: Header=BB26_8 Depth=1
	cmpb	$1, %cl
	je	.LBB26_11
# BB#12:                                # %while.end
	.loc	16 66 0                 # Resume.c:66:0
	movq	req(%rip), %rax
	movq	(%rsp), %rcx
	movq	32(%rcx), %rcx
	cmpb	$-1, 34844(%rax)
	sete	%al
	movzbl	%al, %eax
	leal	102(%rax,%rax), %r9d
	movq	212248(%rsp), %r8
	movq	212256(%rsp), %rdi
	movl	$255, %esi
	movl	$.L.str3175, %edx
	xorb	%al, %al
	callq	snprintf
	jmp	.LBB26_13
.Ltmp544:
.LBB26_6:                               # %if.then14
	.loc	16 61 0                 # Resume.c:61:0
	movq	req(%rip), %rcx
	movb	34844(%rcx), %al
	movq	212256(%rsp), %rdi
	addq	$10240, %rcx            # imm = 0x2800
	cmpb	$-1, %al
	sete	%al
	movzbl	%al, %eax
	leal	102(%rax,%rax), %r8d
	movl	$255, %esi
	movl	$.L.str2174, %edx
	xorb	%al, %al
	callq	snprintf
.LBB26_13:                              # %if.end39
	.loc	16 69 0                 # Resume.c:69:0
	movq	212256(%rsp), %rdi
	movl	$.L.str4176, %esi
	callq	fopen
	movq	%rax, 16(%rsp)
	testq	%rax, %rax
	je	.LBB26_18
# BB#14:                                # %if.end47
	.loc	16 75 0                 # Resume.c:75:0
	movl	$t_finish, %edi
	callq	time
	.loc	16 76 0                 # Resume.c:76:0
	movq	t_finish(%rip), %rax
	subq	t_start(%rip), %rax
	movq	%rax, 8(%rsp)
	jne	.LBB26_16
# BB#15:                                # %if.then52
	.loc	16 77 0                 # Resume.c:77:0
	movq	$1, 8(%rsp)
.LBB26_16:                              # %if.end53
	.loc	16 78 0                 # Resume.c:78:0
	movq	req(%rip), %rax
	movq	8(%rsp), %rcx
	addq	%rcx, 34848(%rax)
	.loc	16 80 0                 # Resume.c:80:0
	movq	req(%rip), %rsi
	leaq	24(%rsp), %rbx
	movq	%rbx, %rdi
	movl	$34856, %edx            # imm = 0x8828
	callq	memcpy
	.loc	16 81 0                 # Resume.c:81:0
	movq	wthread(%rip), %rsi
	movslq	nthreads(%rip), %rax
	imulq	$17736, %rax, %rdx      # imm = 0x4548
	leaq	34888(%rsp), %rdi
	callq	memcpy
	.loc	16 82 0                 # Resume.c:82:0
	movl	nthreads(%rip), %eax
	movl	%eax, 34880(%rsp)
	.loc	16 83 0                 # Resume.c:83:0
	movl	bwritten(%rip), %edx
	movl	%edx, 34884(%rsp)
	.loc	16 85 0                 # Resume.c:85:0
	movq	212256(%rsp), %rsi
	movl	$.L.str6178, %edi
	xorb	%al, %al
	callq	printf
	.loc	16 87 0                 # Resume.c:87:0
	movq	16(%rsp), %rcx
	movq	%rbx, %rdi
	movl	$212224, %esi           # imm = 0x33D00
	movl	$1, %edx
	callq	fwrite
	.loc	16 88 0                 # Resume.c:88:0
	movq	16(%rsp), %rdi
	callq	fclose
	.loc	16 90 0                 # Resume.c:90:0
	movq	212256(%rsp), %rdi
	callq	free
.LBB26_17:                              # %return
	.loc	16 91 0                 # Resume.c:91:0
	addq	$212264, %rsp           # imm = 0x33D28
	popq	%rbx
	popq	%r14
	ret
.LBB26_18:                              # %if.then43
	.loc	16 70 0                 # Resume.c:70:0
.Ltmp545:
	movq	212256(%rsp), %r14
	movq	stderr(%rip), %rbx
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movq	%rbx, %rdi
	movl	$.L.str5177, %esi
	movq	%r14, %rdx
	movq	%rax, %rcx
	xorb	%al, %al
	callq	fprintf
	movl	$1, %edi
	.loc	16 71 0                 # Resume.c:71:0
	callq	exit
.Ltmp546:
.Ltmp547:
	.size	save_log, .Ltmp547-save_log
.Lfunc_end26:
	.cfi_endproc

	.globl	read_log
	.align	16, 0x90
	.type	read_log,@function
read_log:                               # @read_log
	.cfi_startproc
.Lfunc_begin27:
	.loc	16 94 0                 # Resume.c:94:0
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp551:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp552:
	.cfi_def_cfa_offset 24
	subq	$56, %rsp
.Ltmp553:
	.cfi_def_cfa_offset 80
.Ltmp554:
	.cfi_offset %rbx, -24
.Ltmp555:
	.cfi_offset %r14, -16
	movq	%rdi, 40(%rsp)
	movl	$255, %edi
	movl	$1, %esi
	.loc	16 99 0 prologue_end    # Resume.c:99:0
.Ltmp556:
	callq	calloc
	movq	%rax, 32(%rsp)
	.loc	16 102 0                # Resume.c:102:0
	movq	req(%rip), %rcx
	cmpb	$-1, 34844(%rcx)
	leaq	10240(%rcx), %rcx
	sete	%dl
	movzbl	%dl, %edx
	leal	102(%rdx,%rdx), %r8d
	movq	%rax, %rdi
	movl	$255, %esi
	movl	$.L.str2174, %edx
	xorb	%al, %al
	callq	snprintf
	.loc	16 104 0                # Resume.c:104:0
	movl	$.L.str7179, %edi
	xorb	%al, %al
	callq	Log
	.loc	16 106 0                # Resume.c:106:0
	movq	32(%rsp), %rdi
	movl	$.L.str8180, %esi
	callq	fopen
	movq	%rax, 16(%rsp)
	testq	%rax, %rax
	jne	.LBB27_12
# BB#1:                                 # %if.then
	.loc	16 107 0                # Resume.c:107:0
.Ltmp557:
	callq	__errno_location
	cmpl	$2, (%rax)
	jne	.LBB27_11
# BB#2:                                 # %if.then9
	.loc	16 108 0                # Resume.c:108:0
.Ltmp558:
	callq	getuid
	movl	%eax, %edi
	callq	getpwuid
	movq	%rax, 8(%rsp)
	.loc	16 109 0                # Resume.c:109:0
	cmpq	$0, 32(%rax)
	je	.LBB27_10
# BB#3:                                 # %if.then14
	.loc	16 110 0                # Resume.c:110:0
.Ltmp559:
	movq	req(%rip), %rdi
	addq	$10240, %rdi            # imm = 0x2800
	callq	strlen
	movq	req(%rip), %rcx
	leaq	10239(%rax,%rcx), %rax
	movq	%rax, 24(%rsp)
	movl	$10240, %eax            # imm = 0x2800
	jmp	.LBB27_4
	.align	16, 0x90
.LBB27_7:                               # %while.body
                                        #   in Loop: Header=BB27_4 Depth=1
	.loc	16 112 0                # Resume.c:112:0
	decq	24(%rsp)
.LBB27_4:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	.loc	16 111 0                # Resume.c:111:0
	movq	24(%rsp), %rcx
	movsbl	(%rcx), %edx
	xorb	%cl, %cl
	cmpl	$47, %edx
	je	.LBB27_6
# BB#5:                                 # %land.rhs
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	req(%rip), %rcx
	addq	%rax, %rcx
	cmpq	%rcx, 24(%rsp)
	setne	%cl
.LBB27_6:                               # %land.end
                                        #   in Loop: Header=BB27_4 Depth=1
	cmpb	$1, %cl
	je	.LBB27_7
# BB#8:                                 # %while.end
	.loc	16 113 0                # Resume.c:113:0
	movq	8(%rsp), %rax
	movq	32(%rax), %rcx
	movq	req(%rip), %rax
	movb	34844(%rax), %al
	movq	24(%rsp), %r8
	movq	32(%rsp), %rdi
	cmpb	$-1, %al
	sete	%al
	movzbl	%al, %eax
	leal	102(%rax,%rax), %r9d
	movl	$255, %esi
	movl	$.L.str3175, %edx
	xorb	%al, %al
	callq	snprintf
	.loc	16 114 0                # Resume.c:114:0
	movq	32(%rsp), %rdi
	movl	$.L.str8180, %esi
	callq	fopen
	movq	%rax, 16(%rsp)
	testq	%rax, %rax
	je	.LBB27_9
.Ltmp560:
.LBB27_12:                              # %if.end52
	.loc	16 134 0                # Resume.c:134:0
	movq	16(%rsp), %rcx
	movq	40(%rsp), %rdi
	movl	$212224, %esi           # imm = 0x33D00
	movl	$1, %edx
	callq	fread
	.loc	16 135 0                # Resume.c:135:0
	movq	40(%rsp), %rax
	movl	34860(%rax), %eax
	movl	%eax, bwritten(%rip)
	.loc	16 136 0                # Resume.c:136:0
	movq	16(%rsp), %rdi
	callq	fclose
	.loc	16 138 0                # Resume.c:138:0
	movl	bwritten(%rip), %esi
	movl	$.L.str11183, %edi
	xorb	%al, %al
	callq	Log
	.loc	16 141 0                # Resume.c:141:0
	movq	32(%rsp), %rdi
	callq	unlink
	cmpl	$-1, %eax
	jne	.LBB27_14
# BB#13:                                # %if.then58
	.loc	16 142 0                # Resume.c:142:0
	movq	32(%rsp), %r14
	movq	stderr(%rip), %rbx
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movq	%rbx, %rdi
	movl	$.L.str12184, %esi
	movq	%r14, %rdx
	movq	%rax, %rcx
	xorb	%al, %al
	callq	fprintf
.LBB27_14:                              # %if.end62
	.loc	16 144 0                # Resume.c:144:0
	movq	32(%rsp), %rdi
	callq	free
	.loc	16 146 0                # Resume.c:146:0
	movl	$0, 52(%rsp)
	jmp	.LBB27_15
.LBB27_9:                               # %if.then37
	.loc	16 115 0                # Resume.c:115:0
.Ltmp561:
	callq	__errno_location
	cmpl	$2, (%rax)
	jne	.LBB27_11
.LBB27_10:                              # %if.then41
	.loc	16 116 0                # Resume.c:116:0
.Ltmp562:
	movl	$.L.str9181, %edi
	xorb	%al, %al
	callq	Log
	.loc	16 117 0                # Resume.c:117:0
	movl	$-1, 52(%rsp)
.Ltmp563:
.LBB27_15:                              # %return
	.loc	16 147 0                # Resume.c:147:0
	movl	52(%rsp), %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	ret
.LBB27_11:                              # %if.else
	.loc	16 119 0                # Resume.c:119:0
.Ltmp564:
	movq	32(%rsp), %r14
	movq	stderr(%rip), %rbx
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movq	%rbx, %rdi
	movl	$.L.str10182, %esi
	movq	%r14, %rdx
	movq	%rax, %rcx
	xorb	%al, %al
	callq	fprintf
	movl	$1, %edi
	.loc	16 120 0                # Resume.c:120:0
	callq	exit
.Ltmp565:
.Ltmp566:
	.size	read_log, .Ltmp566-read_log
.Lfunc_end27:
	.cfi_endproc

	.globl	signal_waiter
	.align	16, 0x90
	.type	signal_waiter,@function
signal_waiter:                          # @signal_waiter
	.cfi_startproc
.Lfunc_begin28:
	.loc	17 31 0                 # Signal.c:31:0
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp570:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp571:
	.cfi_def_cfa_offset 24
	subq	$152, %rsp
.Ltmp572:
	.cfi_def_cfa_offset 176
.Ltmp573:
	.cfi_offset %rbx, -24
.Ltmp574:
	.cfi_offset %r14, -16
	movq	%rdi, 136(%rsp)
	.loc	17 35 0 prologue_end    # Signal.c:35:0
.Ltmp575:
	movq	$0, 136(%rsp)
	movl	$1, %edi
	xorl	%esi, %esi
	.loc	17 38 0                 # Signal.c:38:0
	callq	pthread_setcanceltype
	leaq	(%rsp), %r14
	.loc	17 39 0                 # Signal.c:39:0
	movq	%r14, %rdi
	callq	sigfillset
	xorl	%edi, %edi
	.loc	17 40 0                 # Signal.c:40:0
	movq	%r14, %rsi
	xorl	%edx, %edx
	callq	pthread_sigmask
	.loc	17 41 0                 # Signal.c:41:0
	movq	%r14, %rdi
	movl	$2, %esi
	callq	sigaddset
	.loc	17 42 0                 # Signal.c:42:0
	movq	%r14, %rdi
	movl	$15, %esi
	callq	sigaddset
	.loc	17 43 0                 # Signal.c:43:0
	movq	%r14, %rdi
	movl	$14, %esi
	callq	sigaddset
	movl	$1, %edi
	.loc	17 45 0                 # Signal.c:45:0
	callq	alarm
	leaq	132(%rsp), %rbx
	jmp	.LBB28_1
	.align	16, 0x90
.LBB28_4:                               # %sw.bb8
                                        #   in Loop: Header=BB28_1 Depth=1
	.loc	17 59 0                 # Signal.c:59:0
.Ltmp576:
	callq	sigalrm_handler
.Ltmp577:
.LBB28_1:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	.loc	17 52 0                 # Signal.c:52:0
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	sigwait
	.loc	17 54 0                 # Signal.c:54:0
	movl	132(%rsp), %eax
	cmpl	$14, %eax
	je	.LBB28_4
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB28_1 Depth=1
	cmpl	$2, %eax
	jne	.LBB28_1
# BB#3:                                 # %sw.bb
                                        #   in Loop: Header=BB28_1 Depth=1
	.loc	17 56 0                 # Signal.c:56:0
.Ltmp578:
	callq	sigint_handler
	jmp	.LBB28_1
.Ltmp579:
.Ltmp580:
	.size	signal_waiter, .Ltmp580-signal_waiter
.Lfunc_end28:
	.cfi_endproc

	.globl	sigint_handler
	.align	16, 0x90
	.type	sigint_handler,@function
sigint_handler:                         # @sigint_handler
	.cfi_startproc
.Lfunc_begin29:
	.loc	17 66 0                 # Signal.c:66:0
# BB#0:                                 # %entry
	.loc	17 69 0 prologue_end    # Signal.c:69:0
	pushq	%rax
.Ltmp582:
	.cfi_def_cfa_offset 16
	movq	stdout(%rip), %rdi
	callq	fflush
	.loc	17 70 0                 # Signal.c:70:0
	movl	$.L.str187, %edi
	xorb	%al, %al
	callq	printf
	.loc	17 76 0                 # Signal.c:76:0
	movq	main_tid(%rip), %rdi
	callq	pthread_cancel
	.loc	17 77 0                 # Signal.c:77:0
	movq	main_tid(%rip), %rdi
	xorl	%esi, %esi
	callq	pthread_join
	.loc	17 79 0                 # Signal.c:79:0
.Ltmp583:
	movl	$0, 4(%rsp)
	jmp	.LBB29_1
	.align	16, 0x90
.LBB29_2:                               # %for.body
                                        #   in Loop: Header=BB29_1 Depth=1
	.loc	17 80 0                 # Signal.c:80:0
.Ltmp584:
	movslq	4(%rsp), %rax
	imulq	$17736, %rax, %rax      # imm = 0x4548
	movq	wthread(%rip), %rcx
	movq	312(%rcx,%rax), %rdi
	callq	pthread_cancel
	.loc	17 81 0                 # Signal.c:81:0
	movslq	4(%rsp), %rax
	imulq	$17736, %rax, %rax      # imm = 0x4548
	movq	wthread(%rip), %rcx
	movzbl	320(%rcx,%rax), %edx
	andl	$15, %edx
	movb	%dl, 320(%rcx,%rax)
.Ltmp585:
	.loc	17 79 0                 # Signal.c:79:0
	incl	4(%rsp)
.LBB29_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	4(%rsp), %eax
	cmpl	nthreads(%rip), %eax
	jl	.LBB29_2
.Ltmp586:
# BB#3:                                 # %for.end
	.loc	17 84 0                 # Signal.c:84:0
	movl	$.L.str1188, %edi
	xorb	%al, %al
	callq	printf
	xorb	%al, %al
	.loc	17 85 0                 # Signal.c:85:0
	callq	save_log
	xorl	%edi, %edi
	.loc	17 87 0                 # Signal.c:87:0
	callq	exit
.Ltmp587:
.Ltmp588:
	.size	sigint_handler, .Ltmp588-sigint_handler
.Lfunc_end29:
	.cfi_endproc

	.globl	sigalrm_handler
	.align	16, 0x90
	.type	sigalrm_handler,@function
sigalrm_handler:                        # @sigalrm_handler
	.cfi_startproc
.Lfunc_begin30:
	.loc	17 91 0                 # Signal.c:91:0
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp590:
	.cfi_def_cfa_offset 16
	xorb	%al, %al
	.loc	17 92 0 prologue_end    # Signal.c:92:0
.Ltmp591:
	callq	updateProgressBar
	movl	$1, %edi
	.loc	17 93 0                 # Signal.c:93:0
	callq	alarm
	.loc	17 94 0                 # Signal.c:94:0
	popq	%rax
	ret
.Ltmp592:
.Ltmp593:
	.size	sigalrm_handler, .Ltmp593-sigalrm_handler
.Lfunc_end30:
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "Downloading %s (%d bytes) from site %s(%s:%d).\nNumber of Threads: %d"
	.size	.L.str, 69

	.type	.L.str1,@object         # @.str1
.L.str1:
	.asciz	 "File already exists! Overwrite?(y/n) "
	.size	.L.str1, 38

	.type	.L.str2,@object         # @.str2
.L.str2:
	.asciz	 "%2s"
	.size	.L.str2, 4

	.type	.L.str3,@object         # @.str3
.L.str3:
	.asciz	 "get: cannot open file %s for writing: %s\n"
	.size	.L.str3, 42

	.type	.L.str4,@object         # @.str4
.L.str4:
	.asciz	 "get: couldn't lseek:  %s\n"
	.size	.L.str4, 26

	.type	.L.str5,@object         # @.str5
.L.str5:
	.asciz	 "0"
	.size	.L.str5, 2

	.type	.L.str6,@object         # @.str6
.L.str6:
	.asciz	 "get: couldn't allocate space for download file: %s\n"
	.size	.L.str6, 52

	.type	t_start,@object         # @t_start
	.comm	t_start,8,8
	.type	.L.str7,@object         # @.str7
.L.str7:
	.asciz	 "http://"
	.size	.L.str7, 8

	.type	.L.str8,@object         # @.str8
.L.str8:
	.asciz	 "ftp://"
	.size	.L.str8, 7

	.type	.L.str9,@object         # @.str9
.L.str9:
	.asciz	 "GET %s HTTP/1.1\r\nHost: %s\r\nUser-Agent: %s\r\nRange: bytes=%ld-\r\nConnection: close\r\n\r\n"
	.size	.L.str9, 84

	.type	.L.str10,@object        # @.str10
.L.str10:
	.asciz	 "EnderUNIX Aget 0.59"
	.size	.L.str10, 20

	.type	.L.str11,@object        # @.str11
.L.str11:
	.asciz	 "startHTTP: cannot create signal_waiter thread: %s, exiting...\n"
	.size	.L.str11, 63

	.type	.L.str12,@object        # @.str12
.L.str12:
	.asciz	 "Thread creation error!"
	.size	.L.str12, 23

	.type	t_finish,@object        # @t_finish
	.comm	t_finish,8,8
	.type	.L.str13,@object        # @.str13
.L.str13:
	.asciz	 "Download completed, job completed in %d seconds. (%d Kb/sec)"
	.size	.L.str13, 61

	.type	.L.str14,@object        # @.str14
.L.str14:
	.asciz	 "Shutting down..."
	.size	.L.str14, 17

	.type	.L.str15,@object        # @.str15
.L.str15:
	.asciz	 "main: cannot create signal_waiter thread: %s, exiting...\n"
	.size	.L.str15, 58

	.type	.L.str16,@object        # @.str16
.L.str16:
	.asciz	 "Resuming download %s (%d bytes) from site %s(%s:%d).\nNumber of Threads: %d"
	.size	.L.str16, 75

	.type	.L.str17,@object        # @.str17
.L.str17:
	.asciz	 "Total download time: %d seconds. Overall speed: %d Kb/sec"
	.size	.L.str17, 58

	.type	bwritten,@object        # @bwritten
	.bss
	.globl	bwritten
	.align	4
bwritten:
	.long	0                       # 0x0
	.size	bwritten, 4

	.type	bwritten_mutex,@object  # @bwritten_mutex
	.globl	bwritten_mutex
	.align	8
bwritten_mutex:
	.zero	40
	.size	bwritten_mutex, 40

	.type	.L.str18,@object        # @.str18
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str18:
	.asciz	 "<THREAD #%ld> socket creation failed: %s"
	.size	.L.str18, 41

	.type	.L.str119,@object       # @.str119
.L.str119:
	.asciz	 "<THREAD #%ld> connection failed: %s"
	.size	.L.str119, 36

	.type	.L.str220,@object       # @.str220
.L.str220:
	.asciz	 "<THREAD #%ld> send failed: %s"
	.size	.L.str220, 30

	.type	.L.str321,@object       # @.str321
.L.str321:
	.asciz	 "<THREAD #%ld> recv failed: %s"
	.size	.L.str321, 30

	.type	.L.str422,@object       # @.str422
.L.str422:
	.asciz	 "HTTP/1.1 206"
	.size	.L.str422, 13

	.type	.L.str523,@object       # @.str523
.L.str523:
	.asciz	 "Something unhandled happened, shutting down...\n"
	.size	.L.str523, 48

	.type	.L.str26,@object        # @.str26
.L.str26:
	.asciz	 "<THREAD #%ld> socket creation failed: %s"
	.size	.L.str26, 41

	.type	.L.str127,@object       # @.str127
.L.str127:
	.asciz	 "<THREAD #%ld> connection failed: %s"
	.size	.L.str127, 36

	.type	.L.str228,@object       # @.str228
.L.str228:
	.asciz	 "<<<<<----- %s"
	.size	.L.str228, 14

	.type	.L.str329,@object       # @.str329
.L.str329:
	.asciz	 "recv failed: %s"
	.size	.L.str329, 16

	.type	.L.str430,@object       # @.str430
.L.str430:
	.asciz	 "Seems like the server isn't accepting connections now, bailing out..."
	.size	.L.str430, 70

	.type	.L.str531,@object       # @.str531
.L.str531:
	.asciz	 "USER %s\r\n"
	.size	.L.str531, 10

	.type	.L.str632,@object       # @.str632
.L.str632:
	.asciz	 "331"
	.size	.L.str632, 4

	.type	.L.str733,@object       # @.str733
.L.str733:
	.asciz	 "Server didnot like username, server said\n"
	.size	.L.str733, 42

	.type	.L.str834,@object       # @.str834
.L.str834:
	.asciz	 "Server > %s\n"
	.size	.L.str834, 13

	.type	.L.str935,@object       # @.str935
.L.str935:
	.asciz	 "PASS %s\r\n"
	.size	.L.str935, 10

	.type	.L.str1036,@object      # @.str1036
.L.str1036:
	.asciz	 "230"
	.size	.L.str1036, 4

	.type	.L.str1137,@object      # @.str1137
.L.str1137:
	.asciz	 "Server didnot accept password, server said\n"
	.size	.L.str1137, 44

	.type	.L.str1238,@object      # @.str1238
.L.str1238:
	.asciz	 "REST %ld\r\n"
	.size	.L.str1238, 11

	.type	.L.str1339,@object      # @.str1339
.L.str1339:
	.asciz	 "350"
	.size	.L.str1339, 4

	.type	.L.str1440,@object      # @.str1440
.L.str1440:
	.asciz	 "Server doesn't accept resuming transfers."
	.size	.L.str1440, 42

	.type	.L.str1541,@object      # @.str1541
.L.str1541:
	.asciz	 "TYPE I\r\n"
	.size	.L.str1541, 9

	.type	.L.str1642,@object      # @.str1642
.L.str1642:
	.asciz	 "200"
	.size	.L.str1642, 4

	.type	.L.str1743,@object      # @.str1743
.L.str1743:
	.asciz	 "Server didnot accept BINARY transfer.\n"
	.size	.L.str1743, 39

	.type	.L.str1844,@object      # @.str1844
.L.str1844:
	.asciz	 "PASV\r\n"
	.size	.L.str1844, 7

	.type	.L.str19,@object        # @.str19
.L.str19:
	.asciz	 "Socket creation failed: %s"
	.size	.L.str19, 27

	.type	.L.str20,@object        # @.str20
.L.str20:
	.asciz	 "Connection failed: %s"
	.size	.L.str20, 22

	.type	.L.str21,@object        # @.str21
.L.str21:
	.asciz	 "RETR %s\r\n"
	.size	.L.str21, 10

	.type	.L.str47,@object        # @.str47
.L.str47:
	.asciz	 "Error: Cannot resolve hostname for %s: %s"
	.size	.L.str47, 42

	.type	.L.str148,@object       # @.str148
.L.str148:
	.asciz	 "Socket creation failed for Head Request: %s"
	.size	.L.str148, 44

	.type	.L.str249,@object       # @.str249
.L.str249:
	.asciz	 "Connection failed for Head Request: %s"
	.size	.L.str249, 39

	.type	.L.str350,@object       # @.str350
.L.str350:
	.asciz	 "Head-Request Connection established"
	.size	.L.str350, 36

	.type	.L.str451,@object       # @.str451
.L.str451:
	.asciz	 "http://%s:%d%s"
	.size	.L.str451, 15

	.type	.L.str552,@object       # @.str552
.L.str552:
	.asciz	 "HEAD %s HTTP/1.1\r\nHost: %s\r\nUser-Agent: %s\r\nConnection: close\r\n\r\n"
	.size	.L.str552, 66

	.type	.L.str653,@object       # @.str653
.L.str653:
	.asciz	 "EnderUNIX Aget 0.59"
	.size	.L.str653, 20

	.type	.L.str754,@object       # @.str754
.L.str754:
	.asciz	 "send failed for Head Request: %s"
	.size	.L.str754, 33

	.type	.L.str855,@object       # @.str855
.L.str855:
	.asciz	 "recv failed for Head Request: %s"
	.size	.L.str855, 33

	.type	.L.str956,@object       # @.str956
.L.str956:
	.asciz	 "\r\n"
	.size	.L.str956, 3

	.type	.L.str1057,@object      # @.str1057
.L.str1057:
	.asciz	 "HTTP/1.1 200"
	.size	.L.str1057, 13

	.type	.L.str1158,@object      # @.str1158
.L.str1158:
	.asciz	 "Content-Length"
	.size	.L.str1158, 15

	.type	.L.str1259,@object      # @.str1259
.L.str1259:
	.asciz	 "recv failed: %s"
	.size	.L.str1259, 16

	.type	.L.str1360,@object      # @.str1360
.L.str1360:
	.asciz	 "Server > %s"
	.size	.L.str1360, 12

	.type	.L.str1461,@object      # @.str1461
.L.str1461:
	.asciz	 "Seems like the server isn't accepting connections now, bailing out..."
	.size	.L.str1461, 70

	.type	.L.str1562,@object      # @.str1562
.L.str1562:
	.asciz	 "Connection established to FTP server, logging in as %s"
	.size	.L.str1562, 55

	.type	.L.str1663,@object      # @.str1663
.L.str1663:
	.asciz	 "USER %s\r\n"
	.size	.L.str1663, 10

	.type	.L.str1764,@object      # @.str1764
.L.str1764:
	.asciz	 "Aget > %s"
	.size	.L.str1764, 10

	.type	.L.str1865,@object      # @.str1865
.L.str1865:
	.asciz	 "Server > %s\n"
	.size	.L.str1865, 13

	.type	.L.str1966,@object      # @.str1966
.L.str1966:
	.asciz	 "331"
	.size	.L.str1966, 4

	.type	.L.str2067,@object      # @.str2067
.L.str2067:
	.asciz	 "Server didnot like username, server said\n"
	.size	.L.str2067, 42

	.type	.L.str2168,@object      # @.str2168
.L.str2168:
	.asciz	 "PASS %s\r\n"
	.size	.L.str2168, 10

	.type	.L.str22,@object        # @.str22
.L.str22:
	.asciz	 "Aget > PASS ***********\n"
	.size	.L.str22, 25

	.type	.L.str23,@object        # @.str23
.L.str23:
	.asciz	 "230"
	.size	.L.str23, 4

	.type	.L.str24,@object        # @.str24
.L.str24:
	.asciz	 "Server didnot accept password, server said\n"
	.size	.L.str24, 44

	.type	.L.str25,@object        # @.str25
.L.str25:
	.asciz	 "Successfully logged into FTP server, checking if server supports resume feature..."
	.size	.L.str25, 83

	.type	.L.str2669,@object      # @.str2669
.L.str2669:
	.asciz	 "REST 150\r\n"
	.size	.L.str2669, 11

	.type	.L.str27,@object        # @.str27
.L.str27:
	.asciz	 "350"
	.size	.L.str27, 4

	.type	.L.str28,@object        # @.str28
.L.str28:
	.asciz	 "Server doesn't accept resuming transfers. I'll use one thread, sorry.\n"
	.size	.L.str28, 71

	.type	.L.str29,@object        # @.str29
.L.str29:
	.asciz	 "SYST\r\n"
	.size	.L.str29, 7

	.type	.L.str30,@object        # @.str30
.L.str30:
	.asciz	 "215"
	.size	.L.str30, 4

	.type	.L.str31,@object        # @.str31
.L.str31:
	.asciz	 "Server didnot return a reply to a SYST command.\n"
	.size	.L.str31, 49

	.type	.L.str32,@object        # @.str32
.L.str32:
	.asciz	 "UNIX"
	.size	.L.str32, 5

	.type	.L.str33,@object        # @.str33
.L.str33:
	.asciz	 "TYPE I\r\n"
	.size	.L.str33, 9

	.type	.L.str34,@object        # @.str34
.L.str34:
	.asciz	 "200"
	.size	.L.str34, 4

	.type	.L.str35,@object        # @.str35
.L.str35:
	.asciz	 "Server didnot accept BINARY transfer.\n"
	.size	.L.str35, 39

	.type	.L.str36,@object        # @.str36
.L.str36:
	.asciz	 "PASV\r\n"
	.size	.L.str36, 7

	.type	.L.str37,@object        # @.str37
.L.str37:
	.asciz	 "LIST %s\r\n"
	.size	.L.str37, 10

	.type	.L.str38,@object        # @.str38
.L.str38:
	.asciz	 "Couldn't get SIZE for the URL!"
	.size	.L.str38, 31

	.type	.L.str39,@object        # @.str39
.L.str39:
	.asciz	 "Content length: %d"
	.size	.L.str39, 19

	.type	.L.str40,@object        # @.str40
.L.str40:
	.asciz	 "%d.%d.%d.%d"
	.size	.L.str40, 12

	.type	.L.str41,@object        # @.str41
.L.str41:
	.asciz	 "Socket creation failed for FTP Data Connection: %s"
	.size	.L.str41, 51

	.type	.L.str42,@object        # @.str42
.L.str42:
	.asciz	 "Connection failed FTP Data Connection: %s"
	.size	.L.str42, 42

	.type	.L.str43,@object        # @.str43
.L.str43:
	.asciz	 "%15s %15s %15s %15s %15s %15s %15s %15s %15s\r\n"
	.size	.L.str43, 47

	.type	.L.str44,@object        # @.str44
.L.str44:
	.asciz	 "SIZE: %s\n"
	.size	.L.str44, 10

	.type	preferredthread,@object # @preferredthread
	.data
	.globl	preferredthread
	.align	4
preferredthread:
	.long	4294967295              # 0xffffffff
	.size	preferredthread, 4

	.type	http_proxyport,@object  # @http_proxyport
	.globl	http_proxyport
	.align	4
http_proxyport:
	.long	4294967295              # 0xffffffff
	.size	http_proxyport, 4

	.type	.L.str78,@object        # @.str78
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str78:
	.asciz	 "Invalid"
	.size	.L.str78, 8

	.type	.L.str179,@object       # @.str179
.L.str179:
	.asciz	 "ftpanonymoususer"
	.size	.L.str179, 17

	.type	.L.str280,@object       # @.str280
.L.str280:
	.asciz	 "ftpanonymouspass"
	.size	.L.str280, 17

	.type	.L.str381,@object       # @.str381
.L.str381:
	.asciz	 "http_proxyhost"
	.size	.L.str381, 15

	.type	.L.str482,@object       # @.str482
.L.str482:
	.asciz	 "http_proxyuser"
	.size	.L.str482, 15

	.type	.L.str583,@object       # @.str583
.L.str583:
	.asciz	 "http_proxypass"
	.size	.L.str583, 15

	.type	.L.str684,@object       # @.str684
.L.str684:
	.asciz	 "preferredthread"
	.size	.L.str684, 16

	.type	.Lloadconfig.variables,@object # @loadconfig.variables
	.section	.rodata,"a",@progbits
	.align	16
.Lloadconfig.variables:
	.quad	.L.str78
	.quad	.L.str179
	.quad	.L.str280
	.quad	.L.str381
	.quad	.L.str482
	.quad	.L.str583
	.quad	.L.str684
	.size	.Lloadconfig.variables, 56

	.type	.L.str785,@object       # @.str785
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str785:
	.asciz	 "r"
	.size	.L.str785, 2

	.type	.L.str886,@object       # @.str886
.L.str886:
	.asciz	 "loadconfig: cannot open aget rc file %s, exiting...\n"
	.size	.L.str886, 53

	.type	.L.str987,@object       # @.str987
.L.str987:
	.asciz	 "Illegal Keyword in RC file %s: %s\n"
	.size	.L.str987, 35

	.type	ftpanonymoususer,@object # @ftpanonymoususer
	.comm	ftpanonymoususer,256,16
	.type	ftpanonymouspass,@object # @ftpanonymouspass
	.comm	ftpanonymouspass,256,16
	.type	http_proxyhost,@object  # @http_proxyhost
	.comm	http_proxyhost,256,16
	.type	http_proxyuser,@object  # @http_proxyuser
	.comm	http_proxyuser,256,16
	.type	http_proxypass,@object  # @http_proxypass
	.comm	http_proxypass,256,16
	.type	.L.str1090,@object      # @.str1090
.L.str1090:
	.asciz	 "w"
	.size	.L.str1090, 2

	.type	.L.str1191,@object      # @.str1191
.L.str1191:
	.asciz	 "Aget: couldn't create agetrc file %s: %s\n"
	.size	.L.str1191, 42

	.type	.L.str1292,@object      # @.str1292
.L.str1292:
	.asciz	 "ftpanonymoususer = ftp\n"
	.size	.L.str1292, 24

	.type	.L.str1393,@object      # @.str1393
.L.str1393:
	.asciz	 "ftpanonymouspass = aget@enderunix.org\n"
	.size	.L.str1393, 39

	.type	.L.str1494,@object      # @.str1494
.L.str1494:
	.asciz	 "%s/.agetrc"
	.size	.L.str1494, 11

	.type	.L.str1595,@object      # @.str1595
.L.str1595:
	.asciz	 "cannot read agetrc file %s: %s. Might be corrupt!\n"
	.size	.L.str1595, 51

	.type	.L.str1696,@object      # @.str1696
.L.str1696:
	.asciz	 ":"
	.size	.L.str1696, 2

	.type	main_tid,@object        # @main_tid
	.comm	main_tid,8,8
	.type	req,@object             # @req
	.comm	req,8,8
	.type	wthread,@object         # @wthread
	.comm	wthread,8,8
	.type	nthreads,@object        # @nthreads
	.comm	nthreads,4,4
	.type	.L.str103,@object       # @.str103
.L.str103:
	.asciz	 "p:l:n:hfv"
	.size	.L.str103, 10

	.type	fsuggested,@object      # @fsuggested
	.comm	fsuggested,4,4
	.type	.L.str1106,@object      # @.str1106
.L.str1106:
	.asciz	 "Error: Maximum # of threads allowed is %d\n"
	.size	.L.str1106, 43

	.type	.L.str2107,@object      # @.str2107
.L.str2107:
	.asciz	 "%s\n"
	.size	.L.str2107, 4

	.type	.L.str3108,@object      # @.str3108
.L.str3108:
	.asciz	 "EnderUNIX Aget 0.59"
	.size	.L.str3108, 20

	.type	.L.str4109,@object      # @.str4109
.L.str4109:
	.asciz	 "%s\nby Murat BALABAN <murat@enderunix.org>\n"
	.size	.L.str4109, 43

	.type	.L.str5110,@object      # @.str5110
.L.str5110:
	.asciz	 "ERROR: -f and -n should be used together!, exiting...\n"
	.size	.L.str5110, 55

	.type	.L.str6111,@object      # @.str6111
.L.str6111:
	.asciz	 "/"
	.size	.L.str6111, 2

	.type	hthread,@object         # @hthread
	.comm	hthread,8,8
	.type	.L.str114,@object       # @.str114
.L.str114:
	.asciz	 "https://"
	.size	.L.str114, 9

	.type	.L.str1115,@object      # @.str1115
.L.str1115:
	.asciz	 "Error: Currently Aget doesn't support HTTPS requests...\n"
	.size	.L.str1115, 57

	.type	.L.str2116,@object      # @.str2116
.L.str2116:
	.asciz	 "ftp://"
	.size	.L.str2116, 7

	.type	.L.str3117,@object      # @.str3117
.L.str3117:
	.asciz	 "http://"
	.size	.L.str3117, 8

	.type	.L.str4118,@object      # @.str4118
.L.str4118:
	.asciz	 "Error: No protocol specified (http:// or ftp://)...\n"
	.size	.L.str4118, 53

	.type	.L.str5119,@object      # @.str5119
.L.str5119:
	.asciz	 "Error: URL should be of the form http://...\n"
	.size	.L.str5119, 45

	.type	.L.str6120,@object      # @.str6120
.L.str6120:
	.asciz	 "Error: URL should be of the form ftp://...\n"
	.size	.L.str6120, 44

	.type	.L.str7121,@object      # @.str7121
.L.str7121:
	.asciz	 "Error: Cannot get hostname from URL...\n"
	.size	.L.str7121, 40

	.type	.L.str8122,@object      # @.str8122
.L.str8122:
	.asciz	 "Error: Cannot get password from URL...\n"
	.size	.L.str8122, 40

	.type	.L.str9123,@object      # @.str9123
.L.str9123:
	.asciz	 "Error: Cannot get remote file name from URL...\n"
	.size	.L.str9123, 48

	.type	.L.str10124,@object     # @.str10124
.L.str10124:
	.asciz	 "Error: Cannot get local file name from URL...\n"
	.size	.L.str10124, 47

	.type	.L.str11125,@object     # @.str11125
.L.str11125:
	.asciz	 "usage: aget [options] url\n"
	.size	.L.str11125, 27

	.type	.L.str12126,@object     # @.str12126
.L.str12126:
	.asciz	 "\toptions:\n"
	.size	.L.str12126, 11

	.type	.L.str13127,@object     # @.str13127
.L.str13127:
	.asciz	 "\t\t-p port number\n"
	.size	.L.str13127, 18

	.type	.L.str14128,@object     # @.str14128
.L.str14128:
	.asciz	 "\t\t-l local file name\n"
	.size	.L.str14128, 22

	.type	.L.str15129,@object     # @.str15129
.L.str15129:
	.asciz	 "\t\t-n suggested number of threads\n"
	.size	.L.str15129, 34

	.type	.L.str16130,@object     # @.str16130
.L.str16130:
	.asciz	 "\t\t-h this screen\n"
	.size	.L.str16130, 18

	.type	.L.str17131,@object     # @.str17131
.L.str17131:
	.asciz	 "\t\t-v version info\n"
	.size	.L.str17131, 19

	.type	.L.str18132,@object     # @.str18132
.L.str18132:
	.asciz	 "\n"
	.size	.L.str18132, 2

	.type	.L.str19133,@object     # @.str19133
.L.str19133:
	.asciz	 "http//www.enderunix.org/aget/\n"
	.size	.L.str19133, 31

	.type	.L.str20134,@object     # @.str20134
.L.str20134:
	.asciz	 "Aget > %s"
	.size	.L.str20134, 10

	.type	.L.str21135,@object     # @.str21135
.L.str21135:
	.asciz	 " %s"
	.size	.L.str21135, 4

	.type	updateProgressBar.prev,@object # @updateProgressBar.prev
	.local	updateProgressBar.prev
	.comm	updateProgressBar.prev,4,4
	.type	.L.str22136,@object     # @.str22136
.L.str22136:
	.asciz	 "[%.2d%% done] Bytes: %u"
	.size	.L.str22136, 24

	.type	.L.str23137,@object     # @.str23137
.L.str23137:
	.asciz	 "%s"
	.size	.L.str23137, 3

	.type	.L.str24138,@object     # @.str24138
.L.str24138:
	.asciz	 "HTTP/1.1 416"
	.size	.L.str24138, 13

	.type	.L.str25139,@object     # @.str25139
.L.str25139:
	.asciz	 "Server returned HTTP/1.1 416 - Requested Range Not Satisfiable\n"
	.size	.L.str25139, 64

	.type	.L.str26140,@object     # @.str26140
.L.str26140:
	.asciz	 "HTTP/1.1 403"
	.size	.L.str26140, 13

	.type	.L.str27141,@object     # @.str27141
.L.str27141:
	.asciz	 "<Server returned HTTP/1.1 403 - Permission Denied\n"
	.size	.L.str27141, 51

	.type	.L.str28142,@object     # @.str28142
.L.str28142:
	.asciz	 "HTTP/1.1 404"
	.size	.L.str28142, 13

	.type	.L.str29143,@object     # @.str29143
.L.str29143:
	.asciz	 "<Server returned HTTP/1.1 404 - File Not Found\n"
	.size	.L.str29143, 48

	.type	.L.str30144,@object     # @.str30144
.L.str30144:
	.asciz	 "recv failed: %s"
	.size	.L.str30144, 16

	.type	.L.str31145,@object     # @.str31145
.L.str31145:
	.asciz	 "Error on select: %s"
	.size	.L.str31145, 20

	.type	.L.str32146,@object     # @.str32146
.L.str32146:
	.asciz	 "There seems to be an error in the connections."
	.size	.L.str32146, 47

	.type	.L.str33147,@object     # @.str33147
.L.str33147:
	.asciz	 "Requested action not taken"
	.size	.L.str33147, 27

	.type	.L.str34148,@object     # @.str34148
.L.str34148:
	.asciz	 "Retry the download after sometime."
	.size	.L.str34148, 35

	.type	.L.str35149,@object     # @.str35149
.L.str35149:
	.asciz	 "If the error persists, please report this with the command line used to murat@enderunix.org."
	.size	.L.str35149, 93

	.type	.L.str36150,@object     # @.str36150
.L.str36150:
	.asciz	 "The server has reported a syntax error."
	.size	.L.str36150, 40

	.type	.L.str37151,@object     # @.str37151
.L.str37151:
	.asciz	 "Error relating to login; checkout the previous message, if available."
	.size	.L.str37151, 70

	.type	.L.str38152,@object     # @.str38152
.L.str38152:
	.asciz	 "If you feel this is an error with aget, please report this with the command line used to murat@enderunix.org."
	.size	.L.str38152, 110

	.type	.L.str39153,@object     # @.str39153
.L.str39153:
	.asciz	 "r"
	.size	.L.str39153, 2

	.type	.L.str172,@object       # @.str172
.L.str172:
	.asciz	 "Download already complete: job completed in %d seconds. (%d Kb/sec)"
	.size	.L.str172, 68

	.type	.L.str1173,@object      # @.str1173
.L.str1173:
	.asciz	 "Shutting down..."
	.size	.L.str1173, 17

	.type	.L.str2174,@object      # @.str2174
.L.str2174:
	.asciz	 "%s-aget%c.log"
	.size	.L.str2174, 14

	.type	.L.str3175,@object      # @.str3175
.L.str3175:
	.asciz	 "%s%s-aget%c.log"
	.size	.L.str3175, 16

	.type	.L.str4176,@object      # @.str4176
.L.str4176:
	.asciz	 "w"
	.size	.L.str4176, 2

	.type	.L.str5177,@object      # @.str5177
.L.str5177:
	.asciz	 "Cannot open log file %s for writing: %s\n"
	.size	.L.str5177, 41

	.type	.L.str6178,@object      # @.str6178
.L.str6178:
	.asciz	 "--> Logfile is: %s, so far %d bytes have been transferred\n"
	.size	.L.str6178, 59

	.type	.L.str7179,@object      # @.str7179
.L.str7179:
	.asciz	 "Attempting to read log file for resuming download job..."
	.size	.L.str7179, 57

	.type	.L.str8180,@object      # @.str8180
.L.str8180:
	.asciz	 "r"
	.size	.L.str8180, 2

	.type	.L.str9181,@object      # @.str9181
.L.str9181:
	.asciz	 "Couldn't find log file for this download, starting a clean job..."
	.size	.L.str9181, 66

	.type	.L.str10182,@object     # @.str10182
.L.str10182:
	.asciz	 "Cannot open log file %s for reading: %s\n"
	.size	.L.str10182, 41

	.type	.L.str11183,@object     # @.str11183
.L.str11183:
	.asciz	 "%d bytes already transferred"
	.size	.L.str11183, 29

	.type	.L.str12184,@object     # @.str12184
.L.str12184:
	.asciz	 "read_log: cannot remove stale log file %s: %s\n"
	.size	.L.str12184, 47

	.type	.L.str187,@object       # @.str187
.L.str187:
	.asciz	 "^C caught, terminating download job. Please wait...\n"
	.size	.L.str187, 53

	.type	.L.str1188,@object      # @.str1188
.L.str1188:
	.asciz	 "Download job terminated. Now saving download job...\n"
	.size	.L.str1188, 53

	.text
.Ltext_end:
	.data
.Ldata_end:
	.text
.Lsection_end1:
	.section	.debug_info,"",@progbits
.Linfo_begin16:
	.long	215                     # Length of Compilation Unit Info
	.short	2                       # DWARF version number
	.long	.Labbrev_begin          # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0xd0 DW_TAG_compile_unit
	.long	.Lstring0               # DW_AT_producer
	.short	12                      # DW_AT_language
	.long	.Lstring160             # DW_AT_name
	.quad	0                       # DW_AT_low_pc
	.long	.Lsection_line          # DW_AT_stmt_list
	.long	.Lstring2               # DW_AT_comp_dir
	.byte	2                       # Abbrev [2] 0x26:0x19 DW_TAG_subprogram
	.long	.Lstring161             # DW_AT_name
	.byte	16                      # DW_AT_decl_file
	.byte	30                      # DW_AT_decl_line
                                        # DW_AT_external
	.quad	.Lfunc_begin26          # DW_AT_low_pc
	.quad	.Lfunc_end26            # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	3                       # Abbrev [3] 0x3f:0x1d DW_TAG_subprogram
	.long	.Lstring162             # DW_AT_name
	.byte	16                      # DW_AT_decl_file
	.byte	93                      # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	92                      # DW_AT_type
                                        # DW_AT_external
	.quad	.Lfunc_begin27          # DW_AT_low_pc
	.quad	.Lfunc_end27            # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	4                       # Abbrev [4] 0x5c:0x7 DW_TAG_base_type
	.long	.Lstring34              # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	5                       # Abbrev [5] 0x63:0x77 DW_TAG_enumeration_type
	.byte	4                       # DW_AT_byte_size
	.byte	3                       # DW_AT_decl_file
	.byte	14                      # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x67:0x7 DW_TAG_enumerator
	.long	.Lstring11              # DW_AT_name
	.ascii	 "\200\002"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x6e:0x8 DW_TAG_enumerator
	.long	.Lstring12              # DW_AT_name
	.asciz	 "\200\300"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x76:0x8 DW_TAG_enumerator
	.long	.Lstring13              # DW_AT_name
	.asciz	 "\200\300"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x7e:0x7 DW_TAG_enumerator
	.long	.Lstring14              # DW_AT_name
	.ascii	 "\200\004"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x85:0x7 DW_TAG_enumerator
	.long	.Lstring15              # DW_AT_name
	.ascii	 "\200\b"               # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x8c:0x7 DW_TAG_enumerator
	.long	.Lstring16              # DW_AT_name
	.ascii	 "\200\b"               # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x93:0x6 DW_TAG_enumerator
	.long	.Lstring17              # DW_AT_name
	.byte	16                      # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x99:0x6 DW_TAG_enumerator
	.long	.Lstring18              # DW_AT_name
	.byte	10                      # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x9f:0x7 DW_TAG_enumerator
	.long	.Lstring19              # DW_AT_name
	.ascii	 "\200\002"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0xa6:0x7 DW_TAG_enumerator
	.long	.Lstring20              # DW_AT_name
	.asciz	 "\320"                 # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0xad:0x6 DW_TAG_enumerator
	.long	.Lstring21              # DW_AT_name
	.byte	2                       # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0xb3:0x6 DW_TAG_enumerator
	.long	.Lstring22              # DW_AT_name
	.byte	21                      # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0xb9:0x7 DW_TAG_enumerator
	.long	.Lstring23              # DW_AT_name
	.ascii	 "\377\001"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0xc0:0x6 DW_TAG_enumerator
	.long	.Lstring24              # DW_AT_name
	.byte	0                       # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0xc6:0x7 DW_TAG_enumerator
	.long	.Lstring25              # DW_AT_name
	.ascii	 "\377\001"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0xcd:0x6 DW_TAG_enumerator
	.long	.Lstring26              # DW_AT_name
	.byte	15                      # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0xd3:0x6 DW_TAG_enumerator
	.long	.Lstring27              # DW_AT_name
	.byte	0                       # DW_AT_const_value
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
.Linfo_end16:
.Linfo_begin4:
	.long	604                     # Length of Compilation Unit Info
	.short	2                       # DWARF version number
	.long	.Labbrev_begin          # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x255 DW_TAG_compile_unit
	.long	.Lstring0               # DW_AT_producer
	.short	12                      # DW_AT_language
	.long	.Lstring28              # DW_AT_name
	.quad	0                       # DW_AT_low_pc
	.long	.Lsection_line          # DW_AT_stmt_list
	.long	.Lstring2               # DW_AT_comp_dir
	.byte	4                       # Abbrev [4] 0x26:0x7 DW_TAG_base_type
	.long	.Lstring30              # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	7                       # Abbrev [7] 0x2d:0x15 DW_TAG_variable
	.long	.Lstring29              # DW_AT_name
	.long	38                      # DW_AT_type
                                        # DW_AT_external
	.byte	4                       # DW_AT_decl_file
	.byte	37                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	bwritten
	.byte	4                       # Abbrev [4] 0x42:0x7 DW_TAG_base_type
	.long	.Lstring34              # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	4                       # Abbrev [4] 0x49:0x7 DW_TAG_base_type
	.long	.Lstring40              # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	2                       # DW_AT_byte_size
	.byte	8                       # Abbrev [8] 0x50:0x5 DW_TAG_pointer_type
	.long	85                      # DW_AT_type
	.byte	9                       # Abbrev [9] 0x55:0x27 DW_TAG_structure_type
	.long	.Lstring45              # DW_AT_name
	.byte	16                      # DW_AT_byte_size
	.byte	5                       # DW_AT_decl_file
	.byte	75                      # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x5d:0xf DW_TAG_member
	.long	.Lstring43              # DW_AT_name
	.long	80                      # DW_AT_type
	.byte	5                       # DW_AT_decl_file
	.byte	77                      # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0x6c:0xf DW_TAG_member
	.long	.Lstring44              # DW_AT_name
	.long	80                      # DW_AT_type
	.byte	5                       # DW_AT_decl_file
	.byte	78                      # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	8
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	0                       # End Of Children Mark
	.byte	11                      # Abbrev [11] 0x7c:0xb DW_TAG_typedef
	.long	85                      # DW_AT_type
	.long	.Lstring46              # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	79                      # DW_AT_decl_line
	.byte	9                       # Abbrev [9] 0x87:0x81 DW_TAG_structure_type
	.long	.Lstring47              # DW_AT_name
	.byte	40                      # DW_AT_byte_size
	.byte	5                       # DW_AT_decl_file
	.byte	92                      # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x8f:0xf DW_TAG_member
	.long	.Lstring33              # DW_AT_name
	.long	66                      # DW_AT_type
	.byte	5                       # DW_AT_decl_file
	.byte	94                      # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0x9e:0xf DW_TAG_member
	.long	.Lstring35              # DW_AT_name
	.long	38                      # DW_AT_type
	.byte	5                       # DW_AT_decl_file
	.byte	95                      # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	4
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0xad:0xf DW_TAG_member
	.long	.Lstring36              # DW_AT_name
	.long	66                      # DW_AT_type
	.byte	5                       # DW_AT_decl_file
	.byte	96                      # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	8
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0xbc:0xf DW_TAG_member
	.long	.Lstring37              # DW_AT_name
	.long	38                      # DW_AT_type
	.byte	5                       # DW_AT_decl_file
	.byte	98                      # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	12
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0xcb:0xf DW_TAG_member
	.long	.Lstring38              # DW_AT_name
	.long	66                      # DW_AT_type
	.byte	5                       # DW_AT_decl_file
	.byte	102                     # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	16
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0xda:0xf DW_TAG_member
	.long	.Lstring39              # DW_AT_name
	.long	73                      # DW_AT_type
	.byte	5                       # DW_AT_decl_file
	.byte	104                     # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	20
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0xe9:0xf DW_TAG_member
	.long	.Lstring41              # DW_AT_name
	.long	73                      # DW_AT_type
	.byte	5                       # DW_AT_decl_file
	.byte	105                     # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	22
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0xf8:0xf DW_TAG_member
	.long	.Lstring42              # DW_AT_name
	.long	124                     # DW_AT_type
	.byte	5                       # DW_AT_decl_file
	.byte	106                     # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	24
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	0                       # End Of Children Mark
	.byte	4                       # Abbrev [4] 0x108:0x7 DW_TAG_base_type
	.long	.Lstring49              # DW_AT_name
	.byte	6                       # DW_AT_encoding
	.byte	1                       # DW_AT_byte_size
	.byte	12                      # Abbrev [12] 0x10f:0x3 DW_TAG_base_type
	.byte	4                       # DW_AT_byte_size
	.byte	5                       # DW_AT_encoding
	.byte	13                      # Abbrev [13] 0x112:0xc DW_TAG_array_type
	.long	264                     # DW_AT_type
	.byte	14                      # Abbrev [14] 0x117:0x6 DW_TAG_subrange_type
	.long	271                     # DW_AT_type
	.byte	39                      # DW_AT_upper_bound
	.byte	0                       # End Of Children Mark
	.byte	4                       # Abbrev [4] 0x11e:0x7 DW_TAG_base_type
	.long	.Lstring4               # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	8                       # DW_AT_byte_size
	.byte	15                      # Abbrev [15] 0x125:0x32 DW_TAG_union_type
	.byte	40                      # DW_AT_byte_size
	.byte	5                       # DW_AT_decl_file
	.byte	90                      # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x129:0xf DW_TAG_member
	.long	.Lstring32              # DW_AT_name
	.long	135                     # DW_AT_type
	.byte	5                       # DW_AT_decl_file
	.byte	124                     # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0x138:0xf DW_TAG_member
	.long	.Lstring48              # DW_AT_name
	.long	274                     # DW_AT_type
	.byte	5                       # DW_AT_decl_file
	.byte	125                     # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0x147:0xf DW_TAG_member
	.long	.Lstring50              # DW_AT_name
	.long	286                     # DW_AT_type
	.byte	5                       # DW_AT_decl_file
	.byte	126                     # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	0                       # End Of Children Mark
	.byte	11                      # Abbrev [11] 0x157:0xb DW_TAG_typedef
	.long	293                     # DW_AT_type
	.long	.Lstring51              # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	127                     # DW_AT_decl_line
	.byte	7                       # Abbrev [7] 0x162:0x15 DW_TAG_variable
	.long	.Lstring31              # DW_AT_name
	.long	343                     # DW_AT_type
                                        # DW_AT_external
	.byte	4                       # DW_AT_decl_file
	.byte	38                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	bwritten_mutex
	.byte	3                       # Abbrev [3] 0x177:0x1d DW_TAG_subprogram
	.long	.Lstring52              # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	40                      # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	404                     # DW_AT_type
                                        # DW_AT_external
	.quad	.Lfunc_begin3           # DW_AT_low_pc
	.quad	.Lfunc_end3             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	16                      # Abbrev [16] 0x194:0x1 DW_TAG_pointer_type
	.byte	5                       # Abbrev [5] 0x195:0x11 DW_TAG_enumeration_type
	.byte	4                       # DW_AT_byte_size
	.byte	6                       # DW_AT_decl_file
	.byte	217                     # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x199:0x6 DW_TAG_enumerator
	.long	.Lstring53              # DW_AT_name
	.byte	0                       # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x19f:0x6 DW_TAG_enumerator
	.long	.Lstring54              # DW_AT_name
	.byte	1                       # DW_AT_const_value
	.byte	0                       # End Of Children Mark
	.byte	5                       # Abbrev [5] 0x1a6:0x77 DW_TAG_enumeration_type
	.byte	4                       # DW_AT_byte_size
	.byte	3                       # DW_AT_decl_file
	.byte	14                      # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x1aa:0x7 DW_TAG_enumerator
	.long	.Lstring11              # DW_AT_name
	.ascii	 "\200\002"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x1b1:0x8 DW_TAG_enumerator
	.long	.Lstring12              # DW_AT_name
	.asciz	 "\200\300"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x1b9:0x8 DW_TAG_enumerator
	.long	.Lstring13              # DW_AT_name
	.asciz	 "\200\300"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x1c1:0x7 DW_TAG_enumerator
	.long	.Lstring14              # DW_AT_name
	.ascii	 "\200\004"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x1c8:0x7 DW_TAG_enumerator
	.long	.Lstring15              # DW_AT_name
	.ascii	 "\200\b"               # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x1cf:0x7 DW_TAG_enumerator
	.long	.Lstring16              # DW_AT_name
	.ascii	 "\200\b"               # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x1d6:0x6 DW_TAG_enumerator
	.long	.Lstring17              # DW_AT_name
	.byte	16                      # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x1dc:0x6 DW_TAG_enumerator
	.long	.Lstring18              # DW_AT_name
	.byte	10                      # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x1e2:0x7 DW_TAG_enumerator
	.long	.Lstring19              # DW_AT_name
	.ascii	 "\200\002"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x1e9:0x7 DW_TAG_enumerator
	.long	.Lstring20              # DW_AT_name
	.asciz	 "\320"                 # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x1f0:0x6 DW_TAG_enumerator
	.long	.Lstring21              # DW_AT_name
	.byte	2                       # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x1f6:0x6 DW_TAG_enumerator
	.long	.Lstring22              # DW_AT_name
	.byte	21                      # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x1fc:0x7 DW_TAG_enumerator
	.long	.Lstring23              # DW_AT_name
	.ascii	 "\377\001"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x203:0x6 DW_TAG_enumerator
	.long	.Lstring24              # DW_AT_name
	.byte	0                       # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x209:0x7 DW_TAG_enumerator
	.long	.Lstring25              # DW_AT_name
	.ascii	 "\377\001"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x210:0x6 DW_TAG_enumerator
	.long	.Lstring26              # DW_AT_name
	.byte	15                      # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x216:0x6 DW_TAG_enumerator
	.long	.Lstring27              # DW_AT_name
	.byte	0                       # DW_AT_const_value
	.byte	0                       # End Of Children Mark
	.byte	17                      # Abbrev [17] 0x21d:0x42 DW_TAG_enumeration_type
	.long	.Lstring64              # DW_AT_name
	.byte	4                       # DW_AT_byte_size
	.byte	7                       # DW_AT_decl_file
	.byte	24                      # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x225:0x6 DW_TAG_enumerator
	.long	.Lstring55              # DW_AT_name
	.byte	1                       # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x22b:0x6 DW_TAG_enumerator
	.long	.Lstring56              # DW_AT_name
	.byte	2                       # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x231:0x6 DW_TAG_enumerator
	.long	.Lstring57              # DW_AT_name
	.byte	3                       # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x237:0x6 DW_TAG_enumerator
	.long	.Lstring58              # DW_AT_name
	.byte	4                       # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x23d:0x6 DW_TAG_enumerator
	.long	.Lstring59              # DW_AT_name
	.byte	5                       # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x243:0x6 DW_TAG_enumerator
	.long	.Lstring60              # DW_AT_name
	.byte	6                       # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x249:0x6 DW_TAG_enumerator
	.long	.Lstring61              # DW_AT_name
	.byte	10                      # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x24f:0x8 DW_TAG_enumerator
	.long	.Lstring62              # DW_AT_name
	.ascii	 "\200\200 "            # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x257:0x7 DW_TAG_enumerator
	.long	.Lstring63              # DW_AT_name
	.ascii	 "\200\020"             # DW_AT_const_value
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
.Linfo_end4:
.Linfo_begin1:
	.long	1717                    # Length of Compilation Unit Info
	.short	2                       # DWARF version number
	.long	.Labbrev_begin          # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x6ae DW_TAG_compile_unit
	.long	.Lstring0               # DW_AT_producer
	.short	12                      # DW_AT_language
	.long	.Lstring1               # DW_AT_name
	.quad	0                       # DW_AT_low_pc
	.long	.Lsection_line          # DW_AT_stmt_list
	.long	.Lstring2               # DW_AT_comp_dir
	.byte	4                       # Abbrev [4] 0x26:0x7 DW_TAG_base_type
	.long	.Lstring4               # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	8                       # DW_AT_byte_size
	.byte	11                      # Abbrev [11] 0x2d:0xb DW_TAG_typedef
	.long	38                      # DW_AT_type
	.long	.Lstring5               # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	139                     # DW_AT_decl_line
	.byte	11                      # Abbrev [11] 0x38:0xb DW_TAG_typedef
	.long	45                      # DW_AT_type
	.long	.Lstring6               # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	75                      # DW_AT_decl_line
	.byte	7                       # Abbrev [7] 0x43:0x15 DW_TAG_variable
	.long	.Lstring3               # DW_AT_name
	.long	56                      # DW_AT_type
                                        # DW_AT_external
	.byte	1                       # DW_AT_decl_file
	.byte	45                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	t_start
	.byte	7                       # Abbrev [7] 0x58:0x15 DW_TAG_variable
	.long	.Lstring7               # DW_AT_name
	.long	56                      # DW_AT_type
                                        # DW_AT_external
	.byte	1                       # DW_AT_decl_file
	.byte	45                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	t_finish
	.byte	18                      # Abbrev [18] 0x6d:0xf8 DW_TAG_subprogram
	.long	.Lstring8               # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	47                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.quad	.Lfunc_begin0           # DW_AT_low_pc
	.quad	.Lfunc_end0             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	19                      # Abbrev [19] 0x86:0x10 DW_TAG_formal_parameter
	.long	.Lstring102             # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	47                      # DW_AT_decl_line
	.long	1139                    # DW_AT_type
	.byte	4                       # DW_AT_location
	.byte	145
	.ascii	 "\300\201\001"
	.byte	20                      # Abbrev [20] 0x96:0xce DW_TAG_lexical_block
	.quad	.Ltmp8                  # DW_AT_low_pc
	.quad	.Ltmp50                 # DW_AT_high_pc
	.byte	21                      # Abbrev [21] 0xa7:0x10 DW_TAG_variable
	.long	.Lstring167             # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	49                      # DW_AT_decl_line
	.long	916                     # DW_AT_type
	.byte	4                       # DW_AT_location
	.byte	145
	.ascii	 "\274\201\001"
	.byte	21                      # Abbrev [21] 0xb7:0x10 DW_TAG_variable
	.long	.Lstring168             # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	49                      # DW_AT_decl_line
	.long	916                     # DW_AT_type
	.byte	4                       # DW_AT_location
	.byte	145
	.ascii	 "\270\201\001"
	.byte	21                      # Abbrev [21] 0xc7:0x10 DW_TAG_variable
	.long	.Lstring139             # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	49                      # DW_AT_decl_line
	.long	916                     # DW_AT_type
	.byte	4                       # DW_AT_location
	.byte	145
	.ascii	 "\264\201\001"
	.byte	21                      # Abbrev [21] 0xd7:0x10 DW_TAG_variable
	.long	.Lstring169             # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	49                      # DW_AT_decl_line
	.long	916                     # DW_AT_type
	.byte	4                       # DW_AT_location
	.byte	145
	.ascii	 "\260\201\001"
	.byte	21                      # Abbrev [21] 0xe7:0x10 DW_TAG_variable
	.long	.Lstring170             # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	49                      # DW_AT_decl_line
	.long	916                     # DW_AT_type
	.byte	4                       # DW_AT_location
	.byte	145
	.ascii	 "\254\201\001"
	.byte	21                      # Abbrev [21] 0xf7:0x10 DW_TAG_variable
	.long	.Lstring136             # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	50                      # DW_AT_decl_line
	.long	38                      # DW_AT_type
	.byte	4                       # DW_AT_location
	.byte	145
	.ascii	 "\240\201\001"
	.byte	21                      # Abbrev [21] 0x107:0x10 DW_TAG_variable
	.long	.Lstring137             # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	50                      # DW_AT_decl_line
	.long	38                      # DW_AT_type
	.byte	4                       # DW_AT_location
	.byte	145
	.ascii	 "\230\201\001"
	.byte	21                      # Abbrev [21] 0x117:0x10 DW_TAG_variable
	.long	.Lstring171             # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	51                      # DW_AT_decl_line
	.long	1144                    # DW_AT_type
	.byte	4                       # DW_AT_location
	.byte	145
	.ascii	 "\220\201\001"
	.byte	21                      # Abbrev [21] 0x127:0x10 DW_TAG_variable
	.long	.Lstring172             # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	52                      # DW_AT_decl_line
	.long	1199                    # DW_AT_type
	.byte	4                       # DW_AT_location
	.byte	145
	.ascii	 "\220\200\001"
	.byte	20                      # Abbrev [20] 0x137:0x2c DW_TAG_lexical_block
	.quad	.Ltmp15                 # DW_AT_low_pc
	.quad	.Ltmp29                 # DW_AT_high_pc
	.byte	22                      # Abbrev [22] 0x148:0x1a DW_TAG_lexical_block
	.long	.Ldebug_range+64        # DW_AT_ranges
	.byte	22                      # Abbrev [22] 0x14d:0x14 DW_TAG_lexical_block
	.long	.Ldebug_range           # DW_AT_ranges
	.byte	21                      # Abbrev [21] 0x152:0xe DW_TAG_variable
	.long	.Lstring176             # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	123                     # DW_AT_decl_line
	.long	891                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	16
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	18                      # Abbrev [18] 0x165:0xcc DW_TAG_subprogram
	.long	.Lstring9               # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	204                     # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.quad	.Lfunc_begin1           # DW_AT_low_pc
	.quad	.Lfunc_end1             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	19                      # Abbrev [19] 0x17e:0x10 DW_TAG_formal_parameter
	.long	.Lstring102             # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	204                     # DW_AT_decl_line
	.long	1139                    # DW_AT_type
	.byte	4                       # DW_AT_location
	.byte	145
	.asciz	 "\300\301"
	.byte	20                      # Abbrev [20] 0x18e:0xa2 DW_TAG_lexical_block
	.quad	.Ltmp66                 # DW_AT_low_pc
	.quad	.Ltmp101                # DW_AT_high_pc
	.byte	21                      # Abbrev [21] 0x19f:0x10 DW_TAG_variable
	.long	.Lstring167             # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	206                     # DW_AT_decl_line
	.long	916                     # DW_AT_type
	.byte	4                       # DW_AT_location
	.byte	145
	.asciz	 "\274\301"
	.byte	21                      # Abbrev [21] 0x1af:0x10 DW_TAG_variable
	.long	.Lstring168             # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	206                     # DW_AT_decl_line
	.long	916                     # DW_AT_type
	.byte	4                       # DW_AT_location
	.byte	145
	.asciz	 "\270\301"
	.byte	21                      # Abbrev [21] 0x1bf:0x10 DW_TAG_variable
	.long	.Lstring139             # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	206                     # DW_AT_decl_line
	.long	916                     # DW_AT_type
	.byte	4                       # DW_AT_location
	.byte	145
	.asciz	 "\264\301"
	.byte	21                      # Abbrev [21] 0x1cf:0x10 DW_TAG_variable
	.long	.Lstring169             # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	206                     # DW_AT_decl_line
	.long	916                     # DW_AT_type
	.byte	4                       # DW_AT_location
	.byte	145
	.asciz	 "\260\301"
	.byte	21                      # Abbrev [21] 0x1df:0x10 DW_TAG_variable
	.long	.Lstring170             # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	206                     # DW_AT_decl_line
	.long	916                     # DW_AT_type
	.byte	4                       # DW_AT_location
	.byte	145
	.asciz	 "\254\301"
	.byte	21                      # Abbrev [21] 0x1ef:0x10 DW_TAG_variable
	.long	.Lstring136             # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	207                     # DW_AT_decl_line
	.long	38                      # DW_AT_type
	.byte	4                       # DW_AT_location
	.byte	145
	.asciz	 "\240\301"
	.byte	21                      # Abbrev [21] 0x1ff:0x10 DW_TAG_variable
	.long	.Lstring137             # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	207                     # DW_AT_decl_line
	.long	38                      # DW_AT_type
	.byte	4                       # DW_AT_location
	.byte	145
	.asciz	 "\230\301"
	.byte	21                      # Abbrev [21] 0x20f:0x10 DW_TAG_variable
	.long	.Lstring142             # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	208                     # DW_AT_decl_line
	.long	916                     # DW_AT_type
	.byte	4                       # DW_AT_location
	.byte	145
	.asciz	 "\224\301"
	.byte	21                      # Abbrev [21] 0x21f:0x10 DW_TAG_variable
	.long	.Lstring172             # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	209                     # DW_AT_decl_line
	.long	1199                    # DW_AT_type
	.byte	4                       # DW_AT_location
	.byte	145
	.asciz	 "\220\300"
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	23                      # Abbrev [23] 0x231:0xbc DW_TAG_subprogram
	.long	.Lstring10              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	363                     # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.quad	.Lfunc_begin2           # DW_AT_low_pc
	.quad	.Lfunc_end2             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	24                      # Abbrev [24] 0x24b:0x10 DW_TAG_formal_parameter
	.long	.Lstring177             # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	363                     # DW_AT_decl_line
	.long	1715                    # DW_AT_type
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	 "\260\001"
	.byte	24                      # Abbrev [24] 0x25b:0x10 DW_TAG_formal_parameter
	.long	.Lstring113             # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	363                     # DW_AT_decl_line
	.long	916                     # DW_AT_type
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	 "\254\001"
	.byte	20                      # Abbrev [20] 0x26b:0x81 DW_TAG_lexical_block
	.quad	.Ltmp111                # DW_AT_low_pc
	.quad	.Ltmp131                # DW_AT_high_pc
	.byte	25                      # Abbrev [25] 0x27c:0x10 DW_TAG_variable
	.long	.Lstring167             # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	365                     # DW_AT_decl_line
	.long	916                     # DW_AT_type
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	 "\250\001"
	.byte	25                      # Abbrev [25] 0x28c:0x10 DW_TAG_variable
	.long	.Lstring139             # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	365                     # DW_AT_decl_line
	.long	916                     # DW_AT_type
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	 "\244\001"
	.byte	25                      # Abbrev [25] 0x29c:0x10 DW_TAG_variable
	.long	.Lstring169             # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	365                     # DW_AT_decl_line
	.long	916                     # DW_AT_type
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	 "\240\001"
	.byte	25                      # Abbrev [25] 0x2ac:0x10 DW_TAG_variable
	.long	.Lstring170             # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	365                     # DW_AT_decl_line
	.long	916                     # DW_AT_type
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	 "\234\001"
	.byte	25                      # Abbrev [25] 0x2bc:0x10 DW_TAG_variable
	.long	.Lstring168             # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	365                     # DW_AT_decl_line
	.long	916                     # DW_AT_type
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	 "\230\001"
	.byte	25                      # Abbrev [25] 0x2cc:0x10 DW_TAG_variable
	.long	.Lstring171             # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	366                     # DW_AT_decl_line
	.long	1144                    # DW_AT_type
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	 "\220\001"
	.byte	25                      # Abbrev [25] 0x2dc:0xf DW_TAG_variable
	.long	.Lstring172             # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	367                     # DW_AT_decl_line
	.long	1199                    # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	16
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	5                       # Abbrev [5] 0x2ed:0x77 DW_TAG_enumeration_type
	.byte	4                       # DW_AT_byte_size
	.byte	3                       # DW_AT_decl_file
	.byte	14                      # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x2f1:0x7 DW_TAG_enumerator
	.long	.Lstring11              # DW_AT_name
	.ascii	 "\200\002"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x2f8:0x8 DW_TAG_enumerator
	.long	.Lstring12              # DW_AT_name
	.asciz	 "\200\300"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x300:0x8 DW_TAG_enumerator
	.long	.Lstring13              # DW_AT_name
	.asciz	 "\200\300"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x308:0x7 DW_TAG_enumerator
	.long	.Lstring14              # DW_AT_name
	.ascii	 "\200\004"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x30f:0x7 DW_TAG_enumerator
	.long	.Lstring15              # DW_AT_name
	.ascii	 "\200\b"               # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x316:0x7 DW_TAG_enumerator
	.long	.Lstring16              # DW_AT_name
	.ascii	 "\200\b"               # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x31d:0x6 DW_TAG_enumerator
	.long	.Lstring17              # DW_AT_name
	.byte	16                      # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x323:0x6 DW_TAG_enumerator
	.long	.Lstring18              # DW_AT_name
	.byte	10                      # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x329:0x7 DW_TAG_enumerator
	.long	.Lstring19              # DW_AT_name
	.ascii	 "\200\002"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x330:0x7 DW_TAG_enumerator
	.long	.Lstring20              # DW_AT_name
	.asciz	 "\320"                 # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x337:0x6 DW_TAG_enumerator
	.long	.Lstring21              # DW_AT_name
	.byte	2                       # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x33d:0x6 DW_TAG_enumerator
	.long	.Lstring22              # DW_AT_name
	.byte	21                      # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x343:0x7 DW_TAG_enumerator
	.long	.Lstring23              # DW_AT_name
	.ascii	 "\377\001"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x34a:0x6 DW_TAG_enumerator
	.long	.Lstring24              # DW_AT_name
	.byte	0                       # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x350:0x7 DW_TAG_enumerator
	.long	.Lstring25              # DW_AT_name
	.ascii	 "\377\001"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x357:0x6 DW_TAG_enumerator
	.long	.Lstring26              # DW_AT_name
	.byte	15                      # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x35d:0x6 DW_TAG_enumerator
	.long	.Lstring27              # DW_AT_name
	.byte	0                       # DW_AT_const_value
	.byte	0                       # End Of Children Mark
	.byte	4                       # Abbrev [4] 0x364:0x7 DW_TAG_base_type
	.long	.Lstring49              # DW_AT_name
	.byte	6                       # DW_AT_encoding
	.byte	1                       # DW_AT_byte_size
	.byte	12                      # Abbrev [12] 0x36b:0x3 DW_TAG_base_type
	.byte	4                       # DW_AT_byte_size
	.byte	5                       # DW_AT_encoding
	.byte	13                      # Abbrev [13] 0x36e:0xd DW_TAG_array_type
	.long	868                     # DW_AT_type
	.byte	26                      # Abbrev [26] 0x373:0x7 DW_TAG_subrange_type
	.long	875                     # DW_AT_type
	.short	1023                    # DW_AT_upper_bound
	.byte	0                       # End Of Children Mark
	.byte	13                      # Abbrev [13] 0x37b:0xd DW_TAG_array_type
	.long	868                     # DW_AT_type
	.byte	26                      # Abbrev [26] 0x380:0x7 DW_TAG_subrange_type
	.long	875                     # DW_AT_type
	.short	8191                    # DW_AT_upper_bound
	.byte	0                       # End Of Children Mark
	.byte	13                      # Abbrev [13] 0x388:0xc DW_TAG_array_type
	.long	868                     # DW_AT_type
	.byte	14                      # Abbrev [14] 0x38d:0x6 DW_TAG_subrange_type
	.long	875                     # DW_AT_type
	.byte	15                      # DW_AT_upper_bound
	.byte	0                       # End Of Children Mark
	.byte	4                       # Abbrev [4] 0x394:0x7 DW_TAG_base_type
	.long	.Lstring34              # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	4                       # Abbrev [4] 0x39b:0x7 DW_TAG_base_type
	.long	.Lstring114             # DW_AT_name
	.byte	8                       # DW_AT_encoding
	.byte	1                       # DW_AT_byte_size
	.byte	27                      # Abbrev [27] 0x3a2:0xd1 DW_TAG_structure_type
	.long	.Lstring116             # DW_AT_name
	.short	34856                   # DW_AT_byte_size
	.byte	2                       # DW_AT_decl_file
	.byte	25                      # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x3ab:0xf DW_TAG_member
	.long	.Lstring103             # DW_AT_name
	.long	878                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	26                      # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0x3ba:0x10 DW_TAG_member
	.long	.Lstring104             # DW_AT_name
	.long	878                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	27                      # DW_AT_decl_line
	.byte	3                       # DW_AT_data_member_location
	.byte	35
	.ascii	 "\200\b"
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0x3ca:0x10 DW_TAG_member
	.long	.Lstring105             # DW_AT_name
	.long	891                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	28                      # DW_AT_decl_line
	.byte	3                       # DW_AT_data_member_location
	.byte	35
	.ascii	 "\200\020"
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0x3da:0x10 DW_TAG_member
	.long	.Lstring106             # DW_AT_name
	.long	891                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	29                      # DW_AT_decl_line
	.byte	3                       # DW_AT_data_member_location
	.byte	35
	.ascii	 "\200P"
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0x3ea:0x11 DW_TAG_member
	.long	.Lstring107             # DW_AT_name
	.long	904                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	30                      # DW_AT_decl_line
	.byte	4                       # DW_AT_data_member_location
	.byte	35
	.ascii	 "\200\220\001"
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0x3fb:0x11 DW_TAG_member
	.long	.Lstring108             # DW_AT_name
	.long	891                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	31                      # DW_AT_decl_line
	.byte	4                       # DW_AT_data_member_location
	.byte	35
	.ascii	 "\220\220\001"
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0x40c:0x11 DW_TAG_member
	.long	.Lstring109             # DW_AT_name
	.long	891                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	32                      # DW_AT_decl_line
	.byte	4                       # DW_AT_data_member_location
	.byte	35
	.ascii	 "\220\320\001"
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0x41d:0x11 DW_TAG_member
	.long	.Lstring110             # DW_AT_name
	.long	916                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	33                      # DW_AT_decl_line
	.byte	4                       # DW_AT_data_member_location
	.byte	35
	.ascii	 "\220\220\002"
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0x42e:0x11 DW_TAG_member
	.long	.Lstring111             # DW_AT_name
	.long	916                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	34                      # DW_AT_decl_line
	.byte	4                       # DW_AT_data_member_location
	.byte	35
	.ascii	 "\224\220\002"
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0x43f:0x11 DW_TAG_member
	.long	.Lstring112             # DW_AT_name
	.long	916                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	35                      # DW_AT_decl_line
	.byte	4                       # DW_AT_data_member_location
	.byte	35
	.ascii	 "\230\220\002"
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0x450:0x11 DW_TAG_member
	.long	.Lstring113             # DW_AT_name
	.long	923                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	36                      # DW_AT_decl_line
	.byte	4                       # DW_AT_data_member_location
	.byte	35
	.ascii	 "\234\220\002"
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0x461:0x11 DW_TAG_member
	.long	.Lstring115             # DW_AT_name
	.long	56                      # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	37                      # DW_AT_decl_line
	.byte	4                       # DW_AT_data_member_location
	.byte	35
	.ascii	 "\240\220\002"
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	0                       # End Of Children Mark
	.byte	8                       # Abbrev [8] 0x473:0x5 DW_TAG_pointer_type
	.long	930                     # DW_AT_type
	.byte	8                       # Abbrev [8] 0x478:0x5 DW_TAG_pointer_type
	.long	868                     # DW_AT_type
	.byte	4                       # Abbrev [4] 0x47d:0x7 DW_TAG_base_type
	.long	.Lstring118             # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	8                       # DW_AT_byte_size
	.byte	13                      # Abbrev [13] 0x484:0xc DW_TAG_array_type
	.long	1149                    # DW_AT_type
	.byte	14                      # Abbrev [14] 0x489:0x6 DW_TAG_subrange_type
	.long	875                     # DW_AT_type
	.byte	15                      # DW_AT_upper_bound
	.byte	0                       # End Of Children Mark
	.byte	28                      # Abbrev [28] 0x490:0x14 DW_TAG_structure_type
	.byte	128                     # DW_AT_byte_size
	.byte	18                      # DW_AT_decl_file
	.byte	27                      # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x494:0xf DW_TAG_member
	.long	.Lstring173             # DW_AT_name
	.long	1156                    # DW_AT_type
	.byte	18                      # DW_AT_decl_file
	.byte	29                      # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	0                       # End Of Children Mark
	.byte	11                      # Abbrev [11] 0x4a4:0xb DW_TAG_typedef
	.long	1168                    # DW_AT_type
	.long	.Lstring174             # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	30                      # DW_AT_decl_line
	.byte	11                      # Abbrev [11] 0x4af:0xb DW_TAG_typedef
	.long	1188                    # DW_AT_type
	.long	.Lstring175             # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	37                      # DW_AT_decl_line
	.byte	4                       # Abbrev [4] 0x4ba:0x7 DW_TAG_base_type
	.long	.Lstring123             # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	2                       # DW_AT_byte_size
	.byte	11                      # Abbrev [11] 0x4c1:0xb DW_TAG_typedef
	.long	1210                    # DW_AT_type
	.long	.Lstring124             # DW_AT_name
	.byte	14                      # DW_AT_decl_file
	.byte	28                      # DW_AT_decl_line
	.byte	11                      # Abbrev [11] 0x4cc:0xb DW_TAG_typedef
	.long	1210                    # DW_AT_type
	.long	.Lstring126             # DW_AT_name
	.byte	14                      # DW_AT_decl_file
	.byte	49                      # DW_AT_decl_line
	.byte	11                      # Abbrev [11] 0x4d7:0xb DW_TAG_typedef
	.long	1228                    # DW_AT_type
	.long	.Lstring127             # DW_AT_name
	.byte	14                      # DW_AT_decl_file
	.byte	117                     # DW_AT_decl_line
	.byte	4                       # Abbrev [4] 0x4e2:0x7 DW_TAG_base_type
	.long	.Lstring30              # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	11                      # Abbrev [11] 0x4e9:0xb DW_TAG_typedef
	.long	1250                    # DW_AT_type
	.long	.Lstring130             # DW_AT_name
	.byte	14                      # DW_AT_decl_file
	.byte	51                      # DW_AT_decl_line
	.byte	11                      # Abbrev [11] 0x4f4:0xb DW_TAG_typedef
	.long	1257                    # DW_AT_type
	.long	.Lstring131             # DW_AT_name
	.byte	14                      # DW_AT_decl_file
	.byte	30                      # DW_AT_decl_line
	.byte	9                       # Abbrev [9] 0x4ff:0x18 DW_TAG_structure_type
	.long	.Lstring132             # DW_AT_name
	.byte	4                       # DW_AT_byte_size
	.byte	14                      # DW_AT_decl_file
	.byte	31                      # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x507:0xf DW_TAG_member
	.long	.Lstring129             # DW_AT_name
	.long	1268                    # DW_AT_type
	.byte	14                      # DW_AT_decl_file
	.byte	33                      # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	0                       # End Of Children Mark
	.byte	13                      # Abbrev [13] 0x517:0xc DW_TAG_array_type
	.long	923                     # DW_AT_type
	.byte	14                      # Abbrev [14] 0x51c:0x6 DW_TAG_subrange_type
	.long	875                     # DW_AT_type
	.byte	7                       # DW_AT_upper_bound
	.byte	0                       # End Of Children Mark
	.byte	9                       # Abbrev [9] 0x523:0x45 DW_TAG_structure_type
	.long	.Lstring134             # DW_AT_name
	.byte	16                      # DW_AT_byte_size
	.byte	14                      # DW_AT_decl_file
	.byte	237                     # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x52b:0xf DW_TAG_member
	.long	.Lstring122             # DW_AT_name
	.long	1217                    # DW_AT_type
	.byte	14                      # DW_AT_decl_file
	.byte	239                     # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0x53a:0xf DW_TAG_member
	.long	.Lstring125             # DW_AT_name
	.long	1239                    # DW_AT_type
	.byte	14                      # DW_AT_decl_file
	.byte	240                     # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	2
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0x549:0xf DW_TAG_member
	.long	.Lstring128             # DW_AT_name
	.long	1279                    # DW_AT_type
	.byte	14                      # DW_AT_decl_file
	.byte	241                     # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	4
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0x558:0xf DW_TAG_member
	.long	.Lstring133             # DW_AT_name
	.long	1303                    # DW_AT_type
	.byte	14                      # DW_AT_decl_file
	.byte	244                     # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	8
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	0                       # End Of Children Mark
	.byte	13                      # Abbrev [13] 0x568:0xc DW_TAG_array_type
	.long	868                     # DW_AT_type
	.byte	14                      # Abbrev [14] 0x56d:0x6 DW_TAG_subrange_type
	.long	875                     # DW_AT_type
	.byte	255                     # DW_AT_upper_bound
	.byte	0                       # End Of Children Mark
	.byte	11                      # Abbrev [11] 0x574:0xb DW_TAG_typedef
	.long	1149                    # DW_AT_type
	.long	.Lstring119             # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	60                      # DW_AT_decl_line
	.byte	27                      # Abbrev [27] 0x57f:0xda DW_TAG_structure_type
	.long	.Lstring143             # DW_AT_name
	.short	17736                   # DW_AT_byte_size
	.byte	2                       # DW_AT_decl_file
	.byte	40                      # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x588:0xf DW_TAG_member
	.long	.Lstring121             # DW_AT_name
	.long	1315                    # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0x597:0xf DW_TAG_member
	.long	.Lstring135             # DW_AT_name
	.long	1384                    # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	42                      # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	16
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0x5a6:0x10 DW_TAG_member
	.long	.Lstring136             # DW_AT_name
	.long	38                      # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	43                      # DW_AT_decl_line
	.byte	3                       # DW_AT_data_member_location
	.byte	35
	.ascii	 "\220\002"
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0x5b6:0x10 DW_TAG_member
	.long	.Lstring137             # DW_AT_name
	.long	38                      # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	44                      # DW_AT_decl_line
	.byte	3                       # DW_AT_data_member_location
	.byte	35
	.ascii	 "\230\002"
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0x5c6:0x10 DW_TAG_member
	.long	.Lstring138             # DW_AT_name
	.long	38                      # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	45                      # DW_AT_decl_line
	.byte	3                       # DW_AT_data_member_location
	.byte	35
	.ascii	 "\240\002"
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0x5d6:0x10 DW_TAG_member
	.long	.Lstring112             # DW_AT_name
	.long	38                      # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	46                      # DW_AT_decl_line
	.byte	3                       # DW_AT_data_member_location
	.byte	35
	.ascii	 "\250\002"
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0x5e6:0x10 DW_TAG_member
	.long	.Lstring139             # DW_AT_name
	.long	916                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	47                      # DW_AT_decl_line
	.byte	3                       # DW_AT_data_member_location
	.byte	35
	.ascii	 "\260\002"
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0x5f6:0x10 DW_TAG_member
	.long	.Lstring140             # DW_AT_name
	.long	1396                    # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	48                      # DW_AT_decl_line
	.byte	3                       # DW_AT_data_member_location
	.byte	35
	.ascii	 "\270\002"
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0x606:0x10 DW_TAG_member
	.long	.Lstring141             # DW_AT_name
	.long	923                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	49                      # DW_AT_decl_line
	.byte	3                       # DW_AT_data_member_location
	.byte	35
	.ascii	 "\300\002"
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0x616:0x10 DW_TAG_member
	.long	.Lstring108             # DW_AT_name
	.long	891                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	50                      # DW_AT_decl_line
	.byte	3                       # DW_AT_data_member_location
	.byte	35
	.ascii	 "\301\002"
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0x626:0x10 DW_TAG_member
	.long	.Lstring109             # DW_AT_name
	.long	891                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	51                      # DW_AT_decl_line
	.byte	3                       # DW_AT_data_member_location
	.byte	35
	.ascii	 "\301B"
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0x636:0x11 DW_TAG_member
	.long	.Lstring104             # DW_AT_name
	.long	878                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	52                      # DW_AT_decl_line
	.byte	4                       # DW_AT_data_member_location
	.byte	35
	.ascii	 "\301\202\001"
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0x647:0x11 DW_TAG_member
	.long	.Lstring142             # DW_AT_name
	.long	916                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	53                      # DW_AT_decl_line
	.byte	4                       # DW_AT_data_member_location
	.byte	35
	.ascii	 "\304\212\001"
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	0                       # End Of Children Mark
	.byte	13                      # Abbrev [13] 0x659:0xc DW_TAG_array_type
	.long	1407                    # DW_AT_type
	.byte	14                      # Abbrev [14] 0x65e:0x6 DW_TAG_subrange_type
	.long	875                     # DW_AT_type
	.byte	9                       # DW_AT_upper_bound
	.byte	0                       # End Of Children Mark
	.byte	29                      # Abbrev [29] 0x665:0x4e DW_TAG_structure_type
	.long	.Lstring178             # DW_AT_name
	.long	212224                  # DW_AT_byte_size
	.byte	19                      # DW_AT_decl_file
	.byte	18                      # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x670:0xf DW_TAG_member
	.long	.Lstring102             # DW_AT_name
	.long	930                     # DW_AT_type
	.byte	19                      # DW_AT_decl_file
	.byte	19                      # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0x67f:0x11 DW_TAG_member
	.long	.Lstring100             # DW_AT_name
	.long	916                     # DW_AT_type
	.byte	19                      # DW_AT_decl_file
	.byte	20                      # DW_AT_decl_line
	.byte	4                       # DW_AT_data_member_location
	.byte	35
	.ascii	 "\250\220\002"
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0x690:0x11 DW_TAG_member
	.long	.Lstring29              # DW_AT_name
	.long	916                     # DW_AT_type
	.byte	19                      # DW_AT_decl_file
	.byte	21                      # DW_AT_decl_line
	.byte	4                       # DW_AT_data_member_location
	.byte	35
	.ascii	 "\254\220\002"
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0x6a1:0x11 DW_TAG_member
	.long	.Lstring120             # DW_AT_name
	.long	1625                    # DW_AT_type
	.byte	19                      # DW_AT_decl_file
	.byte	22                      # DW_AT_decl_line
	.byte	4                       # DW_AT_data_member_location
	.byte	35
	.ascii	 "\260\220\002"
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	0                       # End Of Children Mark
	.byte	8                       # Abbrev [8] 0x6b3:0x5 DW_TAG_pointer_type
	.long	1637                    # DW_AT_type
	.byte	0                       # End Of Children Mark
.Linfo_end1:
.Linfo_begin8:
	.long	267                     # Length of Compilation Unit Info
	.short	2                       # DWARF version number
	.long	.Labbrev_begin          # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x104 DW_TAG_compile_unit
	.long	.Lstring0               # DW_AT_producer
	.short	12                      # DW_AT_language
	.long	.Lstring65              # DW_AT_name
	.quad	0                       # DW_AT_low_pc
	.long	.Lsection_line          # DW_AT_stmt_list
	.long	.Lstring2               # DW_AT_comp_dir
	.byte	3                       # Abbrev [3] 0x26:0x1d DW_TAG_subprogram
	.long	.Lstring66              # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	46                      # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	67                      # DW_AT_type
                                        # DW_AT_external
	.quad	.Lfunc_begin4           # DW_AT_low_pc
	.quad	.Lfunc_end4             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	16                      # Abbrev [16] 0x43:0x1 DW_TAG_pointer_type
	.byte	5                       # Abbrev [5] 0x44:0x11 DW_TAG_enumeration_type
	.byte	4                       # DW_AT_byte_size
	.byte	6                       # DW_AT_decl_file
	.byte	217                     # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x48:0x6 DW_TAG_enumerator
	.long	.Lstring53              # DW_AT_name
	.byte	0                       # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x4e:0x6 DW_TAG_enumerator
	.long	.Lstring54              # DW_AT_name
	.byte	1                       # DW_AT_const_value
	.byte	0                       # End Of Children Mark
	.byte	5                       # Abbrev [5] 0x55:0x77 DW_TAG_enumeration_type
	.byte	4                       # DW_AT_byte_size
	.byte	3                       # DW_AT_decl_file
	.byte	14                      # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x59:0x7 DW_TAG_enumerator
	.long	.Lstring11              # DW_AT_name
	.ascii	 "\200\002"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x60:0x8 DW_TAG_enumerator
	.long	.Lstring12              # DW_AT_name
	.asciz	 "\200\300"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x68:0x8 DW_TAG_enumerator
	.long	.Lstring13              # DW_AT_name
	.asciz	 "\200\300"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x70:0x7 DW_TAG_enumerator
	.long	.Lstring14              # DW_AT_name
	.ascii	 "\200\004"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x77:0x7 DW_TAG_enumerator
	.long	.Lstring15              # DW_AT_name
	.ascii	 "\200\b"               # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x7e:0x7 DW_TAG_enumerator
	.long	.Lstring16              # DW_AT_name
	.ascii	 "\200\b"               # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x85:0x6 DW_TAG_enumerator
	.long	.Lstring17              # DW_AT_name
	.byte	16                      # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x8b:0x6 DW_TAG_enumerator
	.long	.Lstring18              # DW_AT_name
	.byte	10                      # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x91:0x7 DW_TAG_enumerator
	.long	.Lstring19              # DW_AT_name
	.ascii	 "\200\002"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x98:0x7 DW_TAG_enumerator
	.long	.Lstring20              # DW_AT_name
	.asciz	 "\320"                 # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x9f:0x6 DW_TAG_enumerator
	.long	.Lstring21              # DW_AT_name
	.byte	2                       # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0xa5:0x6 DW_TAG_enumerator
	.long	.Lstring22              # DW_AT_name
	.byte	21                      # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0xab:0x7 DW_TAG_enumerator
	.long	.Lstring23              # DW_AT_name
	.ascii	 "\377\001"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0xb2:0x6 DW_TAG_enumerator
	.long	.Lstring24              # DW_AT_name
	.byte	0                       # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0xb8:0x7 DW_TAG_enumerator
	.long	.Lstring25              # DW_AT_name
	.ascii	 "\377\001"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0xbf:0x6 DW_TAG_enumerator
	.long	.Lstring26              # DW_AT_name
	.byte	15                      # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0xc5:0x6 DW_TAG_enumerator
	.long	.Lstring27              # DW_AT_name
	.byte	0                       # DW_AT_const_value
	.byte	0                       # End Of Children Mark
	.byte	17                      # Abbrev [17] 0xcc:0x42 DW_TAG_enumeration_type
	.long	.Lstring64              # DW_AT_name
	.byte	4                       # DW_AT_byte_size
	.byte	7                       # DW_AT_decl_file
	.byte	24                      # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0xd4:0x6 DW_TAG_enumerator
	.long	.Lstring55              # DW_AT_name
	.byte	1                       # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0xda:0x6 DW_TAG_enumerator
	.long	.Lstring56              # DW_AT_name
	.byte	2                       # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0xe0:0x6 DW_TAG_enumerator
	.long	.Lstring57              # DW_AT_name
	.byte	3                       # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0xe6:0x6 DW_TAG_enumerator
	.long	.Lstring58              # DW_AT_name
	.byte	4                       # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0xec:0x6 DW_TAG_enumerator
	.long	.Lstring59              # DW_AT_name
	.byte	5                       # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0xf2:0x6 DW_TAG_enumerator
	.long	.Lstring60              # DW_AT_name
	.byte	6                       # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0xf8:0x6 DW_TAG_enumerator
	.long	.Lstring61              # DW_AT_name
	.byte	10                      # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0xfe:0x8 DW_TAG_enumerator
	.long	.Lstring62              # DW_AT_name
	.ascii	 "\200\200 "            # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x106:0x7 DW_TAG_enumerator
	.long	.Lstring63              # DW_AT_name
	.ascii	 "\200\020"             # DW_AT_const_value
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
.Linfo_end8:
.Linfo_begin11:
	.long	400                     # Length of Compilation Unit Info
	.short	2                       # DWARF version number
	.long	.Labbrev_begin          # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x189 DW_TAG_compile_unit
	.long	.Lstring0               # DW_AT_producer
	.short	12                      # DW_AT_language
	.long	.Lstring86              # DW_AT_name
	.quad	0                       # DW_AT_low_pc
	.long	.Lsection_line          # DW_AT_stmt_list
	.long	.Lstring2               # DW_AT_comp_dir
	.byte	4                       # Abbrev [4] 0x26:0x7 DW_TAG_base_type
	.long	.Lstring34              # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	7                       # Abbrev [7] 0x2d:0x15 DW_TAG_variable
	.long	.Lstring87              # DW_AT_name
	.long	38                      # DW_AT_type
                                        # DW_AT_external
	.byte	12                      # DW_AT_decl_file
	.byte	15                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	preferredthread
	.byte	7                       # Abbrev [7] 0x42:0x15 DW_TAG_variable
	.long	.Lstring88              # DW_AT_name
	.long	38                      # DW_AT_type
                                        # DW_AT_external
	.byte	12                      # DW_AT_decl_file
	.byte	17                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	http_proxyport
	.byte	4                       # Abbrev [4] 0x57:0x7 DW_TAG_base_type
	.long	.Lstring49              # DW_AT_name
	.byte	6                       # DW_AT_encoding
	.byte	1                       # DW_AT_byte_size
	.byte	12                      # Abbrev [12] 0x5e:0x3 DW_TAG_base_type
	.byte	4                       # DW_AT_byte_size
	.byte	5                       # DW_AT_encoding
	.byte	13                      # Abbrev [13] 0x61:0xc DW_TAG_array_type
	.long	87                      # DW_AT_type
	.byte	14                      # Abbrev [14] 0x66:0x6 DW_TAG_subrange_type
	.long	94                      # DW_AT_type
	.byte	255                     # DW_AT_upper_bound
	.byte	0                       # End Of Children Mark
	.byte	7                       # Abbrev [7] 0x6d:0x15 DW_TAG_variable
	.long	.Lstring89              # DW_AT_name
	.long	97                      # DW_AT_type
                                        # DW_AT_external
	.byte	12                      # DW_AT_decl_file
	.byte	13                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	ftpanonymoususer
	.byte	7                       # Abbrev [7] 0x82:0x15 DW_TAG_variable
	.long	.Lstring90              # DW_AT_name
	.long	97                      # DW_AT_type
                                        # DW_AT_external
	.byte	12                      # DW_AT_decl_file
	.byte	14                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	ftpanonymouspass
	.byte	7                       # Abbrev [7] 0x97:0x15 DW_TAG_variable
	.long	.Lstring91              # DW_AT_name
	.long	97                      # DW_AT_type
                                        # DW_AT_external
	.byte	12                      # DW_AT_decl_file
	.byte	16                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	http_proxyhost
	.byte	7                       # Abbrev [7] 0xac:0x15 DW_TAG_variable
	.long	.Lstring92              # DW_AT_name
	.long	97                      # DW_AT_type
                                        # DW_AT_external
	.byte	12                      # DW_AT_decl_file
	.byte	18                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	http_proxyuser
	.byte	7                       # Abbrev [7] 0xc1:0x15 DW_TAG_variable
	.long	.Lstring93              # DW_AT_name
	.long	97                      # DW_AT_type
                                        # DW_AT_external
	.byte	12                      # DW_AT_decl_file
	.byte	19                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	http_proxypass
	.byte	30                      # Abbrev [30] 0xd6:0x19 DW_TAG_subprogram
	.long	.Lstring94              # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	16                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.quad	.Lfunc_begin11          # DW_AT_low_pc
	.quad	.Lfunc_end11            # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	30                      # Abbrev [30] 0xef:0x19 DW_TAG_subprogram
	.long	.Lstring95              # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	107                     # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.quad	.Lfunc_begin12          # DW_AT_low_pc
	.quad	.Lfunc_end12            # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	2                       # Abbrev [2] 0x108:0x19 DW_TAG_subprogram
	.long	.Lstring96              # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	123                     # DW_AT_decl_line
                                        # DW_AT_external
	.quad	.Lfunc_begin13          # DW_AT_low_pc
	.quad	.Lfunc_end13            # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	5                       # Abbrev [5] 0x121:0x1a DW_TAG_enumeration_type
	.byte	4                       # DW_AT_byte_size
	.byte	12                      # DW_AT_decl_file
	.byte	7                       # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x125:0x7 DW_TAG_enumerator
	.long	.Lstring97              # DW_AT_name
	.ascii	 "\200\b"               # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x12c:0x7 DW_TAG_enumerator
	.long	.Lstring98              # DW_AT_name
	.asciz	 "\300"                 # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x133:0x7 DW_TAG_enumerator
	.long	.Lstring19              # DW_AT_name
	.ascii	 "\200\002"             # DW_AT_const_value
	.byte	0                       # End Of Children Mark
	.byte	5                       # Abbrev [5] 0x13b:0x58 DW_TAG_enumeration_type
	.byte	4                       # DW_AT_byte_size
	.byte	10                      # DW_AT_decl_file
	.byte	46                      # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x13f:0x7 DW_TAG_enumerator
	.long	.Lstring74              # DW_AT_name
	.ascii	 "\200\002"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x146:0x7 DW_TAG_enumerator
	.long	.Lstring75              # DW_AT_name
	.ascii	 "\200\004"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x14d:0x7 DW_TAG_enumerator
	.long	.Lstring76              # DW_AT_name
	.ascii	 "\200\b"               # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x154:0x7 DW_TAG_enumerator
	.long	.Lstring77              # DW_AT_name
	.ascii	 "\200\020"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x15b:0x7 DW_TAG_enumerator
	.long	.Lstring78              # DW_AT_name
	.ascii	 "\200 "                # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x162:0x8 DW_TAG_enumerator
	.long	.Lstring79              # DW_AT_name
	.asciz	 "\200\300"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x16a:0x8 DW_TAG_enumerator
	.long	.Lstring80              # DW_AT_name
	.ascii	 "\200\200\001"         # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x172:0x8 DW_TAG_enumerator
	.long	.Lstring81              # DW_AT_name
	.ascii	 "\200\200\002"         # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x17a:0x6 DW_TAG_enumerator
	.long	.Lstring82              # DW_AT_name
	.byte	1                       # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x180:0x6 DW_TAG_enumerator
	.long	.Lstring83              # DW_AT_name
	.byte	2                       # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x186:0x6 DW_TAG_enumerator
	.long	.Lstring84              # DW_AT_name
	.byte	4                       # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x18c:0x6 DW_TAG_enumerator
	.long	.Lstring85              # DW_AT_name
	.byte	8                       # DW_AT_const_value
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
.Linfo_end11:
.Linfo_begin13:
	.long	1058                    # Length of Compilation Unit Info
	.short	2                       # DWARF version number
	.long	.Labbrev_begin          # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x41b DW_TAG_compile_unit
	.long	.Lstring0               # DW_AT_producer
	.short	12                      # DW_AT_language
	.long	.Lstring99              # DW_AT_name
	.quad	0                       # DW_AT_low_pc
	.long	.Lsection_line          # DW_AT_stmt_list
	.long	.Lstring2               # DW_AT_comp_dir
	.byte	4                       # Abbrev [4] 0x26:0x7 DW_TAG_base_type
	.long	.Lstring34              # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	7                       # Abbrev [7] 0x2d:0x15 DW_TAG_variable
	.long	.Lstring100             # DW_AT_name
	.long	38                      # DW_AT_type
                                        # DW_AT_external
	.byte	13                      # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	nthreads
	.byte	7                       # Abbrev [7] 0x42:0x15 DW_TAG_variable
	.long	.Lstring101             # DW_AT_name
	.long	38                      # DW_AT_type
                                        # DW_AT_external
	.byte	13                      # DW_AT_decl_file
	.byte	42                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	fsuggested
	.byte	4                       # Abbrev [4] 0x57:0x7 DW_TAG_base_type
	.long	.Lstring49              # DW_AT_name
	.byte	6                       # DW_AT_encoding
	.byte	1                       # DW_AT_byte_size
	.byte	12                      # Abbrev [12] 0x5e:0x3 DW_TAG_base_type
	.byte	4                       # DW_AT_byte_size
	.byte	5                       # DW_AT_encoding
	.byte	13                      # Abbrev [13] 0x61:0xd DW_TAG_array_type
	.long	87                      # DW_AT_type
	.byte	26                      # Abbrev [26] 0x66:0x7 DW_TAG_subrange_type
	.long	94                      # DW_AT_type
	.short	1023                    # DW_AT_upper_bound
	.byte	0                       # End Of Children Mark
	.byte	13                      # Abbrev [13] 0x6e:0xd DW_TAG_array_type
	.long	87                      # DW_AT_type
	.byte	26                      # Abbrev [26] 0x73:0x7 DW_TAG_subrange_type
	.long	94                      # DW_AT_type
	.short	8191                    # DW_AT_upper_bound
	.byte	0                       # End Of Children Mark
	.byte	13                      # Abbrev [13] 0x7b:0xc DW_TAG_array_type
	.long	87                      # DW_AT_type
	.byte	14                      # Abbrev [14] 0x80:0x6 DW_TAG_subrange_type
	.long	94                      # DW_AT_type
	.byte	15                      # DW_AT_upper_bound
	.byte	0                       # End Of Children Mark
	.byte	4                       # Abbrev [4] 0x87:0x7 DW_TAG_base_type
	.long	.Lstring114             # DW_AT_name
	.byte	8                       # DW_AT_encoding
	.byte	1                       # DW_AT_byte_size
	.byte	4                       # Abbrev [4] 0x8e:0x7 DW_TAG_base_type
	.long	.Lstring4               # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	8                       # DW_AT_byte_size
	.byte	11                      # Abbrev [11] 0x95:0xb DW_TAG_typedef
	.long	142                     # DW_AT_type
	.long	.Lstring5               # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	139                     # DW_AT_decl_line
	.byte	11                      # Abbrev [11] 0xa0:0xb DW_TAG_typedef
	.long	149                     # DW_AT_type
	.long	.Lstring6               # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	75                      # DW_AT_decl_line
	.byte	27                      # Abbrev [27] 0xab:0xd1 DW_TAG_structure_type
	.long	.Lstring116             # DW_AT_name
	.short	34856                   # DW_AT_byte_size
	.byte	2                       # DW_AT_decl_file
	.byte	25                      # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0xb4:0xf DW_TAG_member
	.long	.Lstring103             # DW_AT_name
	.long	97                      # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	26                      # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0xc3:0x10 DW_TAG_member
	.long	.Lstring104             # DW_AT_name
	.long	97                      # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	27                      # DW_AT_decl_line
	.byte	3                       # DW_AT_data_member_location
	.byte	35
	.ascii	 "\200\b"
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0xd3:0x10 DW_TAG_member
	.long	.Lstring105             # DW_AT_name
	.long	110                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	28                      # DW_AT_decl_line
	.byte	3                       # DW_AT_data_member_location
	.byte	35
	.ascii	 "\200\020"
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0xe3:0x10 DW_TAG_member
	.long	.Lstring106             # DW_AT_name
	.long	110                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	29                      # DW_AT_decl_line
	.byte	3                       # DW_AT_data_member_location
	.byte	35
	.ascii	 "\200P"
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0xf3:0x11 DW_TAG_member
	.long	.Lstring107             # DW_AT_name
	.long	123                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	30                      # DW_AT_decl_line
	.byte	4                       # DW_AT_data_member_location
	.byte	35
	.ascii	 "\200\220\001"
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0x104:0x11 DW_TAG_member
	.long	.Lstring108             # DW_AT_name
	.long	110                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	31                      # DW_AT_decl_line
	.byte	4                       # DW_AT_data_member_location
	.byte	35
	.ascii	 "\220\220\001"
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0x115:0x11 DW_TAG_member
	.long	.Lstring109             # DW_AT_name
	.long	110                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	32                      # DW_AT_decl_line
	.byte	4                       # DW_AT_data_member_location
	.byte	35
	.ascii	 "\220\320\001"
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0x126:0x11 DW_TAG_member
	.long	.Lstring110             # DW_AT_name
	.long	38                      # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	33                      # DW_AT_decl_line
	.byte	4                       # DW_AT_data_member_location
	.byte	35
	.ascii	 "\220\220\002"
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0x137:0x11 DW_TAG_member
	.long	.Lstring111             # DW_AT_name
	.long	38                      # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	34                      # DW_AT_decl_line
	.byte	4                       # DW_AT_data_member_location
	.byte	35
	.ascii	 "\224\220\002"
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0x148:0x11 DW_TAG_member
	.long	.Lstring112             # DW_AT_name
	.long	38                      # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	35                      # DW_AT_decl_line
	.byte	4                       # DW_AT_data_member_location
	.byte	35
	.ascii	 "\230\220\002"
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0x159:0x11 DW_TAG_member
	.long	.Lstring113             # DW_AT_name
	.long	135                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	36                      # DW_AT_decl_line
	.byte	4                       # DW_AT_data_member_location
	.byte	35
	.ascii	 "\234\220\002"
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0x16a:0x11 DW_TAG_member
	.long	.Lstring115             # DW_AT_name
	.long	160                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	37                      # DW_AT_decl_line
	.byte	4                       # DW_AT_data_member_location
	.byte	35
	.ascii	 "\240\220\002"
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	0                       # End Of Children Mark
	.byte	8                       # Abbrev [8] 0x17c:0x5 DW_TAG_pointer_type
	.long	171                     # DW_AT_type
	.byte	7                       # Abbrev [7] 0x181:0x15 DW_TAG_variable
	.long	.Lstring102             # DW_AT_name
	.long	380                     # DW_AT_type
                                        # DW_AT_external
	.byte	13                      # DW_AT_decl_file
	.byte	43                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	req
	.byte	4                       # Abbrev [4] 0x196:0x7 DW_TAG_base_type
	.long	.Lstring118             # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	8                       # DW_AT_byte_size
	.byte	11                      # Abbrev [11] 0x19d:0xb DW_TAG_typedef
	.long	406                     # DW_AT_type
	.long	.Lstring119             # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	60                      # DW_AT_decl_line
	.byte	7                       # Abbrev [7] 0x1a8:0x15 DW_TAG_variable
	.long	.Lstring117             # DW_AT_name
	.long	413                     # DW_AT_type
                                        # DW_AT_external
	.byte	13                      # DW_AT_decl_file
	.byte	44                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	hthread
	.byte	4                       # Abbrev [4] 0x1bd:0x7 DW_TAG_base_type
	.long	.Lstring123             # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	2                       # DW_AT_byte_size
	.byte	11                      # Abbrev [11] 0x1c4:0xb DW_TAG_typedef
	.long	445                     # DW_AT_type
	.long	.Lstring124             # DW_AT_name
	.byte	14                      # DW_AT_decl_file
	.byte	28                      # DW_AT_decl_line
	.byte	11                      # Abbrev [11] 0x1cf:0xb DW_TAG_typedef
	.long	445                     # DW_AT_type
	.long	.Lstring126             # DW_AT_name
	.byte	14                      # DW_AT_decl_file
	.byte	49                      # DW_AT_decl_line
	.byte	11                      # Abbrev [11] 0x1da:0xb DW_TAG_typedef
	.long	463                     # DW_AT_type
	.long	.Lstring127             # DW_AT_name
	.byte	14                      # DW_AT_decl_file
	.byte	117                     # DW_AT_decl_line
	.byte	4                       # Abbrev [4] 0x1e5:0x7 DW_TAG_base_type
	.long	.Lstring30              # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	11                      # Abbrev [11] 0x1ec:0xb DW_TAG_typedef
	.long	485                     # DW_AT_type
	.long	.Lstring130             # DW_AT_name
	.byte	14                      # DW_AT_decl_file
	.byte	51                      # DW_AT_decl_line
	.byte	11                      # Abbrev [11] 0x1f7:0xb DW_TAG_typedef
	.long	492                     # DW_AT_type
	.long	.Lstring131             # DW_AT_name
	.byte	14                      # DW_AT_decl_file
	.byte	30                      # DW_AT_decl_line
	.byte	9                       # Abbrev [9] 0x202:0x18 DW_TAG_structure_type
	.long	.Lstring132             # DW_AT_name
	.byte	4                       # DW_AT_byte_size
	.byte	14                      # DW_AT_decl_file
	.byte	31                      # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x20a:0xf DW_TAG_member
	.long	.Lstring129             # DW_AT_name
	.long	503                     # DW_AT_type
	.byte	14                      # DW_AT_decl_file
	.byte	33                      # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	0                       # End Of Children Mark
	.byte	13                      # Abbrev [13] 0x21a:0xc DW_TAG_array_type
	.long	135                     # DW_AT_type
	.byte	14                      # Abbrev [14] 0x21f:0x6 DW_TAG_subrange_type
	.long	94                      # DW_AT_type
	.byte	7                       # DW_AT_upper_bound
	.byte	0                       # End Of Children Mark
	.byte	9                       # Abbrev [9] 0x226:0x45 DW_TAG_structure_type
	.long	.Lstring134             # DW_AT_name
	.byte	16                      # DW_AT_byte_size
	.byte	14                      # DW_AT_decl_file
	.byte	237                     # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x22e:0xf DW_TAG_member
	.long	.Lstring122             # DW_AT_name
	.long	452                     # DW_AT_type
	.byte	14                      # DW_AT_decl_file
	.byte	239                     # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0x23d:0xf DW_TAG_member
	.long	.Lstring125             # DW_AT_name
	.long	474                     # DW_AT_type
	.byte	14                      # DW_AT_decl_file
	.byte	240                     # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	2
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0x24c:0xf DW_TAG_member
	.long	.Lstring128             # DW_AT_name
	.long	514                     # DW_AT_type
	.byte	14                      # DW_AT_decl_file
	.byte	241                     # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	4
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0x25b:0xf DW_TAG_member
	.long	.Lstring133             # DW_AT_name
	.long	538                     # DW_AT_type
	.byte	14                      # DW_AT_decl_file
	.byte	244                     # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	8
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	0                       # End Of Children Mark
	.byte	13                      # Abbrev [13] 0x26b:0xc DW_TAG_array_type
	.long	87                      # DW_AT_type
	.byte	14                      # Abbrev [14] 0x270:0x6 DW_TAG_subrange_type
	.long	94                      # DW_AT_type
	.byte	255                     # DW_AT_upper_bound
	.byte	0                       # End Of Children Mark
	.byte	27                      # Abbrev [27] 0x277:0xda DW_TAG_structure_type
	.long	.Lstring143             # DW_AT_name
	.short	17736                   # DW_AT_byte_size
	.byte	2                       # DW_AT_decl_file
	.byte	40                      # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x280:0xf DW_TAG_member
	.long	.Lstring121             # DW_AT_name
	.long	550                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0x28f:0xf DW_TAG_member
	.long	.Lstring135             # DW_AT_name
	.long	619                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	42                      # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	16
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0x29e:0x10 DW_TAG_member
	.long	.Lstring136             # DW_AT_name
	.long	142                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	43                      # DW_AT_decl_line
	.byte	3                       # DW_AT_data_member_location
	.byte	35
	.ascii	 "\220\002"
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0x2ae:0x10 DW_TAG_member
	.long	.Lstring137             # DW_AT_name
	.long	142                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	44                      # DW_AT_decl_line
	.byte	3                       # DW_AT_data_member_location
	.byte	35
	.ascii	 "\230\002"
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0x2be:0x10 DW_TAG_member
	.long	.Lstring138             # DW_AT_name
	.long	142                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	45                      # DW_AT_decl_line
	.byte	3                       # DW_AT_data_member_location
	.byte	35
	.ascii	 "\240\002"
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0x2ce:0x10 DW_TAG_member
	.long	.Lstring112             # DW_AT_name
	.long	142                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	46                      # DW_AT_decl_line
	.byte	3                       # DW_AT_data_member_location
	.byte	35
	.ascii	 "\250\002"
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0x2de:0x10 DW_TAG_member
	.long	.Lstring139             # DW_AT_name
	.long	38                      # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	47                      # DW_AT_decl_line
	.byte	3                       # DW_AT_data_member_location
	.byte	35
	.ascii	 "\260\002"
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0x2ee:0x10 DW_TAG_member
	.long	.Lstring140             # DW_AT_name
	.long	413                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	48                      # DW_AT_decl_line
	.byte	3                       # DW_AT_data_member_location
	.byte	35
	.ascii	 "\270\002"
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0x2fe:0x10 DW_TAG_member
	.long	.Lstring141             # DW_AT_name
	.long	135                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	49                      # DW_AT_decl_line
	.byte	3                       # DW_AT_data_member_location
	.byte	35
	.ascii	 "\300\002"
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0x30e:0x10 DW_TAG_member
	.long	.Lstring108             # DW_AT_name
	.long	110                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	50                      # DW_AT_decl_line
	.byte	3                       # DW_AT_data_member_location
	.byte	35
	.ascii	 "\301\002"
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0x31e:0x10 DW_TAG_member
	.long	.Lstring109             # DW_AT_name
	.long	110                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	51                      # DW_AT_decl_line
	.byte	3                       # DW_AT_data_member_location
	.byte	35
	.ascii	 "\301B"
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0x32e:0x11 DW_TAG_member
	.long	.Lstring104             # DW_AT_name
	.long	97                      # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	52                      # DW_AT_decl_line
	.byte	4                       # DW_AT_data_member_location
	.byte	35
	.ascii	 "\301\202\001"
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	10                      # Abbrev [10] 0x33f:0x11 DW_TAG_member
	.long	.Lstring142             # DW_AT_name
	.long	38                      # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	53                      # DW_AT_decl_line
	.byte	4                       # DW_AT_data_member_location
	.byte	35
	.ascii	 "\304\212\001"
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	0                       # End Of Children Mark
	.byte	8                       # Abbrev [8] 0x351:0x5 DW_TAG_pointer_type
	.long	631                     # DW_AT_type
	.byte	7                       # Abbrev [7] 0x356:0x15 DW_TAG_variable
	.long	.Lstring120             # DW_AT_name
	.long	849                     # DW_AT_type
                                        # DW_AT_external
	.byte	13                      # DW_AT_decl_file
	.byte	45                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	wthread
	.byte	7                       # Abbrev [7] 0x36b:0x15 DW_TAG_variable
	.long	.Lstring144             # DW_AT_name
	.long	413                     # DW_AT_type
                                        # DW_AT_external
	.byte	13                      # DW_AT_decl_file
	.byte	46                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	main_tid
	.byte	3                       # Abbrev [3] 0x380:0x1d DW_TAG_subprogram
	.long	.Lstring145             # DW_AT_name
	.byte	13                      # DW_AT_decl_file
	.byte	48                      # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	38                      # DW_AT_type
                                        # DW_AT_external
	.quad	.Lfunc_begin14          # DW_AT_low_pc
	.quad	.Lfunc_end14            # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	5                       # Abbrev [5] 0x39d:0x11 DW_TAG_enumeration_type
	.byte	4                       # DW_AT_byte_size
	.byte	6                       # DW_AT_decl_file
	.byte	217                     # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x3a1:0x6 DW_TAG_enumerator
	.long	.Lstring53              # DW_AT_name
	.byte	0                       # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x3a7:0x6 DW_TAG_enumerator
	.long	.Lstring54              # DW_AT_name
	.byte	1                       # DW_AT_const_value
	.byte	0                       # End Of Children Mark
	.byte	5                       # Abbrev [5] 0x3ae:0x77 DW_TAG_enumeration_type
	.byte	4                       # DW_AT_byte_size
	.byte	3                       # DW_AT_decl_file
	.byte	14                      # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x3b2:0x7 DW_TAG_enumerator
	.long	.Lstring11              # DW_AT_name
	.ascii	 "\200\002"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x3b9:0x8 DW_TAG_enumerator
	.long	.Lstring12              # DW_AT_name
	.asciz	 "\200\300"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x3c1:0x8 DW_TAG_enumerator
	.long	.Lstring13              # DW_AT_name
	.asciz	 "\200\300"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x3c9:0x7 DW_TAG_enumerator
	.long	.Lstring14              # DW_AT_name
	.ascii	 "\200\004"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x3d0:0x7 DW_TAG_enumerator
	.long	.Lstring15              # DW_AT_name
	.ascii	 "\200\b"               # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x3d7:0x7 DW_TAG_enumerator
	.long	.Lstring16              # DW_AT_name
	.ascii	 "\200\b"               # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x3de:0x6 DW_TAG_enumerator
	.long	.Lstring17              # DW_AT_name
	.byte	16                      # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x3e4:0x6 DW_TAG_enumerator
	.long	.Lstring18              # DW_AT_name
	.byte	10                      # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x3ea:0x7 DW_TAG_enumerator
	.long	.Lstring19              # DW_AT_name
	.ascii	 "\200\002"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x3f1:0x7 DW_TAG_enumerator
	.long	.Lstring20              # DW_AT_name
	.asciz	 "\320"                 # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x3f8:0x6 DW_TAG_enumerator
	.long	.Lstring21              # DW_AT_name
	.byte	2                       # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x3fe:0x6 DW_TAG_enumerator
	.long	.Lstring22              # DW_AT_name
	.byte	21                      # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x404:0x7 DW_TAG_enumerator
	.long	.Lstring23              # DW_AT_name
	.ascii	 "\377\001"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x40b:0x6 DW_TAG_enumerator
	.long	.Lstring24              # DW_AT_name
	.byte	0                       # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x411:0x7 DW_TAG_enumerator
	.long	.Lstring25              # DW_AT_name
	.ascii	 "\377\001"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x418:0x6 DW_TAG_enumerator
	.long	.Lstring26              # DW_AT_name
	.byte	15                      # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x41e:0x6 DW_TAG_enumerator
	.long	.Lstring27              # DW_AT_name
	.byte	0                       # DW_AT_const_value
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
.Linfo_end13:
.Linfo_begin9:
	.long	489                     # Length of Compilation Unit Info
	.short	2                       # DWARF version number
	.long	.Labbrev_begin          # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x1e2 DW_TAG_compile_unit
	.long	.Lstring0               # DW_AT_producer
	.short	12                      # DW_AT_language
	.long	.Lstring67              # DW_AT_name
	.quad	0                       # DW_AT_low_pc
	.long	.Lsection_line          # DW_AT_stmt_list
	.long	.Lstring2               # DW_AT_comp_dir
	.byte	30                      # Abbrev [30] 0x26:0x19 DW_TAG_subprogram
	.long	.Lstring68              # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.byte	49                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.quad	.Lfunc_begin5           # DW_AT_low_pc
	.quad	.Lfunc_end5             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	3                       # Abbrev [3] 0x3f:0x1d DW_TAG_subprogram
	.long	.Lstring69              # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.byte	127                     # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	92                      # DW_AT_type
                                        # DW_AT_external
	.quad	.Lfunc_begin6           # DW_AT_low_pc
	.quad	.Lfunc_end6             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	4                       # Abbrev [4] 0x5c:0x7 DW_TAG_base_type
	.long	.Lstring34              # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	31                      # Abbrev [31] 0x63:0x1e DW_TAG_subprogram
	.long	.Lstring70              # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.short	285                     # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	92                      # DW_AT_type
                                        # DW_AT_external
	.quad	.Lfunc_begin9           # DW_AT_low_pc
	.quad	.Lfunc_end9             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	31                      # Abbrev [31] 0x81:0x1e DW_TAG_subprogram
	.long	.Lstring71              # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.short	324                     # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	92                      # DW_AT_type
                                        # DW_AT_external
	.quad	.Lfunc_begin7           # DW_AT_low_pc
	.quad	.Lfunc_end7             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	31                      # Abbrev [31] 0x9f:0x1e DW_TAG_subprogram
	.long	.Lstring72              # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.short	359                     # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	92                      # DW_AT_type
                                        # DW_AT_external
	.quad	.Lfunc_begin8           # DW_AT_low_pc
	.quad	.Lfunc_end8             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	31                      # Abbrev [31] 0xbd:0x1e DW_TAG_subprogram
	.long	.Lstring73              # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.short	431                     # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	92                      # DW_AT_type
                                        # DW_AT_external
	.quad	.Lfunc_begin10          # DW_AT_low_pc
	.quad	.Lfunc_end10            # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	5                       # Abbrev [5] 0xdb:0x77 DW_TAG_enumeration_type
	.byte	4                       # DW_AT_byte_size
	.byte	3                       # DW_AT_decl_file
	.byte	14                      # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0xdf:0x7 DW_TAG_enumerator
	.long	.Lstring11              # DW_AT_name
	.ascii	 "\200\002"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0xe6:0x8 DW_TAG_enumerator
	.long	.Lstring12              # DW_AT_name
	.asciz	 "\200\300"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0xee:0x8 DW_TAG_enumerator
	.long	.Lstring13              # DW_AT_name
	.asciz	 "\200\300"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0xf6:0x7 DW_TAG_enumerator
	.long	.Lstring14              # DW_AT_name
	.ascii	 "\200\004"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0xfd:0x7 DW_TAG_enumerator
	.long	.Lstring15              # DW_AT_name
	.ascii	 "\200\b"               # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x104:0x7 DW_TAG_enumerator
	.long	.Lstring16              # DW_AT_name
	.ascii	 "\200\b"               # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x10b:0x6 DW_TAG_enumerator
	.long	.Lstring17              # DW_AT_name
	.byte	16                      # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x111:0x6 DW_TAG_enumerator
	.long	.Lstring18              # DW_AT_name
	.byte	10                      # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x117:0x7 DW_TAG_enumerator
	.long	.Lstring19              # DW_AT_name
	.ascii	 "\200\002"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x11e:0x7 DW_TAG_enumerator
	.long	.Lstring20              # DW_AT_name
	.asciz	 "\320"                 # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x125:0x6 DW_TAG_enumerator
	.long	.Lstring21              # DW_AT_name
	.byte	2                       # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x12b:0x6 DW_TAG_enumerator
	.long	.Lstring22              # DW_AT_name
	.byte	21                      # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x131:0x7 DW_TAG_enumerator
	.long	.Lstring23              # DW_AT_name
	.ascii	 "\377\001"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x138:0x6 DW_TAG_enumerator
	.long	.Lstring24              # DW_AT_name
	.byte	0                       # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x13e:0x7 DW_TAG_enumerator
	.long	.Lstring25              # DW_AT_name
	.ascii	 "\377\001"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x145:0x6 DW_TAG_enumerator
	.long	.Lstring26              # DW_AT_name
	.byte	15                      # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x14b:0x6 DW_TAG_enumerator
	.long	.Lstring27              # DW_AT_name
	.byte	0                       # DW_AT_const_value
	.byte	0                       # End Of Children Mark
	.byte	17                      # Abbrev [17] 0x152:0x42 DW_TAG_enumeration_type
	.long	.Lstring64              # DW_AT_name
	.byte	4                       # DW_AT_byte_size
	.byte	7                       # DW_AT_decl_file
	.byte	24                      # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x15a:0x6 DW_TAG_enumerator
	.long	.Lstring55              # DW_AT_name
	.byte	1                       # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x160:0x6 DW_TAG_enumerator
	.long	.Lstring56              # DW_AT_name
	.byte	2                       # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x166:0x6 DW_TAG_enumerator
	.long	.Lstring57              # DW_AT_name
	.byte	3                       # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x16c:0x6 DW_TAG_enumerator
	.long	.Lstring58              # DW_AT_name
	.byte	4                       # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x172:0x6 DW_TAG_enumerator
	.long	.Lstring59              # DW_AT_name
	.byte	5                       # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x178:0x6 DW_TAG_enumerator
	.long	.Lstring60              # DW_AT_name
	.byte	6                       # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x17e:0x6 DW_TAG_enumerator
	.long	.Lstring61              # DW_AT_name
	.byte	10                      # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x184:0x8 DW_TAG_enumerator
	.long	.Lstring62              # DW_AT_name
	.ascii	 "\200\200 "            # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x18c:0x7 DW_TAG_enumerator
	.long	.Lstring63              # DW_AT_name
	.ascii	 "\200\020"             # DW_AT_const_value
	.byte	0                       # End Of Children Mark
	.byte	5                       # Abbrev [5] 0x194:0x58 DW_TAG_enumeration_type
	.byte	4                       # DW_AT_byte_size
	.byte	10                      # DW_AT_decl_file
	.byte	46                      # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x198:0x7 DW_TAG_enumerator
	.long	.Lstring74              # DW_AT_name
	.ascii	 "\200\002"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x19f:0x7 DW_TAG_enumerator
	.long	.Lstring75              # DW_AT_name
	.ascii	 "\200\004"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x1a6:0x7 DW_TAG_enumerator
	.long	.Lstring76              # DW_AT_name
	.ascii	 "\200\b"               # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x1ad:0x7 DW_TAG_enumerator
	.long	.Lstring77              # DW_AT_name
	.ascii	 "\200\020"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x1b4:0x7 DW_TAG_enumerator
	.long	.Lstring78              # DW_AT_name
	.ascii	 "\200 "                # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x1bb:0x8 DW_TAG_enumerator
	.long	.Lstring79              # DW_AT_name
	.asciz	 "\200\300"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x1c3:0x8 DW_TAG_enumerator
	.long	.Lstring80              # DW_AT_name
	.ascii	 "\200\200\001"         # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x1cb:0x8 DW_TAG_enumerator
	.long	.Lstring81              # DW_AT_name
	.ascii	 "\200\200\002"         # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x1d3:0x6 DW_TAG_enumerator
	.long	.Lstring82              # DW_AT_name
	.byte	1                       # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x1d9:0x6 DW_TAG_enumerator
	.long	.Lstring83              # DW_AT_name
	.byte	2                       # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x1df:0x6 DW_TAG_enumerator
	.long	.Lstring84              # DW_AT_name
	.byte	4                       # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x1e5:0x6 DW_TAG_enumerator
	.long	.Lstring85              # DW_AT_name
	.byte	8                       # DW_AT_const_value
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
.Linfo_end9:
.Linfo_begin17:
	.long	251                     # Length of Compilation Unit Info
	.short	2                       # DWARF version number
	.long	.Labbrev_begin          # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0xf4 DW_TAG_compile_unit
	.long	.Lstring0               # DW_AT_producer
	.short	12                      # DW_AT_language
	.long	.Lstring163             # DW_AT_name
	.quad	0                       # DW_AT_low_pc
	.long	.Lsection_line          # DW_AT_stmt_list
	.long	.Lstring2               # DW_AT_comp_dir
	.byte	3                       # Abbrev [3] 0x26:0x1d DW_TAG_subprogram
	.long	.Lstring164             # DW_AT_name
	.byte	17                      # DW_AT_decl_file
	.byte	30                      # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	67                      # DW_AT_type
                                        # DW_AT_external
	.quad	.Lfunc_begin28          # DW_AT_low_pc
	.quad	.Lfunc_end28            # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	16                      # Abbrev [16] 0x43:0x1 DW_TAG_pointer_type
	.byte	30                      # Abbrev [30] 0x44:0x19 DW_TAG_subprogram
	.long	.Lstring165             # DW_AT_name
	.byte	17                      # DW_AT_decl_file
	.byte	65                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.quad	.Lfunc_begin29          # DW_AT_low_pc
	.quad	.Lfunc_end29            # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	30                      # Abbrev [30] 0x5d:0x19 DW_TAG_subprogram
	.long	.Lstring166             # DW_AT_name
	.byte	17                      # DW_AT_decl_file
	.byte	90                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.quad	.Lfunc_begin30          # DW_AT_low_pc
	.quad	.Lfunc_end30            # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	5                       # Abbrev [5] 0x76:0x11 DW_TAG_enumeration_type
	.byte	4                       # DW_AT_byte_size
	.byte	6                       # DW_AT_decl_file
	.byte	217                     # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x7a:0x6 DW_TAG_enumerator
	.long	.Lstring53              # DW_AT_name
	.byte	0                       # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x80:0x6 DW_TAG_enumerator
	.long	.Lstring54              # DW_AT_name
	.byte	1                       # DW_AT_const_value
	.byte	0                       # End Of Children Mark
	.byte	5                       # Abbrev [5] 0x87:0x77 DW_TAG_enumeration_type
	.byte	4                       # DW_AT_byte_size
	.byte	3                       # DW_AT_decl_file
	.byte	14                      # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x8b:0x7 DW_TAG_enumerator
	.long	.Lstring11              # DW_AT_name
	.ascii	 "\200\002"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x92:0x8 DW_TAG_enumerator
	.long	.Lstring12              # DW_AT_name
	.asciz	 "\200\300"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x9a:0x8 DW_TAG_enumerator
	.long	.Lstring13              # DW_AT_name
	.asciz	 "\200\300"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0xa2:0x7 DW_TAG_enumerator
	.long	.Lstring14              # DW_AT_name
	.ascii	 "\200\004"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0xa9:0x7 DW_TAG_enumerator
	.long	.Lstring15              # DW_AT_name
	.ascii	 "\200\b"               # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0xb0:0x7 DW_TAG_enumerator
	.long	.Lstring16              # DW_AT_name
	.ascii	 "\200\b"               # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0xb7:0x6 DW_TAG_enumerator
	.long	.Lstring17              # DW_AT_name
	.byte	16                      # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0xbd:0x6 DW_TAG_enumerator
	.long	.Lstring18              # DW_AT_name
	.byte	10                      # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0xc3:0x7 DW_TAG_enumerator
	.long	.Lstring19              # DW_AT_name
	.ascii	 "\200\002"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0xca:0x7 DW_TAG_enumerator
	.long	.Lstring20              # DW_AT_name
	.asciz	 "\320"                 # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0xd1:0x6 DW_TAG_enumerator
	.long	.Lstring21              # DW_AT_name
	.byte	2                       # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0xd7:0x6 DW_TAG_enumerator
	.long	.Lstring22              # DW_AT_name
	.byte	21                      # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0xdd:0x7 DW_TAG_enumerator
	.long	.Lstring23              # DW_AT_name
	.ascii	 "\377\001"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0xe4:0x6 DW_TAG_enumerator
	.long	.Lstring24              # DW_AT_name
	.byte	0                       # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0xea:0x7 DW_TAG_enumerator
	.long	.Lstring25              # DW_AT_name
	.ascii	 "\377\001"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0xf1:0x6 DW_TAG_enumerator
	.long	.Lstring26              # DW_AT_name
	.byte	15                      # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0xf7:0x6 DW_TAG_enumerator
	.long	.Lstring27              # DW_AT_name
	.byte	0                       # DW_AT_const_value
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
.Linfo_end17:
.Linfo_begin15:
	.long	484                     # Length of Compilation Unit Info
	.short	2                       # DWARF version number
	.long	.Labbrev_begin          # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x1dd DW_TAG_compile_unit
	.long	.Lstring0               # DW_AT_producer
	.short	12                      # DW_AT_language
	.long	.Lstring146             # DW_AT_name
	.quad	0                       # DW_AT_low_pc
	.long	.Lsection_line          # DW_AT_stmt_list
	.long	.Lstring2               # DW_AT_comp_dir
	.byte	4                       # Abbrev [4] 0x26:0x7 DW_TAG_base_type
	.long	.Lstring148             # DW_AT_name
	.byte	4                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	32                      # Abbrev [32] 0x2d:0x2f DW_TAG_subprogram
	.long	.Lstring149             # DW_AT_name
	.byte	15                      # DW_AT_decl_file
	.byte	220                     # DW_AT_decl_line
                                        # DW_AT_external
	.quad	.Lfunc_begin21          # DW_AT_low_pc
	.quad	.Lfunc_end21            # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	33                      # Abbrev [33] 0x46:0x15 DW_TAG_variable
	.long	.Lstring147             # DW_AT_name
	.long	38                      # DW_AT_type
	.byte	15                      # DW_AT_decl_file
	.byte	224                     # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	updateProgressBar.prev
	.byte	0                       # End Of Children Mark
	.byte	30                      # Abbrev [30] 0x5c:0x19 DW_TAG_subprogram
	.long	.Lstring150             # DW_AT_name
	.byte	15                      # DW_AT_decl_file
	.byte	40                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.quad	.Lfunc_begin15          # DW_AT_low_pc
	.quad	.Lfunc_end15            # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	3                       # Abbrev [3] 0x75:0x1d DW_TAG_subprogram
	.long	.Lstring151             # DW_AT_name
	.byte	15                      # DW_AT_decl_file
	.byte	131                     # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	146                     # DW_AT_type
                                        # DW_AT_external
	.quad	.Lfunc_begin17          # DW_AT_low_pc
	.quad	.Lfunc_end17            # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	4                       # Abbrev [4] 0x92:0x7 DW_TAG_base_type
	.long	.Lstring34              # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	3                       # Abbrev [3] 0x99:0x1d DW_TAG_subprogram
	.long	.Lstring152             # DW_AT_name
	.byte	15                      # DW_AT_decl_file
	.byte	157                     # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	146                     # DW_AT_type
                                        # DW_AT_external
	.quad	.Lfunc_begin18          # DW_AT_low_pc
	.quad	.Lfunc_end18            # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	2                       # Abbrev [2] 0xb6:0x19 DW_TAG_subprogram
	.long	.Lstring153             # DW_AT_name
	.byte	15                      # DW_AT_decl_file
	.byte	162                     # DW_AT_decl_line
                                        # DW_AT_external
	.quad	.Lfunc_begin19          # DW_AT_low_pc
	.quad	.Lfunc_end19            # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	30                      # Abbrev [30] 0xcf:0x19 DW_TAG_subprogram
	.long	.Lstring154             # DW_AT_name
	.byte	15                      # DW_AT_decl_file
	.byte	176                     # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.quad	.Lfunc_begin16          # DW_AT_low_pc
	.quad	.Lfunc_end16            # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	30                      # Abbrev [30] 0xe8:0x19 DW_TAG_subprogram
	.long	.Lstring155             # DW_AT_name
	.byte	15                      # DW_AT_decl_file
	.byte	195                     # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.quad	.Lfunc_begin20          # DW_AT_low_pc
	.quad	.Lfunc_end20            # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	30                      # Abbrev [30] 0x101:0x19 DW_TAG_subprogram
	.long	.Lstring156             # DW_AT_name
	.byte	15                      # DW_AT_decl_file
	.byte	250                     # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.quad	.Lfunc_begin22          # DW_AT_low_pc
	.quad	.Lfunc_end22            # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	31                      # Abbrev [31] 0x11a:0x1e DW_TAG_subprogram
	.long	.Lstring157             # DW_AT_name
	.byte	15                      # DW_AT_decl_file
	.short	271                     # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	146                     # DW_AT_type
                                        # DW_AT_external
	.quad	.Lfunc_begin23          # DW_AT_low_pc
	.quad	.Lfunc_end23            # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	34                      # Abbrev [34] 0x138:0x1a DW_TAG_subprogram
	.long	.Lstring158             # DW_AT_name
	.byte	15                      # DW_AT_decl_file
	.short	302                     # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.quad	.Lfunc_begin24          # DW_AT_low_pc
	.quad	.Lfunc_end24            # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	31                      # Abbrev [31] 0x152:0x1e DW_TAG_subprogram
	.long	.Lstring159             # DW_AT_name
	.byte	15                      # DW_AT_decl_file
	.short	324                     # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	146                     # DW_AT_type
                                        # DW_AT_external
	.quad	.Lfunc_begin25          # DW_AT_low_pc
	.quad	.Lfunc_end25            # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	5                       # Abbrev [5] 0x170:0x77 DW_TAG_enumeration_type
	.byte	4                       # DW_AT_byte_size
	.byte	3                       # DW_AT_decl_file
	.byte	14                      # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x174:0x7 DW_TAG_enumerator
	.long	.Lstring11              # DW_AT_name
	.ascii	 "\200\002"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x17b:0x8 DW_TAG_enumerator
	.long	.Lstring12              # DW_AT_name
	.asciz	 "\200\300"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x183:0x8 DW_TAG_enumerator
	.long	.Lstring13              # DW_AT_name
	.asciz	 "\200\300"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x18b:0x7 DW_TAG_enumerator
	.long	.Lstring14              # DW_AT_name
	.ascii	 "\200\004"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x192:0x7 DW_TAG_enumerator
	.long	.Lstring15              # DW_AT_name
	.ascii	 "\200\b"               # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x199:0x7 DW_TAG_enumerator
	.long	.Lstring16              # DW_AT_name
	.ascii	 "\200\b"               # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x1a0:0x6 DW_TAG_enumerator
	.long	.Lstring17              # DW_AT_name
	.byte	16                      # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x1a6:0x6 DW_TAG_enumerator
	.long	.Lstring18              # DW_AT_name
	.byte	10                      # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x1ac:0x7 DW_TAG_enumerator
	.long	.Lstring19              # DW_AT_name
	.ascii	 "\200\002"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x1b3:0x7 DW_TAG_enumerator
	.long	.Lstring20              # DW_AT_name
	.asciz	 "\320"                 # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x1ba:0x6 DW_TAG_enumerator
	.long	.Lstring21              # DW_AT_name
	.byte	2                       # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x1c0:0x6 DW_TAG_enumerator
	.long	.Lstring22              # DW_AT_name
	.byte	21                      # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x1c6:0x7 DW_TAG_enumerator
	.long	.Lstring23              # DW_AT_name
	.ascii	 "\377\001"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x1cd:0x6 DW_TAG_enumerator
	.long	.Lstring24              # DW_AT_name
	.byte	0                       # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x1d3:0x7 DW_TAG_enumerator
	.long	.Lstring25              # DW_AT_name
	.ascii	 "\377\001"             # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x1da:0x6 DW_TAG_enumerator
	.long	.Lstring26              # DW_AT_name
	.byte	15                      # DW_AT_const_value
	.byte	6                       # Abbrev [6] 0x1e0:0x6 DW_TAG_enumerator
	.long	.Lstring27              # DW_AT_name
	.byte	0                       # DW_AT_const_value
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
.Linfo_end15:
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
	.byte	46                      # DW_TAG_subprogram
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
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
	.byte	3                       # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	39                      # DW_AT_prototyped
	.byte	25                      # DW_FORM_flag_present
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
	.byte	4                       # Abbreviation Code
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
	.byte	5                       # Abbreviation Code
	.byte	4                       # DW_TAG_enumeration_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	6                       # Abbreviation Code
	.byte	40                      # DW_TAG_enumerator
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	28                      # DW_AT_const_value
	.byte	13                      # DW_FORM_sdata
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	7                       # Abbreviation Code
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
	.byte	8                       # Abbreviation Code
	.byte	15                      # DW_TAG_pointer_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	9                       # Abbreviation Code
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
	.byte	10                      # Abbreviation Code
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
	.byte	11                      # Abbreviation Code
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
	.byte	12                      # Abbreviation Code
	.byte	36                      # DW_TAG_base_type
	.byte	0                       # DW_CHILDREN_no
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	62                      # DW_AT_encoding
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	13                      # Abbreviation Code
	.byte	1                       # DW_TAG_array_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	14                      # Abbreviation Code
	.byte	33                      # DW_TAG_subrange_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	47                      # DW_AT_upper_bound
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	15                      # Abbreviation Code
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
	.byte	16                      # Abbreviation Code
	.byte	15                      # DW_TAG_pointer_type
	.byte	0                       # DW_CHILDREN_no
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	17                      # Abbreviation Code
	.byte	4                       # DW_TAG_enumeration_type
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
	.byte	18                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	39                      # DW_AT_prototyped
	.byte	25                      # DW_FORM_flag_present
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
	.byte	19                      # Abbreviation Code
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
	.byte	20                      # Abbreviation Code
	.byte	11                      # DW_TAG_lexical_block
	.byte	1                       # DW_CHILDREN_yes
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	1                       # DW_FORM_addr
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	21                      # Abbreviation Code
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
	.byte	22                      # Abbreviation Code
	.byte	11                      # DW_TAG_lexical_block
	.byte	1                       # DW_CHILDREN_yes
	.byte	85                      # DW_AT_ranges
	.byte	6                       # DW_FORM_data4
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
	.byte	5                       # DW_FORM_data2
	.byte	39                      # DW_AT_prototyped
	.byte	25                      # DW_FORM_flag_present
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
	.byte	5                       # DW_TAG_formal_parameter
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	2                       # DW_AT_location
	.byte	10                      # DW_FORM_block1
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
	.byte	5                       # DW_FORM_data2
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	2                       # DW_AT_location
	.byte	10                      # DW_FORM_block1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	26                      # Abbreviation Code
	.byte	33                      # DW_TAG_subrange_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	47                      # DW_AT_upper_bound
	.byte	5                       # DW_FORM_data2
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	27                      # Abbreviation Code
	.byte	19                      # DW_TAG_structure_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	11                      # DW_AT_byte_size
	.byte	5                       # DW_FORM_data2
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	28                      # Abbreviation Code
	.byte	19                      # DW_TAG_structure_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	29                      # Abbreviation Code
	.byte	19                      # DW_TAG_structure_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	11                      # DW_AT_byte_size
	.byte	6                       # DW_FORM_data4
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	30                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	39                      # DW_AT_prototyped
	.byte	25                      # DW_FORM_flag_present
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
	.byte	31                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
	.byte	39                      # DW_AT_prototyped
	.byte	25                      # DW_FORM_flag_present
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
	.byte	32                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
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
	.byte	33                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	2                       # DW_AT_location
	.byte	10                      # DW_FORM_block1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	34                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
	.byte	39                      # DW_AT_prototyped
	.byte	25                      # DW_FORM_flag_present
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
	.byte	0                       # EOM(3)
.Labbrev_end:
	.section	.debug_aranges,"",@progbits
	.section	.debug_ranges,"",@progbits
	.quad	.Ltmp16
	.quad	.Ltmp17
	.quad	.Ltmp21
	.quad	.Ltmp25
	.quad	.Ltmp26
	.quad	.Ltmp29
	.quad	0
	.quad	0
	.quad	.Ltmp16
	.quad	.Ltmp19
	.quad	.Ltmp20
	.quad	.Ltmp29
	.quad	0
	.quad	0
	.section	.debug_macinfo,"",@progbits
	.section	.debug_str,"MS",@progbits,1
.Lstring0:
	.asciz	 "clang version 3.2 (tags/RELEASE_32/final)"
.Lstring1:
	.asciz	 "Aget.c"
.Lstring2:
	.asciz	 "/home/tyu/Documents/concurrency-bugs/aget-bug1/aget-devel"
.Lstring3:
	.asciz	 "t_start"
.Lstring4:
	.asciz	 "long int"
.Lstring5:
	.asciz	 "__time_t"
.Lstring6:
	.asciz	 "time_t"
.Lstring7:
	.asciz	 "t_finish"
.Lstring8:
	.asciz	 "startHTTP"
.Lstring9:
	.asciz	 "startFTP"
.Lstring10:
	.asciz	 "resumeDownload"
.Lstring11:
	.asciz	 "GETREQSIZ"
.Lstring12:
	.asciz	 "GETRECVSIZ"
.Lstring13:
	.asciz	 "MAXBUFSIZ"
.Lstring14:
	.asciz	 "HEADREQSIZ"
.Lstring15:
	.asciz	 "MAXURLSIZ"
.Lstring16:
	.asciz	 "MAXHOSTSIZ"
.Lstring17:
	.asciz	 "MAXIPSIZ"
.Lstring18:
	.asciz	 "MAXTHREADS"
.Lstring19:
	.asciz	 "VALSIZE"
.Lstring20:
	.asciz	 "HTTPPORT"
.Lstring21:
	.asciz	 "UNKNOWNREQ"
.Lstring22:
	.asciz	 "FTPREQ"
.Lstring23:
	.asciz	 "PROTO_HTTP"
.Lstring24:
	.asciz	 "PROTO_FTP"
.Lstring25:
	.asciz	 "STAT_OK"
.Lstring26:
	.asciz	 "STAT_INT"
.Lstring27:
	.asciz	 "STAT_ERR"
.Lstring28:
	.asciz	 "Download.c"
.Lstring29:
	.asciz	 "bwritten"
.Lstring30:
	.asciz	 "unsigned int"
.Lstring31:
	.asciz	 "bwritten_mutex"
.Lstring32:
	.asciz	 "__data"
.Lstring33:
	.asciz	 "__lock"
.Lstring34:
	.asciz	 "int"
.Lstring35:
	.asciz	 "__count"
.Lstring36:
	.asciz	 "__owner"
.Lstring37:
	.asciz	 "__nusers"
.Lstring38:
	.asciz	 "__kind"
.Lstring39:
	.asciz	 "__spins"
.Lstring40:
	.asciz	 "short"
.Lstring41:
	.asciz	 "__elision"
.Lstring42:
	.asciz	 "__list"
.Lstring43:
	.asciz	 "__prev"
.Lstring44:
	.asciz	 "__next"
.Lstring45:
	.asciz	 "__pthread_internal_list"
.Lstring46:
	.asciz	 "__pthread_list_t"
.Lstring47:
	.asciz	 "__pthread_mutex_s"
.Lstring48:
	.asciz	 "__size"
.Lstring49:
	.asciz	 "char"
.Lstring50:
	.asciz	 "__align"
.Lstring51:
	.asciz	 "pthread_mutex_t"
.Lstring52:
	.asciz	 "http_get"
.Lstring53:
	.asciz	 "PTHREAD_CANCEL_DEFERRED"
.Lstring54:
	.asciz	 "PTHREAD_CANCEL_ASYNCHRONOUS"
.Lstring55:
	.asciz	 "SOCK_STREAM"
.Lstring56:
	.asciz	 "SOCK_DGRAM"
.Lstring57:
	.asciz	 "SOCK_RAW"
.Lstring58:
	.asciz	 "SOCK_RDM"
.Lstring59:
	.asciz	 "SOCK_SEQPACKET"
.Lstring60:
	.asciz	 "SOCK_DCCP"
.Lstring61:
	.asciz	 "SOCK_PACKET"
.Lstring62:
	.asciz	 "SOCK_CLOEXEC"
.Lstring63:
	.asciz	 "SOCK_NONBLOCK"
.Lstring64:
	.asciz	 "__socket_type"
.Lstring65:
	.asciz	 "Ftp.c"
.Lstring66:
	.asciz	 "ftp_get"
.Lstring67:
	.asciz	 "Head.c"
.Lstring68:
	.asciz	 "http_head_req"
.Lstring69:
	.asciz	 "ftp_head_req"
.Lstring70:
	.asciz	 "parse_pasv_reply"
.Lstring71:
	.asciz	 "parse_pasv_reply2"
.Lstring72:
	.asciz	 "ftp_get_size"
.Lstring73:
	.asciz	 "parse_list_reply"
.Lstring74:
	.asciz	 "_ISupper"
.Lstring75:
	.asciz	 "_ISlower"
.Lstring76:
	.asciz	 "_ISalpha"
.Lstring77:
	.asciz	 "_ISdigit"
.Lstring78:
	.asciz	 "_ISxdigit"
.Lstring79:
	.asciz	 "_ISspace"
.Lstring80:
	.asciz	 "_ISprint"
.Lstring81:
	.asciz	 "_ISgraph"
.Lstring82:
	.asciz	 "_ISblank"
.Lstring83:
	.asciz	 "_IScntrl"
.Lstring84:
	.asciz	 "_ISpunct"
.Lstring85:
	.asciz	 "_ISalnum"
.Lstring86:
	.asciz	 "loadrc.c"
.Lstring87:
	.asciz	 "preferredthread"
.Lstring88:
	.asciz	 "http_proxyport"
.Lstring89:
	.asciz	 "ftpanonymoususer"
.Lstring90:
	.asciz	 "ftpanonymouspass"
.Lstring91:
	.asciz	 "http_proxyhost"
.Lstring92:
	.asciz	 "http_proxyuser"
.Lstring93:
	.asciz	 "http_proxypass"
.Lstring94:
	.asciz	 "loadconfig"
.Lstring95:
	.asciz	 "createrc"
.Lstring96:
	.asciz	 "readrc"
.Lstring97:
	.asciz	 "BUFSIZE"
.Lstring98:
	.asciz	 "KEYSIZE"
.Lstring99:
	.asciz	 "main.c"
.Lstring100:
	.asciz	 "nthreads"
.Lstring101:
	.asciz	 "fsuggested"
.Lstring102:
	.asciz	 "req"
.Lstring103:
	.asciz	 "host"
.Lstring104:
	.asciz	 "url"
.Lstring105:
	.asciz	 "file"
.Lstring106:
	.asciz	 "lfile"
.Lstring107:
	.asciz	 "ip"
.Lstring108:
	.asciz	 "username"
.Lstring109:
	.asciz	 "password"
.Lstring110:
	.asciz	 "port"
.Lstring111:
	.asciz	 "ftp_server_type"
.Lstring112:
	.asciz	 "clength"
.Lstring113:
	.asciz	 "proto"
.Lstring114:
	.asciz	 "unsigned char"
.Lstring115:
	.asciz	 "time_taken"
.Lstring116:
	.asciz	 "request"
.Lstring117:
	.asciz	 "hthread"
.Lstring118:
	.asciz	 "long unsigned int"
.Lstring119:
	.asciz	 "pthread_t"
.Lstring120:
	.asciz	 "wthread"
.Lstring121:
	.asciz	 "sin"
.Lstring122:
	.asciz	 "sin_family"
.Lstring123:
	.asciz	 "unsigned short"
.Lstring124:
	.asciz	 "sa_family_t"
.Lstring125:
	.asciz	 "sin_port"
.Lstring126:
	.asciz	 "uint16_t"
.Lstring127:
	.asciz	 "in_port_t"
.Lstring128:
	.asciz	 "sin_addr"
.Lstring129:
	.asciz	 "s_addr"
.Lstring130:
	.asciz	 "uint32_t"
.Lstring131:
	.asciz	 "in_addr_t"
.Lstring132:
	.asciz	 "in_addr"
.Lstring133:
	.asciz	 "sin_zero"
.Lstring134:
	.asciz	 "sockaddr_in"
.Lstring135:
	.asciz	 "getstr"
.Lstring136:
	.asciz	 "soffset"
.Lstring137:
	.asciz	 "foffset"
.Lstring138:
	.asciz	 "offset"
.Lstring139:
	.asciz	 "fd"
.Lstring140:
	.asciz	 "tid"
.Lstring141:
	.asciz	 "status"
.Lstring142:
	.asciz	 "head_sd"
.Lstring143:
	.asciz	 "thread_data"
.Lstring144:
	.asciz	 "main_tid"
.Lstring145:
	.asciz	 "main"
.Lstring146:
	.asciz	 "Misc.c"
.Lstring147:
	.asciz	 "prev"
.Lstring148:
	.asciz	 "float"
.Lstring149:
	.asciz	 "updateProgressBar"
.Lstring150:
	.asciz	 "parse_url"
.Lstring151:
	.asciz	 "numofthreads"
.Lstring152:
	.asciz	 "calc_offset"
.Lstring153:
	.asciz	 "usage"
.Lstring154:
	.asciz	 "revstr"
.Lstring155:
	.asciz	 "Log"
.Lstring156:
	.asciz	 "handleHttpRetcode"
.Lstring157:
	.asciz	 "recv_data"
.Lstring158:
	.asciz	 "handleFTPRetcode"
.Lstring159:
	.asciz	 "recv_reply"
.Lstring160:
	.asciz	 "Resume.c"
.Lstring161:
	.asciz	 "save_log"
.Lstring162:
	.asciz	 "read_log"
.Lstring163:
	.asciz	 "Signal.c"
.Lstring164:
	.asciz	 "signal_waiter"
.Lstring165:
	.asciz	 "sigint_handler"
.Lstring166:
	.asciz	 "sigalrm_handler"
.Lstring167:
	.asciz	 "i"
.Lstring168:
	.asciz	 "ret"
.Lstring169:
	.asciz	 "diff_sec"
.Lstring170:
	.asciz	 "nok"
.Lstring171:
	.asciz	 "fmt"
.Lstring172:
	.asciz	 "set"
.Lstring173:
	.asciz	 "__val"
.Lstring174:
	.asciz	 "__sigset_t"
.Lstring175:
	.asciz	 "sigset_t"
.Lstring176:
	.asciz	 "tmp"
.Lstring177:
	.asciz	 "h"
.Lstring178:
	.asciz	 "hist_data"

	.section	".note.GNU-stack","",@progbits
