; ModuleID = 'strncpy.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-f128:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

define i8* @strncpy(i8* %dst, i8* %src, i64 %n) nounwind {
entry:
  %dst_addr = alloca i8*, align 8
  %src_addr = alloca i8*, align 8
  %n_addr = alloca i64, align 8
  %retval = alloca i8*
  %0 = alloca i8*
  %d = alloca i8*
  %s = alloca i8*
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i8** %dst_addr}, metadata !12), !dbg !13
  store i8* %dst, i8** %dst_addr
  call void @llvm.dbg.declare(metadata !{i8** %src_addr}, metadata !14), !dbg !13
  store i8* %src, i8** %src_addr
  call void @llvm.dbg.declare(metadata !{i64* %n_addr}, metadata !15), !dbg !13
  store i64 %n, i64* %n_addr
  call void @llvm.dbg.declare(metadata !{i8** %d}, metadata !16), !dbg !19
  call void @llvm.dbg.declare(metadata !{i8** %s}, metadata !20), !dbg !21
  %1 = load i64* %n_addr, align 8, !dbg !22
  %2 = icmp ne i64 %1, 0, !dbg !22
  br i1 %2, label %bb, label %bb7, !dbg !22

bb:                                               ; preds = %entry
  %3 = load i8** %dst_addr, align 8, !dbg !19
  store i8* %3, i8** %d, align 8, !dbg !19
  %4 = load i8** %src_addr, align 8, !dbg !21
  store i8* %4, i8** %s, align 8, !dbg !21
  br label %bb1, !dbg !21

bb1:                                              ; preds = %bb6, %bb
  %5 = load i8** %s, align 8, !dbg !23
  %6 = load i8* %5, align 1, !dbg !23
  %7 = load i8** %d, align 8, !dbg !23
  store i8 %6, i8* %7, align 1, !dbg !23
  %8 = load i8** %d, align 8, !dbg !23
  %9 = load i8* %8, align 1, !dbg !23
  %10 = icmp eq i8 %9, 0, !dbg !23
  %11 = zext i1 %10 to i8, !dbg !23
  %12 = load i8** %d, align 8, !dbg !23
  %13 = getelementptr inbounds i8* %12, i64 1, !dbg !23
  store i8* %13, i8** %d, align 8, !dbg !23
  %14 = load i8** %s, align 8, !dbg !23
  %15 = getelementptr inbounds i8* %14, i64 1, !dbg !23
  store i8* %15, i8** %s, align 8, !dbg !23
  %toBool = icmp ne i8 %11, 0, !dbg !23
  br i1 %toBool, label %bb2, label %bb6, !dbg !23

bb2:                                              ; preds = %bb1
  br label %bb4, !dbg !23

bb3:                                              ; preds = %bb4
  %16 = load i8** %d, align 8, !dbg !24
  store i8 0, i8* %16, align 1, !dbg !24
  %17 = load i8** %d, align 8, !dbg !24
  %18 = getelementptr inbounds i8* %17, i64 1, !dbg !24
  store i8* %18, i8** %d, align 8, !dbg !24
  br label %bb4, !dbg !24

bb4:                                              ; preds = %bb3, %bb2
  %19 = load i64* %n_addr, align 8, !dbg !25
  %20 = sub i64 %19, 1, !dbg !25
  store i64 %20, i64* %n_addr, align 8, !dbg !25
  %21 = load i64* %n_addr, align 8, !dbg !25
  %22 = icmp ne i64 %21, 0, !dbg !25
  br i1 %22, label %bb3, label %bb5, !dbg !25

bb5:                                              ; preds = %bb4
  br label %bb7, !dbg !25

bb6:                                              ; preds = %bb1
  %23 = load i64* %n_addr, align 8, !dbg !26
  %24 = sub i64 %23, 1, !dbg !26
  store i64 %24, i64* %n_addr, align 8, !dbg !26
  %25 = load i64* %n_addr, align 8, !dbg !26
  %26 = icmp ne i64 %25, 0, !dbg !26
  br i1 %26, label %bb1, label %bb7, !dbg !26

