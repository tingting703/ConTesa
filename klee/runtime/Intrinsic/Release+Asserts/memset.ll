; ModuleID = 'memset.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-f128:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

define i8* @memset(i8* %dst, i32 %s, i64 %count) nounwind {
entry:
  %dst_addr = alloca i8*, align 8
  %s_addr = alloca i32, align 4
  %count_addr = alloca i64, align 8
  %retval = alloca i8*
  %0 = alloca i8*
  %a = alloca i8*
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i8** %dst_addr}, metadata !10), !dbg !11
  store i8* %dst, i8** %dst_addr
  call void @llvm.dbg.declare(metadata !{i32* %s_addr}, metadata !12), !dbg !11
  store i32 %s, i32* %s_addr
  call void @llvm.dbg.declare(metadata !{i64* %count_addr}, metadata !13), !dbg !11
  store i64 %count, i64* %count_addr
  call void @llvm.dbg.declare(metadata !{i8** %a}, metadata !14), !dbg !19
  %1 = load i8** %dst_addr, align 8, !dbg !19
  store i8* %1, i8** %a, align 8, !dbg !19
  br label %bb1, !dbg !19

bb:                                               ; preds = %bb1
  %2 = load i32* %s_addr, align 4, !dbg !20
  %3 = trunc i32 %2 to i8, !dbg !20
  %4 = load i8** %a, align 8, !dbg !20
  volatile store i8 %3, i8* %4, align 1, !dbg !20
  %5 = load i8** %a, align 8, !dbg !20
  %6 = getelementptr inbounds i8* %5, i64 1, !dbg !20
  store i8* %6, i8** %a, align 8, !dbg !20
  br label %bb1, !dbg !20

bb1:                                              ; preds = %bb, %entry
  %7 = load i64* %count_addr, align 8, !dbg !21
  %8 = sub i64 %7, 1, !dbg !21
  store i64 %8, i64* %count_addr, align 8, !dbg !21
  %9 = load i64* %count_addr, align 8, !dbg !21
  %10 = icmp ne i64 %9, -1, !dbg !21
  br i1 %10, label %bb, label %bb2, !dbg !21

bb2:                                              ; preds = %bb1
  %11 = load i8** %dst_addr, align 8, !dbg !22
  store i8* %11, i8** %0, align 8, !dbg !22
  %12 = load i8** %0, align 8, !dbg !22
  store i8* %12, i8** %retval, align 8, !dbg !22
  br label %return, !dbg !22

return:                                           ; preds = %bb2
  %retval3 = load i8** %retval, !dbg !22
  ret i8* %retval3, !dbg !22
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

!llvm.dbg.sp = !{!0}

!0 = metadata !{i32 589870, i32 0, metadata !1, metadata !"memset", metadata !"memset", metadata !"memset", metadata !1, i32 12, metadata !3, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i32, i64)* @memset} ; [ DW_TAG_subprogram ]
!1 = metadata !{i32 589865, metadata !"memset.c", metadata !"/home/tyu/Documents/bugredx/klee2.9/runtime/Intrinsic/", metadata !2} ; [ DW_TAG_file_type ]
!2 = metadata !{i32 589841, i32 0, i32 1, metadata !"memset.c", metadata !"/home/tyu/Documents/bugredx/klee2.9/runtime/Intrinsic/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!3 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !4, i32 0, null} ; [ DW_TAG_subroutine_type ]
!4 = metadata !{metadata !5, metadata !5, metadata !6, metadata !7}
!5 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!6 = metadata !{i32 589860, metadata !1, metadata !"int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!7 = metadata !{i32 589846, metadata !8, metadata !"size_t", metadata !8, i32 214, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_typedef ]
!8 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/home/tyu/Documents/bugredx/llvm-gcc4.2-2.9-x86_64-linux/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.2.1/include", metadata !2} ; [ DW_TAG_file_type ]
!9 = metadata !{i32 589860, metadata !1, metadata !"long unsigned int", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!10 = metadata !{i32 590081, metadata !0, metadata !"dst", metadata !1, i32 12, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!11 = metadata !{i32 12, i32 0, metadata !0, null}
!12 = metadata !{i32 590081, metadata !0, metadata !"s", metadata !1, i32 12, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!13 = metadata !{i32 590081, metadata !0, metadata !"count", metadata !1, i32 12, metadata !7, i32 0} ; [ DW_TAG_arg_variable ]
!14 = metadata !{i32 590080, metadata !15, metadata !"a", metadata !1, i32 13, metadata !16, i32 0} ; [ DW_TAG_auto_variable ]
!15 = metadata !{i32 589835, metadata !0, i32 12, i32 0, metadata !1, i32 0} ; [ DW_TAG_lexical_block ]
!16 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ]
!17 = metadata !{i32 589877, metadata !1, metadata !"", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !18} ; [ DW_TAG_volatile_type ]
!18 = metadata !{i32 589860, metadata !1, metadata !"char", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!19 = metadata !{i32 13, i32 0, metadata !15, null}
!20 = metadata !{i32 15, i32 0, metadata !15, null}
!21 = metadata !{i32 14, i32 0, metadata !15, null}
!22 = metadata !{i32 16, i32 0, metadata !15, null}
