; ModuleID = 'klee_init_env.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-f128:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@stderr = external unnamed_addr global %struct._IO_FILE*
@.str = private unnamed_addr constant [11 x i8] c"ERROR: %s\0A\00", align 1
@.str1 = private unnamed_addr constant [37 x i8] c"too many arguments for klee_init_env\00", align 8
@.str2 = private unnamed_addr constant [5 x i8] c"arg\00\00", align 1
@.str3 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str4 = private unnamed_addr constant [593 x i8] c"klee_init_env\0A\0Ausage: (klee_init_env) [options] [program arguments]\0A  -sym-arg <N>              - Replace by a symbolic argument with length N\0A  -sym-args <MIN> <MAX> <N> - Replace by at least MIN arguments and at most\0A                              MAX arguments, each with maximum length N\0A  -sym-files <NUM> <N>      - Make stdin and up to NUM symbolic files, each\0A                              with maximum size N.\0A  -sym-stdout               - Make stdout symbolic.\0A  -max-fail <N>             - Allow up to <N> injected failures\0A  -fd-fail                  - Shortcut for '-max-fail 1'\0A\0A\00", align 8
@.str5 = private unnamed_addr constant [10 x i8] c"--sym-arg\00", align 1
@.str6 = private unnamed_addr constant [9 x i8] c"-sym-arg\00", align 1
@.str7 = private unnamed_addr constant [48 x i8] c"--sym-arg expects an integer argument <max-len>\00", align 8
@.str8 = private unnamed_addr constant [11 x i8] c"--sym-args\00", align 1
@.str9 = private unnamed_addr constant [10 x i8] c"-sym-args\00", align 1
@.str10 = private unnamed_addr constant [77 x i8] c"--sym-args expects three integer arguments <min-argvs> <max-argvs> <max-len>\00", align 8
@.str11 = private unnamed_addr constant [7 x i8] c"n_args\00", align 1
@.str12 = private unnamed_addr constant [12 x i8] c"--sym-files\00", align 1
@.str13 = private unnamed_addr constant [11 x i8] c"-sym-files\00", align 1
@.str14 = private unnamed_addr constant [72 x i8] c"--sym-files expects two integer arguments <no-sym-files> <sym-file-len>\00", align 8
@.str15 = private unnamed_addr constant [13 x i8] c"--sym-stdout\00", align 1
@.str16 = private unnamed_addr constant [12 x i8] c"-sym-stdout\00", align 1
@.str17 = private unnamed_addr constant [18 x i8] c"--save-all-writes\00", align 1
@.str18 = private unnamed_addr constant [17 x i8] c"-save-all-writes\00", align 1
@.str19 = private unnamed_addr constant [10 x i8] c"--fd-fail\00", align 1
@.str20 = private unnamed_addr constant [9 x i8] c"-fd-fail\00", align 1
@.str21 = private unnamed_addr constant [11 x i8] c"--max-fail\00", align 1
@.str22 = private unnamed_addr constant [10 x i8] c"-max-fail\00", align 1
@.str23 = private unnamed_addr constant [54 x i8] c"--max-fail expects an integer argument <max-failures>\00", align 8

define internal void @__emit_error(i8* %msg) nounwind {
entry:
  %msg_addr = alloca i8*, align 8
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i8** %msg_addr}, metadata !32), !dbg !33
  store i8* %msg, i8** %msg_addr
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !34
  %1 = load i8** %msg_addr, align 8, !dbg !34
  %2 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* noalias %0, i8* noalias getelementptr inbounds ([11 x i8]* @.str, i64 0, i64 0), i8* %1) nounwind, !dbg !34
  call void @exit(i32 1) noreturn nounwind, !dbg !36
  unreachable, !dbg !36

return:                                           ; No predecessors!
  ret void, !dbg !36
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare i32 @fprintf(%struct._IO_FILE* noalias, i8* noalias, ...) nounwind

declare void @exit(i32) noreturn nounwind

define internal i64 @__str_to_int(i8* %s, i8* %error_msg) nounwind {
entry:
  %s_addr = alloca i8*, align 8
  %error_msg_addr = alloca i8*, align 8
  %retval = alloca i64
  %0 = alloca i64
  %res = alloca i64
  %c = alloca i8
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i8** %s_addr}, metadata !37), !dbg !38
  store i8* %s, i8** %s_addr
  call void @llvm.dbg.declare(metadata !{i8** %error_msg_addr}, metadata !39), !dbg !38
  store i8* %error_msg, i8** %error_msg_addr
  call void @llvm.dbg.declare(metadata !{i64* %res}, metadata !40), !dbg !42
  call void @llvm.dbg.declare(metadata !{i8* %c}, metadata !43), !dbg !44
  store i64 0, i64* %res, align 8, !dbg !42
  %1 = load i8** %s_addr, align 8, !dbg !45
  %2 = load i8* %1, align 1, !dbg !45
  %3 = icmp eq i8 %2, 0, !dbg !45
  br i1 %3, label %bb, label %bb1, !dbg !45

bb:                                               ; preds = %entry
  %4 = load i8** %error_msg_addr, align 8, !dbg !45
  call void @__emit_error(i8* %4) nounwind, !dbg !45
  br label %bb1, !dbg !45

bb1:                                              ; preds = %bb, %entry
  br label %bb7, !dbg !45

bb2:                                              ; preds = %bb7
  %5 = load i8* %c, align 1, !dbg !46
  %6 = icmp eq i8 %5, 0, !dbg !46
  br i1 %6, label %bb8, label %bb3, !dbg !46

bb3:                                              ; preds = %bb2
  %7 = load i8* %c, align 1, !dbg !47
  %8 = icmp sle i8 %7, 47, !dbg !47
  br i1 %8, label %bb6, label %bb4, !dbg !47

bb4:                                              ; preds = %bb3
  %9 = load i8* %c, align 1, !dbg !47
  %10 = icmp sgt i8 %9, 57, !dbg !47
  br i1 %10, label %bb6, label %bb5, !dbg !47

bb5:                                              ; preds = %bb4
  %11 = load i64* %res, align 8, !dbg !48
  %12 = mul nsw i64 %11, 10, !dbg !48
  %13 = load i8* %c, align 1, !dbg !48
  %14 = sext i8 %13 to i32, !dbg !48
  %15 = sub nsw i32 %14, 48, !dbg !48
  %16 = sext i32 %15 to i64, !dbg !48
  %17 = add nsw i64 %12, %16, !dbg !48
  store i64 %17, i64* %res, align 8, !dbg !48
  br label %bb7, !dbg !48

bb6:                                              ; preds = %bb4, %bb3
  %18 = load i8** %error_msg_addr, align 8, !dbg !49
  call void @__emit_error(i8* %18) nounwind, !dbg !49
  br label %bb7, !dbg !49

bb7:                                              ; preds = %bb6, %bb5, %bb1
  %19 = load i8** %s_addr, align 8, !dbg !50
  %20 = load i8* %19, align 1, !dbg !50
  store i8 %20, i8* %c, align 1, !dbg !50
  %21 = load i8* %c, align 1, !dbg !50
  %22 = icmp ne i8 %21, 0, !dbg !50
  %23 = zext i1 %22 to i8, !dbg !50
  %24 = load i8** %s_addr, align 8, !dbg !50
  %25 = getelementptr inbounds i8* %24, i64 1, !dbg !50
  store i8* %25, i8** %s_addr, align 8, !dbg !50
  %toBool = icmp ne i8 %23, 0, !dbg !50
  br i1 %toBool, label %bb2, label %bb8, !dbg !50

bb8:                                              ; preds = %bb7, %bb2
  %26 = load i64* %res, align 8, !dbg !51
  store i64 %26, i64* %0, align 8, !dbg !51
  %27 = load i64* %0, align 8, !dbg !51
  store i64 %27, i64* %retval, align 8, !dbg !51
  br label %return, !dbg !51

return:                                           ; preds = %bb8
  %retval9 = load i64* %retval, !dbg !51
  ret i64 %retval9, !dbg !51
}

define internal i32 @__isprint(i8 signext %c) nounwind {
entry:
  %c_addr = alloca i8, align 1
  %retval = alloca i32
  %iftmp.1 = alloca i32
  %0 = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i8* %c_addr}, metadata !52), !dbg !53
  store i8 %c, i8* %c_addr
  %1 = load i8* %c_addr, align 1, !dbg !54
  %2 = icmp sle i8 %1, 31, !dbg !54
  br i1 %2, label %bb2, label %bb, !dbg !54

bb:                                               ; preds = %entry
  %3 = load i8* %c_addr, align 1, !dbg !54
  %4 = icmp eq i8 %3, 127, !dbg !54
  br i1 %4, label %bb2, label %bb1, !dbg !54

bb1:                                              ; preds = %bb
  store i32 1, i32* %iftmp.1, align 4, !dbg !54
  br label %bb3, !dbg !54

