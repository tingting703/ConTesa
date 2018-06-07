; ModuleID = '__cxa_atexit.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-f128:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i32, void ()* }
%struct.anon = type { void (i8*)*, i8*, i8* }

@NumAtExit = internal unnamed_addr global i32 0
@AtExit = internal unnamed_addr global [128 x %struct.anon] zeroinitializer, align 32
@.str = private unnamed_addr constant [34 x i8] c"FIXME: __cxa_atexit being ignored\00", align 8
@.str1 = private unnamed_addr constant [15 x i8] c"__cxa_atexit.c\00", align 1
@.str2 = private unnamed_addr constant [32 x i8] c"__cxa_atexit: no room in array!\00", align 8
@.str3 = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@llvm.global_dtors = appending unnamed_addr global [1 x %0] [%0 { i32 65535, void ()* @RunAtExit }]

define internal void @RunAtExit() nounwind {
entry:
  %i = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !24), !dbg !26
  store i32 0, i32* %i, align 4, !dbg !27
  br label %bb1, !dbg !27

bb:                                               ; preds = %bb1
  %0 = load i32* %i, align 4, !dbg !28
  %1 = zext i32 %0 to i64, !dbg !28
  %2 = getelementptr inbounds [128 x %struct.anon]* @AtExit, i64 0, i64 %1, !dbg !28
  %3 = getelementptr inbounds %struct.anon* %2, i32 0, i32 0, !dbg !28
  %4 = load void (i8*)** %3, align 8, !dbg !28
  %5 = load i32* %i, align 4, !dbg !28
  %6 = zext i32 %5 to i64, !dbg !28
  %7 = getelementptr inbounds [128 x %struct.anon]* @AtExit, i64 0, i64 %6, !dbg !28
  %8 = getelementptr inbounds %struct.anon* %7, i32 0, i32 1, !dbg !28
  %9 = load i8** %8, align 8, !dbg !28
  call void %4(i8* %9) nounwind, !dbg !28
  %10 = load i32* %i, align 4, !dbg !27
  %11 = add i32 %10, 1, !dbg !27
  store i32 %11, i32* %i, align 4, !dbg !27
  br label %bb1, !dbg !27

bb1:                                              ; preds = %bb, %entry
  %12 = load i32* @NumAtExit, align 4, !dbg !27
  %13 = load i32* %i, align 4, !dbg !27
  %14 = icmp ult i32 %13, %12, !dbg !27
  br i1 %14, label %bb, label %bb2, !dbg !27

bb2:                                              ; preds = %bb1
  br label %return, !dbg !29

