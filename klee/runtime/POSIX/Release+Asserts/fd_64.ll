; ModuleID = 'fd_64.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-f128:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

%struct.__fsid_t = type { [2 x i32] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.dirent64 = type { i64, i64, i16, i8, [256 x i8] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.statfs = type { i64, i64, i64, i64, i64, i64, i64, %struct.__fsid_t, i64, i64, i64, [4 x i64] }
%struct.timespec = type { i64, i64 }

@__getdents64 = alias i32 (i32, %struct.dirent*, i32)* @getdents64

define i32 @"\01open64"(i8* %pathname, i32 %flags, ...) nounwind {
entry:
  %pathname_addr = alloca i8*, align 8
  %flags_addr = alloca i32, align 4
  %retval = alloca i32
  %0 = alloca i32
  %addr.0 = alloca i8*
  %mode = alloca i32
  %ap = alloca [1 x %struct.__va_list_tag]
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i8** %pathname_addr}, metadata !120), !dbg !121
  store i8* %pathname, i8** %pathname_addr
  call void @llvm.dbg.declare(metadata !{i32* %flags_addr}, metadata !122), !dbg !121
  store i32 %flags, i32* %flags_addr
  call void @llvm.dbg.declare(metadata !{i32* %mode}, metadata !123), !dbg !127
  store i32 0, i32* %mode, align 4, !dbg !127
  %1 = load i32* %flags_addr, align 4, !dbg !128
  %2 = and i32 %1, 64, !dbg !128
  %3 = icmp ne i32 %2, 0, !dbg !128
  br i1 %3, label %bb, label %bb8, !dbg !128

bb:                                               ; preds = %entry
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %ap}, metadata !129), !dbg !144
  %ap1 = bitcast [1 x %struct.__va_list_tag]* %ap to %struct.__va_list_tag*, !dbg !145
  %ap12 = bitcast %struct.__va_list_tag* %ap1 to i8*, !dbg !145
  call void @llvm.va_start(i8* %ap12), !dbg !145
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !146
  %5 = getelementptr inbounds %struct.__va_list_tag* %4, i32 0, i32 0, !dbg !146
  %6 = load i32* %5, align 8, !dbg !146
  %7 = icmp uge i32 %6, 48, !dbg !146
  br i1 %7, label %bb4, label %bb3, !dbg !146

bb3:                                              ; preds = %bb
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !146
  %9 = getelementptr inbounds %struct.__va_list_tag* %8, i32 0, i32 3, !dbg !146
  %10 = load i8** %9, align 8, !dbg !146
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !146
  %12 = getelementptr inbounds %struct.__va_list_tag* %11, i32 0, i32 0, !dbg !146
  %13 = load i32* %12, align 8, !dbg !146
  %14 = inttoptr i32 %13 to i8*, !dbg !146
  %15 = ptrtoint i8* %10 to i64, !dbg !146
  %16 = ptrtoint i8* %14 to i64, !dbg !146
  %17 = add i64 %15, %16, !dbg !146
  %18 = inttoptr i64 %17 to i8*, !dbg !146
  store i8* %18, i8** %addr.0, align 8, !dbg !146
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !146
  %20 = getelementptr inbounds %struct.__va_list_tag* %19, i32 0, i32 0, !dbg !146
  %21 = load i32* %20, align 8, !dbg !146
  %22 = add i32 %21, 8, !dbg !146
  %23 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !146
  %24 = getelementptr inbounds %struct.__va_list_tag* %23, i32 0, i32 0, !dbg !146
  store i32 %22, i32* %24, align 8, !dbg !146
  br label %bb5, !dbg !146

bb4:                                              ; preds = %bb
  %25 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !146
  %26 = getelementptr inbounds %struct.__va_list_tag* %25, i32 0, i32 2, !dbg !146
  %27 = load i8** %26, align 8, !dbg !146
  store i8* %27, i8** %addr.0, align 8, !dbg !146
  %28 = getelementptr inbounds i8* %27, i64 8, !dbg !146
  %29 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !146
  %30 = getelementptr inbounds %struct.__va_list_tag* %29, i32 0, i32 2, !dbg !146
  store i8* %28, i8** %30, align 8, !dbg !146
  br label %bb5, !dbg !146

bb5:                                              ; preds = %bb4, %bb3
  %31 = load i8** %addr.0, align 8, !dbg !146
  %32 = bitcast i8* %31 to i32*, !dbg !146
  %33 = load i32* %32, align 4, !dbg !146
  store i32 %33, i32* %mode, align 4, !dbg !146
  %ap6 = bitcast [1 x %struct.__va_list_tag]* %ap to %struct.__va_list_tag*, !dbg !147
  %ap67 = bitcast %struct.__va_list_tag* %ap6 to i8*, !dbg !147
  call void @llvm.va_end(i8* %ap67), !dbg !147
  br label %bb8, !dbg !147

bb8:                                              ; preds = %bb5, %entry
  %34 = load i8** %pathname_addr, align 8, !dbg !148
  %35 = load i32* %flags_addr, align 4, !dbg !148
  %36 = load i32* %mode, align 4, !dbg !148
  %37 = call i32 @__fd_open(i8* %34, i32 %35, i32 %36) nounwind, !dbg !148
  store i32 %37, i32* %0, align 4, !dbg !148
  %38 = load i32* %0, align 4, !dbg !148
  store i32 %38, i32* %retval, align 4, !dbg !148
  br label %return, !dbg !148

return:                                           ; preds = %bb8
  %retval9 = load i32* %retval, !dbg !148
  ret i32 %retval9, !dbg !148
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare void @llvm.va_start(i8*) nounwind

declare void @llvm.va_end(i8*) nounwind

declare i32 @__fd_open(i8*, i32, i32)

