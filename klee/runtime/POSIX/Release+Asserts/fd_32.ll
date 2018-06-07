; ModuleID = 'fd_32.c'
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

@__getdents = alias i64 (i32, %struct.dirent*, i64)* @getdents

define internal void @__stat64_to_stat(%struct.stat* %a, %struct.stat* %b) nounwind {
entry:
  %a_addr = alloca %struct.stat*, align 8
  %b_addr = alloca %struct.stat*, align 8
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{%struct.stat** %a_addr}, metadata !158), !dbg !159
  store %struct.stat* %a, %struct.stat** %a_addr
  call void @llvm.dbg.declare(metadata !{%struct.stat** %b_addr}, metadata !160), !dbg !159
  store %struct.stat* %b, %struct.stat** %b_addr
  %0 = load %struct.stat** %a_addr, align 8, !dbg !161
  %1 = getelementptr inbounds %struct.stat* %0, i32 0, i32 0, !dbg !161
  %2 = load i64* %1, align 8, !dbg !161
  %3 = load %struct.stat** %b_addr, align 8, !dbg !161
  %4 = getelementptr inbounds %struct.stat* %3, i32 0, i32 0, !dbg !161
  store i64 %2, i64* %4, align 8, !dbg !161
  %5 = load %struct.stat** %a_addr, align 8, !dbg !163
  %6 = getelementptr inbounds %struct.stat* %5, i32 0, i32 1, !dbg !163
  %7 = load i64* %6, align 8, !dbg !163
  %8 = load %struct.stat** %b_addr, align 8, !dbg !163
  %9 = getelementptr inbounds %struct.stat* %8, i32 0, i32 1, !dbg !163
  store i64 %7, i64* %9, align 8, !dbg !163
  %10 = load %struct.stat** %a_addr, align 8, !dbg !164
  %11 = getelementptr inbounds %struct.stat* %10, i32 0, i32 3, !dbg !164
  %12 = load i32* %11, align 8, !dbg !164
  %13 = load %struct.stat** %b_addr, align 8, !dbg !164
  %14 = getelementptr inbounds %struct.stat* %13, i32 0, i32 3, !dbg !164
  store i32 %12, i32* %14, align 8, !dbg !164
  %15 = load %struct.stat** %a_addr, align 8, !dbg !165
  %16 = getelementptr inbounds %struct.stat* %15, i32 0, i32 2, !dbg !165
  %17 = load i64* %16, align 8, !dbg !165
  %18 = load %struct.stat** %b_addr, align 8, !dbg !165
  %19 = getelementptr inbounds %struct.stat* %18, i32 0, i32 2, !dbg !165
  store i64 %17, i64* %19, align 8, !dbg !165
  %20 = load %struct.stat** %a_addr, align 8, !dbg !166
  %21 = getelementptr inbounds %struct.stat* %20, i32 0, i32 4, !dbg !166
  %22 = load i32* %21, align 4, !dbg !166
  %23 = load %struct.stat** %b_addr, align 8, !dbg !166
  %24 = getelementptr inbounds %struct.stat* %23, i32 0, i32 4, !dbg !166
  store i32 %22, i32* %24, align 4, !dbg !166
  %25 = load %struct.stat** %a_addr, align 8, !dbg !167
  %26 = getelementptr inbounds %struct.stat* %25, i32 0, i32 5, !dbg !167
  %27 = load i32* %26, align 8, !dbg !167
  %28 = load %struct.stat** %b_addr, align 8, !dbg !167
  %29 = getelementptr inbounds %struct.stat* %28, i32 0, i32 5, !dbg !167
  store i32 %27, i32* %29, align 8, !dbg !167
  %30 = load %struct.stat** %a_addr, align 8, !dbg !168
  %31 = getelementptr inbounds %struct.stat* %30, i32 0, i32 7, !dbg !168
  %32 = load i64* %31, align 8, !dbg !168
  %33 = load %struct.stat** %b_addr, align 8, !dbg !168
  %34 = getelementptr inbounds %struct.stat* %33, i32 0, i32 7, !dbg !168
  store i64 %32, i64* %34, align 8, !dbg !168
  %35 = load %struct.stat** %a_addr, align 8, !dbg !169
  %36 = getelementptr inbounds %struct.stat* %35, i32 0, i32 8, !dbg !169
  %37 = load i64* %36, align 8, !dbg !169
  %38 = load %struct.stat** %b_addr, align 8, !dbg !169
  %39 = getelementptr inbounds %struct.stat* %38, i32 0, i32 8, !dbg !169
  store i64 %37, i64* %39, align 8, !dbg !169
  %40 = load %struct.stat** %a_addr, align 8, !dbg !170
  %41 = getelementptr inbounds %struct.stat* %40, i32 0, i32 11, !dbg !170
  %42 = getelementptr inbounds %struct.timespec* %41, i32 0, i32 0, !dbg !170
  %43 = load i64* %42, align 8, !dbg !170
  %44 = load %struct.stat** %b_addr, align 8, !dbg !170
  %45 = getelementptr inbounds %struct.stat* %44, i32 0, i32 11, !dbg !170
  %46 = getelementptr inbounds %struct.timespec* %45, i32 0, i32 0, !dbg !170
  store i64 %43, i64* %46, align 8, !dbg !170
  %47 = load %struct.stat** %a_addr, align 8, !dbg !171
  %48 = getelementptr inbounds %struct.stat* %47, i32 0, i32 12, !dbg !171
  %49 = getelementptr inbounds %struct.timespec* %48, i32 0, i32 0, !dbg !171
  %50 = load i64* %49, align 8, !dbg !171
  %51 = load %struct.stat** %b_addr, align 8, !dbg !171
  %52 = getelementptr inbounds %struct.stat* %51, i32 0, i32 12, !dbg !171
  %53 = getelementptr inbounds %struct.timespec* %52, i32 0, i32 0, !dbg !171
  store i64 %50, i64* %53, align 8, !dbg !171
  %54 = load %struct.stat** %a_addr, align 8, !dbg !172
  %55 = getelementptr inbounds %struct.stat* %54, i32 0, i32 13, !dbg !172
  %56 = getelementptr inbounds %struct.timespec* %55, i32 0, i32 0, !dbg !172
  %57 = load i64* %56, align 8, !dbg !172
  %58 = load %struct.stat** %b_addr, align 8, !dbg !172
  %59 = getelementptr inbounds %struct.stat* %58, i32 0, i32 13, !dbg !172
  %60 = getelementptr inbounds %struct.timespec* %59, i32 0, i32 0, !dbg !172
  store i64 %57, i64* %60, align 8, !dbg !172
  %61 = load %struct.stat** %a_addr, align 8, !dbg !173
  %62 = getelementptr inbounds %struct.stat* %61, i32 0, i32 9, !dbg !173
  %63 = load i64* %62, align 8, !dbg !173
  %64 = load %struct.stat** %b_addr, align 8, !dbg !173
  %65 = getelementptr inbounds %struct.stat* %64, i32 0, i32 9, !dbg !173
  store i64 %63, i64* %65, align 8, !dbg !173
  %66 = load %struct.stat** %a_addr, align 8, !dbg !174
  %67 = getelementptr inbounds %struct.stat* %66, i32 0, i32 10, !dbg !174
  %68 = load i64* %67, align 8, !dbg !174
  %69 = load %struct.stat** %b_addr, align 8, !dbg !174
  %70 = getelementptr inbounds %struct.stat* %69, i32 0, i32 10, !dbg !174
  store i64 %68, i64* %70, align 8, !dbg !174
  br label %return, !dbg !175

return:                                           ; preds = %entry
  ret void, !dbg !175
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define i32 @open(i8* %pathname, i32 %flags, ...) nounwind {
entry:
  %pathname_addr = alloca i8*, align 8
  %flags_addr = alloca i32, align 4
  %retval = alloca i32
  %0 = alloca i32
  %addr.0 = alloca i8*
  %mode = alloca i32
  %ap = alloca [1 x %struct.__va_list_tag]
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i8** %pathname_addr}, metadata !176), !dbg !177
  store i8* %pathname, i8** %pathname_addr
  call void @llvm.dbg.declare(metadata !{i32* %flags_addr}, metadata !178), !dbg !177
  store i32 %flags, i32* %flags_addr
  call void @llvm.dbg.declare(metadata !{i32* %mode}, metadata !179), !dbg !182
  store i32 0, i32* %mode, align 4, !dbg !182
  %1 = load i32* %flags_addr, align 4, !dbg !183
  %2 = and i32 %1, 64, !dbg !183
  %3 = icmp ne i32 %2, 0, !dbg !183
  br i1 %3, label %bb, label %bb8, !dbg !183

bb:                                               ; preds = %entry
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %ap}, metadata !184), !dbg !199
  %ap1 = bitcast [1 x %struct.__va_list_tag]* %ap to %struct.__va_list_tag*, !dbg !200
  %ap12 = bitcast %struct.__va_list_tag* %ap1 to i8*, !dbg !200
  call void @llvm.va_start(i8* %ap12), !dbg !200
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !201
  %5 = getelementptr inbounds %struct.__va_list_tag* %4, i32 0, i32 0, !dbg !201
  %6 = load i32* %5, align 8, !dbg !201
  %7 = icmp uge i32 %6, 48, !dbg !201
  br i1 %7, label %bb4, label %bb3, !dbg !201

bb3:                                              ; preds = %bb
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !201
  %9 = getelementptr inbounds %struct.__va_list_tag* %8, i32 0, i32 3, !dbg !201
  %10 = load i8** %9, align 8, !dbg !201
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !201
  %12 = getelementptr inbounds %struct.__va_list_tag* %11, i32 0, i32 0, !dbg !201
  %13 = load i32* %12, align 8, !dbg !201
  %14 = inttoptr i32 %13 to i8*, !dbg !201
  %15 = ptrtoint i8* %10 to i64, !dbg !201
  %16 = ptrtoint i8* %14 to i64, !dbg !201
  %17 = add i64 %15, %16, !dbg !201
  %18 = inttoptr i64 %17 to i8*, !dbg !201
  store i8* %18, i8** %addr.0, align 8, !dbg !201
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !201
  %20 = getelementptr inbounds %struct.__va_list_tag* %19, i32 0, i32 0, !dbg !201
  %21 = load i32* %20, align 8, !dbg !201
  %22 = add i32 %21, 8, !dbg !201
  %23 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !201
  %24 = getelementptr inbounds %struct.__va_list_tag* %23, i32 0, i32 0, !dbg !201
  store i32 %22, i32* %24, align 8, !dbg !201
  br label %bb5, !dbg !201

bb4:                                              ; preds = %bb
  %25 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !201
  %26 = getelementptr inbounds %struct.__va_list_tag* %25, i32 0, i32 2, !dbg !201
  %27 = load i8** %26, align 8, !dbg !201
  store i8* %27, i8** %addr.0, align 8, !dbg !201
  %28 = getelementptr inbounds i8* %27, i64 8, !dbg !201
  %29 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !201
  %30 = getelementptr inbounds %struct.__va_list_tag* %29, i32 0, i32 2, !dbg !201
  store i8* %28, i8** %30, align 8, !dbg !201
  br label %bb5, !dbg !201

bb5:                                              ; preds = %bb4, %bb3
  %31 = load i8** %addr.0, align 8, !dbg !201
  %32 = bitcast i8* %31 to i32*, !dbg !201
  %33 = load i32* %32, align 4, !dbg !201
  store i32 %33, i32* %mode, align 4, !dbg !201
  %ap6 = bitcast [1 x %struct.__va_list_tag]* %ap to %struct.__va_list_tag*, !dbg !202
  %ap67 = bitcast %struct.__va_list_tag* %ap6 to i8*, !dbg !202
  call void @llvm.va_end(i8* %ap67), !dbg !202
  br label %bb8, !dbg !202

