; ModuleID = 'memmove.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-f128:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

define i8* @memmove(i8* %dst, i8* %src, i64 %count) nounwind {
entry:
  %dst_addr = alloca i8*, align 8
  %src_addr = alloca i8*, align 8
  %count_addr = alloca i64, align 8
  %retval = alloca i8*
  %0 = alloca i8*
  %a = alloca i8*
  %b = alloca i8*
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i8** %dst_addr}, metadata !9), !dbg !10
  store i8* %dst, i8** %dst_addr
  call void @llvm.dbg.declare(metadata !{i8** %src_addr}, metadata !11), !dbg !10
  store i8* %src, i8** %src_addr
  call void @llvm.dbg.declare(metadata !{i64* %count_addr}, metadata !12), !dbg !10
  store i64 %count, i64* %count_addr
  call void @llvm.dbg.declare(metadata !{i8** %a}, metadata !13), !dbg !17
  call void @llvm.dbg.declare(metadata !{i8** %b}, metadata !18), !dbg !21
  %1 = load i8** %dst_addr, align 8, !dbg !17
  store i8* %1, i8** %a, align 8, !dbg !17
  %2 = load i8** %src_addr, align 8, !dbg !21
  store i8* %2, i8** %b, align 8, !dbg !21
  %3 = load i8** %src_addr, align 8, !dbg !22
  %4 = load i8** %dst_addr, align 8, !dbg !22
  %5 = icmp eq i8* %3, %4, !dbg !22
  br i1 %5, label %bb, label %bb1, !dbg !22

bb:                                               ; preds = %entry
  %6 = load i8** %dst_addr, align 8, !dbg !23
  store i8* %6, i8** %0, align 8, !dbg !23
  br label %bb10, !dbg !23

bb1:                                              ; preds = %entry
  %7 = load i8** %src_addr, align 8, !dbg !24
  %8 = load i8** %dst_addr, align 8, !dbg !24
  %9 = icmp ugt i8* %7, %8, !dbg !24
  br i1 %9, label %bb2, label %bb6, !dbg !24

bb2:                                              ; preds = %bb1
  br label %bb4, !dbg !24

bb3:                                              ; preds = %bb4
  %10 = load i8** %b, align 8, !dbg !25
  %11 = load i8* %10, align 1, !dbg !25
  %12 = load i8** %a, align 8, !dbg !25
  store i8 %11, i8* %12, align 1, !dbg !25
  %13 = load i8** %a, align 8, !dbg !25
  %14 = getelementptr inbounds i8* %13, i64 1, !dbg !25
  store i8* %14, i8** %a, align 8, !dbg !25
  %15 = load i8** %b, align 8, !dbg !25
  %16 = getelementptr inbounds i8* %15, i64 1, !dbg !25
  store i8* %16, i8** %b, align 8, !dbg !25
  br label %bb4, !dbg !25

bb4:                                              ; preds = %bb3, %bb2
  %17 = load i64* %count_addr, align 8, !dbg !25
  %18 = sub i64 %17, 1, !dbg !25
  store i64 %18, i64* %count_addr, align 8, !dbg !25
  %19 = load i64* %count_addr, align 8, !dbg !25
  %20 = icmp ne i64 %19, -1, !dbg !25
  br i1 %20, label %bb3, label %bb5, !dbg !25

bb5:                                              ; preds = %bb4
  br label %bb9, !dbg !25

bb6:                                              ; preds = %bb1
  %21 = load i64* %count_addr, align 8, !dbg !26
  %22 = sub i64 %21, 1, !dbg !26
  %23 = load i8** %a, align 8, !dbg !26
  %24 = getelementptr inbounds i8* %23, i64 %22, !dbg !26
  store i8* %24, i8** %a, align 8, !dbg !26
  %25 = load i64* %count_addr, align 8, !dbg !27
  %26 = sub i64 %25, 1, !dbg !27
  %27 = load i8** %b, align 8, !dbg !27
  %28 = getelementptr inbounds i8* %27, i64 %26, !dbg !27
  store i8* %28, i8** %b, align 8, !dbg !27
  br label %bb8, !dbg !27

bb7:                                              ; preds = %bb8
  %29 = load i8** %b, align 8, !dbg !28
  %30 = load i8* %29, align 1, !dbg !28
  %31 = load i8** %a, align 8, !dbg !28
  store i8 %30, i8* %31, align 1, !dbg !28
  %32 = load i8** %a, align 8, !dbg !28
  %33 = getelementptr inbounds i8* %32, i64 -1, !dbg !28
  store i8* %33, i8** %a, align 8, !dbg !28
  %34 = load i8** %b, align 8, !dbg !28
  %35 = getelementptr inbounds i8* %34, i64 -1, !dbg !28
  store i8* %35, i8** %b, align 8, !dbg !28
  br label %bb8, !dbg !28

