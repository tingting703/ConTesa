; ModuleID = 'memchr.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-f128:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

define i8* @memchr(i8* %s, i32 %c, i64 %n) nounwind readonly {
entry:
  %s_addr = alloca i8*, align 8
  %c_addr = alloca i32, align 4
  %n_addr = alloca i64, align 8
  %retval = alloca i8*
  %0 = alloca i8*
  %p = alloca i8*
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i8** %s_addr}, metadata !10), !dbg !11
  store i8* %s, i8** %s_addr
  call void @llvm.dbg.declare(metadata !{i32* %c_addr}, metadata !12), !dbg !13
  store i32 %c, i32* %c_addr
  call void @llvm.dbg.declare(metadata !{i64* %n_addr}, metadata !14), !dbg !15
  store i64 %n, i64* %n_addr
  call void @llvm.dbg.declare(metadata !{i8** %p}, metadata !16), !dbg !22
  %1 = load i64* %n_addr, align 8, !dbg !23
  %2 = icmp ne i64 %1, 0, !dbg !23
  br i1 %2, label %bb, label %bb4, !dbg !23

bb:                                               ; preds = %entry
  %3 = load i8** %s_addr, align 8, !dbg !22
  store i8* %3, i8** %p, align 8, !dbg !22
  br label %bb1, !dbg !22

bb1:                                              ; preds = %bb3, %bb
  %4 = load i8** %p, align 8, !dbg !24
  %5 = load i8* %4, align 1, !dbg !24
  %6 = zext i8 %5 to i32, !dbg !24
  %7 = load i32* %c_addr, align 4, !dbg !24
  %8 = icmp eq i32 %6, %7, !dbg !24
  %9 = zext i1 %8 to i8, !dbg !24
  %10 = load i8** %p, align 8, !dbg !24
  %11 = getelementptr inbounds i8* %10, i64 1, !dbg !24
  store i8* %11, i8** %p, align 8, !dbg !24
  %toBool = icmp ne i8 %9, 0, !dbg !24
  br i1 %toBool, label %bb2, label %bb3, !dbg !24

bb2:                                              ; preds = %bb1
  %12 = load i8** %p, align 8, !dbg !25
  %13 = getelementptr inbounds i8* %12, i64 -1, !dbg !25
  store i8* %13, i8** %0, align 8, !dbg !25
  br label %bb5, !dbg !25

bb3:                                              ; preds = %bb1
  %14 = load i64* %n_addr, align 8, !dbg !26
  %15 = sub i64 %14, 1, !dbg !26
  store i64 %15, i64* %n_addr, align 8, !dbg !26
  %16 = load i64* %n_addr, align 8, !dbg !26
  %17 = icmp ne i64 %16, 0, !dbg !26
  br i1 %17, label %bb1, label %bb4, !dbg !26

bb4:                                              ; preds = %bb3, %entry
  store i8* null, i8** %0, align 8, !dbg !27
  br label %bb5, !dbg !27

bb5:                                              ; preds = %bb4, %bb2
  %18 = load i8** %0, align 8, !dbg !25
  store i8* %18, i8** %retval, align 8, !dbg !25
  br label %return, !dbg !25

return:                                           ; preds = %bb5
  %retval6 = load i8** %retval, !dbg !25
  ret i8* %retval6, !dbg !25
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

!llvm.dbg.sp = !{!0}

!0 = metadata !{i32 589870, i32 0, metadata !1, metadata !"memchr", metadata !"memchr", metadata !"memchr", metadata !1, i32 44, metadata !3, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i32, i64)* @memchr} ; [ DW_TAG_subprogram ]
!1 = metadata !{i32 589865, metadata !"memchr.c", metadata !"/home/tyu/Documents/bugredx/klee2.9/runtime/klee-libc/", metadata !2} ; [ DW_TAG_file_type ]
!2 = metadata !{i32 589841, i32 0, i32 1, metadata !"memchr.c", metadata !"/home/tyu/Documents/bugredx/klee2.9/runtime/klee-libc/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!3 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !4, i32 0, null} ; [ DW_TAG_subroutine_type ]
!4 = metadata !{metadata !5, metadata !5, metadata !6, metadata !7}
!5 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!6 = metadata !{i32 589860, metadata !1, metadata !"int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!7 = metadata !{i32 589846, metadata !8, metadata !"size_t", metadata !8, i32 214, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_typedef ]
!8 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/home/tyu/Documents/bugredx/llvm-gcc4.2-2.9-x86_64-linux/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.2.1/include", metadata !2} ; [ DW_TAG_file_type ]
!9 = metadata !{i32 589860, metadata !1, metadata !"long unsigned int", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!10 = metadata !{i32 590081, metadata !0, metadata !"s", metadata !1, i32 41, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!11 = metadata !{i32 41, i32 0, metadata !0, null}
!12 = metadata !{i32 590081, metadata !0, metadata !"c", metadata !1, i32 42, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!13 = metadata !{i32 42, i32 0, metadata !0, null}
!14 = metadata !{i32 590081, metadata !0, metadata !"n", metadata !1, i32 43, metadata !7, i32 0} ; [ DW_TAG_arg_variable ]
!15 = metadata !{i32 43, i32 0, metadata !0, null}
!16 = metadata !{i32 590080, metadata !17, metadata !"p", metadata !1, i32 46, metadata !19, i32 0} ; [ DW_TAG_auto_variable ]
!17 = metadata !{i32 589835, metadata !18, i32 44, i32 0, metadata !1, i32 1} ; [ DW_TAG_lexical_block ]
!18 = metadata !{i32 589835, metadata !0, i32 44, i32 0, metadata !1, i32 0} ; [ DW_TAG_lexical_block ]
!19 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ]
!20 = metadata !{i32 589862, metadata !1, metadata !"", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !21} ; [ DW_TAG_const_type ]
!21 = metadata !{i32 589860, metadata !1, metadata !"unsigned char", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!22 = metadata !{i32 46, i32 0, metadata !17, null}
!23 = metadata !{i32 45, i32 0, metadata !18, null}
!24 = metadata !{i32 49, i32 0, metadata !17, null}
!25 = metadata !{i32 50, i32 0, metadata !17, null}
!26 = metadata !{i32 51, i32 0, metadata !17, null}
!27 = metadata !{i32 53, i32 0, metadata !18, null}