return:                                           ; preds = %bb2
  ret void, !dbg !29
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define i32 @__cxa_atexit(void (i8*)* %fn, i8* %arg, i8* %dso_handle) nounwind {
entry:
  %fn_addr = alloca void (i8*)*, align 8
  %arg_addr = alloca i8*, align 8
  %dso_handle_addr = alloca i8*, align 8
  %retval = alloca i32
  %0 = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{void (i8*)** %fn_addr}, metadata !30), !dbg !31
  store void (i8*)* %fn, void (i8*)** %fn_addr
  call void @llvm.dbg.declare(metadata !{i8** %arg_addr}, metadata !32), !dbg !33
  store i8* %arg, i8** %arg_addr
  call void @llvm.dbg.declare(metadata !{i8** %dso_handle_addr}, metadata !34), !dbg !35
  store i8* %dso_handle, i8** %dso_handle_addr
  call void @klee_warning_once(i8* getelementptr inbounds ([34 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !36
  %1 = load i32* @NumAtExit, align 4, !dbg !38
  %2 = icmp eq i32 %1, 128, !dbg !38
  br i1 %2, label %bb, label %bb1, !dbg !38

bb:                                               ; preds = %entry
  call void @klee_report_error(i8* getelementptr inbounds ([15 x i8]* @.str1, i64 0, i64 0), i32 39, i8* getelementptr inbounds ([32 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0)) noreturn nounwind, !dbg !39
  unreachable, !dbg !39

bb1:                                              ; preds = %entry
  %3 = load i32* @NumAtExit, align 4, !dbg !40
  %4 = zext i32 %3 to i64, !dbg !40
  %5 = getelementptr inbounds [128 x %struct.anon]* @AtExit, i64 0, i64 %4, !dbg !40
  %6 = getelementptr inbounds %struct.anon* %5, i32 0, i32 0, !dbg !40
  %7 = load void (i8*)** %fn_addr, align 8, !dbg !40
  store void (i8*)* %7, void (i8*)** %6, align 8, !dbg !40
  %8 = load i32* @NumAtExit, align 4, !dbg !41
  %9 = zext i32 %8 to i64, !dbg !41
  %10 = getelementptr inbounds [128 x %struct.anon]* @AtExit, i64 0, i64 %9, !dbg !41
  %11 = getelementptr inbounds %struct.anon* %10, i32 0, i32 1, !dbg !41
  %12 = load i8** %arg_addr, align 8, !dbg !41
  store i8* %12, i8** %11, align 8, !dbg !41
  %13 = load i32* @NumAtExit, align 4, !dbg !42
  %14 = add i32 %13, 1, !dbg !42
  store i32 %14, i32* @NumAtExit, align 4, !dbg !42
  store i32 0, i32* %0, align 4, !dbg !43
  %15 = load i32* %0, align 4, !dbg !43
  store i32 %15, i32* %retval, align 4, !dbg !43
  br label %return, !dbg !43

return:                                           ; preds = %bb1
  %retval2 = load i32* %retval, !dbg !43
  ret i32 %retval2, !dbg !43
}

declare void @klee_warning_once(i8*)

declare void @klee_report_error(i8*, i32, i8*, i8*) noreturn

!llvm.dbg.gv = !{!0, !4}
!llvm.dbg.sp = !{!17, !20}

!0 = metadata !{i32 589876, i32 0, metadata !1, metadata !"NumAtExit", metadata !"NumAtExit", metadata !"", metadata !1, i32 19, metadata !3, i1 true, i1 true, i32* @NumAtExit} ; [ DW_TAG_variable ]
!1 = metadata !{i32 589865, metadata !"__cxa_atexit.c", metadata !"/home/tyu/Documents/bugredx/klee2.9/runtime/klee-libc/", metadata !2} ; [ DW_TAG_file_type ]
!2 = metadata !{i32 589841, i32 0, i32 1, metadata !"__cxa_atexit.c", metadata !"/home/tyu/Documents/bugredx/klee2.9/runtime/klee-libc/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!3 = metadata !{i32 589860, metadata !1, metadata !"unsigned int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!4 = metadata !{i32 589876, i32 0, metadata !1, metadata !"AtExit", metadata !"AtExit", metadata !"", metadata !1, i32 18, metadata !5, i1 true, i1 true, [128 x %struct.anon]* @AtExit} ; [ DW_TAG_variable ]
!5 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 24576, i64 64, i64 0, i32 0, metadata !6, metadata !15, i32 0, null} ; [ DW_TAG_array_type ]
!6 = metadata !{i32 589843, metadata !1, metadata !"", metadata !1, i32 14, i64 192, i64 64, i64 0, i32 0, null, metadata !7, i32 0, null} ; [ DW_TAG_structure_type ]
!7 = metadata !{metadata !8, metadata !13, metadata !14}
!8 = metadata !{i32 589837, metadata !6, metadata !"fn", metadata !1, i32 15, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_member ]
!9 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null} ; [ DW_TAG_subroutine_type ]
!11 = metadata !{null, metadata !12}
!12 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!13 = metadata !{i32 589837, metadata !6, metadata !"arg", metadata !1, i32 16, i64 64, i64 64, i64 64, i32 0, metadata !12} ; [ DW_TAG_member ]
!14 = metadata !{i32 589837, metadata !6, metadata !"dso_handle", metadata !1, i32 17, i64 64, i64 64, i64 128, i32 0, metadata !12} ; [ DW_TAG_member ]
!15 = metadata !{metadata !16}
!16 = metadata !{i32 589857, i64 0, i64 127}      ; [ DW_TAG_subrange_type ]
!17 = metadata !{i32 589870, i32 0, metadata !1, metadata !"RunAtExit", metadata !"RunAtExit", metadata !"", metadata !1, i32 22, metadata !18, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @RunAtExit} ; [ DW_TAG_subprogram ]
!18 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, null} ; [ DW_TAG_subroutine_type ]
!19 = metadata !{null}
!20 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__cxa_atexit", metadata !"__cxa_atexit", metadata !"__cxa_atexit", metadata !1, i32 31, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (void (i8*)*, i8*, i8*)* @__cxa_atexit} ; [ DW_TAG_subprogram ]
!21 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !22, i32 0, null} ; [ DW_TAG_subroutine_type ]
!22 = metadata !{metadata !23, metadata !9, metadata !12, metadata !12}
!23 = metadata !{i32 589860, metadata !1, metadata !"int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!24 = metadata !{i32 590080, metadata !25, metadata !"i", metadata !1, i32 23, metadata !3, i32 0} ; [ DW_TAG_auto_variable ]
!25 = metadata !{i32 589835, metadata !17, i32 22, i32 0, metadata !1, i32 0} ; [ DW_TAG_lexical_block ]
!26 = metadata !{i32 23, i32 0, metadata !25, null}
!27 = metadata !{i32 25, i32 0, metadata !25, null}
!28 = metadata !{i32 26, i32 0, metadata !25, null}
!29 = metadata !{i32 27, i32 0, metadata !25, null}
!30 = metadata !{i32 590081, metadata !20, metadata !"fn", metadata !1, i32 29, metadata !9, i32 0} ; [ DW_TAG_arg_variable ]
!31 = metadata !{i32 29, i32 0, metadata !20, null}
!32 = metadata !{i32 590081, metadata !20, metadata !"arg", metadata !1, i32 30, metadata !12, i32 0} ; [ DW_TAG_arg_variable ]
!33 = metadata !{i32 30, i32 0, metadata !20, null}
!34 = metadata !{i32 590081, metadata !20, metadata !"dso_handle", metadata !1, i32 31, metadata !12, i32 0} ; [ DW_TAG_arg_variable ]
!35 = metadata !{i32 31, i32 0, metadata !20, null}
!36 = metadata !{i32 32, i32 0, metadata !37, null}
!37 = metadata !{i32 589835, metadata !20, i32 31, i32 0, metadata !1, i32 1} ; [ DW_TAG_lexical_block ]
!38 = metadata !{i32 37, i32 0, metadata !37, null}
!39 = metadata !{i32 38, i32 0, metadata !37, null}
!40 = metadata !{i32 43, i32 0, metadata !37, null}
!41 = metadata !{i32 44, i32 0, metadata !37, null}
!42 = metadata !{i32 45, i32 0, metadata !37, null}
!43 = metadata !{i32 47, i32 0, metadata !37, null}