bb8:                                              ; preds = %bb7, %bb6
  %36 = load i64* %count_addr, align 8, !dbg !28
  %37 = sub i64 %36, 1, !dbg !28
  store i64 %37, i64* %count_addr, align 8, !dbg !28
  %38 = load i64* %count_addr, align 8, !dbg !28
  %39 = icmp ne i64 %38, -1, !dbg !28
  br i1 %39, label %bb7, label %bb9, !dbg !28

bb9:                                              ; preds = %bb8, %bb5
  %40 = load i8** %dst_addr, align 8, !dbg !29
  store i8* %40, i8** %0, align 8, !dbg !29
  br label %bb10, !dbg !29

bb10:                                             ; preds = %bb9, %bb
  %41 = load i8** %0, align 8, !dbg !23
  store i8* %41, i8** %retval, align 8, !dbg !23
  br label %return, !dbg !23

return:                                           ; preds = %bb10
  %retval11 = load i8** %retval, !dbg !23
  ret i8* %retval11, !dbg !23
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

!llvm.dbg.sp = !{!0}

!0 = metadata !{i32 589870, i32 0, metadata !1, metadata !"memmove", metadata !"memmove", metadata !"memmove", metadata !1, i32 12, metadata !3, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i8*, i64)* @memmove} ; [ DW_TAG_subprogram ]
!1 = metadata !{i32 589865, metadata !"memmove.c", metadata !"/home/tyu/Documents/bugredx/klee2.9/runtime/Intrinsic/", metadata !2} ; [ DW_TAG_file_type ]
!2 = metadata !{i32 589841, i32 0, i32 1, metadata !"memmove.c", metadata !"/home/tyu/Documents/bugredx/klee2.9/runtime/Intrinsic/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!3 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !4, i32 0, null} ; [ DW_TAG_subroutine_type ]
!4 = metadata !{metadata !5, metadata !5, metadata !5, metadata !6}
!5 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!6 = metadata !{i32 589846, metadata !7, metadata !"size_t", metadata !7, i32 214, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_typedef ]
!7 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/home/tyu/Documents/bugredx/llvm-gcc4.2-2.9-x86_64-linux/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.2.1/include", metadata !2} ; [ DW_TAG_file_type ]
!8 = metadata !{i32 589860, metadata !1, metadata !"long unsigned int", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!9 = metadata !{i32 590081, metadata !0, metadata !"dst", metadata !1, i32 12, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!10 = metadata !{i32 12, i32 0, metadata !0, null}
!11 = metadata !{i32 590081, metadata !0, metadata !"src", metadata !1, i32 12, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!12 = metadata !{i32 590081, metadata !0, metadata !"count", metadata !1, i32 12, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!13 = metadata !{i32 590080, metadata !14, metadata !"a", metadata !1, i32 13, metadata !15, i32 0} ; [ DW_TAG_auto_variable ]
!14 = metadata !{i32 589835, metadata !0, i32 12, i32 0, metadata !1, i32 0} ; [ DW_TAG_lexical_block ]
!15 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ]
!16 = metadata !{i32 589860, metadata !1, metadata !"char", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!17 = metadata !{i32 13, i32 0, metadata !14, null}
!18 = metadata !{i32 590080, metadata !14, metadata !"b", metadata !1, i32 14, metadata !19, i32 0} ; [ DW_TAG_auto_variable ]
!19 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ]
!20 = metadata !{i32 589862, metadata !1, metadata !"", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !16} ; [ DW_TAG_const_type ]
!21 = metadata !{i32 14, i32 0, metadata !14, null}
!22 = metadata !{i32 16, i32 0, metadata !14, null}
!23 = metadata !{i32 17, i32 0, metadata !14, null}
!24 = metadata !{i32 19, i32 0, metadata !14, null}
!25 = metadata !{i32 20, i32 0, metadata !14, null}
!26 = metadata !{i32 22, i32 0, metadata !14, null}
!27 = metadata !{i32 23, i32 0, metadata !14, null}
!28 = metadata !{i32 24, i32 0, metadata !14, null}
!29 = metadata !{i32 27, i32 0, metadata !14, null}