bb8:                                              ; preds = %bb5, %entry
  %34 = load i8** %pathname_addr, align 8, !dbg !203
  %35 = load i32* %flags_addr, align 4, !dbg !203
  %36 = load i32* %mode, align 4, !dbg !203
  %37 = call i32 @__fd_open(i8* %34, i32 %35, i32 %36) nounwind, !dbg !203
  store i32 %37, i32* %0, align 4, !dbg !203
  %38 = load i32* %0, align 4, !dbg !203
  store i32 %38, i32* %retval, align 4, !dbg !203
  br label %return, !dbg !203

return:                                           ; preds = %bb8
  %retval9 = load i32* %retval, !dbg !203
  ret i32 %retval9, !dbg !203
}

declare void @llvm.va_start(i8*) nounwind

declare void @llvm.va_end(i8*) nounwind

declare i32 @__fd_open(i8*, i32, i32)

define i64 @lseek(i32 %fd, i64 %off, i32 %whence) nounwind {
entry:
  %fd_addr = alloca i32, align 4
  %off_addr = alloca i64, align 8
  %whence_addr = alloca i32, align 4
  %retval = alloca i64
  %0 = alloca i64
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i32* %fd_addr}, metadata !204), !dbg !205
  store i32 %fd, i32* %fd_addr
  call void @llvm.dbg.declare(metadata !{i64* %off_addr}, metadata !206), !dbg !205
  store i64 %off, i64* %off_addr
  call void @llvm.dbg.declare(metadata !{i32* %whence_addr}, metadata !208), !dbg !205
  store i32 %whence, i32* %whence_addr
  %1 = load i32* %fd_addr, align 4, !dbg !209
  %2 = load i64* %off_addr, align 8, !dbg !209
  %3 = load i32* %whence_addr, align 4, !dbg !209
  %4 = call i64 @__fd_lseek(i32 %1, i64 %2, i32 %3) nounwind, !dbg !209
  store i64 %4, i64* %0, align 8, !dbg !209
  %5 = load i64* %0, align 8, !dbg !209
  store i64 %5, i64* %retval, align 8, !dbg !209
  br label %return, !dbg !209

return:                                           ; preds = %entry
  %retval1 = load i64* %retval, !dbg !209
  ret i64 %retval1, !dbg !209
}

declare i64 @__fd_lseek(i32, i64, i32)

define i32 @__xstat(i32 %vers, i8* %path, %struct.stat* %buf) nounwind {
entry:
  %vers_addr = alloca i32, align 4
  %path_addr = alloca i8*, align 8
  %buf_addr = alloca %struct.stat*, align 8
  %retval = alloca i32
  %0 = alloca i32
  %tmp = alloca %struct.stat
  %res = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i32* %vers_addr}, metadata !211), !dbg !212
  store i32 %vers, i32* %vers_addr
  call void @llvm.dbg.declare(metadata !{i8** %path_addr}, metadata !213), !dbg !212
  store i8* %path, i8** %path_addr
  call void @llvm.dbg.declare(metadata !{%struct.stat** %buf_addr}, metadata !214), !dbg !212
  store %struct.stat* %buf, %struct.stat** %buf_addr
  call void @llvm.dbg.declare(metadata !{%struct.stat* %tmp}, metadata !215), !dbg !217
  call void @llvm.dbg.declare(metadata !{i32* %res}, metadata !218), !dbg !219
  %1 = load i8** %path_addr, align 8, !dbg !219
  %2 = call i32 @__fd_stat(i8* %1, %struct.stat* %tmp) nounwind, !dbg !219
  store i32 %2, i32* %res, align 4, !dbg !219
  %3 = load %struct.stat** %buf_addr, align 8, !dbg !220
  call void @__stat64_to_stat(%struct.stat* %tmp, %struct.stat* %3) nounwind, !dbg !220
  %4 = load i32* %res, align 4, !dbg !221
  store i32 %4, i32* %0, align 4, !dbg !221
  %5 = load i32* %0, align 4, !dbg !221
  store i32 %5, i32* %retval, align 4, !dbg !221
  br label %return, !dbg !221

return:                                           ; preds = %entry
  %retval1 = load i32* %retval, !dbg !221
  ret i32 %retval1, !dbg !221
}

declare i32 @__fd_stat(i8*, %struct.stat*)

define i32 @stat(i8* %path, %struct.stat* %buf) nounwind {
entry:
  %path_addr = alloca i8*, align 8
  %buf_addr = alloca %struct.stat*, align 8
  %retval = alloca i32
  %0 = alloca i32
  %tmp = alloca %struct.stat
  %res = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i8** %path_addr}, metadata !222), !dbg !223
  store i8* %path, i8** %path_addr
  call void @llvm.dbg.declare(metadata !{%struct.stat** %buf_addr}, metadata !224), !dbg !223
  store %struct.stat* %buf, %struct.stat** %buf_addr
  call void @llvm.dbg.declare(metadata !{%struct.stat* %tmp}, metadata !225), !dbg !227
  call void @llvm.dbg.declare(metadata !{i32* %res}, metadata !228), !dbg !229
  %1 = load i8** %path_addr, align 8, !dbg !229
  %2 = call i32 @__fd_stat(i8* %1, %struct.stat* %tmp) nounwind, !dbg !229
  store i32 %2, i32* %res, align 4, !dbg !229
  %3 = load %struct.stat** %buf_addr, align 8, !dbg !230
  call void @__stat64_to_stat(%struct.stat* %tmp, %struct.stat* %3) nounwind, !dbg !230
  %4 = load i32* %res, align 4, !dbg !231
  store i32 %4, i32* %0, align 4, !dbg !231
  %5 = load i32* %0, align 4, !dbg !231
  store i32 %5, i32* %retval, align 4, !dbg !231
  br label %return, !dbg !231

return:                                           ; preds = %entry
  %retval1 = load i32* %retval, !dbg !231
  ret i32 %retval1, !dbg !231
}

define i32 @__lxstat(i32 %vers, i8* %path, %struct.stat* %buf) nounwind {
entry:
  %vers_addr = alloca i32, align 4
  %path_addr = alloca i8*, align 8
  %buf_addr = alloca %struct.stat*, align 8
  %retval = alloca i32
  %0 = alloca i32
  %tmp = alloca %struct.stat
  %res = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i32* %vers_addr}, metadata !232), !dbg !233
  store i32 %vers, i32* %vers_addr
  call void @llvm.dbg.declare(metadata !{i8** %path_addr}, metadata !234), !dbg !233
  store i8* %path, i8** %path_addr
  call void @llvm.dbg.declare(metadata !{%struct.stat** %buf_addr}, metadata !235), !dbg !233
  store %struct.stat* %buf, %struct.stat** %buf_addr
  call void @llvm.dbg.declare(metadata !{%struct.stat* %tmp}, metadata !236), !dbg !238
  call void @llvm.dbg.declare(metadata !{i32* %res}, metadata !239), !dbg !240
  %1 = load i8** %path_addr, align 8, !dbg !240
  %2 = call i32 @__fd_lstat(i8* %1, %struct.stat* %tmp) nounwind, !dbg !240
  store i32 %2, i32* %res, align 4, !dbg !240
  %3 = load %struct.stat** %buf_addr, align 8, !dbg !241
  call void @__stat64_to_stat(%struct.stat* %tmp, %struct.stat* %3) nounwind, !dbg !241
  %4 = load i32* %res, align 4, !dbg !242
  store i32 %4, i32* %0, align 4, !dbg !242
  %5 = load i32* %0, align 4, !dbg !242
  store i32 %5, i32* %retval, align 4, !dbg !242
  br label %return, !dbg !242

return:                                           ; preds = %entry
  %retval1 = load i32* %retval, !dbg !242
  ret i32 %retval1, !dbg !242
}

declare i32 @__fd_lstat(i8*, %struct.stat*)

define i32 @lstat(i8* %path, %struct.stat* %buf) nounwind {
entry:
  %path_addr = alloca i8*, align 8
  %buf_addr = alloca %struct.stat*, align 8
  %retval = alloca i32
  %0 = alloca i32
  %tmp = alloca %struct.stat
  %res = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i8** %path_addr}, metadata !243), !dbg !244
  store i8* %path, i8** %path_addr
  call void @llvm.dbg.declare(metadata !{%struct.stat** %buf_addr}, metadata !245), !dbg !244
  store %struct.stat* %buf, %struct.stat** %buf_addr
  call void @llvm.dbg.declare(metadata !{%struct.stat* %tmp}, metadata !246), !dbg !248
  call void @llvm.dbg.declare(metadata !{i32* %res}, metadata !249), !dbg !250
  %1 = load i8** %path_addr, align 8, !dbg !250
  %2 = call i32 @__fd_lstat(i8* %1, %struct.stat* %tmp) nounwind, !dbg !250
  store i32 %2, i32* %res, align 4, !dbg !250
  %3 = load %struct.stat** %buf_addr, align 8, !dbg !251
  call void @__stat64_to_stat(%struct.stat* %tmp, %struct.stat* %3) nounwind, !dbg !251
  %4 = load i32* %res, align 4, !dbg !252
  store i32 %4, i32* %0, align 4, !dbg !252
  %5 = load i32* %0, align 4, !dbg !252
  store i32 %5, i32* %retval, align 4, !dbg !252
  br label %return, !dbg !252

return:                                           ; preds = %entry
  %retval1 = load i32* %retval, !dbg !252
  ret i32 %retval1, !dbg !252
}

define i32 @__fxstat(i32 %vers, i32 %fd, %struct.stat* %buf) nounwind {
entry:
  %vers_addr = alloca i32, align 4
  %fd_addr = alloca i32, align 4
  %buf_addr = alloca %struct.stat*, align 8
  %retval = alloca i32
  %0 = alloca i32
  %tmp = alloca %struct.stat
  %res = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i32* %vers_addr}, metadata !253), !dbg !254
  store i32 %vers, i32* %vers_addr
  call void @llvm.dbg.declare(metadata !{i32* %fd_addr}, metadata !255), !dbg !254
  store i32 %fd, i32* %fd_addr
  call void @llvm.dbg.declare(metadata !{%struct.stat** %buf_addr}, metadata !256), !dbg !254
  store %struct.stat* %buf, %struct.stat** %buf_addr
  call void @llvm.dbg.declare(metadata !{%struct.stat* %tmp}, metadata !257), !dbg !259
  call void @llvm.dbg.declare(metadata !{i32* %res}, metadata !260), !dbg !261
  %1 = load i32* %fd_addr, align 4, !dbg !261
  %2 = call i32 @__fd_fstat(i32 %1, %struct.stat* %tmp) nounwind, !dbg !261
  store i32 %2, i32* %res, align 4, !dbg !261
  %3 = load %struct.stat** %buf_addr, align 8, !dbg !262
  call void @__stat64_to_stat(%struct.stat* %tmp, %struct.stat* %3) nounwind, !dbg !262
  %4 = load i32* %res, align 4, !dbg !263
  store i32 %4, i32* %0, align 4, !dbg !263
  %5 = load i32* %0, align 4, !dbg !263
  store i32 %5, i32* %retval, align 4, !dbg !263
  br label %return, !dbg !263

return:                                           ; preds = %entry
  %retval1 = load i32* %retval, !dbg !263
  ret i32 %retval1, !dbg !263
}

declare i32 @__fd_fstat(i32, %struct.stat*)