bb2:                                              ; preds = %bb, %entry
  store i32 0, i32* %iftmp.1, align 4, !dbg !54
  br label %bb3, !dbg !54

bb3:                                              ; preds = %bb2, %bb1
  %5 = load i32* %iftmp.1, align 4, !dbg !54
  store i32 %5, i32* %0, align 4, !dbg !54
  %6 = load i32* %0, align 4, !dbg !54
  store i32 %6, i32* %retval, align 4, !dbg !54
  br label %return, !dbg !54

return:                                           ; preds = %bb3
  %retval4 = load i32* %retval, !dbg !54
  ret i32 %retval4, !dbg !54
}

define internal i32 @__streq(i8* %a, i8* %b) nounwind {
entry:
  %a_addr = alloca i8*, align 8
  %b_addr = alloca i8*, align 8
  %retval = alloca i32
  %0 = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i8** %a_addr}, metadata !56), !dbg !57
  store i8* %a, i8** %a_addr
  call void @llvm.dbg.declare(metadata !{i8** %b_addr}, metadata !58), !dbg !57
  store i8* %b, i8** %b_addr
  br label %bb3, !dbg !59

bb:                                               ; preds = %bb3
  %1 = load i8** %a_addr, align 8, !dbg !61
  %2 = load i8* %1, align 1, !dbg !61
  %3 = icmp eq i8 %2, 0, !dbg !61
  br i1 %3, label %bb1, label %bb2, !dbg !61

bb1:                                              ; preds = %bb
  store i32 1, i32* %0, align 4, !dbg !62
  br label %bb5, !dbg !62

bb2:                                              ; preds = %bb
  %4 = load i8** %a_addr, align 8, !dbg !63
  %5 = getelementptr inbounds i8* %4, i64 1, !dbg !63
  store i8* %5, i8** %a_addr, align 8, !dbg !63
  %6 = load i8** %b_addr, align 8, !dbg !64
  %7 = getelementptr inbounds i8* %6, i64 1, !dbg !64
  store i8* %7, i8** %b_addr, align 8, !dbg !64
  br label %bb3, !dbg !64

bb3:                                              ; preds = %bb2, %entry
  %8 = load i8** %a_addr, align 8, !dbg !59
  %9 = load i8* %8, align 1, !dbg !59
  %10 = load i8** %b_addr, align 8, !dbg !59
  %11 = load i8* %10, align 1, !dbg !59
  %12 = icmp eq i8 %9, %11, !dbg !59
  br i1 %12, label %bb, label %bb4, !dbg !59

bb4:                                              ; preds = %bb3
  store i32 0, i32* %0, align 4, !dbg !65
  br label %bb5, !dbg !65

bb5:                                              ; preds = %bb4, %bb1
  %13 = load i32* %0, align 4, !dbg !62
  store i32 %13, i32* %retval, align 4, !dbg !62
  br label %return, !dbg !62

return:                                           ; preds = %bb5
  %retval6 = load i32* %retval, !dbg !62
  ret i32 %retval6, !dbg !62
}

define internal i8* @__get_sym_str(i32 %numChars, i8* %name) nounwind {
entry:
  %numChars_addr = alloca i32, align 4
  %name_addr = alloca i8*, align 8
  %retval = alloca i8*
  %0 = alloca i8*
  %i = alloca i32
  %s = alloca i8*
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i32* %numChars_addr}, metadata !66), !dbg !67
  store i32 %numChars, i32* %numChars_addr
  call void @llvm.dbg.declare(metadata !{i8** %name_addr}, metadata !68), !dbg !67
  store i8* %name, i8** %name_addr
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !69), !dbg !71
  call void @llvm.dbg.declare(metadata !{i8** %s}, metadata !72), !dbg !73
  %1 = load i32* %numChars_addr, align 4, !dbg !73
  %2 = add nsw i32 %1, 1, !dbg !73
  %3 = sext i32 %2 to i64, !dbg !73
  %4 = call noalias i8* @malloc(i64 %3) nounwind, !dbg !73
  store i8* %4, i8** %s, align 8, !dbg !73
  %5 = load i8** %s, align 8, !dbg !74
  call void @klee_mark_global(i8* %5) nounwind, !dbg !74
  %6 = load i32* %numChars_addr, align 4, !dbg !75
  %7 = add nsw i32 %6, 1, !dbg !75
  %8 = sext i32 %7 to i64, !dbg !75
  %9 = load i8** %s, align 8, !dbg !75
  %10 = load i8** %name_addr, align 8, !dbg !75
  call void @klee_make_symbolic(i8* %9, i64 %8, i8* %10) nounwind, !dbg !75
  store i32 0, i32* %i, align 4, !dbg !76
  br label %bb1, !dbg !76

bb:                                               ; preds = %bb1
  %11 = load i8** %s, align 8, !dbg !77
  %12 = load i32* %i, align 4, !dbg !77
  %13 = sext i32 %12 to i64, !dbg !77
  %14 = getelementptr inbounds i8* %11, i64 %13, !dbg !77
  %15 = load i8* %14, align 1, !dbg !77
  %16 = sext i8 %15 to i32, !dbg !77
  %17 = trunc i32 %16 to i8, !dbg !77
  %18 = call i32 @__isprint(i8 signext %17) nounwind, !dbg !77
  %19 = sext i32 %18 to i64, !dbg !77
  %20 = load i8** %s, align 8, !dbg !77
  call void @klee_prefer_cex(i8* %20, i64 %19) nounwind, !dbg !77
  %21 = load i32* %i, align 4, !dbg !76
  %22 = add nsw i32 %21, 1, !dbg !76
  store i32 %22, i32* %i, align 4, !dbg !76
  br label %bb1, !dbg !76

bb1:                                              ; preds = %bb, %entry
  %23 = load i32* %i, align 4, !dbg !76
  %24 = load i32* %numChars_addr, align 4, !dbg !76
  %25 = icmp slt i32 %23, %24, !dbg !76
  br i1 %25, label %bb, label %bb2, !dbg !76

bb2:                                              ; preds = %bb1
  %26 = load i8** %s, align 8, !dbg !78
  %27 = load i32* %numChars_addr, align 4, !dbg !78
  %28 = sext i32 %27 to i64, !dbg !78
  %29 = getelementptr inbounds i8* %26, i64 %28, !dbg !78
  store i8 0, i8* %29, align 1, !dbg !78
  %30 = load i8** %s, align 8, !dbg !79
  store i8* %30, i8** %0, align 8, !dbg !79
  %31 = load i8** %0, align 8, !dbg !79
  store i8* %31, i8** %retval, align 8, !dbg !79
  br label %return, !dbg !79

return:                                           ; preds = %bb2
  %retval3 = load i8** %retval, !dbg !79
  ret i8* %retval3, !dbg !79
}

declare noalias i8* @malloc(i64) nounwind

declare void @klee_mark_global(i8*)

declare void @klee_make_symbolic(i8*, i64, i8*)

declare void @klee_prefer_cex(i8*, i64)

define internal void @__add_arg(i32* %argc, i8** %argv, i8* %arg, i32 %argcMax) nounwind {
entry:
  %argc_addr = alloca i32*, align 8
  %argv_addr = alloca i8**, align 8
  %arg_addr = alloca i8*, align 8
  %argcMax_addr = alloca i32, align 4
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i32** %argc_addr}, metadata !80), !dbg !81
  store i32* %argc, i32** %argc_addr
  call void @llvm.dbg.declare(metadata !{i8*** %argv_addr}, metadata !82), !dbg !81
  store i8** %argv, i8*** %argv_addr
  call void @llvm.dbg.declare(metadata !{i8** %arg_addr}, metadata !83), !dbg !81
  store i8* %arg, i8** %arg_addr
  call void @llvm.dbg.declare(metadata !{i32* %argcMax_addr}, metadata !84), !dbg !81
  store i32 %argcMax, i32* %argcMax_addr
  %0 = load i32** %argc_addr, align 8, !dbg !85
  %1 = load i32* %0, align 4, !dbg !85
  %2 = load i32* %argcMax_addr, align 4, !dbg !85
  %3 = icmp eq i32 %1, %2, !dbg !85
  br i1 %3, label %bb, label %bb1, !dbg !85

