; ModuleID = 'strrchr.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-f128:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

define i8* @strrchr(i8* %t, i32 %c) nounwind readonly {
entry:
  %t_addr = alloca i8*, align 8
  %c_addr = alloca i32, align 4
  %retval = alloca i8*
  %0 = alloca i8*
  %ch = alloca i8
  %l = alloca i8*
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i8** %t_addr}, metadata !10), !dbg !11
  store i8* %t, i8** %t_addr
  call void @llvm.dbg.declare(metadata !{i32* %c_addr}, metadata !12), !dbg !11
  store i32 %c, i32* %c_addr
  call void @llvm.dbg.declare(metadata !{i8* %ch}, metadata !13), !dbg !15
  call void @llvm.dbg.declare(metadata !{i8** %l}, metadata !16), !dbg !17
  store i8* null, i8** %l, align 8, !dbg !17
  %1 = load i32* %c_addr, align 4, !dbg !18
  %2 = trunc i32 %1 to i8, !dbg !18
  store i8 %2, i8* %ch, align 1, !dbg !18
  br label %bb, !dbg !18

bb:                                               ; preds = %bb4, %entry
  %3 = load i8** %t_addr, align 8, !dbg !19
  %4 = load i8* %3, align 1, !dbg !19
  %5 = load i8* %ch, align 1, !dbg !19
  %6 = icmp eq i8 %4, %5, !dbg !19
  br i1 %6, label %bb1, label %bb2, !dbg !19

bb1:                                              ; preds = %bb
  %7 = load i8** %t_addr, align 8, !dbg !19
  store i8* %7, i8** %l, align 8, !dbg !19
  br label %bb2, !dbg !19

bb2:                                              ; preds = %bb1, %bb
  %8 = load i8** %t_addr, align 8, !dbg !19
  %9 = load i8* %8, align 1, !dbg !19
  %10 = icmp eq i8 %9, 0, !dbg !19
  br i1 %10, label %bb3, label %bb4, !dbg !19

bb3:                                              ; preds = %bb2
  %11 = load i8** %l, align 8, !dbg !19
  store i8* %11, i8** %0, align 8, !dbg !19
  %12 = load i8** %0, align 8, !dbg !19
  store i8* %12, i8** %retval, align 8, !dbg !19
  br label %return, !dbg !19

bb4:                                              ; preds = %bb2
  %13 = load i8** %t_addr, align 8, !dbg !19
  %14 = getelementptr inbounds i8* %13, i64 1, !dbg !19
  store i8* %14, i8** %t_addr, align 8, !dbg !19
  br label %bb, !dbg !19

return:                                           ; preds = %bb3
  %retval5 = load i8** %retval, !dbg !19
  ret i8* %retval5, !dbg !19
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

!llvm.dbg.sp = !{!0}

!0 = metadata !{i32 589870, i32 0, metadata !1, metadata !"strrchr", metadata !"strrchr", metadata !"strrchr", metadata !1, i32 12, metadata !3, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i32)* @strrchr} ; [ DW_TAG_subprogram ]
!1 = metadata !{i32 589865, metadata !"strrchr.c", metadata !"/home/tyu/Documents/bugredx/klee2.9/runtime/klee-libc/", metadata !2} ; [ DW_TAG_file_type ]
!2 = metadata !{i32 589841, i32 0, i32 1, metadata !"strrchr.c", metadata !"/home/tyu/Documents/bugredx/klee2.9/runtime/klee-libc/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!3 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !4, i32 0, null} ; [ DW_TAG_subroutine_type ]
!4 = metadata !{metadata !5, metadata !7, metadata !9}
!5 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !6} ; [ DW_TAG_pointer_type ]
!6 = metadata !{i32 589860, metadata !1, metadata !"char", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!7 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ]
!8 = metadata !{i32 589862, metadata !1, metadata !"", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !6} ; [ DW_TAG_const_type ]
!9 = metadata !{i32 589860, metadata !1, metadata !"int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!10 = metadata !{i32 590081, metadata !0, metadata !"t", metadata !1, i32 12, metadata !7, i32 0} ; [ DW_TAG_arg_variable ]
!11 = metadata !{i32 12, i32 0, metadata !0, null}
!12 = metadata !{i32 590081, metadata !0, metadata !"c", metadata !1, i32 12, metadata !9, i32 0} ; [ DW_TAG_arg_variable ]
!13 = metadata !{i32 590080, metadata !14, metadata !"ch", metadata !1, i32 13, metadata !6, i32 0} ; [ DW_TAG_auto_variable ]
!14 = metadata !{i32 589835, metadata !0, i32 12, i32 0, metadata !1, i32 0} ; [ DW_TAG_lexical_block ]
!15 = metadata !{i32 13, i32 0, metadata !14, null}
!16 = metadata !{i32 590080, metadata !14, metadata !"l", metadata !1, i32 14, metadata !7, i32 0} ; [ DW_TAG_auto_variable ]
!17 = metadata !{i32 14, i32 0, metadata !14, null}
!18 = metadata !{i32 16, i32 0, metadata !14, null}
!19 = metadata !{i32 18, i32 0, metadata !14, null}
