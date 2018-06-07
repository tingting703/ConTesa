; ModuleID = 'memcmp.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-f128:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

define i32 @memcmp(i8* %s1, i8* %s2, i64 %n) nounwind readonly {
entry:
  %s1_addr = alloca i8*, align 8
  %s2_addr = alloca i8*, align 8
  %n_addr = alloca i64, align 8
  %retval = alloca i32
  %0 = alloca i32
  %p1 = alloca i8*
  %p2 = alloca i8*
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i8** %s1_addr}, metadata !10), !dbg !11
  store i8* %s1, i8** %s1_addr
  call void @llvm.dbg.declare(metadata !{i8** %s2_addr}, metadata !12), !dbg !11
  store i8* %s2, i8** %s2_addr
  call void @llvm.dbg.declare(metadata !{i64* %n_addr}, metadata !13), !dbg !11
  store i64 %n, i64* %n_addr
  call void @llvm.dbg.declare(metadata !{i8** %p1}, metadata !14), !dbg !20
  call void @llvm.dbg.declare(metadata !{i8** %p2}, metadata !21), !dbg !20
  %1 = load i64* %n_addr, align 8, !dbg !22
  %2 = icmp ne i64 %1, 0, !dbg !22
  br i1 %2, label %bb, label %bb4, !dbg !22

bb:                                               ; preds = %entry
  %3 = load i8** %s1_addr, align 8, !dbg !20
  store i8* %3, i8** %p1, align 8, !dbg !20
  %4 = load i8** %s2_addr, align 8, !dbg !20
  store i8* %4, i8** %p2, align 8, !dbg !20
  br label %bb1, !dbg !20

bb1:                                              ; preds = %bb3, %bb
  %5 = load i8** %p1, align 8, !dbg !23
  %6 = load i8* %5, align 1, !dbg !23
  %7 = load i8** %p2, align 8, !dbg !23
  %8 = load i8* %7, align 1, !dbg !23
  %9 = icmp ne i8 %6, %8, !dbg !23
  %10 = zext i1 %9 to i8, !dbg !23
  %11 = load i8** %p1, align 8, !dbg !23
  %12 = getelementptr inbounds i8* %11, i64 1, !dbg !23
  store i8* %12, i8** %p1, align 8, !dbg !23
  %13 = load i8** %p2, align 8, !dbg !23
  %14 = getelementptr inbounds i8* %13, i64 1, !dbg !23
  store i8* %14, i8** %p2, align 8, !dbg !23
  %toBool = icmp ne i8 %10, 0, !dbg !23
  br i1 %toBool, label %bb2, label %bb3, !dbg !23

bb2:                                              ; preds = %bb1
  %15 = load i8** %p1, align 8, !dbg !24
  %16 = getelementptr inbounds i8* %15, i64 -1, !dbg !24
  store i8* %16, i8** %p1, align 8, !dbg !24
  %17 = load i8** %p1, align 8, !dbg !24
  %18 = load i8* %17, align 1, !dbg !24
  %19 = zext i8 %18 to i32, !dbg !24
  %20 = load i8** %p2, align 8, !dbg !24
  %21 = getelementptr inbounds i8* %20, i64 -1, !dbg !24
  store i8* %21, i8** %p2, align 8, !dbg !24
  %22 = load i8** %p2, align 8, !dbg !24
  %23 = load i8* %22, align 1, !dbg !24
  %24 = zext i8 %23 to i32, !dbg !24
  %25 = sub nsw i32 %19, %24, !dbg !24
  store i32 %25, i32* %0, align 4, !dbg !24
  br label %bb5, !dbg !24

bb3:                                              ; preds = %bb1
  %26 = load i64* %n_addr, align 8, !dbg !25
  %27 = sub i64 %26, 1, !dbg !25
  store i64 %27, i64* %n_addr, align 8, !dbg !25
  %28 = load i64* %n_addr, align 8, !dbg !25
  %29 = icmp ne i64 %28, 0, !dbg !25
  br i1 %29, label %bb1, label %bb4, !dbg !25

bb4:                                              ; preds = %bb3, %entry
  store i32 0, i32* %0, align 4, !dbg !26
  br label %bb5, !dbg !26

bb5:                                              ; preds = %bb4, %bb2
  %30 = load i32* %0, align 4, !dbg !24
  store i32 %30, i32* %retval, align 4, !dbg !24
  br label %return, !dbg !24

return:                                           ; preds = %bb5
  %retval6 = load i32* %retval, !dbg !24
  ret i32 %retval6, !dbg !24
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

!llvm.dbg.sp = !{!0}

!0 = metadata !{i32 589870, i32 0, metadata !1, metadata !"memcmp", metadata !"memcmp", metadata !"memcmp", metadata !1, i32 42, metadata !3, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, i8*, i64)* @memcmp} ; [ DW_TAG_subprogram ]
!1 = metadata !{i32 589865, metadata !"memcmp.c", metadata !"/home/tyu/Documents/bugredx/klee2.9/runtime/klee-libc/", metadata !2} ; [ DW_TAG_file_type ]
!2 = metadata !{i32 589841, i32 0, i32 1, metadata !"memcmp.c", metadata !"/home/tyu/Documents/bugredx/klee2.9/runtime/klee-libc/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!3 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !4, i32 0, null} ; [ DW_TAG_subroutine_type ]
!4 = metadata !{metadata !5, metadata !6, metadata !6, metadata !7}
!5 = metadata !{i32 589860, metadata !1, metadata !"int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!6 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!7 = metadata !{i32 589846, metadata !8, metadata !"size_t", metadata !8, i32 214, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_typedef ]
!8 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/home/tyu/Documents/bugredx/llvm-gcc4.2-2.9-x86_64-linux/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.2.1/include", metadata !2} ; [ DW_TAG_file_type ]
!9 = metadata !{i32 589860, metadata !1, metadata !"long unsigned int", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!10 = metadata !{i32 590081, metadata !0, metadata !"s1", metadata !1, i32 42, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!11 = metadata !{i32 42, i32 0, metadata !0, null}
!12 = metadata !{i32 590081, metadata !0, metadata !"s2", metadata !1, i32 42, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!13 = metadata !{i32 590081, metadata !0, metadata !"n", metadata !1, i32 42, metadata !7, i32 0} ; [ DW_TAG_arg_variable ]
!14 = metadata !{i32 590080, metadata !15, metadata !"p1", metadata !1, i32 44, metadata !17, i32 0} ; [ DW_TAG_auto_variable ]
!15 = metadata !{i32 589835, metadata !16, i32 42, i32 0, metadata !1, i32 1} ; [ DW_TAG_lexical_block ]
!16 = metadata !{i32 589835, metadata !0, i32 42, i32 0, metadata !1, i32 0} ; [ DW_TAG_lexical_block ]
!17 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ]
!18 = metadata !{i32 589862, metadata !1, metadata !"", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !19} ; [ DW_TAG_const_type ]
!19 = metadata !{i32 589860, metadata !1, metadata !"unsigned char", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!20 = metadata !{i32 44, i32 0, metadata !15, null}
!21 = metadata !{i32 590080, metadata !15, metadata !"p2", metadata !1, i32 44, metadata !17, i32 0} ; [ DW_TAG_auto_variable ]
!22 = metadata !{i32 43, i32 0, metadata !16, null}
!23 = metadata !{i32 47, i32 0, metadata !15, null}
!24 = metadata !{i32 48, i32 0, metadata !15, null}
!25 = metadata !{i32 50, i32 0, metadata !15, null}
!26 = metadata !{i32 52, i32 0, metadata !16, null}