define i64 @"\01lseek64"(i32 %fd, i64 %offset, i32 %whence) nounwind {
entry:
  %fd_addr = alloca i32, align 4
  %offset_addr = alloca i64, align 8
  %whence_addr = alloca i32, align 4
  %retval = alloca i64
  %0 = alloca i64
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i32* %fd_addr}, metadata !149), !dbg !150
  store i32 %fd, i32* %fd_addr
  call void @llvm.dbg.declare(metadata !{i64* %offset_addr}, metadata !151), !dbg !150
  store i64 %offset, i64* %offset_addr
  call void @llvm.dbg.declare(metadata !{i32* %whence_addr}, metadata !153), !dbg !150
  store i32 %whence, i32* %whence_addr
  %1 = load i32* %fd_addr, align 4, !dbg !154
  %2 = load i64* %offset_addr, align 8, !dbg !154
  %3 = load i32* %whence_addr, align 4, !dbg !154
  %4 = call i64 @__fd_lseek(i32 %1, i64 %2, i32 %3) nounwind, !dbg !154
  store i64 %4, i64* %0, align 8, !dbg !154
  %5 = load i64* %0, align 8, !dbg !154
  store i64 %5, i64* %retval, align 8, !dbg !154
  br label %return, !dbg !154

return:                                           ; preds = %entry
  %retval1 = load i64* %retval, !dbg !154
  ret i64 %retval1, !dbg !154
}

declare i64 @__fd_lseek(i32, i64, i32)

define i32 @"\01__xstat64"(i32 %vers, i8* %path, %struct.stat* %buf) nounwind {
entry:
  %vers_addr = alloca i32, align 4
  %path_addr = alloca i8*, align 8
  %buf_addr = alloca %struct.stat*, align 8
  %retval = alloca i32
  %0 = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i32* %vers_addr}, metadata !156), !dbg !157
  store i32 %vers, i32* %vers_addr
  call void @llvm.dbg.declare(metadata !{i8** %path_addr}, metadata !158), !dbg !157
  store i8* %path, i8** %path_addr
  call void @llvm.dbg.declare(metadata !{%struct.stat** %buf_addr}, metadata !159), !dbg !157
  store %struct.stat* %buf, %struct.stat** %buf_addr
  %1 = load %struct.stat** %buf_addr, align 8, !dbg !160
  %2 = load i8** %path_addr, align 8, !dbg !160
  %3 = call i32 @__fd_stat(i8* %2, %struct.stat* %1) nounwind, !dbg !160
  store i32 %3, i32* %0, align 4, !dbg !160
  %4 = load i32* %0, align 4, !dbg !160
  store i32 %4, i32* %retval, align 4, !dbg !160
  br label %return, !dbg !160

return:                                           ; preds = %entry
  %retval1 = load i32* %retval, !dbg !160
  ret i32 %retval1, !dbg !160
}

declare i32 @__fd_stat(i8*, %struct.stat*)

define i32 @"\01stat64"(i8* %path, %struct.stat* %buf) nounwind {
entry:
  %path_addr = alloca i8*, align 8
  %buf_addr = alloca %struct.stat*, align 8
  %retval = alloca i32
  %0 = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i8** %path_addr}, metadata !162), !dbg !163
  store i8* %path, i8** %path_addr
  call void @llvm.dbg.declare(metadata !{%struct.stat** %buf_addr}, metadata !164), !dbg !163
  store %struct.stat* %buf, %struct.stat** %buf_addr
  %1 = load %struct.stat** %buf_addr, align 8, !dbg !165
  %2 = load i8** %path_addr, align 8, !dbg !165
  %3 = call i32 @__fd_stat(i8* %2, %struct.stat* %1) nounwind, !dbg !165
  store i32 %3, i32* %0, align 4, !dbg !165
  %4 = load i32* %0, align 4, !dbg !165
  store i32 %4, i32* %retval, align 4, !dbg !165
  br label %return, !dbg !165

return:                                           ; preds = %entry
  %retval1 = load i32* %retval, !dbg !165
  ret i32 %retval1, !dbg !165
}

define i32 @"\01__lxstat64"(i32 %vers, i8* %path, %struct.stat* %buf) nounwind {
entry:
  %vers_addr = alloca i32, align 4
  %path_addr = alloca i8*, align 8
  %buf_addr = alloca %struct.stat*, align 8
  %retval = alloca i32
  %0 = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i32* %vers_addr}, metadata !167), !dbg !168
  store i32 %vers, i32* %vers_addr
  call void @llvm.dbg.declare(metadata !{i8** %path_addr}, metadata !169), !dbg !168
  store i8* %path, i8** %path_addr
  call void @llvm.dbg.declare(metadata !{%struct.stat** %buf_addr}, metadata !170), !dbg !168
  store %struct.stat* %buf, %struct.stat** %buf_addr
  %1 = load %struct.stat** %buf_addr, align 8, !dbg !171
  %2 = load i8** %path_addr, align 8, !dbg !171
  %3 = call i32 @__fd_lstat(i8* %2, %struct.stat* %1) nounwind, !dbg !171
  store i32 %3, i32* %0, align 4, !dbg !171
  %4 = load i32* %0, align 4, !dbg !171
  store i32 %4, i32* %retval, align 4, !dbg !171
  br label %return, !dbg !171

return:                                           ; preds = %entry
  %retval1 = load i32* %retval, !dbg !171
  ret i32 %retval1, !dbg !171
}

declare i32 @__fd_lstat(i8*, %struct.stat*)

define i32 @"\01lstat64"(i8* %path, %struct.stat* %buf) nounwind {
entry:
  %path_addr = alloca i8*, align 8
  %buf_addr = alloca %struct.stat*, align 8
  %retval = alloca i32
  %0 = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i8** %path_addr}, metadata !173), !dbg !174
  store i8* %path, i8** %path_addr
  call void @llvm.dbg.declare(metadata !{%struct.stat** %buf_addr}, metadata !175), !dbg !174
  store %struct.stat* %buf, %struct.stat** %buf_addr
  %1 = load %struct.stat** %buf_addr, align 8, !dbg !176
  %2 = load i8** %path_addr, align 8, !dbg !176
  %3 = call i32 @__fd_lstat(i8* %2, %struct.stat* %1) nounwind, !dbg !176
  store i32 %3, i32* %0, align 4, !dbg !176
  %4 = load i32* %0, align 4, !dbg !176
  store i32 %4, i32* %retval, align 4, !dbg !176
  br label %return, !dbg !176

