; ModuleID = 'strcpy.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-f128:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

define i8* @strcpy(i8* %to, i8* %from) nounwind {
entry:
  %to_addr = alloca i8*, align 8
  %from_addr = alloca i8*, align 8
  %retval = alloca i8*
  %0 = alloca i8*
  %start = alloca i8*
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i8** %to_addr}, metadata !9), !dbg !10
  store i8* %to, i8** %to_addr
  call void @llvm.dbg.declare(metadata !{i8** %from_addr}, metadata !11), !dbg !10
  store i8* %from, i8** %from_addr
  call void @llvm.dbg.declare(metadata !{i8** %start}, metadata !12), !dbg !14
  %1 = load i8** %to_addr, align 8, !dbg !14
  store i8* %1, i8** %start, align 8, !dbg !14
  br label %bb1, !dbg !14

bb:                                               ; preds = %bb1
  %2 = load i8** %to_addr, align 8, !dbg !15
  %3 = getelementptr inbounds i8* %2, i64 1, !dbg !15
  store i8* %3, i8** %to_addr, align 8, !dbg !15
  %4 = load i8** %from_addr, align 8, !dbg !15
  %5 = getelementptr inbounds i8* %4, i64 1, !dbg !15
  store i8* %5, i8** %from_addr, align 8, !dbg !15
  br label %bb1, !dbg !15

bb1:                                              ; preds = %bb, %entry
  %6 = load i8** %from_addr, align 8, !dbg !16
  %7 = load i8* %6, align 1, !dbg !16
  %8 = load i8** %to_addr, align 8, !dbg !16
  store i8 %7, i8* %8, align 1, !dbg !16
  %9 = load i8** %to_addr, align 8, !dbg !16
  %10 = load i8* %9, align 1, !dbg !16
  %11 = icmp ne i8 %10, 0, !dbg !16
  br i1 %11, label %bb, label %bb2, !dbg !16

bb2:                                              ; preds = %bb1
  %12 = load i8** %start, align 8, !dbg !17
  store i8* %12, i8** %0, align 8, !dbg !17
  %13 = load i8** %0, align 8, !dbg !17
  store i8* %13, i8** %retval, align 8, !dbg !17
  br label %return, !dbg !17

return:                                           ; preds = %bb2
  %retval3 = load i8** %retval, !dbg !17
  ret i8* %retval3, !dbg !17
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

!llvm.dbg.sp = !{!0}

!0 = metadata !{i32 589870, i32 0, metadata !1, metadata !"strcpy", metadata !"strcpy", metadata !"strcpy", metadata !1, i32 10, metadata !3, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i8*)* @strcpy} ; [ DW_TAG_subprogram ]
!1 = metadata !{i32 589865, metadata !"strcpy.c", metadata !"/home/tyu/Documents/bugredx/klee2.9/runtime/klee-libc/", metadata !2} ; [ DW_TAG_file_type ]
!2 = metadata !{i32 589841, i32 0, i32 1, metadata !"strcpy.c", metadata !"/home/tyu/Documents/bugredx/klee2.9/runtime/klee-libc/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!3 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !4, i32 0, null} ; [ DW_TAG_subroutine_type ]
!4 = metadata !{metadata !5, metadata !5, metadata !7}
!5 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !6} ; [ DW_TAG_pointer_type ]
!6 = metadata !{i32 589860, metadata !1, metadata !"char", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!7 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ]
!8 = metadata !{i32 589862, metadata !1, metadata !"", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !6} ; [ DW_TAG_const_type ]
!9 = metadata !{i32 590081, metadata !0, metadata !"to", metadata !1, i32 10, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!10 = metadata !{i32 10, i32 0, metadata !0, null}
!11 = metadata !{i32 590081, metadata !0, metadata !"from", metadata !1, i32 10, metadata !7, i32 0} ; [ DW_TAG_arg_variable ]
!12 = metadata !{i32 590080, metadata !13, metadata !"start", metadata !1, i32 11, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!13 = metadata !{i32 589835, metadata !0, i32 10, i32 0, metadata !1, i32 0} ; [ DW_TAG_lexical_block ]
!14 = metadata !{i32 11, i32 0, metadata !13, null}
!15 = metadata !{i32 14, i32 0, metadata !13, null}
!16 = metadata !{i32 13, i32 0, metadata !13, null}
!17 = metadata !{i32 16, i32 0, metadata !13, null}