define i32 @fstat(i32 %fd, %struct.stat* %buf) nounwind {
entry:
  %fd_addr = alloca i32, align 4
  %buf_addr = alloca %struct.stat*, align 8
  %retval = alloca i32
  %0 = alloca i32
  %tmp = alloca %struct.stat
  %res = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i32* %fd_addr}, metadata !264), !dbg !265
  store i32 %fd, i32* %fd_addr
  call void @llvm.dbg.declare(metadata !{%struct.stat** %buf_addr}, metadata !266), !dbg !265
  store %struct.stat* %buf, %struct.stat** %buf_addr
  call void @llvm.dbg.declare(metadata !{%struct.stat* %tmp}, metadata !267), !dbg !269
  call void @llvm.dbg.declare(metadata !{i32* %res}, metadata !270), !dbg !271
  %1 = load i32* %fd_addr, align 4, !dbg !271
  %2 = call i32 @__fd_fstat(i32 %1, %struct.stat* %tmp) nounwind, !dbg !271
  store i32 %2, i32* %res, align 4, !dbg !271
  %3 = load %struct.stat** %buf_addr, align 8, !dbg !272
  call void @__stat64_to_stat(%struct.stat* %tmp, %struct.stat* %3) nounwind, !dbg !272
  %4 = load i32* %res, align 4, !dbg !273
  store i32 %4, i32* %0, align 4, !dbg !273
  %5 = load i32* %0, align 4, !dbg !273
  store i32 %5, i32* %retval, align 4, !dbg !273
  br label %return, !dbg !273

return:                                           ; preds = %entry
  %retval1 = load i32* %retval, !dbg !273
  ret i32 %retval1, !dbg !273
}

define i32 @ftruncate(i32 %fd, i64 %length) nounwind {
entry:
  %fd_addr = alloca i32, align 4
  %length_addr = alloca i64, align 8
  %retval = alloca i32
  %0 = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i32* %fd_addr}, metadata !274), !dbg !275
  store i32 %fd, i32* %fd_addr
  call void @llvm.dbg.declare(metadata !{i64* %length_addr}, metadata !276), !dbg !275
  store i64 %length, i64* %length_addr
  %1 = load i32* %fd_addr, align 4, !dbg !277
  %2 = load i64* %length_addr, align 8, !dbg !277
  %3 = call i32 @__fd_ftruncate(i32 %1, i64 %2) nounwind, !dbg !277
  store i32 %3, i32* %0, align 4, !dbg !277
  %4 = load i32* %0, align 4, !dbg !277
  store i32 %4, i32* %retval, align 4, !dbg !277
  br label %return, !dbg !277

return:                                           ; preds = %entry
  %retval1 = load i32* %retval, !dbg !277
  ret i32 %retval1, !dbg !277
}

declare i32 @__fd_ftruncate(i32, i64)

define i32 @statfs(i8* %path, %struct.statfs* %buf32) nounwind {
entry:
  %path_addr = alloca i8*, align 8
  %buf32_addr = alloca %struct.statfs*, align 8
  %retval = alloca i32
  %0 = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i8** %path_addr}, metadata !279), !dbg !280
  store i8* %path, i8** %path_addr
  call void @llvm.dbg.declare(metadata !{%struct.statfs** %buf32_addr}, metadata !281), !dbg !280
  store %struct.statfs* %buf32, %struct.statfs** %buf32_addr
  %1 = load i8** %path_addr, align 8, !dbg !282
  %2 = load %struct.statfs** %buf32_addr, align 8, !dbg !282
  %3 = call i32 @__fd_statfs(i8* %1, %struct.statfs* %2) nounwind, !dbg !282
  store i32 %3, i32* %0, align 4, !dbg !282
  %4 = load i32* %0, align 4, !dbg !282
  store i32 %4, i32* %retval, align 4, !dbg !282
  br label %return, !dbg !282

return:                                           ; preds = %entry
  %retval1 = load i32* %retval, !dbg !282
  ret i32 %retval1, !dbg !282
}

declare i32 @__fd_statfs(i8*, %struct.statfs*)

define i64 @getdents(i32 %fd, %struct.dirent* %dirp, i64 %nbytes) nounwind {
entry:
  %fd_addr = alloca i32, align 4
  %dirp_addr = alloca %struct.dirent*, align 8
  %nbytes_addr = alloca i64, align 8
  %retval = alloca i64
  %0 = alloca i64
  %dp64 = alloca %struct.dirent*
  %res = alloca i64
  %end = alloca %struct.dirent*
  %dp = alloca %struct.dirent*
  %name_len = alloca i64
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i32* %fd_addr}, metadata !284), !dbg !285
  store i32 %fd, i32* %fd_addr
  call void @llvm.dbg.declare(metadata !{%struct.dirent** %dirp_addr}, metadata !286), !dbg !285
  store %struct.dirent* %dirp, %struct.dirent** %dirp_addr
  call void @llvm.dbg.declare(metadata !{i64* %nbytes_addr}, metadata !287), !dbg !285
  store i64 %nbytes, i64* %nbytes_addr
  call void @llvm.dbg.declare(metadata !{%struct.dirent** %dp64}, metadata !288), !dbg !298
  call void @llvm.dbg.declare(metadata !{i64* %res}, metadata !299), !dbg !300
  %1 = load %struct.dirent** %dirp_addr, align 8, !dbg !298
  store %struct.dirent* %1, %struct.dirent** %dp64, align 8, !dbg !298
  %2 = load i64* %nbytes_addr, align 8, !dbg !300
  %3 = trunc i64 %2 to i32, !dbg !300
  %4 = load i32* %fd_addr, align 4, !dbg !300
  %5 = load %struct.dirent** %dp64, align 8, !dbg !300
  %6 = call i32 @__fd_getdents(i32 %4, %struct.dirent* %5, i32 %3) nounwind, !dbg !300
  %7 = sext i32 %6 to i64, !dbg !300
  store i64 %7, i64* %res, align 8, !dbg !300
  %8 = load i64* %res, align 8, !dbg !301
  %9 = icmp sgt i64 %8, 0, !dbg !301
  br i1 %9, label %bb, label %bb3, !dbg !301

bb:                                               ; preds = %entry
  call void @llvm.dbg.declare(metadata !{%struct.dirent** %end}, metadata !302), !dbg !304
  %10 = load %struct.dirent** %dp64, align 8, !dbg !304
  %11 = bitcast %struct.dirent* %10 to i8*, !dbg !304
  %12 = load i64* %res, align 8, !dbg !304
  %13 = getelementptr inbounds i8* %11, i64 %12, !dbg !304
  %14 = bitcast i8* %13 to %struct.dirent*, !dbg !304
  store %struct.dirent* %14, %struct.dirent** %end, align 8, !dbg !304
  br label %bb2, !dbg !304

bb1:                                              ; preds = %bb2
  call void @llvm.dbg.declare(metadata !{%struct.dirent** %dp}, metadata !305), !dbg !307
  call void @llvm.dbg.declare(metadata !{i64* %name_len}, metadata !308), !dbg !309
  %15 = load %struct.dirent** %dp64, align 8, !dbg !307
  store %struct.dirent* %15, %struct.dirent** %dp, align 8, !dbg !307
  %16 = load %struct.dirent** %dp64, align 8, !dbg !310
  %17 = getelementptr inbounds %struct.dirent* %16, i32 0, i32 2, !dbg !310
  %18 = load i16* %17, align 8, !dbg !310
  %19 = zext i16 %18 to i64, !dbg !310
  %20 = sub i64 %19, 19, !dbg !310
  store i64 %20, i64* %name_len, align 8, !dbg !310
  %21 = load %struct.dirent** %dp64, align 8, !dbg !311
  %22 = getelementptr inbounds %struct.dirent* %21, i32 0, i32 0, !dbg !311
  %23 = load i64* %22, align 8, !dbg !311
  %24 = load %struct.dirent** %dp, align 8, !dbg !311
  %25 = getelementptr inbounds %struct.dirent* %24, i32 0, i32 0, !dbg !311
  store i64 %23, i64* %25, align 8, !dbg !311
  %26 = load %struct.dirent** %dp64, align 8, !dbg !312
  %27 = getelementptr inbounds %struct.dirent* %26, i32 0, i32 1, !dbg !312
  %28 = load i64* %27, align 8, !dbg !312
  %29 = load %struct.dirent** %dp, align 8, !dbg !312
  %30 = getelementptr inbounds %struct.dirent* %29, i32 0, i32 1, !dbg !312
  store i64 %28, i64* %30, align 8, !dbg !312
  %31 = load %struct.dirent** %dp64, align 8, !dbg !313
  %32 = getelementptr inbounds %struct.dirent* %31, i32 0, i32 2, !dbg !313
  %33 = load i16* %32, align 8, !dbg !313
  %34 = load %struct.dirent** %dp, align 8, !dbg !313
  %35 = getelementptr inbounds %struct.dirent* %34, i32 0, i32 2, !dbg !313
  store i16 %33, i16* %35, align 8, !dbg !313
  %36 = load %struct.dirent** %dp64, align 8, !dbg !314
  %37 = getelementptr inbounds %struct.dirent* %36, i32 0, i32 3, !dbg !314
  %38 = load i8* %37, align 2, !dbg !314
  %39 = load %struct.dirent** %dp, align 8, !dbg !314
  %40 = getelementptr inbounds %struct.dirent* %39, i32 0, i32 3, !dbg !314
  store i8 %38, i8* %40, align 2, !dbg !314
  %41 = load %struct.dirent** %dp64, align 8, !dbg !315
  %42 = getelementptr inbounds %struct.dirent* %41, i32 0, i32 4, !dbg !315
  %43 = getelementptr inbounds [256 x i8]* %42, i64 0, i64 0, !dbg !315
  %44 = load %struct.dirent** %dp, align 8, !dbg !315
  %45 = getelementptr inbounds %struct.dirent* %44, i32 0, i32 4, !dbg !315
  %46 = getelementptr inbounds [256 x i8]* %45, i64 0, i64 0, !dbg !315
  %47 = load i64* %name_len, align 8, !dbg !315
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %46, i8* %43, i64 %47, i32 1, i1 false), !dbg !315
  %48 = load %struct.dirent** %dp64, align 8, !dbg !316
  %49 = bitcast %struct.dirent* %48 to i8*, !dbg !316
  %50 = load %struct.dirent** %dp, align 8, !dbg !316
  %51 = getelementptr inbounds %struct.dirent* %50, i32 0, i32 2, !dbg !316
  %52 = load i16* %51, align 8, !dbg !316
  %53 = zext i16 %52 to i32, !dbg !316
  %54 = sext i32 %53 to i64, !dbg !316
  %55 = getelementptr inbounds i8* %49, i64 %54, !dbg !316
  %56 = bitcast i8* %55 to %struct.dirent*, !dbg !316
  store %struct.dirent* %56, %struct.dirent** %dp64, align 8, !dbg !316
  br label %bb2, !dbg !316

bb2:                                              ; preds = %bb1, %bb
  %57 = load %struct.dirent** %dp64, align 8, !dbg !317
  %58 = load %struct.dirent** %end, align 8, !dbg !317
  %59 = icmp ult %struct.dirent* %57, %58, !dbg !317
  br i1 %59, label %bb1, label %bb3, !dbg !317

bb3:                                              ; preds = %bb2, %entry
  %60 = load i64* %res, align 8, !dbg !318
  store i64 %60, i64* %0, align 8, !dbg !318
  %61 = load i64* %0, align 8, !dbg !318
  store i64 %61, i64* %retval, align 8, !dbg !318
  br label %return, !dbg !318

