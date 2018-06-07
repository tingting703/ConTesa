; ModuleID = 'strlen.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-f128:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

define i64 @strlen(i8* %str) nounwind readonly {
entry:
  %str_addr = alloca i8*, align 8
  %retval = alloca i64
  %0 = alloca i64
  %s = alloca i8*
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i8** %str_addr}, metadata !11), !dbg !12
  store i8* %str, i8** %str_addr
  call void @llvm.dbg.declare(metadata !{i8** %s}, metadata !13), !dbg !15
  %1 = load i8** %str_addr, align 8, !dbg !15
  store i8* %1, i8** %s, align 8, !dbg !15
  br label %bb1, !dbg !15

bb:                                               ; preds = %bb1
  %2 = load i8** %s, align 8, !dbg !16
  %3 = getelementptr inbounds i8* %2, i64 1, !dbg !16
  store i8* %3, i8** %s, align 8, !dbg !16
  br label %bb1, !dbg !16

bb1:                                              ; preds = %bb, %entry
  %4 = load i8** %s, align 8, !dbg !17
  %5 = load i8* %4, align 1, !dbg !17
  %6 = icmp ne i8 %5, 0, !dbg !17
  br i1 %6, label %bb, label %bb2, !dbg !17

bb2:                                              ; preds = %bb1
  %7 = load i8** %s, align 8, !dbg !18
  %8 = ptrtoint i8* %7 to i64, !dbg !18
  %9 = load i8** %str_addr, align 8, !dbg !18
  %10 = ptrtoint i8* %9 to i64, !dbg !18
  %11 = sub nsw i64 %8, %10, !dbg !18
  store i64 %11, i64* %0, align 8, !dbg !18
  %12 = load i64* %0, align 8, !dbg !18
  store i64 %12, i64* %retval, align 8, !dbg !18
  br label %return, !dbg !18

return:                                           ; preds = %bb2
  %retval3 = load i64* %retval, !dbg !18
  ret i64 %retval3, !dbg !18
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

!llvm.dbg.sp = !{!0}

!0 = metadata !{i32 589870, i32 0, metadata !1, metadata !"strlen", metadata !"strlen", metadata !"strlen", metadata !1, i32 12, metadata !3, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i8*)* @strlen} ; [ DW_TAG_subprogram ]
!1 = metadata !{i32 589865, metadata !"strlen.c", metadata !"/home/tyu/Documents/bugredx/klee2.9/runtime/klee-libc/", metadata !2} ; [ DW_TAG_file_type ]
!2 = metadata !{i32 589841, i32 0, i32 1, metadata !"strlen.c", metadata !"/home/tyu/Documents/bugredx/klee2.9/runtime/klee-libc/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!3 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !4, i32 0, null} ; [ DW_TAG_subroutine_type ]
!4 = metadata !{metadata !5, metadata !8}
!5 = metadata !{i32 589846, metadata !6, metadata !"size_t", metadata !6, i32 214, i64 0, i64 0, i64 0, i32 0, metadata !7} ; [ DW_TAG_typedef ]
!6 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/home/tyu/Documents/bugredx/llvm-gcc4.2-2.9-x86_64-linux/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.2.1/include", metadata !2} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 589860, metadata !1, metadata !"long unsigned int", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!8 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!9 = metadata !{i32 589862, metadata !1, metadata !"", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ]
!10 = metadata !{i32 589860, metadata !1, metadata !"char", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!11 = metadata !{i32 590081, metadata !0, metadata !"str", metadata !1, i32 12, metadata !8, i32 0} ; [ DW_TAG_arg_variable ]
!12 = metadata !{i32 12, i32 0, metadata !0, null}
!13 = metadata !{i32 590080, metadata !14, metadata !"s", metadata !1, i32 13, metadata !8, i32 0} ; [ DW_TAG_auto_variable ]
!14 = metadata !{i32 589835, metadata !0, i32 12, i32 0, metadata !1, i32 0} ; [ DW_TAG_lexical_block ]
!15 = metadata !{i32 13, i32 0, metadata !14, null}
!16 = metadata !{i32 15, i32 0, metadata !14, null}
!17 = metadata !{i32 14, i32 0, metadata !14, null}
!18 = metadata !{i32 16, i32 0, metadata !14, null}