bb7:                                              ; preds = %bb6, %bb5, %entry
  %27 = load i8** %dst_addr, align 8, !dbg !27
  store i8* %27, i8** %0, align 8, !dbg !27
  %28 = load i8** %0, align 8, !dbg !27
  store i8* %28, i8** %retval, align 8, !dbg !27
  br label %return, !dbg !27

return:                                           ; preds = %bb7
  %retval8 = load i8** %retval, !dbg !27
  ret i8* %retval8, !dbg !27
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

!llvm.dbg.sp = !{!0}

!0 = metadata !{i32 589870, i32 0, metadata !1, metadata !"strncpy", metadata !"strncpy", metadata !"strncpy", metadata !1, i32 43, metadata !3, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i8*, i64)* @strncpy} ; [ DW_TAG_subprogram ]
!1 = metadata !{i32 589865, metadata !"strncpy.c", metadata !"/home/tyu/Documents/bugredx/klee2.9/runtime/klee-libc/", metadata !2} ; [ DW_TAG_file_type ]
!2 = metadata !{i32 589841, i32 0, i32 1, metadata !"strncpy.c", metadata !"/home/tyu/Documents/bugredx/klee2.9/runtime/klee-libc/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!3 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !4, i32 0, null} ; [ DW_TAG_subroutine_type ]
!4 = metadata !{metadata !5, metadata !5, metadata !7, metadata !9}
!5 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !6} ; [ DW_TAG_pointer_type ]
!6 = metadata !{i32 589860, metadata !1, metadata !"char", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!7 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ]
!8 = metadata !{i32 589862, metadata !1, metadata !"", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !6} ; [ DW_TAG_const_type ]
!9 = metadata !{i32 589846, metadata !10, metadata !"size_t", metadata !10, i32 214, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!10 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/home/tyu/Documents/bugredx/llvm-gcc4.2-2.9-x86_64-linux/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.2.1/include", metadata !2} ; [ DW_TAG_file_type ]
!11 = metadata !{i32 589860, metadata !1, metadata !"long unsigned int", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!12 = metadata !{i32 590081, metadata !0, metadata !"dst", metadata !1, i32 42, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!13 = metadata !{i32 42, i32 0, metadata !0, null}
!14 = metadata !{i32 590081, metadata !0, metadata !"src", metadata !1, i32 42, metadata !7, i32 0} ; [ DW_TAG_arg_variable ]
!15 = metadata !{i32 590081, metadata !0, metadata !"n", metadata !1, i32 42, metadata !9, i32 0} ; [ DW_TAG_arg_variable ]
!16 = metadata !{i32 590080, metadata !17, metadata !"d", metadata !1, i32 45, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!17 = metadata !{i32 589835, metadata !18, i32 43, i32 0, metadata !1, i32 1} ; [ DW_TAG_lexical_block ]
!18 = metadata !{i32 589835, metadata !0, i32 43, i32 0, metadata !1, i32 0} ; [ DW_TAG_lexical_block ]
!19 = metadata !{i32 45, i32 0, metadata !17, null}
!20 = metadata !{i32 590080, metadata !17, metadata !"s", metadata !1, i32 46, metadata !7, i32 0} ; [ DW_TAG_auto_variable ]
!21 = metadata !{i32 46, i32 0, metadata !17, null}
!22 = metadata !{i32 44, i32 0, metadata !18, null}
!23 = metadata !{i32 49, i32 0, metadata !17, null}
!24 = metadata !{i32 52, i32 0, metadata !17, null}
!25 = metadata !{i32 51, i32 0, metadata !17, null}
!26 = metadata !{i32 55, i32 0, metadata !17, null}
!27 = metadata !{i32 57, i32 0, metadata !18, null}