bb:                                               ; preds = %entry
  call void @__emit_error(i8* getelementptr inbounds ([37 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !87
  br label %bb2, !dbg !87

bb1:                                              ; preds = %entry
  %4 = load i32** %argc_addr, align 8, !dbg !88
  %5 = load i32* %4, align 4, !dbg !88
  %6 = load i8*** %argv_addr, align 8, !dbg !88
  %7 = sext i32 %5 to i64, !dbg !88
  %8 = getelementptr inbounds i8** %6, i64 %7, !dbg !88
  %9 = load i8** %arg_addr, align 8, !dbg !88
  store i8* %9, i8** %8, align 1, !dbg !88
  %10 = load i32** %argc_addr, align 8, !dbg !89
  %11 = load i32* %10, align 4, !dbg !89
  %12 = add nsw i32 %11, 1, !dbg !89
  %13 = load i32** %argc_addr, align 8, !dbg !89
  store i32 %12, i32* %13, align 4, !dbg !89
  br label %bb2, !dbg !89

bb2:                                              ; preds = %bb1, %bb
  br label %return, !dbg !90

return:                                           ; preds = %bb2
  ret void, !dbg !90
}

define void @klee_init_env(i32* %argcPtr, i8*** %argvPtr) nounwind {
entry:
  %argcPtr_addr = alloca i32*, align 8
  %argvPtr_addr = alloca i8***, align 8
  %argc = alloca i32
  %argv = alloca i8**
  %new_argc = alloca i32
  %n_args = alloca i32
  %new_argv = alloca [1024 x i8*]
  %max_len = alloca i32
  %min_argvs = alloca i32
  %max_argvs = alloca i32
  %sym_files = alloca i32
  %sym_file_len = alloca i32
  %sym_stdout_flag = alloca i32
  %save_all_writes_flag = alloca i32
  %fd_fail = alloca i32
  %final_argv = alloca i8**
  %sym_arg_name = alloca [5 x i8]
  %sym_arg_num = alloca i32
  %k = alloca i32
  %i = alloca i32
  %msg = alloca i8*
  %msg13 = alloca i8*
  %msg24 = alloca i8*
  %msg39 = alloca i8*
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i32** %argcPtr_addr}, metadata !91), !dbg !92
  store i32* %argcPtr, i32** %argcPtr_addr
  call void @llvm.dbg.declare(metadata !{i8**** %argvPtr_addr}, metadata !93), !dbg !92
  store i8*** %argvPtr, i8**** %argvPtr_addr
  call void @llvm.dbg.declare(metadata !{i32* %argc}, metadata !94), !dbg !96
  call void @llvm.dbg.declare(metadata !{i8*** %argv}, metadata !97), !dbg !98
  call void @llvm.dbg.declare(metadata !{i32* %new_argc}, metadata !99), !dbg !100
  call void @llvm.dbg.declare(metadata !{i32* %n_args}, metadata !101), !dbg !100
  call void @llvm.dbg.declare(metadata !{[1024 x i8*]* %new_argv}, metadata !102), !dbg !106
  call void @llvm.dbg.declare(metadata !{i32* %max_len}, metadata !107), !dbg !109
  call void @llvm.dbg.declare(metadata !{i32* %min_argvs}, metadata !110), !dbg !109
  call void @llvm.dbg.declare(metadata !{i32* %max_argvs}, metadata !111), !dbg !109
  call void @llvm.dbg.declare(metadata !{i32* %sym_files}, metadata !112), !dbg !113
  call void @llvm.dbg.declare(metadata !{i32* %sym_file_len}, metadata !114), !dbg !113
  call void @llvm.dbg.declare(metadata !{i32* %sym_stdout_flag}, metadata !115), !dbg !116
  call void @llvm.dbg.declare(metadata !{i32* %save_all_writes_flag}, metadata !117), !dbg !118
  call void @llvm.dbg.declare(metadata !{i32* %fd_fail}, metadata !119), !dbg !120
  call void @llvm.dbg.declare(metadata !{i8*** %final_argv}, metadata !121), !dbg !122
  call void @llvm.dbg.declare(metadata !{[5 x i8]* %sym_arg_name}, metadata !123), !dbg !127
  call void @llvm.dbg.declare(metadata !{i32* %sym_arg_num}, metadata !128), !dbg !129
  call void @llvm.dbg.declare(metadata !{i32* %k}, metadata !130), !dbg !131
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !132), !dbg !131
  %0 = load i32** %argcPtr_addr, align 8, !dbg !96
  %1 = load i32* %0, align 4, !dbg !96
  store i32 %1, i32* %argc, align 4, !dbg !96
  %2 = load i8**** %argvPtr_addr, align 8, !dbg !98
  %3 = load i8*** %2, align 8, !dbg !98
  store i8** %3, i8*** %argv, align 8, !dbg !98
  store i32 0, i32* %new_argc, align 4, !dbg !100
  store i32 0, i32* %sym_files, align 4, !dbg !113
  store i32 0, i32* %sym_file_len, align 4, !dbg !113
  store i32 0, i32* %sym_stdout_flag, align 4, !dbg !116
  store i32 0, i32* %save_all_writes_flag, align 4, !dbg !118
  store i32 0, i32* %fd_fail, align 4, !dbg !120
  %4 = getelementptr inbounds [5 x i8]* %sym_arg_name, i32 0, i32 0, !dbg !127
  %5 = load i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), align 1, !dbg !127
  store i8 %5, i8* %4, align 1, !dbg !127
  %6 = getelementptr inbounds [5 x i8]* %sym_arg_name, i32 0, i32 1, !dbg !127
  %7 = load i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 1), align 1, !dbg !127
  store i8 %7, i8* %6, align 1, !dbg !127
  %8 = getelementptr inbounds [5 x i8]* %sym_arg_name, i32 0, i32 2, !dbg !127
  %9 = load i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 2), align 1, !dbg !127
  store i8 %9, i8* %8, align 1, !dbg !127
  %10 = getelementptr inbounds [5 x i8]* %sym_arg_name, i32 0, i32 3, !dbg !127
  %11 = load i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 3), align 1, !dbg !127
  store i8 %11, i8* %10, align 1, !dbg !127
  %12 = getelementptr inbounds [5 x i8]* %sym_arg_name, i32 0, i32 4, !dbg !127
  %13 = load i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 4), align 1, !dbg !127
  store i8 %13, i8* %12, align 1, !dbg !127
  store i32 0, i32* %sym_arg_num, align 4, !dbg !129
  store i32 0, i32* %k, align 4, !dbg !131
  %14 = getelementptr inbounds [5 x i8]* %sym_arg_name, i64 0, i64 4, !dbg !133
  store i8 0, i8* %14, align 1, !dbg !133
  %15 = load i32* %argc, align 4, !dbg !134
  %16 = icmp eq i32 %15, 2, !dbg !134
  br i1 %16, label %bb, label %bb2, !dbg !134

