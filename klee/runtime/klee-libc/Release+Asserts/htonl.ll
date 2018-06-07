; ModuleID = 'htonl.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-f128:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

define zeroext i16 @htons(i16 zeroext %v) nounwind {
entry:
  %v_addr = alloca i16, align 2
  %retval = alloca i32
  %0 = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i16* %v_addr}, metadata !15), !dbg !16
  store i16 %v, i16* %v_addr
  %1 = load i16* %v_addr, align 2, !dbg !17
  %2 = lshr i16 %1, 8, !dbg !17
  %3 = load i16* %v_addr, align 2, !dbg !17
  %4 = zext i16 %3 to i32, !dbg !17
  %5 = shl i32 %4, 8, !dbg !17
  %6 = trunc i32 %5 to i16, !dbg !17
  %7 = or i16 %2, %6, !dbg !17
  %8 = zext i16 %7 to i32, !dbg !17
  store i32 %8, i32* %0, align 4, !dbg !17
  %9 = load i32* %0, align 4, !dbg !17
  store i32 %9, i32* %retval, align 4, !dbg !17
  br label %return, !dbg !17

return:                                           ; preds = %entry
  %retval1 = load i32* %retval, !dbg !17
  %retval12 = trunc i32 %retval1 to i16, !dbg !17
  ret i16 %retval12, !dbg !17
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define i32 @htonl(i32 %v) nounwind {
entry:
  %v_addr = alloca i32, align 4
  %retval = alloca i32
  %0 = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i32* %v_addr}, metadata !19), !dbg !20
  store i32 %v, i32* %v_addr
  %1 = load i32* %v_addr, align 4, !dbg !21
  %2 = lshr i32 %1, 16, !dbg !21
  %3 = trunc i32 %2 to i16, !dbg !21
  %4 = zext i16 %3 to i32, !dbg !21
  %5 = trunc i32 %4 to i16, !dbg !21
  %6 = call zeroext i16 @htons(i16 zeroext %5) nounwind, !dbg !21
  %7 = zext i16 %6 to i32, !dbg !21
  %8 = load i32* %v_addr, align 4, !dbg !21
  %9 = trunc i32 %8 to i16, !dbg !21
  %10 = zext i16 %9 to i32, !dbg !21
  %11 = trunc i32 %10 to i16, !dbg !21
  %12 = call zeroext i16 @htons(i16 zeroext %11) nounwind, !dbg !21
  %13 = zext i16 %12 to i32, !dbg !21
  %14 = shl i32 %13, 16, !dbg !21
  %15 = or i32 %7, %14, !dbg !21
  store i32 %15, i32* %0, align 4, !dbg !21
  %16 = load i32* %0, align 4, !dbg !21
  store i32 %16, i32* %retval, align 4, !dbg !21
  br label %return, !dbg !21

return:                                           ; preds = %entry
  %retval1 = load i32* %retval, !dbg !21
  ret i32 %retval1, !dbg !21
}

define zeroext i16 @ntohs(i16 zeroext %v) nounwind {
entry:
  %v_addr = alloca i16, align 2
  %retval = alloca i32
  %0 = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i16* %v_addr}, metadata !23), !dbg !24
  store i16 %v, i16* %v_addr
  %1 = load i16* %v_addr, align 2, !dbg !25
  %2 = zext i16 %1 to i32, !dbg !25
  %3 = trunc i32 %2 to i16, !dbg !25
  %4 = call zeroext i16 @htons(i16 zeroext %3) nounwind, !dbg !25
  %5 = zext i16 %4 to i32, !dbg !25
  store i32 %5, i32* %0, align 4, !dbg !25
  %6 = load i32* %0, align 4, !dbg !25
  store i32 %6, i32* %retval, align 4, !dbg !25
  br label %return, !dbg !25

return:                                           ; preds = %entry
  %retval1 = load i32* %retval, !dbg !25
  %retval12 = trunc i32 %retval1 to i16, !dbg !25
  ret i16 %retval12, !dbg !25
}

define i32 @ntohl(i32 %v) nounwind {
entry:
  %v_addr = alloca i32, align 4
  %retval = alloca i32
  %0 = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i32* %v_addr}, metadata !27), !dbg !28
  store i32 %v, i32* %v_addr
  %1 = load i32* %v_addr, align 4, !dbg !29
  %2 = call i32 @htonl(i32 %1) nounwind, !dbg !29
  store i32 %2, i32* %0, align 4, !dbg !29
  %3 = load i32* %0, align 4, !dbg !29
  store i32 %3, i32* %retval, align 4, !dbg !29
  br label %return, !dbg !29

