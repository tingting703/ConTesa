; ModuleID = 'atexit.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-f128:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

define i32 @atexit(void ()* %fn) nounwind {
entry:
  %fn_addr = alloca void ()*, align 8
  %retval = alloca i32
  %0 = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{void ()** %fn_addr}, metadata !9), !dbg !10
  store void ()* %fn, void ()** %fn_addr
  %1 = load void ()** %fn_addr, align 8, !dbg !11
  %2 = bitcast void ()* %1 to void (i8*)*, !dbg !11
  %3 = call i32 @__cxa_atexit(void (i8*)* %2, i8* null, i8* null) nounwind, !dbg !11
  store i32 %3, i32* %0, align 4, !dbg !11
  %4 = load i32* %0, align 4, !dbg !11
  store i32 %4, i32* %retval, align 4, !dbg !11
  br label %return, !dbg !11

return:                                           ; preds = %entry
  %retval1 = load i32* %retval, !dbg !11
  ret i32 %retval1, !dbg !11
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*)

!llvm.dbg.sp = !{!0}

!0 = metadata !{i32 589870, i32 0, metadata !1, metadata !"atexit", metadata !"atexit", metadata !"atexit", metadata !1, i32 14, metadata !3, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (void ()*)* @atexit} ; [ DW_TAG_subprogram ]
!1 = metadata !{i32 589865, metadata !"atexit.c", metadata !"/home/tyu/Documents/bugredx/klee2.9/runtime/klee-libc/", metadata !2} ; [ DW_TAG_file_type ]
!2 = metadata !{i32 589841, i32 0, i32 1, metadata !"atexit.c", metadata !"/home/tyu/Documents/bugredx/klee2.9/runtime/klee-libc/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!3 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !4, i32 0, null} ; [ DW_TAG_subroutine_type ]
!4 = metadata !{metadata !5, metadata !6}
!5 = metadata !{i32 589860, metadata !1, metadata !"int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!6 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !7} ; [ DW_TAG_pointer_type ]
!7 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, null} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null}
!9 = metadata !{i32 590081, metadata !0, metadata !"fn", metadata !1, i32 14, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!10 = metadata !{i32 14, i32 0, metadata !0, null}
!11 = metadata !{i32 15, i32 0, metadata !12, null}
!12 = metadata !{i32 589835, metadata !0, i32 14, i32 0, metadata !1, i32 0} ; [ DW_TAG_lexical_block ]
