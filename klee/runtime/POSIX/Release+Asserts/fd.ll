; ModuleID = 'fd.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-f128:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__fsid_t = type { [2 x i32] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.dirent64 = type { i64, i64, i16, i8, [256 x i8] }
%struct.exe_disk_file_t = type { i32, i8*, %struct.stat* }
%struct.exe_file_system_t = type { i32, %struct.exe_disk_file_t*, %struct.exe_disk_file_t*, i32, %struct.exe_disk_file_t*, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.exe_file_t = type { i32, i32, i64, %struct.exe_disk_file_t* }
%struct.exe_sym_env_t = type { [32 x %struct.exe_file_t], i32, i32, i32 }
%struct.fd_set = type { [16 x i64] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.statfs = type { i64, i64, i64, i64, i64, i64, i64, %struct.__fsid_t, i64, i64, i64, [4 x i64] }
%struct.termios = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }
%struct.timespec = type { i64, i64 }
%struct.timeval = type { i64, i64 }
%struct.winsize = type { i16, i16, i16, i16 }

@__exe_fs = external unnamed_addr global %struct.exe_file_system_t
@__exe_env = external unnamed_addr global %struct.exe_sym_env_t
@stderr = external unnamed_addr global %struct._IO_FILE*
@.str = private unnamed_addr constant [47 x i8] c"Undefined call to open(): O_EXCL w/o O_RDONLY\0A\00", align 8
@n_calls.4318 = internal unnamed_addr global i32 0
@n_calls.4345 = internal unnamed_addr global i32 0
@.str1 = private unnamed_addr constant [12 x i8] c"f->off >= 0\00", align 1
@.str2 = private unnamed_addr constant [5 x i8] c"fd.c\00", align 1
@__PRETTY_FUNCTION__.4348 = internal unnamed_addr constant [5 x i8] c"read\00"
@n_calls.4432 = internal unnamed_addr global i32 0
@.str3 = private unnamed_addr constant [7 x i8] c"r >= 0\00", align 1
@__PRETTY_FUNCTION__.4435 = internal unnamed_addr constant [6 x i8] c"write\00"
@.str4 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str5 = private unnamed_addr constant [33 x i8] c"WARNING: write() ignores bytes.\0A\00", align 8
@.str6 = private unnamed_addr constant [18 x i8] c"new_off == f->off\00", align 1
@__PRETTY_FUNCTION__.4537 = internal unnamed_addr constant [11 x i8] c"__fd_lseek\00"
@.str7 = private unnamed_addr constant [33 x i8] c"symbolic file, ignoring (ENOENT)\00", align 8
@n_calls.4683 = internal unnamed_addr global i32 0
@n_calls.4715 = internal unnamed_addr global i32 0
@.str8 = private unnamed_addr constant [32 x i8] c"symbolic file, ignoring (EPERM)\00", align 8
@n_calls.4844 = internal unnamed_addr global i32 0
@.str9 = private unnamed_addr constant [30 x i8] c"symbolic file, ignoring (EIO)\00", align 1
@.str10 = private unnamed_addr constant [33 x i8] c"symbolic file, ignoring (EINVAL)\00", align 8
@.str11 = private unnamed_addr constant [18 x i8] c"s != (off64_t) -1\00", align 1
@__PRETTY_FUNCTION__.4892 = internal unnamed_addr constant [14 x i8] c"__fd_getdents\00"
@.str12 = private unnamed_addr constant [41 x i8] c"(TCGETS) symbolic file, incomplete model\00", align 8
@.str13 = private unnamed_addr constant [42 x i8] c"(TCSETS) symbolic file, silently ignoring\00", align 8
@.str14 = private unnamed_addr constant [43 x i8] c"(TCSETSW) symbolic file, silently ignoring\00", align 8
@.str15 = private unnamed_addr constant [43 x i8] c"(TCSETSF) symbolic file, silently ignoring\00", align 8
@.str16 = private unnamed_addr constant [45 x i8] c"(TIOCGWINSZ) symbolic file, incomplete model\00", align 8
@.str17 = private unnamed_addr constant [46 x i8] c"(TIOCSWINSZ) symbolic file, ignoring (EINVAL)\00", align 8
@.str18 = private unnamed_addr constant [43 x i8] c"(FIONREAD) symbolic file, incomplete model\00", align 8
@.str19 = private unnamed_addr constant [44 x i8] c"(MTIOCGET) symbolic file, ignoring (EINVAL)\00", align 8
@.str20 = private unnamed_addr constant [32 x i8] c"symbolic file, ignoring (EBADF)\00", align 8
@.str21 = private unnamed_addr constant [17 x i8] c"ignoring (EPERM)\00", align 1
@C.28.5458 = private unnamed_addr constant %struct.timespec zeroinitializer
@n_calls.5570 = internal unnamed_addr global i32 0
@.str22 = private unnamed_addr constant [18 x i8] c"ignoring (ENOENT)\00", align 1

define internal %struct.exe_disk_file_t* @__get_sym_file(i8* %pathname) nounwind {
entry:
  %pathname_addr = alloca i8*, align 8
  %retval = alloca %struct.exe_disk_file_t*
  %0 = alloca %struct.exe_disk_file_t*
  %c = alloca i8
  %i = alloca i32
  %df = alloca %struct.exe_disk_file_t*
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i8** %pathname_addr}, metadata !238), !dbg !239
  store i8* %pathname, i8** %pathname_addr
  call void @llvm.dbg.declare(metadata !{i8* %c}, metadata !240), !dbg !242
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !243), !dbg !244
  %1 = load i8** %pathname_addr, align 8, !dbg !242
  %2 = getelementptr inbounds i8* %1, i64 0, !dbg !242
  %3 = load i8* %2, align 1, !dbg !242
  store i8 %3, i8* %c, align 1, !dbg !242
  %4 = load i8* %c, align 1, !dbg !245
  %5 = icmp eq i8 %4, 0, !dbg !245
  br i1 %5, label %bb1, label %bb, !dbg !245

bb:                                               ; preds = %entry
  %6 = load i8** %pathname_addr, align 8, !dbg !245
  %7 = getelementptr inbounds i8* %6, i64 1, !dbg !245
  %8 = load i8* %7, align 1, !dbg !245
  %9 = icmp ne i8 %8, 0, !dbg !245
  br i1 %9, label %bb1, label %bb2, !dbg !245

bb1:                                              ; preds = %bb, %entry
  store %struct.exe_disk_file_t* null, %struct.exe_disk_file_t** %0, align 8, !dbg !246
  br label %bb10, !dbg !246

bb2:                                              ; preds = %bb
  store i32 0, i32* %i, align 4, !dbg !247
  br label %bb8, !dbg !247

bb3:                                              ; preds = %bb8
  %10 = load i8* %c, align 1, !dbg !248
  %11 = sext i8 %10 to i32, !dbg !248
  %12 = load i32* %i, align 4, !dbg !248
  %13 = trunc i32 %12 to i8, !dbg !248
  %14 = sext i8 %13 to i32, !dbg !248
  %15 = add nsw i32 %14, 65, !dbg !248
  %16 = icmp eq i32 %11, %15, !dbg !248
  br i1 %16, label %bb4, label %bb7, !dbg !248

bb4:                                              ; preds = %bb3
  call void @llvm.dbg.declare(metadata !{%struct.exe_disk_file_t** %df}, metadata !249), !dbg !251
  %17 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !251
  %18 = load i32* %i, align 4, !dbg !251
  %19 = zext i32 %18 to i64, !dbg !251
  %20 = getelementptr inbounds %struct.exe_disk_file_t* %17, i64 %19, !dbg !251
  store %struct.exe_disk_file_t* %20, %struct.exe_disk_file_t** %df, align 8, !dbg !251
  %21 = load %struct.exe_disk_file_t** %df, align 8, !dbg !252
  %22 = getelementptr inbounds %struct.exe_disk_file_t* %21, i32 0, i32 2, !dbg !252
  %23 = load %struct.stat** %22, align 8, !dbg !252
  %24 = getelementptr inbounds %struct.stat* %23, i32 0, i32 1, !dbg !252
  %25 = load i64* %24, align 8, !dbg !252
  %26 = icmp eq i64 %25, 0, !dbg !252
  br i1 %26, label %bb5, label %bb6, !dbg !252

bb5:                                              ; preds = %bb4
  store %struct.exe_disk_file_t* null, %struct.exe_disk_file_t** %0, align 8, !dbg !253
  br label %bb10, !dbg !253

bb6:                                              ; preds = %bb4
  %27 = load %struct.exe_disk_file_t** %df, align 8, !dbg !254
  store %struct.exe_disk_file_t* %27, %struct.exe_disk_file_t** %0, align 8, !dbg !254
  br label %bb10, !dbg !254

bb7:                                              ; preds = %bb3
  %28 = load i32* %i, align 4, !dbg !247
  %29 = add i32 %28, 1, !dbg !247
  store i32 %29, i32* %i, align 4, !dbg !247
  br label %bb8, !dbg !247

bb8:                                              ; preds = %bb7, %bb2
  %30 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !247
  %31 = load i32* %i, align 4, !dbg !247
  %32 = icmp ugt i32 %30, %31, !dbg !247
  br i1 %32, label %bb3, label %bb9, !dbg !247

bb9:                                              ; preds = %bb8
  store %struct.exe_disk_file_t* null, %struct.exe_disk_file_t** %0, align 8, !dbg !255
  br label %bb10, !dbg !255

bb10:                                             ; preds = %bb9, %bb6, %bb5, %bb1
  %33 = load %struct.exe_disk_file_t** %0, align 8, !dbg !246
  store %struct.exe_disk_file_t* %33, %struct.exe_disk_file_t** %retval, align 8, !dbg !246
  br label %return, !dbg !246

return:                                           ; preds = %bb10
  %retval11 = load %struct.exe_disk_file_t** %retval, !dbg !246
  ret %struct.exe_disk_file_t* %retval11, !dbg !246
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define internal %struct.exe_file_t* @__get_file(i32 %fd) nounwind {
entry:
  %fd_addr = alloca i32, align 4
  %retval = alloca %struct.exe_file_t*
  %0 = alloca %struct.exe_file_t*
  %f = alloca %struct.exe_file_t*
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i32* %fd_addr}, metadata !256), !dbg !257
  store i32 %fd, i32* %fd_addr
  call void @llvm.dbg.declare(metadata !{%struct.exe_file_t** %f}, metadata !258), !dbg !261
  %1 = load i32* %fd_addr, align 4, !dbg !262
  %2 = icmp sge i32 %1, 0, !dbg !262
  br i1 %2, label %bb, label %bb3, !dbg !262

bb:                                               ; preds = %entry
  %3 = load i32* %fd_addr, align 4, !dbg !262
  %4 = icmp sle i32 %3, 31, !dbg !262
  br i1 %4, label %bb1, label %bb3, !dbg !262

bb1:                                              ; preds = %bb
  %5 = load i32* %fd_addr, align 4, !dbg !261
  %6 = sext i32 %5 to i64, !dbg !261
  %7 = getelementptr inbounds [32 x %struct.exe_file_t]* getelementptr inbounds (%struct.exe_sym_env_t* @__exe_env, i64 0, i32 0), i64 0, i64 %6, !dbg !261
  store %struct.exe_file_t* %7, %struct.exe_file_t** %f, align 8, !dbg !261
  %8 = load %struct.exe_file_t** %f, align 8, !dbg !263
  %9 = getelementptr inbounds %struct.exe_file_t* %8, i32 0, i32 1, !dbg !263
  %10 = load i32* %9, align 4, !dbg !263
  %11 = and i32 %10, 1, !dbg !263
  %12 = trunc i32 %11 to i8, !dbg !263
  %toBool = icmp ne i8 %12, 0, !dbg !263
  br i1 %toBool, label %bb2, label %bb3, !dbg !263

bb2:                                              ; preds = %bb1
  %13 = load %struct.exe_file_t** %f, align 8, !dbg !264
  store %struct.exe_file_t* %13, %struct.exe_file_t** %0, align 8, !dbg !264
  br label %bb4, !dbg !264

bb3:                                              ; preds = %bb1, %bb, %entry
  store %struct.exe_file_t* null, %struct.exe_file_t** %0, align 8, !dbg !265
  br label %bb4, !dbg !265

bb4:                                              ; preds = %bb3, %bb2
  %14 = load %struct.exe_file_t** %0, align 8, !dbg !264
  store %struct.exe_file_t* %14, %struct.exe_file_t** %retval, align 8, !dbg !264
  br label %return, !dbg !264

return:                                           ; preds = %bb4
  %retval5 = load %struct.exe_file_t** %retval, !dbg !264
  ret %struct.exe_file_t* %retval5, !dbg !264
}

define i32 @access(i8* %pathname, i32 %mode) nounwind {
entry:
  %pathname_addr = alloca i8*, align 8
  %mode_addr = alloca i32, align 4
  %retval = alloca i32
  %0 = alloca i32
  %dfile = alloca %struct.exe_disk_file_t*
  %r = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i8** %pathname_addr}, metadata !266), !dbg !267
  store i8* %pathname, i8** %pathname_addr
  call void @llvm.dbg.declare(metadata !{i32* %mode_addr}, metadata !268), !dbg !267
  store i32 %mode, i32* %mode_addr
  call void @llvm.dbg.declare(metadata !{%struct.exe_disk_file_t** %dfile}, metadata !269), !dbg !271
  %1 = load i8** %pathname_addr, align 8, !dbg !271
  %2 = call %struct.exe_disk_file_t* @__get_sym_file(i8* %1) nounwind, !dbg !271
  store %struct.exe_disk_file_t* %2, %struct.exe_disk_file_t** %dfile, align 8, !dbg !271
  %3 = load %struct.exe_disk_file_t** %dfile, align 8, !dbg !272
  %4 = icmp ne %struct.exe_disk_file_t* %3, null, !dbg !272
  br i1 %4, label %bb, label %bb1, !dbg !272

bb:                                               ; preds = %entry
  store i32 0, i32* %0, align 4, !dbg !273
  br label %bb4, !dbg !273

bb1:                                              ; preds = %entry
  call void @llvm.dbg.declare(metadata !{i32* %r}, metadata !274), !dbg !276
  %5 = load i8** %pathname_addr, align 8, !dbg !276
  %6 = call i8* @__concretize_string(i8* %5) nounwind, !dbg !276
  %7 = load i32* %mode_addr, align 4, !dbg !276
  %8 = call i64 (i64, ...)* @syscall(i64 21, i8* %6, i32 %7) nounwind, !dbg !276
  %9 = trunc i64 %8 to i32, !dbg !276
  store i32 %9, i32* %r, align 4, !dbg !276
  %10 = load i32* %r, align 4, !dbg !277
  %11 = icmp eq i32 %10, -1, !dbg !277
  br i1 %11, label %bb2, label %bb3, !dbg !277

bb2:                                              ; preds = %bb1
  %12 = call i32* @__errno_location() nounwind readnone, !dbg !278
  %13 = call i32 @klee_get_errno() nounwind, !dbg !278
  store i32 %13, i32* %12, align 4, !dbg !278
  br label %bb3, !dbg !278

bb3:                                              ; preds = %bb2, %bb1
  %14 = load i32* %r, align 4, !dbg !279
  store i32 %14, i32* %0, align 4, !dbg !279
  br label %bb4, !dbg !279

bb4:                                              ; preds = %bb3, %bb
  %15 = load i32* %0, align 4, !dbg !273
  store i32 %15, i32* %retval, align 4, !dbg !273
  br label %return, !dbg !273

return:                                           ; preds = %bb4
  %retval5 = load i32* %retval, !dbg !273
  ret i32 %retval5, !dbg !273
}

declare i64 @syscall(i64, ...) nounwind

declare i32* @__errno_location() nounwind readnone

declare i32 @klee_get_errno()

define i32 @umask(i32 %mask) nounwind {
entry:
  %mask_addr = alloca i32, align 4
  %retval = alloca i32
  %0 = alloca i32
  %r = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i32* %mask_addr}, metadata !280), !dbg !281
  store i32 %mask, i32* %mask_addr
  call void @llvm.dbg.declare(metadata !{i32* %r}, metadata !282), !dbg !284
  %1 = load i32* getelementptr inbounds (%struct.exe_sym_env_t* @__exe_env, i64 0, i32 1), align 8, !dbg !284
  store i32 %1, i32* %r, align 4, !dbg !284
  %2 = load i32* %mask_addr, align 4, !dbg !285
  %3 = and i32 %2, 511, !dbg !285
  store i32 %3, i32* getelementptr inbounds (%struct.exe_sym_env_t* @__exe_env, i64 0, i32 1), align 8, !dbg !285
  %4 = load i32* %r, align 4, !dbg !286
  store i32 %4, i32* %0, align 4, !dbg !286
  %5 = load i32* %0, align 4, !dbg !286
  store i32 %5, i32* %retval, align 4, !dbg !286
  br label %return, !dbg !286

return:                                           ; preds = %entry
  %retval1 = load i32* %retval, !dbg !286
  ret i32 %retval1, !dbg !286
}

define internal i32 @has_permission(i32 %flags, %struct.stat* %s) nounwind {
entry:
  %flags_addr = alloca i32, align 4
  %s_addr = alloca %struct.stat*, align 8
  %retval = alloca i32
  %0 = alloca i32
  %write_access = alloca i32
  %read_access = alloca i32
  %mode = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i32* %flags_addr}, metadata !287), !dbg !288
  store i32 %flags, i32* %flags_addr
  call void @llvm.dbg.declare(metadata !{%struct.stat** %s_addr}, metadata !289), !dbg !288
  store %struct.stat* %s, %struct.stat** %s_addr
  call void @llvm.dbg.declare(metadata !{i32* %write_access}, metadata !290), !dbg !292
  call void @llvm.dbg.declare(metadata !{i32* %read_access}, metadata !293), !dbg !292
  call void @llvm.dbg.declare(metadata !{i32* %mode}, metadata !294), !dbg !295
  %1 = load %struct.stat** %s_addr, align 8, !dbg !295
  %2 = getelementptr inbounds %struct.stat* %1, i32 0, i32 3, !dbg !295
  %3 = load i32* %2, align 8, !dbg !295
  store i32 %3, i32* %mode, align 4, !dbg !295
  %4 = load i32* %flags_addr, align 4, !dbg !296
  %5 = and i32 %4, 2, !dbg !296
  %6 = icmp ne i32 %5, 0, !dbg !296
  br i1 %6, label %bb, label %bb1, !dbg !296

bb:                                               ; preds = %entry
  store i32 1, i32* %read_access, align 4, !dbg !297
  br label %bb2, !dbg !297

bb1:                                              ; preds = %entry
  store i32 0, i32* %read_access, align 4, !dbg !298
  br label %bb2, !dbg !298

bb2:                                              ; preds = %bb1, %bb
  %7 = load i32* %flags_addr, align 4, !dbg !299
  %8 = and i32 %7, 1, !dbg !299
  %9 = trunc i32 %8 to i8, !dbg !299
  %toBool = icmp ne i8 %9, 0, !dbg !299
  br i1 %toBool, label %bb4, label %bb3, !dbg !299

bb3:                                              ; preds = %bb2
  %10 = load i32* %flags_addr, align 4, !dbg !299
  %11 = and i32 %10, 2, !dbg !299
  %12 = icmp ne i32 %11, 0, !dbg !299
  br i1 %12, label %bb4, label %bb5, !dbg !299

bb4:                                              ; preds = %bb3, %bb2
  store i32 1, i32* %write_access, align 4, !dbg !300
  br label %bb6, !dbg !300

bb5:                                              ; preds = %bb3
  store i32 0, i32* %write_access, align 4, !dbg !301
  br label %bb6, !dbg !301

bb6:                                              ; preds = %bb5, %bb4
  %13 = load i32* %read_access, align 4, !dbg !302
  %14 = icmp ne i32 %13, 0, !dbg !302
  br i1 %14, label %bb7, label %bb9, !dbg !302

bb7:                                              ; preds = %bb6
  %15 = load i32* %mode, align 4, !dbg !302
  %16 = and i32 %15, 292, !dbg !302
  %17 = icmp ne i32 %16, 0, !dbg !302
  br i1 %17, label %bb8, label %bb9, !dbg !302

bb8:                                              ; preds = %bb7
  store i32 0, i32* %0, align 4, !dbg !303
  br label %bb13, !dbg !303

bb9:                                              ; preds = %bb7, %bb6
  %18 = load i32* %write_access, align 4, !dbg !304
  %19 = icmp ne i32 %18, 0, !dbg !304
  br i1 %19, label %bb10, label %bb12, !dbg !304

bb10:                                             ; preds = %bb9
  %20 = load i32* %mode, align 4, !dbg !304
  %21 = and i32 %20, 146, !dbg !304
  %22 = icmp eq i32 %21, 0, !dbg !304
  br i1 %22, label %bb11, label %bb12, !dbg !304

bb11:                                             ; preds = %bb10
  store i32 0, i32* %0, align 4, !dbg !305
  br label %bb13, !dbg !305

bb12:                                             ; preds = %bb10, %bb9
  store i32 1, i32* %0, align 4, !dbg !306
  br label %bb13, !dbg !306

bb13:                                             ; preds = %bb12, %bb11, %bb8
  %23 = load i32* %0, align 4, !dbg !303
  store i32 %23, i32* %retval, align 4, !dbg !303
  br label %return, !dbg !303

return:                                           ; preds = %bb13
  %retval14 = load i32* %retval, !dbg !303
  ret i32 %retval14, !dbg !303
}

define i32 @__fd_open(i8* %pathname, i32 %flags, i32 %mode) nounwind {
entry:
  %pathname_addr = alloca i8*, align 8
  %flags_addr = alloca i32, align 4
  %mode_addr = alloca i32, align 4
  %retval = alloca i32
  %0 = alloca i32
  %df = alloca %struct.exe_disk_file_t*
  %f = alloca %struct.exe_file_t*
  %fd = alloca i32
  %os_fd = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i8** %pathname_addr}, metadata !307), !dbg !308
  store i8* %pathname, i8** %pathname_addr
  call void @llvm.dbg.declare(metadata !{i32* %flags_addr}, metadata !309), !dbg !308
  store i32 %flags, i32* %flags_addr
  call void @llvm.dbg.declare(metadata !{i32* %mode_addr}, metadata !310), !dbg !308
  store i32 %mode, i32* %mode_addr
  call void @llvm.dbg.declare(metadata !{%struct.exe_disk_file_t** %df}, metadata !311), !dbg !313
  call void @llvm.dbg.declare(metadata !{%struct.exe_file_t** %f}, metadata !314), !dbg !315
  call void @llvm.dbg.declare(metadata !{i32* %fd}, metadata !316), !dbg !317
  store i32 0, i32* %fd, align 4, !dbg !318
  br label %bb2, !dbg !318

bb:                                               ; preds = %bb2
  %1 = load i32* %fd, align 4, !dbg !319
  %2 = sext i32 %1 to i64, !dbg !319
  %3 = getelementptr inbounds [32 x %struct.exe_file_t]* getelementptr inbounds (%struct.exe_sym_env_t* @__exe_env, i64 0, i32 0), i64 0, i64 %2, !dbg !319
  %4 = getelementptr inbounds %struct.exe_file_t* %3, i32 0, i32 1, !dbg !319
  %5 = load i32* %4, align 4, !dbg !319
  %6 = and i32 %5, 1, !dbg !319
  %7 = icmp eq i32 %6, 0, !dbg !319
  br i1 %7, label %bb3, label %bb1, !dbg !319

bb1:                                              ; preds = %bb
  %8 = load i32* %fd, align 4, !dbg !318
  %9 = add nsw i32 %8, 1, !dbg !318
  store i32 %9, i32* %fd, align 4, !dbg !318
  br label %bb2, !dbg !318

bb2:                                              ; preds = %bb1, %entry
  %10 = load i32* %fd, align 4, !dbg !318
  %11 = icmp sle i32 %10, 31, !dbg !318
  br i1 %11, label %bb, label %bb3, !dbg !318

bb3:                                              ; preds = %bb2, %bb
  %12 = load i32* %fd, align 4, !dbg !320
  %13 = icmp eq i32 %12, 32, !dbg !320
  br i1 %13, label %bb4, label %bb5, !dbg !320

bb4:                                              ; preds = %bb3
  %14 = call i32* @__errno_location() nounwind readnone, !dbg !321
  store i32 24, i32* %14, align 4, !dbg !321
  store i32 -1, i32* %0, align 4, !dbg !322
  br label %bb25, !dbg !322

bb5:                                              ; preds = %bb3
  %15 = load i32* %fd, align 4, !dbg !323
  %16 = sext i32 %15 to i64, !dbg !323
  %17 = getelementptr inbounds [32 x %struct.exe_file_t]* getelementptr inbounds (%struct.exe_sym_env_t* @__exe_env, i64 0, i32 0), i64 0, i64 %16, !dbg !323
  store %struct.exe_file_t* %17, %struct.exe_file_t** %f, align 8, !dbg !323
  %18 = load %struct.exe_file_t** %f, align 8, !dbg !324
  %19 = bitcast %struct.exe_file_t* %18 to i8*, !dbg !324
  call void @llvm.memset.p0i8.i64(i8* %19, i8 0, i64 24, i32 1, i1 false), !dbg !324
  %20 = load i8** %pathname_addr, align 8, !dbg !325
  %21 = call %struct.exe_disk_file_t* @__get_sym_file(i8* %20) nounwind, !dbg !325
  store %struct.exe_disk_file_t* %21, %struct.exe_disk_file_t** %df, align 8, !dbg !325
  %22 = load %struct.exe_disk_file_t** %df, align 8, !dbg !326
  %23 = icmp ne %struct.exe_disk_file_t* %22, null, !dbg !326
  br i1 %23, label %bb6, label %bb16, !dbg !326

bb6:                                              ; preds = %bb5
  %24 = load %struct.exe_file_t** %f, align 8, !dbg !327
  %25 = getelementptr inbounds %struct.exe_file_t* %24, i32 0, i32 3, !dbg !327
  %26 = load %struct.exe_disk_file_t** %df, align 8, !dbg !327
  store %struct.exe_disk_file_t* %26, %struct.exe_disk_file_t** %25, align 8, !dbg !327
  %27 = load i32* %flags_addr, align 4, !dbg !328
  %28 = and i32 %27, 64, !dbg !328
  %29 = icmp ne i32 %28, 0, !dbg !328
  br i1 %29, label %bb7, label %bb9, !dbg !328

bb7:                                              ; preds = %bb6
  %30 = load i32* %flags_addr, align 4, !dbg !328
  %31 = and i32 %30, 128, !dbg !328
  %32 = icmp ne i32 %31, 0, !dbg !328
  br i1 %32, label %bb8, label %bb9, !dbg !328

bb8:                                              ; preds = %bb7
  %33 = call i32* @__errno_location() nounwind readnone, !dbg !329
  store i32 17, i32* %33, align 4, !dbg !329
  store i32 -1, i32* %0, align 4, !dbg !330
  br label %bb25, !dbg !330

bb9:                                              ; preds = %bb7, %bb6
  %34 = load i32* %flags_addr, align 4, !dbg !331
  %35 = and i32 %34, 128, !dbg !331
  %36 = icmp ne i32 %35, 0, !dbg !331
  br i1 %36, label %bb10, label %bb12, !dbg !331

bb10:                                             ; preds = %bb9
  %37 = load i32* %flags_addr, align 4, !dbg !331
  %38 = and i32 %37, 64, !dbg !331
  %39 = icmp eq i32 %38, 0, !dbg !331
  br i1 %39, label %bb11, label %bb12, !dbg !331

bb11:                                             ; preds = %bb10
  %40 = load %struct._IO_FILE** @stderr, align 8, !dbg !332
  %41 = bitcast %struct._IO_FILE* %40 to i8*, !dbg !332
  %42 = call i64 @fwrite(i8* getelementptr inbounds ([47 x i8]* @.str, i64 0, i64 0), i64 1, i64 46, i8* %41) nounwind, !dbg !332
  %43 = call i32* @__errno_location() nounwind readnone, !dbg !333
  store i32 13, i32* %43, align 4, !dbg !333
  store i32 -1, i32* %0, align 4, !dbg !334
  br label %bb25, !dbg !334

bb12:                                             ; preds = %bb10, %bb9
  %44 = load %struct.exe_disk_file_t** %df, align 8, !dbg !335
  %45 = getelementptr inbounds %struct.exe_disk_file_t* %44, i32 0, i32 2, !dbg !335
  %46 = load %struct.stat** %45, align 8, !dbg !335
  %47 = load i32* %flags_addr, align 4, !dbg !335
  %48 = call i32 @has_permission(i32 %47, %struct.stat* %46) nounwind, !dbg !335
  %49 = icmp eq i32 %48, 0, !dbg !335
  br i1 %49, label %bb13, label %bb14, !dbg !335

bb13:                                             ; preds = %bb12
  %50 = call i32* @__errno_location() nounwind readnone, !dbg !336
  store i32 13, i32* %50, align 4, !dbg !336
  store i32 -1, i32* %0, align 4, !dbg !337
  br label %bb25, !dbg !337

bb14:                                             ; preds = %bb12
  %51 = load %struct.exe_file_t** %f, align 8, !dbg !338
  %52 = getelementptr inbounds %struct.exe_file_t* %51, i32 0, i32 3, !dbg !338
  %53 = load %struct.exe_disk_file_t** %52, align 8, !dbg !338
  %54 = getelementptr inbounds %struct.exe_disk_file_t* %53, i32 0, i32 2, !dbg !338
  %55 = load %struct.stat** %54, align 8, !dbg !338
  %56 = load %struct.exe_file_t** %f, align 8, !dbg !338
  %57 = getelementptr inbounds %struct.exe_file_t* %56, i32 0, i32 3, !dbg !338
  %58 = load %struct.exe_disk_file_t** %57, align 8, !dbg !338
  %59 = getelementptr inbounds %struct.exe_disk_file_t* %58, i32 0, i32 2, !dbg !338
  %60 = load %struct.stat** %59, align 8, !dbg !338
  %61 = getelementptr inbounds %struct.stat* %60, i32 0, i32 3, !dbg !338
  %62 = load i32* %61, align 8, !dbg !338
  %63 = and i32 %62, -512, !dbg !338
  %64 = load i32* getelementptr inbounds (%struct.exe_sym_env_t* @__exe_env, i64 0, i32 1), align 8, !dbg !338
  %not = xor i32 %64, -1, !dbg !338
  %65 = load i32* %mode_addr, align 4, !dbg !338
  %66 = and i32 %not, %65, !dbg !338
  %67 = or i32 %63, %66, !dbg !338
  %68 = getelementptr inbounds %struct.stat* %55, i32 0, i32 3, !dbg !338
  store i32 %67, i32* %68, align 8, !dbg !338
  br label %bb19, !dbg !338

bb16:                                             ; preds = %bb5
  call void @llvm.dbg.declare(metadata !{i32* %os_fd}, metadata !339), !dbg !341
  %69 = load i8** %pathname_addr, align 8, !dbg !341
  %70 = call i8* @__concretize_string(i8* %69) nounwind, !dbg !341
  %71 = load i32* %flags_addr, align 4, !dbg !341
  %72 = load i32* %mode_addr, align 4, !dbg !341
  %73 = call i64 (i64, ...)* @syscall(i64 2, i8* %70, i32 %71, i32 %72) nounwind, !dbg !341
  %74 = trunc i64 %73 to i32, !dbg !341
  store i32 %74, i32* %os_fd, align 4, !dbg !341
  %75 = load i32* %os_fd, align 4, !dbg !342
  %76 = icmp eq i32 %75, -1, !dbg !342
  br i1 %76, label %bb17, label %bb18, !dbg !342

bb17:                                             ; preds = %bb16
  %77 = call i32* @__errno_location() nounwind readnone, !dbg !343
  %78 = call i32 @klee_get_errno() nounwind, !dbg !343
  store i32 %78, i32* %77, align 4, !dbg !343
  store i32 -1, i32* %0, align 4, !dbg !344
  br label %bb25, !dbg !344

bb18:                                             ; preds = %bb16
  %79 = load %struct.exe_file_t** %f, align 8, !dbg !345
  %80 = getelementptr inbounds %struct.exe_file_t* %79, i32 0, i32 0, !dbg !345
  %81 = load i32* %os_fd, align 4, !dbg !345
  store i32 %81, i32* %80, align 8, !dbg !345
  br label %bb19, !dbg !345

bb19:                                             ; preds = %bb18, %bb14
  %82 = load %struct.exe_file_t** %f, align 8, !dbg !346
  %83 = getelementptr inbounds %struct.exe_file_t* %82, i32 0, i32 1, !dbg !346
  store i32 1, i32* %83, align 4, !dbg !346
  %84 = load i32* %flags_addr, align 4, !dbg !347
  %85 = and i32 %84, 3, !dbg !347
  %86 = icmp eq i32 %85, 0, !dbg !347
  br i1 %86, label %bb20, label %bb21, !dbg !347

bb20:                                             ; preds = %bb19
  %87 = load %struct.exe_file_t** %f, align 8, !dbg !348
  %88 = getelementptr inbounds %struct.exe_file_t* %87, i32 0, i32 1, !dbg !348
  %89 = load i32* %88, align 4, !dbg !348
  %90 = or i32 %89, 4, !dbg !348
  %91 = load %struct.exe_file_t** %f, align 8, !dbg !348
  %92 = getelementptr inbounds %struct.exe_file_t* %91, i32 0, i32 1, !dbg !348
  store i32 %90, i32* %92, align 4, !dbg !348
  br label %bb24, !dbg !348

bb21:                                             ; preds = %bb19
  %93 = load i32* %flags_addr, align 4, !dbg !349
  %94 = and i32 %93, 3, !dbg !349
  %95 = icmp eq i32 %94, 1, !dbg !349
  br i1 %95, label %bb22, label %bb23, !dbg !349

bb22:                                             ; preds = %bb21
  %96 = load %struct.exe_file_t** %f, align 8, !dbg !350
  %97 = getelementptr inbounds %struct.exe_file_t* %96, i32 0, i32 1, !dbg !350
  %98 = load i32* %97, align 4, !dbg !350
  %99 = or i32 %98, 8, !dbg !350
  %100 = load %struct.exe_file_t** %f, align 8, !dbg !350
  %101 = getelementptr inbounds %struct.exe_file_t* %100, i32 0, i32 1, !dbg !350
  store i32 %99, i32* %101, align 4, !dbg !350
  br label %bb24, !dbg !350

bb23:                                             ; preds = %bb21
  %102 = load %struct.exe_file_t** %f, align 8, !dbg !351
  %103 = getelementptr inbounds %struct.exe_file_t* %102, i32 0, i32 1, !dbg !351
  %104 = load i32* %103, align 4, !dbg !351
  %105 = or i32 %104, 12, !dbg !351
  %106 = load %struct.exe_file_t** %f, align 8, !dbg !351
  %107 = getelementptr inbounds %struct.exe_file_t* %106, i32 0, i32 1, !dbg !351
  store i32 %105, i32* %107, align 4, !dbg !351
  br label %bb24, !dbg !351

bb24:                                             ; preds = %bb23, %bb22, %bb20
  %108 = load i32* %fd, align 4, !dbg !352
  store i32 %108, i32* %0, align 4, !dbg !352
  br label %bb25, !dbg !352

bb25:                                             ; preds = %bb24, %bb17, %bb13, %bb11, %bb8, %bb4
  %109 = load i32* %0, align 4, !dbg !322
  store i32 %109, i32* %retval, align 4, !dbg !322
  br label %return, !dbg !322

return:                                           ; preds = %bb25
  %retval26 = load i32* %retval, !dbg !322
  ret i32 %retval26, !dbg !322
}

declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) nounwind

declare i64 @fwrite(i8*, i64, i64, i8*)

define i32 @close(i32 %fd) nounwind {
entry:
  %fd_addr = alloca i32, align 4
  %retval = alloca i32
  %0 = alloca i32
  %f = alloca %struct.exe_file_t*
  %r = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i32* %fd_addr}, metadata !353), !dbg !354
  store i32 %fd, i32* %fd_addr
  call void @llvm.dbg.declare(metadata !{%struct.exe_file_t** %f}, metadata !355), !dbg !357
  call void @llvm.dbg.declare(metadata !{i32* %r}, metadata !358), !dbg !359
  store i32 0, i32* %r, align 4, !dbg !359
  %1 = load i32* @n_calls.4318, align 4, !dbg !360
  %2 = add nsw i32 %1, 1, !dbg !360
  store i32 %2, i32* @n_calls.4318, align 4, !dbg !360
  %3 = load i32* %fd_addr, align 4, !dbg !361
  %4 = call %struct.exe_file_t* @__get_file(i32 %3) nounwind, !dbg !361
  store %struct.exe_file_t* %4, %struct.exe_file_t** %f, align 8, !dbg !361
  %5 = load %struct.exe_file_t** %f, align 8, !dbg !362
  %6 = icmp eq %struct.exe_file_t* %5, null, !dbg !362
  br i1 %6, label %bb, label %bb1, !dbg !362

bb:                                               ; preds = %entry
  %7 = call i32* @__errno_location() nounwind readnone, !dbg !363
  store i32 9, i32* %7, align 4, !dbg !363
  store i32 -1, i32* %0, align 4, !dbg !364
  br label %bb5, !dbg !364

bb1:                                              ; preds = %entry
  %8 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !365
  %9 = icmp ne i32 %8, 0, !dbg !365
  br i1 %9, label %bb2, label %bb4, !dbg !365

bb2:                                              ; preds = %bb1
  %10 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 8), align 8, !dbg !365
  %11 = load i32* %10, align 4, !dbg !365
  %12 = load i32* @n_calls.4318, align 4, !dbg !365
  %13 = icmp eq i32 %11, %12, !dbg !365
  br i1 %13, label %bb3, label %bb4, !dbg !365

bb3:                                              ; preds = %bb2
  %14 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !366
  %15 = sub i32 %14, 1, !dbg !366
  store i32 %15, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !366
  %16 = call i32* @__errno_location() nounwind readnone, !dbg !367
  store i32 5, i32* %16, align 4, !dbg !367
  store i32 -1, i32* %0, align 4, !dbg !368
  br label %bb5, !dbg !368

bb4:                                              ; preds = %bb2, %bb1
  %17 = load %struct.exe_file_t** %f, align 8, !dbg !369
  %18 = bitcast %struct.exe_file_t* %17 to i8*, !dbg !369
  call void @llvm.memset.p0i8.i64(i8* %18, i8 0, i64 24, i32 1, i1 false), !dbg !369
  %19 = load i32* %r, align 4, !dbg !370
  store i32 %19, i32* %0, align 4, !dbg !370
  br label %bb5, !dbg !370

bb5:                                              ; preds = %bb4, %bb3, %bb
  %20 = load i32* %0, align 4, !dbg !364
  store i32 %20, i32* %retval, align 4, !dbg !364
  br label %return, !dbg !364

return:                                           ; preds = %bb5
  %retval6 = load i32* %retval, !dbg !364
  ret i32 %retval6, !dbg !364
}

define i64 @read(i32 %fd, i8* %buf, i64 %count) nounwind {
entry:
  %fd_addr = alloca i32, align 4
  %buf_addr = alloca i8*, align 8
  %count_addr = alloca i64, align 8
  %retval = alloca i64
  %0 = alloca i64
  %f = alloca %struct.exe_file_t*
  %r = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i32* %fd_addr}, metadata !371), !dbg !372
  store i32 %fd, i32* %fd_addr
  call void @llvm.dbg.declare(metadata !{i8** %buf_addr}, metadata !373), !dbg !372
  store i8* %buf, i8** %buf_addr
  call void @llvm.dbg.declare(metadata !{i64* %count_addr}, metadata !374), !dbg !372
  store i64 %count, i64* %count_addr
  call void @llvm.dbg.declare(metadata !{%struct.exe_file_t** %f}, metadata !375), !dbg !377
  %1 = load i32* @n_calls.4345, align 4, !dbg !378
  %2 = add nsw i32 %1, 1, !dbg !378
  store i32 %2, i32* @n_calls.4345, align 4, !dbg !378
  %3 = load i64* %count_addr, align 8, !dbg !379
  %4 = icmp eq i64 %3, 0, !dbg !379
  br i1 %4, label %bb, label %bb1, !dbg !379

bb:                                               ; preds = %entry
  store i64 0, i64* %0, align 8, !dbg !380
  br label %bb24, !dbg !380

bb1:                                              ; preds = %entry
  %5 = load i8** %buf_addr, align 8, !dbg !381
  %6 = icmp eq i8* %5, null, !dbg !381
  br i1 %6, label %bb2, label %bb3, !dbg !381

bb2:                                              ; preds = %bb1
  %7 = call i32* @__errno_location() nounwind readnone, !dbg !382
  store i32 14, i32* %7, align 4, !dbg !382
  store i64 -1, i64* %0, align 8, !dbg !383
  br label %bb24, !dbg !383

bb3:                                              ; preds = %bb1
  %8 = load i32* %fd_addr, align 4, !dbg !384
  %9 = call %struct.exe_file_t* @__get_file(i32 %8) nounwind, !dbg !384
  store %struct.exe_file_t* %9, %struct.exe_file_t** %f, align 8, !dbg !384
  %10 = load %struct.exe_file_t** %f, align 8, !dbg !385
  %11 = icmp eq %struct.exe_file_t* %10, null, !dbg !385
  br i1 %11, label %bb4, label %bb5, !dbg !385

bb4:                                              ; preds = %bb3
  %12 = call i32* @__errno_location() nounwind readnone, !dbg !386
  store i32 9, i32* %12, align 4, !dbg !386
  store i64 -1, i64* %0, align 8, !dbg !387
  br label %bb24, !dbg !387

bb5:                                              ; preds = %bb3
  %13 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !388
  %14 = icmp ne i32 %13, 0, !dbg !388
  br i1 %14, label %bb6, label %bb8, !dbg !388

bb6:                                              ; preds = %bb5
  %15 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 6), align 8, !dbg !388
  %16 = load i32* %15, align 4, !dbg !388
  %17 = load i32* @n_calls.4345, align 4, !dbg !388
  %18 = icmp eq i32 %16, %17, !dbg !388
  br i1 %18, label %bb7, label %bb8, !dbg !388

bb7:                                              ; preds = %bb6
  %19 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !389
  %20 = sub i32 %19, 1, !dbg !389
  store i32 %20, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !389
  %21 = call i32* @__errno_location() nounwind readnone, !dbg !390
  store i32 5, i32* %21, align 4, !dbg !390
  store i64 -1, i64* %0, align 8, !dbg !391
  br label %bb24, !dbg !391

bb8:                                              ; preds = %bb6, %bb5
  %22 = load %struct.exe_file_t** %f, align 8, !dbg !392
  %23 = getelementptr inbounds %struct.exe_file_t* %22, i32 0, i32 3, !dbg !392
  %24 = load %struct.exe_disk_file_t** %23, align 8, !dbg !392
  %25 = icmp eq %struct.exe_disk_file_t* %24, null, !dbg !392
  br i1 %25, label %bb9, label %bb17, !dbg !392

bb9:                                              ; preds = %bb8
  call void @llvm.dbg.declare(metadata !{i32* %r}, metadata !393), !dbg !395
  %26 = load i8** %buf_addr, align 8, !dbg !396
  %27 = call i8* @__concretize_ptr(i8* %26) nounwind, !dbg !396
  store i8* %27, i8** %buf_addr, align 8, !dbg !396
  %28 = load i64* %count_addr, align 8, !dbg !397
  %29 = call i64 @__concretize_size(i64 %28) nounwind, !dbg !397
  store i64 %29, i64* %count_addr, align 8, !dbg !397
  %30 = load i8** %buf_addr, align 8, !dbg !398
  %31 = load i64* %count_addr, align 8, !dbg !398
  call void @klee_check_memory_access(i8* %30, i64 %31) nounwind, !dbg !398
  %32 = load %struct.exe_file_t** %f, align 8, !dbg !399
  %33 = getelementptr inbounds %struct.exe_file_t* %32, i32 0, i32 0, !dbg !399
  %34 = load i32* %33, align 8, !dbg !399
  %35 = icmp eq i32 %34, 0, !dbg !399
  br i1 %35, label %bb10, label %bb11, !dbg !399

bb10:                                             ; preds = %bb9
  %36 = load %struct.exe_file_t** %f, align 8, !dbg !400
  %37 = getelementptr inbounds %struct.exe_file_t* %36, i32 0, i32 0, !dbg !400
  %38 = load i32* %37, align 8, !dbg !400
  %39 = load i8** %buf_addr, align 8, !dbg !400
  %40 = load i64* %count_addr, align 8, !dbg !400
  %41 = call i64 (i64, ...)* @syscall(i64 0, i32 %38, i8* %39, i64 %40) nounwind, !dbg !400
  %42 = trunc i64 %41 to i32, !dbg !400
  store i32 %42, i32* %r, align 4, !dbg !400
  br label %bb12, !dbg !400

bb11:                                             ; preds = %bb9
  %43 = load %struct.exe_file_t** %f, align 8, !dbg !401
  %44 = getelementptr inbounds %struct.exe_file_t* %43, i32 0, i32 2, !dbg !401
  %45 = load i64* %44, align 8, !dbg !401
  %46 = load %struct.exe_file_t** %f, align 8, !dbg !401
  %47 = getelementptr inbounds %struct.exe_file_t* %46, i32 0, i32 0, !dbg !401
  %48 = load i32* %47, align 8, !dbg !401
  %49 = load i8** %buf_addr, align 8, !dbg !401
  %50 = load i64* %count_addr, align 8, !dbg !401
  %51 = call i64 (i64, ...)* @syscall(i64 17, i32 %48, i8* %49, i64 %50, i64 %45) nounwind, !dbg !401
  %52 = trunc i64 %51 to i32, !dbg !401
  store i32 %52, i32* %r, align 4, !dbg !401
  br label %bb12, !dbg !401

bb12:                                             ; preds = %bb11, %bb10
  %53 = load i32* %r, align 4, !dbg !402
  %54 = icmp eq i32 %53, -1, !dbg !402
  br i1 %54, label %bb13, label %bb14, !dbg !402

bb13:                                             ; preds = %bb12
  %55 = call i32* @__errno_location() nounwind readnone, !dbg !403
  %56 = call i32 @klee_get_errno() nounwind, !dbg !403
  store i32 %56, i32* %55, align 4, !dbg !403
  store i64 -1, i64* %0, align 8, !dbg !404
  br label %bb24, !dbg !404

bb14:                                             ; preds = %bb12
  %57 = load %struct.exe_file_t** %f, align 8, !dbg !405
  %58 = getelementptr inbounds %struct.exe_file_t* %57, i32 0, i32 0, !dbg !405
  %59 = load i32* %58, align 8, !dbg !405
  %60 = icmp ne i32 %59, 0, !dbg !405
  br i1 %60, label %bb15, label %bb16, !dbg !405

bb15:                                             ; preds = %bb14
  %61 = load %struct.exe_file_t** %f, align 8, !dbg !406
  %62 = getelementptr inbounds %struct.exe_file_t* %61, i32 0, i32 2, !dbg !406
  %63 = load i64* %62, align 8, !dbg !406
  %64 = load i32* %r, align 4, !dbg !406
  %65 = sext i32 %64 to i64, !dbg !406
  %66 = add nsw i64 %63, %65, !dbg !406
  %67 = load %struct.exe_file_t** %f, align 8, !dbg !406
  %68 = getelementptr inbounds %struct.exe_file_t* %67, i32 0, i32 2, !dbg !406
  store i64 %66, i64* %68, align 8, !dbg !406
  br label %bb16, !dbg !406

bb16:                                             ; preds = %bb15, %bb14
  %69 = load i32* %r, align 4, !dbg !407
  %70 = sext i32 %69 to i64, !dbg !407
  store i64 %70, i64* %0, align 8, !dbg !407
  br label %bb24, !dbg !407

bb17:                                             ; preds = %bb8
  %71 = load %struct.exe_file_t** %f, align 8, !dbg !408
  %72 = getelementptr inbounds %struct.exe_file_t* %71, i32 0, i32 2, !dbg !408
  %73 = load i64* %72, align 8, !dbg !408
  %74 = icmp slt i64 %73, 0, !dbg !408
  br i1 %74, label %bb18, label %bb19, !dbg !408

bb18:                                             ; preds = %bb17
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i32 284, i8* getelementptr inbounds ([5 x i8]* @__PRETTY_FUNCTION__.4348, i64 0, i64 0)) noreturn nounwind, !dbg !408
  unreachable, !dbg !408

bb19:                                             ; preds = %bb17
  %75 = load %struct.exe_file_t** %f, align 8, !dbg !409
  %76 = getelementptr inbounds %struct.exe_file_t* %75, i32 0, i32 3, !dbg !409
  %77 = load %struct.exe_disk_file_t** %76, align 8, !dbg !409
  %78 = getelementptr inbounds %struct.exe_disk_file_t* %77, i32 0, i32 0, !dbg !409
  %79 = load i32* %78, align 8, !dbg !409
  %80 = zext i32 %79 to i64, !dbg !409
  %81 = load %struct.exe_file_t** %f, align 8, !dbg !409
  %82 = getelementptr inbounds %struct.exe_file_t* %81, i32 0, i32 2, !dbg !409
  %83 = load i64* %82, align 8, !dbg !409
  %84 = icmp slt i64 %80, %83, !dbg !409
  br i1 %84, label %bb20, label %bb21, !dbg !409

bb20:                                             ; preds = %bb19
  store i64 0, i64* %0, align 8, !dbg !410
  br label %bb24, !dbg !410

bb21:                                             ; preds = %bb19
  %85 = load %struct.exe_file_t** %f, align 8, !dbg !411
  %86 = getelementptr inbounds %struct.exe_file_t* %85, i32 0, i32 2, !dbg !411
  %87 = load i64* %86, align 8, !dbg !411
  %88 = load i64* %count_addr, align 8, !dbg !411
  %89 = add i64 %87, %88, !dbg !411
  %90 = load %struct.exe_file_t** %f, align 8, !dbg !411
  %91 = getelementptr inbounds %struct.exe_file_t* %90, i32 0, i32 3, !dbg !411
  %92 = load %struct.exe_disk_file_t** %91, align 8, !dbg !411
  %93 = getelementptr inbounds %struct.exe_disk_file_t* %92, i32 0, i32 0, !dbg !411
  %94 = load i32* %93, align 8, !dbg !411
  %95 = zext i32 %94 to i64, !dbg !411
  %96 = icmp ugt i64 %89, %95, !dbg !411
  br i1 %96, label %bb22, label %bb23, !dbg !411

bb22:                                             ; preds = %bb21
  %97 = load %struct.exe_file_t** %f, align 8, !dbg !412
  %98 = getelementptr inbounds %struct.exe_file_t* %97, i32 0, i32 3, !dbg !412
  %99 = load %struct.exe_disk_file_t** %98, align 8, !dbg !412
  %100 = getelementptr inbounds %struct.exe_disk_file_t* %99, i32 0, i32 0, !dbg !412
  %101 = load i32* %100, align 8, !dbg !412
  %102 = zext i32 %101 to i64, !dbg !412
  %103 = load %struct.exe_file_t** %f, align 8, !dbg !412
  %104 = getelementptr inbounds %struct.exe_file_t* %103, i32 0, i32 2, !dbg !412
  %105 = load i64* %104, align 8, !dbg !412
  %106 = sub nsw i64 %102, %105, !dbg !412
  store i64 %106, i64* %count_addr, align 8, !dbg !412
  br label %bb23, !dbg !412

bb23:                                             ; preds = %bb22, %bb21
  %107 = load %struct.exe_file_t** %f, align 8, !dbg !413
  %108 = getelementptr inbounds %struct.exe_file_t* %107, i32 0, i32 3, !dbg !413
  %109 = load %struct.exe_disk_file_t** %108, align 8, !dbg !413
  %110 = getelementptr inbounds %struct.exe_disk_file_t* %109, i32 0, i32 1, !dbg !413
  %111 = load i8** %110, align 8, !dbg !413
  %112 = load %struct.exe_file_t** %f, align 8, !dbg !413
  %113 = getelementptr inbounds %struct.exe_file_t* %112, i32 0, i32 2, !dbg !413
  %114 = load i64* %113, align 8, !dbg !413
  %115 = getelementptr inbounds i8* %111, i64 %114, !dbg !413
  %116 = load i8** %buf_addr, align 8, !dbg !413
  %117 = load i64* %count_addr, align 8, !dbg !413
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %116, i8* %115, i64 %117, i32 1, i1 false), !dbg !413
  %118 = load %struct.exe_file_t** %f, align 8, !dbg !414
  %119 = getelementptr inbounds %struct.exe_file_t* %118, i32 0, i32 2, !dbg !414
  %120 = load i64* %119, align 8, !dbg !414
  %121 = load i64* %count_addr, align 8, !dbg !414
  %122 = add i64 %120, %121, !dbg !414
  %123 = load %struct.exe_file_t** %f, align 8, !dbg !414
  %124 = getelementptr inbounds %struct.exe_file_t* %123, i32 0, i32 2, !dbg !414
  store i64 %122, i64* %124, align 8, !dbg !414
  %125 = load i64* %count_addr, align 8, !dbg !415
  store i64 %125, i64* %0, align 8, !dbg !415
  br label %bb24, !dbg !415

bb24:                                             ; preds = %bb23, %bb20, %bb16, %bb13, %bb7, %bb4, %bb2, %bb
  %126 = load i64* %0, align 8, !dbg !380
  store i64 %126, i64* %retval, align 8, !dbg !380
  br label %return, !dbg !380

return:                                           ; preds = %bb24
  %retval25 = load i64* %retval, !dbg !380
  ret i64 %retval25, !dbg !380
}

declare void @klee_check_memory_access(i8*, i64)

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

define i64 @write(i32 %fd, i8* %buf, i64 %count) nounwind {
entry:
  %fd_addr = alloca i32, align 4
  %buf_addr = alloca i8*, align 8
  %count_addr = alloca i64, align 8
  %retval = alloca i64
  %0 = alloca i64
  %f = alloca %struct.exe_file_t*
  %r = alloca i32
  %actual_count = alloca i64
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i32* %fd_addr}, metadata !416), !dbg !417
  store i32 %fd, i32* %fd_addr
  call void @llvm.dbg.declare(metadata !{i8** %buf_addr}, metadata !418), !dbg !417
  store i8* %buf, i8** %buf_addr
  call void @llvm.dbg.declare(metadata !{i64* %count_addr}, metadata !419), !dbg !417
  store i64 %count, i64* %count_addr
  call void @llvm.dbg.declare(metadata !{%struct.exe_file_t** %f}, metadata !420), !dbg !422
  %1 = load i32* @n_calls.4432, align 4, !dbg !423
  %2 = add nsw i32 %1, 1, !dbg !423
  store i32 %2, i32* @n_calls.4432, align 4, !dbg !423
  %3 = load i32* %fd_addr, align 4, !dbg !424
  %4 = call %struct.exe_file_t* @__get_file(i32 %3) nounwind, !dbg !424
  store %struct.exe_file_t* %4, %struct.exe_file_t** %f, align 8, !dbg !424
  %5 = load %struct.exe_file_t** %f, align 8, !dbg !425
  %6 = icmp eq %struct.exe_file_t* %5, null, !dbg !425
  br i1 %6, label %bb, label %bb1, !dbg !425

bb:                                               ; preds = %entry
  %7 = call i32* @__errno_location() nounwind readnone, !dbg !426
  store i32 9, i32* %7, align 4, !dbg !426
  store i64 -1, i64* %0, align 8, !dbg !427
  br label %bb30, !dbg !427

bb1:                                              ; preds = %entry
  %8 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !428
  %9 = icmp ne i32 %8, 0, !dbg !428
  br i1 %9, label %bb2, label %bb4, !dbg !428

bb2:                                              ; preds = %bb1
  %10 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 7), align 8, !dbg !428
  %11 = load i32* %10, align 4, !dbg !428
  %12 = load i32* @n_calls.4432, align 4, !dbg !428
  %13 = icmp eq i32 %11, %12, !dbg !428
  br i1 %13, label %bb3, label %bb4, !dbg !428

bb3:                                              ; preds = %bb2
  %14 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !429
  %15 = sub i32 %14, 1, !dbg !429
  store i32 %15, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !429
  %16 = call i32* @__errno_location() nounwind readnone, !dbg !430
  store i32 5, i32* %16, align 4, !dbg !430
  store i64 -1, i64* %0, align 8, !dbg !431
  br label %bb30, !dbg !431

bb4:                                              ; preds = %bb2, %bb1
  %17 = load %struct.exe_file_t** %f, align 8, !dbg !432
  %18 = getelementptr inbounds %struct.exe_file_t* %17, i32 0, i32 3, !dbg !432
  %19 = load %struct.exe_disk_file_t** %18, align 8, !dbg !432
  %20 = icmp eq %struct.exe_disk_file_t* %19, null, !dbg !432
  br i1 %20, label %bb5, label %bb17, !dbg !432

bb5:                                              ; preds = %bb4
  call void @llvm.dbg.declare(metadata !{i32* %r}, metadata !433), !dbg !435
  %21 = load i8** %buf_addr, align 8, !dbg !436
  %22 = call i8* @__concretize_ptr(i8* %21) nounwind, !dbg !436
  store i8* %22, i8** %buf_addr, align 8, !dbg !436
  %23 = load i64* %count_addr, align 8, !dbg !437
  %24 = call i64 @__concretize_size(i64 %23) nounwind, !dbg !437
  store i64 %24, i64* %count_addr, align 8, !dbg !437
  %25 = load i8** %buf_addr, align 8, !dbg !438
  %26 = load i64* %count_addr, align 8, !dbg !438
  call void @klee_check_memory_access(i8* %25, i64 %26) nounwind, !dbg !438
  %27 = load %struct.exe_file_t** %f, align 8, !dbg !439
  %28 = getelementptr inbounds %struct.exe_file_t* %27, i32 0, i32 0, !dbg !439
  %29 = load i32* %28, align 8, !dbg !439
  %30 = icmp eq i32 %29, 1, !dbg !439
  br i1 %30, label %bb7, label %bb6, !dbg !439

bb6:                                              ; preds = %bb5
  %31 = load %struct.exe_file_t** %f, align 8, !dbg !439
  %32 = getelementptr inbounds %struct.exe_file_t* %31, i32 0, i32 0, !dbg !439
  %33 = load i32* %32, align 8, !dbg !439
  %34 = icmp eq i32 %33, 2, !dbg !439
  br i1 %34, label %bb7, label %bb8, !dbg !439

bb7:                                              ; preds = %bb6, %bb5
  %35 = load %struct.exe_file_t** %f, align 8, !dbg !440
  %36 = getelementptr inbounds %struct.exe_file_t* %35, i32 0, i32 0, !dbg !440
  %37 = load i32* %36, align 8, !dbg !440
  %38 = load i8** %buf_addr, align 8, !dbg !440
  %39 = load i64* %count_addr, align 8, !dbg !440
  %40 = call i64 (i64, ...)* @syscall(i64 1, i32 %37, i8* %38, i64 %39) nounwind, !dbg !440
  %41 = trunc i64 %40 to i32, !dbg !440
  store i32 %41, i32* %r, align 4, !dbg !440
  br label %bb9, !dbg !440

bb8:                                              ; preds = %bb6
  %42 = load %struct.exe_file_t** %f, align 8, !dbg !441
  %43 = getelementptr inbounds %struct.exe_file_t* %42, i32 0, i32 2, !dbg !441
  %44 = load i64* %43, align 8, !dbg !441
  %45 = load %struct.exe_file_t** %f, align 8, !dbg !441
  %46 = getelementptr inbounds %struct.exe_file_t* %45, i32 0, i32 0, !dbg !441
  %47 = load i32* %46, align 8, !dbg !441
  %48 = load i8** %buf_addr, align 8, !dbg !441
  %49 = load i64* %count_addr, align 8, !dbg !441
  %50 = call i64 (i64, ...)* @syscall(i64 18, i32 %47, i8* %48, i64 %49, i64 %44) nounwind, !dbg !441
  %51 = trunc i64 %50 to i32, !dbg !441
  store i32 %51, i32* %r, align 4, !dbg !441
  br label %bb9, !dbg !441

bb9:                                              ; preds = %bb8, %bb7
  %52 = load i32* %r, align 4, !dbg !442
  %53 = icmp eq i32 %52, -1, !dbg !442
  br i1 %53, label %bb10, label %bb11, !dbg !442

bb10:                                             ; preds = %bb9
  %54 = call i32* @__errno_location() nounwind readnone, !dbg !443
  %55 = call i32 @klee_get_errno() nounwind, !dbg !443
  store i32 %55, i32* %54, align 4, !dbg !443
  store i64 -1, i64* %0, align 8, !dbg !444
  br label %bb30, !dbg !444

bb11:                                             ; preds = %bb9
  %56 = load i32* %r, align 4, !dbg !445
  %57 = icmp slt i32 %56, 0, !dbg !445
  br i1 %57, label %bb12, label %bb13, !dbg !445

bb12:                                             ; preds = %bb11
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i32 338, i8* getelementptr inbounds ([6 x i8]* @__PRETTY_FUNCTION__.4435, i64 0, i64 0)) noreturn nounwind, !dbg !445
  unreachable, !dbg !445

bb13:                                             ; preds = %bb11
  %58 = load %struct.exe_file_t** %f, align 8, !dbg !446
  %59 = getelementptr inbounds %struct.exe_file_t* %58, i32 0, i32 0, !dbg !446
  %60 = load i32* %59, align 8, !dbg !446
  %61 = icmp ne i32 %60, 1, !dbg !446
  br i1 %61, label %bb14, label %bb16, !dbg !446

bb14:                                             ; preds = %bb13
  %62 = load %struct.exe_file_t** %f, align 8, !dbg !446
  %63 = getelementptr inbounds %struct.exe_file_t* %62, i32 0, i32 0, !dbg !446
  %64 = load i32* %63, align 8, !dbg !446
  %65 = icmp ne i32 %64, 2, !dbg !446
  br i1 %65, label %bb15, label %bb16, !dbg !446

bb15:                                             ; preds = %bb14
  %66 = load %struct.exe_file_t** %f, align 8, !dbg !447
  %67 = getelementptr inbounds %struct.exe_file_t* %66, i32 0, i32 2, !dbg !447
  %68 = load i64* %67, align 8, !dbg !447
  %69 = load i32* %r, align 4, !dbg !447
  %70 = sext i32 %69 to i64, !dbg !447
  %71 = add nsw i64 %68, %70, !dbg !447
  %72 = load %struct.exe_file_t** %f, align 8, !dbg !447
  %73 = getelementptr inbounds %struct.exe_file_t* %72, i32 0, i32 2, !dbg !447
  store i64 %71, i64* %73, align 8, !dbg !447
  br label %bb16, !dbg !447

bb16:                                             ; preds = %bb15, %bb14, %bb13
  %74 = load i32* %r, align 4, !dbg !448
  %75 = sext i32 %74 to i64, !dbg !448
  store i64 %75, i64* %0, align 8, !dbg !448
  br label %bb30, !dbg !448

bb17:                                             ; preds = %bb4
  call void @llvm.dbg.declare(metadata !{i64* %actual_count}, metadata !449), !dbg !451
  store i64 0, i64* %actual_count, align 8, !dbg !451
  %76 = load %struct.exe_file_t** %f, align 8, !dbg !452
  %77 = getelementptr inbounds %struct.exe_file_t* %76, i32 0, i32 2, !dbg !452
  %78 = load i64* %77, align 8, !dbg !452
  %79 = load i64* %count_addr, align 8, !dbg !452
  %80 = add i64 %78, %79, !dbg !452
  %81 = load %struct.exe_file_t** %f, align 8, !dbg !452
  %82 = getelementptr inbounds %struct.exe_file_t* %81, i32 0, i32 3, !dbg !452
  %83 = load %struct.exe_disk_file_t** %82, align 8, !dbg !452
  %84 = getelementptr inbounds %struct.exe_disk_file_t* %83, i32 0, i32 0, !dbg !452
  %85 = load i32* %84, align 8, !dbg !452
  %86 = zext i32 %85 to i64, !dbg !452
  %87 = icmp ule i64 %80, %86, !dbg !452
  br i1 %87, label %bb18, label %bb19, !dbg !452

bb18:                                             ; preds = %bb17
  %88 = load i64* %count_addr, align 8, !dbg !453
  store i64 %88, i64* %actual_count, align 8, !dbg !453
  br label %bb23, !dbg !453

bb19:                                             ; preds = %bb17
  %89 = load i32* getelementptr inbounds (%struct.exe_sym_env_t* @__exe_env, i64 0, i32 3), align 8, !dbg !454
  %90 = icmp ne i32 %89, 0, !dbg !454
  br i1 %90, label %bb20, label %bb21, !dbg !454

bb20:                                             ; preds = %bb19
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i32 351, i8* getelementptr inbounds ([6 x i8]* @__PRETTY_FUNCTION__.4435, i64 0, i64 0)) noreturn nounwind, !dbg !455
  unreachable, !dbg !455

bb21:                                             ; preds = %bb19
  %91 = load %struct.exe_file_t** %f, align 8, !dbg !456
  %92 = getelementptr inbounds %struct.exe_file_t* %91, i32 0, i32 2, !dbg !456
  %93 = load i64* %92, align 8, !dbg !456
  %94 = load %struct.exe_file_t** %f, align 8, !dbg !456
  %95 = getelementptr inbounds %struct.exe_file_t* %94, i32 0, i32 3, !dbg !456
  %96 = load %struct.exe_disk_file_t** %95, align 8, !dbg !456
  %97 = getelementptr inbounds %struct.exe_disk_file_t* %96, i32 0, i32 0, !dbg !456
  %98 = load i32* %97, align 8, !dbg !456
  %99 = zext i32 %98 to i64, !dbg !456
  %100 = icmp slt i64 %93, %99, !dbg !456
  br i1 %100, label %bb22, label %bb23, !dbg !456

bb22:                                             ; preds = %bb21
  %101 = load %struct.exe_file_t** %f, align 8, !dbg !457
  %102 = getelementptr inbounds %struct.exe_file_t* %101, i32 0, i32 3, !dbg !457
  %103 = load %struct.exe_disk_file_t** %102, align 8, !dbg !457
  %104 = getelementptr inbounds %struct.exe_disk_file_t* %103, i32 0, i32 0, !dbg !457
  %105 = load i32* %104, align 8, !dbg !457
  %106 = zext i32 %105 to i64, !dbg !457
  %107 = load %struct.exe_file_t** %f, align 8, !dbg !457
  %108 = getelementptr inbounds %struct.exe_file_t* %107, i32 0, i32 2, !dbg !457
  %109 = load i64* %108, align 8, !dbg !457
  %110 = sub nsw i64 %106, %109, !dbg !457
  store i64 %110, i64* %actual_count, align 8, !dbg !457
  br label %bb23, !dbg !457

bb23:                                             ; preds = %bb22, %bb21, %bb18
  %111 = load i64* %actual_count, align 8, !dbg !458
  %112 = icmp ne i64 %111, 0, !dbg !458
  br i1 %112, label %bb24, label %bb25, !dbg !458

bb24:                                             ; preds = %bb23
  %113 = load %struct.exe_file_t** %f, align 8, !dbg !459
  %114 = getelementptr inbounds %struct.exe_file_t* %113, i32 0, i32 3, !dbg !459
  %115 = load %struct.exe_disk_file_t** %114, align 8, !dbg !459
  %116 = getelementptr inbounds %struct.exe_disk_file_t* %115, i32 0, i32 1, !dbg !459
  %117 = load i8** %116, align 8, !dbg !459
  %118 = load %struct.exe_file_t** %f, align 8, !dbg !459
  %119 = getelementptr inbounds %struct.exe_file_t* %118, i32 0, i32 2, !dbg !459
  %120 = load i64* %119, align 8, !dbg !459
  %121 = getelementptr inbounds i8* %117, i64 %120, !dbg !459
  %122 = load i8** %buf_addr, align 8, !dbg !459
  %123 = load i64* %actual_count, align 8, !dbg !459
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %121, i8* %122, i64 %123, i32 1, i1 false), !dbg !459
  br label %bb25, !dbg !459

bb25:                                             ; preds = %bb24, %bb23
  %124 = load i64* %count_addr, align 8, !dbg !460
  %125 = load i64* %actual_count, align 8, !dbg !460
  %126 = icmp ne i64 %124, %125, !dbg !460
  br i1 %126, label %bb26, label %bb27, !dbg !460

bb26:                                             ; preds = %bb25
  %127 = load %struct._IO_FILE** @stderr, align 8, !dbg !461
  %128 = bitcast %struct._IO_FILE* %127 to i8*, !dbg !461
  %129 = call i64 @fwrite(i8* getelementptr inbounds ([33 x i8]* @.str5, i64 0, i64 0), i64 1, i64 32, i8* %128) nounwind, !dbg !461
  br label %bb27, !dbg !461

bb27:                                             ; preds = %bb26, %bb25
  %130 = load %struct.exe_file_t** %f, align 8, !dbg !462
  %131 = getelementptr inbounds %struct.exe_file_t* %130, i32 0, i32 3, !dbg !462
  %132 = load %struct.exe_disk_file_t** %131, align 8, !dbg !462
  %133 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 2), align 8, !dbg !462
  %134 = icmp eq %struct.exe_disk_file_t* %132, %133, !dbg !462
  br i1 %134, label %bb28, label %bb29, !dbg !462

bb28:                                             ; preds = %bb27
  %135 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 3), align 8, !dbg !463
  %136 = load i64* %actual_count, align 8, !dbg !463
  %137 = trunc i64 %136 to i32, !dbg !463
  %138 = add i32 %135, %137, !dbg !463
  store i32 %138, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 3), align 8, !dbg !463
  br label %bb29, !dbg !463

bb29:                                             ; preds = %bb28, %bb27
  %139 = load %struct.exe_file_t** %f, align 8, !dbg !464
  %140 = getelementptr inbounds %struct.exe_file_t* %139, i32 0, i32 2, !dbg !464
  %141 = load i64* %140, align 8, !dbg !464
  %142 = load i64* %count_addr, align 8, !dbg !464
  %143 = add i64 %141, %142, !dbg !464
  %144 = load %struct.exe_file_t** %f, align 8, !dbg !464
  %145 = getelementptr inbounds %struct.exe_file_t* %144, i32 0, i32 2, !dbg !464
  store i64 %143, i64* %145, align 8, !dbg !464
  %146 = load i64* %count_addr, align 8, !dbg !465
  store i64 %146, i64* %0, align 8, !dbg !465
  br label %bb30, !dbg !465

bb30:                                             ; preds = %bb29, %bb16, %bb10, %bb3, %bb
  %147 = load i64* %0, align 8, !dbg !427
  store i64 %147, i64* %retval, align 8, !dbg !427
  br label %return, !dbg !427

return:                                           ; preds = %bb30
  %retval31 = load i64* %retval, !dbg !427
  ret i64 %retval31, !dbg !427
}

define i64 @__fd_lseek(i32 %fd, i64 %offset, i32 %whence) nounwind {
entry:
  %fd_addr = alloca i32, align 4
  %offset_addr = alloca i64, align 8
  %whence_addr = alloca i32, align 4
  %retval = alloca i64
  %0 = alloca i64
  %new_off = alloca i64
  %f = alloca %struct.exe_file_t*
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i32* %fd_addr}, metadata !466), !dbg !467
  store i32 %fd, i32* %fd_addr
  call void @llvm.dbg.declare(metadata !{i64* %offset_addr}, metadata !468), !dbg !467
  store i64 %offset, i64* %offset_addr
  call void @llvm.dbg.declare(metadata !{i32* %whence_addr}, metadata !469), !dbg !467
  store i32 %whence, i32* %whence_addr
  call void @llvm.dbg.declare(metadata !{i64* %new_off}, metadata !470), !dbg !472
  call void @llvm.dbg.declare(metadata !{%struct.exe_file_t** %f}, metadata !473), !dbg !474
  %1 = load i32* %fd_addr, align 4, !dbg !474
  %2 = call %struct.exe_file_t* @__get_file(i32 %1) nounwind, !dbg !474
  store %struct.exe_file_t* %2, %struct.exe_file_t** %f, align 8, !dbg !474
  %3 = load %struct.exe_file_t** %f, align 8, !dbg !475
  %4 = icmp eq %struct.exe_file_t* %3, null, !dbg !475
  br i1 %4, label %bb, label %bb1, !dbg !475

bb:                                               ; preds = %entry
  %5 = call i32* @__errno_location() nounwind readnone, !dbg !476
  store i32 9, i32* %5, align 4, !dbg !476
  store i64 -1, i64* %0, align 8, !dbg !477
  br label %bb19, !dbg !477

bb1:                                              ; preds = %entry
  %6 = load %struct.exe_file_t** %f, align 8, !dbg !478
  %7 = getelementptr inbounds %struct.exe_file_t* %6, i32 0, i32 3, !dbg !478
  %8 = load %struct.exe_disk_file_t** %7, align 8, !dbg !478
  %9 = icmp eq %struct.exe_disk_file_t* %8, null, !dbg !478
  br i1 %9, label %bb2, label %bb11, !dbg !478

bb2:                                              ; preds = %bb1
  %10 = load i32* %whence_addr, align 4, !dbg !479
  %11 = icmp eq i32 %10, 0, !dbg !479
  br i1 %11, label %bb3, label %bb4, !dbg !479

bb3:                                              ; preds = %bb2
  %12 = load i64* %offset_addr, align 8, !dbg !480
  %13 = trunc i64 %12 to i32, !dbg !480
  %14 = load %struct.exe_file_t** %f, align 8, !dbg !480
  %15 = getelementptr inbounds %struct.exe_file_t* %14, i32 0, i32 0, !dbg !480
  %16 = load i32* %15, align 8, !dbg !480
  %17 = call i64 (i64, ...)* @syscall(i64 8, i32 %16, i32 %13, i32 0) nounwind, !dbg !480
  store i64 %17, i64* %new_off, align 8, !dbg !480
  br label %bb8, !dbg !480

bb4:                                              ; preds = %bb2
  %18 = load %struct.exe_file_t** %f, align 8, !dbg !481
  %19 = getelementptr inbounds %struct.exe_file_t* %18, i32 0, i32 2, !dbg !481
  %20 = load i64* %19, align 8, !dbg !481
  %21 = trunc i64 %20 to i32, !dbg !481
  %22 = load %struct.exe_file_t** %f, align 8, !dbg !481
  %23 = getelementptr inbounds %struct.exe_file_t* %22, i32 0, i32 0, !dbg !481
  %24 = load i32* %23, align 8, !dbg !481
  %25 = call i64 (i64, ...)* @syscall(i64 8, i32 %24, i32 %21, i32 0) nounwind, !dbg !481
  store i64 %25, i64* %new_off, align 8, !dbg !481
  %26 = load i64* %new_off, align 8, !dbg !482
  %27 = icmp ne i64 %26, -1, !dbg !482
  br i1 %27, label %bb5, label %bb8, !dbg !482

bb5:                                              ; preds = %bb4
  %28 = load %struct.exe_file_t** %f, align 8, !dbg !483
  %29 = getelementptr inbounds %struct.exe_file_t* %28, i32 0, i32 2, !dbg !483
  %30 = load i64* %29, align 8, !dbg !483
  %31 = load i64* %new_off, align 8, !dbg !483
  %32 = icmp ne i64 %30, %31, !dbg !483
  br i1 %32, label %bb6, label %bb7, !dbg !483

bb6:                                              ; preds = %bb5
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i32 397, i8* getelementptr inbounds ([11 x i8]* @__PRETTY_FUNCTION__.4537, i64 0, i64 0)) noreturn nounwind, !dbg !483
  unreachable, !dbg !483

bb7:                                              ; preds = %bb5
  %33 = load i64* %offset_addr, align 8, !dbg !484
  %34 = trunc i64 %33 to i32, !dbg !484
  %35 = load %struct.exe_file_t** %f, align 8, !dbg !484
  %36 = getelementptr inbounds %struct.exe_file_t* %35, i32 0, i32 0, !dbg !484
  %37 = load i32* %36, align 8, !dbg !484
  %38 = load i32* %whence_addr, align 4, !dbg !484
  %39 = call i64 (i64, ...)* @syscall(i64 8, i32 %37, i32 %34, i32 %38) nounwind, !dbg !484
  store i64 %39, i64* %new_off, align 8, !dbg !484
  br label %bb8, !dbg !484

bb8:                                              ; preds = %bb7, %bb4, %bb3
  %40 = load i64* %new_off, align 8, !dbg !485
  %41 = icmp eq i64 %40, -1, !dbg !485
  br i1 %41, label %bb9, label %bb10, !dbg !485

bb9:                                              ; preds = %bb8
  %42 = call i32* @__errno_location() nounwind readnone, !dbg !486
  %43 = call i32 @klee_get_errno() nounwind, !dbg !486
  store i32 %43, i32* %42, align 4, !dbg !486
  store i64 -1, i64* %0, align 8, !dbg !487
  br label %bb19, !dbg !487

bb10:                                             ; preds = %bb8
  %44 = load %struct.exe_file_t** %f, align 8, !dbg !488
  %45 = getelementptr inbounds %struct.exe_file_t* %44, i32 0, i32 2, !dbg !488
  %46 = load i64* %new_off, align 8, !dbg !488
  store i64 %46, i64* %45, align 8, !dbg !488
  %47 = load i64* %new_off, align 8, !dbg !489
  store i64 %47, i64* %0, align 8, !dbg !489
  br label %bb19, !dbg !489

bb11:                                             ; preds = %bb1
  %48 = load i32* %whence_addr, align 4, !dbg !490
  switch i32 %48, label %bb15 [
    i32 0, label %bb12
    i32 1, label %bb13
    i32 2, label %bb14
  ], !dbg !490

bb12:                                             ; preds = %bb11
  %49 = load i64* %offset_addr, align 8, !dbg !491
  store i64 %49, i64* %new_off, align 8, !dbg !491
  br label %bb16, !dbg !491

bb13:                                             ; preds = %bb11
  %50 = load %struct.exe_file_t** %f, align 8, !dbg !492
  %51 = getelementptr inbounds %struct.exe_file_t* %50, i32 0, i32 2, !dbg !492
  %52 = load i64* %51, align 8, !dbg !492
  %53 = load i64* %offset_addr, align 8, !dbg !492
  %54 = add nsw i64 %52, %53, !dbg !492
  store i64 %54, i64* %new_off, align 8, !dbg !492
  br label %bb16, !dbg !492

bb14:                                             ; preds = %bb11
  %55 = load %struct.exe_file_t** %f, align 8, !dbg !493
  %56 = getelementptr inbounds %struct.exe_file_t* %55, i32 0, i32 3, !dbg !493
  %57 = load %struct.exe_disk_file_t** %56, align 8, !dbg !493
  %58 = getelementptr inbounds %struct.exe_disk_file_t* %57, i32 0, i32 0, !dbg !493
  %59 = load i32* %58, align 8, !dbg !493
  %60 = zext i32 %59 to i64, !dbg !493
  %61 = load i64* %offset_addr, align 8, !dbg !493
  %62 = add nsw i64 %60, %61, !dbg !493
  store i64 %62, i64* %new_off, align 8, !dbg !493
  br label %bb16, !dbg !493

bb15:                                             ; preds = %bb11
  %63 = call i32* @__errno_location() nounwind readnone, !dbg !494
  store i32 22, i32* %63, align 4, !dbg !494
  store i64 -1, i64* %0, align 8, !dbg !495
  br label %bb19, !dbg !495

bb16:                                             ; preds = %bb14, %bb13, %bb12
  %64 = load i64* %new_off, align 8, !dbg !496
  %65 = icmp slt i64 %64, 0, !dbg !496
  br i1 %65, label %bb17, label %bb18, !dbg !496

bb17:                                             ; preds = %bb16
  %66 = call i32* @__errno_location() nounwind readnone, !dbg !497
  store i32 22, i32* %66, align 4, !dbg !497
  store i64 -1, i64* %0, align 8, !dbg !498
  br label %bb19, !dbg !498

bb18:                                             ; preds = %bb16
  %67 = load %struct.exe_file_t** %f, align 8, !dbg !499
  %68 = getelementptr inbounds %struct.exe_file_t* %67, i32 0, i32 2, !dbg !499
  %69 = load i64* %new_off, align 8, !dbg !499
  store i64 %69, i64* %68, align 8, !dbg !499
  %70 = load %struct.exe_file_t** %f, align 8, !dbg !500
  %71 = getelementptr inbounds %struct.exe_file_t* %70, i32 0, i32 2, !dbg !500
  %72 = load i64* %71, align 8, !dbg !500
  store i64 %72, i64* %0, align 8, !dbg !500
  br label %bb19, !dbg !500

bb19:                                             ; preds = %bb18, %bb17, %bb15, %bb10, %bb9, %bb
  %73 = load i64* %0, align 8, !dbg !477
  store i64 %73, i64* %retval, align 8, !dbg !477
  br label %return, !dbg !477

return:                                           ; preds = %bb19
  %retval20 = load i64* %retval, !dbg !477
  ret i64 %retval20, !dbg !477
}

define i32 @__fd_stat(i8* %path, %struct.stat* %buf) nounwind {
entry:
  %path_addr = alloca i8*, align 8
  %buf_addr = alloca %struct.stat*, align 8
  %retval = alloca i32
  %0 = alloca i32
  %dfile = alloca %struct.exe_disk_file_t*
  %r = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i8** %path_addr}, metadata !501), !dbg !502
  store i8* %path, i8** %path_addr
  call void @llvm.dbg.declare(metadata !{%struct.stat** %buf_addr}, metadata !503), !dbg !502
  store %struct.stat* %buf, %struct.stat** %buf_addr
  call void @llvm.dbg.declare(metadata !{%struct.exe_disk_file_t** %dfile}, metadata !504), !dbg !506
  %1 = load i8** %path_addr, align 8, !dbg !506
  %2 = call %struct.exe_disk_file_t* @__get_sym_file(i8* %1) nounwind, !dbg !506
  store %struct.exe_disk_file_t* %2, %struct.exe_disk_file_t** %dfile, align 8, !dbg !506
  %3 = load %struct.exe_disk_file_t** %dfile, align 8, !dbg !507
  %4 = icmp ne %struct.exe_disk_file_t* %3, null, !dbg !507
  br i1 %4, label %bb, label %bb1, !dbg !507

bb:                                               ; preds = %entry
  %5 = load %struct.exe_disk_file_t** %dfile, align 8, !dbg !508
  %6 = getelementptr inbounds %struct.exe_disk_file_t* %5, i32 0, i32 2, !dbg !508
  %7 = load %struct.stat** %6, align 8, !dbg !508
  %8 = load %struct.stat** %buf_addr, align 8, !dbg !508
  %9 = bitcast %struct.stat* %8 to i8*, !dbg !508
  %10 = bitcast %struct.stat* %7 to i8*, !dbg !508
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 144, i32 1, i1 false), !dbg !508
  store i32 0, i32* %0, align 4, !dbg !509
  br label %bb4, !dbg !509

bb1:                                              ; preds = %entry
  call void @llvm.dbg.declare(metadata !{i32* %r}, metadata !510), !dbg !512
  %11 = load i8** %path_addr, align 8, !dbg !512
  %12 = call i8* @__concretize_string(i8* %11) nounwind, !dbg !512
  %13 = load %struct.stat** %buf_addr, align 8, !dbg !512
  %14 = call i64 (i64, ...)* @syscall(i64 4, i8* %12, %struct.stat* %13) nounwind, !dbg !512
  %15 = trunc i64 %14 to i32, !dbg !512
  store i32 %15, i32* %r, align 4, !dbg !512
  %16 = load i32* %r, align 4, !dbg !513
  %17 = icmp eq i32 %16, -1, !dbg !513
  br i1 %17, label %bb2, label %bb3, !dbg !513

bb2:                                              ; preds = %bb1
  %18 = call i32* @__errno_location() nounwind readnone, !dbg !514
  %19 = call i32 @klee_get_errno() nounwind, !dbg !514
  store i32 %19, i32* %18, align 4, !dbg !514
  br label %bb3, !dbg !514

bb3:                                              ; preds = %bb2, %bb1
  %20 = load i32* %r, align 4, !dbg !515
  store i32 %20, i32* %0, align 4, !dbg !515
  br label %bb4, !dbg !515

bb4:                                              ; preds = %bb3, %bb
  %21 = load i32* %0, align 4, !dbg !509
  store i32 %21, i32* %retval, align 4, !dbg !509
  br label %return, !dbg !509

return:                                           ; preds = %bb4
  %retval5 = load i32* %retval, !dbg !509
  ret i32 %retval5, !dbg !509
}

define i32 @__fd_lstat(i8* %path, %struct.stat* %buf) nounwind {
entry:
  %path_addr = alloca i8*, align 8
  %buf_addr = alloca %struct.stat*, align 8
  %retval = alloca i32
  %0 = alloca i32
  %dfile = alloca %struct.exe_disk_file_t*
  %r = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i8** %path_addr}, metadata !516), !dbg !517
  store i8* %path, i8** %path_addr
  call void @llvm.dbg.declare(metadata !{%struct.stat** %buf_addr}, metadata !518), !dbg !517
  store %struct.stat* %buf, %struct.stat** %buf_addr
  call void @llvm.dbg.declare(metadata !{%struct.exe_disk_file_t** %dfile}, metadata !519), !dbg !521
  %1 = load i8** %path_addr, align 8, !dbg !521
  %2 = call %struct.exe_disk_file_t* @__get_sym_file(i8* %1) nounwind, !dbg !521
  store %struct.exe_disk_file_t* %2, %struct.exe_disk_file_t** %dfile, align 8, !dbg !521
  %3 = load %struct.exe_disk_file_t** %dfile, align 8, !dbg !522
  %4 = icmp ne %struct.exe_disk_file_t* %3, null, !dbg !522
  br i1 %4, label %bb, label %bb1, !dbg !522

bb:                                               ; preds = %entry
  %5 = load %struct.exe_disk_file_t** %dfile, align 8, !dbg !523
  %6 = getelementptr inbounds %struct.exe_disk_file_t* %5, i32 0, i32 2, !dbg !523
  %7 = load %struct.stat** %6, align 8, !dbg !523
  %8 = load %struct.stat** %buf_addr, align 8, !dbg !523
  %9 = bitcast %struct.stat* %8 to i8*, !dbg !523
  %10 = bitcast %struct.stat* %7 to i8*, !dbg !523
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 144, i32 1, i1 false), !dbg !523
  store i32 0, i32* %0, align 4, !dbg !524
  br label %bb4, !dbg !524

bb1:                                              ; preds = %entry
  call void @llvm.dbg.declare(metadata !{i32* %r}, metadata !525), !dbg !527
  %11 = load i8** %path_addr, align 8, !dbg !527
  %12 = call i8* @__concretize_string(i8* %11) nounwind, !dbg !527
  %13 = load %struct.stat** %buf_addr, align 8, !dbg !527
  %14 = call i64 (i64, ...)* @syscall(i64 6, i8* %12, %struct.stat* %13) nounwind, !dbg !527
  %15 = trunc i64 %14 to i32, !dbg !527
  store i32 %15, i32* %r, align 4, !dbg !527
  %16 = load i32* %r, align 4, !dbg !528
  %17 = icmp eq i32 %16, -1, !dbg !528
  br i1 %17, label %bb2, label %bb3, !dbg !528

bb2:                                              ; preds = %bb1
  %18 = call i32* @__errno_location() nounwind readnone, !dbg !529
  %19 = call i32 @klee_get_errno() nounwind, !dbg !529
  store i32 %19, i32* %18, align 4, !dbg !529
  br label %bb3, !dbg !529

bb3:                                              ; preds = %bb2, %bb1
  %20 = load i32* %r, align 4, !dbg !530
  store i32 %20, i32* %0, align 4, !dbg !530
  br label %bb4, !dbg !530

bb4:                                              ; preds = %bb3, %bb
  %21 = load i32* %0, align 4, !dbg !524
  store i32 %21, i32* %retval, align 4, !dbg !524
  br label %return, !dbg !524

return:                                           ; preds = %bb4
  %retval5 = load i32* %retval, !dbg !524
  ret i32 %retval5, !dbg !524
}

define i32 @chdir(i8* %path) nounwind {
entry:
  %path_addr = alloca i8*, align 8
  %retval = alloca i32
  %0 = alloca i32
  %dfile = alloca %struct.exe_disk_file_t*
  %r = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i8** %path_addr}, metadata !531), !dbg !532
  store i8* %path, i8** %path_addr
  call void @llvm.dbg.declare(metadata !{%struct.exe_disk_file_t** %dfile}, metadata !533), !dbg !535
  %1 = load i8** %path_addr, align 8, !dbg !535
  %2 = call %struct.exe_disk_file_t* @__get_sym_file(i8* %1) nounwind, !dbg !535
  store %struct.exe_disk_file_t* %2, %struct.exe_disk_file_t** %dfile, align 8, !dbg !535
  %3 = load %struct.exe_disk_file_t** %dfile, align 8, !dbg !536
  %4 = icmp ne %struct.exe_disk_file_t* %3, null, !dbg !536
  br i1 %4, label %bb, label %bb1, !dbg !536

bb:                                               ; preds = %entry
  call void @klee_warning(i8* getelementptr inbounds ([33 x i8]* @.str7, i64 0, i64 0)) nounwind, !dbg !537
  %5 = call i32* @__errno_location() nounwind readnone, !dbg !538
  store i32 2, i32* %5, align 4, !dbg !538
  store i32 -1, i32* %0, align 4, !dbg !539
  br label %bb4, !dbg !539

bb1:                                              ; preds = %entry
  call void @llvm.dbg.declare(metadata !{i32* %r}, metadata !540), !dbg !542
  %6 = load i8** %path_addr, align 8, !dbg !542
  %7 = call i8* @__concretize_string(i8* %6) nounwind, !dbg !542
  %8 = call i64 (i64, ...)* @syscall(i64 80, i8* %7) nounwind, !dbg !542
  %9 = trunc i64 %8 to i32, !dbg !542
  store i32 %9, i32* %r, align 4, !dbg !542
  %10 = load i32* %r, align 4, !dbg !543
  %11 = icmp eq i32 %10, -1, !dbg !543
  br i1 %11, label %bb2, label %bb3, !dbg !543

bb2:                                              ; preds = %bb1
  %12 = call i32* @__errno_location() nounwind readnone, !dbg !544
  %13 = call i32 @klee_get_errno() nounwind, !dbg !544
  store i32 %13, i32* %12, align 4, !dbg !544
  br label %bb3, !dbg !544

bb3:                                              ; preds = %bb2, %bb1
  %14 = load i32* %r, align 4, !dbg !545
  store i32 %14, i32* %0, align 4, !dbg !545
  br label %bb4, !dbg !545

bb4:                                              ; preds = %bb3, %bb
  %15 = load i32* %0, align 4, !dbg !539
  store i32 %15, i32* %retval, align 4, !dbg !539
  br label %return, !dbg !539

return:                                           ; preds = %bb4
  %retval5 = load i32* %retval, !dbg !539
  ret i32 %retval5, !dbg !539
}

declare void @klee_warning(i8*)

define i32 @fchdir(i32 %fd) nounwind {
entry:
  %fd_addr = alloca i32, align 4
  %retval = alloca i32
  %0 = alloca i32
  %f = alloca %struct.exe_file_t*
  %r = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i32* %fd_addr}, metadata !546), !dbg !547
  store i32 %fd, i32* %fd_addr
  call void @llvm.dbg.declare(metadata !{%struct.exe_file_t** %f}, metadata !548), !dbg !550
  %1 = load i32* %fd_addr, align 4, !dbg !550
  %2 = call %struct.exe_file_t* @__get_file(i32 %1) nounwind, !dbg !550
  store %struct.exe_file_t* %2, %struct.exe_file_t** %f, align 8, !dbg !550
  %3 = load %struct.exe_file_t** %f, align 8, !dbg !551
  %4 = icmp eq %struct.exe_file_t* %3, null, !dbg !551
  br i1 %4, label %bb, label %bb1, !dbg !551

bb:                                               ; preds = %entry
  %5 = call i32* @__errno_location() nounwind readnone, !dbg !552
  store i32 9, i32* %5, align 4, !dbg !552
  store i32 -1, i32* %0, align 4, !dbg !553
  br label %bb6, !dbg !553

bb1:                                              ; preds = %entry
  %6 = load %struct.exe_file_t** %f, align 8, !dbg !554
  %7 = getelementptr inbounds %struct.exe_file_t* %6, i32 0, i32 3, !dbg !554
  %8 = load %struct.exe_disk_file_t** %7, align 8, !dbg !554
  %9 = icmp ne %struct.exe_disk_file_t* %8, null, !dbg !554
  br i1 %9, label %bb2, label %bb3, !dbg !554

bb2:                                              ; preds = %bb1
  call void @klee_warning(i8* getelementptr inbounds ([33 x i8]* @.str7, i64 0, i64 0)) nounwind, !dbg !555
  %10 = call i32* @__errno_location() nounwind readnone, !dbg !556
  store i32 2, i32* %10, align 4, !dbg !556
  store i32 -1, i32* %0, align 4, !dbg !557
  br label %bb6, !dbg !557

bb3:                                              ; preds = %bb1
  call void @llvm.dbg.declare(metadata !{i32* %r}, metadata !558), !dbg !560
  %11 = load %struct.exe_file_t** %f, align 8, !dbg !560
  %12 = getelementptr inbounds %struct.exe_file_t* %11, i32 0, i32 0, !dbg !560
  %13 = load i32* %12, align 8, !dbg !560
  %14 = call i64 (i64, ...)* @syscall(i64 81, i32 %13) nounwind, !dbg !560
  %15 = trunc i64 %14 to i32, !dbg !560
  store i32 %15, i32* %r, align 4, !dbg !560
  %16 = load i32* %r, align 4, !dbg !561
  %17 = icmp eq i32 %16, -1, !dbg !561
  br i1 %17, label %bb4, label %bb5, !dbg !561

bb4:                                              ; preds = %bb3
  %18 = call i32* @__errno_location() nounwind readnone, !dbg !562
  %19 = call i32 @klee_get_errno() nounwind, !dbg !562
  store i32 %19, i32* %18, align 4, !dbg !562
  br label %bb5, !dbg !562

bb5:                                              ; preds = %bb4, %bb3
  %20 = load i32* %r, align 4, !dbg !563
  store i32 %20, i32* %0, align 4, !dbg !563
  br label %bb6, !dbg !563

bb6:                                              ; preds = %bb5, %bb2, %bb
  %21 = load i32* %0, align 4, !dbg !553
  store i32 %21, i32* %retval, align 4, !dbg !553
  br label %return, !dbg !553

return:                                           ; preds = %bb6
  %retval7 = load i32* %retval, !dbg !553
  ret i32 %retval7, !dbg !553
}

define internal i32 @__df_chmod(%struct.exe_disk_file_t* %df, i32 %mode) nounwind {
entry:
  %df_addr = alloca %struct.exe_disk_file_t*, align 8
  %mode_addr = alloca i32, align 4
  %retval = alloca i32
  %0 = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{%struct.exe_disk_file_t** %df_addr}, metadata !564), !dbg !565
  store %struct.exe_disk_file_t* %df, %struct.exe_disk_file_t** %df_addr
  call void @llvm.dbg.declare(metadata !{i32* %mode_addr}, metadata !566), !dbg !565
  store i32 %mode, i32* %mode_addr
  %1 = call i32 @geteuid() nounwind, !dbg !567
  %2 = load %struct.exe_disk_file_t** %df_addr, align 8, !dbg !567
  %3 = getelementptr inbounds %struct.exe_disk_file_t* %2, i32 0, i32 2, !dbg !567
  %4 = load %struct.stat** %3, align 8, !dbg !567
  %5 = getelementptr inbounds %struct.stat* %4, i32 0, i32 4, !dbg !567
  %6 = load i32* %5, align 4, !dbg !567
  %7 = icmp eq i32 %1, %6, !dbg !567
  br i1 %7, label %bb, label %bb3, !dbg !567

bb:                                               ; preds = %entry
  %8 = call i32 @getgid() nounwind, !dbg !569
  %9 = load %struct.exe_disk_file_t** %df_addr, align 8, !dbg !569
  %10 = getelementptr inbounds %struct.exe_disk_file_t* %9, i32 0, i32 2, !dbg !569
  %11 = load %struct.stat** %10, align 8, !dbg !569
  %12 = getelementptr inbounds %struct.stat* %11, i32 0, i32 5, !dbg !569
  %13 = load i32* %12, align 8, !dbg !569
  %14 = icmp ne i32 %8, %13, !dbg !569
  br i1 %14, label %bb1, label %bb2, !dbg !569

bb1:                                              ; preds = %bb
  %15 = load i32* %mode_addr, align 4, !dbg !570
  %16 = and i32 %15, -1025, !dbg !570
  store i32 %16, i32* %mode_addr, align 4, !dbg !570
  br label %bb2, !dbg !570

bb2:                                              ; preds = %bb1, %bb
  %17 = load %struct.exe_disk_file_t** %df_addr, align 8, !dbg !571
  %18 = getelementptr inbounds %struct.exe_disk_file_t* %17, i32 0, i32 2, !dbg !571
  %19 = load %struct.stat** %18, align 8, !dbg !571
  %20 = load %struct.exe_disk_file_t** %df_addr, align 8, !dbg !571
  %21 = getelementptr inbounds %struct.exe_disk_file_t* %20, i32 0, i32 2, !dbg !571
  %22 = load %struct.stat** %21, align 8, !dbg !571
  %23 = getelementptr inbounds %struct.stat* %22, i32 0, i32 3, !dbg !571
  %24 = load i32* %23, align 8, !dbg !571
  %25 = and i32 %24, -4096, !dbg !571
  %26 = load i32* %mode_addr, align 4, !dbg !571
  %27 = and i32 %26, 4095, !dbg !571
  %28 = or i32 %25, %27, !dbg !571
  %29 = getelementptr inbounds %struct.stat* %19, i32 0, i32 3, !dbg !571
  store i32 %28, i32* %29, align 8, !dbg !571
  store i32 0, i32* %0, align 4, !dbg !572
  br label %bb4, !dbg !572

bb3:                                              ; preds = %entry
  %30 = call i32* @__errno_location() nounwind readnone, !dbg !573
  store i32 1, i32* %30, align 4, !dbg !573
  store i32 -1, i32* %0, align 4, !dbg !574
  br label %bb4, !dbg !574

bb4:                                              ; preds = %bb3, %bb2
  %31 = load i32* %0, align 4, !dbg !572
  store i32 %31, i32* %retval, align 4, !dbg !572
  br label %return, !dbg !572

return:                                           ; preds = %bb4
  %retval5 = load i32* %retval, !dbg !572
  ret i32 %retval5, !dbg !572
}

declare i32 @geteuid() nounwind

declare i32 @getgid() nounwind

define i32 @chmod(i8* %path, i32 %mode) nounwind {
entry:
  %path_addr = alloca i8*, align 8
  %mode_addr = alloca i32, align 4
  %retval = alloca i32
  %0 = alloca i32
  %dfile = alloca %struct.exe_disk_file_t*
  %r = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i8** %path_addr}, metadata !575), !dbg !576
  store i8* %path, i8** %path_addr
  call void @llvm.dbg.declare(metadata !{i32* %mode_addr}, metadata !577), !dbg !576
  store i32 %mode, i32* %mode_addr
  call void @llvm.dbg.declare(metadata !{%struct.exe_disk_file_t** %dfile}, metadata !578), !dbg !580
  %1 = load i8** %path_addr, align 8, !dbg !580
  %2 = call %struct.exe_disk_file_t* @__get_sym_file(i8* %1) nounwind, !dbg !580
  store %struct.exe_disk_file_t* %2, %struct.exe_disk_file_t** %dfile, align 8, !dbg !580
  %3 = load i32* @n_calls.4683, align 4, !dbg !581
  %4 = add nsw i32 %3, 1, !dbg !581
  store i32 %4, i32* @n_calls.4683, align 4, !dbg !581
  %5 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !582
  %6 = icmp ne i32 %5, 0, !dbg !582
  br i1 %6, label %bb, label %bb2, !dbg !582

bb:                                               ; preds = %entry
  %7 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 11), align 8, !dbg !582
  %8 = load i32* %7, align 4, !dbg !582
  %9 = load i32* @n_calls.4683, align 4, !dbg !582
  %10 = icmp eq i32 %8, %9, !dbg !582
  br i1 %10, label %bb1, label %bb2, !dbg !582

bb1:                                              ; preds = %bb
  %11 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !583
  %12 = sub i32 %11, 1, !dbg !583
  store i32 %12, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !583
  %13 = call i32* @__errno_location() nounwind readnone, !dbg !584
  store i32 5, i32* %13, align 4, !dbg !584
  store i32 -1, i32* %0, align 4, !dbg !585
  br label %bb7, !dbg !585

bb2:                                              ; preds = %bb, %entry
  %14 = load %struct.exe_disk_file_t** %dfile, align 8, !dbg !586
  %15 = icmp ne %struct.exe_disk_file_t* %14, null, !dbg !586
  br i1 %15, label %bb3, label %bb4, !dbg !586

bb3:                                              ; preds = %bb2
  %16 = load %struct.exe_disk_file_t** %dfile, align 8, !dbg !587
  %17 = load i32* %mode_addr, align 4, !dbg !587
  %18 = call i32 @__df_chmod(%struct.exe_disk_file_t* %16, i32 %17) nounwind, !dbg !587
  store i32 %18, i32* %0, align 4, !dbg !587
  br label %bb7, !dbg !587

bb4:                                              ; preds = %bb2
  call void @llvm.dbg.declare(metadata !{i32* %r}, metadata !588), !dbg !590
  %19 = load i8** %path_addr, align 8, !dbg !590
  %20 = call i8* @__concretize_string(i8* %19) nounwind, !dbg !590
  %21 = load i32* %mode_addr, align 4, !dbg !590
  %22 = call i64 (i64, ...)* @syscall(i64 90, i8* %20, i32 %21) nounwind, !dbg !590
  %23 = trunc i64 %22 to i32, !dbg !590
  store i32 %23, i32* %r, align 4, !dbg !590
  %24 = load i32* %r, align 4, !dbg !591
  %25 = icmp eq i32 %24, -1, !dbg !591
  br i1 %25, label %bb5, label %bb6, !dbg !591

bb5:                                              ; preds = %bb4
  %26 = call i32* @__errno_location() nounwind readnone, !dbg !592
  %27 = call i32 @klee_get_errno() nounwind, !dbg !592
  store i32 %27, i32* %26, align 4, !dbg !592
  br label %bb6, !dbg !592

bb6:                                              ; preds = %bb5, %bb4
  %28 = load i32* %r, align 4, !dbg !593
  store i32 %28, i32* %0, align 4, !dbg !593
  br label %bb7, !dbg !593

bb7:                                              ; preds = %bb6, %bb3, %bb1
  %29 = load i32* %0, align 4, !dbg !585
  store i32 %29, i32* %retval, align 4, !dbg !585
  br label %return, !dbg !585

return:                                           ; preds = %bb7
  %retval8 = load i32* %retval, !dbg !585
  ret i32 %retval8, !dbg !585
}

define i32 @fchmod(i32 %fd, i32 %mode) nounwind {
entry:
  %fd_addr = alloca i32, align 4
  %mode_addr = alloca i32, align 4
  %retval = alloca i32
  %0 = alloca i32
  %f = alloca %struct.exe_file_t*
  %r = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i32* %fd_addr}, metadata !594), !dbg !595
  store i32 %fd, i32* %fd_addr
  call void @llvm.dbg.declare(metadata !{i32* %mode_addr}, metadata !596), !dbg !595
  store i32 %mode, i32* %mode_addr
  call void @llvm.dbg.declare(metadata !{%struct.exe_file_t** %f}, metadata !597), !dbg !599
  %1 = load i32* %fd_addr, align 4, !dbg !599
  %2 = call %struct.exe_file_t* @__get_file(i32 %1) nounwind, !dbg !599
  store %struct.exe_file_t* %2, %struct.exe_file_t** %f, align 8, !dbg !599
  %3 = load %struct.exe_file_t** %f, align 8, !dbg !600
  %4 = icmp eq %struct.exe_file_t* %3, null, !dbg !600
  br i1 %4, label %bb, label %bb1, !dbg !600

bb:                                               ; preds = %entry
  %5 = call i32* @__errno_location() nounwind readnone, !dbg !601
  store i32 9, i32* %5, align 4, !dbg !601
  store i32 -1, i32* %0, align 4, !dbg !602
  br label %bb9, !dbg !602

bb1:                                              ; preds = %entry
  %6 = load i32* @n_calls.4715, align 4, !dbg !603
  %7 = add nsw i32 %6, 1, !dbg !603
  store i32 %7, i32* @n_calls.4715, align 4, !dbg !603
  %8 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !604
  %9 = icmp ne i32 %8, 0, !dbg !604
  br i1 %9, label %bb2, label %bb4, !dbg !604

bb2:                                              ; preds = %bb1
  %10 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 12), align 8, !dbg !604
  %11 = load i32* %10, align 4, !dbg !604
  %12 = load i32* @n_calls.4715, align 4, !dbg !604
  %13 = icmp eq i32 %11, %12, !dbg !604
  br i1 %13, label %bb3, label %bb4, !dbg !604

bb3:                                              ; preds = %bb2
  %14 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !605
  %15 = sub i32 %14, 1, !dbg !605
  store i32 %15, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !605
  %16 = call i32* @__errno_location() nounwind readnone, !dbg !606
  store i32 5, i32* %16, align 4, !dbg !606
  store i32 -1, i32* %0, align 4, !dbg !607
  br label %bb9, !dbg !607

bb4:                                              ; preds = %bb2, %bb1
  %17 = load %struct.exe_file_t** %f, align 8, !dbg !608
  %18 = getelementptr inbounds %struct.exe_file_t* %17, i32 0, i32 3, !dbg !608
  %19 = load %struct.exe_disk_file_t** %18, align 8, !dbg !608
  %20 = icmp ne %struct.exe_disk_file_t* %19, null, !dbg !608
  br i1 %20, label %bb5, label %bb6, !dbg !608

bb5:                                              ; preds = %bb4
  %21 = load %struct.exe_file_t** %f, align 8, !dbg !609
  %22 = getelementptr inbounds %struct.exe_file_t* %21, i32 0, i32 3, !dbg !609
  %23 = load %struct.exe_disk_file_t** %22, align 8, !dbg !609
  %24 = load i32* %mode_addr, align 4, !dbg !609
  %25 = call i32 @__df_chmod(%struct.exe_disk_file_t* %23, i32 %24) nounwind, !dbg !609
  store i32 %25, i32* %0, align 4, !dbg !609
  br label %bb9, !dbg !609

bb6:                                              ; preds = %bb4
  call void @llvm.dbg.declare(metadata !{i32* %r}, metadata !610), !dbg !612
  %26 = load %struct.exe_file_t** %f, align 8, !dbg !612
  %27 = getelementptr inbounds %struct.exe_file_t* %26, i32 0, i32 0, !dbg !612
  %28 = load i32* %27, align 8, !dbg !612
  %29 = load i32* %mode_addr, align 4, !dbg !612
  %30 = call i64 (i64, ...)* @syscall(i64 91, i32 %28, i32 %29) nounwind, !dbg !612
  %31 = trunc i64 %30 to i32, !dbg !612
  store i32 %31, i32* %r, align 4, !dbg !612
  %32 = load i32* %r, align 4, !dbg !613
  %33 = icmp eq i32 %32, -1, !dbg !613
  br i1 %33, label %bb7, label %bb8, !dbg !613

bb7:                                              ; preds = %bb6
  %34 = call i32* @__errno_location() nounwind readnone, !dbg !614
  %35 = call i32 @klee_get_errno() nounwind, !dbg !614
  store i32 %35, i32* %34, align 4, !dbg !614
  br label %bb8, !dbg !614

bb8:                                              ; preds = %bb7, %bb6
  %36 = load i32* %r, align 4, !dbg !615
  store i32 %36, i32* %0, align 4, !dbg !615
  br label %bb9, !dbg !615

bb9:                                              ; preds = %bb8, %bb5, %bb3, %bb
  %37 = load i32* %0, align 4, !dbg !602
  store i32 %37, i32* %retval, align 4, !dbg !602
  br label %return, !dbg !602

return:                                           ; preds = %bb9
  %retval10 = load i32* %retval, !dbg !602
  ret i32 %retval10, !dbg !602
}

define internal i32 @__df_chown(%struct.exe_disk_file_t* %df, i32 %owner, i32 %group) nounwind {
entry:
  %df_addr = alloca %struct.exe_disk_file_t*, align 8
  %owner_addr = alloca i32, align 4
  %group_addr = alloca i32, align 4
  %retval = alloca i32
  %0 = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{%struct.exe_disk_file_t** %df_addr}, metadata !616), !dbg !617
  store %struct.exe_disk_file_t* %df, %struct.exe_disk_file_t** %df_addr
  call void @llvm.dbg.declare(metadata !{i32* %owner_addr}, metadata !618), !dbg !617
  store i32 %owner, i32* %owner_addr
  call void @llvm.dbg.declare(metadata !{i32* %group_addr}, metadata !619), !dbg !617
  store i32 %group, i32* %group_addr
  call void @klee_warning(i8* getelementptr inbounds ([32 x i8]* @.str8, i64 0, i64 0)) nounwind, !dbg !620
  %1 = call i32* @__errno_location() nounwind readnone, !dbg !622
  store i32 1, i32* %1, align 4, !dbg !622
  store i32 -1, i32* %0, align 4, !dbg !623
  %2 = load i32* %0, align 4, !dbg !623
  store i32 %2, i32* %retval, align 4, !dbg !623
  br label %return, !dbg !623

return:                                           ; preds = %entry
  %retval1 = load i32* %retval, !dbg !623
  ret i32 %retval1, !dbg !623
}

define i32 @chown(i8* %path, i32 %owner, i32 %group) nounwind {
entry:
  %path_addr = alloca i8*, align 8
  %owner_addr = alloca i32, align 4
  %group_addr = alloca i32, align 4
  %retval = alloca i32
  %0 = alloca i32
  %df = alloca %struct.exe_disk_file_t*
  %r = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i8** %path_addr}, metadata !624), !dbg !625
  store i8* %path, i8** %path_addr
  call void @llvm.dbg.declare(metadata !{i32* %owner_addr}, metadata !626), !dbg !625
  store i32 %owner, i32* %owner_addr
  call void @llvm.dbg.declare(metadata !{i32* %group_addr}, metadata !627), !dbg !625
  store i32 %group, i32* %group_addr
  call void @llvm.dbg.declare(metadata !{%struct.exe_disk_file_t** %df}, metadata !628), !dbg !630
  %1 = load i8** %path_addr, align 8, !dbg !630
  %2 = call %struct.exe_disk_file_t* @__get_sym_file(i8* %1) nounwind, !dbg !630
  store %struct.exe_disk_file_t* %2, %struct.exe_disk_file_t** %df, align 8, !dbg !630
  %3 = load %struct.exe_disk_file_t** %df, align 8, !dbg !631
  %4 = icmp ne %struct.exe_disk_file_t* %3, null, !dbg !631
  br i1 %4, label %bb, label %bb1, !dbg !631

bb:                                               ; preds = %entry
  %5 = load %struct.exe_disk_file_t** %df, align 8, !dbg !632
  %6 = load i32* %owner_addr, align 4, !dbg !632
  %7 = load i32* %group_addr, align 4, !dbg !632
  %8 = call i32 @__df_chown(%struct.exe_disk_file_t* %5, i32 %6, i32 %7) nounwind, !dbg !632
  store i32 %8, i32* %0, align 4, !dbg !632
  br label %bb4, !dbg !632

bb1:                                              ; preds = %entry
  call void @llvm.dbg.declare(metadata !{i32* %r}, metadata !633), !dbg !635
  %9 = load i8** %path_addr, align 8, !dbg !635
  %10 = call i8* @__concretize_string(i8* %9) nounwind, !dbg !635
  %11 = load i32* %owner_addr, align 4, !dbg !635
  %12 = load i32* %group_addr, align 4, !dbg !635
  %13 = call i64 (i64, ...)* @syscall(i64 92, i8* %10, i32 %11, i32 %12) nounwind, !dbg !635
  %14 = trunc i64 %13 to i32, !dbg !635
  store i32 %14, i32* %r, align 4, !dbg !635
  %15 = load i32* %r, align 4, !dbg !636
  %16 = icmp eq i32 %15, -1, !dbg !636
  br i1 %16, label %bb2, label %bb3, !dbg !636

bb2:                                              ; preds = %bb1
  %17 = call i32* @__errno_location() nounwind readnone, !dbg !637
  %18 = call i32 @klee_get_errno() nounwind, !dbg !637
  store i32 %18, i32* %17, align 4, !dbg !637
  br label %bb3, !dbg !637

bb3:                                              ; preds = %bb2, %bb1
  %19 = load i32* %r, align 4, !dbg !638
  store i32 %19, i32* %0, align 4, !dbg !638
  br label %bb4, !dbg !638

bb4:                                              ; preds = %bb3, %bb
  %20 = load i32* %0, align 4, !dbg !632
  store i32 %20, i32* %retval, align 4, !dbg !632
  br label %return, !dbg !632

return:                                           ; preds = %bb4
  %retval5 = load i32* %retval, !dbg !632
  ret i32 %retval5, !dbg !632
}

define i32 @fchown(i32 %fd, i32 %owner, i32 %group) nounwind {
entry:
  %fd_addr = alloca i32, align 4
  %owner_addr = alloca i32, align 4
  %group_addr = alloca i32, align 4
  %retval = alloca i32
  %0 = alloca i32
  %f = alloca %struct.exe_file_t*
  %r = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i32* %fd_addr}, metadata !639), !dbg !640
  store i32 %fd, i32* %fd_addr
  call void @llvm.dbg.declare(metadata !{i32* %owner_addr}, metadata !641), !dbg !640
  store i32 %owner, i32* %owner_addr
  call void @llvm.dbg.declare(metadata !{i32* %group_addr}, metadata !642), !dbg !640
  store i32 %group, i32* %group_addr
  call void @llvm.dbg.declare(metadata !{%struct.exe_file_t** %f}, metadata !643), !dbg !645
  %1 = load i32* %fd_addr, align 4, !dbg !645
  %2 = call %struct.exe_file_t* @__get_file(i32 %1) nounwind, !dbg !645
  store %struct.exe_file_t* %2, %struct.exe_file_t** %f, align 8, !dbg !645
  %3 = load %struct.exe_file_t** %f, align 8, !dbg !646
  %4 = icmp eq %struct.exe_file_t* %3, null, !dbg !646
  br i1 %4, label %bb, label %bb1, !dbg !646

bb:                                               ; preds = %entry
  %5 = call i32* @__errno_location() nounwind readnone, !dbg !647
  store i32 9, i32* %5, align 4, !dbg !647
  store i32 -1, i32* %0, align 4, !dbg !648
  br label %bb6, !dbg !648

bb1:                                              ; preds = %entry
  %6 = load %struct.exe_file_t** %f, align 8, !dbg !649
  %7 = getelementptr inbounds %struct.exe_file_t* %6, i32 0, i32 3, !dbg !649
  %8 = load %struct.exe_disk_file_t** %7, align 8, !dbg !649
  %9 = icmp ne %struct.exe_disk_file_t* %8, null, !dbg !649
  br i1 %9, label %bb2, label %bb3, !dbg !649

bb2:                                              ; preds = %bb1
  %10 = load %struct.exe_file_t** %f, align 8, !dbg !650
  %11 = getelementptr inbounds %struct.exe_file_t* %10, i32 0, i32 3, !dbg !650
  %12 = load %struct.exe_disk_file_t** %11, align 8, !dbg !650
  %13 = load i32* %owner_addr, align 4, !dbg !650
  %14 = load i32* %group_addr, align 4, !dbg !650
  %15 = call i32 @__df_chown(%struct.exe_disk_file_t* %12, i32 %13, i32 %14) nounwind, !dbg !650
  store i32 %15, i32* %0, align 4, !dbg !650
  br label %bb6, !dbg !650

bb3:                                              ; preds = %bb1
  call void @llvm.dbg.declare(metadata !{i32* %r}, metadata !651), !dbg !653
  %16 = load i32* %fd_addr, align 4, !dbg !653
  %17 = load i32* %owner_addr, align 4, !dbg !653
  %18 = load i32* %group_addr, align 4, !dbg !653
  %19 = call i64 (i64, ...)* @syscall(i64 93, i32 %16, i32 %17, i32 %18) nounwind, !dbg !653
  %20 = trunc i64 %19 to i32, !dbg !653
  store i32 %20, i32* %r, align 4, !dbg !653
  %21 = load i32* %r, align 4, !dbg !654
  %22 = icmp eq i32 %21, -1, !dbg !654
  br i1 %22, label %bb4, label %bb5, !dbg !654

bb4:                                              ; preds = %bb3
  %23 = call i32* @__errno_location() nounwind readnone, !dbg !655
  %24 = call i32 @klee_get_errno() nounwind, !dbg !655
  store i32 %24, i32* %23, align 4, !dbg !655
  br label %bb5, !dbg !655

bb5:                                              ; preds = %bb4, %bb3
  %25 = load i32* %r, align 4, !dbg !656
  store i32 %25, i32* %0, align 4, !dbg !656
  br label %bb6, !dbg !656

bb6:                                              ; preds = %bb5, %bb2, %bb
  %26 = load i32* %0, align 4, !dbg !648
  store i32 %26, i32* %retval, align 4, !dbg !648
  br label %return, !dbg !648

return:                                           ; preds = %bb6
  %retval7 = load i32* %retval, !dbg !648
  ret i32 %retval7, !dbg !648
}

define i32 @lchown(i8* %path, i32 %owner, i32 %group) nounwind {
entry:
  %path_addr = alloca i8*, align 8
  %owner_addr = alloca i32, align 4
  %group_addr = alloca i32, align 4
  %retval = alloca i32
  %0 = alloca i32
  %df = alloca %struct.exe_disk_file_t*
  %r = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i8** %path_addr}, metadata !657), !dbg !658
  store i8* %path, i8** %path_addr
  call void @llvm.dbg.declare(metadata !{i32* %owner_addr}, metadata !659), !dbg !658
  store i32 %owner, i32* %owner_addr
  call void @llvm.dbg.declare(metadata !{i32* %group_addr}, metadata !660), !dbg !658
  store i32 %group, i32* %group_addr
  call void @llvm.dbg.declare(metadata !{%struct.exe_disk_file_t** %df}, metadata !661), !dbg !663
  %1 = load i8** %path_addr, align 8, !dbg !663
  %2 = call %struct.exe_disk_file_t* @__get_sym_file(i8* %1) nounwind, !dbg !663
  store %struct.exe_disk_file_t* %2, %struct.exe_disk_file_t** %df, align 8, !dbg !663
  %3 = load %struct.exe_disk_file_t** %df, align 8, !dbg !664
  %4 = icmp ne %struct.exe_disk_file_t* %3, null, !dbg !664
  br i1 %4, label %bb, label %bb1, !dbg !664

bb:                                               ; preds = %entry
  %5 = load %struct.exe_disk_file_t** %df, align 8, !dbg !665
  %6 = load i32* %owner_addr, align 4, !dbg !665
  %7 = load i32* %group_addr, align 4, !dbg !665
  %8 = call i32 @__df_chown(%struct.exe_disk_file_t* %5, i32 %6, i32 %7) nounwind, !dbg !665
  store i32 %8, i32* %0, align 4, !dbg !665
  br label %bb4, !dbg !665

bb1:                                              ; preds = %entry
  call void @llvm.dbg.declare(metadata !{i32* %r}, metadata !666), !dbg !668
  %9 = load i8** %path_addr, align 8, !dbg !668
  %10 = call i8* @__concretize_string(i8* %9) nounwind, !dbg !668
  %11 = load i32* %owner_addr, align 4, !dbg !668
  %12 = load i32* %group_addr, align 4, !dbg !668
  %13 = call i64 (i64, ...)* @syscall(i64 92, i8* %10, i32 %11, i32 %12) nounwind, !dbg !668
  %14 = trunc i64 %13 to i32, !dbg !668
  store i32 %14, i32* %r, align 4, !dbg !668
  %15 = load i32* %r, align 4, !dbg !669
  %16 = icmp eq i32 %15, -1, !dbg !669
  br i1 %16, label %bb2, label %bb3, !dbg !669

bb2:                                              ; preds = %bb1
  %17 = call i32* @__errno_location() nounwind readnone, !dbg !670
  %18 = call i32 @klee_get_errno() nounwind, !dbg !670
  store i32 %18, i32* %17, align 4, !dbg !670
  br label %bb3, !dbg !670

bb3:                                              ; preds = %bb2, %bb1
  %19 = load i32* %r, align 4, !dbg !671
  store i32 %19, i32* %0, align 4, !dbg !671
  br label %bb4, !dbg !671

bb4:                                              ; preds = %bb3, %bb
  %20 = load i32* %0, align 4, !dbg !665
  store i32 %20, i32* %retval, align 4, !dbg !665
  br label %return, !dbg !665

return:                                           ; preds = %bb4
  %retval5 = load i32* %retval, !dbg !665
  ret i32 %retval5, !dbg !665
}

define i32 @__fd_fstat(i32 %fd, %struct.stat* %buf) nounwind {
entry:
  %fd_addr = alloca i32, align 4
  %buf_addr = alloca %struct.stat*, align 8
  %retval = alloca i32
  %0 = alloca i32
  %f = alloca %struct.exe_file_t*
  %r = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i32* %fd_addr}, metadata !672), !dbg !673
  store i32 %fd, i32* %fd_addr
  call void @llvm.dbg.declare(metadata !{%struct.stat** %buf_addr}, metadata !674), !dbg !673
  store %struct.stat* %buf, %struct.stat** %buf_addr
  call void @llvm.dbg.declare(metadata !{%struct.exe_file_t** %f}, metadata !675), !dbg !677
  %1 = load i32* %fd_addr, align 4, !dbg !677
  %2 = call %struct.exe_file_t* @__get_file(i32 %1) nounwind, !dbg !677
  store %struct.exe_file_t* %2, %struct.exe_file_t** %f, align 8, !dbg !677
  %3 = load %struct.exe_file_t** %f, align 8, !dbg !678
  %4 = icmp eq %struct.exe_file_t* %3, null, !dbg !678
  br i1 %4, label %bb, label %bb1, !dbg !678

bb:                                               ; preds = %entry
  %5 = call i32* @__errno_location() nounwind readnone, !dbg !679
  store i32 9, i32* %5, align 4, !dbg !679
  store i32 -1, i32* %0, align 4, !dbg !680
  br label %bb6, !dbg !680

bb1:                                              ; preds = %entry
  %6 = load %struct.exe_file_t** %f, align 8, !dbg !681
  %7 = getelementptr inbounds %struct.exe_file_t* %6, i32 0, i32 3, !dbg !681
  %8 = load %struct.exe_disk_file_t** %7, align 8, !dbg !681
  %9 = icmp eq %struct.exe_disk_file_t* %8, null, !dbg !681
  br i1 %9, label %bb2, label %bb5, !dbg !681

bb2:                                              ; preds = %bb1
  call void @llvm.dbg.declare(metadata !{i32* %r}, metadata !682), !dbg !684
  %10 = load %struct.exe_file_t** %f, align 8, !dbg !684
  %11 = getelementptr inbounds %struct.exe_file_t* %10, i32 0, i32 0, !dbg !684
  %12 = load i32* %11, align 8, !dbg !684
  %13 = load %struct.stat** %buf_addr, align 8, !dbg !684
  %14 = call i64 (i64, ...)* @syscall(i64 5, i32 %12, %struct.stat* %13) nounwind, !dbg !684
  %15 = trunc i64 %14 to i32, !dbg !684
  store i32 %15, i32* %r, align 4, !dbg !684
  %16 = load i32* %r, align 4, !dbg !685
  %17 = icmp eq i32 %16, -1, !dbg !685
  br i1 %17, label %bb3, label %bb4, !dbg !685

bb3:                                              ; preds = %bb2
  %18 = call i32* @__errno_location() nounwind readnone, !dbg !686
  %19 = call i32 @klee_get_errno() nounwind, !dbg !686
  store i32 %19, i32* %18, align 4, !dbg !686
  br label %bb4, !dbg !686

bb4:                                              ; preds = %bb3, %bb2
  %20 = load i32* %r, align 4, !dbg !687
  store i32 %20, i32* %0, align 4, !dbg !687
  br label %bb6, !dbg !687

bb5:                                              ; preds = %bb1
  %21 = load %struct.exe_file_t** %f, align 8, !dbg !688
  %22 = getelementptr inbounds %struct.exe_file_t* %21, i32 0, i32 3, !dbg !688
  %23 = load %struct.exe_disk_file_t** %22, align 8, !dbg !688
  %24 = getelementptr inbounds %struct.exe_disk_file_t* %23, i32 0, i32 2, !dbg !688
  %25 = load %struct.stat** %24, align 8, !dbg !688
  %26 = load %struct.stat** %buf_addr, align 8, !dbg !688
  %27 = bitcast %struct.stat* %26 to i8*, !dbg !688
  %28 = bitcast %struct.stat* %25 to i8*, !dbg !688
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 144, i32 1, i1 false), !dbg !688
  store i32 0, i32* %0, align 4, !dbg !689
  br label %bb6, !dbg !689

bb6:                                              ; preds = %bb5, %bb4, %bb
  %29 = load i32* %0, align 4, !dbg !680
  store i32 %29, i32* %retval, align 4, !dbg !680
  br label %return, !dbg !680

return:                                           ; preds = %bb6
  %retval7 = load i32* %retval, !dbg !680
  ret i32 %retval7, !dbg !680
}

define i32 @__fd_ftruncate(i32 %fd, i64 %length) nounwind {
entry:
  %fd_addr = alloca i32, align 4
  %length_addr = alloca i64, align 8
  %retval = alloca i32
  %0 = alloca i32
  %f = alloca %struct.exe_file_t*
  %r = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i32* %fd_addr}, metadata !690), !dbg !691
  store i32 %fd, i32* %fd_addr
  call void @llvm.dbg.declare(metadata !{i64* %length_addr}, metadata !692), !dbg !691
  store i64 %length, i64* %length_addr
  call void @llvm.dbg.declare(metadata !{%struct.exe_file_t** %f}, metadata !693), !dbg !695
  %1 = load i32* %fd_addr, align 4, !dbg !695
  %2 = call %struct.exe_file_t* @__get_file(i32 %1) nounwind, !dbg !695
  store %struct.exe_file_t* %2, %struct.exe_file_t** %f, align 8, !dbg !695
  %3 = load i32* @n_calls.4844, align 4, !dbg !696
  %4 = add nsw i32 %3, 1, !dbg !696
  store i32 %4, i32* @n_calls.4844, align 4, !dbg !696
  %5 = load %struct.exe_file_t** %f, align 8, !dbg !697
  %6 = icmp eq %struct.exe_file_t* %5, null, !dbg !697
  br i1 %6, label %bb, label %bb1, !dbg !697

bb:                                               ; preds = %entry
  %7 = call i32* @__errno_location() nounwind readnone, !dbg !698
  store i32 9, i32* %7, align 4, !dbg !698
  store i32 -1, i32* %0, align 4, !dbg !699
  br label %bb9, !dbg !699

bb1:                                              ; preds = %entry
  %8 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !700
  %9 = icmp ne i32 %8, 0, !dbg !700
  br i1 %9, label %bb2, label %bb4, !dbg !700

bb2:                                              ; preds = %bb1
  %10 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 9), align 8, !dbg !700
  %11 = load i32* %10, align 4, !dbg !700
  %12 = load i32* @n_calls.4844, align 4, !dbg !700
  %13 = icmp eq i32 %11, %12, !dbg !700
  br i1 %13, label %bb3, label %bb4, !dbg !700

bb3:                                              ; preds = %bb2
  %14 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !701
  %15 = sub i32 %14, 1, !dbg !701
  store i32 %15, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !701
  %16 = call i32* @__errno_location() nounwind readnone, !dbg !702
  store i32 5, i32* %16, align 4, !dbg !702
  store i32 -1, i32* %0, align 4, !dbg !703
  br label %bb9, !dbg !703

bb4:                                              ; preds = %bb2, %bb1
  %17 = load %struct.exe_file_t** %f, align 8, !dbg !704
  %18 = getelementptr inbounds %struct.exe_file_t* %17, i32 0, i32 3, !dbg !704
  %19 = load %struct.exe_disk_file_t** %18, align 8, !dbg !704
  %20 = icmp ne %struct.exe_disk_file_t* %19, null, !dbg !704
  br i1 %20, label %bb5, label %bb6, !dbg !704

bb5:                                              ; preds = %bb4
  call void @klee_warning(i8* getelementptr inbounds ([30 x i8]* @.str9, i64 0, i64 0)) nounwind, !dbg !705
  %21 = call i32* @__errno_location() nounwind readnone, !dbg !706
  store i32 5, i32* %21, align 4, !dbg !706
  store i32 -1, i32* %0, align 4, !dbg !707
  br label %bb9, !dbg !707

bb6:                                              ; preds = %bb4
  call void @llvm.dbg.declare(metadata !{i32* %r}, metadata !708), !dbg !710
  %22 = load %struct.exe_file_t** %f, align 8, !dbg !710
  %23 = getelementptr inbounds %struct.exe_file_t* %22, i32 0, i32 0, !dbg !710
  %24 = load i32* %23, align 8, !dbg !710
  %25 = load i64* %length_addr, align 8, !dbg !710
  %26 = call i64 (i64, ...)* @syscall(i64 77, i32 %24, i64 %25) nounwind, !dbg !710
  %27 = trunc i64 %26 to i32, !dbg !710
  store i32 %27, i32* %r, align 4, !dbg !710
  %28 = load i32* %r, align 4, !dbg !711
  %29 = icmp eq i32 %28, -1, !dbg !711
  br i1 %29, label %bb7, label %bb8, !dbg !711

bb7:                                              ; preds = %bb6
  %30 = call i32* @__errno_location() nounwind readnone, !dbg !712
  %31 = call i32 @klee_get_errno() nounwind, !dbg !712
  store i32 %31, i32* %30, align 4, !dbg !712
  br label %bb8, !dbg !712

bb8:                                              ; preds = %bb7, %bb6
  %32 = load i32* %r, align 4, !dbg !713
  store i32 %32, i32* %0, align 4, !dbg !713
  br label %bb9, !dbg !713

bb9:                                              ; preds = %bb8, %bb5, %bb3, %bb
  %33 = load i32* %0, align 4, !dbg !699
  store i32 %33, i32* %retval, align 4, !dbg !699
  br label %return, !dbg !699

return:                                           ; preds = %bb9
  %retval10 = load i32* %retval, !dbg !699
  ret i32 %retval10, !dbg !699
}

define i32 @__fd_getdents(i32 %fd, %struct.dirent64* %dirp, i32 %count) nounwind {
entry:
  %fd_addr = alloca i32, align 4
  %dirp_addr = alloca %struct.dirent64*, align 8
  %count_addr = alloca i32, align 4
  %retval = alloca i32
  %0 = alloca i32
  %f = alloca %struct.exe_file_t*
  %i = alloca i32
  %pad = alloca i32
  %bytes = alloca i32
  %df = alloca %struct.exe_disk_file_t*
  %os_pos = alloca i32
  %res = alloca i32
  %s = alloca i32
  %pos = alloca i32
  %dp = alloca %struct.dirent64*
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i32* %fd_addr}, metadata !714), !dbg !715
  store i32 %fd, i32* %fd_addr
  call void @llvm.dbg.declare(metadata !{%struct.dirent64** %dirp_addr}, metadata !716), !dbg !715
  store %struct.dirent64* %dirp, %struct.dirent64** %dirp_addr
  call void @llvm.dbg.declare(metadata !{i32* %count_addr}, metadata !717), !dbg !715
  store i32 %count, i32* %count_addr
  call void @llvm.dbg.declare(metadata !{%struct.exe_file_t** %f}, metadata !718), !dbg !720
  %1 = load i32* %fd_addr, align 4, !dbg !720
  %2 = call %struct.exe_file_t* @__get_file(i32 %1) nounwind, !dbg !720
  store %struct.exe_file_t* %2, %struct.exe_file_t** %f, align 8, !dbg !720
  %3 = load %struct.exe_file_t** %f, align 8, !dbg !721
  %4 = icmp eq %struct.exe_file_t* %3, null, !dbg !721
  br i1 %4, label %bb, label %bb1, !dbg !721

bb:                                               ; preds = %entry
  %5 = call i32* @__errno_location() nounwind readnone, !dbg !722
  store i32 9, i32* %5, align 4, !dbg !722
  store i32 -1, i32* %0, align 4, !dbg !723
  br label %bb19, !dbg !723

bb1:                                              ; preds = %entry
  %6 = load %struct.exe_file_t** %f, align 8, !dbg !724
  %7 = getelementptr inbounds %struct.exe_file_t* %6, i32 0, i32 3, !dbg !724
  %8 = load %struct.exe_disk_file_t** %7, align 8, !dbg !724
  %9 = icmp ne %struct.exe_disk_file_t* %8, null, !dbg !724
  br i1 %9, label %bb2, label %bb3, !dbg !724

bb2:                                              ; preds = %bb1
  call void @klee_warning(i8* getelementptr inbounds ([33 x i8]* @.str10, i64 0, i64 0)) nounwind, !dbg !725
  %10 = call i32* @__errno_location() nounwind readnone, !dbg !726
  store i32 22, i32* %10, align 4, !dbg !726
  store i32 -1, i32* %0, align 4, !dbg !727
  br label %bb19, !dbg !727

bb3:                                              ; preds = %bb1
  %11 = load %struct.exe_file_t** %f, align 8, !dbg !728
  %12 = getelementptr inbounds %struct.exe_file_t* %11, i32 0, i32 2, !dbg !728
  %13 = load i64* %12, align 8, !dbg !728
  %14 = icmp ule i64 %13, 4095, !dbg !728
  br i1 %14, label %bb4, label %bb11, !dbg !728

bb4:                                              ; preds = %bb3
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !729), !dbg !731
  call void @llvm.dbg.declare(metadata !{i32* %pad}, metadata !732), !dbg !731
  call void @llvm.dbg.declare(metadata !{i32* %bytes}, metadata !733), !dbg !731
  store i32 0, i32* %bytes, align 4, !dbg !731
  %15 = load %struct.exe_file_t** %f, align 8, !dbg !734
  %16 = getelementptr inbounds %struct.exe_file_t* %15, i32 0, i32 2, !dbg !734
  %17 = load i64* %16, align 8, !dbg !734
  %18 = udiv i64 %17, 280, !dbg !734
  %19 = trunc i64 %18 to i32, !dbg !734
  store i32 %19, i32* %i, align 4, !dbg !734
  %20 = load i32* %i, align 4, !dbg !735
  %21 = zext i32 %20 to i64, !dbg !735
  %22 = mul i64 %21, 280, !dbg !735
  %23 = load %struct.exe_file_t** %f, align 8, !dbg !735
  %24 = getelementptr inbounds %struct.exe_file_t* %23, i32 0, i32 2, !dbg !735
  %25 = load i64* %24, align 8, !dbg !735
  %26 = icmp ne i64 %22, %25, !dbg !735
  br i1 %26, label %bb6, label %bb5, !dbg !735

bb5:                                              ; preds = %bb4
  %27 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !735
  %28 = load i32* %i, align 4, !dbg !735
  %29 = icmp ult i32 %27, %28, !dbg !735
  br i1 %29, label %bb6, label %bb7, !dbg !735

bb6:                                              ; preds = %bb5, %bb4
  %30 = call i32* @__errno_location() nounwind readnone, !dbg !736
  store i32 22, i32* %30, align 4, !dbg !736
  store i32 -1, i32* %0, align 4, !dbg !737
  br label %bb19, !dbg !737

bb7:                                              ; preds = %bb5
  br label %bb9, !dbg !737

bb8:                                              ; preds = %bb9
  call void @llvm.dbg.declare(metadata !{%struct.exe_disk_file_t** %df}, metadata !738), !dbg !740
  %31 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !740
  %32 = load i32* %i, align 4, !dbg !740
  %33 = zext i32 %32 to i64, !dbg !740
  %34 = getelementptr inbounds %struct.exe_disk_file_t* %31, i64 %33, !dbg !740
  store %struct.exe_disk_file_t* %34, %struct.exe_disk_file_t** %df, align 8, !dbg !740
  %35 = load %struct.exe_disk_file_t** %df, align 8, !dbg !741
  %36 = getelementptr inbounds %struct.exe_disk_file_t* %35, i32 0, i32 2, !dbg !741
  %37 = load %struct.stat** %36, align 8, !dbg !741
  %38 = getelementptr inbounds %struct.stat* %37, i32 0, i32 1, !dbg !741
  %39 = load i64* %38, align 8, !dbg !741
  %40 = load %struct.dirent64** %dirp_addr, align 8, !dbg !741
  %41 = getelementptr inbounds %struct.dirent64* %40, i32 0, i32 0, !dbg !741
  store i64 %39, i64* %41, align 8, !dbg !741
  %42 = load %struct.dirent64** %dirp_addr, align 8, !dbg !742
  %43 = getelementptr inbounds %struct.dirent64* %42, i32 0, i32 2, !dbg !742
  store i16 280, i16* %43, align 8, !dbg !742
  %44 = load %struct.exe_disk_file_t** %df, align 8, !dbg !743
  %45 = getelementptr inbounds %struct.exe_disk_file_t* %44, i32 0, i32 2, !dbg !743
  %46 = load %struct.stat** %45, align 8, !dbg !743
  %47 = getelementptr inbounds %struct.stat* %46, i32 0, i32 3, !dbg !743
  %48 = load i32* %47, align 8, !dbg !743
  %49 = and i32 %48, 61440, !dbg !743
  %50 = lshr i32 %49, 12, !dbg !743
  %51 = trunc i32 %50 to i8, !dbg !743
  %52 = load %struct.dirent64** %dirp_addr, align 8, !dbg !743
  %53 = getelementptr inbounds %struct.dirent64* %52, i32 0, i32 3, !dbg !743
  store i8 %51, i8* %53, align 2, !dbg !743
  %54 = load i32* %i, align 4, !dbg !744
  %55 = trunc i32 %54 to i8, !dbg !744
  %56 = add i8 %55, 65, !dbg !744
  %57 = load %struct.dirent64** %dirp_addr, align 8, !dbg !744
  %58 = getelementptr inbounds %struct.dirent64* %57, i32 0, i32 4, !dbg !744
  %59 = getelementptr inbounds [256 x i8]* %58, i64 0, i64 0, !dbg !744
  store i8 %56, i8* %59, align 1, !dbg !744
  %60 = load %struct.dirent64** %dirp_addr, align 8, !dbg !745
  %61 = getelementptr inbounds %struct.dirent64* %60, i32 0, i32 4, !dbg !745
  %62 = getelementptr inbounds [256 x i8]* %61, i64 0, i64 1, !dbg !745
  store i8 0, i8* %62, align 1, !dbg !745
  %63 = load i32* %i, align 4, !dbg !746
  %64 = add i32 %63, 1, !dbg !746
  %65 = zext i32 %64 to i64, !dbg !746
  %66 = mul i64 %65, 280, !dbg !746
  %67 = load %struct.dirent64** %dirp_addr, align 8, !dbg !746
  %68 = getelementptr inbounds %struct.dirent64* %67, i32 0, i32 1, !dbg !746
  store i64 %66, i64* %68, align 8, !dbg !746
  %69 = load %struct.dirent64** %dirp_addr, align 8, !dbg !747
  %70 = getelementptr inbounds %struct.dirent64* %69, i32 0, i32 2, !dbg !747
  %71 = load i16* %70, align 8, !dbg !747
  %72 = zext i16 %71 to i32, !dbg !747
  %73 = load i32* %bytes, align 4, !dbg !747
  %74 = add i32 %72, %73, !dbg !747
  store i32 %74, i32* %bytes, align 4, !dbg !747
  %75 = load %struct.dirent64** %dirp_addr, align 8, !dbg !748
  %76 = getelementptr inbounds %struct.dirent64* %75, i64 1, !dbg !748
  store %struct.dirent64* %76, %struct.dirent64** %dirp_addr, align 8, !dbg !748
  %77 = load i32* %i, align 4, !dbg !749
  %78 = add i32 %77, 1, !dbg !749
  store i32 %78, i32* %i, align 4, !dbg !749
  br label %bb9, !dbg !749

bb9:                                              ; preds = %bb8, %bb7
  %79 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !749
  %80 = load i32* %i, align 4, !dbg !749
  %81 = icmp ugt i32 %79, %80, !dbg !749
  br i1 %81, label %bb8, label %bb10, !dbg !749

bb10:                                             ; preds = %bb9
  %82 = load i32* %count_addr, align 4, !dbg !750
  %83 = icmp ule i32 %82, 4096, !dbg !750
  %min = select i1 %83, i32 %82, i32 4096, !dbg !750
  store i32 %min, i32* %pad, align 4, !dbg !750
  %84 = load %struct.dirent64** %dirp_addr, align 8, !dbg !751
  %85 = getelementptr inbounds %struct.dirent64* %84, i32 0, i32 0, !dbg !751
  store i64 0, i64* %85, align 8, !dbg !751
  %86 = load i32* %pad, align 4, !dbg !752
  %87 = trunc i32 %86 to i16, !dbg !752
  %88 = load i32* %bytes, align 4, !dbg !752
  %89 = trunc i32 %88 to i16, !dbg !752
  %90 = sub i16 %87, %89, !dbg !752
  %91 = load %struct.dirent64** %dirp_addr, align 8, !dbg !752
  %92 = getelementptr inbounds %struct.dirent64* %91, i32 0, i32 2, !dbg !752
  store i16 %90, i16* %92, align 8, !dbg !752
  %93 = load %struct.dirent64** %dirp_addr, align 8, !dbg !753
  %94 = getelementptr inbounds %struct.dirent64* %93, i32 0, i32 3, !dbg !753
  store i8 0, i8* %94, align 2, !dbg !753
  %95 = load %struct.dirent64** %dirp_addr, align 8, !dbg !754
  %96 = getelementptr inbounds %struct.dirent64* %95, i32 0, i32 4, !dbg !754
  %97 = getelementptr inbounds [256 x i8]* %96, i64 0, i64 0, !dbg !754
  store i8 0, i8* %97, align 1, !dbg !754
  %98 = load %struct.dirent64** %dirp_addr, align 8, !dbg !755
  %99 = getelementptr inbounds %struct.dirent64* %98, i32 0, i32 1, !dbg !755
  store i64 4096, i64* %99, align 8, !dbg !755
  %100 = load %struct.dirent64** %dirp_addr, align 8, !dbg !756
  %101 = getelementptr inbounds %struct.dirent64* %100, i32 0, i32 2, !dbg !756
  %102 = load i16* %101, align 8, !dbg !756
  %103 = zext i16 %102 to i32, !dbg !756
  %104 = load i32* %bytes, align 4, !dbg !756
  %105 = add i32 %103, %104, !dbg !756
  store i32 %105, i32* %bytes, align 4, !dbg !756
  %106 = load i32* %pad, align 4, !dbg !757
  %107 = zext i32 %106 to i64, !dbg !757
  %108 = load %struct.exe_file_t** %f, align 8, !dbg !757
  %109 = getelementptr inbounds %struct.exe_file_t* %108, i32 0, i32 2, !dbg !757
  store i64 %107, i64* %109, align 8, !dbg !757
  %110 = load i32* %bytes, align 4, !dbg !758
  store i32 %110, i32* %0, align 4, !dbg !758
  br label %bb19, !dbg !758

bb11:                                             ; preds = %bb3
  call void @llvm.dbg.declare(metadata !{i32* %os_pos}, metadata !759), !dbg !761
  call void @llvm.dbg.declare(metadata !{i32* %res}, metadata !762), !dbg !763
  call void @llvm.dbg.declare(metadata !{i32* %s}, metadata !764), !dbg !763
  %111 = load %struct.exe_file_t** %f, align 8, !dbg !761
  %112 = getelementptr inbounds %struct.exe_file_t* %111, i32 0, i32 2, !dbg !761
  %113 = load i64* %112, align 8, !dbg !761
  %114 = trunc i64 %113 to i32, !dbg !761
  %115 = sub i32 %114, 4096, !dbg !761
  store i32 %115, i32* %os_pos, align 4, !dbg !761
  %116 = load i32* %count_addr, align 4, !dbg !765
  %117 = zext i32 %116 to i64, !dbg !765
  %118 = load %struct.dirent64** %dirp_addr, align 8, !dbg !765
  %119 = bitcast %struct.dirent64* %118 to i8*, !dbg !765
  call void @llvm.memset.p0i8.i64(i8* %119, i8 0, i64 %117, i32 1, i1 false), !dbg !765
  %120 = load i32* %os_pos, align 4, !dbg !766
  %121 = load %struct.exe_file_t** %f, align 8, !dbg !766
  %122 = getelementptr inbounds %struct.exe_file_t* %121, i32 0, i32 0, !dbg !766
  %123 = load i32* %122, align 8, !dbg !766
  %124 = call i64 (i64, ...)* @syscall(i64 8, i32 %123, i32 %120, i32 0) nounwind, !dbg !766
  %125 = trunc i64 %124 to i32, !dbg !766
  store i32 %125, i32* %s, align 4, !dbg !766
  %126 = load i32* %s, align 4, !dbg !767
  %127 = icmp eq i32 %126, -1, !dbg !767
  br i1 %127, label %bb12, label %bb13, !dbg !767

bb12:                                             ; preds = %bb11
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i32 735, i8* getelementptr inbounds ([14 x i8]* @__PRETTY_FUNCTION__.4892, i64 0, i64 0)) noreturn nounwind, !dbg !767
  unreachable, !dbg !767

bb13:                                             ; preds = %bb11
  %128 = load %struct.exe_file_t** %f, align 8, !dbg !768
  %129 = getelementptr inbounds %struct.exe_file_t* %128, i32 0, i32 0, !dbg !768
  %130 = load i32* %129, align 8, !dbg !768
  %131 = load %struct.dirent64** %dirp_addr, align 8, !dbg !768
  %132 = load i32* %count_addr, align 4, !dbg !768
  %133 = call i64 (i64, ...)* @syscall(i64 217, i32 %130, %struct.dirent64* %131, i32 %132) nounwind, !dbg !768
  %134 = trunc i64 %133 to i32, !dbg !768
  store i32 %134, i32* %res, align 4, !dbg !768
  %135 = load i32* %res, align 4, !dbg !769
  %136 = icmp eq i32 %135, -1, !dbg !769
  br i1 %136, label %bb14, label %bb15, !dbg !769

bb14:                                             ; preds = %bb13
  %137 = call i32* @__errno_location() nounwind readnone, !dbg !770
  %138 = call i32 @klee_get_errno() nounwind, !dbg !770
  store i32 %138, i32* %137, align 4, !dbg !770
  br label %bb18, !dbg !770

bb15:                                             ; preds = %bb13
  call void @llvm.dbg.declare(metadata !{i32* %pos}, metadata !771), !dbg !773
  store i32 0, i32* %pos, align 4, !dbg !773
  %139 = load %struct.exe_file_t** %f, align 8, !dbg !774
  %140 = getelementptr inbounds %struct.exe_file_t* %139, i32 0, i32 0, !dbg !774
  %141 = load i32* %140, align 8, !dbg !774
  %142 = call i64 (i64, ...)* @syscall(i64 8, i32 %141, i32 0, i32 1) nounwind, !dbg !774
  %143 = add nsw i64 %142, 4096, !dbg !774
  %144 = load %struct.exe_file_t** %f, align 8, !dbg !774
  %145 = getelementptr inbounds %struct.exe_file_t* %144, i32 0, i32 2, !dbg !774
  store i64 %143, i64* %145, align 8, !dbg !774
  br label %bb17, !dbg !774

bb16:                                             ; preds = %bb17
  call void @llvm.dbg.declare(metadata !{%struct.dirent64** %dp}, metadata !775), !dbg !777
  %146 = load %struct.dirent64** %dirp_addr, align 8, !dbg !777
  %147 = bitcast %struct.dirent64* %146 to i8*, !dbg !777
  %148 = load i32* %pos, align 4, !dbg !777
  %149 = sext i32 %148 to i64, !dbg !777
  %150 = getelementptr inbounds i8* %147, i64 %149, !dbg !777
  %151 = bitcast i8* %150 to %struct.dirent64*, !dbg !777
  store %struct.dirent64* %151, %struct.dirent64** %dp, align 8, !dbg !777
  %152 = load %struct.dirent64** %dp, align 8, !dbg !778
  %153 = getelementptr inbounds %struct.dirent64* %152, i32 0, i32 1, !dbg !778
  %154 = load i64* %153, align 8, !dbg !778
  %155 = add nsw i64 %154, 4096, !dbg !778
  %156 = load %struct.dirent64** %dp, align 8, !dbg !778
  %157 = getelementptr inbounds %struct.dirent64* %156, i32 0, i32 1, !dbg !778
  store i64 %155, i64* %157, align 8, !dbg !778
  %158 = load %struct.dirent64** %dp, align 8, !dbg !779
  %159 = getelementptr inbounds %struct.dirent64* %158, i32 0, i32 2, !dbg !779
  %160 = load i16* %159, align 8, !dbg !779
  %161 = zext i16 %160 to i32, !dbg !779
  %162 = load i32* %pos, align 4, !dbg !779
  %163 = add nsw i32 %161, %162, !dbg !779
  store i32 %163, i32* %pos, align 4, !dbg !779
  br label %bb17, !dbg !779

bb17:                                             ; preds = %bb16, %bb15
  %164 = load i32* %pos, align 4, !dbg !780
  %165 = load i32* %res, align 4, !dbg !780
  %166 = icmp slt i32 %164, %165, !dbg !780
  br i1 %166, label %bb16, label %bb18, !dbg !780

bb18:                                             ; preds = %bb17, %bb14
  %167 = load i32* %res, align 4, !dbg !781
  store i32 %167, i32* %0, align 4, !dbg !781
  br label %bb19, !dbg !781

bb19:                                             ; preds = %bb18, %bb10, %bb6, %bb2, %bb
  %168 = load i32* %0, align 4, !dbg !723
  store i32 %168, i32* %retval, align 4, !dbg !723
  br label %return, !dbg !723

return:                                           ; preds = %bb19
  %retval20 = load i32* %retval, !dbg !723
  ret i32 %retval20, !dbg !723
}

define i32 @ioctl(i32 %fd, i64 %request, ...) nounwind {
entry:
  %fd_addr = alloca i32, align 4
  %request_addr = alloca i64, align 8
  %retval = alloca i32
  %addr.21 = alloca i8*
  %0 = alloca i32
  %f = alloca %struct.exe_file_t*
  %ap = alloca [1 x %struct.__va_list_tag]
  %buf = alloca i8*
  %stat = alloca %struct.stat*
  %ts = alloca %struct.termios*
  %ws = alloca %struct.winsize*
  %res = alloca i32*
  %r = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i32* %fd_addr}, metadata !782), !dbg !783
  store i32 %fd, i32* %fd_addr
  call void @llvm.dbg.declare(metadata !{i64* %request_addr}, metadata !784), !dbg !783
  store i64 %request, i64* %request_addr
  call void @llvm.dbg.declare(metadata !{%struct.exe_file_t** %f}, metadata !785), !dbg !787
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %ap}, metadata !788), !dbg !801
  call void @llvm.dbg.declare(metadata !{i8** %buf}, metadata !802), !dbg !803
  %1 = load i32* %fd_addr, align 4, !dbg !787
  %2 = call %struct.exe_file_t* @__get_file(i32 %1) nounwind, !dbg !787
  store %struct.exe_file_t* %2, %struct.exe_file_t** %f, align 8, !dbg !787
  %3 = load %struct.exe_file_t** %f, align 8, !dbg !804
  %4 = icmp eq %struct.exe_file_t* %3, null, !dbg !804
  br i1 %4, label %bb, label %bb1, !dbg !804

bb:                                               ; preds = %entry
  %5 = call i32* @__errno_location() nounwind readnone, !dbg !805
  store i32 9, i32* %5, align 4, !dbg !805
  store i32 -1, i32* %0, align 4, !dbg !806
  br label %bb39, !dbg !806

bb1:                                              ; preds = %entry
  %ap2 = bitcast [1 x %struct.__va_list_tag]* %ap to %struct.__va_list_tag*, !dbg !807
  %ap23 = bitcast %struct.__va_list_tag* %ap2 to i8*, !dbg !807
  call void @llvm.va_start(i8* %ap23), !dbg !807
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !808
  %7 = getelementptr inbounds %struct.__va_list_tag* %6, i32 0, i32 0, !dbg !808
  %8 = load i32* %7, align 8, !dbg !808
  %9 = icmp uge i32 %8, 48, !dbg !808
  br i1 %9, label %bb5, label %bb4, !dbg !808

bb4:                                              ; preds = %bb1
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !808
  %11 = getelementptr inbounds %struct.__va_list_tag* %10, i32 0, i32 3, !dbg !808
  %12 = load i8** %11, align 8, !dbg !808
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !808
  %14 = getelementptr inbounds %struct.__va_list_tag* %13, i32 0, i32 0, !dbg !808
  %15 = load i32* %14, align 8, !dbg !808
  %16 = inttoptr i32 %15 to i8*, !dbg !808
  %17 = ptrtoint i8* %12 to i64, !dbg !808
  %18 = ptrtoint i8* %16 to i64, !dbg !808
  %19 = add i64 %17, %18, !dbg !808
  %20 = inttoptr i64 %19 to i8*, !dbg !808
  store i8* %20, i8** %addr.21, align 8, !dbg !808
  %21 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !808
  %22 = getelementptr inbounds %struct.__va_list_tag* %21, i32 0, i32 0, !dbg !808
  %23 = load i32* %22, align 8, !dbg !808
  %24 = add i32 %23, 8, !dbg !808
  %25 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !808
  %26 = getelementptr inbounds %struct.__va_list_tag* %25, i32 0, i32 0, !dbg !808
  store i32 %24, i32* %26, align 8, !dbg !808
  br label %bb6, !dbg !808

bb5:                                              ; preds = %bb1
  %27 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !808
  %28 = getelementptr inbounds %struct.__va_list_tag* %27, i32 0, i32 2, !dbg !808
  %29 = load i8** %28, align 8, !dbg !808
  store i8* %29, i8** %addr.21, align 8, !dbg !808
  %30 = getelementptr inbounds i8* %29, i64 8, !dbg !808
  %31 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !808
  %32 = getelementptr inbounds %struct.__va_list_tag* %31, i32 0, i32 2, !dbg !808
  store i8* %30, i8** %32, align 8, !dbg !808
  br label %bb6, !dbg !808

bb6:                                              ; preds = %bb5, %bb4
  %33 = load i8** %addr.21, align 8, !dbg !808
  %34 = bitcast i8* %33 to i8**, !dbg !808
  %35 = load i8** %34, align 8, !dbg !808
  store i8* %35, i8** %buf, align 8, !dbg !808
  %ap7 = bitcast [1 x %struct.__va_list_tag]* %ap to %struct.__va_list_tag*, !dbg !809
  %ap78 = bitcast %struct.__va_list_tag* %ap7 to i8*, !dbg !809
  call void @llvm.va_end(i8* %ap78), !dbg !809
  %36 = load %struct.exe_file_t** %f, align 8, !dbg !810
  %37 = getelementptr inbounds %struct.exe_file_t* %36, i32 0, i32 3, !dbg !810
  %38 = load %struct.exe_disk_file_t** %37, align 8, !dbg !810
  %39 = icmp ne %struct.exe_disk_file_t* %38, null, !dbg !810
  br i1 %39, label %bb9, label %bb36, !dbg !810

bb9:                                              ; preds = %bb6
  call void @llvm.dbg.declare(metadata !{%struct.stat** %stat}, metadata !811), !dbg !833
  %40 = load %struct.exe_file_t** %f, align 8, !dbg !833
  %41 = getelementptr inbounds %struct.exe_file_t* %40, i32 0, i32 3, !dbg !833
  %42 = load %struct.exe_disk_file_t** %41, align 8, !dbg !833
  %43 = getelementptr inbounds %struct.exe_disk_file_t* %42, i32 0, i32 2, !dbg !833
  %44 = load %struct.stat** %43, align 8, !dbg !833
  store %struct.stat* %44, %struct.stat** %stat, align 8, !dbg !833
  %45 = load i64* %request_addr, align 8, !dbg !834
  switch i64 %45, label %bb35 [
    i64 21505, label %bb10
    i64 21506, label %bb13
    i64 21507, label %bb16
    i64 21508, label %bb19
    i64 21523, label %bb22
    i64 21524, label %bb25
    i64 21531, label %bb28
    i64 2150657282, label %bb34
  ], !dbg !834

bb10:                                             ; preds = %bb9
  call void @llvm.dbg.declare(metadata !{%struct.termios** %ts}, metadata !835), !dbg !855
  %46 = load i8** %buf, align 8, !dbg !855
  %47 = bitcast i8* %46 to %struct.termios*, !dbg !855
  store %struct.termios* %47, %struct.termios** %ts, align 8, !dbg !855
  call void @klee_warning_once(i8* getelementptr inbounds ([41 x i8]* @.str12, i64 0, i64 0)) nounwind, !dbg !856
  %48 = load %struct.stat** %stat, align 8, !dbg !857
  %49 = getelementptr inbounds %struct.stat* %48, i32 0, i32 3, !dbg !857
  %50 = load i32* %49, align 8, !dbg !857
  %51 = and i32 %50, 61440, !dbg !857
  %52 = icmp eq i32 %51, 8192, !dbg !857
  br i1 %52, label %bb11, label %bb12, !dbg !857

bb11:                                             ; preds = %bb10
  %53 = load %struct.termios** %ts, align 8, !dbg !858
  %54 = getelementptr inbounds %struct.termios* %53, i32 0, i32 0, !dbg !858
  store i32 27906, i32* %54, align 4, !dbg !858
  %55 = load %struct.termios** %ts, align 8, !dbg !859
  %56 = getelementptr inbounds %struct.termios* %55, i32 0, i32 1, !dbg !859
  store i32 5, i32* %56, align 4, !dbg !859
  %57 = load %struct.termios** %ts, align 8, !dbg !860
  %58 = getelementptr inbounds %struct.termios* %57, i32 0, i32 2, !dbg !860
  store i32 1215, i32* %58, align 4, !dbg !860
  %59 = load %struct.termios** %ts, align 8, !dbg !861
  %60 = getelementptr inbounds %struct.termios* %59, i32 0, i32 3, !dbg !861
  store i32 35287, i32* %60, align 4, !dbg !861
  %61 = load %struct.termios** %ts, align 8, !dbg !862
  %62 = getelementptr inbounds %struct.termios* %61, i32 0, i32 4, !dbg !862
  store i8 0, i8* %62, align 4, !dbg !862
  %63 = load %struct.termios** %ts, align 8, !dbg !863
  %64 = getelementptr inbounds %struct.termios* %63, i32 0, i32 5, !dbg !863
  %65 = getelementptr inbounds [32 x i8]* %64, i64 0, i64 0, !dbg !863
  store i8 3, i8* %65, align 1, !dbg !863
  %66 = load %struct.termios** %ts, align 8, !dbg !864
  %67 = getelementptr inbounds %struct.termios* %66, i32 0, i32 5, !dbg !864
  %68 = getelementptr inbounds [32 x i8]* %67, i64 0, i64 1, !dbg !864
  store i8 28, i8* %68, align 1, !dbg !864
  %69 = load %struct.termios** %ts, align 8, !dbg !865
  %70 = getelementptr inbounds %struct.termios* %69, i32 0, i32 5, !dbg !865
  %71 = getelementptr inbounds [32 x i8]* %70, i64 0, i64 2, !dbg !865
  store i8 127, i8* %71, align 1, !dbg !865
  %72 = load %struct.termios** %ts, align 8, !dbg !866
  %73 = getelementptr inbounds %struct.termios* %72, i32 0, i32 5, !dbg !866
  %74 = getelementptr inbounds [32 x i8]* %73, i64 0, i64 3, !dbg !866
  store i8 21, i8* %74, align 1, !dbg !866
  %75 = load %struct.termios** %ts, align 8, !dbg !867
  %76 = getelementptr inbounds %struct.termios* %75, i32 0, i32 5, !dbg !867
  %77 = getelementptr inbounds [32 x i8]* %76, i64 0, i64 4, !dbg !867
  store i8 4, i8* %77, align 1, !dbg !867
  %78 = load %struct.termios** %ts, align 8, !dbg !868
  %79 = getelementptr inbounds %struct.termios* %78, i32 0, i32 5, !dbg !868
  %80 = getelementptr inbounds [32 x i8]* %79, i64 0, i64 5, !dbg !868
  store i8 0, i8* %80, align 1, !dbg !868
  %81 = load %struct.termios** %ts, align 8, !dbg !869
  %82 = getelementptr inbounds %struct.termios* %81, i32 0, i32 5, !dbg !869
  %83 = getelementptr inbounds [32 x i8]* %82, i64 0, i64 6, !dbg !869
  store i8 1, i8* %83, align 1, !dbg !869
  %84 = load %struct.termios** %ts, align 8, !dbg !870
  %85 = getelementptr inbounds %struct.termios* %84, i32 0, i32 5, !dbg !870
  %86 = getelementptr inbounds [32 x i8]* %85, i64 0, i64 7, !dbg !870
  store i8 -1, i8* %86, align 1, !dbg !870
  %87 = load %struct.termios** %ts, align 8, !dbg !871
  %88 = getelementptr inbounds %struct.termios* %87, i32 0, i32 5, !dbg !871
  %89 = getelementptr inbounds [32 x i8]* %88, i64 0, i64 8, !dbg !871
  store i8 17, i8* %89, align 1, !dbg !871
  %90 = load %struct.termios** %ts, align 8, !dbg !872
  %91 = getelementptr inbounds %struct.termios* %90, i32 0, i32 5, !dbg !872
  %92 = getelementptr inbounds [32 x i8]* %91, i64 0, i64 9, !dbg !872
  store i8 19, i8* %92, align 1, !dbg !872
  %93 = load %struct.termios** %ts, align 8, !dbg !873
  %94 = getelementptr inbounds %struct.termios* %93, i32 0, i32 5, !dbg !873
  %95 = getelementptr inbounds [32 x i8]* %94, i64 0, i64 10, !dbg !873
  store i8 26, i8* %95, align 1, !dbg !873
  %96 = load %struct.termios** %ts, align 8, !dbg !874
  %97 = getelementptr inbounds %struct.termios* %96, i32 0, i32 5, !dbg !874
  %98 = getelementptr inbounds [32 x i8]* %97, i64 0, i64 11, !dbg !874
  store i8 -1, i8* %98, align 1, !dbg !874
  %99 = load %struct.termios** %ts, align 8, !dbg !875
  %100 = getelementptr inbounds %struct.termios* %99, i32 0, i32 5, !dbg !875
  %101 = getelementptr inbounds [32 x i8]* %100, i64 0, i64 12, !dbg !875
  store i8 18, i8* %101, align 1, !dbg !875
  %102 = load %struct.termios** %ts, align 8, !dbg !876
  %103 = getelementptr inbounds %struct.termios* %102, i32 0, i32 5, !dbg !876
  %104 = getelementptr inbounds [32 x i8]* %103, i64 0, i64 13, !dbg !876
  store i8 15, i8* %104, align 1, !dbg !876
  %105 = load %struct.termios** %ts, align 8, !dbg !877
  %106 = getelementptr inbounds %struct.termios* %105, i32 0, i32 5, !dbg !877
  %107 = getelementptr inbounds [32 x i8]* %106, i64 0, i64 14, !dbg !877
  store i8 23, i8* %107, align 1, !dbg !877
  %108 = load %struct.termios** %ts, align 8, !dbg !878
  %109 = getelementptr inbounds %struct.termios* %108, i32 0, i32 5, !dbg !878
  %110 = getelementptr inbounds [32 x i8]* %109, i64 0, i64 15, !dbg !878
  store i8 22, i8* %110, align 1, !dbg !878
  %111 = load %struct.termios** %ts, align 8, !dbg !879
  %112 = getelementptr inbounds %struct.termios* %111, i32 0, i32 5, !dbg !879
  %113 = getelementptr inbounds [32 x i8]* %112, i64 0, i64 16, !dbg !879
  store i8 -1, i8* %113, align 1, !dbg !879
  %114 = load %struct.termios** %ts, align 8, !dbg !880
  %115 = getelementptr inbounds %struct.termios* %114, i32 0, i32 5, !dbg !880
  %116 = getelementptr inbounds [32 x i8]* %115, i64 0, i64 17, !dbg !880
  store i8 0, i8* %116, align 1, !dbg !880
  %117 = load %struct.termios** %ts, align 8, !dbg !881
  %118 = getelementptr inbounds %struct.termios* %117, i32 0, i32 5, !dbg !881
  %119 = getelementptr inbounds [32 x i8]* %118, i64 0, i64 18, !dbg !881
  store i8 0, i8* %119, align 1, !dbg !881
  store i32 0, i32* %0, align 4, !dbg !882
  br label %bb39, !dbg !882

bb12:                                             ; preds = %bb10
  %120 = call i32* @__errno_location() nounwind readnone, !dbg !883
  store i32 25, i32* %120, align 4, !dbg !883
  store i32 -1, i32* %0, align 4, !dbg !884
  br label %bb39, !dbg !884

bb13:                                             ; preds = %bb9
  call void @klee_warning_once(i8* getelementptr inbounds ([42 x i8]* @.str13, i64 0, i64 0)) nounwind, !dbg !885
  %121 = load %struct.stat** %stat, align 8, !dbg !886
  %122 = getelementptr inbounds %struct.stat* %121, i32 0, i32 3, !dbg !886
  %123 = load i32* %122, align 8, !dbg !886
  %124 = and i32 %123, 61440, !dbg !886
  %125 = icmp eq i32 %124, 8192, !dbg !886
  br i1 %125, label %bb14, label %bb15, !dbg !886

bb14:                                             ; preds = %bb13
  store i32 0, i32* %0, align 4, !dbg !887
  br label %bb39, !dbg !887

bb15:                                             ; preds = %bb13
  %126 = call i32* @__errno_location() nounwind readnone, !dbg !888
  store i32 25, i32* %126, align 4, !dbg !888
  store i32 -1, i32* %0, align 4, !dbg !889
  br label %bb39, !dbg !889

bb16:                                             ; preds = %bb9
  call void @klee_warning_once(i8* getelementptr inbounds ([43 x i8]* @.str14, i64 0, i64 0)) nounwind, !dbg !890
  %127 = load i32* %fd_addr, align 4, !dbg !891
  %128 = icmp eq i32 %127, 0, !dbg !891
  br i1 %128, label %bb17, label %bb18, !dbg !891

bb17:                                             ; preds = %bb16
  store i32 0, i32* %0, align 4, !dbg !892
  br label %bb39, !dbg !892

bb18:                                             ; preds = %bb16
  %129 = call i32* @__errno_location() nounwind readnone, !dbg !893
  store i32 25, i32* %129, align 4, !dbg !893
  store i32 -1, i32* %0, align 4, !dbg !894
  br label %bb39, !dbg !894

bb19:                                             ; preds = %bb9
  call void @klee_warning_once(i8* getelementptr inbounds ([43 x i8]* @.str15, i64 0, i64 0)) nounwind, !dbg !895
  %130 = load %struct.stat** %stat, align 8, !dbg !896
  %131 = getelementptr inbounds %struct.stat* %130, i32 0, i32 3, !dbg !896
  %132 = load i32* %131, align 8, !dbg !896
  %133 = and i32 %132, 61440, !dbg !896
  %134 = icmp eq i32 %133, 8192, !dbg !896
  br i1 %134, label %bb20, label %bb21, !dbg !896

bb20:                                             ; preds = %bb19
  store i32 0, i32* %0, align 4, !dbg !897
  br label %bb39, !dbg !897

bb21:                                             ; preds = %bb19
  %135 = call i32* @__errno_location() nounwind readnone, !dbg !898
  store i32 25, i32* %135, align 4, !dbg !898
  store i32 -1, i32* %0, align 4, !dbg !899
  br label %bb39, !dbg !899

bb22:                                             ; preds = %bb9
  call void @llvm.dbg.declare(metadata !{%struct.winsize** %ws}, metadata !900), !dbg !910
  %136 = load i8** %buf, align 8, !dbg !910
  %137 = bitcast i8* %136 to %struct.winsize*, !dbg !910
  store %struct.winsize* %137, %struct.winsize** %ws, align 8, !dbg !910
  %138 = load %struct.winsize** %ws, align 8, !dbg !911
  %139 = getelementptr inbounds %struct.winsize* %138, i32 0, i32 0, !dbg !911
  store i16 24, i16* %139, align 2, !dbg !911
  %140 = load %struct.winsize** %ws, align 8, !dbg !912
  %141 = getelementptr inbounds %struct.winsize* %140, i32 0, i32 1, !dbg !912
  store i16 80, i16* %141, align 2, !dbg !912
  call void @klee_warning_once(i8* getelementptr inbounds ([45 x i8]* @.str16, i64 0, i64 0)) nounwind, !dbg !913
  %142 = load %struct.stat** %stat, align 8, !dbg !914
  %143 = getelementptr inbounds %struct.stat* %142, i32 0, i32 3, !dbg !914
  %144 = load i32* %143, align 8, !dbg !914
  %145 = and i32 %144, 61440, !dbg !914
  %146 = icmp eq i32 %145, 8192, !dbg !914
  br i1 %146, label %bb23, label %bb24, !dbg !914

bb23:                                             ; preds = %bb22
  store i32 0, i32* %0, align 4, !dbg !915
  br label %bb39, !dbg !915

bb24:                                             ; preds = %bb22
  %147 = call i32* @__errno_location() nounwind readnone, !dbg !916
  store i32 25, i32* %147, align 4, !dbg !916
  store i32 -1, i32* %0, align 4, !dbg !917
  br label %bb39, !dbg !917

bb25:                                             ; preds = %bb9
  call void @klee_warning_once(i8* getelementptr inbounds ([46 x i8]* @.str17, i64 0, i64 0)) nounwind, !dbg !918
  %148 = load %struct.stat** %stat, align 8, !dbg !919
  %149 = getelementptr inbounds %struct.stat* %148, i32 0, i32 3, !dbg !919
  %150 = load i32* %149, align 8, !dbg !919
  %151 = and i32 %150, 61440, !dbg !919
  %152 = icmp eq i32 %151, 8192, !dbg !919
  br i1 %152, label %bb26, label %bb27, !dbg !919

bb26:                                             ; preds = %bb25
  %153 = call i32* @__errno_location() nounwind readnone, !dbg !920
  store i32 22, i32* %153, align 4, !dbg !920
  store i32 -1, i32* %0, align 4, !dbg !921
  br label %bb39, !dbg !921

bb27:                                             ; preds = %bb25
  %154 = call i32* @__errno_location() nounwind readnone, !dbg !922
  store i32 25, i32* %154, align 4, !dbg !922
  store i32 -1, i32* %0, align 4, !dbg !923
  br label %bb39, !dbg !923

bb28:                                             ; preds = %bb9
  call void @llvm.dbg.declare(metadata !{i32** %res}, metadata !924), !dbg !927
  %155 = load i8** %buf, align 8, !dbg !927
  %156 = bitcast i8* %155 to i32*, !dbg !927
  store i32* %156, i32** %res, align 8, !dbg !927
  call void @klee_warning_once(i8* getelementptr inbounds ([43 x i8]* @.str18, i64 0, i64 0)) nounwind, !dbg !928
  %157 = load %struct.stat** %stat, align 8, !dbg !929
  %158 = getelementptr inbounds %struct.stat* %157, i32 0, i32 3, !dbg !929
  %159 = load i32* %158, align 8, !dbg !929
  %160 = and i32 %159, 61440, !dbg !929
  %161 = icmp eq i32 %160, 8192, !dbg !929
  br i1 %161, label %bb29, label %bb33, !dbg !929

bb29:                                             ; preds = %bb28
  %162 = load %struct.exe_file_t** %f, align 8, !dbg !930
  %163 = getelementptr inbounds %struct.exe_file_t* %162, i32 0, i32 2, !dbg !930
  %164 = load i64* %163, align 8, !dbg !930
  %165 = load %struct.exe_file_t** %f, align 8, !dbg !930
  %166 = getelementptr inbounds %struct.exe_file_t* %165, i32 0, i32 3, !dbg !930
  %167 = load %struct.exe_disk_file_t** %166, align 8, !dbg !930
  %168 = getelementptr inbounds %struct.exe_disk_file_t* %167, i32 0, i32 0, !dbg !930
  %169 = load i32* %168, align 8, !dbg !930
  %170 = zext i32 %169 to i64, !dbg !930
  %171 = icmp slt i64 %164, %170, !dbg !930
  br i1 %171, label %bb30, label %bb31, !dbg !930

bb30:                                             ; preds = %bb29
  %172 = load %struct.exe_file_t** %f, align 8, !dbg !931
  %173 = getelementptr inbounds %struct.exe_file_t* %172, i32 0, i32 3, !dbg !931
  %174 = load %struct.exe_disk_file_t** %173, align 8, !dbg !931
  %175 = getelementptr inbounds %struct.exe_disk_file_t* %174, i32 0, i32 0, !dbg !931
  %176 = load i32* %175, align 8, !dbg !931
  %177 = load %struct.exe_file_t** %f, align 8, !dbg !931
  %178 = getelementptr inbounds %struct.exe_file_t* %177, i32 0, i32 2, !dbg !931
  %179 = load i64* %178, align 8, !dbg !931
  %180 = trunc i64 %179 to i32, !dbg !931
  %181 = sub i32 %176, %180, !dbg !931
  %182 = load i32** %res, align 8, !dbg !931
  store i32 %181, i32* %182, align 4, !dbg !931
  br label %bb32, !dbg !931

bb31:                                             ; preds = %bb29
  %183 = load i32** %res, align 8, !dbg !932
  store i32 0, i32* %183, align 4, !dbg !932
  br label %bb32, !dbg !932

bb32:                                             ; preds = %bb31, %bb30
  store i32 0, i32* %0, align 4, !dbg !933
  br label %bb39, !dbg !933

bb33:                                             ; preds = %bb28
  %184 = call i32* @__errno_location() nounwind readnone, !dbg !934
  store i32 25, i32* %184, align 4, !dbg !934
  store i32 -1, i32* %0, align 4, !dbg !935
  br label %bb39, !dbg !935

bb34:                                             ; preds = %bb9
  call void @klee_warning(i8* getelementptr inbounds ([44 x i8]* @.str19, i64 0, i64 0)) nounwind, !dbg !936
  %185 = call i32* @__errno_location() nounwind readnone, !dbg !937
  store i32 22, i32* %185, align 4, !dbg !937
  store i32 -1, i32* %0, align 4, !dbg !938
  br label %bb39, !dbg !938

bb35:                                             ; preds = %bb9
  call void @klee_warning(i8* getelementptr inbounds ([33 x i8]* @.str10, i64 0, i64 0)) nounwind, !dbg !939
  %186 = call i32* @__errno_location() nounwind readnone, !dbg !940
  store i32 22, i32* %186, align 4, !dbg !940
  store i32 -1, i32* %0, align 4, !dbg !941
  br label %bb39, !dbg !941

bb36:                                             ; preds = %bb6
  call void @llvm.dbg.declare(metadata !{i32* %r}, metadata !942), !dbg !944
  %187 = load %struct.exe_file_t** %f, align 8, !dbg !944
  %188 = getelementptr inbounds %struct.exe_file_t* %187, i32 0, i32 0, !dbg !944
  %189 = load i32* %188, align 8, !dbg !944
  %190 = load i64* %request_addr, align 8, !dbg !944
  %191 = load i8** %buf, align 8, !dbg !944
  %192 = call i64 (i64, ...)* @syscall(i64 16, i32 %189, i64 %190, i8* %191) nounwind, !dbg !944
  %193 = trunc i64 %192 to i32, !dbg !944
  store i32 %193, i32* %r, align 4, !dbg !944
  %194 = load i32* %r, align 4, !dbg !945
  %195 = icmp eq i32 %194, -1, !dbg !945
  br i1 %195, label %bb37, label %bb38, !dbg !945

bb37:                                             ; preds = %bb36
  %196 = call i32* @__errno_location() nounwind readnone, !dbg !946
  %197 = call i32 @klee_get_errno() nounwind, !dbg !946
  store i32 %197, i32* %196, align 4, !dbg !946
  br label %bb38, !dbg !946

bb38:                                             ; preds = %bb37, %bb36
  %198 = load i32* %r, align 4, !dbg !947
  store i32 %198, i32* %0, align 4, !dbg !947
  br label %bb39, !dbg !947

bb39:                                             ; preds = %bb38, %bb35, %bb34, %bb33, %bb32, %bb27, %bb26, %bb24, %bb23, %bb21, %bb20, %bb18, %bb17, %bb15, %bb14, %bb12, %bb11, %bb
  %199 = load i32* %0, align 4, !dbg !806
  store i32 %199, i32* %retval, align 4, !dbg !806
  br label %return, !dbg !806

return:                                           ; preds = %bb39
  %retval40 = load i32* %retval, !dbg !806
  ret i32 %retval40, !dbg !806
}

declare void @llvm.va_start(i8*) nounwind

declare void @llvm.va_end(i8*) nounwind

declare void @klee_warning_once(i8*)

define i32 @fcntl(i32 %fd, i32 %cmd, ...) nounwind {
entry:
  %fd_addr = alloca i32, align 4
  %cmd_addr = alloca i32, align 4
  %retval = alloca i32
  %addr.23 = alloca i8*
  %0 = alloca i32
  %f = alloca %struct.exe_file_t*
  %ap = alloca [1 x %struct.__va_list_tag]
  %arg = alloca i32
  %flags = alloca i32
  %r = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i32* %fd_addr}, metadata !948), !dbg !949
  store i32 %fd, i32* %fd_addr
  call void @llvm.dbg.declare(metadata !{i32* %cmd_addr}, metadata !950), !dbg !949
  store i32 %cmd, i32* %cmd_addr
  call void @llvm.dbg.declare(metadata !{%struct.exe_file_t** %f}, metadata !951), !dbg !953
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %ap}, metadata !954), !dbg !955
  call void @llvm.dbg.declare(metadata !{i32* %arg}, metadata !956), !dbg !957
  %1 = load i32* %fd_addr, align 4, !dbg !953
  %2 = call %struct.exe_file_t* @__get_file(i32 %1) nounwind, !dbg !953
  store %struct.exe_file_t* %2, %struct.exe_file_t** %f, align 8, !dbg !953
  %3 = load %struct.exe_file_t** %f, align 8, !dbg !958
  %4 = icmp eq %struct.exe_file_t* %3, null, !dbg !958
  br i1 %4, label %bb, label %bb1, !dbg !958

bb:                                               ; preds = %entry
  %5 = call i32* @__errno_location() nounwind readnone, !dbg !959
  store i32 9, i32* %5, align 4, !dbg !959
  store i32 -1, i32* %0, align 4, !dbg !960
  br label %bb29, !dbg !960

bb1:                                              ; preds = %entry
  %6 = load i32* %cmd_addr, align 4, !dbg !961
  %7 = icmp eq i32 %6, 1, !dbg !961
  br i1 %7, label %bb7, label %bb2, !dbg !961

bb2:                                              ; preds = %bb1
  %8 = load i32* %cmd_addr, align 4, !dbg !961
  %9 = icmp eq i32 %8, 3, !dbg !961
  br i1 %9, label %bb7, label %bb3, !dbg !961

bb3:                                              ; preds = %bb2
  %10 = load i32* %cmd_addr, align 4, !dbg !961
  %11 = icmp eq i32 %10, 9, !dbg !961
  br i1 %11, label %bb7, label %bb4, !dbg !961

bb4:                                              ; preds = %bb3
  %12 = load i32* %cmd_addr, align 4, !dbg !961
  %13 = icmp eq i32 %12, 11, !dbg !961
  br i1 %13, label %bb7, label %bb5, !dbg !961

bb5:                                              ; preds = %bb4
  %14 = load i32* %cmd_addr, align 4, !dbg !961
  %15 = icmp eq i32 %14, 1025, !dbg !961
  br i1 %15, label %bb7, label %bb6, !dbg !961

bb6:                                              ; preds = %bb5
  %16 = load i32* %cmd_addr, align 4, !dbg !961
  %17 = icmp eq i32 %16, 1026, !dbg !961
  br i1 %17, label %bb7, label %bb8, !dbg !961

bb7:                                              ; preds = %bb6, %bb5, %bb4, %bb3, %bb2, %bb1
  store i32 0, i32* %arg, align 4, !dbg !962
  br label %bb16, !dbg !962

bb8:                                              ; preds = %bb6
  %ap9 = bitcast [1 x %struct.__va_list_tag]* %ap to %struct.__va_list_tag*, !dbg !963
  %ap910 = bitcast %struct.__va_list_tag* %ap9 to i8*, !dbg !963
  call void @llvm.va_start(i8* %ap910), !dbg !963
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !964
  %19 = getelementptr inbounds %struct.__va_list_tag* %18, i32 0, i32 0, !dbg !964
  %20 = load i32* %19, align 8, !dbg !964
  %21 = icmp uge i32 %20, 48, !dbg !964
  br i1 %21, label %bb12, label %bb11, !dbg !964

bb11:                                             ; preds = %bb8
  %22 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !964
  %23 = getelementptr inbounds %struct.__va_list_tag* %22, i32 0, i32 3, !dbg !964
  %24 = load i8** %23, align 8, !dbg !964
  %25 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !964
  %26 = getelementptr inbounds %struct.__va_list_tag* %25, i32 0, i32 0, !dbg !964
  %27 = load i32* %26, align 8, !dbg !964
  %28 = inttoptr i32 %27 to i8*, !dbg !964
  %29 = ptrtoint i8* %24 to i64, !dbg !964
  %30 = ptrtoint i8* %28 to i64, !dbg !964
  %31 = add i64 %29, %30, !dbg !964
  %32 = inttoptr i64 %31 to i8*, !dbg !964
  store i8* %32, i8** %addr.23, align 8, !dbg !964
  %33 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !964
  %34 = getelementptr inbounds %struct.__va_list_tag* %33, i32 0, i32 0, !dbg !964
  %35 = load i32* %34, align 8, !dbg !964
  %36 = add i32 %35, 8, !dbg !964
  %37 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !964
  %38 = getelementptr inbounds %struct.__va_list_tag* %37, i32 0, i32 0, !dbg !964
  store i32 %36, i32* %38, align 8, !dbg !964
  br label %bb13, !dbg !964

bb12:                                             ; preds = %bb8
  %39 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !964
  %40 = getelementptr inbounds %struct.__va_list_tag* %39, i32 0, i32 2, !dbg !964
  %41 = load i8** %40, align 8, !dbg !964
  store i8* %41, i8** %addr.23, align 8, !dbg !964
  %42 = getelementptr inbounds i8* %41, i64 8, !dbg !964
  %43 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !964
  %44 = getelementptr inbounds %struct.__va_list_tag* %43, i32 0, i32 2, !dbg !964
  store i8* %42, i8** %44, align 8, !dbg !964
  br label %bb13, !dbg !964

bb13:                                             ; preds = %bb12, %bb11
  %45 = load i8** %addr.23, align 8, !dbg !964
  %46 = bitcast i8* %45 to i32*, !dbg !964
  %47 = load i32* %46, align 4, !dbg !964
  store i32 %47, i32* %arg, align 4, !dbg !964
  %ap14 = bitcast [1 x %struct.__va_list_tag]* %ap to %struct.__va_list_tag*, !dbg !965
  %ap1415 = bitcast %struct.__va_list_tag* %ap14 to i8*, !dbg !965
  call void @llvm.va_end(i8* %ap1415), !dbg !965
  br label %bb16, !dbg !965

bb16:                                             ; preds = %bb13, %bb7
  %48 = load %struct.exe_file_t** %f, align 8, !dbg !966
  %49 = getelementptr inbounds %struct.exe_file_t* %48, i32 0, i32 3, !dbg !966
  %50 = load %struct.exe_disk_file_t** %49, align 8, !dbg !966
  %51 = icmp ne %struct.exe_disk_file_t* %50, null, !dbg !966
  br i1 %51, label %bb17, label %bb26, !dbg !966

bb17:                                             ; preds = %bb16
  %52 = load i32* %cmd_addr, align 4, !dbg !967
  switch i32 %52, label %bb25 [
    i32 1, label %bb18
    i32 2, label %bb21
    i32 3, label %bb24
  ], !dbg !967

bb18:                                             ; preds = %bb17
  call void @llvm.dbg.declare(metadata !{i32* %flags}, metadata !968), !dbg !970
  store i32 0, i32* %flags, align 4, !dbg !970
  %53 = load %struct.exe_file_t** %f, align 8, !dbg !971
  %54 = getelementptr inbounds %struct.exe_file_t* %53, i32 0, i32 1, !dbg !971
  %55 = load i32* %54, align 4, !dbg !971
  %56 = and i32 %55, 2, !dbg !971
  %57 = icmp ne i32 %56, 0, !dbg !971
  br i1 %57, label %bb19, label %bb20, !dbg !971

bb19:                                             ; preds = %bb18
  %58 = load i32* %flags, align 4, !dbg !972
  %59 = or i32 %58, 1, !dbg !972
  store i32 %59, i32* %flags, align 4, !dbg !972
  br label %bb20, !dbg !972

bb20:                                             ; preds = %bb19, %bb18
  %60 = load i32* %flags, align 4, !dbg !973
  store i32 %60, i32* %0, align 4, !dbg !973
  br label %bb29, !dbg !973

bb21:                                             ; preds = %bb17
  %61 = load %struct.exe_file_t** %f, align 8, !dbg !974
  %62 = getelementptr inbounds %struct.exe_file_t* %61, i32 0, i32 1, !dbg !974
  %63 = load i32* %62, align 4, !dbg !974
  %64 = and i32 %63, -3, !dbg !974
  %65 = load %struct.exe_file_t** %f, align 8, !dbg !974
  %66 = getelementptr inbounds %struct.exe_file_t* %65, i32 0, i32 1, !dbg !974
  store i32 %64, i32* %66, align 4, !dbg !974
  %67 = load i32* %arg, align 4, !dbg !975
  %68 = and i32 %67, 1, !dbg !975
  %69 = trunc i32 %68 to i8, !dbg !975
  %toBool = icmp ne i8 %69, 0, !dbg !975
  br i1 %toBool, label %bb22, label %bb23, !dbg !975

bb22:                                             ; preds = %bb21
  %70 = load %struct.exe_file_t** %f, align 8, !dbg !976
  %71 = getelementptr inbounds %struct.exe_file_t* %70, i32 0, i32 1, !dbg !976
  %72 = load i32* %71, align 4, !dbg !976
  %73 = or i32 %72, 2, !dbg !976
  %74 = load %struct.exe_file_t** %f, align 8, !dbg !976
  %75 = getelementptr inbounds %struct.exe_file_t* %74, i32 0, i32 1, !dbg !976
  store i32 %73, i32* %75, align 4, !dbg !976
  br label %bb23, !dbg !976

bb23:                                             ; preds = %bb22, %bb21
  store i32 0, i32* %0, align 4, !dbg !977
  br label %bb29, !dbg !977

bb24:                                             ; preds = %bb17
  store i32 0, i32* %0, align 4, !dbg !978
  br label %bb29, !dbg !978

bb25:                                             ; preds = %bb17
  call void @klee_warning(i8* getelementptr inbounds ([33 x i8]* @.str10, i64 0, i64 0)) nounwind, !dbg !979
  %76 = call i32* @__errno_location() nounwind readnone, !dbg !980
  store i32 22, i32* %76, align 4, !dbg !980
  store i32 -1, i32* %0, align 4, !dbg !981
  br label %bb29, !dbg !981

bb26:                                             ; preds = %bb16
  call void @llvm.dbg.declare(metadata !{i32* %r}, metadata !982), !dbg !984
  %77 = load %struct.exe_file_t** %f, align 8, !dbg !984
  %78 = getelementptr inbounds %struct.exe_file_t* %77, i32 0, i32 0, !dbg !984
  %79 = load i32* %78, align 8, !dbg !984
  %80 = load i32* %cmd_addr, align 4, !dbg !984
  %81 = load i32* %arg, align 4, !dbg !984
  %82 = call i64 (i64, ...)* @syscall(i64 72, i32 %79, i32 %80, i32 %81) nounwind, !dbg !984
  %83 = trunc i64 %82 to i32, !dbg !984
  store i32 %83, i32* %r, align 4, !dbg !984
  %84 = load i32* %r, align 4, !dbg !985
  %85 = icmp eq i32 %84, -1, !dbg !985
  br i1 %85, label %bb27, label %bb28, !dbg !985

bb27:                                             ; preds = %bb26
  %86 = call i32* @__errno_location() nounwind readnone, !dbg !986
  %87 = call i32 @klee_get_errno() nounwind, !dbg !986
  store i32 %87, i32* %86, align 4, !dbg !986
  br label %bb28, !dbg !986

bb28:                                             ; preds = %bb27, %bb26
  %88 = load i32* %r, align 4, !dbg !987
  store i32 %88, i32* %0, align 4, !dbg !987
  br label %bb29, !dbg !987

bb29:                                             ; preds = %bb28, %bb25, %bb24, %bb23, %bb20, %bb
  %89 = load i32* %0, align 4, !dbg !960
  store i32 %89, i32* %retval, align 4, !dbg !960
  br label %return, !dbg !960

return:                                           ; preds = %bb29
  %retval30 = load i32* %retval, !dbg !960
  ret i32 %retval30, !dbg !960
}

define i32 @__fd_statfs(i8* %path, %struct.statfs* %buf) nounwind {
entry:
  %path_addr = alloca i8*, align 8
  %buf_addr = alloca %struct.statfs*, align 8
  %retval = alloca i32
  %0 = alloca i32
  %dfile = alloca %struct.exe_disk_file_t*
  %r = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i8** %path_addr}, metadata !988), !dbg !989
  store i8* %path, i8** %path_addr
  call void @llvm.dbg.declare(metadata !{%struct.statfs** %buf_addr}, metadata !990), !dbg !989
  store %struct.statfs* %buf, %struct.statfs** %buf_addr
  call void @llvm.dbg.declare(metadata !{%struct.exe_disk_file_t** %dfile}, metadata !991), !dbg !993
  %1 = load i8** %path_addr, align 8, !dbg !993
  %2 = call %struct.exe_disk_file_t* @__get_sym_file(i8* %1) nounwind, !dbg !993
  store %struct.exe_disk_file_t* %2, %struct.exe_disk_file_t** %dfile, align 8, !dbg !993
  %3 = load %struct.exe_disk_file_t** %dfile, align 8, !dbg !994
  %4 = icmp ne %struct.exe_disk_file_t* %3, null, !dbg !994
  br i1 %4, label %bb, label %bb1, !dbg !994

bb:                                               ; preds = %entry
  call void @klee_warning(i8* getelementptr inbounds ([33 x i8]* @.str7, i64 0, i64 0)) nounwind, !dbg !995
  %5 = call i32* @__errno_location() nounwind readnone, !dbg !996
  store i32 2, i32* %5, align 4, !dbg !996
  store i32 -1, i32* %0, align 4, !dbg !997
  br label %bb4, !dbg !997

bb1:                                              ; preds = %entry
  call void @llvm.dbg.declare(metadata !{i32* %r}, metadata !998), !dbg !1000
  %6 = load i8** %path_addr, align 8, !dbg !1000
  %7 = call i8* @__concretize_string(i8* %6) nounwind, !dbg !1000
  %8 = load %struct.statfs** %buf_addr, align 8, !dbg !1000
  %9 = call i64 (i64, ...)* @syscall(i64 137, i8* %7, %struct.statfs* %8) nounwind, !dbg !1000
  %10 = trunc i64 %9 to i32, !dbg !1000
  store i32 %10, i32* %r, align 4, !dbg !1000
  %11 = load i32* %r, align 4, !dbg !1001
  %12 = icmp eq i32 %11, -1, !dbg !1001
  br i1 %12, label %bb2, label %bb3, !dbg !1001

bb2:                                              ; preds = %bb1
  %13 = call i32* @__errno_location() nounwind readnone, !dbg !1002
  %14 = call i32 @klee_get_errno() nounwind, !dbg !1002
  store i32 %14, i32* %13, align 4, !dbg !1002
  br label %bb3, !dbg !1002

bb3:                                              ; preds = %bb2, %bb1
  %15 = load i32* %r, align 4, !dbg !1003
  store i32 %15, i32* %0, align 4, !dbg !1003
  br label %bb4, !dbg !1003

bb4:                                              ; preds = %bb3, %bb
  %16 = load i32* %0, align 4, !dbg !997
  store i32 %16, i32* %retval, align 4, !dbg !997
  br label %return, !dbg !997

return:                                           ; preds = %bb4
  %retval5 = load i32* %retval, !dbg !997
  ret i32 %retval5, !dbg !997
}

define i32 @fstatfs(i32 %fd, %struct.statfs* %buf) nounwind {
entry:
  %fd_addr = alloca i32, align 4
  %buf_addr = alloca %struct.statfs*, align 8
  %retval = alloca i32
  %0 = alloca i32
  %f = alloca %struct.exe_file_t*
  %r = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i32* %fd_addr}, metadata !1004), !dbg !1005
  store i32 %fd, i32* %fd_addr
  call void @llvm.dbg.declare(metadata !{%struct.statfs** %buf_addr}, metadata !1006), !dbg !1005
  store %struct.statfs* %buf, %struct.statfs** %buf_addr
  call void @llvm.dbg.declare(metadata !{%struct.exe_file_t** %f}, metadata !1007), !dbg !1009
  %1 = load i32* %fd_addr, align 4, !dbg !1009
  %2 = call %struct.exe_file_t* @__get_file(i32 %1) nounwind, !dbg !1009
  store %struct.exe_file_t* %2, %struct.exe_file_t** %f, align 8, !dbg !1009
  %3 = load %struct.exe_file_t** %f, align 8, !dbg !1010
  %4 = icmp eq %struct.exe_file_t* %3, null, !dbg !1010
  br i1 %4, label %bb, label %bb1, !dbg !1010

bb:                                               ; preds = %entry
  %5 = call i32* @__errno_location() nounwind readnone, !dbg !1011
  store i32 9, i32* %5, align 4, !dbg !1011
  store i32 -1, i32* %0, align 4, !dbg !1012
  br label %bb6, !dbg !1012

bb1:                                              ; preds = %entry
  %6 = load %struct.exe_file_t** %f, align 8, !dbg !1013
  %7 = getelementptr inbounds %struct.exe_file_t* %6, i32 0, i32 3, !dbg !1013
  %8 = load %struct.exe_disk_file_t** %7, align 8, !dbg !1013
  %9 = icmp ne %struct.exe_disk_file_t* %8, null, !dbg !1013
  br i1 %9, label %bb2, label %bb3, !dbg !1013

bb2:                                              ; preds = %bb1
  call void @klee_warning(i8* getelementptr inbounds ([32 x i8]* @.str20, i64 0, i64 0)) nounwind, !dbg !1014
  %10 = call i32* @__errno_location() nounwind readnone, !dbg !1015
  store i32 9, i32* %10, align 4, !dbg !1015
  store i32 -1, i32* %0, align 4, !dbg !1016
  br label %bb6, !dbg !1016

bb3:                                              ; preds = %bb1
  call void @llvm.dbg.declare(metadata !{i32* %r}, metadata !1017), !dbg !1019
  %11 = load %struct.exe_file_t** %f, align 8, !dbg !1019
  %12 = getelementptr inbounds %struct.exe_file_t* %11, i32 0, i32 0, !dbg !1019
  %13 = load i32* %12, align 8, !dbg !1019
  %14 = load %struct.statfs** %buf_addr, align 8, !dbg !1019
  %15 = call i64 (i64, ...)* @syscall(i64 138, i32 %13, %struct.statfs* %14) nounwind, !dbg !1019
  %16 = trunc i64 %15 to i32, !dbg !1019
  store i32 %16, i32* %r, align 4, !dbg !1019
  %17 = load i32* %r, align 4, !dbg !1020
  %18 = icmp eq i32 %17, -1, !dbg !1020
  br i1 %18, label %bb4, label %bb5, !dbg !1020

bb4:                                              ; preds = %bb3
  %19 = call i32* @__errno_location() nounwind readnone, !dbg !1021
  %20 = call i32 @klee_get_errno() nounwind, !dbg !1021
  store i32 %20, i32* %19, align 4, !dbg !1021
  br label %bb5, !dbg !1021

bb5:                                              ; preds = %bb4, %bb3
  %21 = load i32* %r, align 4, !dbg !1022
  store i32 %21, i32* %0, align 4, !dbg !1022
  br label %bb6, !dbg !1022

bb6:                                              ; preds = %bb5, %bb2, %bb
  %22 = load i32* %0, align 4, !dbg !1012
  store i32 %22, i32* %retval, align 4, !dbg !1012
  br label %return, !dbg !1012

return:                                           ; preds = %bb6
  %retval7 = load i32* %retval, !dbg !1012
  ret i32 %retval7, !dbg !1012
}

define i32 @fsync(i32 %fd) nounwind {
entry:
  %fd_addr = alloca i32, align 4
  %retval = alloca i32
  %0 = alloca i32
  %f = alloca %struct.exe_file_t*
  %r = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i32* %fd_addr}, metadata !1023), !dbg !1024
  store i32 %fd, i32* %fd_addr
  call void @llvm.dbg.declare(metadata !{%struct.exe_file_t** %f}, metadata !1025), !dbg !1027
  %1 = load i32* %fd_addr, align 4, !dbg !1027
  %2 = call %struct.exe_file_t* @__get_file(i32 %1) nounwind, !dbg !1027
  store %struct.exe_file_t* %2, %struct.exe_file_t** %f, align 8, !dbg !1027
  %3 = load %struct.exe_file_t** %f, align 8, !dbg !1028
  %4 = icmp eq %struct.exe_file_t* %3, null, !dbg !1028
  br i1 %4, label %bb, label %bb1, !dbg !1028

bb:                                               ; preds = %entry
  %5 = call i32* @__errno_location() nounwind readnone, !dbg !1029
  store i32 9, i32* %5, align 4, !dbg !1029
  store i32 -1, i32* %0, align 4, !dbg !1030
  br label %bb6, !dbg !1030

bb1:                                              ; preds = %entry
  %6 = load %struct.exe_file_t** %f, align 8, !dbg !1031
  %7 = getelementptr inbounds %struct.exe_file_t* %6, i32 0, i32 3, !dbg !1031
  %8 = load %struct.exe_disk_file_t** %7, align 8, !dbg !1031
  %9 = icmp ne %struct.exe_disk_file_t* %8, null, !dbg !1031
  br i1 %9, label %bb2, label %bb3, !dbg !1031

bb2:                                              ; preds = %bb1
  store i32 0, i32* %0, align 4, !dbg !1032
  br label %bb6, !dbg !1032

bb3:                                              ; preds = %bb1
  call void @llvm.dbg.declare(metadata !{i32* %r}, metadata !1033), !dbg !1035
  %10 = load %struct.exe_file_t** %f, align 8, !dbg !1035
  %11 = getelementptr inbounds %struct.exe_file_t* %10, i32 0, i32 0, !dbg !1035
  %12 = load i32* %11, align 8, !dbg !1035
  %13 = call i64 (i64, ...)* @syscall(i64 74, i32 %12) nounwind, !dbg !1035
  %14 = trunc i64 %13 to i32, !dbg !1035
  store i32 %14, i32* %r, align 4, !dbg !1035
  %15 = load i32* %r, align 4, !dbg !1036
  %16 = icmp eq i32 %15, -1, !dbg !1036
  br i1 %16, label %bb4, label %bb5, !dbg !1036

bb4:                                              ; preds = %bb3
  %17 = call i32* @__errno_location() nounwind readnone, !dbg !1037
  %18 = call i32 @klee_get_errno() nounwind, !dbg !1037
  store i32 %18, i32* %17, align 4, !dbg !1037
  br label %bb5, !dbg !1037

bb5:                                              ; preds = %bb4, %bb3
  %19 = load i32* %r, align 4, !dbg !1038
  store i32 %19, i32* %0, align 4, !dbg !1038
  br label %bb6, !dbg !1038

bb6:                                              ; preds = %bb5, %bb2, %bb
  %20 = load i32* %0, align 4, !dbg !1030
  store i32 %20, i32* %retval, align 4, !dbg !1030
  br label %return, !dbg !1030

return:                                           ; preds = %bb6
  %retval7 = load i32* %retval, !dbg !1030
  ret i32 %retval7, !dbg !1030
}

define i32 @dup2(i32 %oldfd, i32 %newfd) nounwind {
entry:
  %oldfd_addr = alloca i32, align 4
  %newfd_addr = alloca i32, align 4
  %retval = alloca i32
  %0 = alloca i32
  %f = alloca %struct.exe_file_t*
  %f2 = alloca %struct.exe_file_t*
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i32* %oldfd_addr}, metadata !1039), !dbg !1040
  store i32 %oldfd, i32* %oldfd_addr
  call void @llvm.dbg.declare(metadata !{i32* %newfd_addr}, metadata !1041), !dbg !1040
  store i32 %newfd, i32* %newfd_addr
  call void @llvm.dbg.declare(metadata !{%struct.exe_file_t** %f}, metadata !1042), !dbg !1044
  %1 = load i32* %oldfd_addr, align 4, !dbg !1044
  %2 = call %struct.exe_file_t* @__get_file(i32 %1) nounwind, !dbg !1044
  store %struct.exe_file_t* %2, %struct.exe_file_t** %f, align 8, !dbg !1044
  %3 = load %struct.exe_file_t** %f, align 8, !dbg !1045
  %4 = icmp eq %struct.exe_file_t* %3, null, !dbg !1045
  br i1 %4, label %bb2, label %bb, !dbg !1045

bb:                                               ; preds = %entry
  %5 = load i32* %newfd_addr, align 4, !dbg !1045
  %6 = icmp slt i32 %5, 0, !dbg !1045
  br i1 %6, label %bb2, label %bb1, !dbg !1045

bb1:                                              ; preds = %bb
  %7 = load i32* %newfd_addr, align 4, !dbg !1045
  %8 = icmp sgt i32 %7, 31, !dbg !1045
  br i1 %8, label %bb2, label %bb3, !dbg !1045

bb2:                                              ; preds = %bb1, %bb, %entry
  %9 = call i32* @__errno_location() nounwind readnone, !dbg !1046
  store i32 9, i32* %9, align 4, !dbg !1046
  store i32 -1, i32* %0, align 4, !dbg !1047
  br label %bb6, !dbg !1047

bb3:                                              ; preds = %bb1
  call void @llvm.dbg.declare(metadata !{%struct.exe_file_t** %f2}, metadata !1048), !dbg !1050
  %10 = load i32* %newfd_addr, align 4, !dbg !1050
  %11 = sext i32 %10 to i64, !dbg !1050
  %12 = getelementptr inbounds [32 x %struct.exe_file_t]* getelementptr inbounds (%struct.exe_sym_env_t* @__exe_env, i64 0, i32 0), i64 0, i64 %11, !dbg !1050
  store %struct.exe_file_t* %12, %struct.exe_file_t** %f2, align 8, !dbg !1050
  %13 = load %struct.exe_file_t** %f2, align 8, !dbg !1051
  %14 = getelementptr inbounds %struct.exe_file_t* %13, i32 0, i32 1, !dbg !1051
  %15 = load i32* %14, align 4, !dbg !1051
  %16 = and i32 %15, 1, !dbg !1051
  %17 = trunc i32 %16 to i8, !dbg !1051
  %toBool = icmp ne i8 %17, 0, !dbg !1051
  br i1 %toBool, label %bb4, label %bb5, !dbg !1051

bb4:                                              ; preds = %bb3
  %18 = load i32* %newfd_addr, align 4, !dbg !1051
  %19 = call i32 @close(i32 %18) nounwind, !dbg !1051
  br label %bb5, !dbg !1051

bb5:                                              ; preds = %bb4, %bb3
  %20 = load %struct.exe_file_t** %f2, align 8, !dbg !1052
  %21 = load %struct.exe_file_t** %f, align 8, !dbg !1052
  %22 = getelementptr inbounds %struct.exe_file_t* %20, i32 0, i32 0, !dbg !1052
  %23 = getelementptr inbounds %struct.exe_file_t* %21, i32 0, i32 0, !dbg !1052
  %24 = load i32* %23, align 8, !dbg !1052
  store i32 %24, i32* %22, align 8, !dbg !1052
  %25 = getelementptr inbounds %struct.exe_file_t* %20, i32 0, i32 1, !dbg !1052
  %26 = getelementptr inbounds %struct.exe_file_t* %21, i32 0, i32 1, !dbg !1052
  %27 = load i32* %26, align 4, !dbg !1052
  store i32 %27, i32* %25, align 4, !dbg !1052
  %28 = getelementptr inbounds %struct.exe_file_t* %20, i32 0, i32 2, !dbg !1052
  %29 = getelementptr inbounds %struct.exe_file_t* %21, i32 0, i32 2, !dbg !1052
  %30 = load i64* %29, align 8, !dbg !1052
  store i64 %30, i64* %28, align 8, !dbg !1052
  %31 = getelementptr inbounds %struct.exe_file_t* %20, i32 0, i32 3, !dbg !1052
  %32 = getelementptr inbounds %struct.exe_file_t* %21, i32 0, i32 3, !dbg !1052
  %33 = load %struct.exe_disk_file_t** %32, align 8, !dbg !1052
  store %struct.exe_disk_file_t* %33, %struct.exe_disk_file_t** %31, align 8, !dbg !1052
  %34 = load %struct.exe_file_t** %f2, align 8, !dbg !1053
  %35 = getelementptr inbounds %struct.exe_file_t* %34, i32 0, i32 1, !dbg !1053
  %36 = load i32* %35, align 4, !dbg !1053
  %37 = and i32 %36, -3, !dbg !1053
  %38 = load %struct.exe_file_t** %f2, align 8, !dbg !1053
  %39 = getelementptr inbounds %struct.exe_file_t* %38, i32 0, i32 1, !dbg !1053
  store i32 %37, i32* %39, align 4, !dbg !1053
  %40 = load i32* %newfd_addr, align 4, !dbg !1054
  store i32 %40, i32* %0, align 4, !dbg !1054
  br label %bb6, !dbg !1054

bb6:                                              ; preds = %bb5, %bb2
  %41 = load i32* %0, align 4, !dbg !1047
  store i32 %41, i32* %retval, align 4, !dbg !1047
  br label %return, !dbg !1047

return:                                           ; preds = %bb6
  %retval7 = load i32* %retval, !dbg !1047
  ret i32 %retval7, !dbg !1047
}

define i32 @dup(i32 %oldfd) nounwind {
entry:
  %oldfd_addr = alloca i32, align 4
  %retval = alloca i32
  %0 = alloca i32
  %f = alloca %struct.exe_file_t*
  %fd = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i32* %oldfd_addr}, metadata !1055), !dbg !1056
  store i32 %oldfd, i32* %oldfd_addr
  call void @llvm.dbg.declare(metadata !{%struct.exe_file_t** %f}, metadata !1057), !dbg !1059
  %1 = load i32* %oldfd_addr, align 4, !dbg !1059
  %2 = call %struct.exe_file_t* @__get_file(i32 %1) nounwind, !dbg !1059
  store %struct.exe_file_t* %2, %struct.exe_file_t** %f, align 8, !dbg !1059
  %3 = load %struct.exe_file_t** %f, align 8, !dbg !1060
  %4 = icmp eq %struct.exe_file_t* %3, null, !dbg !1060
  br i1 %4, label %bb, label %bb1, !dbg !1060

bb:                                               ; preds = %entry
  %5 = call i32* @__errno_location() nounwind readnone, !dbg !1061
  store i32 9, i32* %5, align 4, !dbg !1061
  store i32 -1, i32* %0, align 4, !dbg !1062
  br label %bb8, !dbg !1062

bb1:                                              ; preds = %entry
  call void @llvm.dbg.declare(metadata !{i32* %fd}, metadata !1063), !dbg !1065
  store i32 0, i32* %fd, align 4, !dbg !1066
  br label %bb4, !dbg !1066

bb2:                                              ; preds = %bb4
  %6 = load i32* %fd, align 4, !dbg !1067
  %7 = sext i32 %6 to i64, !dbg !1067
  %8 = getelementptr inbounds [32 x %struct.exe_file_t]* getelementptr inbounds (%struct.exe_sym_env_t* @__exe_env, i64 0, i32 0), i64 0, i64 %7, !dbg !1067
  %9 = getelementptr inbounds %struct.exe_file_t* %8, i32 0, i32 1, !dbg !1067
  %10 = load i32* %9, align 4, !dbg !1067
  %11 = and i32 %10, 1, !dbg !1067
  %12 = icmp eq i32 %11, 0, !dbg !1067
  br i1 %12, label %bb5, label %bb3, !dbg !1067

bb3:                                              ; preds = %bb2
  %13 = load i32* %fd, align 4, !dbg !1066
  %14 = add nsw i32 %13, 1, !dbg !1066
  store i32 %14, i32* %fd, align 4, !dbg !1066
  br label %bb4, !dbg !1066

bb4:                                              ; preds = %bb3, %bb1
  %15 = load i32* %fd, align 4, !dbg !1066
  %16 = icmp sle i32 %15, 31, !dbg !1066
  br i1 %16, label %bb2, label %bb5, !dbg !1066

bb5:                                              ; preds = %bb4, %bb2
  %17 = load i32* %fd, align 4, !dbg !1068
  %18 = icmp eq i32 %17, 32, !dbg !1068
  br i1 %18, label %bb6, label %bb7, !dbg !1068

bb6:                                              ; preds = %bb5
  %19 = call i32* @__errno_location() nounwind readnone, !dbg !1069
  store i32 24, i32* %19, align 4, !dbg !1069
  store i32 -1, i32* %0, align 4, !dbg !1070
  br label %bb8, !dbg !1070

bb7:                                              ; preds = %bb5
  %20 = load i32* %oldfd_addr, align 4, !dbg !1071
  %21 = load i32* %fd, align 4, !dbg !1071
  %22 = call i32 @dup2(i32 %20, i32 %21) nounwind, !dbg !1071
  store i32 %22, i32* %0, align 4, !dbg !1071
  br label %bb8, !dbg !1071

bb8:                                              ; preds = %bb7, %bb6, %bb
  %23 = load i32* %0, align 4, !dbg !1062
  store i32 %23, i32* %retval, align 4, !dbg !1062
  br label %return, !dbg !1062

return:                                           ; preds = %bb8
  %retval9 = load i32* %retval, !dbg !1062
  ret i32 %retval9, !dbg !1062
}

define i32 @rmdir(i8* %pathname) nounwind {
entry:
  %pathname_addr = alloca i8*, align 8
  %retval = alloca i32
  %0 = alloca i32
  %dfile = alloca %struct.exe_disk_file_t*
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i8** %pathname_addr}, metadata !1072), !dbg !1073
  store i8* %pathname, i8** %pathname_addr
  call void @llvm.dbg.declare(metadata !{%struct.exe_disk_file_t** %dfile}, metadata !1074), !dbg !1076
  %1 = load i8** %pathname_addr, align 8, !dbg !1076
  %2 = call %struct.exe_disk_file_t* @__get_sym_file(i8* %1) nounwind, !dbg !1076
  store %struct.exe_disk_file_t* %2, %struct.exe_disk_file_t** %dfile, align 8, !dbg !1076
  %3 = load %struct.exe_disk_file_t** %dfile, align 8, !dbg !1077
  %4 = icmp ne %struct.exe_disk_file_t* %3, null, !dbg !1077
  br i1 %4, label %bb, label %bb3, !dbg !1077

bb:                                               ; preds = %entry
  %5 = load %struct.exe_disk_file_t** %dfile, align 8, !dbg !1078
  %6 = getelementptr inbounds %struct.exe_disk_file_t* %5, i32 0, i32 2, !dbg !1078
  %7 = load %struct.stat** %6, align 8, !dbg !1078
  %8 = getelementptr inbounds %struct.stat* %7, i32 0, i32 3, !dbg !1078
  %9 = load i32* %8, align 8, !dbg !1078
  %10 = and i32 %9, 61440, !dbg !1078
  %11 = icmp eq i32 %10, 16384, !dbg !1078
  br i1 %11, label %bb1, label %bb2, !dbg !1078

bb1:                                              ; preds = %bb
  %12 = load %struct.exe_disk_file_t** %dfile, align 8, !dbg !1079
  %13 = getelementptr inbounds %struct.exe_disk_file_t* %12, i32 0, i32 2, !dbg !1079
  %14 = load %struct.stat** %13, align 8, !dbg !1079
  %15 = getelementptr inbounds %struct.stat* %14, i32 0, i32 1, !dbg !1079
  store i64 0, i64* %15, align 8, !dbg !1079
  store i32 0, i32* %0, align 4, !dbg !1080
  br label %bb4, !dbg !1080

bb2:                                              ; preds = %bb
  %16 = call i32* @__errno_location() nounwind readnone, !dbg !1081
  store i32 20, i32* %16, align 4, !dbg !1081
  store i32 -1, i32* %0, align 4, !dbg !1082
  br label %bb4, !dbg !1082

bb3:                                              ; preds = %entry
  call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str21, i64 0, i64 0)) nounwind, !dbg !1083
  %17 = call i32* @__errno_location() nounwind readnone, !dbg !1084
  store i32 1, i32* %17, align 4, !dbg !1084
  store i32 -1, i32* %0, align 4, !dbg !1085
  br label %bb4, !dbg !1085

bb4:                                              ; preds = %bb3, %bb2, %bb1
  %18 = load i32* %0, align 4, !dbg !1080
  store i32 %18, i32* %retval, align 4, !dbg !1080
  br label %return, !dbg !1080

return:                                           ; preds = %bb4
  %retval5 = load i32* %retval, !dbg !1080
  ret i32 %retval5, !dbg !1080
}

define i32 @unlink(i8* %pathname) nounwind {
entry:
  %pathname_addr = alloca i8*, align 8
  %retval = alloca i32
  %0 = alloca i32
  %dfile = alloca %struct.exe_disk_file_t*
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i8** %pathname_addr}, metadata !1086), !dbg !1087
  store i8* %pathname, i8** %pathname_addr
  call void @llvm.dbg.declare(metadata !{%struct.exe_disk_file_t** %dfile}, metadata !1088), !dbg !1090
  %1 = load i8** %pathname_addr, align 8, !dbg !1090
  %2 = call %struct.exe_disk_file_t* @__get_sym_file(i8* %1) nounwind, !dbg !1090
  store %struct.exe_disk_file_t* %2, %struct.exe_disk_file_t** %dfile, align 8, !dbg !1090
  %3 = load %struct.exe_disk_file_t** %dfile, align 8, !dbg !1091
  %4 = icmp ne %struct.exe_disk_file_t* %3, null, !dbg !1091
  br i1 %4, label %bb, label %bb5, !dbg !1091

bb:                                               ; preds = %entry
  %5 = load %struct.exe_disk_file_t** %dfile, align 8, !dbg !1092
  %6 = getelementptr inbounds %struct.exe_disk_file_t* %5, i32 0, i32 2, !dbg !1092
  %7 = load %struct.stat** %6, align 8, !dbg !1092
  %8 = getelementptr inbounds %struct.stat* %7, i32 0, i32 3, !dbg !1092
  %9 = load i32* %8, align 8, !dbg !1092
  %10 = and i32 %9, 61440, !dbg !1092
  %11 = icmp eq i32 %10, 32768, !dbg !1092
  br i1 %11, label %bb1, label %bb2, !dbg !1092

bb1:                                              ; preds = %bb
  %12 = load %struct.exe_disk_file_t** %dfile, align 8, !dbg !1093
  %13 = getelementptr inbounds %struct.exe_disk_file_t* %12, i32 0, i32 2, !dbg !1093
  %14 = load %struct.stat** %13, align 8, !dbg !1093
  %15 = getelementptr inbounds %struct.stat* %14, i32 0, i32 1, !dbg !1093
  store i64 0, i64* %15, align 8, !dbg !1093
  store i32 0, i32* %0, align 4, !dbg !1094
  br label %bb6, !dbg !1094

bb2:                                              ; preds = %bb
  %16 = load %struct.exe_disk_file_t** %dfile, align 8, !dbg !1095
  %17 = getelementptr inbounds %struct.exe_disk_file_t* %16, i32 0, i32 2, !dbg !1095
  %18 = load %struct.stat** %17, align 8, !dbg !1095
  %19 = getelementptr inbounds %struct.stat* %18, i32 0, i32 3, !dbg !1095
  %20 = load i32* %19, align 8, !dbg !1095
  %21 = and i32 %20, 61440, !dbg !1095
  %22 = icmp eq i32 %21, 16384, !dbg !1095
  br i1 %22, label %bb3, label %bb4, !dbg !1095

bb3:                                              ; preds = %bb2
  %23 = call i32* @__errno_location() nounwind readnone, !dbg !1096
  store i32 21, i32* %23, align 4, !dbg !1096
  store i32 -1, i32* %0, align 4, !dbg !1097
  br label %bb6, !dbg !1097

bb4:                                              ; preds = %bb2
  %24 = call i32* @__errno_location() nounwind readnone, !dbg !1098
  store i32 1, i32* %24, align 4, !dbg !1098
  store i32 -1, i32* %0, align 4, !dbg !1099
  br label %bb6, !dbg !1099

bb5:                                              ; preds = %entry
  call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str21, i64 0, i64 0)) nounwind, !dbg !1100
  %25 = call i32* @__errno_location() nounwind readnone, !dbg !1101
  store i32 1, i32* %25, align 4, !dbg !1101
  store i32 -1, i32* %0, align 4, !dbg !1102
  br label %bb6, !dbg !1102

bb6:                                              ; preds = %bb5, %bb4, %bb3, %bb1
  %26 = load i32* %0, align 4, !dbg !1094
  store i32 %26, i32* %retval, align 4, !dbg !1094
  br label %return, !dbg !1094

return:                                           ; preds = %bb6
  %retval7 = load i32* %retval, !dbg !1094
  ret i32 %retval7, !dbg !1094
}

define i64 @readlink(i8* %path, i8* %buf, i64 %bufsize) nounwind {
entry:
  %path_addr = alloca i8*, align 8
  %buf_addr = alloca i8*, align 8
  %bufsize_addr = alloca i64, align 8
  %retval = alloca i64
  %0 = alloca i64
  %dfile = alloca %struct.exe_disk_file_t*
  %r = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i8** %path_addr}, metadata !1103), !dbg !1104
  store i8* %path, i8** %path_addr
  call void @llvm.dbg.declare(metadata !{i8** %buf_addr}, metadata !1105), !dbg !1104
  store i8* %buf, i8** %buf_addr
  call void @llvm.dbg.declare(metadata !{i64* %bufsize_addr}, metadata !1106), !dbg !1104
  store i64 %bufsize, i64* %bufsize_addr
  call void @llvm.dbg.declare(metadata !{%struct.exe_disk_file_t** %dfile}, metadata !1107), !dbg !1109
  %1 = load i8** %path_addr, align 8, !dbg !1109
  %2 = call %struct.exe_disk_file_t* @__get_sym_file(i8* %1) nounwind, !dbg !1109
  store %struct.exe_disk_file_t* %2, %struct.exe_disk_file_t** %dfile, align 8, !dbg !1109
  %3 = load %struct.exe_disk_file_t** %dfile, align 8, !dbg !1110
  %4 = icmp ne %struct.exe_disk_file_t* %3, null, !dbg !1110
  br i1 %4, label %bb, label %bb12, !dbg !1110

bb:                                               ; preds = %entry
  %5 = load %struct.exe_disk_file_t** %dfile, align 8, !dbg !1111
  %6 = getelementptr inbounds %struct.exe_disk_file_t* %5, i32 0, i32 2, !dbg !1111
  %7 = load %struct.stat** %6, align 8, !dbg !1111
  %8 = getelementptr inbounds %struct.stat* %7, i32 0, i32 3, !dbg !1111
  %9 = load i32* %8, align 8, !dbg !1111
  %10 = and i32 %9, 61440, !dbg !1111
  %11 = icmp eq i32 %10, 40960, !dbg !1111
  br i1 %11, label %bb1, label %bb11, !dbg !1111

bb1:                                              ; preds = %bb
  %12 = load i8** %path_addr, align 8, !dbg !1112
  %13 = getelementptr inbounds i8* %12, i64 0, !dbg !1112
  %14 = load i8* %13, align 1, !dbg !1112
  %15 = load i8** %buf_addr, align 8, !dbg !1112
  %16 = getelementptr inbounds i8* %15, i64 0, !dbg !1112
  store i8 %14, i8* %16, align 1, !dbg !1112
  %17 = load i64* %bufsize_addr, align 8, !dbg !1113
  %18 = icmp ugt i64 %17, 1, !dbg !1113
  br i1 %18, label %bb2, label %bb3, !dbg !1113

bb2:                                              ; preds = %bb1
  %19 = load i8** %buf_addr, align 8, !dbg !1113
  %20 = getelementptr inbounds i8* %19, i64 1, !dbg !1113
  store i8 46, i8* %20, align 1, !dbg !1113
  br label %bb3, !dbg !1113

bb3:                                              ; preds = %bb2, %bb1
  %21 = load i64* %bufsize_addr, align 8, !dbg !1114
  %22 = icmp ugt i64 %21, 2, !dbg !1114
  br i1 %22, label %bb4, label %bb5, !dbg !1114

bb4:                                              ; preds = %bb3
  %23 = load i8** %buf_addr, align 8, !dbg !1114
  %24 = getelementptr inbounds i8* %23, i64 2, !dbg !1114
  store i8 108, i8* %24, align 1, !dbg !1114
  br label %bb5, !dbg !1114

bb5:                                              ; preds = %bb4, %bb3
  %25 = load i64* %bufsize_addr, align 8, !dbg !1115
  %26 = icmp ugt i64 %25, 3, !dbg !1115
  br i1 %26, label %bb6, label %bb7, !dbg !1115

bb6:                                              ; preds = %bb5
  %27 = load i8** %buf_addr, align 8, !dbg !1115
  %28 = getelementptr inbounds i8* %27, i64 3, !dbg !1115
  store i8 110, i8* %28, align 1, !dbg !1115
  br label %bb7, !dbg !1115

bb7:                                              ; preds = %bb6, %bb5
  %29 = load i64* %bufsize_addr, align 8, !dbg !1116
  %30 = icmp ugt i64 %29, 4, !dbg !1116
  br i1 %30, label %bb8, label %bb9, !dbg !1116

bb8:                                              ; preds = %bb7
  %31 = load i8** %buf_addr, align 8, !dbg !1116
  %32 = getelementptr inbounds i8* %31, i64 4, !dbg !1116
  store i8 107, i8* %32, align 1, !dbg !1116
  br label %bb9, !dbg !1116

bb9:                                              ; preds = %bb8, %bb7
  %33 = load i64* %bufsize_addr, align 8, !dbg !1117
  %34 = icmp ule i64 %33, 5, !dbg !1117
  %min = select i1 %34, i64 %33, i64 5, !dbg !1117
  store i64 %min, i64* %0, align 8, !dbg !1117
  br label %bb15, !dbg !1117

bb11:                                             ; preds = %bb
  %35 = call i32* @__errno_location() nounwind readnone, !dbg !1118
  store i32 22, i32* %35, align 4, !dbg !1118
  store i64 -1, i64* %0, align 8, !dbg !1119
  br label %bb15, !dbg !1119

bb12:                                             ; preds = %entry
  call void @llvm.dbg.declare(metadata !{i32* %r}, metadata !1120), !dbg !1122
  %36 = load i8** %path_addr, align 8, !dbg !1122
  %37 = load i8** %buf_addr, align 8, !dbg !1122
  %38 = load i64* %bufsize_addr, align 8, !dbg !1122
  %39 = call i64 (i64, ...)* @syscall(i64 89, i8* %36, i8* %37, i64 %38) nounwind, !dbg !1122
  %40 = trunc i64 %39 to i32, !dbg !1122
  store i32 %40, i32* %r, align 4, !dbg !1122
  %41 = load i32* %r, align 4, !dbg !1123
  %42 = icmp eq i32 %41, -1, !dbg !1123
  br i1 %42, label %bb13, label %bb14, !dbg !1123

bb13:                                             ; preds = %bb12
  %43 = call i32* @__errno_location() nounwind readnone, !dbg !1124
  %44 = call i32 @klee_get_errno() nounwind, !dbg !1124
  store i32 %44, i32* %43, align 4, !dbg !1124
  br label %bb14, !dbg !1124

bb14:                                             ; preds = %bb13, %bb12
  %45 = load i32* %r, align 4, !dbg !1125
  %46 = sext i32 %45 to i64, !dbg !1125
  store i64 %46, i64* %0, align 8, !dbg !1125
  br label %bb15, !dbg !1125

bb15:                                             ; preds = %bb14, %bb11, %bb9
  %47 = load i64* %0, align 8, !dbg !1117
  store i64 %47, i64* %retval, align 8, !dbg !1117
  br label %return, !dbg !1117

return:                                           ; preds = %bb15
  %retval16 = load i64* %retval, !dbg !1117
  ret i64 %retval16, !dbg !1117
}

define i32 @select(i32 %nfds, %struct.fd_set* %read, %struct.fd_set* %write, %struct.fd_set* %except, %struct.timespec* %timeout) nounwind {
entry:
  %nfds_addr = alloca i32, align 4
  %read_addr = alloca %struct.fd_set*, align 8
  %write_addr = alloca %struct.fd_set*, align 8
  %except_addr = alloca %struct.fd_set*, align 8
  %timeout_addr = alloca %struct.timespec*, align 8
  %retval = alloca i32
  %0 = alloca i32
  %1 = alloca i32
  %2 = alloca i32
  %3 = alloca i32
  %4 = alloca i32
  %5 = alloca i32
  %6 = alloca i32
  %7 = alloca i32
  %8 = alloca i32
  %9 = alloca i32
  %in_read = alloca %struct.fd_set
  %in_write = alloca %struct.fd_set
  %in_except = alloca %struct.fd_set
  %os_read = alloca %struct.fd_set
  %os_write = alloca %struct.fd_set
  %os_except = alloca %struct.fd_set
  %i = alloca i32
  %count = alloca i32
  %os_nfds = alloca i32
  %f = alloca %struct.exe_file_t*
  %tv = alloca %struct.timespec
  %r = alloca i32
  %f48 = alloca %struct.exe_file_t*
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i32* %nfds_addr}, metadata !1126), !dbg !1127
  store i32 %nfds, i32* %nfds_addr
  call void @llvm.dbg.declare(metadata !{%struct.fd_set** %read_addr}, metadata !1128), !dbg !1127
  store %struct.fd_set* %read, %struct.fd_set** %read_addr
  call void @llvm.dbg.declare(metadata !{%struct.fd_set** %write_addr}, metadata !1129), !dbg !1127
  store %struct.fd_set* %write, %struct.fd_set** %write_addr
  call void @llvm.dbg.declare(metadata !{%struct.fd_set** %except_addr}, metadata !1130), !dbg !1131
  store %struct.fd_set* %except, %struct.fd_set** %except_addr
  call void @llvm.dbg.declare(metadata !{%struct.timespec** %timeout_addr}, metadata !1132), !dbg !1131
  store %struct.timespec* %timeout, %struct.timespec** %timeout_addr
  call void @llvm.dbg.declare(metadata !{%struct.fd_set* %in_read}, metadata !1133), !dbg !1135
  call void @llvm.dbg.declare(metadata !{%struct.fd_set* %in_write}, metadata !1136), !dbg !1135
  call void @llvm.dbg.declare(metadata !{%struct.fd_set* %in_except}, metadata !1137), !dbg !1135
  call void @llvm.dbg.declare(metadata !{%struct.fd_set* %os_read}, metadata !1138), !dbg !1135
  call void @llvm.dbg.declare(metadata !{%struct.fd_set* %os_write}, metadata !1139), !dbg !1135
  call void @llvm.dbg.declare(metadata !{%struct.fd_set* %os_except}, metadata !1140), !dbg !1135
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !1141), !dbg !1142
  call void @llvm.dbg.declare(metadata !{i32* %count}, metadata !1143), !dbg !1142
  call void @llvm.dbg.declare(metadata !{i32* %os_nfds}, metadata !1144), !dbg !1142
  store i32 0, i32* %count, align 4, !dbg !1142
  store i32 0, i32* %os_nfds, align 4, !dbg !1142
  %10 = load %struct.fd_set** %read_addr, align 8, !dbg !1145
  %11 = icmp ne %struct.fd_set* %10, null, !dbg !1145
  br i1 %11, label %bb, label %bb2, !dbg !1145

bb:                                               ; preds = %entry
  %12 = load %struct.fd_set** %read_addr, align 8, !dbg !1146
  %in_read1 = bitcast %struct.fd_set* %in_read to i8*, !dbg !1146
  %13 = bitcast %struct.fd_set* %12 to i8*, !dbg !1146
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %in_read1, i8* %13, i64 128, i32 8, i1 false), !dbg !1146
  %14 = load %struct.fd_set** %read_addr, align 8, !dbg !1147
  %15 = bitcast %struct.fd_set* %14 to i8*, !dbg !1147
  call void @llvm.memset.p0i8.i64(i8* %15, i8 0, i64 128, i32 1, i1 false), !dbg !1147
  br label %bb4, !dbg !1147

bb2:                                              ; preds = %entry
  %in_read3 = bitcast %struct.fd_set* %in_read to i8*, !dbg !1148
  call void @llvm.memset.p0i8.i64(i8* %in_read3, i8 0, i64 128, i32 1, i1 false), !dbg !1148
  br label %bb4, !dbg !1148

bb4:                                              ; preds = %bb2, %bb
  %16 = load %struct.fd_set** %write_addr, align 8, !dbg !1149
  %17 = icmp ne %struct.fd_set* %16, null, !dbg !1149
  br i1 %17, label %bb5, label %bb7, !dbg !1149

bb5:                                              ; preds = %bb4
  %18 = load %struct.fd_set** %write_addr, align 8, !dbg !1150
  %in_write6 = bitcast %struct.fd_set* %in_write to i8*, !dbg !1150
  %19 = bitcast %struct.fd_set* %18 to i8*, !dbg !1150
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %in_write6, i8* %19, i64 128, i32 8, i1 false), !dbg !1150
  %20 = load %struct.fd_set** %write_addr, align 8, !dbg !1151
  %21 = bitcast %struct.fd_set* %20 to i8*, !dbg !1151
  call void @llvm.memset.p0i8.i64(i8* %21, i8 0, i64 128, i32 1, i1 false), !dbg !1151
  br label %bb9, !dbg !1151

bb7:                                              ; preds = %bb4
  %in_write8 = bitcast %struct.fd_set* %in_write to i8*, !dbg !1152
  call void @llvm.memset.p0i8.i64(i8* %in_write8, i8 0, i64 128, i32 1, i1 false), !dbg !1152
  br label %bb9, !dbg !1152

bb9:                                              ; preds = %bb7, %bb5
  %22 = load %struct.fd_set** %except_addr, align 8, !dbg !1153
  %23 = icmp ne %struct.fd_set* %22, null, !dbg !1153
  br i1 %23, label %bb10, label %bb12, !dbg !1153

bb10:                                             ; preds = %bb9
  %24 = load %struct.fd_set** %except_addr, align 8, !dbg !1154
  %in_except11 = bitcast %struct.fd_set* %in_except to i8*, !dbg !1154
  %25 = bitcast %struct.fd_set* %24 to i8*, !dbg !1154
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %in_except11, i8* %25, i64 128, i32 8, i1 false), !dbg !1154
  %26 = load %struct.fd_set** %except_addr, align 8, !dbg !1155
  %27 = bitcast %struct.fd_set* %26 to i8*, !dbg !1155
  call void @llvm.memset.p0i8.i64(i8* %27, i8 0, i64 128, i32 1, i1 false), !dbg !1155
  br label %bb14, !dbg !1155

bb12:                                             ; preds = %bb9
  %in_except13 = bitcast %struct.fd_set* %in_except to i8*, !dbg !1156
  call void @llvm.memset.p0i8.i64(i8* %in_except13, i8 0, i64 128, i32 1, i1 false), !dbg !1156
  br label %bb14, !dbg !1156

bb14:                                             ; preds = %bb12, %bb10
  %os_read15 = bitcast %struct.fd_set* %os_read to i8*, !dbg !1157
  call void @llvm.memset.p0i8.i64(i8* %os_read15, i8 0, i64 128, i32 1, i1 false), !dbg !1157
  %os_write16 = bitcast %struct.fd_set* %os_write to i8*, !dbg !1158
  call void @llvm.memset.p0i8.i64(i8* %os_write16, i8 0, i64 128, i32 1, i1 false), !dbg !1158
  %os_except17 = bitcast %struct.fd_set* %os_except to i8*, !dbg !1159
  call void @llvm.memset.p0i8.i64(i8* %os_except17, i8 0, i64 128, i32 1, i1 false), !dbg !1159
  store i32 0, i32* %i, align 4, !dbg !1160
  br label %bb40, !dbg !1160

bb18:                                             ; preds = %bb40
  %28 = load i32* %i, align 4, !dbg !1161
  %29 = sdiv i32 %28, 64, !dbg !1161
  %30 = getelementptr inbounds %struct.fd_set* %in_read, i32 0, i32 0, !dbg !1161
  %31 = sext i32 %29 to i64, !dbg !1161
  %32 = getelementptr inbounds [16 x i64]* %30, i64 0, i64 %31, !dbg !1161
  %33 = load i64* %32, align 8, !dbg !1161
  %34 = load i32* %i, align 4, !dbg !1161
  %35 = srem i32 %34, 64, !dbg !1161
  %36 = shl i32 1, %35, !dbg !1161
  %37 = sext i32 %36 to i64, !dbg !1161
  %38 = and i64 %33, %37, !dbg !1161
  %39 = icmp ne i64 %38, 0, !dbg !1161
  br i1 %39, label %bb21, label %bb19, !dbg !1161

bb19:                                             ; preds = %bb18
  %40 = load i32* %i, align 4, !dbg !1161
  %41 = sdiv i32 %40, 64, !dbg !1161
  %42 = getelementptr inbounds %struct.fd_set* %in_write, i32 0, i32 0, !dbg !1161
  %43 = sext i32 %41 to i64, !dbg !1161
  %44 = getelementptr inbounds [16 x i64]* %42, i64 0, i64 %43, !dbg !1161
  %45 = load i64* %44, align 8, !dbg !1161
  %46 = load i32* %i, align 4, !dbg !1161
  %47 = srem i32 %46, 64, !dbg !1161
  %48 = shl i32 1, %47, !dbg !1161
  %49 = sext i32 %48 to i64, !dbg !1161
  %50 = and i64 %45, %49, !dbg !1161
  %51 = icmp ne i64 %50, 0, !dbg !1161
  br i1 %51, label %bb21, label %bb20, !dbg !1161

bb20:                                             ; preds = %bb19
  %52 = load i32* %i, align 4, !dbg !1161
  %53 = sdiv i32 %52, 64, !dbg !1161
  %54 = getelementptr inbounds %struct.fd_set* %in_except, i32 0, i32 0, !dbg !1161
  %55 = sext i32 %53 to i64, !dbg !1161
  %56 = getelementptr inbounds [16 x i64]* %54, i64 0, i64 %55, !dbg !1161
  %57 = load i64* %56, align 8, !dbg !1161
  %58 = load i32* %i, align 4, !dbg !1161
  %59 = srem i32 %58, 64, !dbg !1161
  %60 = shl i32 1, %59, !dbg !1161
  %61 = sext i32 %60 to i64, !dbg !1161
  %62 = and i64 %57, %61, !dbg !1161
  %63 = icmp ne i64 %62, 0, !dbg !1161
  br i1 %63, label %bb21, label %bb39, !dbg !1161

bb21:                                             ; preds = %bb20, %bb19, %bb18
  call void @llvm.dbg.declare(metadata !{%struct.exe_file_t** %f}, metadata !1162), !dbg !1164
  %64 = load i32* %i, align 4, !dbg !1164
  %65 = call %struct.exe_file_t* @__get_file(i32 %64) nounwind, !dbg !1164
  store %struct.exe_file_t* %65, %struct.exe_file_t** %f, align 8, !dbg !1164
  %66 = load %struct.exe_file_t** %f, align 8, !dbg !1165
  %67 = icmp eq %struct.exe_file_t* %66, null, !dbg !1165
  br i1 %67, label %bb22, label %bb23, !dbg !1165

bb22:                                             ; preds = %bb21
  %68 = call i32* @__errno_location() nounwind readnone, !dbg !1166
  store i32 9, i32* %68, align 4, !dbg !1166
  store i32 -1, i32* %9, align 4, !dbg !1167
  br label %bb62, !dbg !1167

bb23:                                             ; preds = %bb21
  %69 = load %struct.exe_file_t** %f, align 8, !dbg !1168
  %70 = getelementptr inbounds %struct.exe_file_t* %69, i32 0, i32 3, !dbg !1168
  %71 = load %struct.exe_disk_file_t** %70, align 8, !dbg !1168
  %72 = icmp ne %struct.exe_disk_file_t* %71, null, !dbg !1168
  br i1 %72, label %bb24, label %bb31, !dbg !1168

bb24:                                             ; preds = %bb23
  %73 = load i32* %i, align 4, !dbg !1169
  %74 = sdiv i32 %73, 64, !dbg !1169
  %75 = getelementptr inbounds %struct.fd_set* %in_read, i32 0, i32 0, !dbg !1169
  %76 = sext i32 %74 to i64, !dbg !1169
  %77 = getelementptr inbounds [16 x i64]* %75, i64 0, i64 %76, !dbg !1169
  %78 = load i64* %77, align 8, !dbg !1169
  %79 = load i32* %i, align 4, !dbg !1169
  %80 = srem i32 %79, 64, !dbg !1169
  %81 = shl i32 1, %80, !dbg !1169
  %82 = sext i32 %81 to i64, !dbg !1169
  %83 = and i64 %78, %82, !dbg !1169
  %84 = icmp ne i64 %83, 0, !dbg !1169
  br i1 %84, label %bb25, label %bb26, !dbg !1169

bb25:                                             ; preds = %bb24
  %85 = load i32* %i, align 4, !dbg !1169
  %86 = sdiv i32 %85, 64, !dbg !1169
  store i32 %86, i32* %8, align 4, !dbg !1169
  %87 = load i32* %8, align 4, !dbg !1169
  %88 = load i32* %8, align 4, !dbg !1169
  %89 = load %struct.fd_set** %read_addr, align 8, !dbg !1169
  %90 = getelementptr inbounds %struct.fd_set* %89, i32 0, i32 0, !dbg !1169
  %91 = sext i32 %88 to i64, !dbg !1169
  %92 = getelementptr inbounds [16 x i64]* %90, i64 0, i64 %91, !dbg !1169
  %93 = load i64* %92, align 8, !dbg !1169
  %94 = load i32* %i, align 4, !dbg !1169
  %95 = srem i32 %94, 64, !dbg !1169
  %96 = shl i32 1, %95, !dbg !1169
  %97 = sext i32 %96 to i64, !dbg !1169
  %98 = or i64 %93, %97, !dbg !1169
  %99 = load %struct.fd_set** %read_addr, align 8, !dbg !1169
  %100 = getelementptr inbounds %struct.fd_set* %99, i32 0, i32 0, !dbg !1169
  %101 = sext i32 %87 to i64, !dbg !1169
  %102 = getelementptr inbounds [16 x i64]* %100, i64 0, i64 %101, !dbg !1169
  store i64 %98, i64* %102, align 8, !dbg !1169
  br label %bb26, !dbg !1169

bb26:                                             ; preds = %bb25, %bb24
  %103 = load i32* %i, align 4, !dbg !1170
  %104 = sdiv i32 %103, 64, !dbg !1170
  %105 = getelementptr inbounds %struct.fd_set* %in_write, i32 0, i32 0, !dbg !1170
  %106 = sext i32 %104 to i64, !dbg !1170
  %107 = getelementptr inbounds [16 x i64]* %105, i64 0, i64 %106, !dbg !1170
  %108 = load i64* %107, align 8, !dbg !1170
  %109 = load i32* %i, align 4, !dbg !1170
  %110 = srem i32 %109, 64, !dbg !1170
  %111 = shl i32 1, %110, !dbg !1170
  %112 = sext i32 %111 to i64, !dbg !1170
  %113 = and i64 %108, %112, !dbg !1170
  %114 = icmp ne i64 %113, 0, !dbg !1170
  br i1 %114, label %bb27, label %bb28, !dbg !1170

bb27:                                             ; preds = %bb26
  %115 = load i32* %i, align 4, !dbg !1170
  %116 = sdiv i32 %115, 64, !dbg !1170
  store i32 %116, i32* %7, align 4, !dbg !1170
  %117 = load i32* %7, align 4, !dbg !1170
  %118 = load i32* %7, align 4, !dbg !1170
  %119 = load %struct.fd_set** %write_addr, align 8, !dbg !1170
  %120 = getelementptr inbounds %struct.fd_set* %119, i32 0, i32 0, !dbg !1170
  %121 = sext i32 %118 to i64, !dbg !1170
  %122 = getelementptr inbounds [16 x i64]* %120, i64 0, i64 %121, !dbg !1170
  %123 = load i64* %122, align 8, !dbg !1170
  %124 = load i32* %i, align 4, !dbg !1170
  %125 = srem i32 %124, 64, !dbg !1170
  %126 = shl i32 1, %125, !dbg !1170
  %127 = sext i32 %126 to i64, !dbg !1170
  %128 = or i64 %123, %127, !dbg !1170
  %129 = load %struct.fd_set** %write_addr, align 8, !dbg !1170
  %130 = getelementptr inbounds %struct.fd_set* %129, i32 0, i32 0, !dbg !1170
  %131 = sext i32 %117 to i64, !dbg !1170
  %132 = getelementptr inbounds [16 x i64]* %130, i64 0, i64 %131, !dbg !1170
  store i64 %128, i64* %132, align 8, !dbg !1170
  br label %bb28, !dbg !1170

bb28:                                             ; preds = %bb27, %bb26
  %133 = load i32* %i, align 4, !dbg !1171
  %134 = sdiv i32 %133, 64, !dbg !1171
  %135 = getelementptr inbounds %struct.fd_set* %in_except, i32 0, i32 0, !dbg !1171
  %136 = sext i32 %134 to i64, !dbg !1171
  %137 = getelementptr inbounds [16 x i64]* %135, i64 0, i64 %136, !dbg !1171
  %138 = load i64* %137, align 8, !dbg !1171
  %139 = load i32* %i, align 4, !dbg !1171
  %140 = srem i32 %139, 64, !dbg !1171
  %141 = shl i32 1, %140, !dbg !1171
  %142 = sext i32 %141 to i64, !dbg !1171
  %143 = and i64 %138, %142, !dbg !1171
  %144 = icmp ne i64 %143, 0, !dbg !1171
  br i1 %144, label %bb29, label %bb30, !dbg !1171

bb29:                                             ; preds = %bb28
  %145 = load i32* %i, align 4, !dbg !1171
  %146 = sdiv i32 %145, 64, !dbg !1171
  store i32 %146, i32* %6, align 4, !dbg !1171
  %147 = load i32* %6, align 4, !dbg !1171
  %148 = load i32* %6, align 4, !dbg !1171
  %149 = load %struct.fd_set** %except_addr, align 8, !dbg !1171
  %150 = getelementptr inbounds %struct.fd_set* %149, i32 0, i32 0, !dbg !1171
  %151 = sext i32 %148 to i64, !dbg !1171
  %152 = getelementptr inbounds [16 x i64]* %150, i64 0, i64 %151, !dbg !1171
  %153 = load i64* %152, align 8, !dbg !1171
  %154 = load i32* %i, align 4, !dbg !1171
  %155 = srem i32 %154, 64, !dbg !1171
  %156 = shl i32 1, %155, !dbg !1171
  %157 = sext i32 %156 to i64, !dbg !1171
  %158 = or i64 %153, %157, !dbg !1171
  %159 = load %struct.fd_set** %except_addr, align 8, !dbg !1171
  %160 = getelementptr inbounds %struct.fd_set* %159, i32 0, i32 0, !dbg !1171
  %161 = sext i32 %147 to i64, !dbg !1171
  %162 = getelementptr inbounds [16 x i64]* %160, i64 0, i64 %161, !dbg !1171
  store i64 %158, i64* %162, align 8, !dbg !1171
  br label %bb30, !dbg !1171

bb30:                                             ; preds = %bb29, %bb28
  %163 = load i32* %count, align 4, !dbg !1172
  %164 = add nsw i32 %163, 1, !dbg !1172
  store i32 %164, i32* %count, align 4, !dbg !1172
  br label %bb39, !dbg !1172

bb31:                                             ; preds = %bb23
  %165 = load i32* %i, align 4, !dbg !1173
  %166 = sdiv i32 %165, 64, !dbg !1173
  %167 = getelementptr inbounds %struct.fd_set* %in_read, i32 0, i32 0, !dbg !1173
  %168 = sext i32 %166 to i64, !dbg !1173
  %169 = getelementptr inbounds [16 x i64]* %167, i64 0, i64 %168, !dbg !1173
  %170 = load i64* %169, align 8, !dbg !1173
  %171 = load i32* %i, align 4, !dbg !1173
  %172 = srem i32 %171, 64, !dbg !1173
  %173 = shl i32 1, %172, !dbg !1173
  %174 = sext i32 %173 to i64, !dbg !1173
  %175 = and i64 %170, %174, !dbg !1173
  %176 = icmp ne i64 %175, 0, !dbg !1173
  br i1 %176, label %bb32, label %bb33, !dbg !1173

bb32:                                             ; preds = %bb31
  %177 = load %struct.exe_file_t** %f, align 8, !dbg !1173
  %178 = getelementptr inbounds %struct.exe_file_t* %177, i32 0, i32 0, !dbg !1173
  %179 = load i32* %178, align 8, !dbg !1173
  %180 = sdiv i32 %179, 64, !dbg !1173
  store i32 %180, i32* %5, align 4, !dbg !1173
  %181 = load i32* %5, align 4, !dbg !1173
  %182 = load i32* %5, align 4, !dbg !1173
  %183 = getelementptr inbounds %struct.fd_set* %os_read, i32 0, i32 0, !dbg !1173
  %184 = sext i32 %182 to i64, !dbg !1173
  %185 = getelementptr inbounds [16 x i64]* %183, i64 0, i64 %184, !dbg !1173
  %186 = load i64* %185, align 8, !dbg !1173
  %187 = load %struct.exe_file_t** %f, align 8, !dbg !1173
  %188 = getelementptr inbounds %struct.exe_file_t* %187, i32 0, i32 0, !dbg !1173
  %189 = load i32* %188, align 8, !dbg !1173
  %190 = srem i32 %189, 64, !dbg !1173
  %191 = shl i32 1, %190, !dbg !1173
  %192 = sext i32 %191 to i64, !dbg !1173
  %193 = or i64 %186, %192, !dbg !1173
  %194 = getelementptr inbounds %struct.fd_set* %os_read, i32 0, i32 0, !dbg !1173
  %195 = sext i32 %181 to i64, !dbg !1173
  %196 = getelementptr inbounds [16 x i64]* %194, i64 0, i64 %195, !dbg !1173
  store i64 %193, i64* %196, align 8, !dbg !1173
  br label %bb33, !dbg !1173

bb33:                                             ; preds = %bb32, %bb31
  %197 = load i32* %i, align 4, !dbg !1174
  %198 = sdiv i32 %197, 64, !dbg !1174
  %199 = getelementptr inbounds %struct.fd_set* %in_write, i32 0, i32 0, !dbg !1174
  %200 = sext i32 %198 to i64, !dbg !1174
  %201 = getelementptr inbounds [16 x i64]* %199, i64 0, i64 %200, !dbg !1174
  %202 = load i64* %201, align 8, !dbg !1174
  %203 = load i32* %i, align 4, !dbg !1174
  %204 = srem i32 %203, 64, !dbg !1174
  %205 = shl i32 1, %204, !dbg !1174
  %206 = sext i32 %205 to i64, !dbg !1174
  %207 = and i64 %202, %206, !dbg !1174
  %208 = icmp ne i64 %207, 0, !dbg !1174
  br i1 %208, label %bb34, label %bb35, !dbg !1174

bb34:                                             ; preds = %bb33
  %209 = load %struct.exe_file_t** %f, align 8, !dbg !1174
  %210 = getelementptr inbounds %struct.exe_file_t* %209, i32 0, i32 0, !dbg !1174
  %211 = load i32* %210, align 8, !dbg !1174
  %212 = sdiv i32 %211, 64, !dbg !1174
  store i32 %212, i32* %4, align 4, !dbg !1174
  %213 = load i32* %4, align 4, !dbg !1174
  %214 = load i32* %4, align 4, !dbg !1174
  %215 = getelementptr inbounds %struct.fd_set* %os_write, i32 0, i32 0, !dbg !1174
  %216 = sext i32 %214 to i64, !dbg !1174
  %217 = getelementptr inbounds [16 x i64]* %215, i64 0, i64 %216, !dbg !1174
  %218 = load i64* %217, align 8, !dbg !1174
  %219 = load %struct.exe_file_t** %f, align 8, !dbg !1174
  %220 = getelementptr inbounds %struct.exe_file_t* %219, i32 0, i32 0, !dbg !1174
  %221 = load i32* %220, align 8, !dbg !1174
  %222 = srem i32 %221, 64, !dbg !1174
  %223 = shl i32 1, %222, !dbg !1174
  %224 = sext i32 %223 to i64, !dbg !1174
  %225 = or i64 %218, %224, !dbg !1174
  %226 = getelementptr inbounds %struct.fd_set* %os_write, i32 0, i32 0, !dbg !1174
  %227 = sext i32 %213 to i64, !dbg !1174
  %228 = getelementptr inbounds [16 x i64]* %226, i64 0, i64 %227, !dbg !1174
  store i64 %225, i64* %228, align 8, !dbg !1174
  br label %bb35, !dbg !1174

bb35:                                             ; preds = %bb34, %bb33
  %229 = load i32* %i, align 4, !dbg !1175
  %230 = sdiv i32 %229, 64, !dbg !1175
  %231 = getelementptr inbounds %struct.fd_set* %in_except, i32 0, i32 0, !dbg !1175
  %232 = sext i32 %230 to i64, !dbg !1175
  %233 = getelementptr inbounds [16 x i64]* %231, i64 0, i64 %232, !dbg !1175
  %234 = load i64* %233, align 8, !dbg !1175
  %235 = load i32* %i, align 4, !dbg !1175
  %236 = srem i32 %235, 64, !dbg !1175
  %237 = shl i32 1, %236, !dbg !1175
  %238 = sext i32 %237 to i64, !dbg !1175
  %239 = and i64 %234, %238, !dbg !1175
  %240 = icmp ne i64 %239, 0, !dbg !1175
  br i1 %240, label %bb36, label %bb37, !dbg !1175

bb36:                                             ; preds = %bb35
  %241 = load %struct.exe_file_t** %f, align 8, !dbg !1175
  %242 = getelementptr inbounds %struct.exe_file_t* %241, i32 0, i32 0, !dbg !1175
  %243 = load i32* %242, align 8, !dbg !1175
  %244 = sdiv i32 %243, 64, !dbg !1175
  store i32 %244, i32* %3, align 4, !dbg !1175
  %245 = load i32* %3, align 4, !dbg !1175
  %246 = load i32* %3, align 4, !dbg !1175
  %247 = getelementptr inbounds %struct.fd_set* %os_except, i32 0, i32 0, !dbg !1175
  %248 = sext i32 %246 to i64, !dbg !1175
  %249 = getelementptr inbounds [16 x i64]* %247, i64 0, i64 %248, !dbg !1175
  %250 = load i64* %249, align 8, !dbg !1175
  %251 = load %struct.exe_file_t** %f, align 8, !dbg !1175
  %252 = getelementptr inbounds %struct.exe_file_t* %251, i32 0, i32 0, !dbg !1175
  %253 = load i32* %252, align 8, !dbg !1175
  %254 = srem i32 %253, 64, !dbg !1175
  %255 = shl i32 1, %254, !dbg !1175
  %256 = sext i32 %255 to i64, !dbg !1175
  %257 = or i64 %250, %256, !dbg !1175
  %258 = getelementptr inbounds %struct.fd_set* %os_except, i32 0, i32 0, !dbg !1175
  %259 = sext i32 %245 to i64, !dbg !1175
  %260 = getelementptr inbounds [16 x i64]* %258, i64 0, i64 %259, !dbg !1175
  store i64 %257, i64* %260, align 8, !dbg !1175
  br label %bb37, !dbg !1175

bb37:                                             ; preds = %bb36, %bb35
  %261 = load %struct.exe_file_t** %f, align 8, !dbg !1176
  %262 = getelementptr inbounds %struct.exe_file_t* %261, i32 0, i32 0, !dbg !1176
  %263 = load i32* %262, align 8, !dbg !1176
  %264 = load i32* %os_nfds, align 4, !dbg !1176
  %265 = icmp sge i32 %263, %264, !dbg !1176
  br i1 %265, label %bb38, label %bb39, !dbg !1176

bb38:                                             ; preds = %bb37
  %266 = load %struct.exe_file_t** %f, align 8, !dbg !1176
  %267 = getelementptr inbounds %struct.exe_file_t* %266, i32 0, i32 0, !dbg !1176
  %268 = load i32* %267, align 8, !dbg !1176
  %269 = add nsw i32 %268, 1, !dbg !1176
  store i32 %269, i32* %os_nfds, align 4, !dbg !1176
  br label %bb39, !dbg !1176

bb39:                                             ; preds = %bb38, %bb37, %bb30, %bb20
  %270 = load i32* %i, align 4, !dbg !1160
  %271 = add nsw i32 %270, 1, !dbg !1160
  store i32 %271, i32* %i, align 4, !dbg !1160
  br label %bb40, !dbg !1160

bb40:                                             ; preds = %bb39, %bb14
  %272 = load i32* %i, align 4, !dbg !1160
  %273 = load i32* %nfds_addr, align 4, !dbg !1160
  %274 = icmp slt i32 %272, %273, !dbg !1160
  br i1 %274, label %bb18, label %bb41, !dbg !1160

bb41:                                             ; preds = %bb40
  %275 = load i32* %os_nfds, align 4, !dbg !1177
  %276 = icmp sgt i32 %275, 0, !dbg !1177
  br i1 %276, label %bb42, label %bb61, !dbg !1177

bb42:                                             ; preds = %bb41
  call void @llvm.dbg.declare(metadata !{%struct.timespec* %tv}, metadata !1178), !dbg !1180
  call void @llvm.dbg.declare(metadata !{i32* %r}, metadata !1181), !dbg !1182
  %277 = getelementptr inbounds %struct.timespec* %tv, i32 0, i32 0, !dbg !1180
  %278 = load i64* getelementptr inbounds (%struct.timespec* @C.28.5458, i64 0, i32 0), align 8, !dbg !1180
  store i64 %278, i64* %277, align 8, !dbg !1180
  %279 = getelementptr inbounds %struct.timespec* %tv, i32 0, i32 1, !dbg !1180
  %280 = load i64* getelementptr inbounds (%struct.timespec* @C.28.5458, i64 0, i32 1), align 8, !dbg !1180
  store i64 %280, i64* %279, align 8, !dbg !1180
  %281 = load i32* %os_nfds, align 4, !dbg !1183
  %282 = call i64 (i64, ...)* @syscall(i64 23, i32 %281, %struct.fd_set* %os_read, %struct.fd_set* %os_write, %struct.fd_set* %os_except, %struct.timespec* %tv) nounwind, !dbg !1183
  %283 = trunc i64 %282 to i32, !dbg !1183
  store i32 %283, i32* %r, align 4, !dbg !1183
  %284 = load i32* %r, align 4, !dbg !1184
  %285 = icmp eq i32 %284, -1, !dbg !1184
  br i1 %285, label %bb43, label %bb46, !dbg !1184

bb43:                                             ; preds = %bb42
  %286 = load i32* %count, align 4, !dbg !1185
  %287 = icmp eq i32 %286, 0, !dbg !1185
  br i1 %287, label %bb44, label %bb45, !dbg !1185

bb44:                                             ; preds = %bb43
  %288 = call i32* @__errno_location() nounwind readnone, !dbg !1186
  %289 = call i32 @klee_get_errno() nounwind, !dbg !1186
  store i32 %289, i32* %288, align 4, !dbg !1186
  store i32 -1, i32* %9, align 4, !dbg !1187
  br label %bb62, !dbg !1187

bb45:                                             ; preds = %bb43
  br label %bb61, !dbg !1187

bb46:                                             ; preds = %bb42
  %290 = load i32* %count, align 4, !dbg !1188
  %291 = load i32* %r, align 4, !dbg !1188
  %292 = add nsw i32 %290, %291, !dbg !1188
  store i32 %292, i32* %count, align 4, !dbg !1188
  store i32 0, i32* %i, align 4, !dbg !1189
  br label %bb60, !dbg !1189

bb47:                                             ; preds = %bb60
  call void @llvm.dbg.declare(metadata !{%struct.exe_file_t** %f48}, metadata !1190), !dbg !1192
  %293 = load i32* %i, align 4, !dbg !1192
  %294 = call %struct.exe_file_t* @__get_file(i32 %293) nounwind, !dbg !1192
  store %struct.exe_file_t* %294, %struct.exe_file_t** %f48, align 8, !dbg !1192
  %295 = load %struct.exe_file_t** %f48, align 8, !dbg !1193
  %296 = icmp ne %struct.exe_file_t* %295, null, !dbg !1193
  br i1 %296, label %bb49, label %bb59, !dbg !1193

bb49:                                             ; preds = %bb47
  %297 = load %struct.exe_file_t** %f48, align 8, !dbg !1193
  %298 = getelementptr inbounds %struct.exe_file_t* %297, i32 0, i32 3, !dbg !1193
  %299 = load %struct.exe_disk_file_t** %298, align 8, !dbg !1193
  %300 = icmp eq %struct.exe_disk_file_t* %299, null, !dbg !1193
  br i1 %300, label %bb50, label %bb59, !dbg !1193

bb50:                                             ; preds = %bb49
  %301 = load %struct.fd_set** %read_addr, align 8, !dbg !1194
  %302 = icmp ne %struct.fd_set* %301, null, !dbg !1194
  br i1 %302, label %bb51, label %bb53, !dbg !1194

bb51:                                             ; preds = %bb50
  %303 = load %struct.exe_file_t** %f48, align 8, !dbg !1194
  %304 = getelementptr inbounds %struct.exe_file_t* %303, i32 0, i32 0, !dbg !1194
  %305 = load i32* %304, align 8, !dbg !1194
  %306 = sdiv i32 %305, 64, !dbg !1194
  %307 = getelementptr inbounds %struct.fd_set* %os_read, i32 0, i32 0, !dbg !1194
  %308 = sext i32 %306 to i64, !dbg !1194
  %309 = getelementptr inbounds [16 x i64]* %307, i64 0, i64 %308, !dbg !1194
  %310 = load i64* %309, align 8, !dbg !1194
  %311 = load %struct.exe_file_t** %f48, align 8, !dbg !1194
  %312 = getelementptr inbounds %struct.exe_file_t* %311, i32 0, i32 0, !dbg !1194
  %313 = load i32* %312, align 8, !dbg !1194
  %314 = srem i32 %313, 64, !dbg !1194
  %315 = shl i32 1, %314, !dbg !1194
  %316 = sext i32 %315 to i64, !dbg !1194
  %317 = and i64 %310, %316, !dbg !1194
  %318 = icmp ne i64 %317, 0, !dbg !1194
  br i1 %318, label %bb52, label %bb53, !dbg !1194

bb52:                                             ; preds = %bb51
  %319 = load i32* %i, align 4, !dbg !1194
  %320 = sdiv i32 %319, 64, !dbg !1194
  store i32 %320, i32* %2, align 4, !dbg !1194
  %321 = load i32* %2, align 4, !dbg !1194
  %322 = load i32* %2, align 4, !dbg !1194
  %323 = load %struct.fd_set** %read_addr, align 8, !dbg !1194
  %324 = getelementptr inbounds %struct.fd_set* %323, i32 0, i32 0, !dbg !1194
  %325 = sext i32 %322 to i64, !dbg !1194
  %326 = getelementptr inbounds [16 x i64]* %324, i64 0, i64 %325, !dbg !1194
  %327 = load i64* %326, align 8, !dbg !1194
  %328 = load i32* %i, align 4, !dbg !1194
  %329 = srem i32 %328, 64, !dbg !1194
  %330 = shl i32 1, %329, !dbg !1194
  %331 = sext i32 %330 to i64, !dbg !1194
  %332 = or i64 %327, %331, !dbg !1194
  %333 = load %struct.fd_set** %read_addr, align 8, !dbg !1194
  %334 = getelementptr inbounds %struct.fd_set* %333, i32 0, i32 0, !dbg !1194
  %335 = sext i32 %321 to i64, !dbg !1194
  %336 = getelementptr inbounds [16 x i64]* %334, i64 0, i64 %335, !dbg !1194
  store i64 %332, i64* %336, align 8, !dbg !1194
  br label %bb53, !dbg !1194

bb53:                                             ; preds = %bb52, %bb51, %bb50
  %337 = load %struct.fd_set** %write_addr, align 8, !dbg !1195
  %338 = icmp ne %struct.fd_set* %337, null, !dbg !1195
  br i1 %338, label %bb54, label %bb56, !dbg !1195

bb54:                                             ; preds = %bb53
  %339 = load %struct.exe_file_t** %f48, align 8, !dbg !1195
  %340 = getelementptr inbounds %struct.exe_file_t* %339, i32 0, i32 0, !dbg !1195
  %341 = load i32* %340, align 8, !dbg !1195
  %342 = sdiv i32 %341, 64, !dbg !1195
  %343 = getelementptr inbounds %struct.fd_set* %os_write, i32 0, i32 0, !dbg !1195
  %344 = sext i32 %342 to i64, !dbg !1195
  %345 = getelementptr inbounds [16 x i64]* %343, i64 0, i64 %344, !dbg !1195
  %346 = load i64* %345, align 8, !dbg !1195
  %347 = load %struct.exe_file_t** %f48, align 8, !dbg !1195
  %348 = getelementptr inbounds %struct.exe_file_t* %347, i32 0, i32 0, !dbg !1195
  %349 = load i32* %348, align 8, !dbg !1195
  %350 = srem i32 %349, 64, !dbg !1195
  %351 = shl i32 1, %350, !dbg !1195
  %352 = sext i32 %351 to i64, !dbg !1195
  %353 = and i64 %346, %352, !dbg !1195
  %354 = icmp ne i64 %353, 0, !dbg !1195
  br i1 %354, label %bb55, label %bb56, !dbg !1195

bb55:                                             ; preds = %bb54
  %355 = load i32* %i, align 4, !dbg !1195
  %356 = sdiv i32 %355, 64, !dbg !1195
  store i32 %356, i32* %1, align 4, !dbg !1195
  %357 = load i32* %1, align 4, !dbg !1195
  %358 = load i32* %1, align 4, !dbg !1195
  %359 = load %struct.fd_set** %write_addr, align 8, !dbg !1195
  %360 = getelementptr inbounds %struct.fd_set* %359, i32 0, i32 0, !dbg !1195
  %361 = sext i32 %358 to i64, !dbg !1195
  %362 = getelementptr inbounds [16 x i64]* %360, i64 0, i64 %361, !dbg !1195
  %363 = load i64* %362, align 8, !dbg !1195
  %364 = load i32* %i, align 4, !dbg !1195
  %365 = srem i32 %364, 64, !dbg !1195
  %366 = shl i32 1, %365, !dbg !1195
  %367 = sext i32 %366 to i64, !dbg !1195
  %368 = or i64 %363, %367, !dbg !1195
  %369 = load %struct.fd_set** %write_addr, align 8, !dbg !1195
  %370 = getelementptr inbounds %struct.fd_set* %369, i32 0, i32 0, !dbg !1195
  %371 = sext i32 %357 to i64, !dbg !1195
  %372 = getelementptr inbounds [16 x i64]* %370, i64 0, i64 %371, !dbg !1195
  store i64 %368, i64* %372, align 8, !dbg !1195
  br label %bb56, !dbg !1195

bb56:                                             ; preds = %bb55, %bb54, %bb53
  %373 = load %struct.fd_set** %except_addr, align 8, !dbg !1196
  %374 = icmp ne %struct.fd_set* %373, null, !dbg !1196
  br i1 %374, label %bb57, label %bb59, !dbg !1196

bb57:                                             ; preds = %bb56
  %375 = load %struct.exe_file_t** %f48, align 8, !dbg !1196
  %376 = getelementptr inbounds %struct.exe_file_t* %375, i32 0, i32 0, !dbg !1196
  %377 = load i32* %376, align 8, !dbg !1196
  %378 = sdiv i32 %377, 64, !dbg !1196
  %379 = getelementptr inbounds %struct.fd_set* %os_except, i32 0, i32 0, !dbg !1196
  %380 = sext i32 %378 to i64, !dbg !1196
  %381 = getelementptr inbounds [16 x i64]* %379, i64 0, i64 %380, !dbg !1196
  %382 = load i64* %381, align 8, !dbg !1196
  %383 = load %struct.exe_file_t** %f48, align 8, !dbg !1196
  %384 = getelementptr inbounds %struct.exe_file_t* %383, i32 0, i32 0, !dbg !1196
  %385 = load i32* %384, align 8, !dbg !1196
  %386 = srem i32 %385, 64, !dbg !1196
  %387 = shl i32 1, %386, !dbg !1196
  %388 = sext i32 %387 to i64, !dbg !1196
  %389 = and i64 %382, %388, !dbg !1196
  %390 = icmp ne i64 %389, 0, !dbg !1196
  br i1 %390, label %bb58, label %bb59, !dbg !1196

bb58:                                             ; preds = %bb57
  %391 = load i32* %i, align 4, !dbg !1196
  %392 = sdiv i32 %391, 64, !dbg !1196
  store i32 %392, i32* %0, align 4, !dbg !1196
  %393 = load i32* %0, align 4, !dbg !1196
  %394 = load i32* %0, align 4, !dbg !1196
  %395 = load %struct.fd_set** %except_addr, align 8, !dbg !1196
  %396 = getelementptr inbounds %struct.fd_set* %395, i32 0, i32 0, !dbg !1196
  %397 = sext i32 %394 to i64, !dbg !1196
  %398 = getelementptr inbounds [16 x i64]* %396, i64 0, i64 %397, !dbg !1196
  %399 = load i64* %398, align 8, !dbg !1196
  %400 = load i32* %i, align 4, !dbg !1196
  %401 = srem i32 %400, 64, !dbg !1196
  %402 = shl i32 1, %401, !dbg !1196
  %403 = sext i32 %402 to i64, !dbg !1196
  %404 = or i64 %399, %403, !dbg !1196
  %405 = load %struct.fd_set** %except_addr, align 8, !dbg !1196
  %406 = getelementptr inbounds %struct.fd_set* %405, i32 0, i32 0, !dbg !1196
  %407 = sext i32 %393 to i64, !dbg !1196
  %408 = getelementptr inbounds [16 x i64]* %406, i64 0, i64 %407, !dbg !1196
  store i64 %404, i64* %408, align 8, !dbg !1196
  br label %bb59, !dbg !1196

bb59:                                             ; preds = %bb58, %bb57, %bb56, %bb49, %bb47
  %409 = load i32* %i, align 4, !dbg !1189
  %410 = add nsw i32 %409, 1, !dbg !1189
  store i32 %410, i32* %i, align 4, !dbg !1189
  br label %bb60, !dbg !1189

bb60:                                             ; preds = %bb59, %bb46
  %411 = load i32* %i, align 4, !dbg !1189
  %412 = load i32* %nfds_addr, align 4, !dbg !1189
  %413 = icmp slt i32 %411, %412, !dbg !1189
  br i1 %413, label %bb47, label %bb61, !dbg !1189

bb61:                                             ; preds = %bb60, %bb45, %bb41
  %414 = load i32* %count, align 4, !dbg !1197
  store i32 %414, i32* %9, align 4, !dbg !1197
  br label %bb62, !dbg !1197

bb62:                                             ; preds = %bb61, %bb44, %bb22
  %415 = load i32* %9, align 4, !dbg !1167
  store i32 %415, i32* %retval, align 4, !dbg !1167
  br label %return, !dbg !1167

return:                                           ; preds = %bb62
  %retval63 = load i32* %retval, !dbg !1167
  ret i32 %retval63, !dbg !1167
}

define i8* @getcwd(i8* %buf, i64 %size) nounwind {
entry:
  %buf_addr = alloca i8*, align 8
  %size_addr = alloca i64, align 8
  %retval = alloca i8*
  %0 = alloca i8*
  %r = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i8** %buf_addr}, metadata !1198), !dbg !1199
  store i8* %buf, i8** %buf_addr
  call void @llvm.dbg.declare(metadata !{i64* %size_addr}, metadata !1200), !dbg !1199
  store i64 %size, i64* %size_addr
  call void @llvm.dbg.declare(metadata !{i32* %r}, metadata !1201), !dbg !1203
  %1 = load i32* @n_calls.5570, align 4, !dbg !1204
  %2 = add nsw i32 %1, 1, !dbg !1204
  store i32 %2, i32* @n_calls.5570, align 4, !dbg !1204
  %3 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !1205
  %4 = icmp ne i32 %3, 0, !dbg !1205
  br i1 %4, label %bb, label %bb2, !dbg !1205

bb:                                               ; preds = %entry
  %5 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 10), align 8, !dbg !1205
  %6 = load i32* %5, align 4, !dbg !1205
  %7 = load i32* @n_calls.5570, align 4, !dbg !1205
  %8 = icmp eq i32 %6, %7, !dbg !1205
  br i1 %8, label %bb1, label %bb2, !dbg !1205

bb1:                                              ; preds = %bb
  %9 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !1206
  %10 = sub i32 %9, 1, !dbg !1206
  store i32 %10, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !1206
  %11 = call i32* @__errno_location() nounwind readnone, !dbg !1207
  store i32 34, i32* %11, align 4, !dbg !1207
  store i8* null, i8** %0, align 8, !dbg !1208
  br label %bb9, !dbg !1208

bb2:                                              ; preds = %bb, %entry
  %12 = load i8** %buf_addr, align 8, !dbg !1209
  %13 = icmp eq i8* %12, null, !dbg !1209
  br i1 %13, label %bb3, label %bb6, !dbg !1209

bb3:                                              ; preds = %bb2
  %14 = load i64* %size_addr, align 8, !dbg !1210
  %15 = icmp eq i64 %14, 0, !dbg !1210
  br i1 %15, label %bb4, label %bb5, !dbg !1210

bb4:                                              ; preds = %bb3
  store i64 1024, i64* %size_addr, align 8, !dbg !1211
  br label %bb5, !dbg !1211

bb5:                                              ; preds = %bb4, %bb3
  %16 = load i64* %size_addr, align 8, !dbg !1212
  %17 = call noalias i8* @malloc(i64 %16) nounwind, !dbg !1212
  store i8* %17, i8** %buf_addr, align 8, !dbg !1212
  br label %bb6, !dbg !1212

bb6:                                              ; preds = %bb5, %bb2
  %18 = load i8** %buf_addr, align 8, !dbg !1213
  %19 = call i8* @__concretize_ptr(i8* %18) nounwind, !dbg !1213
  store i8* %19, i8** %buf_addr, align 8, !dbg !1213
  %20 = load i64* %size_addr, align 8, !dbg !1214
  %21 = call i64 @__concretize_size(i64 %20) nounwind, !dbg !1214
  store i64 %21, i64* %size_addr, align 8, !dbg !1214
  %22 = load i8** %buf_addr, align 8, !dbg !1215
  %23 = load i64* %size_addr, align 8, !dbg !1215
  call void @klee_check_memory_access(i8* %22, i64 %23) nounwind, !dbg !1215
  %24 = load i8** %buf_addr, align 8, !dbg !1216
  %25 = load i64* %size_addr, align 8, !dbg !1216
  %26 = call i64 (i64, ...)* @syscall(i64 79, i8* %24, i64 %25) nounwind, !dbg !1216
  %27 = trunc i64 %26 to i32, !dbg !1216
  store i32 %27, i32* %r, align 4, !dbg !1216
  %28 = load i32* %r, align 4, !dbg !1217
  %29 = icmp eq i32 %28, -1, !dbg !1217
  br i1 %29, label %bb7, label %bb8, !dbg !1217

bb7:                                              ; preds = %bb6
  %30 = call i32* @__errno_location() nounwind readnone, !dbg !1218
  %31 = call i32 @klee_get_errno() nounwind, !dbg !1218
  store i32 %31, i32* %30, align 4, !dbg !1218
  store i8* null, i8** %0, align 8, !dbg !1219
  br label %bb9, !dbg !1219

bb8:                                              ; preds = %bb6
  %32 = load i8** %buf_addr, align 8, !dbg !1220
  store i8* %32, i8** %0, align 8, !dbg !1220
  br label %bb9, !dbg !1220

bb9:                                              ; preds = %bb8, %bb7, %bb1
  %33 = load i8** %0, align 8, !dbg !1208
  store i8* %33, i8** %retval, align 8, !dbg !1208
  br label %return, !dbg !1208

return:                                           ; preds = %bb9
  %retval10 = load i8** %retval, !dbg !1208
  ret i8* %retval10, !dbg !1208
}

declare noalias i8* @malloc(i64) nounwind

define internal i8* @__concretize_ptr(i8* %p) nounwind {
entry:
  %p_addr = alloca i8*, align 8
  %retval = alloca i8*
  %0 = alloca i8*
  %pc = alloca i8*
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i8** %p_addr}, metadata !1221), !dbg !1222
  store i8* %p, i8** %p_addr
  call void @llvm.dbg.declare(metadata !{i8** %pc}, metadata !1223), !dbg !1225
  %1 = load i8** %p_addr, align 8, !dbg !1225
  %2 = ptrtoint i8* %1 to i64, !dbg !1225
  %3 = call i64 @klee_get_valuel(i64 %2) nounwind, !dbg !1225
  %4 = inttoptr i64 %3 to i8*, !dbg !1225
  store i8* %4, i8** %pc, align 8, !dbg !1225
  %5 = load i8** %p_addr, align 8, !dbg !1226
  %6 = load i8** %pc, align 8, !dbg !1226
  %7 = icmp eq i8* %6, %5, !dbg !1226
  %8 = zext i1 %7 to i64, !dbg !1226
  call void @klee_assume(i64 %8) nounwind, !dbg !1226
  %9 = load i8** %pc, align 8, !dbg !1227
  store i8* %9, i8** %0, align 8, !dbg !1227
  %10 = load i8** %0, align 8, !dbg !1227
  store i8* %10, i8** %retval, align 8, !dbg !1227
  br label %return, !dbg !1227

return:                                           ; preds = %entry
  %retval1 = load i8** %retval, !dbg !1227
  ret i8* %retval1, !dbg !1227
}

declare i64 @klee_get_valuel(i64)

declare void @klee_assume(i64)

define internal i64 @__concretize_size(i64 %s) nounwind {
entry:
  %s_addr = alloca i64, align 8
  %retval = alloca i64
  %0 = alloca i64
  %sc = alloca i64
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i64* %s_addr}, metadata !1228), !dbg !1229
  store i64 %s, i64* %s_addr
  call void @llvm.dbg.declare(metadata !{i64* %sc}, metadata !1230), !dbg !1232
  %1 = load i64* %s_addr, align 8, !dbg !1232
  %2 = call i64 @klee_get_valuel(i64 %1) nounwind, !dbg !1232
  store i64 %2, i64* %sc, align 8, !dbg !1232
  %3 = load i64* %sc, align 8, !dbg !1233
  %4 = load i64* %s_addr, align 8, !dbg !1233
  %5 = icmp eq i64 %3, %4, !dbg !1233
  %6 = zext i1 %5 to i64, !dbg !1233
  call void @klee_assume(i64 %6) nounwind, !dbg !1233
  %7 = load i64* %sc, align 8, !dbg !1234
  store i64 %7, i64* %0, align 8, !dbg !1234
  %8 = load i64* %0, align 8, !dbg !1234
  store i64 %8, i64* %retval, align 8, !dbg !1234
  br label %return, !dbg !1234

return:                                           ; preds = %entry
  %retval1 = load i64* %retval, !dbg !1234
  ret i64 %retval1, !dbg !1234
}

define internal i8* @__concretize_string(i8* %s) nounwind {
entry:
  %s_addr = alloca i8*, align 8
  %retval = alloca i8*
  %0 = alloca i8*
  %sc = alloca i8*
  %i = alloca i32
  %c = alloca i8
  %cc = alloca i8
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i8** %s_addr}, metadata !1235), !dbg !1236
  store i8* %s, i8** %s_addr
  call void @llvm.dbg.declare(metadata !{i8** %sc}, metadata !1237), !dbg !1239
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !1240), !dbg !1241
  %1 = load i8** %s_addr, align 8, !dbg !1239
  %2 = call i8* @__concretize_ptr(i8* %1) nounwind, !dbg !1239
  store i8* %2, i8** %sc, align 8, !dbg !1239
  store i32 0, i32* %i, align 4, !dbg !1242
  br label %bb, !dbg !1242

bb:                                               ; preds = %bb7, %entry
  call void @llvm.dbg.declare(metadata !{i8* %c}, metadata !1243), !dbg !1245
  %3 = load i8** %sc, align 8, !dbg !1245
  %4 = load i8* %3, align 1, !dbg !1245
  store i8 %4, i8* %c, align 1, !dbg !1245
  %5 = load i32* %i, align 4, !dbg !1246
  %6 = sub i32 %5, 1, !dbg !1246
  %7 = load i32* %i, align 4, !dbg !1246
  %8 = and i32 %6, %7, !dbg !1246
  %9 = icmp eq i32 %8, 0, !dbg !1246
  br i1 %9, label %bb1, label %bb6, !dbg !1246

bb1:                                              ; preds = %bb
  %10 = load i8* %c, align 1, !dbg !1247
  %11 = icmp eq i8 %10, 0, !dbg !1247
  br i1 %11, label %bb2, label %bb3, !dbg !1247

bb2:                                              ; preds = %bb1
  %12 = load i8** %sc, align 8, !dbg !1248
  store i8 0, i8* %12, align 1, !dbg !1248
  %13 = load i8** %sc, align 8, !dbg !1248
  %14 = getelementptr inbounds i8* %13, i64 1, !dbg !1248
  store i8* %14, i8** %sc, align 8, !dbg !1248
  br label %bb8, !dbg !1248

bb3:                                              ; preds = %bb1
  %15 = load i8* %c, align 1, !dbg !1249
  %16 = icmp eq i8 %15, 47, !dbg !1249
  br i1 %16, label %bb4, label %bb5, !dbg !1249

bb4:                                              ; preds = %bb3
  %17 = load i8** %sc, align 8, !dbg !1250
  store i8 47, i8* %17, align 1, !dbg !1250
  %18 = load i8** %sc, align 8, !dbg !1250
  %19 = getelementptr inbounds i8* %18, i64 1, !dbg !1250
  store i8* %19, i8** %sc, align 8, !dbg !1250
  br label %bb5, !dbg !1250

bb5:                                              ; preds = %bb4, %bb3
  br label %bb7, !dbg !1250

bb6:                                              ; preds = %bb
  call void @llvm.dbg.declare(metadata !{i8* %cc}, metadata !1251), !dbg !1253
  %20 = load i8* %c, align 1, !dbg !1253
  %21 = sext i8 %20 to i64, !dbg !1253
  %22 = call i64 @klee_get_valuel(i64 %21) nounwind, !dbg !1253
  %23 = trunc i64 %22 to i8, !dbg !1253
  store i8 %23, i8* %cc, align 1, !dbg !1253
  %24 = load i8* %cc, align 1, !dbg !1254
  %25 = load i8* %c, align 1, !dbg !1254
  %26 = icmp eq i8 %24, %25, !dbg !1254
  %27 = zext i1 %26 to i64, !dbg !1254
  call void @klee_assume(i64 %27) nounwind, !dbg !1254
  %28 = load i8** %sc, align 8, !dbg !1255
  %29 = load i8* %cc, align 1, !dbg !1255
  store i8 %29, i8* %28, align 1, !dbg !1255
  %30 = load i8** %sc, align 8, !dbg !1255
  %31 = getelementptr inbounds i8* %30, i64 1, !dbg !1255
  store i8* %31, i8** %sc, align 8, !dbg !1255
  %32 = load i8* %cc, align 1, !dbg !1256
  %33 = icmp eq i8 %32, 0, !dbg !1256
  br i1 %33, label %bb8, label %bb7, !dbg !1256

bb7:                                              ; preds = %bb6, %bb5
  %34 = load i32* %i, align 4, !dbg !1242
  %35 = add i32 %34, 1, !dbg !1242
  store i32 %35, i32* %i, align 4, !dbg !1242
  br label %bb, !dbg !1242

bb8:                                              ; preds = %bb6, %bb2
  %36 = load i8** %s_addr, align 8, !dbg !1257
  store i8* %36, i8** %0, align 8, !dbg !1257
  %37 = load i8** %0, align 8, !dbg !1257
  store i8* %37, i8** %retval, align 8, !dbg !1257
  br label %return, !dbg !1257

return:                                           ; preds = %bb8
  %retval9 = load i8** %retval, !dbg !1257
  ret i8* %retval9, !dbg !1257
}

define i32 @chroot(i8* %path) nounwind {
entry:
  %path_addr = alloca i8*, align 8
  %retval = alloca i32
  %0 = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i8** %path_addr}, metadata !1258), !dbg !1259
  store i8* %path, i8** %path_addr
  %1 = load i8** %path_addr, align 8, !dbg !1260
  %2 = getelementptr inbounds i8* %1, i64 0, !dbg !1260
  %3 = load i8* %2, align 1, !dbg !1260
  %4 = icmp eq i8 %3, 0, !dbg !1260
  br i1 %4, label %bb, label %bb1, !dbg !1260

bb:                                               ; preds = %entry
  %5 = call i32* @__errno_location() nounwind readnone, !dbg !1262
  store i32 2, i32* %5, align 4, !dbg !1262
  store i32 -1, i32* %0, align 4, !dbg !1263
  br label %bb5, !dbg !1263

bb1:                                              ; preds = %entry
  %6 = load i8** %path_addr, align 8, !dbg !1264
  %7 = getelementptr inbounds i8* %6, i64 0, !dbg !1264
  %8 = load i8* %7, align 1, !dbg !1264
  %9 = icmp eq i8 %8, 47, !dbg !1264
  br i1 %9, label %bb2, label %bb4, !dbg !1264

bb2:                                              ; preds = %bb1
  %10 = load i8** %path_addr, align 8, !dbg !1264
  %11 = getelementptr inbounds i8* %10, i64 1, !dbg !1264
  %12 = load i8* %11, align 1, !dbg !1264
  %13 = icmp eq i8 %12, 0, !dbg !1264
  br i1 %13, label %bb3, label %bb4, !dbg !1264

bb3:                                              ; preds = %bb2
  store i32 0, i32* %0, align 4, !dbg !1265
  br label %bb5, !dbg !1265

bb4:                                              ; preds = %bb2, %bb1
  call void @klee_warning(i8* getelementptr inbounds ([18 x i8]* @.str22, i64 0, i64 0)) nounwind, !dbg !1266
  %14 = call i32* @__errno_location() nounwind readnone, !dbg !1267
  store i32 2, i32* %14, align 4, !dbg !1267
  store i32 -1, i32* %0, align 4, !dbg !1268
  br label %bb5, !dbg !1268

bb5:                                              ; preds = %bb4, %bb3, %bb
  %15 = load i32* %0, align 4, !dbg !1263
  store i32 %15, i32* %retval, align 4, !dbg !1263
  br label %return, !dbg !1263

return:                                           ; preds = %bb5
  %retval6 = load i32* %retval, !dbg !1263
  ret i32 %retval6, !dbg !1263
}

!llvm.dbg.sp = !{!0, !59, !72, !75, !78, !81, !85, !88, !95, !96, !99, !102, !103, !106, !107, !110, !113, !116, !121, !124, !127, !128, !129, !132, !150, !153, !156, !187, !190, !191, !192, !193, !194, !195, !198, !218, !221, !224, !227, !230}
!llvm.dbg.gv = !{!231, !232, !233, !234, !235, !236, !237}

!0 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__get_sym_file", metadata !"__get_sym_file", metadata !"", metadata !1, i32 39, metadata !3, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.exe_disk_file_t* (i8*)* @__get_sym_file} ; [ DW_TAG_subprogram ]
!1 = metadata !{i32 589865, metadata !"fd.c", metadata !"/home/tyu/Documents/bugredx/klee2.9/runtime/POSIX/", metadata !2} ; [ DW_TAG_file_type ]
!2 = metadata !{i32 589841, i32 0, i32 1, metadata !"fd.c", metadata !"/home/tyu/Documents/bugredx/klee2.9/runtime/POSIX/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!3 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !4, i32 0, null} ; [ DW_TAG_subroutine_type ]
!4 = metadata !{metadata !5, metadata !57}
!5 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !6} ; [ DW_TAG_pointer_type ]
!6 = metadata !{i32 589846, metadata !7, metadata !"exe_disk_file_t", metadata !7, i32 24, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_typedef ]
!7 = metadata !{i32 589865, metadata !"fd.h", metadata !"/home/tyu/Documents/bugredx/klee2.9/runtime/POSIX/", metadata !2} ; [ DW_TAG_file_type ]
!8 = metadata !{i32 589843, metadata !1, metadata !"", metadata !7, i32 20, i64 192, i64 64, i64 0, i32 0, null, metadata !9, i32 0, null} ; [ DW_TAG_structure_type ]
!9 = metadata !{metadata !10, metadata !12, metadata !15}
!10 = metadata !{i32 589837, metadata !8, metadata !"size", metadata !7, i32 21, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_member ]
!11 = metadata !{i32 589860, metadata !1, metadata !"unsigned int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!12 = metadata !{i32 589837, metadata !8, metadata !"contents", metadata !7, i32 22, i64 64, i64 64, i64 64, i32 0, metadata !13} ; [ DW_TAG_member ]
!13 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ]
!14 = metadata !{i32 589860, metadata !1, metadata !"char", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!15 = metadata !{i32 589837, metadata !8, metadata !"stat", metadata !7, i32 23, i64 64, i64 64, i64 128, i32 0, metadata !16} ; [ DW_TAG_member ]
!16 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ]
!17 = metadata !{i32 589843, metadata !1, metadata !"stat64", metadata !7, i32 23, i64 1152, i64 64, i64 0, i32 0, null, metadata !18, i32 0, null} ; [ DW_TAG_structure_type ]
!18 = metadata !{metadata !19, metadata !24, metadata !26, metadata !28, metadata !30, metadata !32, metadata !34, metadata !36, metadata !37, metadata !40, metadata !42, metadata !44, metadata !51, metadata !52, metadata !53}
!19 = metadata !{i32 589837, metadata !17, metadata !"st_dev", metadata !20, i32 121, i64 64, i64 64, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ]
!20 = metadata !{i32 589865, metadata !"stat.h", metadata !"/usr/include/bits", metadata !2} ; [ DW_TAG_file_type ]
!21 = metadata !{i32 589846, metadata !22, metadata !"__dev_t", metadata !22, i32 134, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ]
!22 = metadata !{i32 589865, metadata !"types.h", metadata !"/usr/include/bits", metadata !2} ; [ DW_TAG_file_type ]
!23 = metadata !{i32 589860, metadata !1, metadata !"long unsigned int", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!24 = metadata !{i32 589837, metadata !17, metadata !"st_ino", metadata !20, i32 123, i64 64, i64 64, i64 64, i32 0, metadata !25} ; [ DW_TAG_member ]
!25 = metadata !{i32 589846, metadata !22, metadata !"__ino64_t", metadata !22, i32 138, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ]
!26 = metadata !{i32 589837, metadata !17, metadata !"st_nlink", metadata !20, i32 124, i64 64, i64 64, i64 128, i32 0, metadata !27} ; [ DW_TAG_member ]
!27 = metadata !{i32 589846, metadata !22, metadata !"__nlink_t", metadata !22, i32 140, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ]
!28 = metadata !{i32 589837, metadata !17, metadata !"st_mode", metadata !20, i32 125, i64 32, i64 32, i64 192, i32 0, metadata !29} ; [ DW_TAG_member ]
!29 = metadata !{i32 589846, metadata !22, metadata !"__mode_t", metadata !22, i32 139, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!30 = metadata !{i32 589837, metadata !17, metadata !"st_uid", metadata !20, i32 132, i64 32, i64 32, i64 224, i32 0, metadata !31} ; [ DW_TAG_member ]
!31 = metadata !{i32 589846, metadata !22, metadata !"__uid_t", metadata !22, i32 135, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!32 = metadata !{i32 589837, metadata !17, metadata !"st_gid", metadata !20, i32 133, i64 32, i64 32, i64 256, i32 0, metadata !33} ; [ DW_TAG_member ]
!33 = metadata !{i32 589846, metadata !22, metadata !"__gid_t", metadata !22, i32 136, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!34 = metadata !{i32 589837, metadata !17, metadata !"__pad0", metadata !20, i32 135, i64 32, i64 32, i64 288, i32 0, metadata !35} ; [ DW_TAG_member ]
!35 = metadata !{i32 589860, metadata !1, metadata !"int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!36 = metadata !{i32 589837, metadata !17, metadata !"st_rdev", metadata !20, i32 136, i64 64, i64 64, i64 320, i32 0, metadata !21} ; [ DW_TAG_member ]
!37 = metadata !{i32 589837, metadata !17, metadata !"st_size", metadata !20, i32 137, i64 64, i64 64, i64 384, i32 0, metadata !38} ; [ DW_TAG_member ]
!38 = metadata !{i32 589846, metadata !22, metadata !"__off_t", metadata !22, i32 141, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ]
!39 = metadata !{i32 589860, metadata !1, metadata !"long int", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!40 = metadata !{i32 589837, metadata !17, metadata !"st_blksize", metadata !20, i32 143, i64 64, i64 64, i64 448, i32 0, metadata !41} ; [ DW_TAG_member ]
!41 = metadata !{i32 589846, metadata !22, metadata !"__blksize_t", metadata !22, i32 164, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ]
!42 = metadata !{i32 589837, metadata !17, metadata !"st_blocks", metadata !20, i32 144, i64 64, i64 64, i64 512, i32 0, metadata !43} ; [ DW_TAG_member ]
!43 = metadata !{i32 589846, metadata !22, metadata !"__blkcnt64_t", metadata !22, i32 170, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ]
!44 = metadata !{i32 589837, metadata !17, metadata !"st_atim", metadata !20, i32 152, i64 128, i64 64, i64 576, i32 0, metadata !45} ; [ DW_TAG_member ]
!45 = metadata !{i32 589843, metadata !1, metadata !"timespec", metadata !46, i32 121, i64 128, i64 64, i64 0, i32 0, null, metadata !47, i32 0, null} ; [ DW_TAG_structure_type ]
!46 = metadata !{i32 589865, metadata !"time.h", metadata !"/usr/include", metadata !2} ; [ DW_TAG_file_type ]
!47 = metadata !{metadata !48, metadata !50}
!48 = metadata !{i32 589837, metadata !45, metadata !"tv_sec", metadata !46, i32 122, i64 64, i64 64, i64 0, i32 0, metadata !49} ; [ DW_TAG_member ]
!49 = metadata !{i32 589846, metadata !22, metadata !"__time_t", metadata !22, i32 149, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ]
!50 = metadata !{i32 589837, metadata !45, metadata !"tv_nsec", metadata !46, i32 123, i64 64, i64 64, i64 64, i32 0, metadata !39} ; [ DW_TAG_member ]
!51 = metadata !{i32 589837, metadata !17, metadata !"st_mtim", metadata !20, i32 153, i64 128, i64 64, i64 704, i32 0, metadata !45} ; [ DW_TAG_member ]
!52 = metadata !{i32 589837, metadata !17, metadata !"st_ctim", metadata !20, i32 154, i64 128, i64 64, i64 832, i32 0, metadata !45} ; [ DW_TAG_member ]
!53 = metadata !{i32 589837, metadata !17, metadata !"__unused", metadata !20, i32 167, i64 192, i64 64, i64 960, i32 0, metadata !54} ; [ DW_TAG_member ]
!54 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 192, i64 64, i64 0, i32 0, metadata !39, metadata !55, i32 0, null} ; [ DW_TAG_array_type ]
!55 = metadata !{metadata !56}
!56 = metadata !{i32 589857, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!57 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !58} ; [ DW_TAG_pointer_type ]
!58 = metadata !{i32 589862, metadata !1, metadata !"", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !14} ; [ DW_TAG_const_type ]
!59 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__get_file", metadata !"__get_file", metadata !"", metadata !1, i32 63, metadata !60, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.exe_file_t* (i32)* @__get_file} ; [ DW_TAG_subprogram ]
!60 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !61, i32 0, null} ; [ DW_TAG_subroutine_type ]
!61 = metadata !{metadata !62, metadata !35}
!62 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !63} ; [ DW_TAG_pointer_type ]
!63 = metadata !{i32 589846, metadata !7, metadata !"exe_file_t", metadata !7, i32 40, i64 0, i64 0, i64 0, i32 0, metadata !64} ; [ DW_TAG_typedef ]
!64 = metadata !{i32 589843, metadata !1, metadata !"", metadata !7, i32 33, i64 192, i64 64, i64 0, i32 0, null, metadata !65, i32 0, null} ; [ DW_TAG_structure_type ]
!65 = metadata !{metadata !66, metadata !67, metadata !68, metadata !71}
!66 = metadata !{i32 589837, metadata !64, metadata !"fd", metadata !7, i32 34, i64 32, i64 32, i64 0, i32 0, metadata !35} ; [ DW_TAG_member ]
!67 = metadata !{i32 589837, metadata !64, metadata !"flags", metadata !7, i32 35, i64 32, i64 32, i64 32, i32 0, metadata !11} ; [ DW_TAG_member ]
!68 = metadata !{i32 589837, metadata !64, metadata !"off", metadata !7, i32 38, i64 64, i64 64, i64 64, i32 0, metadata !69} ; [ DW_TAG_member ]
!69 = metadata !{i32 589846, metadata !70, metadata !"off64_t", metadata !70, i32 94, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ]
!70 = metadata !{i32 589865, metadata !"types.h", metadata !"/usr/include/sys", metadata !2} ; [ DW_TAG_file_type ]
!71 = metadata !{i32 589837, metadata !64, metadata !"dfile", metadata !7, i32 39, i64 64, i64 64, i64 128, i32 0, metadata !5} ; [ DW_TAG_member ]
!72 = metadata !{i32 589870, i32 0, metadata !1, metadata !"access", metadata !"access", metadata !"access", metadata !1, i32 73, metadata !73, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, i32)* @access} ; [ DW_TAG_subprogram ]
!73 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !74, i32 0, null} ; [ DW_TAG_subroutine_type ]
!74 = metadata !{metadata !35, metadata !57, metadata !35}
!75 = metadata !{i32 589870, i32 0, metadata !1, metadata !"umask", metadata !"umask", metadata !"umask", metadata !1, i32 88, metadata !76, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @umask} ; [ DW_TAG_subprogram ]
!76 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !77, i32 0, null} ; [ DW_TAG_subroutine_type ]
!77 = metadata !{metadata !29, metadata !29}
!78 = metadata !{i32 589870, i32 0, metadata !1, metadata !"has_permission", metadata !"has_permission", metadata !"", metadata !1, i32 97, metadata !79, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, %struct.stat*)* @has_permission} ; [ DW_TAG_subprogram ]
!79 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !80, i32 0, null} ; [ DW_TAG_subroutine_type ]
!80 = metadata !{metadata !35, metadata !35, metadata !16}
!81 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fd_open", metadata !"__fd_open", metadata !"__fd_open", metadata !1, i32 128, metadata !82, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, i32, i32)* @__fd_open} ; [ DW_TAG_subprogram ]
!82 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !83, i32 0, null} ; [ DW_TAG_subroutine_type ]
!83 = metadata !{metadata !35, metadata !57, metadata !35, metadata !84}
!84 = metadata !{i32 589846, metadata !70, metadata !"mode_t", metadata !70, i32 71, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!85 = metadata !{i32 589870, i32 0, metadata !1, metadata !"close", metadata !"close", metadata !"close", metadata !1, i32 201, metadata !86, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @close} ; [ DW_TAG_subprogram ]
!86 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !87, i32 0, null} ; [ DW_TAG_subroutine_type ]
!87 = metadata !{metadata !35, metadata !35}
!88 = metadata !{i32 589870, i32 0, metadata !1, metadata !"read", metadata !"read", metadata !"read", metadata !1, i32 233, metadata !89, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i32, i8*, i64)* @read} ; [ DW_TAG_subprogram ]
!89 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !90, i32 0, null} ; [ DW_TAG_subroutine_type ]
!90 = metadata !{metadata !91, metadata !35, metadata !92, metadata !93}
!91 = metadata !{i32 589846, metadata !70, metadata !"ssize_t", metadata !70, i32 110, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ]
!92 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!93 = metadata !{i32 589846, metadata !94, metadata !"size_t", metadata !94, i32 214, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ]
!94 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/home/tyu/Documents/bugredx/llvm-gcc4.2-2.9-x86_64-linux/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.2.1/include", metadata !2} ; [ DW_TAG_file_type ]
!95 = metadata !{i32 589870, i32 0, metadata !1, metadata !"write", metadata !"write", metadata !"write", metadata !1, i32 301, metadata !89, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i32, i8*, i64)* @write} ; [ DW_TAG_subprogram ]
!96 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fd_lseek", metadata !"__fd_lseek", metadata !"__fd_lseek", metadata !1, i32 373, metadata !97, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i32, i64, i32)* @__fd_lseek} ; [ DW_TAG_subprogram ]
!97 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !98, i32 0, null} ; [ DW_TAG_subroutine_type ]
!98 = metadata !{metadata !69, metadata !35, metadata !69, metadata !35}
!99 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fd_stat", metadata !"__fd_stat", metadata !"__fd_stat", metadata !1, i32 430, metadata !100, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, %struct.stat*)* @__fd_stat} ; [ DW_TAG_subprogram ]
!100 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !101, i32 0, null} ; [ DW_TAG_subroutine_type ]
!101 = metadata !{metadata !35, metadata !57, metadata !16}
!102 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fd_lstat", metadata !"__fd_lstat", metadata !"__fd_lstat", metadata !1, i32 449, metadata !100, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, %struct.stat*)* @__fd_lstat} ; [ DW_TAG_subprogram ]
!103 = metadata !{i32 589870, i32 0, metadata !1, metadata !"chdir", metadata !"chdir", metadata !"chdir", metadata !1, i32 468, metadata !104, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*)* @chdir} ; [ DW_TAG_subprogram ]
!104 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !105, i32 0, null} ; [ DW_TAG_subroutine_type ]
!105 = metadata !{metadata !35, metadata !57}
!106 = metadata !{i32 589870, i32 0, metadata !1, metadata !"fchdir", metadata !"fchdir", metadata !"fchdir", metadata !1, i32 486, metadata !86, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @fchdir} ; [ DW_TAG_subprogram ]
!107 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__df_chmod", metadata !"__df_chmod", metadata !"", metadata !1, i32 507, metadata !108, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.exe_disk_file_t*, i32)* @__df_chmod} ; [ DW_TAG_subprogram ]
!108 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !109, i32 0, null} ; [ DW_TAG_subroutine_type ]
!109 = metadata !{metadata !35, metadata !5, metadata !84}
!110 = metadata !{i32 589870, i32 0, metadata !1, metadata !"chmod", metadata !"chmod", metadata !"chmod", metadata !1, i32 520, metadata !111, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, i32)* @chmod} ; [ DW_TAG_subprogram ]
!111 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !112, i32 0, null} ; [ DW_TAG_subroutine_type ]
!112 = metadata !{metadata !35, metadata !57, metadata !29}
!113 = metadata !{i32 589870, i32 0, metadata !1, metadata !"fchmod", metadata !"fchmod", metadata !"fchmod", metadata !1, i32 542, metadata !114, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @fchmod} ; [ DW_TAG_subprogram ]
!114 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !115, i32 0, null} ; [ DW_TAG_subroutine_type ]
!115 = metadata !{metadata !35, metadata !35, metadata !29}
!116 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__df_chown", metadata !"__df_chown", metadata !"", metadata !1, i32 569, metadata !117, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.exe_disk_file_t*, i32, i32)* @__df_chown} ; [ DW_TAG_subprogram ]
!117 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !118, i32 0, null} ; [ DW_TAG_subroutine_type ]
!118 = metadata !{metadata !35, metadata !5, metadata !119, metadata !120}
!119 = metadata !{i32 589846, metadata !70, metadata !"uid_t", metadata !70, i32 81, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!120 = metadata !{i32 589846, metadata !70, metadata !"gid_t", metadata !70, i32 66, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!121 = metadata !{i32 589870, i32 0, metadata !1, metadata !"chown", metadata !"chown", metadata !"chown", metadata !1, i32 575, metadata !122, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, i32, i32)* @chown} ; [ DW_TAG_subprogram ]
!122 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !123, i32 0, null} ; [ DW_TAG_subroutine_type ]
!123 = metadata !{metadata !35, metadata !57, metadata !31, metadata !33}
!124 = metadata !{i32 589870, i32 0, metadata !1, metadata !"fchown", metadata !"fchown", metadata !"fchown", metadata !1, i32 588, metadata !125, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32, i32)* @fchown} ; [ DW_TAG_subprogram ]
!125 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !126, i32 0, null} ; [ DW_TAG_subroutine_type ]
!126 = metadata !{metadata !35, metadata !35, metadata !31, metadata !33}
!127 = metadata !{i32 589870, i32 0, metadata !1, metadata !"lchown", metadata !"lchown", metadata !"lchown", metadata !1, i32 606, metadata !122, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, i32, i32)* @lchown} ; [ DW_TAG_subprogram ]
!128 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fd_fstat", metadata !"__fd_fstat", metadata !"__fd_fstat", metadata !1, i32 620, metadata !79, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, %struct.stat*)* @__fd_fstat} ; [ DW_TAG_subprogram ]
!129 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fd_ftruncate", metadata !"__fd_ftruncate", metadata !"__fd_ftruncate", metadata !1, i32 643, metadata !130, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i64)* @__fd_ftruncate} ; [ DW_TAG_subprogram ]
!130 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !131, i32 0, null} ; [ DW_TAG_subroutine_type ]
!131 = metadata !{metadata !35, metadata !35, metadata !69}
!132 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fd_getdents", metadata !"__fd_getdents", metadata !"__fd_getdents", metadata !1, i32 676, metadata !133, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, %struct.dirent64*, i32)* @__fd_getdents} ; [ DW_TAG_subprogram ]
!133 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !134, i32 0, null} ; [ DW_TAG_subroutine_type ]
!134 = metadata !{metadata !35, metadata !11, metadata !135, metadata !11}
!135 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !136} ; [ DW_TAG_pointer_type ]
!136 = metadata !{i32 589843, metadata !1, metadata !"dirent64", metadata !137, i32 39, i64 2240, i64 64, i64 0, i32 0, null, metadata !138, i32 0, null} ; [ DW_TAG_structure_type ]
!137 = metadata !{i32 589865, metadata !"dirent.h", metadata !"/usr/include/bits", metadata !2} ; [ DW_TAG_file_type ]
!138 = metadata !{metadata !139, metadata !140, metadata !142, metadata !144, metadata !146}
!139 = metadata !{i32 589837, metadata !136, metadata !"d_ino", metadata !137, i32 40, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_member ]
!140 = metadata !{i32 589837, metadata !136, metadata !"d_off", metadata !137, i32 41, i64 64, i64 64, i64 64, i32 0, metadata !141} ; [ DW_TAG_member ]
!141 = metadata !{i32 589846, metadata !22, metadata !"__off64_t", metadata !22, i32 142, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ]
!142 = metadata !{i32 589837, metadata !136, metadata !"d_reclen", metadata !137, i32 42, i64 16, i64 16, i64 128, i32 0, metadata !143} ; [ DW_TAG_member ]
!143 = metadata !{i32 589860, metadata !1, metadata !"short unsigned int", metadata !1, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!144 = metadata !{i32 589837, metadata !136, metadata !"d_type", metadata !137, i32 43, i64 8, i64 8, i64 144, i32 0, metadata !145} ; [ DW_TAG_member ]
!145 = metadata !{i32 589860, metadata !1, metadata !"unsigned char", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!146 = metadata !{i32 589837, metadata !136, metadata !"d_name", metadata !137, i32 44, i64 2048, i64 8, i64 152, i32 0, metadata !147} ; [ DW_TAG_member ]
!147 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 2048, i64 8, i64 0, i32 0, metadata !14, metadata !148, i32 0, null} ; [ DW_TAG_array_type ]
!148 = metadata !{metadata !149}
!149 = metadata !{i32 589857, i64 0, i64 255}     ; [ DW_TAG_subrange_type ]
!150 = metadata !{i32 589870, i32 0, metadata !1, metadata !"ioctl", metadata !"ioctl", metadata !"ioctl", metadata !1, i32 758, metadata !151, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i64, ...)* @ioctl} ; [ DW_TAG_subprogram ]
!151 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !152, i32 0, null} ; [ DW_TAG_subroutine_type ]
!152 = metadata !{metadata !35, metadata !35, metadata !23}
!153 = metadata !{i32 589870, i32 0, metadata !1, metadata !"fcntl", metadata !"fcntl", metadata !"fcntl", metadata !1, i32 908, metadata !154, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32, ...)* @fcntl} ; [ DW_TAG_subprogram ]
!154 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !155, i32 0, null} ; [ DW_TAG_subroutine_type ]
!155 = metadata !{metadata !35, metadata !35, metadata !35}
!156 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fd_statfs", metadata !"__fd_statfs", metadata !"__fd_statfs", metadata !1, i32 963, metadata !157, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, %struct.statfs*)* @__fd_statfs} ; [ DW_TAG_subprogram ]
!157 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !158, i32 0, null} ; [ DW_TAG_subroutine_type ]
!158 = metadata !{metadata !35, metadata !57, metadata !159}
!159 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !160} ; [ DW_TAG_pointer_type ]
!160 = metadata !{i32 589843, metadata !1, metadata !"statfs", metadata !161, i32 26, i64 960, i64 64, i64 0, i32 0, null, metadata !162, i32 0, null} ; [ DW_TAG_structure_type ]
!161 = metadata !{i32 589865, metadata !"statfs.h", metadata !"/usr/include/bits", metadata !2} ; [ DW_TAG_file_type ]
!162 = metadata !{metadata !163, metadata !164, metadata !165, metadata !167, metadata !168, metadata !169, metadata !171, metadata !172, metadata !180, metadata !181, metadata !182, metadata !183}
!163 = metadata !{i32 589837, metadata !160, metadata !"f_type", metadata !161, i32 27, i64 64, i64 64, i64 0, i32 0, metadata !39} ; [ DW_TAG_member ]
!164 = metadata !{i32 589837, metadata !160, metadata !"f_bsize", metadata !161, i32 28, i64 64, i64 64, i64 64, i32 0, metadata !39} ; [ DW_TAG_member ]
!165 = metadata !{i32 589837, metadata !160, metadata !"f_blocks", metadata !161, i32 30, i64 64, i64 64, i64 128, i32 0, metadata !166} ; [ DW_TAG_member ]
!166 = metadata !{i32 589846, metadata !22, metadata !"__fsblkcnt_t", metadata !22, i32 173, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ]
!167 = metadata !{i32 589837, metadata !160, metadata !"f_bfree", metadata !161, i32 31, i64 64, i64 64, i64 192, i32 0, metadata !166} ; [ DW_TAG_member ]
!168 = metadata !{i32 589837, metadata !160, metadata !"f_bavail", metadata !161, i32 32, i64 64, i64 64, i64 256, i32 0, metadata !166} ; [ DW_TAG_member ]
!169 = metadata !{i32 589837, metadata !160, metadata !"f_files", metadata !161, i32 33, i64 64, i64 64, i64 320, i32 0, metadata !170} ; [ DW_TAG_member ]
!170 = metadata !{i32 589846, metadata !22, metadata !"__fsfilcnt_t", metadata !22, i32 177, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ]
!171 = metadata !{i32 589837, metadata !160, metadata !"f_ffree", metadata !161, i32 34, i64 64, i64 64, i64 384, i32 0, metadata !170} ; [ DW_TAG_member ]
!172 = metadata !{i32 589837, metadata !160, metadata !"f_fsid", metadata !161, i32 42, i64 64, i64 32, i64 448, i32 0, metadata !173} ; [ DW_TAG_member ]
!173 = metadata !{i32 589846, metadata !22, metadata !"__fsid_t", metadata !22, i32 144, i64 0, i64 0, i64 0, i32 0, metadata !174} ; [ DW_TAG_typedef ]
!174 = metadata !{i32 589843, metadata !1, metadata !"", metadata !22, i32 144, i64 64, i64 32, i64 0, i32 0, null, metadata !175, i32 0, null} ; [ DW_TAG_structure_type ]
!175 = metadata !{metadata !176}
!176 = metadata !{i32 589837, metadata !174, metadata !"__val", metadata !22, i32 144, i64 64, i64 32, i64 0, i32 0, metadata !177} ; [ DW_TAG_member ]
!177 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 32, i64 0, i32 0, metadata !35, metadata !178, i32 0, null} ; [ DW_TAG_array_type ]
!178 = metadata !{metadata !179}
!179 = metadata !{i32 589857, i64 0, i64 1}       ; [ DW_TAG_subrange_type ]
!180 = metadata !{i32 589837, metadata !160, metadata !"f_namelen", metadata !161, i32 43, i64 64, i64 64, i64 512, i32 0, metadata !39} ; [ DW_TAG_member ]
!181 = metadata !{i32 589837, metadata !160, metadata !"f_frsize", metadata !161, i32 44, i64 64, i64 64, i64 576, i32 0, metadata !39} ; [ DW_TAG_member ]
!182 = metadata !{i32 589837, metadata !160, metadata !"f_flags", metadata !161, i32 45, i64 64, i64 64, i64 640, i32 0, metadata !39} ; [ DW_TAG_member ]
!183 = metadata !{i32 589837, metadata !160, metadata !"f_spare", metadata !161, i32 46, i64 256, i64 64, i64 704, i32 0, metadata !184} ; [ DW_TAG_member ]
!184 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 256, i64 64, i64 0, i32 0, metadata !39, metadata !185, i32 0, null} ; [ DW_TAG_array_type ]
!185 = metadata !{metadata !186}
!186 = metadata !{i32 589857, i64 0, i64 3}       ; [ DW_TAG_subrange_type ]
!187 = metadata !{i32 589870, i32 0, metadata !1, metadata !"fstatfs", metadata !"fstatfs", metadata !"fstatfs", metadata !1, i32 980, metadata !188, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, %struct.statfs*)* @fstatfs} ; [ DW_TAG_subprogram ]
!188 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !189, i32 0, null} ; [ DW_TAG_subroutine_type ]
!189 = metadata !{metadata !35, metadata !35, metadata !159}
!190 = metadata !{i32 589870, i32 0, metadata !1, metadata !"fsync", metadata !"fsync", metadata !"fsync", metadata !1, i32 1000, metadata !86, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @fsync} ; [ DW_TAG_subprogram ]
!191 = metadata !{i32 589870, i32 0, metadata !1, metadata !"dup2", metadata !"dup2", metadata !"dup2", metadata !1, i32 1016, metadata !154, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @dup2} ; [ DW_TAG_subprogram ]
!192 = metadata !{i32 589870, i32 0, metadata !1, metadata !"dup", metadata !"dup", metadata !"dup", metadata !1, i32 1041, metadata !86, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @dup} ; [ DW_TAG_subprogram ]
!193 = metadata !{i32 589870, i32 0, metadata !1, metadata !"rmdir", metadata !"rmdir", metadata !"rmdir", metadata !1, i32 1060, metadata !104, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*)* @rmdir} ; [ DW_TAG_subprogram ]
!194 = metadata !{i32 589870, i32 0, metadata !1, metadata !"unlink", metadata !"unlink", metadata !"unlink", metadata !1, i32 1078, metadata !104, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*)* @unlink} ; [ DW_TAG_subprogram ]
!195 = metadata !{i32 589870, i32 0, metadata !1, metadata !"readlink", metadata !"readlink", metadata !"readlink", metadata !1, i32 1099, metadata !196, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i8*, i8*, i64)* @readlink} ; [ DW_TAG_subprogram ]
!196 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !197, i32 0, null} ; [ DW_TAG_subroutine_type ]
!197 = metadata !{metadata !91, metadata !57, metadata !13, metadata !93}
!198 = metadata !{i32 589870, i32 0, metadata !1, metadata !"select", metadata !"select", metadata !"select", metadata !1, i32 1132, metadata !199, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timespec*)* @select} ; [ DW_TAG_subprogram ]
!199 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !200, i32 0, null} ; [ DW_TAG_subroutine_type ]
!200 = metadata !{metadata !35, metadata !35, metadata !201, metadata !201, metadata !201, metadata !211}
!201 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !202} ; [ DW_TAG_pointer_type ]
!202 = metadata !{i32 589846, metadata !203, metadata !"fd_set", metadata !203, i32 76, i64 0, i64 0, i64 0, i32 0, metadata !204} ; [ DW_TAG_typedef ]
!203 = metadata !{i32 589865, metadata !"select.h", metadata !"/usr/include/sys", metadata !2} ; [ DW_TAG_file_type ]
!204 = metadata !{i32 589843, metadata !1, metadata !"", metadata !203, i32 66, i64 1024, i64 64, i64 0, i32 0, null, metadata !205, i32 0, null} ; [ DW_TAG_structure_type ]
!205 = metadata !{metadata !206}
!206 = metadata !{i32 589837, metadata !204, metadata !"fds_bits", metadata !203, i32 70, i64 1024, i64 64, i64 0, i32 0, metadata !207} ; [ DW_TAG_member ]
!207 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 1024, i64 64, i64 0, i32 0, metadata !208, metadata !209, i32 0, null} ; [ DW_TAG_array_type ]
!208 = metadata !{i32 589846, metadata !203, metadata !"__fd_mask", metadata !203, i32 55, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ]
!209 = metadata !{metadata !210}
!210 = metadata !{i32 589857, i64 0, i64 15}      ; [ DW_TAG_subrange_type ]
!211 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !212} ; [ DW_TAG_pointer_type ]
!212 = metadata !{i32 589843, metadata !1, metadata !"timeval", metadata !213, i32 32, i64 128, i64 64, i64 0, i32 0, null, metadata !214, i32 0, null} ; [ DW_TAG_structure_type ]
!213 = metadata !{i32 589865, metadata !"time.h", metadata !"/usr/include/bits", metadata !2} ; [ DW_TAG_file_type ]
!214 = metadata !{metadata !215, metadata !216}
!215 = metadata !{i32 589837, metadata !212, metadata !"tv_sec", metadata !213, i32 33, i64 64, i64 64, i64 0, i32 0, metadata !49} ; [ DW_TAG_member ]
!216 = metadata !{i32 589837, metadata !212, metadata !"tv_usec", metadata !213, i32 34, i64 64, i64 64, i64 64, i32 0, metadata !217} ; [ DW_TAG_member ]
!217 = metadata !{i32 589846, metadata !22, metadata !"__suseconds_t", metadata !22, i32 151, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ]
!218 = metadata !{i32 589870, i32 0, metadata !1, metadata !"getcwd", metadata !"getcwd", metadata !"getcwd", metadata !1, i32 1217, metadata !219, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i64)* @getcwd} ; [ DW_TAG_subprogram ]
!219 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !220, i32 0, null} ; [ DW_TAG_subroutine_type ]
!220 = metadata !{metadata !13, metadata !13, metadata !93}
!221 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__concretize_ptr", metadata !"__concretize_ptr", metadata !"", metadata !1, i32 1252, metadata !222, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*)* @__concretize_ptr} ; [ DW_TAG_subprogram ]
!222 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !223, i32 0, null} ; [ DW_TAG_subroutine_type ]
!223 = metadata !{metadata !92, metadata !92}
!224 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__concretize_size", metadata !"__concretize_size", metadata !"", metadata !1, i32 1259, metadata !225, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i64)* @__concretize_size} ; [ DW_TAG_subprogram ]
!225 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !226, i32 0, null} ; [ DW_TAG_subroutine_type ]
!226 = metadata !{metadata !93, metadata !93}
!227 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__concretize_string", metadata !"__concretize_string", metadata !"", metadata !1, i32 1265, metadata !228, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*)* @__concretize_string} ; [ DW_TAG_subprogram ]
!228 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !229, i32 0, null} ; [ DW_TAG_subroutine_type ]
!229 = metadata !{metadata !57, metadata !57}
!230 = metadata !{i32 589870, i32 0, metadata !1, metadata !"chroot", metadata !"chroot", metadata !"chroot", metadata !1, i32 1294, metadata !104, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*)* @chroot} ; [ DW_TAG_subprogram ]
!231 = metadata !{i32 589876, i32 0, metadata !85, metadata !"n_calls", metadata !"n_calls", metadata !"", metadata !1, i32 202, metadata !35, i1 true, i1 true, i32* @n_calls.4318} ; [ DW_TAG_variable ]
!232 = metadata !{i32 589876, i32 0, metadata !88, metadata !"n_calls", metadata !"n_calls", metadata !"", metadata !1, i32 234, metadata !35, i1 true, i1 true, i32* @n_calls.4345} ; [ DW_TAG_variable ]
!233 = metadata !{i32 589876, i32 0, metadata !95, metadata !"n_calls", metadata !"n_calls", metadata !"", metadata !1, i32 302, metadata !35, i1 true, i1 true, i32* @n_calls.4432} ; [ DW_TAG_variable ]
!234 = metadata !{i32 589876, i32 0, metadata !110, metadata !"n_calls", metadata !"n_calls", metadata !"", metadata !1, i32 521, metadata !35, i1 true, i1 true, i32* @n_calls.4683} ; [ DW_TAG_variable ]
!235 = metadata !{i32 589876, i32 0, metadata !113, metadata !"n_calls", metadata !"n_calls", metadata !"", metadata !1, i32 543, metadata !35, i1 true, i1 true, i32* @n_calls.4715} ; [ DW_TAG_variable ]
!236 = metadata !{i32 589876, i32 0, metadata !129, metadata !"n_calls", metadata !"n_calls", metadata !"", metadata !1, i32 644, metadata !35, i1 true, i1 true, i32* @n_calls.4844} ; [ DW_TAG_variable ]
!237 = metadata !{i32 589876, i32 0, metadata !218, metadata !"n_calls", metadata !"n_calls", metadata !"", metadata !1, i32 1218, metadata !35, i1 true, i1 true, i32* @n_calls.5570} ; [ DW_TAG_variable ]
!238 = metadata !{i32 590081, metadata !0, metadata !"pathname", metadata !1, i32 39, metadata !57, i32 0} ; [ DW_TAG_arg_variable ]
!239 = metadata !{i32 39, i32 0, metadata !0, null}
!240 = metadata !{i32 590080, metadata !241, metadata !"c", metadata !1, i32 40, metadata !14, i32 0} ; [ DW_TAG_auto_variable ]
!241 = metadata !{i32 589835, metadata !0, i32 39, i32 0, metadata !1, i32 0} ; [ DW_TAG_lexical_block ]
!242 = metadata !{i32 40, i32 0, metadata !241, null}
!243 = metadata !{i32 590080, metadata !241, metadata !"i", metadata !1, i32 41, metadata !11, i32 0} ; [ DW_TAG_auto_variable ]
!244 = metadata !{i32 41, i32 0, metadata !241, null}
!245 = metadata !{i32 43, i32 0, metadata !241, null}
!246 = metadata !{i32 44, i32 0, metadata !241, null}
!247 = metadata !{i32 46, i32 0, metadata !241, null}
!248 = metadata !{i32 47, i32 0, metadata !241, null}
!249 = metadata !{i32 590080, metadata !250, metadata !"df", metadata !1, i32 48, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!250 = metadata !{i32 589835, metadata !241, i32 48, i32 0, metadata !1, i32 1} ; [ DW_TAG_lexical_block ]
!251 = metadata !{i32 48, i32 0, metadata !250, null}
!252 = metadata !{i32 49, i32 0, metadata !250, null}
!253 = metadata !{i32 50, i32 0, metadata !250, null}
!254 = metadata !{i32 51, i32 0, metadata !250, null}
!255 = metadata !{i32 55, i32 0, metadata !241, null}
!256 = metadata !{i32 590081, metadata !59, metadata !"fd", metadata !1, i32 63, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!257 = metadata !{i32 63, i32 0, metadata !59, null}
!258 = metadata !{i32 590080, metadata !259, metadata !"f", metadata !1, i32 65, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!259 = metadata !{i32 589835, metadata !260, i32 63, i32 0, metadata !1, i32 3} ; [ DW_TAG_lexical_block ]
!260 = metadata !{i32 589835, metadata !59, i32 63, i32 0, metadata !1, i32 2} ; [ DW_TAG_lexical_block ]
!261 = metadata !{i32 65, i32 0, metadata !259, null}
!262 = metadata !{i32 64, i32 0, metadata !260, null}
!263 = metadata !{i32 66, i32 0, metadata !259, null}
!264 = metadata !{i32 67, i32 0, metadata !259, null}
!265 = metadata !{i32 70, i32 0, metadata !260, null}
!266 = metadata !{i32 590081, metadata !72, metadata !"pathname", metadata !1, i32 73, metadata !57, i32 0} ; [ DW_TAG_arg_variable ]
!267 = metadata !{i32 73, i32 0, metadata !72, null}
!268 = metadata !{i32 590081, metadata !72, metadata !"mode", metadata !1, i32 73, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!269 = metadata !{i32 590080, metadata !270, metadata !"dfile", metadata !1, i32 74, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!270 = metadata !{i32 589835, metadata !72, i32 73, i32 0, metadata !1, i32 4} ; [ DW_TAG_lexical_block ]
!271 = metadata !{i32 74, i32 0, metadata !270, null}
!272 = metadata !{i32 76, i32 0, metadata !270, null}
!273 = metadata !{i32 79, i32 0, metadata !270, null}
!274 = metadata !{i32 590080, metadata !275, metadata !"r", metadata !1, i32 81, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!275 = metadata !{i32 589835, metadata !270, i32 81, i32 0, metadata !1, i32 5} ; [ DW_TAG_lexical_block ]
!276 = metadata !{i32 81, i32 0, metadata !275, null}
!277 = metadata !{i32 82, i32 0, metadata !275, null}
!278 = metadata !{i32 83, i32 0, metadata !275, null}
!279 = metadata !{i32 84, i32 0, metadata !275, null}
!280 = metadata !{i32 590081, metadata !75, metadata !"mask", metadata !1, i32 88, metadata !84, i32 0} ; [ DW_TAG_arg_variable ]
!281 = metadata !{i32 88, i32 0, metadata !75, null}
!282 = metadata !{i32 590080, metadata !283, metadata !"r", metadata !1, i32 89, metadata !84, i32 0} ; [ DW_TAG_auto_variable ]
!283 = metadata !{i32 589835, metadata !75, i32 88, i32 0, metadata !1, i32 6} ; [ DW_TAG_lexical_block ]
!284 = metadata !{i32 89, i32 0, metadata !283, null}
!285 = metadata !{i32 90, i32 0, metadata !283, null}
!286 = metadata !{i32 91, i32 0, metadata !283, null}
!287 = metadata !{i32 590081, metadata !78, metadata !"flags", metadata !1, i32 97, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!288 = metadata !{i32 97, i32 0, metadata !78, null}
!289 = metadata !{i32 590081, metadata !78, metadata !"s", metadata !1, i32 97, metadata !16, i32 0} ; [ DW_TAG_arg_variable ]
!290 = metadata !{i32 590080, metadata !291, metadata !"write_access", metadata !1, i32 98, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!291 = metadata !{i32 589835, metadata !78, i32 97, i32 0, metadata !1, i32 7} ; [ DW_TAG_lexical_block ]
!292 = metadata !{i32 98, i32 0, metadata !291, null}
!293 = metadata !{i32 590080, metadata !291, metadata !"read_access", metadata !1, i32 98, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!294 = metadata !{i32 590080, metadata !291, metadata !"mode", metadata !1, i32 99, metadata !84, i32 0} ; [ DW_TAG_auto_variable ]
!295 = metadata !{i32 99, i32 0, metadata !291, null}
!296 = metadata !{i32 101, i32 0, metadata !291, null}
!297 = metadata !{i32 102, i32 0, metadata !291, null}
!298 = metadata !{i32 103, i32 0, metadata !291, null}
!299 = metadata !{i32 105, i32 0, metadata !291, null}
!300 = metadata !{i32 106, i32 0, metadata !291, null}
!301 = metadata !{i32 107, i32 0, metadata !291, null}
!302 = metadata !{i32 118, i32 0, metadata !291, null}
!303 = metadata !{i32 119, i32 0, metadata !291, null}
!304 = metadata !{i32 121, i32 0, metadata !291, null}
!305 = metadata !{i32 122, i32 0, metadata !291, null}
!306 = metadata !{i32 124, i32 0, metadata !291, null}
!307 = metadata !{i32 590081, metadata !81, metadata !"pathname", metadata !1, i32 128, metadata !57, i32 0} ; [ DW_TAG_arg_variable ]
!308 = metadata !{i32 128, i32 0, metadata !81, null}
!309 = metadata !{i32 590081, metadata !81, metadata !"flags", metadata !1, i32 128, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!310 = metadata !{i32 590081, metadata !81, metadata !"mode", metadata !1, i32 128, metadata !84, i32 0} ; [ DW_TAG_arg_variable ]
!311 = metadata !{i32 590080, metadata !312, metadata !"df", metadata !1, i32 129, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!312 = metadata !{i32 589835, metadata !81, i32 128, i32 0, metadata !1, i32 8} ; [ DW_TAG_lexical_block ]
!313 = metadata !{i32 129, i32 0, metadata !312, null}
!314 = metadata !{i32 590080, metadata !312, metadata !"f", metadata !1, i32 130, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!315 = metadata !{i32 130, i32 0, metadata !312, null}
!316 = metadata !{i32 590080, metadata !312, metadata !"fd", metadata !1, i32 131, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!317 = metadata !{i32 131, i32 0, metadata !312, null}
!318 = metadata !{i32 133, i32 0, metadata !312, null}
!319 = metadata !{i32 134, i32 0, metadata !312, null}
!320 = metadata !{i32 136, i32 0, metadata !312, null}
!321 = metadata !{i32 137, i32 0, metadata !312, null}
!322 = metadata !{i32 138, i32 0, metadata !312, null}
!323 = metadata !{i32 141, i32 0, metadata !312, null}
!324 = metadata !{i32 144, i32 0, metadata !312, null}
!325 = metadata !{i32 146, i32 0, metadata !312, null}
!326 = metadata !{i32 147, i32 0, metadata !312, null}
!327 = metadata !{i32 150, i32 0, metadata !312, null}
!328 = metadata !{i32 152, i32 0, metadata !312, null}
!329 = metadata !{i32 153, i32 0, metadata !312, null}
!330 = metadata !{i32 154, i32 0, metadata !312, null}
!331 = metadata !{i32 165, i32 0, metadata !312, null}
!332 = metadata !{i32 168, i32 0, metadata !312, null}
!333 = metadata !{i32 169, i32 0, metadata !312, null}
!334 = metadata !{i32 170, i32 0, metadata !312, null}
!335 = metadata !{i32 173, i32 0, metadata !312, null}
!336 = metadata !{i32 174, i32 0, metadata !312, null}
!337 = metadata !{i32 175, i32 0, metadata !312, null}
!338 = metadata !{i32 178, i32 0, metadata !312, null}
!339 = metadata !{i32 590080, metadata !340, metadata !"os_fd", metadata !1, i32 181, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!340 = metadata !{i32 589835, metadata !312, i32 181, i32 0, metadata !1, i32 9} ; [ DW_TAG_lexical_block ]
!341 = metadata !{i32 181, i32 0, metadata !340, null}
!342 = metadata !{i32 182, i32 0, metadata !340, null}
!343 = metadata !{i32 183, i32 0, metadata !340, null}
!344 = metadata !{i32 184, i32 0, metadata !340, null}
!345 = metadata !{i32 186, i32 0, metadata !340, null}
!346 = metadata !{i32 189, i32 0, metadata !312, null}
!347 = metadata !{i32 190, i32 0, metadata !312, null}
!348 = metadata !{i32 191, i32 0, metadata !312, null}
!349 = metadata !{i32 192, i32 0, metadata !312, null}
!350 = metadata !{i32 193, i32 0, metadata !312, null}
!351 = metadata !{i32 195, i32 0, metadata !312, null}
!352 = metadata !{i32 198, i32 0, metadata !312, null}
!353 = metadata !{i32 590081, metadata !85, metadata !"fd", metadata !1, i32 201, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!354 = metadata !{i32 201, i32 0, metadata !85, null}
!355 = metadata !{i32 590080, metadata !356, metadata !"f", metadata !1, i32 203, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!356 = metadata !{i32 589835, metadata !85, i32 201, i32 0, metadata !1, i32 10} ; [ DW_TAG_lexical_block ]
!357 = metadata !{i32 203, i32 0, metadata !356, null}
!358 = metadata !{i32 590080, metadata !356, metadata !"r", metadata !1, i32 204, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!359 = metadata !{i32 204, i32 0, metadata !356, null}
!360 = metadata !{i32 206, i32 0, metadata !356, null}
!361 = metadata !{i32 208, i32 0, metadata !356, null}
!362 = metadata !{i32 209, i32 0, metadata !356, null}
!363 = metadata !{i32 210, i32 0, metadata !356, null}
!364 = metadata !{i32 211, i32 0, metadata !356, null}
!365 = metadata !{i32 214, i32 0, metadata !356, null}
!366 = metadata !{i32 215, i32 0, metadata !356, null}
!367 = metadata !{i32 216, i32 0, metadata !356, null}
!368 = metadata !{i32 217, i32 0, metadata !356, null}
!369 = metadata !{i32 228, i32 0, metadata !356, null}
!370 = metadata !{i32 230, i32 0, metadata !356, null}
!371 = metadata !{i32 590081, metadata !88, metadata !"fd", metadata !1, i32 233, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!372 = metadata !{i32 233, i32 0, metadata !88, null}
!373 = metadata !{i32 590081, metadata !88, metadata !"buf", metadata !1, i32 233, metadata !92, i32 0} ; [ DW_TAG_arg_variable ]
!374 = metadata !{i32 590081, metadata !88, metadata !"count", metadata !1, i32 233, metadata !93, i32 0} ; [ DW_TAG_arg_variable ]
!375 = metadata !{i32 590080, metadata !376, metadata !"f", metadata !1, i32 235, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!376 = metadata !{i32 589835, metadata !88, i32 233, i32 0, metadata !1, i32 11} ; [ DW_TAG_lexical_block ]
!377 = metadata !{i32 235, i32 0, metadata !376, null}
!378 = metadata !{i32 237, i32 0, metadata !376, null}
!379 = metadata !{i32 239, i32 0, metadata !376, null}
!380 = metadata !{i32 240, i32 0, metadata !376, null}
!381 = metadata !{i32 242, i32 0, metadata !376, null}
!382 = metadata !{i32 243, i32 0, metadata !376, null}
!383 = metadata !{i32 244, i32 0, metadata !376, null}
!384 = metadata !{i32 247, i32 0, metadata !376, null}
!385 = metadata !{i32 249, i32 0, metadata !376, null}
!386 = metadata !{i32 250, i32 0, metadata !376, null}
!387 = metadata !{i32 251, i32 0, metadata !376, null}
!388 = metadata !{i32 254, i32 0, metadata !376, null}
!389 = metadata !{i32 255, i32 0, metadata !376, null}
!390 = metadata !{i32 256, i32 0, metadata !376, null}
!391 = metadata !{i32 257, i32 0, metadata !376, null}
!392 = metadata !{i32 260, i32 0, metadata !376, null}
!393 = metadata !{i32 590080, metadata !394, metadata !"r", metadata !1, i32 262, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!394 = metadata !{i32 589835, metadata !376, i32 263, i32 0, metadata !1, i32 12} ; [ DW_TAG_lexical_block ]
!395 = metadata !{i32 262, i32 0, metadata !394, null}
!396 = metadata !{i32 263, i32 0, metadata !394, null}
!397 = metadata !{i32 264, i32 0, metadata !394, null}
!398 = metadata !{i32 268, i32 0, metadata !394, null}
!399 = metadata !{i32 269, i32 0, metadata !394, null}
!400 = metadata !{i32 270, i32 0, metadata !394, null}
!401 = metadata !{i32 272, i32 0, metadata !394, null}
!402 = metadata !{i32 274, i32 0, metadata !394, null}
!403 = metadata !{i32 275, i32 0, metadata !394, null}
!404 = metadata !{i32 276, i32 0, metadata !394, null}
!405 = metadata !{i32 279, i32 0, metadata !394, null}
!406 = metadata !{i32 280, i32 0, metadata !394, null}
!407 = metadata !{i32 281, i32 0, metadata !394, null}
!408 = metadata !{i32 284, i32 0, metadata !376, null}
!409 = metadata !{i32 285, i32 0, metadata !376, null}
!410 = metadata !{i32 286, i32 0, metadata !376, null}
!411 = metadata !{i32 289, i32 0, metadata !376, null}
!412 = metadata !{i32 290, i32 0, metadata !376, null}
!413 = metadata !{i32 293, i32 0, metadata !376, null}
!414 = metadata !{i32 294, i32 0, metadata !376, null}
!415 = metadata !{i32 296, i32 0, metadata !376, null}
!416 = metadata !{i32 590081, metadata !95, metadata !"fd", metadata !1, i32 301, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!417 = metadata !{i32 301, i32 0, metadata !95, null}
!418 = metadata !{i32 590081, metadata !95, metadata !"buf", metadata !1, i32 301, metadata !92, i32 0} ; [ DW_TAG_arg_variable ]
!419 = metadata !{i32 590081, metadata !95, metadata !"count", metadata !1, i32 301, metadata !93, i32 0} ; [ DW_TAG_arg_variable ]
!420 = metadata !{i32 590080, metadata !421, metadata !"f", metadata !1, i32 303, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!421 = metadata !{i32 589835, metadata !95, i32 301, i32 0, metadata !1, i32 13} ; [ DW_TAG_lexical_block ]
!422 = metadata !{i32 303, i32 0, metadata !421, null}
!423 = metadata !{i32 305, i32 0, metadata !421, null}
!424 = metadata !{i32 307, i32 0, metadata !421, null}
!425 = metadata !{i32 309, i32 0, metadata !421, null}
!426 = metadata !{i32 310, i32 0, metadata !421, null}
!427 = metadata !{i32 311, i32 0, metadata !421, null}
!428 = metadata !{i32 314, i32 0, metadata !421, null}
!429 = metadata !{i32 315, i32 0, metadata !421, null}
!430 = metadata !{i32 316, i32 0, metadata !421, null}
!431 = metadata !{i32 317, i32 0, metadata !421, null}
!432 = metadata !{i32 320, i32 0, metadata !421, null}
!433 = metadata !{i32 590080, metadata !434, metadata !"r", metadata !1, i32 321, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!434 = metadata !{i32 589835, metadata !421, i32 323, i32 0, metadata !1, i32 14} ; [ DW_TAG_lexical_block ]
!435 = metadata !{i32 321, i32 0, metadata !434, null}
!436 = metadata !{i32 323, i32 0, metadata !434, null}
!437 = metadata !{i32 324, i32 0, metadata !434, null}
!438 = metadata !{i32 328, i32 0, metadata !434, null}
!439 = metadata !{i32 329, i32 0, metadata !434, null}
!440 = metadata !{i32 330, i32 0, metadata !434, null}
!441 = metadata !{i32 331, i32 0, metadata !434, null}
!442 = metadata !{i32 333, i32 0, metadata !434, null}
!443 = metadata !{i32 334, i32 0, metadata !434, null}
!444 = metadata !{i32 335, i32 0, metadata !434, null}
!445 = metadata !{i32 338, i32 0, metadata !434, null}
!446 = metadata !{i32 339, i32 0, metadata !434, null}
!447 = metadata !{i32 340, i32 0, metadata !434, null}
!448 = metadata !{i32 342, i32 0, metadata !434, null}
!449 = metadata !{i32 590080, metadata !450, metadata !"actual_count", metadata !1, i32 346, metadata !93, i32 0} ; [ DW_TAG_auto_variable ]
!450 = metadata !{i32 589835, metadata !421, i32 346, i32 0, metadata !1, i32 15} ; [ DW_TAG_lexical_block ]
!451 = metadata !{i32 346, i32 0, metadata !450, null}
!452 = metadata !{i32 347, i32 0, metadata !450, null}
!453 = metadata !{i32 348, i32 0, metadata !450, null}
!454 = metadata !{i32 350, i32 0, metadata !450, null}
!455 = metadata !{i32 351, i32 0, metadata !450, null}
!456 = metadata !{i32 353, i32 0, metadata !450, null}
!457 = metadata !{i32 354, i32 0, metadata !450, null}
!458 = metadata !{i32 358, i32 0, metadata !450, null}
!459 = metadata !{i32 359, i32 0, metadata !450, null}
!460 = metadata !{i32 361, i32 0, metadata !450, null}
!461 = metadata !{i32 362, i32 0, metadata !450, null}
!462 = metadata !{i32 364, i32 0, metadata !450, null}
!463 = metadata !{i32 365, i32 0, metadata !450, null}
!464 = metadata !{i32 367, i32 0, metadata !450, null}
!465 = metadata !{i32 368, i32 0, metadata !450, null}
!466 = metadata !{i32 590081, metadata !96, metadata !"fd", metadata !1, i32 373, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!467 = metadata !{i32 373, i32 0, metadata !96, null}
!468 = metadata !{i32 590081, metadata !96, metadata !"offset", metadata !1, i32 373, metadata !69, i32 0} ; [ DW_TAG_arg_variable ]
!469 = metadata !{i32 590081, metadata !96, metadata !"whence", metadata !1, i32 373, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!470 = metadata !{i32 590080, metadata !471, metadata !"new_off", metadata !1, i32 374, metadata !69, i32 0} ; [ DW_TAG_auto_variable ]
!471 = metadata !{i32 589835, metadata !96, i32 373, i32 0, metadata !1, i32 16} ; [ DW_TAG_lexical_block ]
!472 = metadata !{i32 374, i32 0, metadata !471, null}
!473 = metadata !{i32 590080, metadata !471, metadata !"f", metadata !1, i32 375, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!474 = metadata !{i32 375, i32 0, metadata !471, null}
!475 = metadata !{i32 377, i32 0, metadata !471, null}
!476 = metadata !{i32 378, i32 0, metadata !471, null}
!477 = metadata !{i32 379, i32 0, metadata !471, null}
!478 = metadata !{i32 382, i32 0, metadata !471, null}
!479 = metadata !{i32 389, i32 0, metadata !471, null}
!480 = metadata !{i32 390, i32 0, metadata !471, null}
!481 = metadata !{i32 392, i32 0, metadata !471, null}
!482 = metadata !{i32 396, i32 0, metadata !471, null}
!483 = metadata !{i32 397, i32 0, metadata !471, null}
!484 = metadata !{i32 398, i32 0, metadata !471, null}
!485 = metadata !{i32 402, i32 0, metadata !471, null}
!486 = metadata !{i32 403, i32 0, metadata !471, null}
!487 = metadata !{i32 404, i32 0, metadata !471, null}
!488 = metadata !{i32 407, i32 0, metadata !471, null}
!489 = metadata !{i32 408, i32 0, metadata !471, null}
!490 = metadata !{i32 411, i32 0, metadata !471, null}
!491 = metadata !{i32 412, i32 0, metadata !471, null}
!492 = metadata !{i32 413, i32 0, metadata !471, null}
!493 = metadata !{i32 414, i32 0, metadata !471, null}
!494 = metadata !{i32 416, i32 0, metadata !471, null}
!495 = metadata !{i32 417, i32 0, metadata !471, null}
!496 = metadata !{i32 421, i32 0, metadata !471, null}
!497 = metadata !{i32 422, i32 0, metadata !471, null}
!498 = metadata !{i32 423, i32 0, metadata !471, null}
!499 = metadata !{i32 426, i32 0, metadata !471, null}
!500 = metadata !{i32 427, i32 0, metadata !471, null}
!501 = metadata !{i32 590081, metadata !99, metadata !"path", metadata !1, i32 430, metadata !57, i32 0} ; [ DW_TAG_arg_variable ]
!502 = metadata !{i32 430, i32 0, metadata !99, null}
!503 = metadata !{i32 590081, metadata !99, metadata !"buf", metadata !1, i32 430, metadata !16, i32 0} ; [ DW_TAG_arg_variable ]
!504 = metadata !{i32 590080, metadata !505, metadata !"dfile", metadata !1, i32 431, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!505 = metadata !{i32 589835, metadata !99, i32 430, i32 0, metadata !1, i32 17} ; [ DW_TAG_lexical_block ]
!506 = metadata !{i32 431, i32 0, metadata !505, null}
!507 = metadata !{i32 432, i32 0, metadata !505, null}
!508 = metadata !{i32 433, i32 0, metadata !505, null}
!509 = metadata !{i32 434, i32 0, metadata !505, null}
!510 = metadata !{i32 590080, metadata !511, metadata !"r", metadata !1, i32 439, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!511 = metadata !{i32 589835, metadata !505, i32 439, i32 0, metadata !1, i32 18} ; [ DW_TAG_lexical_block ]
!512 = metadata !{i32 439, i32 0, metadata !511, null}
!513 = metadata !{i32 443, i32 0, metadata !511, null}
!514 = metadata !{i32 444, i32 0, metadata !511, null}
!515 = metadata !{i32 445, i32 0, metadata !511, null}
!516 = metadata !{i32 590081, metadata !102, metadata !"path", metadata !1, i32 449, metadata !57, i32 0} ; [ DW_TAG_arg_variable ]
!517 = metadata !{i32 449, i32 0, metadata !102, null}
!518 = metadata !{i32 590081, metadata !102, metadata !"buf", metadata !1, i32 449, metadata !16, i32 0} ; [ DW_TAG_arg_variable ]
!519 = metadata !{i32 590080, metadata !520, metadata !"dfile", metadata !1, i32 450, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!520 = metadata !{i32 589835, metadata !102, i32 449, i32 0, metadata !1, i32 19} ; [ DW_TAG_lexical_block ]
!521 = metadata !{i32 450, i32 0, metadata !520, null}
!522 = metadata !{i32 451, i32 0, metadata !520, null}
!523 = metadata !{i32 452, i32 0, metadata !520, null}
!524 = metadata !{i32 453, i32 0, metadata !520, null}
!525 = metadata !{i32 590080, metadata !526, metadata !"r", metadata !1, i32 458, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!526 = metadata !{i32 589835, metadata !520, i32 458, i32 0, metadata !1, i32 20} ; [ DW_TAG_lexical_block ]
!527 = metadata !{i32 458, i32 0, metadata !526, null}
!528 = metadata !{i32 462, i32 0, metadata !526, null}
!529 = metadata !{i32 463, i32 0, metadata !526, null}
!530 = metadata !{i32 464, i32 0, metadata !526, null}
!531 = metadata !{i32 590081, metadata !103, metadata !"path", metadata !1, i32 468, metadata !57, i32 0} ; [ DW_TAG_arg_variable ]
!532 = metadata !{i32 468, i32 0, metadata !103, null}
!533 = metadata !{i32 590080, metadata !534, metadata !"dfile", metadata !1, i32 469, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!534 = metadata !{i32 589835, metadata !103, i32 468, i32 0, metadata !1, i32 21} ; [ DW_TAG_lexical_block ]
!535 = metadata !{i32 469, i32 0, metadata !534, null}
!536 = metadata !{i32 471, i32 0, metadata !534, null}
!537 = metadata !{i32 473, i32 0, metadata !534, null}
!538 = metadata !{i32 474, i32 0, metadata !534, null}
!539 = metadata !{i32 475, i32 0, metadata !534, null}
!540 = metadata !{i32 590080, metadata !541, metadata !"r", metadata !1, i32 479, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!541 = metadata !{i32 589835, metadata !534, i32 479, i32 0, metadata !1, i32 22} ; [ DW_TAG_lexical_block ]
!542 = metadata !{i32 479, i32 0, metadata !541, null}
!543 = metadata !{i32 480, i32 0, metadata !541, null}
!544 = metadata !{i32 481, i32 0, metadata !541, null}
!545 = metadata !{i32 482, i32 0, metadata !541, null}
!546 = metadata !{i32 590081, metadata !106, metadata !"fd", metadata !1, i32 486, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!547 = metadata !{i32 486, i32 0, metadata !106, null}
!548 = metadata !{i32 590080, metadata !549, metadata !"f", metadata !1, i32 487, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!549 = metadata !{i32 589835, metadata !106, i32 486, i32 0, metadata !1, i32 23} ; [ DW_TAG_lexical_block ]
!550 = metadata !{i32 487, i32 0, metadata !549, null}
!551 = metadata !{i32 489, i32 0, metadata !549, null}
!552 = metadata !{i32 490, i32 0, metadata !549, null}
!553 = metadata !{i32 491, i32 0, metadata !549, null}
!554 = metadata !{i32 494, i32 0, metadata !549, null}
!555 = metadata !{i32 495, i32 0, metadata !549, null}
!556 = metadata !{i32 496, i32 0, metadata !549, null}
!557 = metadata !{i32 497, i32 0, metadata !549, null}
!558 = metadata !{i32 590080, metadata !559, metadata !"r", metadata !1, i32 499, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!559 = metadata !{i32 589835, metadata !549, i32 499, i32 0, metadata !1, i32 24} ; [ DW_TAG_lexical_block ]
!560 = metadata !{i32 499, i32 0, metadata !559, null}
!561 = metadata !{i32 500, i32 0, metadata !559, null}
!562 = metadata !{i32 501, i32 0, metadata !559, null}
!563 = metadata !{i32 502, i32 0, metadata !559, null}
!564 = metadata !{i32 590081, metadata !107, metadata !"df", metadata !1, i32 507, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!565 = metadata !{i32 507, i32 0, metadata !107, null}
!566 = metadata !{i32 590081, metadata !107, metadata !"mode", metadata !1, i32 507, metadata !84, i32 0} ; [ DW_TAG_arg_variable ]
!567 = metadata !{i32 508, i32 0, metadata !568, null}
!568 = metadata !{i32 589835, metadata !107, i32 507, i32 0, metadata !1, i32 25} ; [ DW_TAG_lexical_block ]
!569 = metadata !{i32 509, i32 0, metadata !568, null}
!570 = metadata !{i32 510, i32 0, metadata !568, null}
!571 = metadata !{i32 511, i32 0, metadata !568, null}
!572 = metadata !{i32 513, i32 0, metadata !568, null}
!573 = metadata !{i32 515, i32 0, metadata !568, null}
!574 = metadata !{i32 516, i32 0, metadata !568, null}
!575 = metadata !{i32 590081, metadata !110, metadata !"path", metadata !1, i32 520, metadata !57, i32 0} ; [ DW_TAG_arg_variable ]
!576 = metadata !{i32 520, i32 0, metadata !110, null}
!577 = metadata !{i32 590081, metadata !110, metadata !"mode", metadata !1, i32 520, metadata !84, i32 0} ; [ DW_TAG_arg_variable ]
!578 = metadata !{i32 590080, metadata !579, metadata !"dfile", metadata !1, i32 523, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!579 = metadata !{i32 589835, metadata !110, i32 520, i32 0, metadata !1, i32 26} ; [ DW_TAG_lexical_block ]
!580 = metadata !{i32 523, i32 0, metadata !579, null}
!581 = metadata !{i32 525, i32 0, metadata !579, null}
!582 = metadata !{i32 526, i32 0, metadata !579, null}
!583 = metadata !{i32 527, i32 0, metadata !579, null}
!584 = metadata !{i32 528, i32 0, metadata !579, null}
!585 = metadata !{i32 529, i32 0, metadata !579, null}
!586 = metadata !{i32 532, i32 0, metadata !579, null}
!587 = metadata !{i32 533, i32 0, metadata !579, null}
!588 = metadata !{i32 590080, metadata !589, metadata !"r", metadata !1, i32 535, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!589 = metadata !{i32 589835, metadata !579, i32 535, i32 0, metadata !1, i32 27} ; [ DW_TAG_lexical_block ]
!590 = metadata !{i32 535, i32 0, metadata !589, null}
!591 = metadata !{i32 536, i32 0, metadata !589, null}
!592 = metadata !{i32 537, i32 0, metadata !589, null}
!593 = metadata !{i32 538, i32 0, metadata !589, null}
!594 = metadata !{i32 590081, metadata !113, metadata !"fd", metadata !1, i32 542, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!595 = metadata !{i32 542, i32 0, metadata !113, null}
!596 = metadata !{i32 590081, metadata !113, metadata !"mode", metadata !1, i32 542, metadata !84, i32 0} ; [ DW_TAG_arg_variable ]
!597 = metadata !{i32 590080, metadata !598, metadata !"f", metadata !1, i32 545, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!598 = metadata !{i32 589835, metadata !113, i32 542, i32 0, metadata !1, i32 28} ; [ DW_TAG_lexical_block ]
!599 = metadata !{i32 545, i32 0, metadata !598, null}
!600 = metadata !{i32 547, i32 0, metadata !598, null}
!601 = metadata !{i32 548, i32 0, metadata !598, null}
!602 = metadata !{i32 549, i32 0, metadata !598, null}
!603 = metadata !{i32 552, i32 0, metadata !598, null}
!604 = metadata !{i32 553, i32 0, metadata !598, null}
!605 = metadata !{i32 554, i32 0, metadata !598, null}
!606 = metadata !{i32 555, i32 0, metadata !598, null}
!607 = metadata !{i32 556, i32 0, metadata !598, null}
!608 = metadata !{i32 559, i32 0, metadata !598, null}
!609 = metadata !{i32 560, i32 0, metadata !598, null}
!610 = metadata !{i32 590080, metadata !611, metadata !"r", metadata !1, i32 562, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!611 = metadata !{i32 589835, metadata !598, i32 562, i32 0, metadata !1, i32 29} ; [ DW_TAG_lexical_block ]
!612 = metadata !{i32 562, i32 0, metadata !611, null}
!613 = metadata !{i32 563, i32 0, metadata !611, null}
!614 = metadata !{i32 564, i32 0, metadata !611, null}
!615 = metadata !{i32 565, i32 0, metadata !611, null}
!616 = metadata !{i32 590081, metadata !116, metadata !"df", metadata !1, i32 569, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!617 = metadata !{i32 569, i32 0, metadata !116, null}
!618 = metadata !{i32 590081, metadata !116, metadata !"owner", metadata !1, i32 569, metadata !119, i32 0} ; [ DW_TAG_arg_variable ]
!619 = metadata !{i32 590081, metadata !116, metadata !"group", metadata !1, i32 569, metadata !120, i32 0} ; [ DW_TAG_arg_variable ]
!620 = metadata !{i32 570, i32 0, metadata !621, null}
!621 = metadata !{i32 589835, metadata !116, i32 569, i32 0, metadata !1, i32 30} ; [ DW_TAG_lexical_block ]
!622 = metadata !{i32 571, i32 0, metadata !621, null}
!623 = metadata !{i32 572, i32 0, metadata !621, null}
!624 = metadata !{i32 590081, metadata !121, metadata !"path", metadata !1, i32 575, metadata !57, i32 0} ; [ DW_TAG_arg_variable ]
!625 = metadata !{i32 575, i32 0, metadata !121, null}
!626 = metadata !{i32 590081, metadata !121, metadata !"owner", metadata !1, i32 575, metadata !119, i32 0} ; [ DW_TAG_arg_variable ]
!627 = metadata !{i32 590081, metadata !121, metadata !"group", metadata !1, i32 575, metadata !120, i32 0} ; [ DW_TAG_arg_variable ]
!628 = metadata !{i32 590080, metadata !629, metadata !"df", metadata !1, i32 576, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!629 = metadata !{i32 589835, metadata !121, i32 575, i32 0, metadata !1, i32 31} ; [ DW_TAG_lexical_block ]
!630 = metadata !{i32 576, i32 0, metadata !629, null}
!631 = metadata !{i32 578, i32 0, metadata !629, null}
!632 = metadata !{i32 579, i32 0, metadata !629, null}
!633 = metadata !{i32 590080, metadata !634, metadata !"r", metadata !1, i32 581, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!634 = metadata !{i32 589835, metadata !629, i32 581, i32 0, metadata !1, i32 32} ; [ DW_TAG_lexical_block ]
!635 = metadata !{i32 581, i32 0, metadata !634, null}
!636 = metadata !{i32 582, i32 0, metadata !634, null}
!637 = metadata !{i32 583, i32 0, metadata !634, null}
!638 = metadata !{i32 584, i32 0, metadata !634, null}
!639 = metadata !{i32 590081, metadata !124, metadata !"fd", metadata !1, i32 588, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!640 = metadata !{i32 588, i32 0, metadata !124, null}
!641 = metadata !{i32 590081, metadata !124, metadata !"owner", metadata !1, i32 588, metadata !119, i32 0} ; [ DW_TAG_arg_variable ]
!642 = metadata !{i32 590081, metadata !124, metadata !"group", metadata !1, i32 588, metadata !120, i32 0} ; [ DW_TAG_arg_variable ]
!643 = metadata !{i32 590080, metadata !644, metadata !"f", metadata !1, i32 589, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!644 = metadata !{i32 589835, metadata !124, i32 588, i32 0, metadata !1, i32 33} ; [ DW_TAG_lexical_block ]
!645 = metadata !{i32 589, i32 0, metadata !644, null}
!646 = metadata !{i32 591, i32 0, metadata !644, null}
!647 = metadata !{i32 592, i32 0, metadata !644, null}
!648 = metadata !{i32 593, i32 0, metadata !644, null}
!649 = metadata !{i32 596, i32 0, metadata !644, null}
!650 = metadata !{i32 597, i32 0, metadata !644, null}
!651 = metadata !{i32 590080, metadata !652, metadata !"r", metadata !1, i32 599, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!652 = metadata !{i32 589835, metadata !644, i32 599, i32 0, metadata !1, i32 34} ; [ DW_TAG_lexical_block ]
!653 = metadata !{i32 599, i32 0, metadata !652, null}
!654 = metadata !{i32 600, i32 0, metadata !652, null}
!655 = metadata !{i32 601, i32 0, metadata !652, null}
!656 = metadata !{i32 602, i32 0, metadata !652, null}
!657 = metadata !{i32 590081, metadata !127, metadata !"path", metadata !1, i32 606, metadata !57, i32 0} ; [ DW_TAG_arg_variable ]
!658 = metadata !{i32 606, i32 0, metadata !127, null}
!659 = metadata !{i32 590081, metadata !127, metadata !"owner", metadata !1, i32 606, metadata !119, i32 0} ; [ DW_TAG_arg_variable ]
!660 = metadata !{i32 590081, metadata !127, metadata !"group", metadata !1, i32 606, metadata !120, i32 0} ; [ DW_TAG_arg_variable ]
!661 = metadata !{i32 590080, metadata !662, metadata !"df", metadata !1, i32 608, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!662 = metadata !{i32 589835, metadata !127, i32 606, i32 0, metadata !1, i32 35} ; [ DW_TAG_lexical_block ]
!663 = metadata !{i32 608, i32 0, metadata !662, null}
!664 = metadata !{i32 610, i32 0, metadata !662, null}
!665 = metadata !{i32 611, i32 0, metadata !662, null}
!666 = metadata !{i32 590080, metadata !667, metadata !"r", metadata !1, i32 613, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!667 = metadata !{i32 589835, metadata !662, i32 613, i32 0, metadata !1, i32 36} ; [ DW_TAG_lexical_block ]
!668 = metadata !{i32 613, i32 0, metadata !667, null}
!669 = metadata !{i32 614, i32 0, metadata !667, null}
!670 = metadata !{i32 615, i32 0, metadata !667, null}
!671 = metadata !{i32 616, i32 0, metadata !667, null}
!672 = metadata !{i32 590081, metadata !128, metadata !"fd", metadata !1, i32 620, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!673 = metadata !{i32 620, i32 0, metadata !128, null}
!674 = metadata !{i32 590081, metadata !128, metadata !"buf", metadata !1, i32 620, metadata !16, i32 0} ; [ DW_TAG_arg_variable ]
!675 = metadata !{i32 590080, metadata !676, metadata !"f", metadata !1, i32 621, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!676 = metadata !{i32 589835, metadata !128, i32 620, i32 0, metadata !1, i32 37} ; [ DW_TAG_lexical_block ]
!677 = metadata !{i32 621, i32 0, metadata !676, null}
!678 = metadata !{i32 623, i32 0, metadata !676, null}
!679 = metadata !{i32 624, i32 0, metadata !676, null}
!680 = metadata !{i32 625, i32 0, metadata !676, null}
!681 = metadata !{i32 628, i32 0, metadata !676, null}
!682 = metadata !{i32 590080, metadata !683, metadata !"r", metadata !1, i32 630, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!683 = metadata !{i32 589835, metadata !676, i32 630, i32 0, metadata !1, i32 38} ; [ DW_TAG_lexical_block ]
!684 = metadata !{i32 630, i32 0, metadata !683, null}
!685 = metadata !{i32 634, i32 0, metadata !683, null}
!686 = metadata !{i32 635, i32 0, metadata !683, null}
!687 = metadata !{i32 636, i32 0, metadata !683, null}
!688 = metadata !{i32 639, i32 0, metadata !676, null}
!689 = metadata !{i32 640, i32 0, metadata !676, null}
!690 = metadata !{i32 590081, metadata !129, metadata !"fd", metadata !1, i32 643, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!691 = metadata !{i32 643, i32 0, metadata !129, null}
!692 = metadata !{i32 590081, metadata !129, metadata !"length", metadata !1, i32 643, metadata !69, i32 0} ; [ DW_TAG_arg_variable ]
!693 = metadata !{i32 590080, metadata !694, metadata !"f", metadata !1, i32 645, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!694 = metadata !{i32 589835, metadata !129, i32 643, i32 0, metadata !1, i32 39} ; [ DW_TAG_lexical_block ]
!695 = metadata !{i32 645, i32 0, metadata !694, null}
!696 = metadata !{i32 647, i32 0, metadata !694, null}
!697 = metadata !{i32 649, i32 0, metadata !694, null}
!698 = metadata !{i32 650, i32 0, metadata !694, null}
!699 = metadata !{i32 651, i32 0, metadata !694, null}
!700 = metadata !{i32 654, i32 0, metadata !694, null}
!701 = metadata !{i32 655, i32 0, metadata !694, null}
!702 = metadata !{i32 656, i32 0, metadata !694, null}
!703 = metadata !{i32 657, i32 0, metadata !694, null}
!704 = metadata !{i32 660, i32 0, metadata !694, null}
!705 = metadata !{i32 661, i32 0, metadata !694, null}
!706 = metadata !{i32 662, i32 0, metadata !694, null}
!707 = metadata !{i32 663, i32 0, metadata !694, null}
!708 = metadata !{i32 590080, metadata !709, metadata !"r", metadata !1, i32 666, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!709 = metadata !{i32 589835, metadata !694, i32 666, i32 0, metadata !1, i32 40} ; [ DW_TAG_lexical_block ]
!710 = metadata !{i32 666, i32 0, metadata !709, null}
!711 = metadata !{i32 670, i32 0, metadata !709, null}
!712 = metadata !{i32 671, i32 0, metadata !709, null}
!713 = metadata !{i32 672, i32 0, metadata !709, null}
!714 = metadata !{i32 590081, metadata !132, metadata !"fd", metadata !1, i32 676, metadata !11, i32 0} ; [ DW_TAG_arg_variable ]
!715 = metadata !{i32 676, i32 0, metadata !132, null}
!716 = metadata !{i32 590081, metadata !132, metadata !"dirp", metadata !1, i32 676, metadata !135, i32 0} ; [ DW_TAG_arg_variable ]
!717 = metadata !{i32 590081, metadata !132, metadata !"count", metadata !1, i32 676, metadata !11, i32 0} ; [ DW_TAG_arg_variable ]
!718 = metadata !{i32 590080, metadata !719, metadata !"f", metadata !1, i32 677, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!719 = metadata !{i32 589835, metadata !132, i32 676, i32 0, metadata !1, i32 41} ; [ DW_TAG_lexical_block ]
!720 = metadata !{i32 677, i32 0, metadata !719, null}
!721 = metadata !{i32 679, i32 0, metadata !719, null}
!722 = metadata !{i32 680, i32 0, metadata !719, null}
!723 = metadata !{i32 681, i32 0, metadata !719, null}
!724 = metadata !{i32 684, i32 0, metadata !719, null}
!725 = metadata !{i32 685, i32 0, metadata !719, null}
!726 = metadata !{i32 686, i32 0, metadata !719, null}
!727 = metadata !{i32 687, i32 0, metadata !719, null}
!728 = metadata !{i32 689, i32 0, metadata !719, null}
!729 = metadata !{i32 590080, metadata !730, metadata !"i", metadata !1, i32 691, metadata !11, i32 0} ; [ DW_TAG_auto_variable ]
!730 = metadata !{i32 589835, metadata !719, i32 691, i32 0, metadata !1, i32 42} ; [ DW_TAG_lexical_block ]
!731 = metadata !{i32 691, i32 0, metadata !730, null}
!732 = metadata !{i32 590080, metadata !730, metadata !"pad", metadata !1, i32 691, metadata !11, i32 0} ; [ DW_TAG_auto_variable ]
!733 = metadata !{i32 590080, metadata !730, metadata !"bytes", metadata !1, i32 691, metadata !11, i32 0} ; [ DW_TAG_auto_variable ]
!734 = metadata !{i32 694, i32 0, metadata !730, null}
!735 = metadata !{i32 695, i32 0, metadata !730, null}
!736 = metadata !{i32 697, i32 0, metadata !730, null}
!737 = metadata !{i32 698, i32 0, metadata !730, null}
!738 = metadata !{i32 590080, metadata !739, metadata !"df", metadata !1, i32 701, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!739 = metadata !{i32 589835, metadata !730, i32 701, i32 0, metadata !1, i32 43} ; [ DW_TAG_lexical_block ]
!740 = metadata !{i32 701, i32 0, metadata !739, null}
!741 = metadata !{i32 702, i32 0, metadata !739, null}
!742 = metadata !{i32 703, i32 0, metadata !739, null}
!743 = metadata !{i32 704, i32 0, metadata !739, null}
!744 = metadata !{i32 705, i32 0, metadata !739, null}
!745 = metadata !{i32 706, i32 0, metadata !739, null}
!746 = metadata !{i32 707, i32 0, metadata !739, null}
!747 = metadata !{i32 708, i32 0, metadata !739, null}
!748 = metadata !{i32 709, i32 0, metadata !739, null}
!749 = metadata !{i32 700, i32 0, metadata !730, null}
!750 = metadata !{i32 713, i32 0, metadata !730, null}
!751 = metadata !{i32 714, i32 0, metadata !730, null}
!752 = metadata !{i32 715, i32 0, metadata !730, null}
!753 = metadata !{i32 716, i32 0, metadata !730, null}
!754 = metadata !{i32 717, i32 0, metadata !730, null}
!755 = metadata !{i32 718, i32 0, metadata !730, null}
!756 = metadata !{i32 719, i32 0, metadata !730, null}
!757 = metadata !{i32 720, i32 0, metadata !730, null}
!758 = metadata !{i32 721, i32 0, metadata !730, null}
!759 = metadata !{i32 590080, metadata !760, metadata !"os_pos", metadata !1, i32 723, metadata !11, i32 0} ; [ DW_TAG_auto_variable ]
!760 = metadata !{i32 589835, metadata !719, i32 723, i32 0, metadata !1, i32 44} ; [ DW_TAG_lexical_block ]
!761 = metadata !{i32 723, i32 0, metadata !760, null}
!762 = metadata !{i32 590080, metadata !760, metadata !"res", metadata !1, i32 724, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!763 = metadata !{i32 724, i32 0, metadata !760, null}
!764 = metadata !{i32 590080, metadata !760, metadata !"s", metadata !1, i32 724, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!765 = metadata !{i32 733, i32 0, metadata !760, null}
!766 = metadata !{i32 734, i32 0, metadata !760, null}
!767 = metadata !{i32 735, i32 0, metadata !760, null}
!768 = metadata !{i32 736, i32 0, metadata !760, null}
!769 = metadata !{i32 737, i32 0, metadata !760, null}
!770 = metadata !{i32 738, i32 0, metadata !760, null}
!771 = metadata !{i32 590080, metadata !772, metadata !"pos", metadata !1, i32 740, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!772 = metadata !{i32 589835, metadata !760, i32 740, i32 0, metadata !1, i32 45} ; [ DW_TAG_lexical_block ]
!773 = metadata !{i32 740, i32 0, metadata !772, null}
!774 = metadata !{i32 742, i32 0, metadata !772, null}
!775 = metadata !{i32 590080, metadata !776, metadata !"dp", metadata !1, i32 747, metadata !135, i32 0} ; [ DW_TAG_auto_variable ]
!776 = metadata !{i32 589835, metadata !772, i32 747, i32 0, metadata !1, i32 46} ; [ DW_TAG_lexical_block ]
!777 = metadata !{i32 747, i32 0, metadata !776, null}
!778 = metadata !{i32 748, i32 0, metadata !776, null}
!779 = metadata !{i32 749, i32 0, metadata !776, null}
!780 = metadata !{i32 746, i32 0, metadata !772, null}
!781 = metadata !{i32 752, i32 0, metadata !760, null}
!782 = metadata !{i32 590081, metadata !150, metadata !"fd", metadata !1, i32 758, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!783 = metadata !{i32 758, i32 0, metadata !150, null}
!784 = metadata !{i32 590081, metadata !150, metadata !"request", metadata !1, i32 758, metadata !23, i32 0} ; [ DW_TAG_arg_variable ]
!785 = metadata !{i32 590080, metadata !786, metadata !"f", metadata !1, i32 762, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!786 = metadata !{i32 589835, metadata !150, i32 758, i32 0, metadata !1, i32 47} ; [ DW_TAG_lexical_block ]
!787 = metadata !{i32 762, i32 0, metadata !786, null}
!788 = metadata !{i32 590080, metadata !786, metadata !"ap", metadata !1, i32 763, metadata !789, i32 0} ; [ DW_TAG_auto_variable ]
!789 = metadata !{i32 589846, metadata !790, metadata !"va_list", metadata !790, i32 80, i64 0, i64 0, i64 0, i32 0, metadata !791} ; [ DW_TAG_typedef ]
!790 = metadata !{i32 589865, metadata !"stdio.h", metadata !"/usr/include", metadata !2} ; [ DW_TAG_file_type ]
!791 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 192, i64 64, i64 0, i32 0, metadata !792, metadata !799, i32 0, null} ; [ DW_TAG_array_type ]
!792 = metadata !{i32 589843, metadata !1, metadata !"__va_list_tag", metadata !793, i32 0, i64 192, i64 64, i64 0, i32 0, null, metadata !794, i32 0, null} ; [ DW_TAG_structure_type ]
!793 = metadata !{i32 589865, metadata !"<built-in>", metadata !"/home/tyu/Documents/bugredx/klee2.9/runtime/POSIX/", metadata !2} ; [ DW_TAG_file_type ]
!794 = metadata !{metadata !795, metadata !796, metadata !797, metadata !798}
!795 = metadata !{i32 589837, metadata !792, metadata !"gp_offset", metadata !793, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_member ]
!796 = metadata !{i32 589837, metadata !792, metadata !"fp_offset", metadata !793, i32 0, i64 32, i64 32, i64 32, i32 0, metadata !11} ; [ DW_TAG_member ]
!797 = metadata !{i32 589837, metadata !792, metadata !"overflow_arg_area", metadata !793, i32 0, i64 64, i64 64, i64 64, i32 0, metadata !92} ; [ DW_TAG_member ]
!798 = metadata !{i32 589837, metadata !792, metadata !"reg_save_area", metadata !793, i32 0, i64 64, i64 64, i64 128, i32 0, metadata !92} ; [ DW_TAG_member ]
!799 = metadata !{metadata !800}
!800 = metadata !{i32 589857, i64 0, i64 0}       ; [ DW_TAG_subrange_type ]
!801 = metadata !{i32 763, i32 0, metadata !786, null}
!802 = metadata !{i32 590080, metadata !786, metadata !"buf", metadata !1, i32 764, metadata !92, i32 0} ; [ DW_TAG_auto_variable ]
!803 = metadata !{i32 764, i32 0, metadata !786, null}
!804 = metadata !{i32 770, i32 0, metadata !786, null}
!805 = metadata !{i32 771, i32 0, metadata !786, null}
!806 = metadata !{i32 772, i32 0, metadata !786, null}
!807 = metadata !{i32 775, i32 0, metadata !786, null}
!808 = metadata !{i32 776, i32 0, metadata !786, null}
!809 = metadata !{i32 777, i32 0, metadata !786, null}
!810 = metadata !{i32 779, i32 0, metadata !786, null}
!811 = metadata !{i32 590080, metadata !812, metadata !"stat", metadata !1, i32 780, metadata !813, i32 0} ; [ DW_TAG_auto_variable ]
!812 = metadata !{i32 589835, metadata !786, i32 780, i32 0, metadata !1, i32 48} ; [ DW_TAG_lexical_block ]
!813 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !814} ; [ DW_TAG_pointer_type ]
!814 = metadata !{i32 589843, metadata !1, metadata !"stat", metadata !20, i32 47, i64 1152, i64 64, i64 0, i32 0, null, metadata !815, i32 0, null} ; [ DW_TAG_structure_type ]
!815 = metadata !{metadata !816, metadata !817, metadata !819, metadata !820, metadata !821, metadata !822, metadata !823, metadata !824, metadata !825, metadata !826, metadata !827, metadata !829, metadata !830, metadata !831, metadata !832}
!816 = metadata !{i32 589837, metadata !814, metadata !"st_dev", metadata !20, i32 48, i64 64, i64 64, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ]
!817 = metadata !{i32 589837, metadata !814, metadata !"st_ino", metadata !20, i32 53, i64 64, i64 64, i64 64, i32 0, metadata !818} ; [ DW_TAG_member ]
!818 = metadata !{i32 589846, metadata !22, metadata !"__ino_t", metadata !22, i32 137, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ]
!819 = metadata !{i32 589837, metadata !814, metadata !"st_nlink", metadata !20, i32 61, i64 64, i64 64, i64 128, i32 0, metadata !27} ; [ DW_TAG_member ]
!820 = metadata !{i32 589837, metadata !814, metadata !"st_mode", metadata !20, i32 62, i64 32, i64 32, i64 192, i32 0, metadata !29} ; [ DW_TAG_member ]
!821 = metadata !{i32 589837, metadata !814, metadata !"st_uid", metadata !20, i32 64, i64 32, i64 32, i64 224, i32 0, metadata !31} ; [ DW_TAG_member ]
!822 = metadata !{i32 589837, metadata !814, metadata !"st_gid", metadata !20, i32 65, i64 32, i64 32, i64 256, i32 0, metadata !33} ; [ DW_TAG_member ]
!823 = metadata !{i32 589837, metadata !814, metadata !"__pad0", metadata !20, i32 67, i64 32, i64 32, i64 288, i32 0, metadata !35} ; [ DW_TAG_member ]
!824 = metadata !{i32 589837, metadata !814, metadata !"st_rdev", metadata !20, i32 69, i64 64, i64 64, i64 320, i32 0, metadata !21} ; [ DW_TAG_member ]
!825 = metadata !{i32 589837, metadata !814, metadata !"st_size", metadata !20, i32 74, i64 64, i64 64, i64 384, i32 0, metadata !38} ; [ DW_TAG_member ]
!826 = metadata !{i32 589837, metadata !814, metadata !"st_blksize", metadata !20, i32 78, i64 64, i64 64, i64 448, i32 0, metadata !41} ; [ DW_TAG_member ]
!827 = metadata !{i32 589837, metadata !814, metadata !"st_blocks", metadata !20, i32 80, i64 64, i64 64, i64 512, i32 0, metadata !828} ; [ DW_TAG_member ]
!828 = metadata !{i32 589846, metadata !22, metadata !"__blkcnt_t", metadata !22, i32 169, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ]
!829 = metadata !{i32 589837, metadata !814, metadata !"st_atim", metadata !20, i32 91, i64 128, i64 64, i64 576, i32 0, metadata !45} ; [ DW_TAG_member ]
!830 = metadata !{i32 589837, metadata !814, metadata !"st_mtim", metadata !20, i32 92, i64 128, i64 64, i64 704, i32 0, metadata !45} ; [ DW_TAG_member ]
!831 = metadata !{i32 589837, metadata !814, metadata !"st_ctim", metadata !20, i32 93, i64 128, i64 64, i64 832, i32 0, metadata !45} ; [ DW_TAG_member ]
!832 = metadata !{i32 589837, metadata !814, metadata !"__unused", metadata !20, i32 106, i64 192, i64 64, i64 960, i32 0, metadata !54} ; [ DW_TAG_member ]
!833 = metadata !{i32 780, i32 0, metadata !812, null}
!834 = metadata !{i32 782, i32 0, metadata !812, null}
!835 = metadata !{i32 590080, metadata !836, metadata !"ts", metadata !1, i32 784, metadata !837, i32 0} ; [ DW_TAG_auto_variable ]
!836 = metadata !{i32 589835, metadata !812, i32 784, i32 0, metadata !1, i32 49} ; [ DW_TAG_lexical_block ]
!837 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !838} ; [ DW_TAG_pointer_type ]
!838 = metadata !{i32 589843, metadata !1, metadata !"termios", metadata !839, i32 30, i64 480, i64 32, i64 0, i32 0, null, metadata !840, i32 0, null} ; [ DW_TAG_structure_type ]
!839 = metadata !{i32 589865, metadata !"termios.h", metadata !"/usr/include/bits", metadata !2} ; [ DW_TAG_file_type ]
!840 = metadata !{metadata !841, metadata !843, metadata !844, metadata !845, metadata !846, metadata !848, metadata !852, metadata !854}
!841 = metadata !{i32 589837, metadata !838, metadata !"c_iflag", metadata !839, i32 31, i64 32, i64 32, i64 0, i32 0, metadata !842} ; [ DW_TAG_member ]
!842 = metadata !{i32 589846, metadata !839, metadata !"tcflag_t", metadata !839, i32 26, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!843 = metadata !{i32 589837, metadata !838, metadata !"c_oflag", metadata !839, i32 32, i64 32, i64 32, i64 32, i32 0, metadata !842} ; [ DW_TAG_member ]
!844 = metadata !{i32 589837, metadata !838, metadata !"c_cflag", metadata !839, i32 33, i64 32, i64 32, i64 64, i32 0, metadata !842} ; [ DW_TAG_member ]
!845 = metadata !{i32 589837, metadata !838, metadata !"c_lflag", metadata !839, i32 34, i64 32, i64 32, i64 96, i32 0, metadata !842} ; [ DW_TAG_member ]
!846 = metadata !{i32 589837, metadata !838, metadata !"c_line", metadata !839, i32 35, i64 8, i64 8, i64 128, i32 0, metadata !847} ; [ DW_TAG_member ]
!847 = metadata !{i32 589846, metadata !839, metadata !"cc_t", metadata !839, i32 24, i64 0, i64 0, i64 0, i32 0, metadata !145} ; [ DW_TAG_typedef ]
!848 = metadata !{i32 589837, metadata !838, metadata !"c_cc", metadata !839, i32 36, i64 256, i64 8, i64 136, i32 0, metadata !849} ; [ DW_TAG_member ]
!849 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 256, i64 8, i64 0, i32 0, metadata !847, metadata !850, i32 0, null} ; [ DW_TAG_array_type ]
!850 = metadata !{metadata !851}
!851 = metadata !{i32 589857, i64 0, i64 31}      ; [ DW_TAG_subrange_type ]
!852 = metadata !{i32 589837, metadata !838, metadata !"c_ispeed", metadata !839, i32 37, i64 32, i64 32, i64 416, i32 0, metadata !853} ; [ DW_TAG_member ]
!853 = metadata !{i32 589846, metadata !839, metadata !"speed_t", metadata !839, i32 25, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!854 = metadata !{i32 589837, metadata !838, metadata !"c_ospeed", metadata !839, i32 38, i64 32, i64 32, i64 448, i32 0, metadata !853} ; [ DW_TAG_member ]
!855 = metadata !{i32 784, i32 0, metadata !836, null}
!856 = metadata !{i32 786, i32 0, metadata !836, null}
!857 = metadata !{i32 789, i32 0, metadata !836, null}
!858 = metadata !{i32 792, i32 0, metadata !836, null}
!859 = metadata !{i32 793, i32 0, metadata !836, null}
!860 = metadata !{i32 794, i32 0, metadata !836, null}
!861 = metadata !{i32 795, i32 0, metadata !836, null}
!862 = metadata !{i32 796, i32 0, metadata !836, null}
!863 = metadata !{i32 797, i32 0, metadata !836, null}
!864 = metadata !{i32 798, i32 0, metadata !836, null}
!865 = metadata !{i32 799, i32 0, metadata !836, null}
!866 = metadata !{i32 800, i32 0, metadata !836, null}
!867 = metadata !{i32 801, i32 0, metadata !836, null}
!868 = metadata !{i32 802, i32 0, metadata !836, null}
!869 = metadata !{i32 803, i32 0, metadata !836, null}
!870 = metadata !{i32 804, i32 0, metadata !836, null}
!871 = metadata !{i32 805, i32 0, metadata !836, null}
!872 = metadata !{i32 806, i32 0, metadata !836, null}
!873 = metadata !{i32 807, i32 0, metadata !836, null}
!874 = metadata !{i32 808, i32 0, metadata !836, null}
!875 = metadata !{i32 809, i32 0, metadata !836, null}
!876 = metadata !{i32 810, i32 0, metadata !836, null}
!877 = metadata !{i32 811, i32 0, metadata !836, null}
!878 = metadata !{i32 812, i32 0, metadata !836, null}
!879 = metadata !{i32 813, i32 0, metadata !836, null}
!880 = metadata !{i32 814, i32 0, metadata !836, null}
!881 = metadata !{i32 815, i32 0, metadata !836, null}
!882 = metadata !{i32 816, i32 0, metadata !836, null}
!883 = metadata !{i32 818, i32 0, metadata !836, null}
!884 = metadata !{i32 819, i32 0, metadata !836, null}
!885 = metadata !{i32 824, i32 0, metadata !812, null}
!886 = metadata !{i32 825, i32 0, metadata !812, null}
!887 = metadata !{i32 826, i32 0, metadata !812, null}
!888 = metadata !{i32 828, i32 0, metadata !812, null}
!889 = metadata !{i32 829, i32 0, metadata !812, null}
!890 = metadata !{i32 834, i32 0, metadata !812, null}
!891 = metadata !{i32 835, i32 0, metadata !812, null}
!892 = metadata !{i32 836, i32 0, metadata !812, null}
!893 = metadata !{i32 838, i32 0, metadata !812, null}
!894 = metadata !{i32 839, i32 0, metadata !812, null}
!895 = metadata !{i32 844, i32 0, metadata !812, null}
!896 = metadata !{i32 845, i32 0, metadata !812, null}
!897 = metadata !{i32 846, i32 0, metadata !812, null}
!898 = metadata !{i32 848, i32 0, metadata !812, null}
!899 = metadata !{i32 849, i32 0, metadata !812, null}
!900 = metadata !{i32 590080, metadata !901, metadata !"ws", metadata !1, i32 853, metadata !902, i32 0} ; [ DW_TAG_auto_variable ]
!901 = metadata !{i32 589835, metadata !812, i32 853, i32 0, metadata !1, i32 50} ; [ DW_TAG_lexical_block ]
!902 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !903} ; [ DW_TAG_pointer_type ]
!903 = metadata !{i32 589843, metadata !1, metadata !"winsize", metadata !904, i32 29, i64 64, i64 16, i64 0, i32 0, null, metadata !905, i32 0, null} ; [ DW_TAG_structure_type ]
!904 = metadata !{i32 589865, metadata !"ioctl-types.h", metadata !"/usr/include/bits", metadata !2} ; [ DW_TAG_file_type ]
!905 = metadata !{metadata !906, metadata !907, metadata !908, metadata !909}
!906 = metadata !{i32 589837, metadata !903, metadata !"ws_row", metadata !904, i32 30, i64 16, i64 16, i64 0, i32 0, metadata !143} ; [ DW_TAG_member ]
!907 = metadata !{i32 589837, metadata !903, metadata !"ws_col", metadata !904, i32 31, i64 16, i64 16, i64 16, i32 0, metadata !143} ; [ DW_TAG_member ]
!908 = metadata !{i32 589837, metadata !903, metadata !"ws_xpixel", metadata !904, i32 32, i64 16, i64 16, i64 32, i32 0, metadata !143} ; [ DW_TAG_member ]
!909 = metadata !{i32 589837, metadata !903, metadata !"ws_ypixel", metadata !904, i32 33, i64 16, i64 16, i64 48, i32 0, metadata !143} ; [ DW_TAG_member ]
!910 = metadata !{i32 853, i32 0, metadata !901, null}
!911 = metadata !{i32 854, i32 0, metadata !901, null}
!912 = metadata !{i32 855, i32 0, metadata !901, null}
!913 = metadata !{i32 856, i32 0, metadata !901, null}
!914 = metadata !{i32 857, i32 0, metadata !901, null}
!915 = metadata !{i32 858, i32 0, metadata !901, null}
!916 = metadata !{i32 860, i32 0, metadata !901, null}
!917 = metadata !{i32 861, i32 0, metadata !901, null}
!918 = metadata !{i32 866, i32 0, metadata !812, null}
!919 = metadata !{i32 867, i32 0, metadata !812, null}
!920 = metadata !{i32 868, i32 0, metadata !812, null}
!921 = metadata !{i32 869, i32 0, metadata !812, null}
!922 = metadata !{i32 871, i32 0, metadata !812, null}
!923 = metadata !{i32 872, i32 0, metadata !812, null}
!924 = metadata !{i32 590080, metadata !925, metadata !"res", metadata !1, i32 876, metadata !926, i32 0} ; [ DW_TAG_auto_variable ]
!925 = metadata !{i32 589835, metadata !812, i32 876, i32 0, metadata !1, i32 51} ; [ DW_TAG_lexical_block ]
!926 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !35} ; [ DW_TAG_pointer_type ]
!927 = metadata !{i32 876, i32 0, metadata !925, null}
!928 = metadata !{i32 877, i32 0, metadata !925, null}
!929 = metadata !{i32 878, i32 0, metadata !925, null}
!930 = metadata !{i32 879, i32 0, metadata !925, null}
!931 = metadata !{i32 880, i32 0, metadata !925, null}
!932 = metadata !{i32 882, i32 0, metadata !925, null}
!933 = metadata !{i32 884, i32 0, metadata !925, null}
!934 = metadata !{i32 886, i32 0, metadata !925, null}
!935 = metadata !{i32 887, i32 0, metadata !925, null}
!936 = metadata !{i32 891, i32 0, metadata !812, null}
!937 = metadata !{i32 892, i32 0, metadata !812, null}
!938 = metadata !{i32 893, i32 0, metadata !812, null}
!939 = metadata !{i32 896, i32 0, metadata !812, null}
!940 = metadata !{i32 897, i32 0, metadata !812, null}
!941 = metadata !{i32 898, i32 0, metadata !812, null}
!942 = metadata !{i32 590080, metadata !943, metadata !"r", metadata !1, i32 901, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!943 = metadata !{i32 589835, metadata !786, i32 901, i32 0, metadata !1, i32 52} ; [ DW_TAG_lexical_block ]
!944 = metadata !{i32 901, i32 0, metadata !943, null}
!945 = metadata !{i32 902, i32 0, metadata !943, null}
!946 = metadata !{i32 903, i32 0, metadata !943, null}
!947 = metadata !{i32 904, i32 0, metadata !943, null}
!948 = metadata !{i32 590081, metadata !153, metadata !"fd", metadata !1, i32 908, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!949 = metadata !{i32 908, i32 0, metadata !153, null}
!950 = metadata !{i32 590081, metadata !153, metadata !"cmd", metadata !1, i32 908, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!951 = metadata !{i32 590080, metadata !952, metadata !"f", metadata !1, i32 909, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!952 = metadata !{i32 589835, metadata !153, i32 908, i32 0, metadata !1, i32 53} ; [ DW_TAG_lexical_block ]
!953 = metadata !{i32 909, i32 0, metadata !952, null}
!954 = metadata !{i32 590080, metadata !952, metadata !"ap", metadata !1, i32 910, metadata !789, i32 0} ; [ DW_TAG_auto_variable ]
!955 = metadata !{i32 910, i32 0, metadata !952, null}
!956 = metadata !{i32 590080, metadata !952, metadata !"arg", metadata !1, i32 911, metadata !11, i32 0} ; [ DW_TAG_auto_variable ]
!957 = metadata !{i32 911, i32 0, metadata !952, null}
!958 = metadata !{i32 913, i32 0, metadata !952, null}
!959 = metadata !{i32 914, i32 0, metadata !952, null}
!960 = metadata !{i32 915, i32 0, metadata !952, null}
!961 = metadata !{i32 918, i32 0, metadata !952, null}
!962 = metadata !{i32 920, i32 0, metadata !952, null}
!963 = metadata !{i32 922, i32 0, metadata !952, null}
!964 = metadata !{i32 923, i32 0, metadata !952, null}
!965 = metadata !{i32 924, i32 0, metadata !952, null}
!966 = metadata !{i32 927, i32 0, metadata !952, null}
!967 = metadata !{i32 928, i32 0, metadata !952, null}
!968 = metadata !{i32 590080, metadata !969, metadata !"flags", metadata !1, i32 930, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!969 = metadata !{i32 589835, metadata !952, i32 930, i32 0, metadata !1, i32 54} ; [ DW_TAG_lexical_block ]
!970 = metadata !{i32 930, i32 0, metadata !969, null}
!971 = metadata !{i32 931, i32 0, metadata !969, null}
!972 = metadata !{i32 932, i32 0, metadata !969, null}
!973 = metadata !{i32 933, i32 0, metadata !969, null}
!974 = metadata !{i32 936, i32 0, metadata !952, null}
!975 = metadata !{i32 937, i32 0, metadata !952, null}
!976 = metadata !{i32 938, i32 0, metadata !952, null}
!977 = metadata !{i32 939, i32 0, metadata !952, null}
!978 = metadata !{i32 948, i32 0, metadata !952, null}
!979 = metadata !{i32 951, i32 0, metadata !952, null}
!980 = metadata !{i32 952, i32 0, metadata !952, null}
!981 = metadata !{i32 953, i32 0, metadata !952, null}
!982 = metadata !{i32 590080, metadata !983, metadata !"r", metadata !1, i32 956, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!983 = metadata !{i32 589835, metadata !952, i32 956, i32 0, metadata !1, i32 55} ; [ DW_TAG_lexical_block ]
!984 = metadata !{i32 956, i32 0, metadata !983, null}
!985 = metadata !{i32 957, i32 0, metadata !983, null}
!986 = metadata !{i32 958, i32 0, metadata !983, null}
!987 = metadata !{i32 959, i32 0, metadata !983, null}
!988 = metadata !{i32 590081, metadata !156, metadata !"path", metadata !1, i32 963, metadata !57, i32 0} ; [ DW_TAG_arg_variable ]
!989 = metadata !{i32 963, i32 0, metadata !156, null}
!990 = metadata !{i32 590081, metadata !156, metadata !"buf", metadata !1, i32 963, metadata !159, i32 0} ; [ DW_TAG_arg_variable ]
!991 = metadata !{i32 590080, metadata !992, metadata !"dfile", metadata !1, i32 964, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!992 = metadata !{i32 589835, metadata !156, i32 963, i32 0, metadata !1, i32 56} ; [ DW_TAG_lexical_block ]
!993 = metadata !{i32 964, i32 0, metadata !992, null}
!994 = metadata !{i32 965, i32 0, metadata !992, null}
!995 = metadata !{i32 967, i32 0, metadata !992, null}
!996 = metadata !{i32 968, i32 0, metadata !992, null}
!997 = metadata !{i32 969, i32 0, metadata !992, null}
!998 = metadata !{i32 590080, metadata !999, metadata !"r", metadata !1, i32 973, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!999 = metadata !{i32 589835, metadata !992, i32 973, i32 0, metadata !1, i32 57} ; [ DW_TAG_lexical_block ]
!1000 = metadata !{i32 973, i32 0, metadata !999, null}
!1001 = metadata !{i32 974, i32 0, metadata !999, null}
!1002 = metadata !{i32 975, i32 0, metadata !999, null}
!1003 = metadata !{i32 976, i32 0, metadata !999, null}
!1004 = metadata !{i32 590081, metadata !187, metadata !"fd", metadata !1, i32 980, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!1005 = metadata !{i32 980, i32 0, metadata !187, null}
!1006 = metadata !{i32 590081, metadata !187, metadata !"buf", metadata !1, i32 980, metadata !159, i32 0} ; [ DW_TAG_arg_variable ]
!1007 = metadata !{i32 590080, metadata !1008, metadata !"f", metadata !1, i32 981, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!1008 = metadata !{i32 589835, metadata !187, i32 980, i32 0, metadata !1, i32 58} ; [ DW_TAG_lexical_block ]
!1009 = metadata !{i32 981, i32 0, metadata !1008, null}
!1010 = metadata !{i32 983, i32 0, metadata !1008, null}
!1011 = metadata !{i32 984, i32 0, metadata !1008, null}
!1012 = metadata !{i32 985, i32 0, metadata !1008, null}
!1013 = metadata !{i32 988, i32 0, metadata !1008, null}
!1014 = metadata !{i32 989, i32 0, metadata !1008, null}
!1015 = metadata !{i32 990, i32 0, metadata !1008, null}
!1016 = metadata !{i32 991, i32 0, metadata !1008, null}
!1017 = metadata !{i32 590080, metadata !1018, metadata !"r", metadata !1, i32 993, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!1018 = metadata !{i32 589835, metadata !1008, i32 993, i32 0, metadata !1, i32 59} ; [ DW_TAG_lexical_block ]
!1019 = metadata !{i32 993, i32 0, metadata !1018, null}
!1020 = metadata !{i32 994, i32 0, metadata !1018, null}
!1021 = metadata !{i32 995, i32 0, metadata !1018, null}
!1022 = metadata !{i32 996, i32 0, metadata !1018, null}
!1023 = metadata !{i32 590081, metadata !190, metadata !"fd", metadata !1, i32 1000, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!1024 = metadata !{i32 1000, i32 0, metadata !190, null}
!1025 = metadata !{i32 590080, metadata !1026, metadata !"f", metadata !1, i32 1001, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!1026 = metadata !{i32 589835, metadata !190, i32 1000, i32 0, metadata !1, i32 60} ; [ DW_TAG_lexical_block ]
!1027 = metadata !{i32 1001, i32 0, metadata !1026, null}
!1028 = metadata !{i32 1003, i32 0, metadata !1026, null}
!1029 = metadata !{i32 1004, i32 0, metadata !1026, null}
!1030 = metadata !{i32 1005, i32 0, metadata !1026, null}
!1031 = metadata !{i32 1006, i32 0, metadata !1026, null}
!1032 = metadata !{i32 1007, i32 0, metadata !1026, null}
!1033 = metadata !{i32 590080, metadata !1034, metadata !"r", metadata !1, i32 1009, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!1034 = metadata !{i32 589835, metadata !1026, i32 1009, i32 0, metadata !1, i32 61} ; [ DW_TAG_lexical_block ]
!1035 = metadata !{i32 1009, i32 0, metadata !1034, null}
!1036 = metadata !{i32 1010, i32 0, metadata !1034, null}
!1037 = metadata !{i32 1011, i32 0, metadata !1034, null}
!1038 = metadata !{i32 1012, i32 0, metadata !1034, null}
!1039 = metadata !{i32 590081, metadata !191, metadata !"oldfd", metadata !1, i32 1016, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!1040 = metadata !{i32 1016, i32 0, metadata !191, null}
!1041 = metadata !{i32 590081, metadata !191, metadata !"newfd", metadata !1, i32 1016, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!1042 = metadata !{i32 590080, metadata !1043, metadata !"f", metadata !1, i32 1017, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!1043 = metadata !{i32 589835, metadata !191, i32 1016, i32 0, metadata !1, i32 62} ; [ DW_TAG_lexical_block ]
!1044 = metadata !{i32 1017, i32 0, metadata !1043, null}
!1045 = metadata !{i32 1019, i32 0, metadata !1043, null}
!1046 = metadata !{i32 1020, i32 0, metadata !1043, null}
!1047 = metadata !{i32 1021, i32 0, metadata !1043, null}
!1048 = metadata !{i32 590080, metadata !1049, metadata !"f2", metadata !1, i32 1023, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!1049 = metadata !{i32 589835, metadata !1043, i32 1023, i32 0, metadata !1, i32 63} ; [ DW_TAG_lexical_block ]
!1050 = metadata !{i32 1023, i32 0, metadata !1049, null}
!1051 = metadata !{i32 1024, i32 0, metadata !1049, null}
!1052 = metadata !{i32 1028, i32 0, metadata !1049, null}
!1053 = metadata !{i32 1030, i32 0, metadata !1049, null}
!1054 = metadata !{i32 1037, i32 0, metadata !1049, null}
!1055 = metadata !{i32 590081, metadata !192, metadata !"oldfd", metadata !1, i32 1041, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!1056 = metadata !{i32 1041, i32 0, metadata !192, null}
!1057 = metadata !{i32 590080, metadata !1058, metadata !"f", metadata !1, i32 1042, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!1058 = metadata !{i32 589835, metadata !192, i32 1041, i32 0, metadata !1, i32 64} ; [ DW_TAG_lexical_block ]
!1059 = metadata !{i32 1042, i32 0, metadata !1058, null}
!1060 = metadata !{i32 1043, i32 0, metadata !1058, null}
!1061 = metadata !{i32 1044, i32 0, metadata !1058, null}
!1062 = metadata !{i32 1045, i32 0, metadata !1058, null}
!1063 = metadata !{i32 590080, metadata !1064, metadata !"fd", metadata !1, i32 1047, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!1064 = metadata !{i32 589835, metadata !1058, i32 1048, i32 0, metadata !1, i32 65} ; [ DW_TAG_lexical_block ]
!1065 = metadata !{i32 1047, i32 0, metadata !1064, null}
!1066 = metadata !{i32 1048, i32 0, metadata !1064, null}
!1067 = metadata !{i32 1049, i32 0, metadata !1064, null}
!1068 = metadata !{i32 1051, i32 0, metadata !1064, null}
!1069 = metadata !{i32 1052, i32 0, metadata !1064, null}
!1070 = metadata !{i32 1053, i32 0, metadata !1064, null}
!1071 = metadata !{i32 1055, i32 0, metadata !1064, null}
!1072 = metadata !{i32 590081, metadata !193, metadata !"pathname", metadata !1, i32 1060, metadata !57, i32 0} ; [ DW_TAG_arg_variable ]
!1073 = metadata !{i32 1060, i32 0, metadata !193, null}
!1074 = metadata !{i32 590080, metadata !1075, metadata !"dfile", metadata !1, i32 1061, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!1075 = metadata !{i32 589835, metadata !193, i32 1060, i32 0, metadata !1, i32 66} ; [ DW_TAG_lexical_block ]
!1076 = metadata !{i32 1061, i32 0, metadata !1075, null}
!1077 = metadata !{i32 1062, i32 0, metadata !1075, null}
!1078 = metadata !{i32 1064, i32 0, metadata !1075, null}
!1079 = metadata !{i32 1065, i32 0, metadata !1075, null}
!1080 = metadata !{i32 1066, i32 0, metadata !1075, null}
!1081 = metadata !{i32 1068, i32 0, metadata !1075, null}
!1082 = metadata !{i32 1069, i32 0, metadata !1075, null}
!1083 = metadata !{i32 1073, i32 0, metadata !1075, null}
!1084 = metadata !{i32 1074, i32 0, metadata !1075, null}
!1085 = metadata !{i32 1075, i32 0, metadata !1075, null}
!1086 = metadata !{i32 590081, metadata !194, metadata !"pathname", metadata !1, i32 1078, metadata !57, i32 0} ; [ DW_TAG_arg_variable ]
!1087 = metadata !{i32 1078, i32 0, metadata !194, null}
!1088 = metadata !{i32 590080, metadata !1089, metadata !"dfile", metadata !1, i32 1079, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!1089 = metadata !{i32 589835, metadata !194, i32 1078, i32 0, metadata !1, i32 67} ; [ DW_TAG_lexical_block ]
!1090 = metadata !{i32 1079, i32 0, metadata !1089, null}
!1091 = metadata !{i32 1080, i32 0, metadata !1089, null}
!1092 = metadata !{i32 1082, i32 0, metadata !1089, null}
!1093 = metadata !{i32 1083, i32 0, metadata !1089, null}
!1094 = metadata !{i32 1084, i32 0, metadata !1089, null}
!1095 = metadata !{i32 1085, i32 0, metadata !1089, null}
!1096 = metadata !{i32 1086, i32 0, metadata !1089, null}
!1097 = metadata !{i32 1087, i32 0, metadata !1089, null}
!1098 = metadata !{i32 1089, i32 0, metadata !1089, null}
!1099 = metadata !{i32 1090, i32 0, metadata !1089, null}
!1100 = metadata !{i32 1094, i32 0, metadata !1089, null}
!1101 = metadata !{i32 1095, i32 0, metadata !1089, null}
!1102 = metadata !{i32 1096, i32 0, metadata !1089, null}
!1103 = metadata !{i32 590081, metadata !195, metadata !"path", metadata !1, i32 1099, metadata !57, i32 0} ; [ DW_TAG_arg_variable ]
!1104 = metadata !{i32 1099, i32 0, metadata !195, null}
!1105 = metadata !{i32 590081, metadata !195, metadata !"buf", metadata !1, i32 1099, metadata !13, i32 0} ; [ DW_TAG_arg_variable ]
!1106 = metadata !{i32 590081, metadata !195, metadata !"bufsize", metadata !1, i32 1099, metadata !93, i32 0} ; [ DW_TAG_arg_variable ]
!1107 = metadata !{i32 590080, metadata !1108, metadata !"dfile", metadata !1, i32 1100, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!1108 = metadata !{i32 589835, metadata !195, i32 1099, i32 0, metadata !1, i32 68} ; [ DW_TAG_lexical_block ]
!1109 = metadata !{i32 1100, i32 0, metadata !1108, null}
!1110 = metadata !{i32 1101, i32 0, metadata !1108, null}
!1111 = metadata !{i32 1104, i32 0, metadata !1108, null}
!1112 = metadata !{i32 1105, i32 0, metadata !1108, null}
!1113 = metadata !{i32 1106, i32 0, metadata !1108, null}
!1114 = metadata !{i32 1107, i32 0, metadata !1108, null}
!1115 = metadata !{i32 1108, i32 0, metadata !1108, null}
!1116 = metadata !{i32 1109, i32 0, metadata !1108, null}
!1117 = metadata !{i32 1110, i32 0, metadata !1108, null}
!1118 = metadata !{i32 1112, i32 0, metadata !1108, null}
!1119 = metadata !{i32 1113, i32 0, metadata !1108, null}
!1120 = metadata !{i32 590080, metadata !1121, metadata !"r", metadata !1, i32 1116, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!1121 = metadata !{i32 589835, metadata !1108, i32 1116, i32 0, metadata !1, i32 69} ; [ DW_TAG_lexical_block ]
!1122 = metadata !{i32 1116, i32 0, metadata !1121, null}
!1123 = metadata !{i32 1117, i32 0, metadata !1121, null}
!1124 = metadata !{i32 1118, i32 0, metadata !1121, null}
!1125 = metadata !{i32 1119, i32 0, metadata !1121, null}
!1126 = metadata !{i32 590081, metadata !198, metadata !"nfds", metadata !1, i32 1131, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!1127 = metadata !{i32 1131, i32 0, metadata !198, null}
!1128 = metadata !{i32 590081, metadata !198, metadata !"read", metadata !1, i32 1131, metadata !201, i32 0} ; [ DW_TAG_arg_variable ]
!1129 = metadata !{i32 590081, metadata !198, metadata !"write", metadata !1, i32 1131, metadata !201, i32 0} ; [ DW_TAG_arg_variable ]
!1130 = metadata !{i32 590081, metadata !198, metadata !"except", metadata !1, i32 1132, metadata !201, i32 0} ; [ DW_TAG_arg_variable ]
!1131 = metadata !{i32 1132, i32 0, metadata !198, null}
!1132 = metadata !{i32 590081, metadata !198, metadata !"timeout", metadata !1, i32 1132, metadata !211, i32 0} ; [ DW_TAG_arg_variable ]
!1133 = metadata !{i32 590080, metadata !1134, metadata !"in_read", metadata !1, i32 1133, metadata !202, i32 0} ; [ DW_TAG_auto_variable ]
!1134 = metadata !{i32 589835, metadata !198, i32 1132, i32 0, metadata !1, i32 70} ; [ DW_TAG_lexical_block ]
!1135 = metadata !{i32 1133, i32 0, metadata !1134, null}
!1136 = metadata !{i32 590080, metadata !1134, metadata !"in_write", metadata !1, i32 1133, metadata !202, i32 0} ; [ DW_TAG_auto_variable ]
!1137 = metadata !{i32 590080, metadata !1134, metadata !"in_except", metadata !1, i32 1133, metadata !202, i32 0} ; [ DW_TAG_auto_variable ]
!1138 = metadata !{i32 590080, metadata !1134, metadata !"os_read", metadata !1, i32 1133, metadata !202, i32 0} ; [ DW_TAG_auto_variable ]
!1139 = metadata !{i32 590080, metadata !1134, metadata !"os_write", metadata !1, i32 1133, metadata !202, i32 0} ; [ DW_TAG_auto_variable ]
!1140 = metadata !{i32 590080, metadata !1134, metadata !"os_except", metadata !1, i32 1133, metadata !202, i32 0} ; [ DW_TAG_auto_variable ]
!1141 = metadata !{i32 590080, metadata !1134, metadata !"i", metadata !1, i32 1134, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!1142 = metadata !{i32 1134, i32 0, metadata !1134, null}
!1143 = metadata !{i32 590080, metadata !1134, metadata !"count", metadata !1, i32 1134, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!1144 = metadata !{i32 590080, metadata !1134, metadata !"os_nfds", metadata !1, i32 1134, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!1145 = metadata !{i32 1136, i32 0, metadata !1134, null}
!1146 = metadata !{i32 1137, i32 0, metadata !1134, null}
!1147 = metadata !{i32 1138, i32 0, metadata !1134, null}
!1148 = metadata !{i32 1140, i32 0, metadata !1134, null}
!1149 = metadata !{i32 1143, i32 0, metadata !1134, null}
!1150 = metadata !{i32 1144, i32 0, metadata !1134, null}
!1151 = metadata !{i32 1145, i32 0, metadata !1134, null}
!1152 = metadata !{i32 1147, i32 0, metadata !1134, null}
!1153 = metadata !{i32 1150, i32 0, metadata !1134, null}
!1154 = metadata !{i32 1151, i32 0, metadata !1134, null}
!1155 = metadata !{i32 1152, i32 0, metadata !1134, null}
!1156 = metadata !{i32 1154, i32 0, metadata !1134, null}
!1157 = metadata !{i32 1157, i32 0, metadata !1134, null}
!1158 = metadata !{i32 1158, i32 0, metadata !1134, null}
!1159 = metadata !{i32 1159, i32 0, metadata !1134, null}
!1160 = metadata !{i32 1162, i32 0, metadata !1134, null}
!1161 = metadata !{i32 1163, i32 0, metadata !1134, null}
!1162 = metadata !{i32 590080, metadata !1163, metadata !"f", metadata !1, i32 1164, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!1163 = metadata !{i32 589835, metadata !1134, i32 1164, i32 0, metadata !1, i32 71} ; [ DW_TAG_lexical_block ]
!1164 = metadata !{i32 1164, i32 0, metadata !1163, null}
!1165 = metadata !{i32 1165, i32 0, metadata !1163, null}
!1166 = metadata !{i32 1166, i32 0, metadata !1163, null}
!1167 = metadata !{i32 1167, i32 0, metadata !1163, null}
!1168 = metadata !{i32 1168, i32 0, metadata !1163, null}
!1169 = metadata !{i32 1170, i32 0, metadata !1163, null}
!1170 = metadata !{i32 1171, i32 0, metadata !1163, null}
!1171 = metadata !{i32 1172, i32 0, metadata !1163, null}
!1172 = metadata !{i32 1173, i32 0, metadata !1163, null}
!1173 = metadata !{i32 1175, i32 0, metadata !1163, null}
!1174 = metadata !{i32 1176, i32 0, metadata !1163, null}
!1175 = metadata !{i32 1177, i32 0, metadata !1163, null}
!1176 = metadata !{i32 1178, i32 0, metadata !1163, null}
!1177 = metadata !{i32 1183, i32 0, metadata !1134, null}
!1178 = metadata !{i32 590080, metadata !1179, metadata !"tv", metadata !1, i32 1186, metadata !212, i32 0} ; [ DW_TAG_auto_variable ]
!1179 = metadata !{i32 589835, metadata !1134, i32 1186, i32 0, metadata !1, i32 72} ; [ DW_TAG_lexical_block ]
!1180 = metadata !{i32 1186, i32 0, metadata !1179, null}
!1181 = metadata !{i32 590080, metadata !1179, metadata !"r", metadata !1, i32 1187, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!1182 = metadata !{i32 1187, i32 0, metadata !1179, null}
!1183 = metadata !{i32 1188, i32 0, metadata !1179, null}
!1184 = metadata !{i32 1190, i32 0, metadata !1179, null}
!1185 = metadata !{i32 1193, i32 0, metadata !1179, null}
!1186 = metadata !{i32 1194, i32 0, metadata !1179, null}
!1187 = metadata !{i32 1195, i32 0, metadata !1179, null}
!1188 = metadata !{i32 1198, i32 0, metadata !1179, null}
!1189 = metadata !{i32 1201, i32 0, metadata !1179, null}
!1190 = metadata !{i32 590080, metadata !1191, metadata !"f", metadata !1, i32 1202, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!1191 = metadata !{i32 589835, metadata !1179, i32 1202, i32 0, metadata !1, i32 73} ; [ DW_TAG_lexical_block ]
!1192 = metadata !{i32 1202, i32 0, metadata !1191, null}
!1193 = metadata !{i32 1203, i32 0, metadata !1191, null}
!1194 = metadata !{i32 1204, i32 0, metadata !1191, null}
!1195 = metadata !{i32 1205, i32 0, metadata !1191, null}
!1196 = metadata !{i32 1206, i32 0, metadata !1191, null}
!1197 = metadata !{i32 1212, i32 0, metadata !1134, null}
!1198 = metadata !{i32 590081, metadata !218, metadata !"buf", metadata !1, i32 1217, metadata !13, i32 0} ; [ DW_TAG_arg_variable ]
!1199 = metadata !{i32 1217, i32 0, metadata !218, null}
!1200 = metadata !{i32 590081, metadata !218, metadata !"size", metadata !1, i32 1217, metadata !93, i32 0} ; [ DW_TAG_arg_variable ]
!1201 = metadata !{i32 590080, metadata !1202, metadata !"r", metadata !1, i32 1219, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!1202 = metadata !{i32 589835, metadata !218, i32 1217, i32 0, metadata !1, i32 74} ; [ DW_TAG_lexical_block ]
!1203 = metadata !{i32 1219, i32 0, metadata !1202, null}
!1204 = metadata !{i32 1221, i32 0, metadata !1202, null}
!1205 = metadata !{i32 1223, i32 0, metadata !1202, null}
!1206 = metadata !{i32 1224, i32 0, metadata !1202, null}
!1207 = metadata !{i32 1225, i32 0, metadata !1202, null}
!1208 = metadata !{i32 1226, i32 0, metadata !1202, null}
!1209 = metadata !{i32 1229, i32 0, metadata !1202, null}
!1210 = metadata !{i32 1230, i32 0, metadata !1202, null}
!1211 = metadata !{i32 1231, i32 0, metadata !1202, null}
!1212 = metadata !{i32 1232, i32 0, metadata !1202, null}
!1213 = metadata !{i32 1235, i32 0, metadata !1202, null}
!1214 = metadata !{i32 1236, i32 0, metadata !1202, null}
!1215 = metadata !{i32 1240, i32 0, metadata !1202, null}
!1216 = metadata !{i32 1241, i32 0, metadata !1202, null}
!1217 = metadata !{i32 1242, i32 0, metadata !1202, null}
!1218 = metadata !{i32 1243, i32 0, metadata !1202, null}
!1219 = metadata !{i32 1244, i32 0, metadata !1202, null}
!1220 = metadata !{i32 1247, i32 0, metadata !1202, null}
!1221 = metadata !{i32 590081, metadata !221, metadata !"p", metadata !1, i32 1252, metadata !92, i32 0} ; [ DW_TAG_arg_variable ]
!1222 = metadata !{i32 1252, i32 0, metadata !221, null}
!1223 = metadata !{i32 590080, metadata !1224, metadata !"pc", metadata !1, i32 1254, metadata !13, i32 0} ; [ DW_TAG_auto_variable ]
!1224 = metadata !{i32 589835, metadata !221, i32 1252, i32 0, metadata !1, i32 75} ; [ DW_TAG_lexical_block ]
!1225 = metadata !{i32 1254, i32 0, metadata !1224, null}
!1226 = metadata !{i32 1255, i32 0, metadata !1224, null}
!1227 = metadata !{i32 1256, i32 0, metadata !1224, null}
!1228 = metadata !{i32 590081, metadata !224, metadata !"s", metadata !1, i32 1259, metadata !93, i32 0} ; [ DW_TAG_arg_variable ]
!1229 = metadata !{i32 1259, i32 0, metadata !224, null}
!1230 = metadata !{i32 590080, metadata !1231, metadata !"sc", metadata !1, i32 1260, metadata !93, i32 0} ; [ DW_TAG_auto_variable ]
!1231 = metadata !{i32 589835, metadata !224, i32 1259, i32 0, metadata !1, i32 76} ; [ DW_TAG_lexical_block ]
!1232 = metadata !{i32 1260, i32 0, metadata !1231, null}
!1233 = metadata !{i32 1261, i32 0, metadata !1231, null}
!1234 = metadata !{i32 1262, i32 0, metadata !1231, null}
!1235 = metadata !{i32 590081, metadata !227, metadata !"s", metadata !1, i32 1265, metadata !57, i32 0} ; [ DW_TAG_arg_variable ]
!1236 = metadata !{i32 1265, i32 0, metadata !227, null}
!1237 = metadata !{i32 590080, metadata !1238, metadata !"sc", metadata !1, i32 1266, metadata !13, i32 0} ; [ DW_TAG_auto_variable ]
!1238 = metadata !{i32 589835, metadata !227, i32 1265, i32 0, metadata !1, i32 77} ; [ DW_TAG_lexical_block ]
!1239 = metadata !{i32 1266, i32 0, metadata !1238, null}
!1240 = metadata !{i32 590080, metadata !1238, metadata !"i", metadata !1, i32 1267, metadata !11, i32 0} ; [ DW_TAG_auto_variable ]
!1241 = metadata !{i32 1267, i32 0, metadata !1238, null}
!1242 = metadata !{i32 1269, i32 0, metadata !1238, null}
!1243 = metadata !{i32 590080, metadata !1244, metadata !"c", metadata !1, i32 1270, metadata !14, i32 0} ; [ DW_TAG_auto_variable ]
!1244 = metadata !{i32 589835, metadata !1238, i32 1270, i32 0, metadata !1, i32 78} ; [ DW_TAG_lexical_block ]
!1245 = metadata !{i32 1270, i32 0, metadata !1244, null}
!1246 = metadata !{i32 1271, i32 0, metadata !1244, null}
!1247 = metadata !{i32 1272, i32 0, metadata !1244, null}
!1248 = metadata !{i32 1273, i32 0, metadata !1244, null}
!1249 = metadata !{i32 1275, i32 0, metadata !1244, null}
!1250 = metadata !{i32 1276, i32 0, metadata !1244, null}
!1251 = metadata !{i32 590080, metadata !1252, metadata !"cc", metadata !1, i32 1279, metadata !14, i32 0} ; [ DW_TAG_auto_variable ]
!1252 = metadata !{i32 589835, metadata !1244, i32 1279, i32 0, metadata !1, i32 79} ; [ DW_TAG_lexical_block ]
!1253 = metadata !{i32 1279, i32 0, metadata !1252, null}
!1254 = metadata !{i32 1280, i32 0, metadata !1252, null}
!1255 = metadata !{i32 1281, i32 0, metadata !1252, null}
!1256 = metadata !{i32 1282, i32 0, metadata !1252, null}
!1257 = metadata !{i32 1286, i32 0, metadata !1238, null}
!1258 = metadata !{i32 590081, metadata !230, metadata !"path", metadata !1, i32 1294, metadata !57, i32 0} ; [ DW_TAG_arg_variable ]
!1259 = metadata !{i32 1294, i32 0, metadata !230, null}
!1260 = metadata !{i32 1295, i32 0, metadata !1261, null}
!1261 = metadata !{i32 589835, metadata !230, i32 1294, i32 0, metadata !1, i32 80} ; [ DW_TAG_lexical_block ]
!1262 = metadata !{i32 1296, i32 0, metadata !1261, null}
!1263 = metadata !{i32 1297, i32 0, metadata !1261, null}
!1264 = metadata !{i32 1300, i32 0, metadata !1261, null}
!1265 = metadata !{i32 1301, i32 0, metadata !1261, null}
!1266 = metadata !{i32 1304, i32 0, metadata !1261, null}
!1267 = metadata !{i32 1305, i32 0, metadata !1261, null}
!1268 = metadata !{i32 1306, i32 0, metadata !1261, null}
