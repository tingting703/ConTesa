; ModuleID = 'toupper.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-f128:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

define i32 @toupper(i32 %ch) nounwind readonly {
entry:
  %ch_addr = alloca i32, align 4
  %retval = alloca i32
  %0 = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i32* %ch_addr}, metadata !6), !dbg !7
  store i32 %ch, i32* %ch_addr
  %1 = load i32* %ch_addr, align 4, !dbg !8
  %2 = sub nsw i32 %1, 97, !dbg !8
  %3 = icmp ule i32 %2, 25, !dbg !8
  br i1 %3, label %bb, label %bb1, !dbg !8

bb:                                               ; preds = %entry
  %4 = load i32* %ch_addr, align 4, !dbg !10
  %5 = add nsw i32 %4, -32, !dbg !10
  store i32 %5, i32* %ch_addr, align 4, !dbg !10
  br label %bb1, !dbg !10

bb1:                                              ; preds = %bb, %entry
  %6 = load i32* %ch_addr, align 4, !dbg !11
  store i32 %6, i32* %0, align 4, !dbg !11
  %7 = load i32* %0, align 4, !dbg !11
  store i32 %7, i32* %retval, align 4, !dbg !11
  br label %return, !dbg !11

return:                                           ; preds = %bb1
  %retval2 = load i32* %retval, !dbg !11
  ret i32 %retval2, !dbg !11
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

!llvm.dbg.sp = !{!0}

!0 = metadata !{i32 589870, i32 0, metadata !1, metadata !"toupper", metadata !"toupper", metadata !"toupper", metadata !1, i32 10, metadata !3, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @toupper} ; [ DW_TAG_subprogram ]
!1 = metadata !{i32 589865, metadata !"toupper.c", metadata !"/home/tyu/Documents/bugredx/klee2.9/runtime/klee-libc/", metadata !2} ; [ DW_TAG_file_type ]
!2 = metadata !{i32 589841, i32 0, i32 1, metadata !"toupper.c", metadata !"/home/tyu/Documents/bugredx/klee2.9/runtime/klee-libc/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!3 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !4, i32 0, null} ; [ DW_TAG_subroutine_type ]
!4 = metadata !{metadata !5, metadata !5}
!5 = metadata !{i32 589860, metadata !1, metadata !"int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!6 = metadata !{i32 590081, metadata !0, metadata !"ch", metadata !1, i32 10, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!7 = metadata !{i32 10, i32 0, metadata !0, null}
!8 = metadata !{i32 11, i32 0, metadata !9, null}
!9 = metadata !{i32 589835, metadata !0, i32 10, i32 0, metadata !1, i32 0} ; [ DW_TAG_lexical_block ]
!10 = metadata !{i32 12, i32 0, metadata !9, null}
!11 = metadata !{i32 13, i32 0, metadata !9, null}