return:                                           ; preds = %entry
  %retval1 = load i32* %retval, !dbg !176
  ret i32 %retval1, !dbg !176
}

define i32 @"\01__fxstat64"(i32 %vers, i32 %fd, %struct.stat* %buf) nounwind {
entry:
  %vers_addr = alloca i32, align 4
  %fd_addr = alloca i32, align 4
  %buf_addr = alloca %struct.stat*, align 8
  %retval = alloca i32
  %0 = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i32* %vers_addr}, metadata !178), !dbg !179
  store i32 %vers, i32* %vers_addr
  call void @llvm.dbg.declare(metadata !{i32* %fd_addr}, metadata !180), !dbg !179
  store i32 %fd, i32* %fd_addr
  call void @llvm.dbg.declare(metadata !{%struct.stat** %buf_addr}, metadata !181), !dbg !179
  store %struct.stat* %buf, %struct.stat** %buf_addr
  %1 = load %struct.stat** %buf_addr, align 8, !dbg !182
  %2 = load i32* %fd_addr, align 4, !dbg !182
  %3 = call i32 @__fd_fstat(i32 %2, %struct.stat* %1) nounwind, !dbg !182
  store i32 %3, i32* %0, align 4, !dbg !182
  %4 = load i32* %0, align 4, !dbg !182
  store i32 %4, i32* %retval, align 4, !dbg !182
  br label %return, !dbg !182

return:                                           ; preds = %entry
  %retval1 = load i32* %retval, !dbg !182
  ret i32 %retval1, !dbg !182
}

declare i32 @__fd_fstat(i32, %struct.stat*)

define i32 @"\01fstat64"(i32 %fd, %struct.stat* %buf) nounwind {
entry:
  %fd_addr = alloca i32, align 4
  %buf_addr = alloca %struct.stat*, align 8
  %retval = alloca i32
  %0 = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i32* %fd_addr}, metadata !184), !dbg !185
  store i32 %fd, i32* %fd_addr
  call void @llvm.dbg.declare(metadata !{%struct.stat** %buf_addr}, metadata !186), !dbg !185
  store %struct.stat* %buf, %struct.stat** %buf_addr
  %1 = load %struct.stat** %buf_addr, align 8, !dbg !187
  %2 = load i32* %fd_addr, align 4, !dbg !187
  %3 = call i32 @__fd_fstat(i32 %2, %struct.stat* %1) nounwind, !dbg !187
  store i32 %3, i32* %0, align 4, !dbg !187
  %4 = load i32* %0, align 4, !dbg !187
  store i32 %4, i32* %retval, align 4, !dbg !187
  br label %return, !dbg !187

return:                                           ; preds = %entry
  %retval1 = load i32* %retval, !dbg !187
  ret i32 %retval1, !dbg !187
}

define i32 @ftruncate64(i32 %fd, i64 %length) nounwind {
entry:
  %fd_addr = alloca i32, align 4
  %length_addr = alloca i64, align 8
  %retval = alloca i32
  %0 = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i32* %fd_addr}, metadata !189), !dbg !190
  store i32 %fd, i32* %fd_addr
  call void @llvm.dbg.declare(metadata !{i64* %length_addr}, metadata !191), !dbg !190
  store i64 %length, i64* %length_addr
  %1 = load i32* %fd_addr, align 4, !dbg !192
  %2 = load i64* %length_addr, align 8, !dbg !192
  %3 = call i32 @__fd_ftruncate(i32 %1, i64 %2) nounwind, !dbg !192
  store i32 %3, i32* %0, align 4, !dbg !192
  %4 = load i32* %0, align 4, !dbg !192
  store i32 %4, i32* %retval, align 4, !dbg !192
  br label %return, !dbg !192

return:                                           ; preds = %entry
  %retval1 = load i32* %retval, !dbg !192
  ret i32 %retval1, !dbg !192
}

declare i32 @__fd_ftruncate(i32, i64)

define weak i32 @"\01statfs64"(i8* %path, %struct.statfs* %buf) nounwind {
entry:
  %path_addr = alloca i8*, align 8
  %buf_addr = alloca %struct.statfs*, align 8
  %retval = alloca i32
  %0 = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i8** %path_addr}, metadata !194), !dbg !195
  store i8* %path, i8** %path_addr
  call void @llvm.dbg.declare(metadata !{%struct.statfs** %buf_addr}, metadata !196), !dbg !195
  store %struct.statfs* %buf, %struct.statfs** %buf_addr
  %1 = load i8** %path_addr, align 8, !dbg !197
  %2 = load %struct.statfs** %buf_addr, align 8, !dbg !197
  %3 = call i32 @__fd_statfs(i8* %1, %struct.statfs* %2) nounwind, !dbg !197
  store i32 %3, i32* %0, align 4, !dbg !197
  %4 = load i32* %0, align 4, !dbg !197
  store i32 %4, i32* %retval, align 4, !dbg !197
  br label %return, !dbg !197

return:                                           ; preds = %entry
  %retval1 = load i32* %retval, !dbg !197
  ret i32 %retval1, !dbg !197
}

declare i32 @__fd_statfs(i8*, %struct.statfs*)

