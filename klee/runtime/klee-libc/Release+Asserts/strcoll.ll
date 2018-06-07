; ModuleID = 'strcoll.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-f128:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

define i32 @strcoll(i8* %s1, i8* %s2) nounwind readonly {
entry:
  %s1_addr = alloca i8*, align 8
  %s2_addr = alloca i8*, align 8
  %retval = alloca i32
  %0 = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i8** %s1_addr}, metadata !9), !dbg !10
  store i8* %s1, i8** %s1_addr
  call void @llvm.dbg.declare(metadata !{i8** %s2_addr}, metadata !11), !dbg !10
  store i8* %s2, i8** %s2_addr
  %1 = load i8** %s1_addr, align 8, !dbg !12
  %2 = load i8** %s2_addr, align 8, !dbg !12
  %3 = call i32 @strcmp(i8* %1, i8* %2) nounwind readonly, !dbg !12
  store i32 %3, i32* %0, align 4, !dbg !12
  %4 = load i32* %0, align 4, !dbg !12
  store i32 %4, i32* %retval, align 4, !dbg !12
  br label %return, !dbg !12

return:                                           ; preds = %entry
  %retval1 = load i32* %retval, !dbg !12
  ret i32 %retval1, !dbg !12
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare i32 @strcmp(i8*, i8*) nounwind readonly

!llvm.dbg.sp = !{!0}

!0 = metadata !{i32 589870, i32 0, metadata !1, metadata !"strcoll", metadata !"strcoll", metadata !"strcoll", metadata !1, i32 13, metadata !3, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, i8*)* @strcoll} ; [ DW_TAG_subprogram ]
!1 = metadata !{i32 589865, metadata !"strcoll.c", metadata !"/home/tyu/Documents/bugredx/klee2.9/runtime/klee-libc/", metadata !2} ; [ DW_TAG_file_type ]
!2 = metadata !{i32 589841, i32 0, i32 1, metadata !"strcoll.c", metadata !"/home/tyu/Documents/bugredx/klee2.9/runtime/klee-libc/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!3 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !4, i32 0, null} ; [ DW_TAG_subroutine_type ]
!4 = metadata !{metadata !5, metadata !6, metadata !6}
!5 = metadata !{i32 589860, metadata !1, metadata !"int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!6 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !7} ; [ DW_TAG_pointer_type ]
!7 = metadata !{i32 589862, metadata !1, metadata !"", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !8} ; [ DW_TAG_const_type ]
!8 = metadata !{i32 589860, metadata !1, metadata !"char", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!9 = metadata !{i32 590081, metadata !0, metadata !"s1", metadata !1, i32 13, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!10 = metadata !{i32 13, i32 0, metadata !0, null}
!11 = metadata !{i32 590081, metadata !0, metadata !"s2", metadata !1, i32 13, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!12 = metadata !{i32 14, i32 0, metadata !13, null}
!13 = metadata !{i32 589835, metadata !0, i32 13, i32 0, metadata !1, i32 0} ; [ DW_TAG_lexical_block ]