return:                                           ; preds = %entry
  %retval1 = load i32* %retval, !dbg !29
  ret i32 %retval1, !dbg !29
}

!llvm.dbg.sp = !{!0, !8, !13, !14}

!0 = metadata !{i32 589870, i32 0, metadata !1, metadata !"htons", metadata !"htons", metadata !"htons", metadata !1, i32 26, metadata !3, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i16 (i16)* @htons} ; [ DW_TAG_subprogram ]
!1 = metadata !{i32 589865, metadata !"htonl.c", metadata !"/home/tyu/Documents/bugredx/klee2.9/runtime/klee-libc/", metadata !2} ; [ DW_TAG_file_type ]
!2 = metadata !{i32 589841, i32 0, i32 1, metadata !"htonl.c", metadata !"/home/tyu/Documents/bugredx/klee2.9/runtime/klee-libc/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!3 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !4, i32 0, null} ; [ DW_TAG_subroutine_type ]
!4 = metadata !{metadata !5, metadata !5}
!5 = metadata !{i32 589846, metadata !6, metadata !"uint16_t", metadata !6, i32 50, i64 0, i64 0, i64 0, i32 0, metadata !7} ; [ DW_TAG_typedef ]
!6 = metadata !{i32 589865, metadata !"stdint.h", metadata !"/usr/include", metadata !2} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 589860, metadata !1, metadata !"short unsigned int", metadata !1, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!8 = metadata !{i32 589870, i32 0, metadata !1, metadata !"htonl", metadata !"htonl", metadata !"htonl", metadata !1, i32 29, metadata !9, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @htonl} ; [ DW_TAG_subprogram ]
!9 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !10, i32 0, null} ; [ DW_TAG_subroutine_type ]
!10 = metadata !{metadata !11, metadata !11}
!11 = metadata !{i32 589846, metadata !6, metadata !"uint32_t", metadata !6, i32 52, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ]
!12 = metadata !{i32 589860, metadata !1, metadata !"unsigned int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!13 = metadata !{i32 589870, i32 0, metadata !1, metadata !"ntohs", metadata !"ntohs", metadata !"ntohs", metadata !1, i32 44, metadata !3, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i16 (i16)* @ntohs} ; [ DW_TAG_subprogram ]
!14 = metadata !{i32 589870, i32 0, metadata !1, metadata !"ntohl", metadata !"ntohl", metadata !"ntohl", metadata !1, i32 47, metadata !9, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @ntohl} ; [ DW_TAG_subprogram ]
!15 = metadata !{i32 590081, metadata !0, metadata !"v", metadata !1, i32 26, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!16 = metadata !{i32 26, i32 0, metadata !0, null}
!17 = metadata !{i32 27, i32 0, metadata !18, null}
!18 = metadata !{i32 589835, metadata !0, i32 26, i32 0, metadata !1, i32 0} ; [ DW_TAG_lexical_block ]
!19 = metadata !{i32 590081, metadata !8, metadata !"v", metadata !1, i32 29, metadata !11, i32 0} ; [ DW_TAG_arg_variable ]
!20 = metadata !{i32 29, i32 0, metadata !8, null}
!21 = metadata !{i32 30, i32 0, metadata !22, null}
!22 = metadata !{i32 589835, metadata !8, i32 29, i32 0, metadata !1, i32 1} ; [ DW_TAG_lexical_block ]
!23 = metadata !{i32 590081, metadata !13, metadata !"v", metadata !1, i32 44, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!24 = metadata !{i32 44, i32 0, metadata !13, null}
!25 = metadata !{i32 45, i32 0, metadata !26, null}
!26 = metadata !{i32 589835, metadata !13, i32 44, i32 0, metadata !1, i32 2} ; [ DW_TAG_lexical_block ]
!27 = metadata !{i32 590081, metadata !14, metadata !"v", metadata !1, i32 47, metadata !11, i32 0} ; [ DW_TAG_arg_variable ]
!28 = metadata !{i32 47, i32 0, metadata !14, null}
!29 = metadata !{i32 48, i32 0, metadata !30, null}
!30 = metadata !{i32 589835, metadata !14, i32 47, i32 0, metadata !1, i32 3} ; [ DW_TAG_lexical_block ]