define i32 @getdents64(i32 %fd, %struct.dirent* %dirp, i32 %count) nounwind {
entry:
  %fd_addr = alloca i32, align 4
  %dirp_addr = alloca %struct.dirent*, align 8
  %count_addr = alloca i32, align 4
  %retval = alloca i32
  %0 = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i32* %fd_addr}, metadata !199), !dbg !200
  store i32 %fd, i32* %fd_addr
  call void @llvm.dbg.declare(metadata !{%struct.dirent** %dirp_addr}, metadata !201), !dbg !200
  store %struct.dirent* %dirp, %struct.dirent** %dirp_addr
  call void @llvm.dbg.declare(metadata !{i32* %count_addr}, metadata !202), !dbg !200
  store i32 %count, i32* %count_addr
  %1 = load %struct.dirent** %dirp_addr, align 8, !dbg !203
  %2 = load i32* %fd_addr, align 4, !dbg !203
  %3 = load i32* %count_addr, align 4, !dbg !203
  %4 = call i32 @__fd_getdents(i32 %2, %struct.dirent* %1, i32 %3) nounwind, !dbg !203
  store i32 %4, i32* %0, align 4, !dbg !203
  %5 = load i32* %0, align 4, !dbg !203
  store i32 %5, i32* %retval, align 4, !dbg !203
  br label %return, !dbg !203

return:                                           ; preds = %entry
  %retval1 = load i32* %retval, !dbg !203
  ret i32 %retval1, !dbg !203
}

declare i32 @__fd_getdents(i32, %struct.dirent*, i32)

!llvm.dbg.sp = !{!0, !9, !15, !57, !60, !61, !62, !65, !68, !71, !102}

