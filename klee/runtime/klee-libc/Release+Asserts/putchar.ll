; ModuleID = 'putchar.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-f128:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

define i32 @putchar(i32 %c) nounwind {
entry:
  %c_addr = alloca i32, align 4
  %retval = alloca i32
  %0 = alloca i32
  %x = alloca i8
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i32* %c_addr}, metadata !6), !dbg !7
  store i32 %c, i32* %c_addr
  call void @llvm.dbg.declare(metadata !{i8* %x}, metadata !8), !dbg !11
  %1 = load i32* %c_addr, align 4, !dbg !11
  %2 = trunc i32 %1 to i8, !dbg !11
  store i8 %2, i8* %x, align 1, !dbg !11
  %3 = call i64 @write(i32 1, i8* %x, i64 1) nounwind, !dbg !12
  store i32 1, i32* %0, align 4, !dbg !13
  %4 = load i32* %0, align 4, !dbg !13
  store i32 %4, i32* %retval, align 4, !dbg !13
  br label %return, !dbg !13

return:                                           ; preds = %entry
  %retval1 = load i32* %retval, !dbg !13
  ret i32 %retval1, !dbg !13
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare i64 @write(i32, i8*, i64)

!llvm.dbg.sp = !{!0}

!0 = metadata !{i32 589870, i32 0, metadata !1, metadata !"putchar", metadata !"putchar", metadata !"putchar", metadata !1, i32 16, metadata !3, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @putchar} ; [ DW_TAG_subprogram ]
!1 = metadata !{i32 589865, metadata !"putchar.c", metadata !"/home/tyu/Documents/bugredx/klee2.9/runtime/klee-libc/", metadata !2} ; [ DW_TAG_file_type ]
!2 = metadata !{i32 589841, i32 0, i32 1, metadata !"putchar.c", metadata !"/home/tyu/Documents/bugredx/klee2.9/runtime/klee-libc/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!3 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !4, i32 0, null} ; [ DW_TAG_subroutine_type ]
!4 = metadata !{metadata !5, metadata !5}
!5 = metadata !{i32 589860, metadata !1, metadata !"int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!6 = metadata !{i32 590081, metadata !0, metadata !"c", metadata !1, i32 16, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!7 = metadata !{i32 16, i32 0, metadata !0, null}
!8 = metadata !{i32 590080, metadata !9, metadata !"x", metadata !1, i32 17, metadata !10, i32 0} ; [ DW_TAG_auto_variable ]
!9 = metadata !{i32 589835, metadata !0, i32 16, i32 0, metadata !1, i32 0} ; [ DW_TAG_lexical_block ]
!10 = metadata !{i32 589860, metadata !1, metadata !"char", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!11 = metadata !{i32 17, i32 0, metadata !9, null}
!12 = metadata !{i32 18, i32 0, metadata !9, null}
!13 = metadata !{i32 19, i32 0, metadata !9, null}
