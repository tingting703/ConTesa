; ModuleID = 'mempcpy.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-f128:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

define i8* @mempcpy(i8* %destaddr, i8* %srcaddr, i64 %len) nounwind {
entry:
  %destaddr_addr = alloca i8*, align 8
  %srcaddr_addr = alloca i8*, align 8
  %len_addr = alloca i64, align 8
  %retval = alloca i8*
  %0 = alloca i8*
  %dest = alloca i8*
  %src = alloca i8*
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i8** %destaddr_addr}, metadata !9), !dbg !10
  store i8* %destaddr, i8** %destaddr_addr
  call void @llvm.dbg.declare(metadata !{i8** %srcaddr_addr}, metadata !11), !dbg !10
  store i8* %srcaddr, i8** %srcaddr_addr
  call void @llvm.dbg.declare(metadata !{i64* %len_addr}, metadata !12), !dbg !10
  store i64 %len, i64* %len_addr
  call void @llvm.dbg.declare(metadata !{i8** %dest}, metadata !13), !dbg !17
  call void @llvm.dbg.declare(metadata !{i8** %src}, metadata !18), !dbg !21
  %1 = load i8** %destaddr_addr, align 8, !dbg !17
  store i8* %1, i8** %dest, align 8, !dbg !17
  %2 = load i8** %srcaddr_addr, align 8, !dbg !21
  store i8* %2, i8** %src, align 8, !dbg !21
  br label %bb1, !dbg !21

bb:                                               ; preds = %bb1
  %3 = load i8** %src, align 8, !dbg !22
  %4 = load i8* %3, align 1, !dbg !22
  %5 = load i8** %dest, align 8, !dbg !22
  store i8 %4, i8* %5, align 1, !dbg !22
  %6 = load i8** %dest, align 8, !dbg !22
  %7 = getelementptr inbounds i8* %6, i64 1, !dbg !22
  store i8* %7, i8** %dest, align 8, !dbg !22
  %8 = load i8** %src, align 8, !dbg !22
  %9 = getelementptr inbounds i8* %8, i64 1, !dbg !22
  store i8* %9, i8** %src, align 8, !dbg !22
  br label %bb1, !dbg !22

bb1:                                              ; preds = %bb, %entry
  %10 = load i64* %len_addr, align 8, !dbg !23
  %11 = sub i64 %10, 1, !dbg !23
  store i64 %11, i64* %len_addr, align 8, !dbg !23
  %12 = load i64* %len_addr, align 8, !dbg !23
  %13 = icmp ne i64 %12, -1, !dbg !23
  br i1 %13, label %bb, label %bb2, !dbg !23

bb2:                                              ; preds = %bb1
  %14 = load i8** %dest, align 8, !dbg !24
  store i8* %14, i8** %0, align 8, !dbg !24
  %15 = load i8** %0, align 8, !dbg !24
  store i8* %15, i8** %retval, align 8, !dbg !24
  br label %return, !dbg !24

return:                                           ; preds = %bb2
  %retval3 = load i8** %retval, !dbg !24
  ret i8* %retval3, !dbg !24
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

!llvm.dbg.sp = !{!0}

!0 = metadata !{i32 589870, i32 0, metadata !1, metadata !"mempcpy", metadata !"mempcpy", metadata !"mempcpy", metadata !1, i32 12, metadata !3, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i8*, i64)* @mempcpy} ; [ DW_TAG_subprogram ]
!1 = metadata !{i32 589865, metadata !"mempcpy.c", metadata !"/home/tyu/Documents/bugredx/klee2.9/runtime/klee-libc/", metadata !2} ; [ DW_TAG_file_type ]
!2 = metadata !{i32 589841, i32 0, i32 1, metadata !"mempcpy.c", metadata !"/home/tyu/Documents/bugredx/klee2.9/runtime/klee-libc/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!3 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !4, i32 0, null} ; [ DW_TAG_subroutine_type ]
!4 = metadata !{metadata !5, metadata !5, metadata !5, metadata !6}
!5 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!6 = metadata !{i32 589846, metadata !7, metadata !"size_t", metadata !7, i32 214, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_typedef ]
!7 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/home/tyu/Documents/bugredx/llvm-gcc4.2-2.9-x86_64-linux/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.2.1/include", metadata !2} ; [ DW_TAG_file_type ]
!8 = metadata !{i32 589860, metadata !1, metadata !"long unsigned int", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!9 = metadata !{i32 590081, metadata !0, metadata !"destaddr", metadata !1, i32 12, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!10 = metadata !{i32 12, i32 0, metadata !0, null}
!11 = metadata !{i32 590081, metadata !0, metadata !"srcaddr", metadata !1, i32 12, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!12 = metadata !{i32 590081, metadata !0, metadata !"len", metadata !1, i32 12, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!13 = metadata !{i32 590080, metadata !14, metadata !"dest", metadata !1, i32 13, metadata !15, i32 0} ; [ DW_TAG_auto_variable ]
!14 = metadata !{i32 589835, metadata !0, i32 12, i32 0, metadata !1, i32 0} ; [ DW_TAG_lexical_block ]
!15 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ]
!16 = metadata !{i32 589860, metadata !1, metadata !"char", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!17 = metadata !{i32 13, i32 0, metadata !14, null}
!18 = metadata !{i32 590080, metadata !14, metadata !"src", metadata !1, i32 14, metadata !19, i32 0} ; [ DW_TAG_auto_variable ]
!19 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ]
!20 = metadata !{i32 589862, metadata !1, metadata !"", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !16} ; [ DW_TAG_const_type ]
!21 = metadata !{i32 14, i32 0, metadata !14, null}
!22 = metadata !{i32 17, i32 0, metadata !14, null}
!23 = metadata !{i32 16, i32 0, metadata !14, null}
!24 = metadata !{i32 18, i32 0, metadata !14, null}