!0 = metadata !{i32 589870, i32 0, metadata !1, metadata !"open", metadata !"open", metadata !"\01open64", metadata !1, i32 35, metadata !3, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, i32, ...)* @"\01open64"} ; [ DW_TAG_subprogram ]
!1 = metadata !{i32 589865, metadata !"fd_64.c", metadata !"/home/tyu/Documents/bugredx/klee2.9/runtime/POSIX/", metadata !2} ; [ DW_TAG_file_type ]
!2 = metadata !{i32 589841, i32 0, i32 1, metadata !"fd_64.c", metadata !"/home/tyu/Documents/bugredx/klee2.9/runtime/POSIX/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!3 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !4, i32 0, null} ; [ DW_TAG_subroutine_type ]
!4 = metadata !{metadata !5, metadata !6, metadata !5}
!5 = metadata !{i32 589860, metadata !1, metadata !"int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!6 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !7} ; [ DW_TAG_pointer_type ]
!7 = metadata !{i32 589862, metadata !1, metadata !"", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !8} ; [ DW_TAG_const_type ]
!8 = metadata !{i32 589860, metadata !1, metadata !"char", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!9 = metadata !{i32 589870, i32 0, metadata !1, metadata !"lseek", metadata !"lseek", metadata !"\01lseek64", metadata !1, i32 49, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i32, i64, i32)* @"\01lseek64"} ; [ DW_TAG_subprogram ]
!10 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null} ; [ DW_TAG_subroutine_type ]
!11 = metadata !{metadata !12, metadata !5, metadata !12, metadata !5}
!12 = metadata !{i32 589846, metadata !13, metadata !"__off64_t", metadata !13, i32 142, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_typedef ]
!13 = metadata !{i32 589865, metadata !"types.h", metadata !"/usr/include/bits", metadata !2} ; [ DW_TAG_file_type ]
!14 = metadata !{i32 589860, metadata !1, metadata !"long int", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!15 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__xstat", metadata !"__xstat", metadata !"\01__xstat64", metadata !1, i32 53, metadata !16, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i8*, %struct.stat*)* @"\01__xstat64"} ; [ DW_TAG_subprogram ]
!16 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !17, i32 0, null} ; [ DW_TAG_subroutine_type ]
!17 = metadata !{metadata !5, metadata !5, metadata !6, metadata !18}
!18 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !19} ; [ DW_TAG_pointer_type ]
!19 = metadata !{i32 589843, metadata !1, metadata !"stat", metadata !20, i32 47, i64 1152, i64 64, i64 0, i32 0, null, metadata !21, i32 0, null} ; [ DW_TAG_structure_type ]
!20 = metadata !{i32 589865, metadata !"stat.h", metadata !"/usr/include/bits", metadata !2} ; [ DW_TAG_file_type ]
!21 = metadata !{metadata !22, metadata !25, metadata !27, metadata !29, metadata !32, metadata !34, metadata !36, metadata !37, metadata !38, metadata !40, metadata !42, metadata !44, metadata !51, metadata !52, metadata !53}
!22 = metadata !{i32 589837, metadata !19, metadata !"st_dev", metadata !20, i32 48, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_member ]
!23 = metadata !{i32 589846, metadata !13, metadata !"__dev_t", metadata !13, i32 134, i64 0, i64 0, i64 0, i32 0, metadata !24} ; [ DW_TAG_typedef ]
!24 = metadata !{i32 589860, metadata !1, metadata !"long unsigned int", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!25 = metadata !{i32 589837, metadata !19, metadata !"st_ino", metadata !20, i32 53, i64 64, i64 64, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ]
!26 = metadata !{i32 589846, metadata !13, metadata !"__ino_t", metadata !13, i32 137, i64 0, i64 0, i64 0, i32 0, metadata !24} ; [ DW_TAG_typedef ]
!27 = metadata !{i32 589837, metadata !19, metadata !"st_nlink", metadata !20, i32 61, i64 64, i64 64, i64 128, i32 0, metadata !28} ; [ DW_TAG_member ]
!28 = metadata !{i32 589846, metadata !13, metadata !"__nlink_t", metadata !13, i32 140, i64 0, i64 0, i64 0, i32 0, metadata !24} ; [ DW_TAG_typedef ]
!29 = metadata !{i32 589837, metadata !19, metadata !"st_mode", metadata !20, i32 62, i64 32, i64 32, i64 192, i32 0, metadata !30} ; [ DW_TAG_member ]
!30 = metadata !{i32 589846, metadata !13, metadata !"__mode_t", metadata !13, i32 139, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ]
!31 = metadata !{i32 589860, metadata !1, metadata !"unsigned int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!32 = metadata !{i32 589837, metadata !19, metadata !"st_uid", metadata !20, i32 64, i64 32, i64 32, i64 224, i32 0, metadata !33} ; [ DW_TAG_member ]
!33 = metadata !{i32 589846, metadata !13, metadata !"__uid_t", metadata !13, i32 135, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ]
!34 = metadata !{i32 589837, metadata !19, metadata !"st_gid", metadata !20, i32 65, i64 32, i64 32, i64 256, i32 0, metadata !35} ; [ DW_TAG_member ]
!35 = metadata !{i32 589846, metadata !13, metadata !"__gid_t", metadata !13, i32 136, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ]
!36 = metadata !{i32 589837, metadata !19, metadata !"__pad0", metadata !20, i32 67, i64 32, i64 32, i64 288, i32 0, metadata !5} ; [ DW_TAG_member ]
!37 = metadata !{i32 589837, metadata !19, metadata !"st_rdev", metadata !20, i32 69, i64 64, i64 64, i64 320, i32 0, metadata !23} ; [ DW_TAG_member ]
!38 = metadata !{i32 589837, metadata !19, metadata !"st_size", metadata !20, i32 74, i64 64, i64 64, i64 384, i32 0, metadata !39} ; [ DW_TAG_member ]
!39 = metadata !{i32 589846, metadata !13, metadata !"__off_t", metadata !13, i32 141, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_typedef ]
!40 = metadata !{i32 589837, metadata !19, metadata !"st_blksize", metadata !20, i32 78, i64 64, i64 64, i64 448, i32 0, metadata !41} ; [ DW_TAG_member ]
!41 = metadata !{i32 589846, metadata !13, metadata !"__blksize_t", metadata !13, i32 164, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_typedef ]
!42 = metadata !{i32 589837, metadata !19, metadata !"st_blocks", metadata !20, i32 80, i64 64, i64 64, i64 512, i32 0, metadata !43} ; [ DW_TAG_member ]
!43 = metadata !{i32 589846, metadata !13, metadata !"__blkcnt_t", metadata !13, i32 169, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_typedef ]
!44 = metadata !{i32 589837, metadata !19, metadata !"st_atim", metadata !20, i32 91, i64 128, i64 64, i64 576, i32 0, metadata !45} ; [ DW_TAG_member ]
!45 = metadata !{i32 589843, metadata !1, metadata !"timespec", metadata !46, i32 121, i64 128, i64 64, i64 0, i32 0, null, metadata !47, i32 0, null} ; [ DW_TAG_structure_type ]
!46 = metadata !{i32 589865, metadata !"time.h", metadata !"/usr/include", metadata !2} ; [ DW_TAG_file_type ]
!47 = metadata !{metadata !48, metadata !50}
!48 = metadata !{i32 589837, metadata !45, metadata !"tv_sec", metadata !46, i32 122, i64 64, i64 64, i64 0, i32 0, metadata !49} ; [ DW_TAG_member ]
!49 = metadata !{i32 589846, metadata !13, metadata !"__time_t", metadata !13, i32 149, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_typedef ]
!50 = metadata !{i32 589837, metadata !45, metadata !"tv_nsec", metadata !46, i32 123, i64 64, i64 64, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ]
!51 = metadata !{i32 589837, metadata !19, metadata !"st_mtim", metadata !20, i32 92, i64 128, i64 64, i64 704, i32 0, metadata !45} ; [ DW_TAG_member ]
!52 = metadata !{i32 589837, metadata !19, metadata !"st_ctim", metadata !20, i32 93, i64 128, i64 64, i64 832, i32 0, metadata !45} ; [ DW_TAG_member ]
!53 = metadata !{i32 589837, metadata !19, metadata !"__unused", metadata !20, i32 106, i64 192, i64 64, i64 960, i32 0, metadata !54} ; [ DW_TAG_member ]
!54 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 192, i64 64, i64 0, i32 0, metadata !14, metadata !55, i32 0, null} ; [ DW_TAG_array_type ]
!55 = metadata !{metadata !56}
!56 = metadata !{i32 589857, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!57 = metadata !{i32 589870, i32 0, metadata !1, metadata !"stat", metadata !"stat", metadata !"\01stat64", metadata !1, i32 57, metadata !58, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, %struct.stat*)* @"\01stat64"} ; [ DW_TAG_subprogram ]
!58 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !59, i32 0, null} ; [ DW_TAG_subroutine_type ]
!59 = metadata !{metadata !5, metadata !6, metadata !18}
!60 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__lxstat", metadata !"__lxstat", metadata !"\01__lxstat64", metadata !1, i32 61, metadata !16, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i8*, %struct.stat*)* @"\01__lxstat64"} ; [ DW_TAG_subprogram ]
!61 = metadata !{i32 589870, i32 0, metadata !1, metadata !"lstat", metadata !"lstat", metadata !"\01lstat64", metadata !1, i32 65, metadata !58, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, %struct.stat*)* @"\01lstat64"} ; [ DW_TAG_subprogram ]
!62 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fxstat", metadata !"__fxstat", metadata !"\01__fxstat64", metadata !1, i32 69, metadata !63, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32, %struct.stat*)* @"\01__fxstat64"} ; [ DW_TAG_subprogram ]
!63 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !64, i32 0, null} ; [ DW_TAG_subroutine_type ]
!64 = metadata !{metadata !5, metadata !5, metadata !5, metadata !18}
!65 = metadata !{i32 589870, i32 0, metadata !1, metadata !"fstat", metadata !"fstat", metadata !"\01fstat64", metadata !1, i32 73, metadata !66, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, %struct.stat*)* @"\01fstat64"} ; [ DW_TAG_subprogram ]
!66 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !67, i32 0, null} ; [ DW_TAG_subroutine_type ]
!67 = metadata !{metadata !5, metadata !5, metadata !18}
!68 = metadata !{i32 589870, i32 0, metadata !1, metadata !"ftruncate64", metadata !"ftruncate64", metadata !"ftruncate64", metadata !1, i32 77, metadata !69, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i64)* @ftruncate64} ; [ DW_TAG_subprogram ]
!69 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !70, i32 0, null} ; [ DW_TAG_subroutine_type ]
!70 = metadata !{metadata !5, metadata !5, metadata !12}
!71 = metadata !{i32 589870, i32 0, metadata !1, metadata !"statfs", metadata !"statfs", metadata !"\01statfs64", metadata !1, i32 82, metadata !72, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, %struct.statfs*)* @"\01statfs64"} ; [ DW_TAG_subprogram ]
!72 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !73, i32 0, null} ; [ DW_TAG_subroutine_type ]
!73 = metadata !{metadata !5, metadata !6, metadata !74}
!74 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !75} ; [ DW_TAG_pointer_type ]
!75 = metadata !{i32 589843, metadata !1, metadata !"statfs", metadata !76, i32 26, i64 960, i64 64, i64 0, i32 0, null, metadata !77, i32 0, null} ; [ DW_TAG_structure_type ]
!76 = metadata !{i32 589865, metadata !"statfs.h", metadata !"/usr/include/bits", metadata !2} ; [ DW_TAG_file_type ]
!77 = metadata !{metadata !78, metadata !79, metadata !80, metadata !82, metadata !83, metadata !84, metadata !86, metadata !87, metadata !95, metadata !96, metadata !97, metadata !98}
!78 = metadata !{i32 589837, metadata !75, metadata !"f_type", metadata !76, i32 27, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ]
!79 = metadata !{i32 589837, metadata !75, metadata !"f_bsize", metadata !76, i32 28, i64 64, i64 64, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ]
!80 = metadata !{i32 589837, metadata !75, metadata !"f_blocks", metadata !76, i32 36, i64 64, i64 64, i64 128, i32 0, metadata !81} ; [ DW_TAG_member ]
!81 = metadata !{i32 589846, metadata !13, metadata !"__fsblkcnt64_t", metadata !13, i32 174, i64 0, i64 0, i64 0, i32 0, metadata !24} ; [ DW_TAG_typedef ]
!82 = metadata !{i32 589837, metadata !75, metadata !"f_bfree", metadata !76, i32 37, i64 64, i64 64, i64 192, i32 0, metadata !81} ; [ DW_TAG_member ]
!83 = metadata !{i32 589837, metadata !75, metadata !"f_bavail", metadata !76, i32 38, i64 64, i64 64, i64 256, i32 0, metadata !81} ; [ DW_TAG_member ]
!84 = metadata !{i32 589837, metadata !75, metadata !"f_files", metadata !76, i32 39, i64 64, i64 64, i64 320, i32 0, metadata !85} ; [ DW_TAG_member ]
!85 = metadata !{i32 589846, metadata !13, metadata !"__fsfilcnt64_t", metadata !13, i32 178, i64 0, i64 0, i64 0, i32 0, metadata !24} ; [ DW_TAG_typedef ]
!86 = metadata !{i32 589837, metadata !75, metadata !"f_ffree", metadata !76, i32 40, i64 64, i64 64, i64 384, i32 0, metadata !85} ; [ DW_TAG_member ]
!87 = metadata !{i32 589837, metadata !75, metadata !"f_fsid", metadata !76, i32 42, i64 64, i64 32, i64 448, i32 0, metadata !88} ; [ DW_TAG_member ]
!88 = metadata !{i32 589846, metadata !13, metadata !"__fsid_t", metadata !13, i32 144, i64 0, i64 0, i64 0, i32 0, metadata !89} ; [ DW_TAG_typedef ]
!89 = metadata !{i32 589843, metadata !1, metadata !"", metadata !13, i32 144, i64 64, i64 32, i64 0, i32 0, null, metadata !90, i32 0, null} ; [ DW_TAG_structure_type ]
!90 = metadata !{metadata !91}
!91 = metadata !{i32 589837, metadata !89, metadata !"__val", metadata !13, i32 144, i64 64, i64 32, i64 0, i32 0, metadata !92} ; [ DW_TAG_member ]
!92 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 32, i64 0, i32 0, metadata !5, metadata !93, i32 0, null} ; [ DW_TAG_array_type ]
!93 = metadata !{metadata !94}
!94 = metadata !{i32 589857, i64 0, i64 1}        ; [ DW_TAG_subrange_type ]
!95 = metadata !{i32 589837, metadata !75, metadata !"f_namelen", metadata !76, i32 43, i64 64, i64 64, i64 512, i32 0, metadata !14} ; [ DW_TAG_member ]
!96 = metadata !{i32 589837, metadata !75, metadata !"f_frsize", metadata !76, i32 44, i64 64, i64 64, i64 576, i32 0, metadata !14} ; [ DW_TAG_member ]
!97 = metadata !{i32 589837, metadata !75, metadata !"f_flags", metadata !76, i32 45, i64 64, i64 64, i64 640, i32 0, metadata !14} ; [ DW_TAG_member ]
!98 = metadata !{i32 589837, metadata !75, metadata !"f_spare", metadata !76, i32 46, i64 256, i64 64, i64 704, i32 0, metadata !99} ; [ DW_TAG_member ]
!99 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 256, i64 64, i64 0, i32 0, metadata !14, metadata !100, i32 0, null} ; [ DW_TAG_array_type ]
!100 = metadata !{metadata !101}
!101 = metadata !{i32 589857, i64 0, i64 3}       ; [ DW_TAG_subrange_type ]
!102 = metadata !{i32 589870, i32 0, metadata !1, metadata !"getdents64", metadata !"getdents64", metadata !"getdents64", metadata !1, i32 86, metadata !103, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, %struct.dirent*, i32)* @getdents64} ; [ DW_TAG_subprogram ]
!103 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !104, i32 0, null} ; [ DW_TAG_subroutine_type ]
!104 = metadata !{metadata !5, metadata !31, metadata !105, metadata !31}
!105 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !106} ; [ DW_TAG_pointer_type ]
!106 = metadata !{i32 589843, metadata !1, metadata !"dirent", metadata !107, i32 24, i64 2240, i64 64, i64 0, i32 0, null, metadata !108, i32 0, null} ; [ DW_TAG_structure_type ]
!107 = metadata !{i32 589865, metadata !"dirent.h", metadata !"/usr/include/bits", metadata !2} ; [ DW_TAG_file_type ]
!108 = metadata !{metadata !109, metadata !111, metadata !112, metadata !114, metadata !116}
!109 = metadata !{i32 589837, metadata !106, metadata !"d_ino", metadata !107, i32 29, i64 64, i64 64, i64 0, i32 0, metadata !110} ; [ DW_TAG_member ]
!110 = metadata !{i32 589846, metadata !13, metadata !"__ino64_t", metadata !13, i32 138, i64 0, i64 0, i64 0, i32 0, metadata !24} ; [ DW_TAG_typedef ]
!111 = metadata !{i32 589837, metadata !106, metadata !"d_off", metadata !107, i32 30, i64 64, i64 64, i64 64, i32 0, metadata !12} ; [ DW_TAG_member ]
!112 = metadata !{i32 589837, metadata !106, metadata !"d_reclen", metadata !107, i32 32, i64 16, i64 16, i64 128, i32 0, metadata !113} ; [ DW_TAG_member ]
!113 = metadata !{i32 589860, metadata !1, metadata !"short unsigned int", metadata !1, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!114 = metadata !{i32 589837, metadata !106, metadata !"d_type", metadata !107, i32 33, i64 8, i64 8, i64 144, i32 0, metadata !115} ; [ DW_TAG_member ]
!115 = metadata !{i32 589860, metadata !1, metadata !"unsigned char", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!116 = metadata !{i32 589837, metadata !106, metadata !"d_name", metadata !107, i32 34, i64 2048, i64 8, i64 152, i32 0, metadata !117} ; [ DW_TAG_member ]
!117 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 2048, i64 8, i64 0, i32 0, metadata !8, metadata !118, i32 0, null} ; [ DW_TAG_array_type ]
!118 = metadata !{metadata !119}
!119 = metadata !{i32 589857, i64 0, i64 255}     ; [ DW_TAG_subrange_type ]
!120 = metadata !{i32 590081, metadata !0, metadata !"pathname", metadata !1, i32 35, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!121 = metadata !{i32 35, i32 0, metadata !0, null}
!122 = metadata !{i32 590081, metadata !0, metadata !"flags", metadata !1, i32 35, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!123 = metadata !{i32 590080, metadata !124, metadata !"mode", metadata !1, i32 36, metadata !125, i32 0} ; [ DW_TAG_auto_variable ]
!124 = metadata !{i32 589835, metadata !0, i32 35, i32 0, metadata !1, i32 0} ; [ DW_TAG_lexical_block ]
!125 = metadata !{i32 589846, metadata !126, metadata !"mode_t", metadata !126, i32 71, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ]
!126 = metadata !{i32 589865, metadata !"types.h", metadata !"/usr/include/sys", metadata !2} ; [ DW_TAG_file_type ]
!127 = metadata !{i32 36, i32 0, metadata !124, null}
!128 = metadata !{i32 38, i32 0, metadata !124, null}
!129 = metadata !{i32 590080, metadata !130, metadata !"ap", metadata !1, i32 40, metadata !131, i32 0} ; [ DW_TAG_auto_variable ]
!130 = metadata !{i32 589835, metadata !124, i32 41, i32 0, metadata !1, i32 1} ; [ DW_TAG_lexical_block ]
!131 = metadata !{i32 589846, metadata !132, metadata !"va_list", metadata !132, i32 80, i64 0, i64 0, i64 0, i32 0, metadata !133} ; [ DW_TAG_typedef ]
!132 = metadata !{i32 589865, metadata !"stdio.h", metadata !"/usr/include", metadata !2} ; [ DW_TAG_file_type ]
!133 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 192, i64 64, i64 0, i32 0, metadata !134, metadata !142, i32 0, null} ; [ DW_TAG_array_type ]
!134 = metadata !{i32 589843, metadata !1, metadata !"__va_list_tag", metadata !135, i32 0, i64 192, i64 64, i64 0, i32 0, null, metadata !136, i32 0, null} ; [ DW_TAG_structure_type ]
!135 = metadata !{i32 589865, metadata !"<built-in>", metadata !"/home/tyu/Documents/bugredx/klee2.9/runtime/POSIX/", metadata !2} ; [ DW_TAG_file_type ]
!136 = metadata !{metadata !137, metadata !138, metadata !139, metadata !141}
!137 = metadata !{i32 589837, metadata !134, metadata !"gp_offset", metadata !135, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !31} ; [ DW_TAG_member ]
!138 = metadata !{i32 589837, metadata !134, metadata !"fp_offset", metadata !135, i32 0, i64 32, i64 32, i64 32, i32 0, metadata !31} ; [ DW_TAG_member ]
!139 = metadata !{i32 589837, metadata !134, metadata !"overflow_arg_area", metadata !135, i32 0, i64 64, i64 64, i64 64, i32 0, metadata !140} ; [ DW_TAG_member ]
!140 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!141 = metadata !{i32 589837, metadata !134, metadata !"reg_save_area", metadata !135, i32 0, i64 64, i64 64, i64 128, i32 0, metadata !140} ; [ DW_TAG_member ]
!142 = metadata !{metadata !143}
!143 = metadata !{i32 589857, i64 0, i64 0}       ; [ DW_TAG_subrange_type ]
!144 = metadata !{i32 40, i32 0, metadata !130, null}
!145 = metadata !{i32 41, i32 0, metadata !130, null}
!146 = metadata !{i32 42, i32 0, metadata !130, null}
!147 = metadata !{i32 43, i32 0, metadata !130, null}
!148 = metadata !{i32 46, i32 0, metadata !124, null}
!149 = metadata !{i32 590081, metadata !9, metadata !"fd", metadata !1, i32 49, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!150 = metadata !{i32 49, i32 0, metadata !9, null}
!151 = metadata !{i32 590081, metadata !9, metadata !"offset", metadata !1, i32 49, metadata !152, i32 0} ; [ DW_TAG_arg_variable ]
!152 = metadata !{i32 589846, metadata !126, metadata !"off64_t", metadata !126, i32 94, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_typedef ]
!153 = metadata !{i32 590081, metadata !9, metadata !"whence", metadata !1, i32 49, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!154 = metadata !{i32 50, i32 0, metadata !155, null}
!155 = metadata !{i32 589835, metadata !9, i32 49, i32 0, metadata !1, i32 2} ; [ DW_TAG_lexical_block ]
!156 = metadata !{i32 590081, metadata !15, metadata !"vers", metadata !1, i32 53, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!157 = metadata !{i32 53, i32 0, metadata !15, null}
!158 = metadata !{i32 590081, metadata !15, metadata !"path", metadata !1, i32 53, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!159 = metadata !{i32 590081, metadata !15, metadata !"buf", metadata !1, i32 53, metadata !18, i32 0} ; [ DW_TAG_arg_variable ]
!160 = metadata !{i32 54, i32 0, metadata !161, null}
!161 = metadata !{i32 589835, metadata !15, i32 53, i32 0, metadata !1, i32 3} ; [ DW_TAG_lexical_block ]
!162 = metadata !{i32 590081, metadata !57, metadata !"path", metadata !1, i32 57, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!163 = metadata !{i32 57, i32 0, metadata !57, null}
!164 = metadata !{i32 590081, metadata !57, metadata !"buf", metadata !1, i32 57, metadata !18, i32 0} ; [ DW_TAG_arg_variable ]
!165 = metadata !{i32 58, i32 0, metadata !166, null}
!166 = metadata !{i32 589835, metadata !57, i32 57, i32 0, metadata !1, i32 4} ; [ DW_TAG_lexical_block ]
!167 = metadata !{i32 590081, metadata !60, metadata !"vers", metadata !1, i32 61, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!168 = metadata !{i32 61, i32 0, metadata !60, null}
!169 = metadata !{i32 590081, metadata !60, metadata !"path", metadata !1, i32 61, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!170 = metadata !{i32 590081, metadata !60, metadata !"buf", metadata !1, i32 61, metadata !18, i32 0} ; [ DW_TAG_arg_variable ]
!171 = metadata !{i32 62, i32 0, metadata !172, null}
!172 = metadata !{i32 589835, metadata !60, i32 61, i32 0, metadata !1, i32 5} ; [ DW_TAG_lexical_block ]
!173 = metadata !{i32 590081, metadata !61, metadata !"path", metadata !1, i32 65, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!174 = metadata !{i32 65, i32 0, metadata !61, null}
!175 = metadata !{i32 590081, metadata !61, metadata !"buf", metadata !1, i32 65, metadata !18, i32 0} ; [ DW_TAG_arg_variable ]
!176 = metadata !{i32 66, i32 0, metadata !177, null}
!177 = metadata !{i32 589835, metadata !61, i32 65, i32 0, metadata !1, i32 6} ; [ DW_TAG_lexical_block ]
!178 = metadata !{i32 590081, metadata !62, metadata !"vers", metadata !1, i32 69, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!179 = metadata !{i32 69, i32 0, metadata !62, null}
!180 = metadata !{i32 590081, metadata !62, metadata !"fd", metadata !1, i32 69, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!181 = metadata !{i32 590081, metadata !62, metadata !"buf", metadata !1, i32 69, metadata !18, i32 0} ; [ DW_TAG_arg_variable ]
!182 = metadata !{i32 70, i32 0, metadata !183, null}
!183 = metadata !{i32 589835, metadata !62, i32 69, i32 0, metadata !1, i32 7} ; [ DW_TAG_lexical_block ]
!184 = metadata !{i32 590081, metadata !65, metadata !"fd", metadata !1, i32 73, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!185 = metadata !{i32 73, i32 0, metadata !65, null}
!186 = metadata !{i32 590081, metadata !65, metadata !"buf", metadata !1, i32 73, metadata !18, i32 0} ; [ DW_TAG_arg_variable ]
!187 = metadata !{i32 74, i32 0, metadata !188, null}
!188 = metadata !{i32 589835, metadata !65, i32 73, i32 0, metadata !1, i32 8} ; [ DW_TAG_lexical_block ]
!189 = metadata !{i32 590081, metadata !68, metadata !"fd", metadata !1, i32 77, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!190 = metadata !{i32 77, i32 0, metadata !68, null}
!191 = metadata !{i32 590081, metadata !68, metadata !"length", metadata !1, i32 77, metadata !152, i32 0} ; [ DW_TAG_arg_variable ]
!192 = metadata !{i32 78, i32 0, metadata !193, null}
!193 = metadata !{i32 589835, metadata !68, i32 77, i32 0, metadata !1, i32 9} ; [ DW_TAG_lexical_block ]
!194 = metadata !{i32 590081, metadata !71, metadata !"path", metadata !1, i32 82, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!195 = metadata !{i32 82, i32 0, metadata !71, null}
!196 = metadata !{i32 590081, metadata !71, metadata !"buf", metadata !1, i32 82, metadata !74, i32 0} ; [ DW_TAG_arg_variable ]
!197 = metadata !{i32 83, i32 0, metadata !198, null}
!198 = metadata !{i32 589835, metadata !71, i32 82, i32 0, metadata !1, i32 10} ; [ DW_TAG_lexical_block ]
!199 = metadata !{i32 590081, metadata !102, metadata !"fd", metadata !1, i32 86, metadata !31, i32 0} ; [ DW_TAG_arg_variable ]
!200 = metadata !{i32 86, i32 0, metadata !102, null}
!201 = metadata !{i32 590081, metadata !102, metadata !"dirp", metadata !1, i32 86, metadata !105, i32 0} ; [ DW_TAG_arg_variable ]
!202 = metadata !{i32 590081, metadata !102, metadata !"count", metadata !1, i32 86, metadata !31, i32 0} ; [ DW_TAG_arg_variable ]
!203 = metadata !{i32 87, i32 0, metadata !204, null}
!204 = metadata !{i32 589835, metadata !102, i32 86, i32 0, metadata !1, i32 11} ; [ DW_TAG_lexical_block ]