return:                                           ; preds = %bb3
  %retval4 = load i64* %retval, !dbg !318
  ret i64 %retval4, !dbg !318
}

declare i32 @__fd_getdents(i32, %struct.dirent*, i32)

declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

define weak i32 @open64(i8* %pathname, i32 %flags, ...) nounwind {
entry:
  %pathname_addr = alloca i8*, align 8
  %flags_addr = alloca i32, align 4
  %retval = alloca i32
  %0 = alloca i32
  %addr.5 = alloca i8*
  %mode = alloca i32
  %ap = alloca [1 x %struct.__va_list_tag]
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i8** %pathname_addr}, metadata !319), !dbg !320
  store i8* %pathname, i8** %pathname_addr
  call void @llvm.dbg.declare(metadata !{i32* %flags_addr}, metadata !321), !dbg !320
  store i32 %flags, i32* %flags_addr
  call void @llvm.dbg.declare(metadata !{i32* %mode}, metadata !322), !dbg !324
  store i32 0, i32* %mode, align 4, !dbg !324
  %1 = load i32* %flags_addr, align 4, !dbg !325
  %2 = and i32 %1, 64, !dbg !325
  %3 = icmp ne i32 %2, 0, !dbg !325
  br i1 %3, label %bb, label %bb8, !dbg !325

bb:                                               ; preds = %entry
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %ap}, metadata !326), !dbg !328
  %ap1 = bitcast [1 x %struct.__va_list_tag]* %ap to %struct.__va_list_tag*, !dbg !329
  %ap12 = bitcast %struct.__va_list_tag* %ap1 to i8*, !dbg !329
  call void @llvm.va_start(i8* %ap12), !dbg !329
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !330
  %5 = getelementptr inbounds %struct.__va_list_tag* %4, i32 0, i32 0, !dbg !330
  %6 = load i32* %5, align 8, !dbg !330
  %7 = icmp uge i32 %6, 48, !dbg !330
  br i1 %7, label %bb4, label %bb3, !dbg !330

bb3:                                              ; preds = %bb
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !330
  %9 = getelementptr inbounds %struct.__va_list_tag* %8, i32 0, i32 3, !dbg !330
  %10 = load i8** %9, align 8, !dbg !330
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !330
  %12 = getelementptr inbounds %struct.__va_list_tag* %11, i32 0, i32 0, !dbg !330
  %13 = load i32* %12, align 8, !dbg !330
  %14 = inttoptr i32 %13 to i8*, !dbg !330
  %15 = ptrtoint i8* %10 to i64, !dbg !330
  %16 = ptrtoint i8* %14 to i64, !dbg !330
  %17 = add i64 %15, %16, !dbg !330
  %18 = inttoptr i64 %17 to i8*, !dbg !330
  store i8* %18, i8** %addr.5, align 8, !dbg !330
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !330
  %20 = getelementptr inbounds %struct.__va_list_tag* %19, i32 0, i32 0, !dbg !330
  %21 = load i32* %20, align 8, !dbg !330
  %22 = add i32 %21, 8, !dbg !330
  %23 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !330
  %24 = getelementptr inbounds %struct.__va_list_tag* %23, i32 0, i32 0, !dbg !330
  store i32 %22, i32* %24, align 8, !dbg !330
  br label %bb5, !dbg !330

bb4:                                              ; preds = %bb
  %25 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !330
  %26 = getelementptr inbounds %struct.__va_list_tag* %25, i32 0, i32 2, !dbg !330
  %27 = load i8** %26, align 8, !dbg !330
  store i8* %27, i8** %addr.5, align 8, !dbg !330
  %28 = getelementptr inbounds i8* %27, i64 8, !dbg !330
  %29 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !330
  %30 = getelementptr inbounds %struct.__va_list_tag* %29, i32 0, i32 2, !dbg !330
  store i8* %28, i8** %30, align 8, !dbg !330
  br label %bb5, !dbg !330

bb5:                                              ; preds = %bb4, %bb3
  %31 = load i8** %addr.5, align 8, !dbg !330
  %32 = bitcast i8* %31 to i32*, !dbg !330
  %33 = load i32* %32, align 4, !dbg !330
  store i32 %33, i32* %mode, align 4, !dbg !330
  %ap6 = bitcast [1 x %struct.__va_list_tag]* %ap to %struct.__va_list_tag*, !dbg !331
  %ap67 = bitcast %struct.__va_list_tag* %ap6 to i8*, !dbg !331
  call void @llvm.va_end(i8* %ap67), !dbg !331
  br label %bb8, !dbg !331

bb8:                                              ; preds = %bb5, %entry
  %34 = load i8** %pathname_addr, align 8, !dbg !332
  %35 = load i32* %flags_addr, align 4, !dbg !332
  %36 = load i32* %mode, align 4, !dbg !332
  %37 = call i32 @__fd_open(i8* %34, i32 %35, i32 %36) nounwind, !dbg !332
  store i32 %37, i32* %0, align 4, !dbg !332
  %38 = load i32* %0, align 4, !dbg !332
  store i32 %38, i32* %retval, align 4, !dbg !332
  br label %return, !dbg !332

return:                                           ; preds = %bb8
  %retval9 = load i32* %retval, !dbg !332
  ret i32 %retval9, !dbg !332
}

define weak i64 @lseek64(i32 %fd, i64 %off, i32 %whence) nounwind {
entry:
  %fd_addr = alloca i32, align 4
  %off_addr = alloca i64, align 8
  %whence_addr = alloca i32, align 4
  %retval = alloca i64
  %0 = alloca i64
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i32* %fd_addr}, metadata !333), !dbg !334
  store i32 %fd, i32* %fd_addr
  call void @llvm.dbg.declare(metadata !{i64* %off_addr}, metadata !335), !dbg !334
  store i64 %off, i64* %off_addr
  call void @llvm.dbg.declare(metadata !{i32* %whence_addr}, metadata !337), !dbg !334
  store i32 %whence, i32* %whence_addr
  %1 = load i32* %fd_addr, align 4, !dbg !338
  %2 = load i64* %off_addr, align 8, !dbg !338
  %3 = load i32* %whence_addr, align 4, !dbg !338
  %4 = call i64 @__fd_lseek(i32 %1, i64 %2, i32 %3) nounwind, !dbg !338
  store i64 %4, i64* %0, align 8, !dbg !338
  %5 = load i64* %0, align 8, !dbg !338
  store i64 %5, i64* %retval, align 8, !dbg !338
  br label %return, !dbg !338

return:                                           ; preds = %entry
  %retval1 = load i64* %retval, !dbg !338
  ret i64 %retval1, !dbg !338
}

define weak i32 @stat64(i8* %path, %struct.stat* %buf) nounwind {
entry:
  %path_addr = alloca i8*, align 8
  %buf_addr = alloca %struct.stat*, align 8
  %retval = alloca i32
  %0 = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i8** %path_addr}, metadata !340), !dbg !341
  store i8* %path, i8** %path_addr
  call void @llvm.dbg.declare(metadata !{%struct.stat** %buf_addr}, metadata !342), !dbg !341
  store %struct.stat* %buf, %struct.stat** %buf_addr
  %1 = load i8** %path_addr, align 8, !dbg !343
  %2 = load %struct.stat** %buf_addr, align 8, !dbg !343
  %3 = call i32 @__fd_stat(i8* %1, %struct.stat* %2) nounwind, !dbg !343
  store i32 %3, i32* %0, align 4, !dbg !343
  %4 = load i32* %0, align 4, !dbg !343
  store i32 %4, i32* %retval, align 4, !dbg !343
  br label %return, !dbg !343

return:                                           ; preds = %entry
  %retval1 = load i32* %retval, !dbg !343
  ret i32 %retval1, !dbg !343
}

define weak i32 @lstat64(i8* %path, %struct.stat* %buf) nounwind {
entry:
  %path_addr = alloca i8*, align 8
  %buf_addr = alloca %struct.stat*, align 8
  %retval = alloca i32
  %0 = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i8** %path_addr}, metadata !345), !dbg !346
  store i8* %path, i8** %path_addr
  call void @llvm.dbg.declare(metadata !{%struct.stat** %buf_addr}, metadata !347), !dbg !346
  store %struct.stat* %buf, %struct.stat** %buf_addr
  %1 = load i8** %path_addr, align 8, !dbg !348
  %2 = load %struct.stat** %buf_addr, align 8, !dbg !348
  %3 = call i32 @__fd_lstat(i8* %1, %struct.stat* %2) nounwind, !dbg !348
  store i32 %3, i32* %0, align 4, !dbg !348
  %4 = load i32* %0, align 4, !dbg !348
  store i32 %4, i32* %retval, align 4, !dbg !348
  br label %return, !dbg !348

return:                                           ; preds = %entry
  %retval1 = load i32* %retval, !dbg !348
  ret i32 %retval1, !dbg !348
}

define weak i32 @fstat64(i32 %fd, %struct.stat* %buf) nounwind {
entry:
  %fd_addr = alloca i32, align 4
  %buf_addr = alloca %struct.stat*, align 8
  %retval = alloca i32
  %0 = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i32* %fd_addr}, metadata !350), !dbg !351
  store i32 %fd, i32* %fd_addr
  call void @llvm.dbg.declare(metadata !{%struct.stat** %buf_addr}, metadata !352), !dbg !351
  store %struct.stat* %buf, %struct.stat** %buf_addr
  %1 = load i32* %fd_addr, align 4, !dbg !353
  %2 = load %struct.stat** %buf_addr, align 8, !dbg !353
  %3 = call i32 @__fd_fstat(i32 %1, %struct.stat* %2) nounwind, !dbg !353
  store i32 %3, i32* %0, align 4, !dbg !353
  %4 = load i32* %0, align 4, !dbg !353
  store i32 %4, i32* %retval, align 4, !dbg !353
  br label %return, !dbg !353

return:                                           ; preds = %entry
  %retval1 = load i32* %retval, !dbg !353
  ret i32 %retval1, !dbg !353
}

!llvm.dbg.sp = !{!0, !68, !74, !77, !80, !83, !84, !85, !88, !91, !94, !125, !146, !147, !151, !154, !155}