bb:                                               ; preds = %entry
  %17 = load i8*** %argv, align 8, !dbg !134
  %18 = getelementptr inbounds i8** %17, i64 1, !dbg !134
  %19 = load i8** %18, align 1, !dbg !134
  %20 = call i32 @__streq(i8* %19, i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !134
  %21 = icmp ne i32 %20, 0, !dbg !134
  br i1 %21, label %bb1, label %bb2, !dbg !134

bb1:                                              ; preds = %bb
  call void @__emit_error(i8* getelementptr inbounds ([593 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !135
  br label %bb2, !dbg !135

bb2:                                              ; preds = %bb1, %bb, %entry
  br label %bb44, !dbg !135

bb3:                                              ; preds = %bb44
  %22 = load i8*** %argv, align 8, !dbg !136
  %23 = load i32* %k, align 4, !dbg !136
  %24 = sext i32 %23 to i64, !dbg !136
  %25 = getelementptr inbounds i8** %22, i64 %24, !dbg !136
  %26 = load i8** %25, align 1, !dbg !136
  %27 = call i32 @__streq(i8* %26, i8* getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !136
  %28 = icmp ne i32 %27, 0, !dbg !136
  br i1 %28, label %bb5, label %bb4, !dbg !136

bb4:                                              ; preds = %bb3
  %29 = load i8*** %argv, align 8, !dbg !136
  %30 = load i32* %k, align 4, !dbg !136
  %31 = sext i32 %30 to i64, !dbg !136
  %32 = getelementptr inbounds i8** %29, i64 %31, !dbg !136
  %33 = load i8** %32, align 1, !dbg !136
  %34 = call i32 @__streq(i8* %33, i8* getelementptr inbounds ([9 x i8]* @.str6, i64 0, i64 0)) nounwind, !dbg !136
  %35 = icmp ne i32 %34, 0, !dbg !136
  br i1 %35, label %bb5, label %bb10, !dbg !136

bb5:                                              ; preds = %bb4, %bb3
  call void @llvm.dbg.declare(metadata !{i8** %msg}, metadata !137), !dbg !139
  store i8* getelementptr inbounds ([48 x i8]* @.str7, i64 0, i64 0), i8** %msg, align 8, !dbg !139
  %36 = load i32* %k, align 4, !dbg !140
  %37 = add nsw i32 %36, 1, !dbg !140
  store i32 %37, i32* %k, align 4, !dbg !140
  %38 = load i32* %k, align 4, !dbg !140
  %39 = load i32* %argc, align 4, !dbg !140
  %40 = icmp eq i32 %38, %39, !dbg !140
  br i1 %40, label %bb6, label %bb7, !dbg !140

bb6:                                              ; preds = %bb5
  %41 = load i8** %msg, align 8, !dbg !141
  call void @__emit_error(i8* %41) nounwind, !dbg !141
  br label %bb7, !dbg !141

bb7:                                              ; preds = %bb6, %bb5
  %42 = load i8*** %argv, align 8, !dbg !142
  %43 = load i32* %k, align 4, !dbg !142
  %44 = sext i32 %43 to i64, !dbg !142
  %45 = getelementptr inbounds i8** %42, i64 %44, !dbg !142
  %46 = load i8** %45, align 1, !dbg !142
  %47 = load i32* %k, align 4, !dbg !142
  %48 = add nsw i32 %47, 1, !dbg !142
  store i32 %48, i32* %k, align 4, !dbg !142
  %49 = load i8** %msg, align 8, !dbg !142
  %50 = call i64 @__str_to_int(i8* %46, i8* %49) nounwind, !dbg !142
  %51 = trunc i64 %50 to i32, !dbg !142
  store i32 %51, i32* %max_len, align 4, !dbg !142
  %52 = load i32* %sym_arg_num, align 4, !dbg !143
  %53 = trunc i32 %52 to i8, !dbg !143
  %54 = add i8 %53, 48, !dbg !143
  %55 = getelementptr inbounds [5 x i8]* %sym_arg_name, i64 0, i64 3, !dbg !143
  store i8 %54, i8* %55, align 1, !dbg !143
  %56 = load i32* %sym_arg_num, align 4, !dbg !143
  %57 = add i32 %56, 1, !dbg !143
  store i32 %57, i32* %sym_arg_num, align 4, !dbg !143
  %58 = load i32* %max_len, align 4, !dbg !144
  %sym_arg_name8 = bitcast [5 x i8]* %sym_arg_name to i8*, !dbg !144
  %59 = call i8* @__get_sym_str(i32 %58, i8* %sym_arg_name8) nounwind, !dbg !144
  %new_argv9 = bitcast [1024 x i8*]* %new_argv to i8**, !dbg !144
  call void @__add_arg(i32* %new_argc, i8** %new_argv9, i8* %59, i32 1024) nounwind, !dbg !144
  br label %bb44, !dbg !144

bb10:                                             ; preds = %bb4
  %60 = load i8*** %argv, align 8, !dbg !145
  %61 = load i32* %k, align 4, !dbg !145
  %62 = sext i32 %61 to i64, !dbg !145
  %63 = getelementptr inbounds i8** %60, i64 %62, !dbg !145
  %64 = load i8** %63, align 1, !dbg !145
  %65 = call i32 @__streq(i8* %64, i8* getelementptr inbounds ([11 x i8]* @.str8, i64 0, i64 0)) nounwind, !dbg !145
  %66 = icmp ne i32 %65, 0, !dbg !145
  br i1 %66, label %bb12, label %bb11, !dbg !145

bb11:                                             ; preds = %bb10
  %67 = load i8*** %argv, align 8, !dbg !145
  %68 = load i32* %k, align 4, !dbg !145
  %69 = sext i32 %68 to i64, !dbg !145
  %70 = getelementptr inbounds i8** %67, i64 %69, !dbg !145
  %71 = load i8** %70, align 1, !dbg !145
  %72 = call i32 @__streq(i8* %71, i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0)) nounwind, !dbg !145
  %73 = icmp ne i32 %72, 0, !dbg !145
  br i1 %73, label %bb12, label %bb21, !dbg !145

bb12:                                             ; preds = %bb11, %bb10
  call void @llvm.dbg.declare(metadata !{i8** %msg13}, metadata !146), !dbg !148
  store i8* getelementptr inbounds ([77 x i8]* @.str10, i64 0, i64 0), i8** %msg13, align 8, !dbg !149
  %74 = load i32* %k, align 4, !dbg !150
  %75 = add nsw i32 %74, 3, !dbg !150
  %76 = load i32* %argc, align 4, !dbg !150
  %77 = icmp sge i32 %75, %76, !dbg !150
  br i1 %77, label %bb14, label %bb15, !dbg !150

bb14:                                             ; preds = %bb12
  %78 = load i8** %msg13, align 8, !dbg !151
  call void @__emit_error(i8* %78) nounwind, !dbg !151
  br label %bb15, !dbg !151

bb15:                                             ; preds = %bb14, %bb12
  %79 = load i32* %k, align 4, !dbg !152
  %80 = add nsw i32 %79, 1, !dbg !152
  store i32 %80, i32* %k, align 4, !dbg !152
  %81 = load i8*** %argv, align 8, !dbg !153
  %82 = load i32* %k, align 4, !dbg !153
  %83 = sext i32 %82 to i64, !dbg !153
  %84 = getelementptr inbounds i8** %81, i64 %83, !dbg !153
  %85 = load i8** %84, align 1, !dbg !153
  %86 = load i32* %k, align 4, !dbg !153
  %87 = add nsw i32 %86, 1, !dbg !153
  store i32 %87, i32* %k, align 4, !dbg !153
  %88 = load i8** %msg13, align 8, !dbg !153
  %89 = call i64 @__str_to_int(i8* %85, i8* %88) nounwind, !dbg !153
  %90 = trunc i64 %89 to i32, !dbg !153
  store i32 %90, i32* %min_argvs, align 4, !dbg !153
  %91 = load i8*** %argv, align 8, !dbg !154
  %92 = load i32* %k, align 4, !dbg !154
  %93 = sext i32 %92 to i64, !dbg !154
  %94 = getelementptr inbounds i8** %91, i64 %93, !dbg !154
  %95 = load i8** %94, align 1, !dbg !154
  %96 = load i32* %k, align 4, !dbg !154
  %97 = add nsw i32 %96, 1, !dbg !154
  store i32 %97, i32* %k, align 4, !dbg !154
  %98 = load i8** %msg13, align 8, !dbg !154
  %99 = call i64 @__str_to_int(i8* %95, i8* %98) nounwind, !dbg !154
  %100 = trunc i64 %99 to i32, !dbg !154
  store i32 %100, i32* %max_argvs, align 4, !dbg !154
  %101 = load i8*** %argv, align 8, !dbg !155
  %102 = load i32* %k, align 4, !dbg !155
  %103 = sext i32 %102 to i64, !dbg !155
  %104 = getelementptr inbounds i8** %101, i64 %103, !dbg !155
  %105 = load i8** %104, align 1, !dbg !155
  %106 = load i32* %k, align 4, !dbg !155
  %107 = add nsw i32 %106, 1, !dbg !155
  store i32 %107, i32* %k, align 4, !dbg !155
  %108 = load i8** %msg13, align 8, !dbg !155
  %109 = call i64 @__str_to_int(i8* %105, i8* %108) nounwind, !dbg !155
  %110 = trunc i64 %109 to i32, !dbg !155
  store i32 %110, i32* %max_len, align 4, !dbg !155
  %111 = load i32* %max_argvs, align 4, !dbg !156
  %112 = add i32 %111, 1, !dbg !156
  %113 = load i32* %min_argvs, align 4, !dbg !156
  %114 = call i32 @klee_range(i32 %113, i32 %112, i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0)) nounwind, !dbg !156
  store i32 %114, i32* %n_args, align 4, !dbg !156
  store i32 0, i32* %i, align 4, !dbg !157
  br label %bb19, !dbg !157

bb16:                                             ; preds = %bb19
  %115 = load i32* %sym_arg_num, align 4, !dbg !158
  %116 = trunc i32 %115 to i8, !dbg !158
  %117 = add i8 %116, 48, !dbg !158
  %118 = getelementptr inbounds [5 x i8]* %sym_arg_name, i64 0, i64 3, !dbg !158
  store i8 %117, i8* %118, align 1, !dbg !158
  %119 = load i32* %sym_arg_num, align 4, !dbg !158
  %120 = add i32 %119, 1, !dbg !158
  store i32 %120, i32* %sym_arg_num, align 4, !dbg !158
  %121 = load i32* %max_len, align 4, !dbg !159
  %sym_arg_name17 = bitcast [5 x i8]* %sym_arg_name to i8*, !dbg !159
  %122 = call i8* @__get_sym_str(i32 %121, i8* %sym_arg_name17) nounwind, !dbg !159
  %new_argv18 = bitcast [1024 x i8*]* %new_argv to i8**, !dbg !159
  call void @__add_arg(i32* %new_argc, i8** %new_argv18, i8* %122, i32 1024) nounwind, !dbg !159
  %123 = load i32* %i, align 4, !dbg !157
  %124 = add nsw i32 %123, 1, !dbg !157
  store i32 %124, i32* %i, align 4, !dbg !157
  br label %bb19, !dbg !157

bb19:                                             ; preds = %bb16, %bb15
  %125 = load i32* %i, align 4, !dbg !157
  %126 = load i32* %n_args, align 4, !dbg !157
  %127 = icmp slt i32 %125, %126, !dbg !157
  br i1 %127, label %bb16, label %bb20, !dbg !157

bb20:                                             ; preds = %bb19
  br label %bb44, !dbg !157

bb21:                                             ; preds = %bb11
  %128 = load i8*** %argv, align 8, !dbg !160
  %129 = load i32* %k, align 4, !dbg !160
  %130 = sext i32 %129 to i64, !dbg !160
  %131 = getelementptr inbounds i8** %128, i64 %130, !dbg !160
  %132 = load i8** %131, align 1, !dbg !160
  %133 = call i32 @__streq(i8* %132, i8* getelementptr inbounds ([12 x i8]* @.str12, i64 0, i64 0)) nounwind, !dbg !160
  %134 = icmp ne i32 %133, 0, !dbg !160
  br i1 %134, label %bb23, label %bb22, !dbg !160

bb22:                                             ; preds = %bb21
  %135 = load i8*** %argv, align 8, !dbg !160
  %136 = load i32* %k, align 4, !dbg !160
  %137 = sext i32 %136 to i64, !dbg !160
  %138 = getelementptr inbounds i8** %135, i64 %137, !dbg !160
  %139 = load i8** %138, align 1, !dbg !160
  %140 = call i32 @__streq(i8* %139, i8* getelementptr inbounds ([11 x i8]* @.str13, i64 0, i64 0)) nounwind, !dbg !160
  %141 = icmp ne i32 %140, 0, !dbg !160
  br i1 %141, label %bb23, label %bb27, !dbg !160

bb23:                                             ; preds = %bb22, %bb21
  call void @llvm.dbg.declare(metadata !{i8** %msg24}, metadata !161), !dbg !163
  store i8* getelementptr inbounds ([72 x i8]* @.str14, i64 0, i64 0), i8** %msg24, align 8, !dbg !163
  %142 = load i32* %k, align 4, !dbg !164
  %143 = add nsw i32 %142, 2, !dbg !164
  %144 = load i32* %argc, align 4, !dbg !164
  %145 = icmp sge i32 %143, %144, !dbg !164
  br i1 %145, label %bb25, label %bb26, !dbg !164

bb25:                                             ; preds = %bb23
  %146 = load i8** %msg24, align 8, !dbg !165
  call void @__emit_error(i8* %146) nounwind, !dbg !165
  br label %bb26, !dbg !165

bb26:                                             ; preds = %bb25, %bb23
  %147 = load i32* %k, align 4, !dbg !166
  %148 = add nsw i32 %147, 1, !dbg !166
  store i32 %148, i32* %k, align 4, !dbg !166
  %149 = load i8*** %argv, align 8, !dbg !167
  %150 = load i32* %k, align 4, !dbg !167
  %151 = sext i32 %150 to i64, !dbg !167
  %152 = getelementptr inbounds i8** %149, i64 %151, !dbg !167
  %153 = load i8** %152, align 1, !dbg !167
  %154 = load i32* %k, align 4, !dbg !167
  %155 = add nsw i32 %154, 1, !dbg !167
  store i32 %155, i32* %k, align 4, !dbg !167
  %156 = load i8** %msg24, align 8, !dbg !167
  %157 = call i64 @__str_to_int(i8* %153, i8* %156) nounwind, !dbg !167
  %158 = trunc i64 %157 to i32, !dbg !167
  store i32 %158, i32* %sym_files, align 4, !dbg !167
  %159 = load i8*** %argv, align 8, !dbg !168
  %160 = load i32* %k, align 4, !dbg !168
  %161 = sext i32 %160 to i64, !dbg !168
  %162 = getelementptr inbounds i8** %159, i64 %161, !dbg !168
  %163 = load i8** %162, align 1, !dbg !168
  %164 = load i32* %k, align 4, !dbg !168
  %165 = add nsw i32 %164, 1, !dbg !168
  store i32 %165, i32* %k, align 4, !dbg !168
  %166 = load i8** %msg24, align 8, !dbg !168
  %167 = call i64 @__str_to_int(i8* %163, i8* %166) nounwind, !dbg !168
  %168 = trunc i64 %167 to i32, !dbg !168
  store i32 %168, i32* %sym_file_len, align 4, !dbg !168
  br label %bb44, !dbg !168

bb27:                                             ; preds = %bb22
  %169 = load i8*** %argv, align 8, !dbg !169
  %170 = load i32* %k, align 4, !dbg !169
  %171 = sext i32 %170 to i64, !dbg !169
  %172 = getelementptr inbounds i8** %169, i64 %171, !dbg !169
  %173 = load i8** %172, align 1, !dbg !169
  %174 = call i32 @__streq(i8* %173, i8* getelementptr inbounds ([13 x i8]* @.str15, i64 0, i64 0)) nounwind, !dbg !169
  %175 = icmp ne i32 %174, 0, !dbg !169
  br i1 %175, label %bb29, label %bb28, !dbg !169

bb28:                                             ; preds = %bb27
  %176 = load i8*** %argv, align 8, !dbg !169
  %177 = load i32* %k, align 4, !dbg !169
  %178 = sext i32 %177 to i64, !dbg !169
  %179 = getelementptr inbounds i8** %176, i64 %178, !dbg !169
  %180 = load i8** %179, align 1, !dbg !169
  %181 = call i32 @__streq(i8* %180, i8* getelementptr inbounds ([12 x i8]* @.str16, i64 0, i64 0)) nounwind, !dbg !169
  %182 = icmp ne i32 %181, 0, !dbg !169
  br i1 %182, label %bb29, label %bb30, !dbg !169

bb29:                                             ; preds = %bb28, %bb27
  store i32 1, i32* %sym_stdout_flag, align 4, !dbg !170
  %183 = load i32* %k, align 4, !dbg !171
  %184 = add nsw i32 %183, 1, !dbg !171
  store i32 %184, i32* %k, align 4, !dbg !171
  br label %bb44, !dbg !171

bb30:                                             ; preds = %bb28
  %185 = load i8*** %argv, align 8, !dbg !172
  %186 = load i32* %k, align 4, !dbg !172
  %187 = sext i32 %186 to i64, !dbg !172
  %188 = getelementptr inbounds i8** %185, i64 %187, !dbg !172
  %189 = load i8** %188, align 1, !dbg !172
  %190 = call i32 @__streq(i8* %189, i8* getelementptr inbounds ([18 x i8]* @.str17, i64 0, i64 0)) nounwind, !dbg !172
  %191 = icmp ne i32 %190, 0, !dbg !172
  br i1 %191, label %bb32, label %bb31, !dbg !172

bb31:                                             ; preds = %bb30
  %192 = load i8*** %argv, align 8, !dbg !172
  %193 = load i32* %k, align 4, !dbg !172
  %194 = sext i32 %193 to i64, !dbg !172
  %195 = getelementptr inbounds i8** %192, i64 %194, !dbg !172
  %196 = load i8** %195, align 1, !dbg !172
  %197 = call i32 @__streq(i8* %196, i8* getelementptr inbounds ([17 x i8]* @.str18, i64 0, i64 0)) nounwind, !dbg !172
  %198 = icmp ne i32 %197, 0, !dbg !172
  br i1 %198, label %bb32, label %bb33, !dbg !172

bb32:                                             ; preds = %bb31, %bb30
  store i32 1, i32* %save_all_writes_flag, align 4, !dbg !173
  %199 = load i32* %k, align 4, !dbg !174
  %200 = add nsw i32 %199, 1, !dbg !174
  store i32 %200, i32* %k, align 4, !dbg !174
  br label %bb44, !dbg !174

bb33:                                             ; preds = %bb31
  %201 = load i8*** %argv, align 8, !dbg !175
  %202 = load i32* %k, align 4, !dbg !175
  %203 = sext i32 %202 to i64, !dbg !175
  %204 = getelementptr inbounds i8** %201, i64 %203, !dbg !175
  %205 = load i8** %204, align 1, !dbg !175
  %206 = call i32 @__streq(i8* %205, i8* getelementptr inbounds ([10 x i8]* @.str19, i64 0, i64 0)) nounwind, !dbg !175
  %207 = icmp ne i32 %206, 0, !dbg !175
  br i1 %207, label %bb35, label %bb34, !dbg !175

bb34:                                             ; preds = %bb33
  %208 = load i8*** %argv, align 8, !dbg !175
  %209 = load i32* %k, align 4, !dbg !175
  %210 = sext i32 %209 to i64, !dbg !175
  %211 = getelementptr inbounds i8** %208, i64 %210, !dbg !175
  %212 = load i8** %211, align 1, !dbg !175
  %213 = call i32 @__streq(i8* %212, i8* getelementptr inbounds ([9 x i8]* @.str20, i64 0, i64 0)) nounwind, !dbg !175
  %214 = icmp ne i32 %213, 0, !dbg !175
  br i1 %214, label %bb35, label %bb36, !dbg !175

bb35:                                             ; preds = %bb34, %bb33
  store i32 1, i32* %fd_fail, align 4, !dbg !176
  %215 = load i32* %k, align 4, !dbg !177
  %216 = add nsw i32 %215, 1, !dbg !177
  store i32 %216, i32* %k, align 4, !dbg !177
  br label %bb44, !dbg !177

bb36:                                             ; preds = %bb34
  %217 = load i8*** %argv, align 8, !dbg !178
  %218 = load i32* %k, align 4, !dbg !178
  %219 = sext i32 %218 to i64, !dbg !178
  %220 = getelementptr inbounds i8** %217, i64 %219, !dbg !178
  %221 = load i8** %220, align 1, !dbg !178
  %222 = call i32 @__streq(i8* %221, i8* getelementptr inbounds ([11 x i8]* @.str21, i64 0, i64 0)) nounwind, !dbg !178
  %223 = icmp ne i32 %222, 0, !dbg !178
  br i1 %223, label %bb38, label %bb37, !dbg !178

bb37:                                             ; preds = %bb36
  %224 = load i8*** %argv, align 8, !dbg !178
  %225 = load i32* %k, align 4, !dbg !178
  %226 = sext i32 %225 to i64, !dbg !178
  %227 = getelementptr inbounds i8** %224, i64 %226, !dbg !178
  %228 = load i8** %227, align 1, !dbg !178
  %229 = call i32 @__streq(i8* %228, i8* getelementptr inbounds ([10 x i8]* @.str22, i64 0, i64 0)) nounwind, !dbg !178
  %230 = icmp ne i32 %229, 0, !dbg !178
  br i1 %230, label %bb38, label %bb42, !dbg !178

bb38:                                             ; preds = %bb37, %bb36
  call void @llvm.dbg.declare(metadata !{i8** %msg39}, metadata !179), !dbg !181
  store i8* getelementptr inbounds ([54 x i8]* @.str23, i64 0, i64 0), i8** %msg39, align 8, !dbg !181
  %231 = load i32* %k, align 4, !dbg !182
  %232 = add nsw i32 %231, 1, !dbg !182
  store i32 %232, i32* %k, align 4, !dbg !182
  %233 = load i32* %k, align 4, !dbg !182
  %234 = load i32* %argc, align 4, !dbg !182
  %235 = icmp eq i32 %233, %234, !dbg !182
  br i1 %235, label %bb40, label %bb41, !dbg !182

bb40:                                             ; preds = %bb38
  %236 = load i8** %msg39, align 8, !dbg !183
  call void @__emit_error(i8* %236) nounwind, !dbg !183
  br label %bb41, !dbg !183

bb41:                                             ; preds = %bb40, %bb38
  %237 = load i8*** %argv, align 8, !dbg !184
  %238 = load i32* %k, align 4, !dbg !184
  %239 = sext i32 %238 to i64, !dbg !184
  %240 = getelementptr inbounds i8** %237, i64 %239, !dbg !184
  %241 = load i8** %240, align 1, !dbg !184
  %242 = load i32* %k, align 4, !dbg !184
  %243 = add nsw i32 %242, 1, !dbg !184
  store i32 %243, i32* %k, align 4, !dbg !184
  %244 = load i8** %msg39, align 8, !dbg !184
  %245 = call i64 @__str_to_int(i8* %241, i8* %244) nounwind, !dbg !184
  %246 = trunc i64 %245 to i32, !dbg !184
  store i32 %246, i32* %fd_fail, align 4, !dbg !184
  br label %bb44, !dbg !184

bb42:                                             ; preds = %bb37
  %247 = load i8*** %argv, align 8, !dbg !185
  %248 = load i32* %k, align 4, !dbg !185
  %249 = sext i32 %248 to i64, !dbg !185
  %250 = getelementptr inbounds i8** %247, i64 %249, !dbg !185
  %251 = load i8** %250, align 1, !dbg !185
  %252 = load i32* %k, align 4, !dbg !185
  %253 = add nsw i32 %252, 1, !dbg !185
  store i32 %253, i32* %k, align 4, !dbg !185
  %new_argv43 = bitcast [1024 x i8*]* %new_argv to i8**, !dbg !185
  call void @__add_arg(i32* %new_argc, i8** %new_argv43, i8* %251, i32 1024) nounwind, !dbg !185
  br label %bb44, !dbg !185

bb44:                                             ; preds = %bb42, %bb41, %bb35, %bb32, %bb29, %bb26, %bb20, %bb7, %bb2
  %254 = load i32* %k, align 4, !dbg !186
  %255 = load i32* %argc, align 4, !dbg !186
  %256 = icmp slt i32 %254, %255, !dbg !186
  br i1 %256, label %bb3, label %bb45, !dbg !186

bb45:                                             ; preds = %bb44
  %257 = load i32* %new_argc, align 4, !dbg !187
  %258 = add nsw i32 %257, 1, !dbg !187
  %259 = sext i32 %258 to i64, !dbg !187
  %260 = mul i64 %259, 8, !dbg !187
  %261 = call noalias i8* @malloc(i64 %260) nounwind, !dbg !187
  %262 = bitcast i8* %261 to i8**, !dbg !187
  store i8** %262, i8*** %final_argv, align 8, !dbg !187
  %263 = load i8*** %final_argv, align 8, !dbg !188
  %264 = bitcast i8** %263 to i8*, !dbg !188
  call void @klee_mark_global(i8* %264) nounwind, !dbg !188
  %265 = load i32* %new_argc, align 4, !dbg !189
  %266 = sext i32 %265 to i64, !dbg !189
  %267 = mul i64 %266, 8, !dbg !189
  %268 = load i8*** %final_argv, align 8, !dbg !189
  %new_argv46 = bitcast [1024 x i8*]* %new_argv to i8**, !dbg !189
  %269 = bitcast i8** %268 to i8*, !dbg !189
  %new_argv4647 = bitcast i8** %new_argv46 to i8*, !dbg !189
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %269, i8* %new_argv4647, i64 %267, i32 1, i1 false), !dbg !189
  %270 = load i32* %new_argc, align 4, !dbg !190
  %271 = load i8*** %final_argv, align 8, !dbg !190
  %272 = sext i32 %270 to i64, !dbg !190
  %273 = getelementptr inbounds i8** %271, i64 %272, !dbg !190
  store i8* null, i8** %273, align 1, !dbg !190
  %274 = load i32* %new_argc, align 4, !dbg !191
  %275 = load i32** %argcPtr_addr, align 8, !dbg !191
  store i32 %274, i32* %275, align 4, !dbg !191
  %276 = load i8**** %argvPtr_addr, align 8, !dbg !192
  %277 = load i8*** %final_argv, align 8, !dbg !192
  store i8** %277, i8*** %276, align 8, !dbg !192
  %278 = load i32* %fd_fail, align 4, !dbg !193
  %279 = load i32* %sym_files, align 4, !dbg !193
  %280 = load i32* %sym_file_len, align 4, !dbg !193
  %281 = load i32* %sym_stdout_flag, align 4, !dbg !193
  %282 = load i32* %save_all_writes_flag, align 4, !dbg !193
  call void @klee_init_fds(i32 %279, i32 %280, i32 %281, i32 %282, i32 %278) nounwind, !dbg !193
  br label %return, !dbg !194

return:                                           ; preds = %bb45
  ret void, !dbg !194
}

declare i32 @klee_range(i32, i32, i8*)

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

declare void @klee_init_fds(i32, i32, i32, i32, i32)

!llvm.dbg.sp = !{!0, !8, !13, !17, !20, !23, !28}

!0 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__emit_error", metadata !"__emit_error", metadata !"", metadata !1, i32 29, metadata !3, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @__emit_error} ; [ DW_TAG_subprogram ]
!1 = metadata !{i32 589865, metadata !"klee_init_env.c", metadata !"/home/tyu/Documents/bugredx/klee2.9/runtime/POSIX/", metadata !2} ; [ DW_TAG_file_type ]
!2 = metadata !{i32 589841, i32 0, i32 1, metadata !"klee_init_env.c", metadata !"/home/tyu/Documents/bugredx/klee2.9/runtime/POSIX/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!3 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !4, i32 0, null} ; [ DW_TAG_subroutine_type ]
!4 = metadata !{null, metadata !5}
!5 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !6} ; [ DW_TAG_pointer_type ]
!6 = metadata !{i32 589862, metadata !1, metadata !"", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !7} ; [ DW_TAG_const_type ]
!7 = metadata !{i32 589860, metadata !1, metadata !"char", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!8 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__str_to_int", metadata !"__str_to_int", metadata !"", metadata !1, i32 37, metadata !9, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i8*, i8*)* @__str_to_int} ; [ DW_TAG_subprogram ]
!9 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !10, i32 0, null} ; [ DW_TAG_subroutine_type ]
!10 = metadata !{metadata !11, metadata !12, metadata !5}
!11 = metadata !{i32 589860, metadata !1, metadata !"long int", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!12 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !7} ; [ DW_TAG_pointer_type ]
!13 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__isprint", metadata !"__isprint", metadata !"", metadata !1, i32 55, metadata !14, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8)* @__isprint} ; [ DW_TAG_subprogram ]
!14 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, null} ; [ DW_TAG_subroutine_type ]
!15 = metadata !{metadata !16, metadata !6}
!16 = metadata !{i32 589860, metadata !1, metadata !"int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!17 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__streq", metadata !"__streq", metadata !"", metadata !1, i32 60, metadata !18, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, i8*)* @__streq} ; [ DW_TAG_subprogram ]
!18 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, null} ; [ DW_TAG_subroutine_type ]
!19 = metadata !{metadata !16, metadata !5, metadata !5}
!20 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__get_sym_str", metadata !"__get_sym_str", metadata !"", metadata !1, i32 70, metadata !21, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i32, i8*)* @__get_sym_str} ; [ DW_TAG_subprogram ]
!21 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !22, i32 0, null} ; [ DW_TAG_subroutine_type ]
!22 = metadata !{metadata !12, metadata !16, metadata !12}
!23 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__add_arg", metadata !"__add_arg", metadata !"", metadata !1, i32 83, metadata !24, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*, i8**, i8*, i32)* @__add_arg} ; [ DW_TAG_subprogram ]
!24 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !25, i32 0, null} ; [ DW_TAG_subroutine_type ]
!25 = metadata !{null, metadata !26, metadata !27, metadata !12, metadata !16}
!26 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ]
!27 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ]
!28 = metadata !{i32 589870, i32 0, metadata !1, metadata !"klee_init_env", metadata !"klee_init_env", metadata !"klee_init_env", metadata !1, i32 92, metadata !29, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*, i8***)* @klee_init_env} ; [ DW_TAG_subprogram ]
!29 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !30, i32 0, null} ; [ DW_TAG_subroutine_type ]
!30 = metadata !{null, metadata !26, metadata !31}
!31 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ]
!32 = metadata !{i32 590081, metadata !0, metadata !"msg", metadata !1, i32 29, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!33 = metadata !{i32 29, i32 0, metadata !0, null}
!34 = metadata !{i32 30, i32 0, metadata !35, null}
!35 = metadata !{i32 589835, metadata !0, i32 29, i32 0, metadata !1, i32 0} ; [ DW_TAG_lexical_block ]
!36 = metadata !{i32 31, i32 0, metadata !35, null}
!37 = metadata !{i32 590081, metadata !8, metadata !"s", metadata !1, i32 37, metadata !12, i32 0} ; [ DW_TAG_arg_variable ]
!38 = metadata !{i32 37, i32 0, metadata !8, null}
!39 = metadata !{i32 590081, metadata !8, metadata !"error_msg", metadata !1, i32 37, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!40 = metadata !{i32 590080, metadata !41, metadata !"res", metadata !1, i32 38, metadata !11, i32 0} ; [ DW_TAG_auto_variable ]
!41 = metadata !{i32 589835, metadata !8, i32 37, i32 0, metadata !1, i32 1} ; [ DW_TAG_lexical_block ]
!42 = metadata !{i32 38, i32 0, metadata !41, null}
!43 = metadata !{i32 590080, metadata !41, metadata !"c", metadata !1, i32 39, metadata !7, i32 0} ; [ DW_TAG_auto_variable ]
!44 = metadata !{i32 39, i32 0, metadata !41, null}
!45 = metadata !{i32 41, i32 0, metadata !41, null}
!46 = metadata !{i32 44, i32 0, metadata !41, null}
!47 = metadata !{i32 46, i32 0, metadata !41, null}
!48 = metadata !{i32 47, i32 0, metadata !41, null}
!49 = metadata !{i32 49, i32 0, metadata !41, null}
!50 = metadata !{i32 43, i32 0, metadata !41, null}
!51 = metadata !{i32 52, i32 0, metadata !41, null}
!52 = metadata !{i32 590081, metadata !13, metadata !"c", metadata !1, i32 55, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!53 = metadata !{i32 55, i32 0, metadata !13, null}
!54 = metadata !{i32 57, i32 0, metadata !55, null}
!55 = metadata !{i32 589835, metadata !13, i32 55, i32 0, metadata !1, i32 2} ; [ DW_TAG_lexical_block ]
!56 = metadata !{i32 590081, metadata !17, metadata !"a", metadata !1, i32 60, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!57 = metadata !{i32 60, i32 0, metadata !17, null}
!58 = metadata !{i32 590081, metadata !17, metadata !"b", metadata !1, i32 60, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!59 = metadata !{i32 61, i32 0, metadata !60, null}
!60 = metadata !{i32 589835, metadata !17, i32 60, i32 0, metadata !1, i32 3} ; [ DW_TAG_lexical_block ]
!61 = metadata !{i32 62, i32 0, metadata !60, null}
!62 = metadata !{i32 63, i32 0, metadata !60, null}
!63 = metadata !{i32 64, i32 0, metadata !60, null}
!64 = metadata !{i32 65, i32 0, metadata !60, null}
!65 = metadata !{i32 67, i32 0, metadata !60, null}
!66 = metadata !{i32 590081, metadata !20, metadata !"numChars", metadata !1, i32 70, metadata !16, i32 0} ; [ DW_TAG_arg_variable ]
!67 = metadata !{i32 70, i32 0, metadata !20, null}
!68 = metadata !{i32 590081, metadata !20, metadata !"name", metadata !1, i32 70, metadata !12, i32 0} ; [ DW_TAG_arg_variable ]
!69 = metadata !{i32 590080, metadata !70, metadata !"i", metadata !1, i32 71, metadata !16, i32 0} ; [ DW_TAG_auto_variable ]
!70 = metadata !{i32 589835, metadata !20, i32 70, i32 0, metadata !1, i32 4} ; [ DW_TAG_lexical_block ]
!71 = metadata !{i32 71, i32 0, metadata !70, null}
!72 = metadata !{i32 590080, metadata !70, metadata !"s", metadata !1, i32 72, metadata !12, i32 0} ; [ DW_TAG_auto_variable ]
!73 = metadata !{i32 72, i32 0, metadata !70, null}
!74 = metadata !{i32 73, i32 0, metadata !70, null}
!75 = metadata !{i32 74, i32 0, metadata !70, null}
!76 = metadata !{i32 76, i32 0, metadata !70, null}
!77 = metadata !{i32 77, i32 0, metadata !70, null}
!78 = metadata !{i32 79, i32 0, metadata !70, null}
!79 = metadata !{i32 80, i32 0, metadata !70, null}
!80 = metadata !{i32 590081, metadata !23, metadata !"argc", metadata !1, i32 83, metadata !26, i32 0} ; [ DW_TAG_arg_variable ]
!81 = metadata !{i32 83, i32 0, metadata !23, null}
!82 = metadata !{i32 590081, metadata !23, metadata !"argv", metadata !1, i32 83, metadata !27, i32 0} ; [ DW_TAG_arg_variable ]
!83 = metadata !{i32 590081, metadata !23, metadata !"arg", metadata !1, i32 83, metadata !12, i32 0} ; [ DW_TAG_arg_variable ]
!84 = metadata !{i32 590081, metadata !23, metadata !"argcMax", metadata !1, i32 83, metadata !16, i32 0} ; [ DW_TAG_arg_variable ]
!85 = metadata !{i32 84, i32 0, metadata !86, null}
!86 = metadata !{i32 589835, metadata !23, i32 83, i32 0, metadata !1, i32 5} ; [ DW_TAG_lexical_block ]
!87 = metadata !{i32 85, i32 0, metadata !86, null}
!88 = metadata !{i32 87, i32 0, metadata !86, null}
!89 = metadata !{i32 88, i32 0, metadata !86, null}
!90 = metadata !{i32 90, i32 0, metadata !86, null}
!91 = metadata !{i32 590081, metadata !28, metadata !"argcPtr", metadata !1, i32 92, metadata !26, i32 0} ; [ DW_TAG_arg_variable ]
!92 = metadata !{i32 92, i32 0, metadata !28, null}
!93 = metadata !{i32 590081, metadata !28, metadata !"argvPtr", metadata !1, i32 92, metadata !31, i32 0} ; [ DW_TAG_arg_variable ]
!94 = metadata !{i32 590080, metadata !95, metadata !"argc", metadata !1, i32 93, metadata !16, i32 0} ; [ DW_TAG_auto_variable ]
!95 = metadata !{i32 589835, metadata !28, i32 92, i32 0, metadata !1, i32 6} ; [ DW_TAG_lexical_block ]
!96 = metadata !{i32 93, i32 0, metadata !95, null}
!97 = metadata !{i32 590080, metadata !95, metadata !"argv", metadata !1, i32 94, metadata !27, i32 0} ; [ DW_TAG_auto_variable ]
!98 = metadata !{i32 94, i32 0, metadata !95, null}
!99 = metadata !{i32 590080, metadata !95, metadata !"new_argc", metadata !1, i32 96, metadata !16, i32 0} ; [ DW_TAG_auto_variable ]
!100 = metadata !{i32 96, i32 0, metadata !95, null}
!101 = metadata !{i32 590080, metadata !95, metadata !"n_args", metadata !1, i32 96, metadata !16, i32 0} ; [ DW_TAG_auto_variable ]
!102 = metadata !{i32 590080, metadata !95, metadata !"new_argv", metadata !1, i32 97, metadata !103, i32 0} ; [ DW_TAG_auto_variable ]
!103 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 65536, i64 64, i64 0, i32 0, metadata !12, metadata !104, i32 0, null} ; [ DW_TAG_array_type ]
!104 = metadata !{metadata !105}
!105 = metadata !{i32 589857, i64 0, i64 1023}    ; [ DW_TAG_subrange_type ]
!106 = metadata !{i32 97, i32 0, metadata !95, null}
!107 = metadata !{i32 590080, metadata !95, metadata !"max_len", metadata !1, i32 98, metadata !108, i32 0} ; [ DW_TAG_auto_variable ]
!108 = metadata !{i32 589860, metadata !1, metadata !"unsigned int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!109 = metadata !{i32 98, i32 0, metadata !95, null}
!110 = metadata !{i32 590080, metadata !95, metadata !"min_argvs", metadata !1, i32 98, metadata !108, i32 0} ; [ DW_TAG_auto_variable ]
!111 = metadata !{i32 590080, metadata !95, metadata !"max_argvs", metadata !1, i32 98, metadata !108, i32 0} ; [ DW_TAG_auto_variable ]
!112 = metadata !{i32 590080, metadata !95, metadata !"sym_files", metadata !1, i32 99, metadata !108, i32 0} ; [ DW_TAG_auto_variable ]
!113 = metadata !{i32 99, i32 0, metadata !95, null}
!114 = metadata !{i32 590080, metadata !95, metadata !"sym_file_len", metadata !1, i32 99, metadata !108, i32 0} ; [ DW_TAG_auto_variable ]
!115 = metadata !{i32 590080, metadata !95, metadata !"sym_stdout_flag", metadata !1, i32 100, metadata !16, i32 0} ; [ DW_TAG_auto_variable ]
!116 = metadata !{i32 100, i32 0, metadata !95, null}
!117 = metadata !{i32 590080, metadata !95, metadata !"save_all_writes_flag", metadata !1, i32 101, metadata !16, i32 0} ; [ DW_TAG_auto_variable ]
!118 = metadata !{i32 101, i32 0, metadata !95, null}
!119 = metadata !{i32 590080, metadata !95, metadata !"fd_fail", metadata !1, i32 102, metadata !16, i32 0} ; [ DW_TAG_auto_variable ]
!120 = metadata !{i32 102, i32 0, metadata !95, null}
!121 = metadata !{i32 590080, metadata !95, metadata !"final_argv", metadata !1, i32 103, metadata !27, i32 0} ; [ DW_TAG_auto_variable ]
!122 = metadata !{i32 103, i32 0, metadata !95, null}
!123 = metadata !{i32 590080, metadata !95, metadata !"sym_arg_name", metadata !1, i32 104, metadata !124, i32 0} ; [ DW_TAG_auto_variable ]
!124 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 40, i64 8, i64 0, i32 0, metadata !7, metadata !125, i32 0, null} ; [ DW_TAG_array_type ]
!125 = metadata !{metadata !126}
!126 = metadata !{i32 589857, i64 0, i64 4}       ; [ DW_TAG_subrange_type ]
!127 = metadata !{i32 104, i32 0, metadata !95, null}
!128 = metadata !{i32 590080, metadata !95, metadata !"sym_arg_num", metadata !1, i32 105, metadata !108, i32 0} ; [ DW_TAG_auto_variable ]
!129 = metadata !{i32 105, i32 0, metadata !95, null}
!130 = metadata !{i32 590080, metadata !95, metadata !"k", metadata !1, i32 106, metadata !16, i32 0} ; [ DW_TAG_auto_variable ]
!131 = metadata !{i32 106, i32 0, metadata !95, null}
!132 = metadata !{i32 590080, metadata !95, metadata !"i", metadata !1, i32 106, metadata !16, i32 0} ; [ DW_TAG_auto_variable ]
!133 = metadata !{i32 108, i32 0, metadata !95, null}
!134 = metadata !{i32 111, i32 0, metadata !95, null}
!135 = metadata !{i32 112, i32 0, metadata !95, null}
!136 = metadata !{i32 125, i32 0, metadata !95, null}
!137 = metadata !{i32 590080, metadata !138, metadata !"msg", metadata !1, i32 126, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!138 = metadata !{i32 589835, metadata !95, i32 126, i32 0, metadata !1, i32 7} ; [ DW_TAG_lexical_block ]
!139 = metadata !{i32 126, i32 0, metadata !138, null}
!140 = metadata !{i32 127, i32 0, metadata !138, null}
!141 = metadata !{i32 128, i32 0, metadata !138, null}
!142 = metadata !{i32 130, i32 0, metadata !138, null}
!143 = metadata !{i32 131, i32 0, metadata !138, null}
!144 = metadata !{i32 132, i32 0, metadata !138, null}
!145 = metadata !{i32 136, i32 0, metadata !95, null}
!146 = metadata !{i32 590080, metadata !147, metadata !"msg", metadata !1, i32 137, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!147 = metadata !{i32 589835, metadata !95, i32 138, i32 0, metadata !1, i32 8} ; [ DW_TAG_lexical_block ]
!148 = metadata !{i32 137, i32 0, metadata !147, null}
!149 = metadata !{i32 138, i32 0, metadata !147, null}
!150 = metadata !{i32 140, i32 0, metadata !147, null}
!151 = metadata !{i32 141, i32 0, metadata !147, null}
!152 = metadata !{i32 143, i32 0, metadata !147, null}
!153 = metadata !{i32 144, i32 0, metadata !147, null}
!154 = metadata !{i32 145, i32 0, metadata !147, null}
!155 = metadata !{i32 146, i32 0, metadata !147, null}
!156 = metadata !{i32 148, i32 0, metadata !147, null}
!157 = metadata !{i32 149, i32 0, metadata !147, null}
!158 = metadata !{i32 150, i32 0, metadata !147, null}
!159 = metadata !{i32 151, i32 0, metadata !147, null}
!160 = metadata !{i32 156, i32 0, metadata !95, null}
!161 = metadata !{i32 590080, metadata !162, metadata !"msg", metadata !1, i32 157, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!162 = metadata !{i32 589835, metadata !95, i32 157, i32 0, metadata !1, i32 9} ; [ DW_TAG_lexical_block ]
!163 = metadata !{i32 157, i32 0, metadata !162, null}
!164 = metadata !{i32 159, i32 0, metadata !162, null}
!165 = metadata !{i32 160, i32 0, metadata !162, null}
!166 = metadata !{i32 162, i32 0, metadata !162, null}
!167 = metadata !{i32 163, i32 0, metadata !162, null}
!168 = metadata !{i32 164, i32 0, metadata !162, null}
!169 = metadata !{i32 167, i32 0, metadata !95, null}
!170 = metadata !{i32 168, i32 0, metadata !95, null}
!171 = metadata !{i32 169, i32 0, metadata !95, null}
!172 = metadata !{i32 171, i32 0, metadata !95, null}
!173 = metadata !{i32 172, i32 0, metadata !95, null}
!174 = metadata !{i32 173, i32 0, metadata !95, null}
!175 = metadata !{i32 175, i32 0, metadata !95, null}
!176 = metadata !{i32 176, i32 0, metadata !95, null}
!177 = metadata !{i32 177, i32 0, metadata !95, null}
!178 = metadata !{i32 179, i32 0, metadata !95, null}
!179 = metadata !{i32 590080, metadata !180, metadata !"msg", metadata !1, i32 180, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!180 = metadata !{i32 589835, metadata !95, i32 180, i32 0, metadata !1, i32 10} ; [ DW_TAG_lexical_block ]
!181 = metadata !{i32 180, i32 0, metadata !180, null}
!182 = metadata !{i32 181, i32 0, metadata !180, null}
!183 = metadata !{i32 182, i32 0, metadata !180, null}
!184 = metadata !{i32 184, i32 0, metadata !180, null}
!185 = metadata !{i32 188, i32 0, metadata !95, null}
!186 = metadata !{i32 124, i32 0, metadata !95, null}
!187 = metadata !{i32 192, i32 0, metadata !95, null}
!188 = metadata !{i32 193, i32 0, metadata !95, null}
!189 = metadata !{i32 194, i32 0, metadata !95, null}
!190 = metadata !{i32 195, i32 0, metadata !95, null}
!191 = metadata !{i32 197, i32 0, metadata !95, null}
!192 = metadata !{i32 198, i32 0, metadata !95, null}
!193 = metadata !{i32 200, i32 0, metadata !95, null}
!194 = metadata !{i32 203, i32 0, metadata !95, null}
