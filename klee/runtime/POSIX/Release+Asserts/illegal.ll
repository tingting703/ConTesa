; ModuleID = 'illegal.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-f128:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }

@.str = private unnamed_addr constant [17 x i8] c"ignoring (EPERM)\00", align 1
@.str1 = private unnamed_addr constant [9 x i8] c"ignoring\00", align 1
@.str2 = private unnamed_addr constant [10 x i8] c"illegal.c\00", align 1
@.str3 = private unnamed_addr constant [20 x i8] c"longjmp unsupported\00", align 1
@.str4 = private unnamed_addr constant [8 x i8] c"xxx.err\00", align 1
@.str5 = private unnamed_addr constant [18 x i8] c"ignoring (EACCES)\00", align 1
@.str6 = private unnamed_addr constant [18 x i8] c"ignoring (ENOMEM)\00", align 1

define i32 @kill(i32 %pid, i32 %sig) nounwind {
entry:
  %pid_addr = alloca i32, align 4
  %sig_addr = alloca i32, align 4
  %retval = alloca i32
  %0 = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i32* %pid_addr}, metadata !58), !dbg !61
  store i32 %pid, i32* %pid_addr
  call void @llvm.dbg.declare(metadata !{i32* %sig_addr}, metadata !62), !dbg !61
  store i32 %sig, i32* %sig_addr
  call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !63
  %1 = call i32* @__errno_location() nounwind readnone, !dbg !65
  store i32 1, i32* %1, align 4, !dbg !65
  store i32 -1, i32* %0, align 4, !dbg !66
  %2 = load i32* %0, align 4, !dbg !66
  store i32 %2, i32* %retval, align 4, !dbg !66
  br label %return, !dbg !66

return:                                           ; preds = %entry
  %retval1 = load i32* %retval, !dbg !66
  ret i32 %retval1, !dbg !66
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare void @klee_warning(i8*)

declare i32* @__errno_location() nounwind readnone

define weak i32 @_setjmp(%struct.__jmp_buf_tag* %__env) nounwind {
entry:
  %__env_addr = alloca %struct.__jmp_buf_tag*, align 8
  %retval = alloca i32
  %0 = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{%struct.__jmp_buf_tag** %__env_addr}, metadata !67), !dbg !68
  store %struct.__jmp_buf_tag* %__env, %struct.__jmp_buf_tag** %__env_addr
  call void @klee_warning_once(i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !69
  store i32 0, i32* %0, align 4, !dbg !71
  %1 = load i32* %0, align 4, !dbg !71
  store i32 %1, i32* %retval, align 4, !dbg !71
  br label %return, !dbg !71

return:                                           ; preds = %entry
  %retval1 = load i32* %retval, !dbg !71
  ret i32 %retval1, !dbg !71
}

declare void @klee_warning_once(i8*)

define void @longjmp(%struct.__jmp_buf_tag* %env, i32 %val) noreturn nounwind {
entry:
  %env_addr = alloca %struct.__jmp_buf_tag*, align 8
  %val_addr = alloca i32, align 4
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{%struct.__jmp_buf_tag** %env_addr}, metadata !72), !dbg !73
  store %struct.__jmp_buf_tag* %env, %struct.__jmp_buf_tag** %env_addr
  call void @llvm.dbg.declare(metadata !{i32* %val_addr}, metadata !74), !dbg !73
  store i32 %val, i32* %val_addr
  call void @klee_report_error(i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 35, i8* getelementptr inbounds ([20 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str4, i64 0, i64 0)) noreturn nounwind, !dbg !75
  unreachable, !dbg !75

return:                                           ; No predecessors!
  ret void, !dbg !75
}

declare void @klee_report_error(i8*, i32, i8*, i8*) noreturn

