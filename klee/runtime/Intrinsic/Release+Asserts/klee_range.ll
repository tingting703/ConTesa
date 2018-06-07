; ModuleID = 'klee_range.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-f128:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"klee_range.c\00", align 1
@.str1 = private unnamed_addr constant [14 x i8] c"invalid range\00", align 1
@.str2 = private unnamed_addr constant [5 x i8] c"user\00", align 1

define i32 @klee_range(i32 %start, i32 %end, i8* %name) nounwind {
entry:
  %start_addr = alloca i32, align 4
  %end_addr = alloca i32, align 4
  %name_addr = alloca i8*, align 8
  %retval = alloca i32
  %0 = alloca i32
  %x = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i32* %start_addr}, metadata !9), !dbg !10
  store i32 %start, i32* %start_addr
  call void @llvm.dbg.declare(metadata !{i32* %end_addr}, metadata !11), !dbg !10
  store i32 %end, i32* %end_addr
  call void @llvm.dbg.declare(metadata !{i8** %name_addr}, metadata !12), !dbg !10
  store i8* %name, i8** %name_addr
  call void @llvm.dbg.declare(metadata !{i32* %x}, metadata !13), !dbg !15
  %1 = load i32* %start_addr, align 4, !dbg !16
  %2 = load i32* %end_addr, align 4, !dbg !16
  %3 = icmp sge i32 %1, %2, !dbg !16
  br i1 %3, label %bb, label %bb1, !dbg !16

bb:                                               ; preds = %entry
  call void @klee_report_error(i8* getelementptr inbounds ([13 x i8]* @.str, i64 0, i64 0), i32 17, i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0)) noreturn nounwind, !dbg !17
  unreachable, !dbg !17

bb1:                                              ; preds = %entry
  %4 = load i32* %start_addr, align 4, !dbg !18
  %5 = add nsw i32 %4, 1, !dbg !18
  %6 = load i32* %end_addr, align 4, !dbg !18
  %7 = icmp eq i32 %5, %6, !dbg !18
  br i1 %7, label %bb2, label %bb3, !dbg !18

bb2:                                              ; preds = %bb1
  %8 = load i32* %start_addr, align 4, !dbg !19
  store i32 %8, i32* %0, align 4, !dbg !19
  br label %bb8, !dbg !19

bb3:                                              ; preds = %bb1
  %x4 = bitcast i32* %x to i8*, !dbg !20
  %9 = load i8** %name_addr, align 8, !dbg !20
  call void @klee_make_symbolic(i8* %x4, i64 4, i8* %9) nounwind, !dbg !20
  %10 = load i32* %start_addr, align 4, !dbg !21
  %11 = icmp eq i32 %10, 0, !dbg !21
  br i1 %11, label %bb5, label %bb6, !dbg !21

bb5:                                              ; preds = %bb3
  %12 = load i32* %x, align 4, !dbg !22
  %13 = load i32* %end_addr, align 4, !dbg !22
  %14 = icmp ult i32 %12, %13, !dbg !22
  %15 = zext i1 %14 to i64, !dbg !22
  call void @klee_assume(i64 %15) nounwind, !dbg !22
  br label %bb7, !dbg !22

bb6:                                              ; preds = %bb3
  %16 = load i32* %x, align 4, !dbg !23
  %17 = load i32* %start_addr, align 4, !dbg !23
  %18 = icmp sle i32 %17, %16, !dbg !23
  %19 = zext i1 %18 to i64, !dbg !23
  call void @klee_assume(i64 %19) nounwind, !dbg !23
  %20 = load i32* %x, align 4, !dbg !24
  %21 = load i32* %end_addr, align 4, !dbg !24
  %22 = icmp slt i32 %20, %21, !dbg !24
  %23 = zext i1 %22 to i64, !dbg !24
  call void @klee_assume(i64 %23) nounwind, !dbg !24
  br label %bb7, !dbg !24

bb7:                                              ; preds = %bb6, %bb5
  %24 = load i32* %x, align 4, !dbg !25
  store i32 %24, i32* %0, align 4, !dbg !25
  br label %bb8, !dbg !25

bb8:                                              ; preds = %bb7, %bb2
  %25 = load i32* %0, align 4, !dbg !19
  store i32 %25, i32* %retval, align 4, !dbg !19
  br label %return, !dbg !19

return:                                           ; preds = %bb8
  %retval9 = load i32* %retval, !dbg !19
  ret i32 %retval9, !dbg !19
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare void @klee_report_error(i8*, i32, i8*, i8*) noreturn

declare void @klee_make_symbolic(i8*, i64, i8*)

declare void @klee_assume(i64)

!llvm.dbg.sp = !{!0}

!0 = metadata !{i32 589870, i32 0, metadata !1, metadata !"klee_range", metadata !"klee_range", metadata !"klee_range", metadata !1, i32 13, metadata !3, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32, i8*)* @klee_range} ; [ DW_TAG_subprogram ]
!1 = metadata !{i32 589865, metadata !"klee_range.c", metadata !"/home/tyu/Documents/bugredx/klee2.9/runtime/Intrinsic/", metadata !2} ; [ DW_TAG_file_type ]
!2 = metadata !{i32 589841, i32 0, i32 1, metadata !"klee_range.c", metadata !"/home/tyu/Documents/bugredx/klee2.9/runtime/Intrinsic/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!3 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !4, i32 0, null} ; [ DW_TAG_subroutine_type ]
!4 = metadata !{metadata !5, metadata !5, metadata !5, metadata !6}
!5 = metadata !{i32 589860, metadata !1, metadata !"int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!6 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !7} ; [ DW_TAG_pointer_type ]
!7 = metadata !{i32 589862, metadata !1, metadata !"", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !8} ; [ DW_TAG_const_type ]
!8 = metadata !{i32 589860, metadata !1, metadata !"char", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!9 = metadata !{i32 590081, metadata !0, metadata !"start", metadata !1, i32 13, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!10 = metadata !{i32 13, i32 0, metadata !0, null}
!11 = metadata !{i32 590081, metadata !0, metadata !"end", metadata !1, i32 13, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!12 = metadata !{i32 590081, metadata !0, metadata !"name", metadata !1, i32 13, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!13 = metadata !{i32 590080, metadata !14, metadata !"x", metadata !1, i32 14, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!14 = metadata !{i32 589835, metadata !0, i32 13, i32 0, metadata !1, i32 0} ; [ DW_TAG_lexical_block ]
!15 = metadata !{i32 14, i32 0, metadata !14, null}
!16 = metadata !{i32 16, i32 0, metadata !14, null}
!17 = metadata !{i32 17, i32 0, metadata !14, null}
!18 = metadata !{i32 19, i32 0, metadata !14, null}
!19 = metadata !{i32 20, i32 0, metadata !14, null}
!20 = metadata !{i32 22, i32 0, metadata !14, null}
!21 = metadata !{i32 25, i32 0, metadata !14, null}
!22 = metadata !{i32 26, i32 0, metadata !14, null}
!23 = metadata !{i32 28, i32 0, metadata !14, null}
!24 = metadata !{i32 29, i32 0, metadata !14, null}
!25 = metadata !{i32 32, i32 0, metadata !14, null}
