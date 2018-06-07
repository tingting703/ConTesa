; ModuleID = 'strncmp.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-f128:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

define i32 @strncmp(i8* %s1, i8* %s2, i64 %n) nounwind readonly {
entry:
  %s1_addr = alloca i8*, align 8
  %s2_addr = alloca i8*, align 8
  %n_addr = alloca i64, align 8
  %retval = alloca i32
  %0 = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i8** %s1_addr}, metadata !12), !dbg !13
  store i8* %s1, i8** %s1_addr
  call void @llvm.dbg.declare(metadata !{i8** %s2_addr}, metadata !14), !dbg !13
  store i8* %s2, i8** %s2_addr
  call void @llvm.dbg.declare(metadata !{i64* %n_addr}, metadata !15), !dbg !13
  store i64 %n, i64* %n_addr
  %1 = load i64* %n_addr, align 8, !dbg !16
  %2 = icmp eq i64 %1, 0, !dbg !16
  br i1 %2, label %bb, label %bb1, !dbg !16

bb:                                               ; preds = %entry
  store i32 0, i32* %0, align 4, !dbg !18
  br label %bb7, !dbg !18

bb1:                                              ; preds = %bb5, %entry
  %3 = load i8** %s1_addr, align 8, !dbg !19
  %4 = load i8* %3, align 1, !dbg !19
  %5 = load i8** %s2_addr, align 8, !dbg !19
  %6 = load i8* %5, align 1, !dbg !19
  %7 = icmp ne i8 %4, %6, !dbg !19
  %8 = zext i1 %7 to i8, !dbg !19
  %9 = load i8** %s2_addr, align 8, !dbg !19
  %10 = getelementptr inbounds i8* %9, i64 1, !dbg !19
  store i8* %10, i8** %s2_addr, align 8, !dbg !19
  %toBool = icmp ne i8 %8, 0, !dbg !19
  br i1 %toBool, label %bb2, label %bb3, !dbg !19

bb2:                                              ; preds = %bb1
  %11 = load i8** %s1_addr, align 8, !dbg !20
  %12 = load i8* %11, align 1, !dbg !20
  %13 = zext i8 %12 to i32, !dbg !20
  %14 = load i8** %s2_addr, align 8, !dbg !20
  %15 = getelementptr inbounds i8* %14, i64 -1, !dbg !20
  %16 = load i8* %15, align 1, !dbg !20
  %17 = zext i8 %16 to i32, !dbg !20
  %18 = sub nsw i32 %13, %17, !dbg !20
  store i32 %18, i32* %0, align 4, !dbg !20
  br label %bb7, !dbg !20

bb3:                                              ; preds = %bb1
  %19 = load i8** %s1_addr, align 8, !dbg !21
  %20 = load i8* %19, align 1, !dbg !21
  %21 = icmp eq i8 %20, 0, !dbg !21
  %22 = zext i1 %21 to i8, !dbg !21
  %23 = load i8** %s1_addr, align 8, !dbg !21
  %24 = getelementptr inbounds i8* %23, i64 1, !dbg !21
  store i8* %24, i8** %s1_addr, align 8, !dbg !21
  %toBool4 = icmp ne i8 %22, 0, !dbg !21
  br i1 %toBool4, label %bb6, label %bb5, !dbg !21

bb5:                                              ; preds = %bb3
  %25 = load i64* %n_addr, align 8, !dbg !22
  %26 = sub i64 %25, 1, !dbg !22
  store i64 %26, i64* %n_addr, align 8, !dbg !22
  %27 = load i64* %n_addr, align 8, !dbg !22
  %28 = icmp ne i64 %27, 0, !dbg !22
  br i1 %28, label %bb1, label %bb6, !dbg !22

bb6:                                              ; preds = %bb5, %bb3
  store i32 0, i32* %0, align 4, !dbg !23
  br label %bb7, !dbg !23

bb7:                                              ; preds = %bb6, %bb2, %bb
  %29 = load i32* %0, align 4, !dbg !18
  store i32 %29, i32* %retval, align 4, !dbg !18
  br label %return, !dbg !18

return:                                           ; preds = %bb7
  %retval8 = load i32* %retval, !dbg !18
  ret i32 %retval8, !dbg !18
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

!llvm.dbg.sp = !{!0}

!0 = metadata !{i32 589870, i32 0, metadata !1, metadata !"strncmp", metadata !"strncmp", metadata !"strncmp", metadata !1, i32 37, metadata !3, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, i8*, i64)* @strncmp} ; [ DW_TAG_subprogram ]
!1 = metadata !{i32 589865, metadata !"strncmp.c", metadata !"/home/tyu/Documents/bugredx/klee2.9/runtime/klee-libc/", metadata !2} ; [ DW_TAG_file_type ]
!2 = metadata !{i32 589841, i32 0, i32 1, metadata !"strncmp.c", metadata !"/home/tyu/Documents/bugredx/klee2.9/runtime/klee-libc/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!3 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !4, i32 0, null} ; [ DW_TAG_subroutine_type ]
!4 = metadata !{metadata !5, metadata !6, metadata !6, metadata !9}
!5 = metadata !{i32 589860, metadata !1, metadata !"int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!6 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !7} ; [ DW_TAG_pointer_type ]
!7 = metadata !{i32 589862, metadata !1, metadata !"", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !8} ; [ DW_TAG_const_type ]
!8 = metadata !{i32 589860, metadata !1, metadata !"char", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!9 = metadata !{i32 589846, metadata !10, metadata !"size_t", metadata !10, i32 214, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!10 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/home/tyu/Documents/bugredx/llvm-gcc4.2-2.9-x86_64-linux/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.2.1/include", metadata !2} ; [ DW_TAG_file_type ]
!11 = metadata !{i32 589860, metadata !1, metadata !"long unsigned int", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!12 = metadata !{i32 590081, metadata !0, metadata !"s1", metadata !1, i32 36, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!13 = metadata !{i32 36, i32 0, metadata !0, null}
!14 = metadata !{i32 590081, metadata !0, metadata !"s2", metadata !1, i32 36, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!15 = metadata !{i32 590081, metadata !0, metadata !"n", metadata !1, i32 36, metadata !9, i32 0} ; [ DW_TAG_arg_variable ]
!16 = metadata !{i32 39, i32 0, metadata !17, null}
!17 = metadata !{i32 589835, metadata !0, i32 37, i32 0, metadata !1, i32 0} ; [ DW_TAG_lexical_block ]
!18 = metadata !{i32 40, i32 0, metadata !17, null}
!19 = metadata !{i32 42, i32 0, metadata !17, null}
!20 = metadata !{i32 43, i32 0, metadata !17, null}
!21 = metadata !{i32 45, i32 0, metadata !17, null}
!22 = metadata !{i32 47, i32 0, metadata !17, null}
!23 = metadata !{i32 48, i32 0, metadata !17, null}