define weak i32 @execl(i8* %path, i8* %arg, ...) nounwind {
entry:
  %path_addr = alloca i8*, align 8
  %arg_addr = alloca i8*, align 8
  %retval = alloca i32
  %0 = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i8** %path_addr}, metadata !77), !dbg !78
  store i8* %path, i8** %path_addr
  call void @llvm.dbg.declare(metadata !{i8** %arg_addr}, metadata !79), !dbg !78
  store i8* %arg, i8** %arg_addr
  call void @klee_warning(i8* getelementptr inbounds ([18 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !78
  %1 = call i32* @__errno_location() nounwind readnone, !dbg !78
  store i32 13, i32* %1, align 4, !dbg !78
  store i32 -1, i32* %0, align 4, !dbg !78
  %2 = load i32* %0, align 4, !dbg !78
  store i32 %2, i32* %retval, align 4, !dbg !78
  br label %return, !dbg !78

return:                                           ; preds = %entry
  %retval1 = load i32* %retval, !dbg !78
  ret i32 %retval1, !dbg !80
}

define weak i32 @execlp(i8* %file, i8* %arg, ...) nounwind {
entry:
  %file_addr = alloca i8*, align 8
  %arg_addr = alloca i8*, align 8
  %retval = alloca i32
  %0 = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i8** %file_addr}, metadata !82), !dbg !83
  store i8* %file, i8** %file_addr
  call void @llvm.dbg.declare(metadata !{i8** %arg_addr}, metadata !84), !dbg !83
  store i8* %arg, i8** %arg_addr
  call void @klee_warning(i8* getelementptr inbounds ([18 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !83
  %1 = call i32* @__errno_location() nounwind readnone, !dbg !83
  store i32 13, i32* %1, align 4, !dbg !83
  store i32 -1, i32* %0, align 4, !dbg !83
  %2 = load i32* %0, align 4, !dbg !83
  store i32 %2, i32* %retval, align 4, !dbg !83
  br label %return, !dbg !83

return:                                           ; preds = %entry
  %retval1 = load i32* %retval, !dbg !83
  ret i32 %retval1, !dbg !85
}

define weak i32 @execle(i8* %path, i8* %arg, ...) nounwind {
entry:
  %path_addr = alloca i8*, align 8
  %arg_addr = alloca i8*, align 8
  %retval = alloca i32
  %0 = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i8** %path_addr}, metadata !87), !dbg !88
  store i8* %path, i8** %path_addr
  call void @llvm.dbg.declare(metadata !{i8** %arg_addr}, metadata !89), !dbg !88
  store i8* %arg, i8** %arg_addr
  call void @klee_warning(i8* getelementptr inbounds ([18 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !88
  %1 = call i32* @__errno_location() nounwind readnone, !dbg !88
  store i32 13, i32* %1, align 4, !dbg !88
  store i32 -1, i32* %0, align 4, !dbg !88
  %2 = load i32* %0, align 4, !dbg !88
  store i32 %2, i32* %retval, align 4, !dbg !88
  br label %return, !dbg !88

return:                                           ; preds = %entry
  %retval1 = load i32* %retval, !dbg !88
  ret i32 %retval1, !dbg !90
}

define weak i32 @execv(i8* %path, i8** %argv) nounwind {
entry:
  %path_addr = alloca i8*, align 8
  %argv_addr = alloca i8**, align 8
  %retval = alloca i32
  %0 = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i8** %path_addr}, metadata !92), !dbg !93
  store i8* %path, i8** %path_addr
  call void @llvm.dbg.declare(metadata !{i8*** %argv_addr}, metadata !94), !dbg !93
  store i8** %argv, i8*** %argv_addr
  call void @klee_warning(i8* getelementptr inbounds ([18 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !93
  %1 = call i32* @__errno_location() nounwind readnone, !dbg !93
  store i32 13, i32* %1, align 4, !dbg !93
  store i32 -1, i32* %0, align 4, !dbg !93
  %2 = load i32* %0, align 4, !dbg !93
  store i32 %2, i32* %retval, align 4, !dbg !93
  br label %return, !dbg !93

return:                                           ; preds = %entry
  %retval1 = load i32* %retval, !dbg !93
  ret i32 %retval1, !dbg !95
}

define weak i32 @execvp(i8* %file, i8** %argv) nounwind {
entry:
  %file_addr = alloca i8*, align 8
  %argv_addr = alloca i8**, align 8
  %retval = alloca i32
  %0 = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i8** %file_addr}, metadata !97), !dbg !98
  store i8* %file, i8** %file_addr
  call void @llvm.dbg.declare(metadata !{i8*** %argv_addr}, metadata !99), !dbg !98
  store i8** %argv, i8*** %argv_addr
  call void @klee_warning(i8* getelementptr inbounds ([18 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !98
  %1 = call i32* @__errno_location() nounwind readnone, !dbg !98
  store i32 13, i32* %1, align 4, !dbg !98
  store i32 -1, i32* %0, align 4, !dbg !98
  %2 = load i32* %0, align 4, !dbg !98
  store i32 %2, i32* %retval, align 4, !dbg !98
  br label %return, !dbg !98

return:                                           ; preds = %entry
  %retval1 = load i32* %retval, !dbg !98
  ret i32 %retval1, !dbg !100
}

define weak i32 @execve(i8* %file, i8** %argv, i8** %envp) nounwind {
entry:
  %file_addr = alloca i8*, align 8
  %argv_addr = alloca i8**, align 8
  %envp_addr = alloca i8**, align 8
  %retval = alloca i32
  %0 = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i8** %file_addr}, metadata !102), !dbg !103
  store i8* %file, i8** %file_addr
  call void @llvm.dbg.declare(metadata !{i8*** %argv_addr}, metadata !104), !dbg !103
  store i8** %argv, i8*** %argv_addr
  call void @llvm.dbg.declare(metadata !{i8*** %envp_addr}, metadata !105), !dbg !103
  store i8** %envp, i8*** %envp_addr
  call void @klee_warning(i8* getelementptr inbounds ([18 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !103
  %1 = call i32* @__errno_location() nounwind readnone, !dbg !103
  store i32 13, i32* %1, align 4, !dbg !103
  store i32 -1, i32* %0, align 4, !dbg !103
  %2 = load i32* %0, align 4, !dbg !103
  store i32 %2, i32* %retval, align 4, !dbg !103
  br label %return, !dbg !103

return:                                           ; preds = %entry
  %retval1 = load i32* %retval, !dbg !103
  ret i32 %retval1, !dbg !106
}

define i32 @fork() nounwind {
entry:
  %retval = alloca i32
  %0 = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @klee_warning(i8* getelementptr inbounds ([18 x i8]* @.str6, i64 0, i64 0)) nounwind, !dbg !108
  %1 = call i32* @__errno_location() nounwind readnone, !dbg !110
  store i32 12, i32* %1, align 4, !dbg !110
  store i32 -1, i32* %0, align 4, !dbg !111
  %2 = load i32* %0, align 4, !dbg !111
  store i32 %2, i32* %retval, align 4, !dbg !111
  br label %return, !dbg !111

return:                                           ; preds = %entry
  %retval1 = load i32* %retval, !dbg !111
  ret i32 %retval1, !dbg !111
}

define i32 @vfork() nounwind {
entry:
  %retval = alloca i32
  %0 = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  %1 = call i32 @fork() nounwind, !dbg !112
  store i32 %1, i32* %0, align 4, !dbg !112
  %2 = load i32* %0, align 4, !dbg !112
  store i32 %2, i32* %retval, align 4, !dbg !112
  br label %return, !dbg !112

return:                                           ; preds = %entry
  %retval1 = load i32* %retval, !dbg !112
  ret i32 %retval1, !dbg !112
}

!llvm.dbg.sp = !{!0, !8, !33, !36, !42, !43, !44, !50, !51, !54, !57}

!0 = metadata !{i32 589870, i32 0, metadata !1, metadata !"kill", metadata !"kill", metadata !"kill", metadata !1, i32 22, metadata !3, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @kill} ; [ DW_TAG_subprogram ]
!1 = metadata !{i32 589865, metadata !"illegal.c", metadata !"/home/tyu/Documents/bugredx/klee2.9/runtime/POSIX/", metadata !2} ; [ DW_TAG_file_type ]
!2 = metadata !{i32 589841, i32 0, i32 1, metadata !"illegal.c", metadata !"/home/tyu/Documents/bugredx/klee2.9/runtime/POSIX/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!3 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !4, i32 0, null} ; [ DW_TAG_subroutine_type ]
!4 = metadata !{metadata !5, metadata !6, metadata !5}
!5 = metadata !{i32 589860, metadata !1, metadata !"int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!6 = metadata !{i32 589846, metadata !7, metadata !"__pid_t", metadata !7, i32 143, i64 0, i64 0, i64 0, i32 0, metadata !5} ; [ DW_TAG_typedef ]
!7 = metadata !{i32 589865, metadata !"types.h", metadata !"/usr/include/bits", metadata !2} ; [ DW_TAG_file_type ]
!8 = metadata !{i32 589870, i32 0, metadata !1, metadata !"_setjmp", metadata !"_setjmp", metadata !"_setjmp", metadata !1, i32 29, metadata !9, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.__jmp_buf_tag*)* @_setjmp} ; [ DW_TAG_subprogram ]
!9 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !10, i32 0, null} ; [ DW_TAG_subroutine_type ]
!10 = metadata !{metadata !5, metadata !11}
!11 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ]
!12 = metadata !{i32 589843, metadata !1, metadata !"__jmp_buf_tag", metadata !13, i32 36, i64 1600, i64 64, i64 0, i32 0, null, metadata !14, i32 0, null} ; [ DW_TAG_structure_type ]
!13 = metadata !{i32 589865, metadata !"setjmp.h", metadata !"/usr/include", metadata !2} ; [ DW_TAG_file_type ]
!14 = metadata !{metadata !15, metadata !22, metadata !23}
!15 = metadata !{i32 589837, metadata !12, metadata !"__jmpbuf", metadata !13, i32 41, i64 512, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ]
!16 = metadata !{i32 589846, metadata !17, metadata !"__jmp_buf", metadata !17, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_typedef ]
!17 = metadata !{i32 589865, metadata !"setjmp.h", metadata !"/usr/include/bits", metadata !2} ; [ DW_TAG_file_type ]
!18 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 512, i64 64, i64 0, i32 0, metadata !19, metadata !20, i32 0, null} ; [ DW_TAG_array_type ]
!19 = metadata !{i32 589860, metadata !1, metadata !"long int", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!20 = metadata !{metadata !21}
!21 = metadata !{i32 589857, i64 0, i64 7}        ; [ DW_TAG_subrange_type ]
!22 = metadata !{i32 589837, metadata !12, metadata !"__mask_was_saved", metadata !13, i32 42, i64 32, i64 32, i64 512, i32 0, metadata !5} ; [ DW_TAG_member ]
!23 = metadata !{i32 589837, metadata !12, metadata !"__saved_mask", metadata !13, i32 43, i64 1024, i64 64, i64 576, i32 0, metadata !24} ; [ DW_TAG_member ]
!24 = metadata !{i32 589846, metadata !25, metadata !"__sigset_t", metadata !25, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ]
!25 = metadata !{i32 589865, metadata !"sigset.h", metadata !"/usr/include/bits", metadata !2} ; [ DW_TAG_file_type ]
!26 = metadata !{i32 589843, metadata !1, metadata !"", metadata !25, i32 30, i64 1024, i64 64, i64 0, i32 0, null, metadata !27, i32 0, null} ; [ DW_TAG_structure_type ]
!27 = metadata !{metadata !28}
!28 = metadata !{i32 589837, metadata !26, metadata !"__val", metadata !25, i32 31, i64 1024, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_member ]
!29 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 1024, i64 64, i64 0, i32 0, metadata !30, metadata !31, i32 0, null} ; [ DW_TAG_array_type ]
!30 = metadata !{i32 589860, metadata !1, metadata !"long unsigned int", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!31 = metadata !{metadata !32}
!32 = metadata !{i32 589857, i64 0, i64 15}       ; [ DW_TAG_subrange_type ]
!33 = metadata !{i32 589870, i32 0, metadata !1, metadata !"longjmp", metadata !"longjmp", metadata !"longjmp", metadata !1, i32 34, metadata !34, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.__jmp_buf_tag*, i32)* @longjmp} ; [ DW_TAG_subprogram ]
!34 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !35, i32 0, null} ; [ DW_TAG_subroutine_type ]
!35 = metadata !{null, metadata !11, metadata !5}
!36 = metadata !{i32 589870, i32 0, metadata !1, metadata !"execl", metadata !"execl", metadata !"execl", metadata !1, i32 55, metadata !37, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, i8*, ...)* @execl} ; [ DW_TAG_subprogram ]
!37 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !38, i32 0, null} ; [ DW_TAG_subroutine_type ]
!38 = metadata !{metadata !5, metadata !39, metadata !39}
!39 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !40} ; [ DW_TAG_pointer_type ]
!40 = metadata !{i32 589862, metadata !1, metadata !"", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !41} ; [ DW_TAG_const_type ]
!41 = metadata !{i32 589860, metadata !1, metadata !"char", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!42 = metadata !{i32 589870, i32 0, metadata !1, metadata !"execlp", metadata !"execlp", metadata !"execlp", metadata !1, i32 56, metadata !37, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, i8*, ...)* @execlp} ; [ DW_TAG_subprogram ]
!43 = metadata !{i32 589870, i32 0, metadata !1, metadata !"execle", metadata !"execle", metadata !"execle", metadata !1, i32 57, metadata !37, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, i8*, ...)* @execle} ; [ DW_TAG_subprogram ]
!44 = metadata !{i32 589870, i32 0, metadata !1, metadata !"execv", metadata !"execv", metadata !"execv", metadata !1, i32 58, metadata !45, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, i8**)* @execv} ; [ DW_TAG_subprogram ]
!45 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !46, i32 0, null} ; [ DW_TAG_subroutine_type ]
!46 = metadata !{metadata !5, metadata !39, metadata !47}
!47 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !48} ; [ DW_TAG_pointer_type ]
!48 = metadata !{i32 589862, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !49} ; [ DW_TAG_const_type ]
!49 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !41} ; [ DW_TAG_pointer_type ]
!50 = metadata !{i32 589870, i32 0, metadata !1, metadata !"execvp", metadata !"execvp", metadata !"execvp", metadata !1, i32 59, metadata !45, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, i8**)* @execvp} ; [ DW_TAG_subprogram ]
!51 = metadata !{i32 589870, i32 0, metadata !1, metadata !"execve", metadata !"execve", metadata !"execve", metadata !1, i32 60, metadata !52, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, i8**, i8**)* @execve} ; [ DW_TAG_subprogram ]
!52 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !53, i32 0, null} ; [ DW_TAG_subroutine_type ]
!53 = metadata !{metadata !5, metadata !39, metadata !47, metadata !47}
!54 = metadata !{i32 589870, i32 0, metadata !1, metadata !"fork", metadata !"fork", metadata !"fork", metadata !1, i32 62, metadata !55, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ()* @fork} ; [ DW_TAG_subprogram ]
!55 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !56, i32 0, null} ; [ DW_TAG_subroutine_type ]
!56 = metadata !{metadata !6}
!57 = metadata !{i32 589870, i32 0, metadata !1, metadata !"vfork", metadata !"vfork", metadata !"vfork", metadata !1, i32 68, metadata !55, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ()* @vfork} ; [ DW_TAG_subprogram ]
!58 = metadata !{i32 590081, metadata !0, metadata !"pid", metadata !1, i32 22, metadata !59, i32 0} ; [ DW_TAG_arg_variable ]
!59 = metadata !{i32 589846, metadata !60, metadata !"pid_t", metadata !60, i32 261, i64 0, i64 0, i64 0, i32 0, metadata !5} ; [ DW_TAG_typedef ]
!60 = metadata !{i32 589865, metadata !"unistd.h", metadata !"/usr/include", metadata !2} ; [ DW_TAG_file_type ]
!61 = metadata !{i32 22, i32 0, metadata !0, null}
!62 = metadata !{i32 590081, metadata !0, metadata !"sig", metadata !1, i32 22, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!63 = metadata !{i32 23, i32 0, metadata !64, null}
!64 = metadata !{i32 589835, metadata !0, i32 22, i32 0, metadata !1, i32 0} ; [ DW_TAG_lexical_block ]
!65 = metadata !{i32 24, i32 0, metadata !64, null}
!66 = metadata !{i32 25, i32 0, metadata !64, null}
!67 = metadata !{i32 590081, metadata !8, metadata !"__env", metadata !1, i32 29, metadata !11, i32 0} ; [ DW_TAG_arg_variable ]
!68 = metadata !{i32 29, i32 0, metadata !8, null}
!69 = metadata !{i32 30, i32 0, metadata !70, null}
!70 = metadata !{i32 589835, metadata !8, i32 29, i32 0, metadata !1, i32 1} ; [ DW_TAG_lexical_block ]
!71 = metadata !{i32 31, i32 0, metadata !70, null}
!72 = metadata !{i32 590081, metadata !33, metadata !"env", metadata !1, i32 34, metadata !11, i32 0} ; [ DW_TAG_arg_variable ]
!73 = metadata !{i32 34, i32 0, metadata !33, null}
!74 = metadata !{i32 590081, metadata !33, metadata !"val", metadata !1, i32 34, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!75 = metadata !{i32 35, i32 0, metadata !76, null}
!76 = metadata !{i32 589835, metadata !33, i32 34, i32 0, metadata !1, i32 2} ; [ DW_TAG_lexical_block ]
!77 = metadata !{i32 590081, metadata !36, metadata !"path", metadata !1, i32 55, metadata !39, i32 0} ; [ DW_TAG_arg_variable ]
!78 = metadata !{i32 55, i32 0, metadata !36, null}
!79 = metadata !{i32 590081, metadata !36, metadata !"arg", metadata !1, i32 55, metadata !39, i32 0} ; [ DW_TAG_arg_variable ]
!80 = metadata !{i32 55, i32 0, metadata !81, null}
!81 = metadata !{i32 589835, metadata !36, i32 55, i32 0, metadata !1, i32 3} ; [ DW_TAG_lexical_block ]
!82 = metadata !{i32 590081, metadata !42, metadata !"file", metadata !1, i32 56, metadata !39, i32 0} ; [ DW_TAG_arg_variable ]
!83 = metadata !{i32 56, i32 0, metadata !42, null}
!84 = metadata !{i32 590081, metadata !42, metadata !"arg", metadata !1, i32 56, metadata !39, i32 0} ; [ DW_TAG_arg_variable ]
!85 = metadata !{i32 56, i32 0, metadata !86, null}
!86 = metadata !{i32 589835, metadata !42, i32 56, i32 0, metadata !1, i32 4} ; [ DW_TAG_lexical_block ]
!87 = metadata !{i32 590081, metadata !43, metadata !"path", metadata !1, i32 57, metadata !39, i32 0} ; [ DW_TAG_arg_variable ]
!88 = metadata !{i32 57, i32 0, metadata !43, null}
!89 = metadata !{i32 590081, metadata !43, metadata !"arg", metadata !1, i32 57, metadata !39, i32 0} ; [ DW_TAG_arg_variable ]
!90 = metadata !{i32 57, i32 0, metadata !91, null}
!91 = metadata !{i32 589835, metadata !43, i32 57, i32 0, metadata !1, i32 5} ; [ DW_TAG_lexical_block ]
!92 = metadata !{i32 590081, metadata !44, metadata !"path", metadata !1, i32 58, metadata !39, i32 0} ; [ DW_TAG_arg_variable ]
!93 = metadata !{i32 58, i32 0, metadata !44, null}
!94 = metadata !{i32 590081, metadata !44, metadata !"argv", metadata !1, i32 58, metadata !47, i32 0} ; [ DW_TAG_arg_variable ]
!95 = metadata !{i32 58, i32 0, metadata !96, null}
!96 = metadata !{i32 589835, metadata !44, i32 58, i32 0, metadata !1, i32 6} ; [ DW_TAG_lexical_block ]
!97 = metadata !{i32 590081, metadata !50, metadata !"file", metadata !1, i32 59, metadata !39, i32 0} ; [ DW_TAG_arg_variable ]
!98 = metadata !{i32 59, i32 0, metadata !50, null}
!99 = metadata !{i32 590081, metadata !50, metadata !"argv", metadata !1, i32 59, metadata !47, i32 0} ; [ DW_TAG_arg_variable ]
!100 = metadata !{i32 59, i32 0, metadata !101, null}
!101 = metadata !{i32 589835, metadata !50, i32 59, i32 0, metadata !1, i32 7} ; [ DW_TAG_lexical_block ]
!102 = metadata !{i32 590081, metadata !51, metadata !"file", metadata !1, i32 60, metadata !39, i32 0} ; [ DW_TAG_arg_variable ]
!103 = metadata !{i32 60, i32 0, metadata !51, null}
!104 = metadata !{i32 590081, metadata !51, metadata !"argv", metadata !1, i32 60, metadata !47, i32 0} ; [ DW_TAG_arg_variable ]
!105 = metadata !{i32 590081, metadata !51, metadata !"envp", metadata !1, i32 60, metadata !47, i32 0} ; [ DW_TAG_arg_variable ]
!106 = metadata !{i32 60, i32 0, metadata !107, null}
!107 = metadata !{i32 589835, metadata !51, i32 60, i32 0, metadata !1, i32 8} ; [ DW_TAG_lexical_block ]
!108 = metadata !{i32 63, i32 0, metadata !109, null}
!109 = metadata !{i32 589835, metadata !54, i32 62, i32 0, metadata !1, i32 9} ; [ DW_TAG_lexical_block ]
!110 = metadata !{i32 64, i32 0, metadata !109, null}
!111 = metadata !{i32 65, i32 0, metadata !109, null}
!112 = metadata !{i32 69, i32 0, metadata !113, null}
!113 = metadata !{i32 589835, metadata !57, i32 68, i32 0, metadata !1, i32 10} ; [ DW_TAG_lexical_block ]