!0 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__stat64_to_stat", metadata !"__stat64_to_stat", metadata !"", metadata !1, i32 30, metadata !3, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.stat*, %struct.stat*)* @__stat64_to_stat} ; [ DW_TAG_subprogram ]
!1 = metadata !{i32 589865, metadata !"fd_32.c", metadata !"/home/tyu/Documents/bugredx/klee2.9/runtime/POSIX/", metadata !2} ; [ DW_TAG_file_type ]
!2 = metadata !{i32 589841, i32 0, i32 1, metadata !"fd_32.c", metadata !"/home/tyu/Documents/bugredx/klee2.9/runtime/POSIX/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!3 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !4, i32 0, null} ; [ DW_TAG_subroutine_type ]
!4 = metadata !{null, metadata !5, metadata !48}
!5 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !6} ; [ DW_TAG_pointer_type ]
!6 = metadata !{i32 589843, metadata !1, metadata !"stat64", metadata !7, i32 23, i64 1152, i64 64, i64 0, i32 0, null, metadata !8, i32 0, null} ; [ DW_TAG_structure_type ]
!7 = metadata !{i32 589865, metadata !"fd.h", metadata !"/home/tyu/Documents/bugredx/klee2.9/runtime/POSIX/", metadata !2} ; [ DW_TAG_file_type ]
!8 = metadata !{metadata !9, metadata !14, metadata !16, metadata !18, metadata !21, metadata !23, metadata !25, metadata !27, metadata !28, metadata !31, metadata !33, metadata !35, metadata !42, metadata !43, metadata !44}
!9 = metadata !{i32 589837, metadata !6, metadata !"st_dev", metadata !10, i32 121, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_member ]
!10 = metadata !{i32 589865, metadata !"stat.h", metadata !"/usr/include/bits", metadata !2} ; [ DW_TAG_file_type ]
!11 = metadata !{i32 589846, metadata !12, metadata !"__dev_t", metadata !12, i32 134, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ]
!12 = metadata !{i32 589865, metadata !"types.h", metadata !"/usr/include/bits", metadata !2} ; [ DW_TAG_file_type ]
!13 = metadata !{i32 589860, metadata !1, metadata !"long unsigned int", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!14 = metadata !{i32 589837, metadata !6, metadata !"st_ino", metadata !10, i32 123, i64 64, i64 64, i64 64, i32 0, metadata !15} ; [ DW_TAG_member ]
!15 = metadata !{i32 589846, metadata !12, metadata !"__ino64_t", metadata !12, i32 138, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ]
!16 = metadata !{i32 589837, metadata !6, metadata !"st_nlink", metadata !10, i32 124, i64 64, i64 64, i64 128, i32 0, metadata !17} ; [ DW_TAG_member ]
!17 = metadata !{i32 589846, metadata !12, metadata !"__nlink_t", metadata !12, i32 140, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ]
!18 = metadata !{i32 589837, metadata !6, metadata !"st_mode", metadata !10, i32 125, i64 32, i64 32, i64 192, i32 0, metadata !19} ; [ DW_TAG_member ]
!19 = metadata !{i32 589846, metadata !12, metadata !"__mode_t", metadata !12, i32 139, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_typedef ]
!20 = metadata !{i32 589860, metadata !1, metadata !"unsigned int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!21 = metadata !{i32 589837, metadata !6, metadata !"st_uid", metadata !10, i32 132, i64 32, i64 32, i64 224, i32 0, metadata !22} ; [ DW_TAG_member ]
!22 = metadata !{i32 589846, metadata !12, metadata !"__uid_t", metadata !12, i32 135, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_typedef ]
!23 = metadata !{i32 589837, metadata !6, metadata !"st_gid", metadata !10, i32 133, i64 32, i64 32, i64 256, i32 0, metadata !24} ; [ DW_TAG_member ]
!24 = metadata !{i32 589846, metadata !12, metadata !"__gid_t", metadata !12, i32 136, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_typedef ]
!25 = metadata !{i32 589837, metadata !6, metadata !"__pad0", metadata !10, i32 135, i64 32, i64 32, i64 288, i32 0, metadata !26} ; [ DW_TAG_member ]
!26 = metadata !{i32 589860, metadata !1, metadata !"int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!27 = metadata !{i32 589837, metadata !6, metadata !"st_rdev", metadata !10, i32 136, i64 64, i64 64, i64 320, i32 0, metadata !11} ; [ DW_TAG_member ]
!28 = metadata !{i32 589837, metadata !6, metadata !"st_size", metadata !10, i32 137, i64 64, i64 64, i64 384, i32 0, metadata !29} ; [ DW_TAG_member ]
!29 = metadata !{i32 589846, metadata !12, metadata !"__off_t", metadata !12, i32 141, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ]
!30 = metadata !{i32 589860, metadata !1, metadata !"long int", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!31 = metadata !{i32 589837, metadata !6, metadata !"st_blksize", metadata !10, i32 143, i64 64, i64 64, i64 448, i32 0, metadata !32} ; [ DW_TAG_member ]
!32 = metadata !{i32 589846, metadata !12, metadata !"__blksize_t", metadata !12, i32 164, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ]
!33 = metadata !{i32 589837, metadata !6, metadata !"st_blocks", metadata !10, i32 144, i64 64, i64 64, i64 512, i32 0, metadata !34} ; [ DW_TAG_member ]
!34 = metadata !{i32 589846, metadata !12, metadata !"__blkcnt64_t", metadata !12, i32 170, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ]
!35 = metadata !{i32 589837, metadata !6, metadata !"st_atim", metadata !10, i32 152, i64 128, i64 64, i64 576, i32 0, metadata !36} ; [ DW_TAG_member ]
!36 = metadata !{i32 589843, metadata !1, metadata !"timespec", metadata !37, i32 121, i64 128, i64 64, i64 0, i32 0, null, metadata !38, i32 0, null} ; [ DW_TAG_structure_type ]
!37 = metadata !{i32 589865, metadata !"time.h", metadata !"/usr/include", metadata !2} ; [ DW_TAG_file_type ]
!38 = metadata !{metadata !39, metadata !41}
!39 = metadata !{i32 589837, metadata !36, metadata !"tv_sec", metadata !37, i32 122, i64 64, i64 64, i64 0, i32 0, metadata !40} ; [ DW_TAG_member ]
!40 = metadata !{i32 589846, metadata !12, metadata !"__time_t", metadata !12, i32 149, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ]
!41 = metadata !{i32 589837, metadata !36, metadata !"tv_nsec", metadata !37, i32 123, i64 64, i64 64, i64 64, i32 0, metadata !30} ; [ DW_TAG_member ]
!42 = metadata !{i32 589837, metadata !6, metadata !"st_mtim", metadata !10, i32 153, i64 128, i64 64, i64 704, i32 0, metadata !36} ; [ DW_TAG_member ]
!43 = metadata !{i32 589837, metadata !6, metadata !"st_ctim", metadata !10, i32 154, i64 128, i64 64, i64 832, i32 0, metadata !36} ; [ DW_TAG_member ]
!44 = metadata !{i32 589837, metadata !6, metadata !"__unused", metadata !10, i32 167, i64 192, i64 64, i64 960, i32 0, metadata !45} ; [ DW_TAG_member ]
!45 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 192, i64 64, i64 0, i32 0, metadata !30, metadata !46, i32 0, null} ; [ DW_TAG_array_type ]
!46 = metadata !{metadata !47}
!47 = metadata !{i32 589857, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!48 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !49} ; [ DW_TAG_pointer_type ]
!49 = metadata !{i32 589843, metadata !1, metadata !"stat", metadata !10, i32 47, i64 1152, i64 64, i64 0, i32 0, null, metadata !50, i32 0, null} ; [ DW_TAG_structure_type ]
!50 = metadata !{metadata !51, metadata !52, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !64, metadata !65, metadata !66, metadata !67}
!51 = metadata !{i32 589837, metadata !49, metadata !"st_dev", metadata !10, i32 48, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_member ]
!52 = metadata !{i32 589837, metadata !49, metadata !"st_ino", metadata !10, i32 53, i64 64, i64 64, i64 64, i32 0, metadata !53} ; [ DW_TAG_member ]
!53 = metadata !{i32 589846, metadata !12, metadata !"__ino_t", metadata !12, i32 137, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ]
!54 = metadata !{i32 589837, metadata !49, metadata !"st_nlink", metadata !10, i32 61, i64 64, i64 64, i64 128, i32 0, metadata !17} ; [ DW_TAG_member ]
!55 = metadata !{i32 589837, metadata !49, metadata !"st_mode", metadata !10, i32 62, i64 32, i64 32, i64 192, i32 0, metadata !19} ; [ DW_TAG_member ]
!56 = metadata !{i32 589837, metadata !49, metadata !"st_uid", metadata !10, i32 64, i64 32, i64 32, i64 224, i32 0, metadata !22} ; [ DW_TAG_member ]
!57 = metadata !{i32 589837, metadata !49, metadata !"st_gid", metadata !10, i32 65, i64 32, i64 32, i64 256, i32 0, metadata !24} ; [ DW_TAG_member ]
!58 = metadata !{i32 589837, metadata !49, metadata !"__pad0", metadata !10, i32 67, i64 32, i64 32, i64 288, i32 0, metadata !26} ; [ DW_TAG_member ]
!59 = metadata !{i32 589837, metadata !49, metadata !"st_rdev", metadata !10, i32 69, i64 64, i64 64, i64 320, i32 0, metadata !11} ; [ DW_TAG_member ]
!60 = metadata !{i32 589837, metadata !49, metadata !"st_size", metadata !10, i32 74, i64 64, i64 64, i64 384, i32 0, metadata !29} ; [ DW_TAG_member ]
!61 = metadata !{i32 589837, metadata !49, metadata !"st_blksize", metadata !10, i32 78, i64 64, i64 64, i64 448, i32 0, metadata !32} ; [ DW_TAG_member ]
!62 = metadata !{i32 589837, metadata !49, metadata !"st_blocks", metadata !10, i32 80, i64 64, i64 64, i64 512, i32 0, metadata !63} ; [ DW_TAG_member ]
!63 = metadata !{i32 589846, metadata !12, metadata !"__blkcnt_t", metadata !12, i32 169, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ]
!64 = metadata !{i32 589837, metadata !49, metadata !"st_atim", metadata !10, i32 91, i64 128, i64 64, i64 576, i32 0, metadata !36} ; [ DW_TAG_member ]
!65 = metadata !{i32 589837, metadata !49, metadata !"st_mtim", metadata !10, i32 92, i64 128, i64 64, i64 704, i32 0, metadata !36} ; [ DW_TAG_member ]
!66 = metadata !{i32 589837, metadata !49, metadata !"st_ctim", metadata !10, i32 93, i64 128, i64 64, i64 832, i32 0, metadata !36} ; [ DW_TAG_member ]
!67 = metadata !{i32 589837, metadata !49, metadata !"__unused", metadata !10, i32 106, i64 192, i64 64, i64 960, i32 0, metadata !45} ; [ DW_TAG_member ]
!68 = metadata !{i32 589870, i32 0, metadata !1, metadata !"open", metadata !"open", metadata !"open", metadata !1, i32 48, metadata !69, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, i32, ...)* @open} ; [ DW_TAG_subprogram ]
!69 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !70, i32 0, null} ; [ DW_TAG_subroutine_type ]
!70 = metadata !{metadata !26, metadata !71, metadata !26}
!71 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !72} ; [ DW_TAG_pointer_type ]
!72 = metadata !{i32 589862, metadata !1, metadata !"", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !73} ; [ DW_TAG_const_type ]
!73 = metadata !{i32 589860, metadata !1, metadata !"char", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!74 = metadata !{i32 589870, i32 0, metadata !1, metadata !"lseek", metadata !"lseek", metadata !"lseek", metadata !1, i32 62, metadata !75, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i32, i64, i32)* @lseek} ; [ DW_TAG_subprogram ]
!75 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !76, i32 0, null} ; [ DW_TAG_subroutine_type ]
!76 = metadata !{metadata !29, metadata !26, metadata !29, metadata !26}
!77 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__xstat", metadata !"__xstat", metadata !"__xstat", metadata !1, i32 66, metadata !78, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i8*, %struct.stat*)* @__xstat} ; [ DW_TAG_subprogram ]
!78 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !79, i32 0, null} ; [ DW_TAG_subroutine_type ]
!79 = metadata !{metadata !26, metadata !26, metadata !71, metadata !48}
!80 = metadata !{i32 589870, i32 0, metadata !1, metadata !"stat", metadata !"stat", metadata !"stat", metadata !1, i32 73, metadata !81, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, %struct.stat*)* @stat} ; [ DW_TAG_subprogram ]
!81 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !82, i32 0, null} ; [ DW_TAG_subroutine_type ]
!82 = metadata !{metadata !26, metadata !71, metadata !48}
!83 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__lxstat", metadata !"__lxstat", metadata !"__lxstat", metadata !1, i32 80, metadata !78, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i8*, %struct.stat*)* @__lxstat} ; [ DW_TAG_subprogram ]
!84 = metadata !{i32 589870, i32 0, metadata !1, metadata !"lstat", metadata !"lstat", metadata !"lstat", metadata !1, i32 87, metadata !81, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, %struct.stat*)* @lstat} ; [ DW_TAG_subprogram ]
!85 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fxstat", metadata !"__fxstat", metadata !"__fxstat", metadata !1, i32 94, metadata !86, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32, %struct.stat*)* @__fxstat} ; [ DW_TAG_subprogram ]
!86 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !87, i32 0, null} ; [ DW_TAG_subroutine_type ]
!87 = metadata !{metadata !26, metadata !26, metadata !26, metadata !48}
!88 = metadata !{i32 589870, i32 0, metadata !1, metadata !"fstat", metadata !"fstat", metadata !"fstat", metadata !1, i32 101, metadata !89, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, %struct.stat*)* @fstat} ; [ DW_TAG_subprogram ]
!89 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !90, i32 0, null} ; [ DW_TAG_subroutine_type ]
!90 = metadata !{metadata !26, metadata !26, metadata !48}
!91 = metadata !{i32 589870, i32 0, metadata !1, metadata !"ftruncate", metadata !"ftruncate", metadata !"ftruncate", metadata !1, i32 108, metadata !92, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i64)* @ftruncate} ; [ DW_TAG_subprogram ]
!92 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !93, i32 0, null} ; [ DW_TAG_subroutine_type ]
!93 = metadata !{metadata !26, metadata !26, metadata !29}
!94 = metadata !{i32 589870, i32 0, metadata !1, metadata !"statfs", metadata !"statfs", metadata !"statfs", metadata !1, i32 112, metadata !95, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, %struct.statfs*)* @statfs} ; [ DW_TAG_subprogram ]
!95 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !96, i32 0, null} ; [ DW_TAG_subroutine_type ]
!96 = metadata !{metadata !26, metadata !71, metadata !97}
!97 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !98} ; [ DW_TAG_pointer_type ]
!98 = metadata !{i32 589843, metadata !1, metadata !"statfs", metadata !99, i32 26, i64 960, i64 64, i64 0, i32 0, null, metadata !100, i32 0, null} ; [ DW_TAG_structure_type ]
!99 = metadata !{i32 589865, metadata !"statfs.h", metadata !"/usr/include/bits", metadata !2} ; [ DW_TAG_file_type ]
!100 = metadata !{metadata !101, metadata !102, metadata !103, metadata !105, metadata !106, metadata !107, metadata !109, metadata !110, metadata !118, metadata !119, metadata !120, metadata !121}
!101 = metadata !{i32 589837, metadata !98, metadata !"f_type", metadata !99, i32 27, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_member ]
!102 = metadata !{i32 589837, metadata !98, metadata !"f_bsize", metadata !99, i32 28, i64 64, i64 64, i64 64, i32 0, metadata !30} ; [ DW_TAG_member ]
!103 = metadata !{i32 589837, metadata !98, metadata !"f_blocks", metadata !99, i32 30, i64 64, i64 64, i64 128, i32 0, metadata !104} ; [ DW_TAG_member ]
!104 = metadata !{i32 589846, metadata !12, metadata !"__fsblkcnt_t", metadata !12, i32 173, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ]
!105 = metadata !{i32 589837, metadata !98, metadata !"f_bfree", metadata !99, i32 31, i64 64, i64 64, i64 192, i32 0, metadata !104} ; [ DW_TAG_member ]
!106 = metadata !{i32 589837, metadata !98, metadata !"f_bavail", metadata !99, i32 32, i64 64, i64 64, i64 256, i32 0, metadata !104} ; [ DW_TAG_member ]
!107 = metadata !{i32 589837, metadata !98, metadata !"f_files", metadata !99, i32 33, i64 64, i64 64, i64 320, i32 0, metadata !108} ; [ DW_TAG_member ]
!108 = metadata !{i32 589846, metadata !12, metadata !"__fsfilcnt_t", metadata !12, i32 177, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ]
!109 = metadata !{i32 589837, metadata !98, metadata !"f_ffree", metadata !99, i32 34, i64 64, i64 64, i64 384, i32 0, metadata !108} ; [ DW_TAG_member ]
!110 = metadata !{i32 589837, metadata !98, metadata !"f_fsid", metadata !99, i32 42, i64 64, i64 32, i64 448, i32 0, metadata !111} ; [ DW_TAG_member ]
!111 = metadata !{i32 589846, metadata !12, metadata !"__fsid_t", metadata !12, i32 144, i64 0, i64 0, i64 0, i32 0, metadata !112} ; [ DW_TAG_typedef ]
!112 = metadata !{i32 589843, metadata !1, metadata !"", metadata !12, i32 144, i64 64, i64 32, i64 0, i32 0, null, metadata !113, i32 0, null} ; [ DW_TAG_structure_type ]
!113 = metadata !{metadata !114}
!114 = metadata !{i32 589837, metadata !112, metadata !"__val", metadata !12, i32 144, i64 64, i64 32, i64 0, i32 0, metadata !115} ; [ DW_TAG_member ]
!115 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 32, i64 0, i32 0, metadata !26, metadata !116, i32 0, null} ; [ DW_TAG_array_type ]
!116 = metadata !{metadata !117}
!117 = metadata !{i32 589857, i64 0, i64 1}       ; [ DW_TAG_subrange_type ]
!118 = metadata !{i32 589837, metadata !98, metadata !"f_namelen", metadata !99, i32 43, i64 64, i64 64, i64 512, i32 0, metadata !30} ; [ DW_TAG_member ]
!119 = metadata !{i32 589837, metadata !98, metadata !"f_frsize", metadata !99, i32 44, i64 64, i64 64, i64 576, i32 0, metadata !30} ; [ DW_TAG_member ]
!120 = metadata !{i32 589837, metadata !98, metadata !"f_flags", metadata !99, i32 45, i64 64, i64 64, i64 640, i32 0, metadata !30} ; [ DW_TAG_member ]
!121 = metadata !{i32 589837, metadata !98, metadata !"f_spare", metadata !99, i32 46, i64 256, i64 64, i64 704, i32 0, metadata !122} ; [ DW_TAG_member ]
!122 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 256, i64 64, i64 0, i32 0, metadata !30, metadata !123, i32 0, null} ; [ DW_TAG_array_type ]
!123 = metadata !{metadata !124}
!124 = metadata !{i32 589857, i64 0, i64 3}       ; [ DW_TAG_subrange_type ]
!125 = metadata !{i32 589870, i32 0, metadata !1, metadata !"getdents", metadata !"getdents", metadata !"getdents", metadata !1, i32 137, metadata !126, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i32, %struct.dirent*, i64)* @getdents} ; [ DW_TAG_subprogram ]
!126 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !127, i32 0, null} ; [ DW_TAG_subroutine_type ]
!127 = metadata !{metadata !128, metadata !26, metadata !130, metadata !144}
!128 = metadata !{i32 589846, metadata !129, metadata !"ssize_t", metadata !129, i32 110, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ]
!129 = metadata !{i32 589865, metadata !"types.h", metadata !"/usr/include/sys", metadata !2} ; [ DW_TAG_file_type ]
!130 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !131} ; [ DW_TAG_pointer_type ]
!131 = metadata !{i32 589843, metadata !1, metadata !"dirent", metadata !132, i32 24, i64 2240, i64 64, i64 0, i32 0, null, metadata !133, i32 0, null} ; [ DW_TAG_structure_type ]
!132 = metadata !{i32 589865, metadata !"dirent.h", metadata !"/usr/include/bits", metadata !2} ; [ DW_TAG_file_type ]
!133 = metadata !{metadata !134, metadata !135, metadata !136, metadata !138, metadata !140}
!134 = metadata !{i32 589837, metadata !131, metadata !"d_ino", metadata !132, i32 26, i64 64, i64 64, i64 0, i32 0, metadata !53} ; [ DW_TAG_member ]
!135 = metadata !{i32 589837, metadata !131, metadata !"d_off", metadata !132, i32 27, i64 64, i64 64, i64 64, i32 0, metadata !29} ; [ DW_TAG_member ]
!136 = metadata !{i32 589837, metadata !131, metadata !"d_reclen", metadata !132, i32 32, i64 16, i64 16, i64 128, i32 0, metadata !137} ; [ DW_TAG_member ]
!137 = metadata !{i32 589860, metadata !1, metadata !"short unsigned int", metadata !1, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!138 = metadata !{i32 589837, metadata !131, metadata !"d_type", metadata !132, i32 33, i64 8, i64 8, i64 144, i32 0, metadata !139} ; [ DW_TAG_member ]
!139 = metadata !{i32 589860, metadata !1, metadata !"unsigned char", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!140 = metadata !{i32 589837, metadata !131, metadata !"d_name", metadata !132, i32 34, i64 2048, i64 8, i64 152, i32 0, metadata !141} ; [ DW_TAG_member ]
!141 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 2048, i64 8, i64 0, i32 0, metadata !73, metadata !142, i32 0, null} ; [ DW_TAG_array_type ]
!142 = metadata !{metadata !143}
!143 = metadata !{i32 589857, i64 0, i64 255}     ; [ DW_TAG_subrange_type ]
!144 = metadata !{i32 589846, metadata !145, metadata !"size_t", metadata !145, i32 214, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ]
!145 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/home/tyu/Documents/bugredx/llvm-gcc4.2-2.9-x86_64-linux/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.2.1/include", metadata !2} ; [ DW_TAG_file_type ]
!146 = metadata !{i32 589870, i32 0, metadata !1, metadata !"open64", metadata !"open64", metadata !"open64", metadata !1, i32 164, metadata !69, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, i32, ...)* @open64} ; [ DW_TAG_subprogram ]
!147 = metadata !{i32 589870, i32 0, metadata !1, metadata !"lseek64", metadata !"lseek64", metadata !"lseek64", metadata !1, i32 179, metadata !148, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i32, i64, i32)* @lseek64} ; [ DW_TAG_subprogram ]
!148 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !149, i32 0, null} ; [ DW_TAG_subroutine_type ]
!149 = metadata !{metadata !150, metadata !26, metadata !150, metadata !26}
!150 = metadata !{i32 589846, metadata !12, metadata !"__off64_t", metadata !12, i32 142, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ]
!151 = metadata !{i32 589870, i32 0, metadata !1, metadata !"stat64", metadata !"stat64", metadata !"stat64", metadata !1, i32 184, metadata !152, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, %struct.stat*)* @stat64} ; [ DW_TAG_subprogram ]
!152 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !153, i32 0, null} ; [ DW_TAG_subroutine_type ]
!153 = metadata !{metadata !26, metadata !71, metadata !5}
!154 = metadata !{i32 589870, i32 0, metadata !1, metadata !"lstat64", metadata !"lstat64", metadata !"lstat64", metadata !1, i32 189, metadata !152, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, %struct.stat*)* @lstat64} ; [ DW_TAG_subprogram ]
!155 = metadata !{i32 589870, i32 0, metadata !1, metadata !"fstat64", metadata !"fstat64", metadata !"fstat64", metadata !1, i32 194, metadata !156, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, %struct.stat*)* @fstat64} ; [ DW_TAG_subprogram ]
!156 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !157, i32 0, null} ; [ DW_TAG_subroutine_type ]
!157 = metadata !{metadata !26, metadata !26, metadata !5}
!158 = metadata !{i32 590081, metadata !0, metadata !"a", metadata !1, i32 30, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!159 = metadata !{i32 30, i32 0, metadata !0, null}
!160 = metadata !{i32 590081, metadata !0, metadata !"b", metadata !1, i32 30, metadata !48, i32 0} ; [ DW_TAG_arg_variable ]
!161 = metadata !{i32 31, i32 0, metadata !162, null}
!162 = metadata !{i32 589835, metadata !0, i32 30, i32 0, metadata !1, i32 0} ; [ DW_TAG_lexical_block ]
!163 = metadata !{i32 32, i32 0, metadata !162, null}
!164 = metadata !{i32 33, i32 0, metadata !162, null}
!165 = metadata !{i32 34, i32 0, metadata !162, null}
!166 = metadata !{i32 35, i32 0, metadata !162, null}
!167 = metadata !{i32 36, i32 0, metadata !162, null}
!168 = metadata !{i32 37, i32 0, metadata !162, null}
!169 = metadata !{i32 38, i32 0, metadata !162, null}
!170 = metadata !{i32 39, i32 0, metadata !162, null}
!171 = metadata !{i32 40, i32 0, metadata !162, null}
!172 = metadata !{i32 41, i32 0, metadata !162, null}
!173 = metadata !{i32 42, i32 0, metadata !162, null}
!174 = metadata !{i32 43, i32 0, metadata !162, null}
!175 = metadata !{i32 44, i32 0, metadata !162, null}
!176 = metadata !{i32 590081, metadata !68, metadata !"pathname", metadata !1, i32 48, metadata !71, i32 0} ; [ DW_TAG_arg_variable ]
!177 = metadata !{i32 48, i32 0, metadata !68, null}
!178 = metadata !{i32 590081, metadata !68, metadata !"flags", metadata !1, i32 48, metadata !26, i32 0} ; [ DW_TAG_arg_variable ]
!179 = metadata !{i32 590080, metadata !180, metadata !"mode", metadata !1, i32 49, metadata !181, i32 0} ; [ DW_TAG_auto_variable ]
!180 = metadata !{i32 589835, metadata !68, i32 48, i32 0, metadata !1, i32 1} ; [ DW_TAG_lexical_block ]
!181 = metadata !{i32 589846, metadata !129, metadata !"mode_t", metadata !129, i32 71, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_typedef ]
!182 = metadata !{i32 49, i32 0, metadata !180, null}
!183 = metadata !{i32 51, i32 0, metadata !180, null}
!184 = metadata !{i32 590080, metadata !185, metadata !"ap", metadata !1, i32 53, metadata !186, i32 0} ; [ DW_TAG_auto_variable ]
!185 = metadata !{i32 589835, metadata !180, i32 54, i32 0, metadata !1, i32 2} ; [ DW_TAG_lexical_block ]
!186 = metadata !{i32 589846, metadata !187, metadata !"va_list", metadata !187, i32 80, i64 0, i64 0, i64 0, i32 0, metadata !188} ; [ DW_TAG_typedef ]
!187 = metadata !{i32 589865, metadata !"stdio.h", metadata !"/usr/include", metadata !2} ; [ DW_TAG_file_type ]
!188 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 192, i64 64, i64 0, i32 0, metadata !189, metadata !197, i32 0, null} ; [ DW_TAG_array_type ]
!189 = metadata !{i32 589843, metadata !1, metadata !"__va_list_tag", metadata !190, i32 0, i64 192, i64 64, i64 0, i32 0, null, metadata !191, i32 0, null} ; [ DW_TAG_structure_type ]
!190 = metadata !{i32 589865, metadata !"<built-in>", metadata !"/home/tyu/Documents/bugredx/klee2.9/runtime/POSIX/", metadata !2} ; [ DW_TAG_file_type ]
!191 = metadata !{metadata !192, metadata !193, metadata !194, metadata !196}
!192 = metadata !{i32 589837, metadata !189, metadata !"gp_offset", metadata !190, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ]
!193 = metadata !{i32 589837, metadata !189, metadata !"fp_offset", metadata !190, i32 0, i64 32, i64 32, i64 32, i32 0, metadata !20} ; [ DW_TAG_member ]
!194 = metadata !{i32 589837, metadata !189, metadata !"overflow_arg_area", metadata !190, i32 0, i64 64, i64 64, i64 64, i32 0, metadata !195} ; [ DW_TAG_member ]
!195 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!196 = metadata !{i32 589837, metadata !189, metadata !"reg_save_area", metadata !190, i32 0, i64 64, i64 64, i64 128, i32 0, metadata !195} ; [ DW_TAG_member ]
!197 = metadata !{metadata !198}
!198 = metadata !{i32 589857, i64 0, i64 0}       ; [ DW_TAG_subrange_type ]
!199 = metadata !{i32 53, i32 0, metadata !185, null}
!200 = metadata !{i32 54, i32 0, metadata !185, null}
!201 = metadata !{i32 55, i32 0, metadata !185, null}
!202 = metadata !{i32 56, i32 0, metadata !185, null}
!203 = metadata !{i32 59, i32 0, metadata !180, null}
!204 = metadata !{i32 590081, metadata !74, metadata !"fd", metadata !1, i32 62, metadata !26, i32 0} ; [ DW_TAG_arg_variable ]
!205 = metadata !{i32 62, i32 0, metadata !74, null}
!206 = metadata !{i32 590081, metadata !74, metadata !"off", metadata !1, i32 62, metadata !207, i32 0} ; [ DW_TAG_arg_variable ]
!207 = metadata !{i32 589846, metadata !129, metadata !"off_t", metadata !129, i32 87, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ]
!208 = metadata !{i32 590081, metadata !74, metadata !"whence", metadata !1, i32 62, metadata !26, i32 0} ; [ DW_TAG_arg_variable ]
!209 = metadata !{i32 63, i32 0, metadata !210, null}
!210 = metadata !{i32 589835, metadata !74, i32 62, i32 0, metadata !1, i32 3} ; [ DW_TAG_lexical_block ]
!211 = metadata !{i32 590081, metadata !77, metadata !"vers", metadata !1, i32 66, metadata !26, i32 0} ; [ DW_TAG_arg_variable ]
!212 = metadata !{i32 66, i32 0, metadata !77, null}
!213 = metadata !{i32 590081, metadata !77, metadata !"path", metadata !1, i32 66, metadata !71, i32 0} ; [ DW_TAG_arg_variable ]
!214 = metadata !{i32 590081, metadata !77, metadata !"buf", metadata !1, i32 66, metadata !48, i32 0} ; [ DW_TAG_arg_variable ]
!215 = metadata !{i32 590080, metadata !216, metadata !"tmp", metadata !1, i32 67, metadata !6, i32 0} ; [ DW_TAG_auto_variable ]
!216 = metadata !{i32 589835, metadata !77, i32 66, i32 0, metadata !1, i32 4} ; [ DW_TAG_lexical_block ]
!217 = metadata !{i32 67, i32 0, metadata !216, null}
!218 = metadata !{i32 590080, metadata !216, metadata !"res", metadata !1, i32 68, metadata !26, i32 0} ; [ DW_TAG_auto_variable ]
!219 = metadata !{i32 68, i32 0, metadata !216, null}
!220 = metadata !{i32 69, i32 0, metadata !216, null}
!221 = metadata !{i32 70, i32 0, metadata !216, null}
!222 = metadata !{i32 590081, metadata !80, metadata !"path", metadata !1, i32 73, metadata !71, i32 0} ; [ DW_TAG_arg_variable ]
!223 = metadata !{i32 73, i32 0, metadata !80, null}
!224 = metadata !{i32 590081, metadata !80, metadata !"buf", metadata !1, i32 73, metadata !48, i32 0} ; [ DW_TAG_arg_variable ]
!225 = metadata !{i32 590080, metadata !226, metadata !"tmp", metadata !1, i32 74, metadata !6, i32 0} ; [ DW_TAG_auto_variable ]
!226 = metadata !{i32 589835, metadata !80, i32 73, i32 0, metadata !1, i32 5} ; [ DW_TAG_lexical_block ]
!227 = metadata !{i32 74, i32 0, metadata !226, null}
!228 = metadata !{i32 590080, metadata !226, metadata !"res", metadata !1, i32 75, metadata !26, i32 0} ; [ DW_TAG_auto_variable ]
!229 = metadata !{i32 75, i32 0, metadata !226, null}
!230 = metadata !{i32 76, i32 0, metadata !226, null}
!231 = metadata !{i32 77, i32 0, metadata !226, null}
!232 = metadata !{i32 590081, metadata !83, metadata !"vers", metadata !1, i32 80, metadata !26, i32 0} ; [ DW_TAG_arg_variable ]
!233 = metadata !{i32 80, i32 0, metadata !83, null}
!234 = metadata !{i32 590081, metadata !83, metadata !"path", metadata !1, i32 80, metadata !71, i32 0} ; [ DW_TAG_arg_variable ]
!235 = metadata !{i32 590081, metadata !83, metadata !"buf", metadata !1, i32 80, metadata !48, i32 0} ; [ DW_TAG_arg_variable ]
!236 = metadata !{i32 590080, metadata !237, metadata !"tmp", metadata !1, i32 81, metadata !6, i32 0} ; [ DW_TAG_auto_variable ]
!237 = metadata !{i32 589835, metadata !83, i32 80, i32 0, metadata !1, i32 6} ; [ DW_TAG_lexical_block ]
!238 = metadata !{i32 81, i32 0, metadata !237, null}
!239 = metadata !{i32 590080, metadata !237, metadata !"res", metadata !1, i32 82, metadata !26, i32 0} ; [ DW_TAG_auto_variable ]
!240 = metadata !{i32 82, i32 0, metadata !237, null}
!241 = metadata !{i32 83, i32 0, metadata !237, null}
!242 = metadata !{i32 84, i32 0, metadata !237, null}
!243 = metadata !{i32 590081, metadata !84, metadata !"path", metadata !1, i32 87, metadata !71, i32 0} ; [ DW_TAG_arg_variable ]
!244 = metadata !{i32 87, i32 0, metadata !84, null}
!245 = metadata !{i32 590081, metadata !84, metadata !"buf", metadata !1, i32 87, metadata !48, i32 0} ; [ DW_TAG_arg_variable ]
!246 = metadata !{i32 590080, metadata !247, metadata !"tmp", metadata !1, i32 88, metadata !6, i32 0} ; [ DW_TAG_auto_variable ]
!247 = metadata !{i32 589835, metadata !84, i32 87, i32 0, metadata !1, i32 7} ; [ DW_TAG_lexical_block ]
!248 = metadata !{i32 88, i32 0, metadata !247, null}
!249 = metadata !{i32 590080, metadata !247, metadata !"res", metadata !1, i32 89, metadata !26, i32 0} ; [ DW_TAG_auto_variable ]
!250 = metadata !{i32 89, i32 0, metadata !247, null}
!251 = metadata !{i32 90, i32 0, metadata !247, null}
!252 = metadata !{i32 91, i32 0, metadata !247, null}
!253 = metadata !{i32 590081, metadata !85, metadata !"vers", metadata !1, i32 94, metadata !26, i32 0} ; [ DW_TAG_arg_variable ]
!254 = metadata !{i32 94, i32 0, metadata !85, null}
!255 = metadata !{i32 590081, metadata !85, metadata !"fd", metadata !1, i32 94, metadata !26, i32 0} ; [ DW_TAG_arg_variable ]
!256 = metadata !{i32 590081, metadata !85, metadata !"buf", metadata !1, i32 94, metadata !48, i32 0} ; [ DW_TAG_arg_variable ]
!257 = metadata !{i32 590080, metadata !258, metadata !"tmp", metadata !1, i32 95, metadata !6, i32 0} ; [ DW_TAG_auto_variable ]
!258 = metadata !{i32 589835, metadata !85, i32 94, i32 0, metadata !1, i32 8} ; [ DW_TAG_lexical_block ]
!259 = metadata !{i32 95, i32 0, metadata !258, null}
!260 = metadata !{i32 590080, metadata !258, metadata !"res", metadata !1, i32 96, metadata !26, i32 0} ; [ DW_TAG_auto_variable ]
!261 = metadata !{i32 96, i32 0, metadata !258, null}
!262 = metadata !{i32 97, i32 0, metadata !258, null}
!263 = metadata !{i32 98, i32 0, metadata !258, null}
!264 = metadata !{i32 590081, metadata !88, metadata !"fd", metadata !1, i32 101, metadata !26, i32 0} ; [ DW_TAG_arg_variable ]
!265 = metadata !{i32 101, i32 0, metadata !88, null}
!266 = metadata !{i32 590081, metadata !88, metadata !"buf", metadata !1, i32 101, metadata !48, i32 0} ; [ DW_TAG_arg_variable ]
!267 = metadata !{i32 590080, metadata !268, metadata !"tmp", metadata !1, i32 102, metadata !6, i32 0} ; [ DW_TAG_auto_variable ]
!268 = metadata !{i32 589835, metadata !88, i32 101, i32 0, metadata !1, i32 9} ; [ DW_TAG_lexical_block ]
!269 = metadata !{i32 102, i32 0, metadata !268, null}
!270 = metadata !{i32 590080, metadata !268, metadata !"res", metadata !1, i32 103, metadata !26, i32 0} ; [ DW_TAG_auto_variable ]
!271 = metadata !{i32 103, i32 0, metadata !268, null}
!272 = metadata !{i32 104, i32 0, metadata !268, null}
!273 = metadata !{i32 105, i32 0, metadata !268, null}
!274 = metadata !{i32 590081, metadata !91, metadata !"fd", metadata !1, i32 108, metadata !26, i32 0} ; [ DW_TAG_arg_variable ]
!275 = metadata !{i32 108, i32 0, metadata !91, null}
!276 = metadata !{i32 590081, metadata !91, metadata !"length", metadata !1, i32 108, metadata !207, i32 0} ; [ DW_TAG_arg_variable ]
!277 = metadata !{i32 109, i32 0, metadata !278, null}
!278 = metadata !{i32 589835, metadata !91, i32 108, i32 0, metadata !1, i32 10} ; [ DW_TAG_lexical_block ]
!279 = metadata !{i32 590081, metadata !94, metadata !"path", metadata !1, i32 112, metadata !71, i32 0} ; [ DW_TAG_arg_variable ]
!280 = metadata !{i32 112, i32 0, metadata !94, null}
!281 = metadata !{i32 590081, metadata !94, metadata !"buf32", metadata !1, i32 112, metadata !97, i32 0} ; [ DW_TAG_arg_variable ]
!282 = metadata !{i32 131, i32 0, metadata !283, null}
!283 = metadata !{i32 589835, metadata !94, i32 112, i32 0, metadata !1, i32 11} ; [ DW_TAG_lexical_block ]
!284 = metadata !{i32 590081, metadata !125, metadata !"fd", metadata !1, i32 137, metadata !26, i32 0} ; [ DW_TAG_arg_variable ]
!285 = metadata !{i32 137, i32 0, metadata !125, null}
!286 = metadata !{i32 590081, metadata !125, metadata !"dirp", metadata !1, i32 137, metadata !130, i32 0} ; [ DW_TAG_arg_variable ]
!287 = metadata !{i32 590081, metadata !125, metadata !"nbytes", metadata !1, i32 137, metadata !144, i32 0} ; [ DW_TAG_arg_variable ]
!288 = metadata !{i32 590080, metadata !289, metadata !"dp64", metadata !1, i32 138, metadata !290, i32 0} ; [ DW_TAG_auto_variable ]
!289 = metadata !{i32 589835, metadata !125, i32 137, i32 0, metadata !1, i32 12} ; [ DW_TAG_lexical_block ]
!290 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !291} ; [ DW_TAG_pointer_type ]
!291 = metadata !{i32 589843, metadata !1, metadata !"dirent64", metadata !132, i32 39, i64 2240, i64 64, i64 0, i32 0, null, metadata !292, i32 0, null} ; [ DW_TAG_structure_type ]
!292 = metadata !{metadata !293, metadata !294, metadata !295, metadata !296, metadata !297}
!293 = metadata !{i32 589837, metadata !291, metadata !"d_ino", metadata !132, i32 40, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ]
!294 = metadata !{i32 589837, metadata !291, metadata !"d_off", metadata !132, i32 41, i64 64, i64 64, i64 64, i32 0, metadata !150} ; [ DW_TAG_member ]
!295 = metadata !{i32 589837, metadata !291, metadata !"d_reclen", metadata !132, i32 42, i64 16, i64 16, i64 128, i32 0, metadata !137} ; [ DW_TAG_member ]
!296 = metadata !{i32 589837, metadata !291, metadata !"d_type", metadata !132, i32 43, i64 8, i64 8, i64 144, i32 0, metadata !139} ; [ DW_TAG_member ]
!297 = metadata !{i32 589837, metadata !291, metadata !"d_name", metadata !132, i32 44, i64 2048, i64 8, i64 152, i32 0, metadata !141} ; [ DW_TAG_member ]
!298 = metadata !{i32 138, i32 0, metadata !289, null}
!299 = metadata !{i32 590080, metadata !289, metadata !"res", metadata !1, i32 139, metadata !128, i32 0} ; [ DW_TAG_auto_variable ]
!300 = metadata !{i32 139, i32 0, metadata !289, null}
!301 = metadata !{i32 141, i32 0, metadata !289, null}
!302 = metadata !{i32 590080, metadata !303, metadata !"end", metadata !1, i32 142, metadata !290, i32 0} ; [ DW_TAG_auto_variable ]
!303 = metadata !{i32 589835, metadata !289, i32 142, i32 0, metadata !1, i32 13} ; [ DW_TAG_lexical_block ]
!304 = metadata !{i32 142, i32 0, metadata !303, null}
!305 = metadata !{i32 590080, metadata !306, metadata !"dp", metadata !1, i32 144, metadata !130, i32 0} ; [ DW_TAG_auto_variable ]
!306 = metadata !{i32 589835, metadata !303, i32 144, i32 0, metadata !1, i32 14} ; [ DW_TAG_lexical_block ]
!307 = metadata !{i32 144, i32 0, metadata !306, null}
!308 = metadata !{i32 590080, metadata !306, metadata !"name_len", metadata !1, i32 145, metadata !144, i32 0} ; [ DW_TAG_auto_variable ]
!309 = metadata !{i32 145, i32 0, metadata !306, null}
!310 = metadata !{i32 146, i32 0, metadata !306, null}
!311 = metadata !{i32 147, i32 0, metadata !306, null}
!312 = metadata !{i32 148, i32 0, metadata !306, null}
!313 = metadata !{i32 149, i32 0, metadata !306, null}
!314 = metadata !{i32 150, i32 0, metadata !306, null}
!315 = metadata !{i32 151, i32 0, metadata !306, null}
!316 = metadata !{i32 152, i32 0, metadata !306, null}
!317 = metadata !{i32 143, i32 0, metadata !303, null}
!318 = metadata !{i32 156, i32 0, metadata !289, null}
!319 = metadata !{i32 590081, metadata !146, metadata !"pathname", metadata !1, i32 164, metadata !71, i32 0} ; [ DW_TAG_arg_variable ]
!320 = metadata !{i32 164, i32 0, metadata !146, null}
!321 = metadata !{i32 590081, metadata !146, metadata !"flags", metadata !1, i32 164, metadata !26, i32 0} ; [ DW_TAG_arg_variable ]
!322 = metadata !{i32 590080, metadata !323, metadata !"mode", metadata !1, i32 165, metadata !181, i32 0} ; [ DW_TAG_auto_variable ]
!323 = metadata !{i32 589835, metadata !146, i32 164, i32 0, metadata !1, i32 15} ; [ DW_TAG_lexical_block ]
!324 = metadata !{i32 165, i32 0, metadata !323, null}
!325 = metadata !{i32 167, i32 0, metadata !323, null}
!326 = metadata !{i32 590080, metadata !327, metadata !"ap", metadata !1, i32 169, metadata !186, i32 0} ; [ DW_TAG_auto_variable ]
!327 = metadata !{i32 589835, metadata !323, i32 170, i32 0, metadata !1, i32 16} ; [ DW_TAG_lexical_block ]
!328 = metadata !{i32 169, i32 0, metadata !327, null}
!329 = metadata !{i32 170, i32 0, metadata !327, null}
!330 = metadata !{i32 171, i32 0, metadata !327, null}
!331 = metadata !{i32 172, i32 0, metadata !327, null}
!332 = metadata !{i32 175, i32 0, metadata !323, null}
!333 = metadata !{i32 590081, metadata !147, metadata !"fd", metadata !1, i32 179, metadata !26, i32 0} ; [ DW_TAG_arg_variable ]
!334 = metadata !{i32 179, i32 0, metadata !147, null}
!335 = metadata !{i32 590081, metadata !147, metadata !"off", metadata !1, i32 179, metadata !336, i32 0} ; [ DW_TAG_arg_variable ]
!336 = metadata !{i32 589846, metadata !129, metadata !"off64_t", metadata !129, i32 94, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ]
!337 = metadata !{i32 590081, metadata !147, metadata !"whence", metadata !1, i32 179, metadata !26, i32 0} ; [ DW_TAG_arg_variable ]
!338 = metadata !{i32 180, i32 0, metadata !339, null}
!339 = metadata !{i32 589835, metadata !147, i32 179, i32 0, metadata !1, i32 17} ; [ DW_TAG_lexical_block ]
!340 = metadata !{i32 590081, metadata !151, metadata !"path", metadata !1, i32 184, metadata !71, i32 0} ; [ DW_TAG_arg_variable ]
!341 = metadata !{i32 184, i32 0, metadata !151, null}
!342 = metadata !{i32 590081, metadata !151, metadata !"buf", metadata !1, i32 184, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!343 = metadata !{i32 185, i32 0, metadata !344, null}
!344 = metadata !{i32 589835, metadata !151, i32 184, i32 0, metadata !1, i32 18} ; [ DW_TAG_lexical_block ]
!345 = metadata !{i32 590081, metadata !154, metadata !"path", metadata !1, i32 189, metadata !71, i32 0} ; [ DW_TAG_arg_variable ]
!346 = metadata !{i32 189, i32 0, metadata !154, null}
!347 = metadata !{i32 590081, metadata !154, metadata !"buf", metadata !1, i32 189, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!348 = metadata !{i32 190, i32 0, metadata !349, null}
!349 = metadata !{i32 589835, metadata !154, i32 189, i32 0, metadata !1, i32 19} ; [ DW_TAG_lexical_block ]
!350 = metadata !{i32 590081, metadata !155, metadata !"fd", metadata !1, i32 194, metadata !26, i32 0} ; [ DW_TAG_arg_variable ]
!351 = metadata !{i32 194, i32 0, metadata !155, null}
!352 = metadata !{i32 590081, metadata !155, metadata !"buf", metadata !1, i32 194, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!353 = metadata !{i32 195, i32 0, metadata !354, null}
!354 = metadata !{i32 589835, metadata !155, i32 194, i32 0, metadata !1, i32 20} ; [ DW_TAG_lexical_block ]
