; ModuleID = 'fd_init.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-f128:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

%struct.exe_disk_file_t = type { i32, i8*, %struct.stat64* }
%struct.exe_file_system_t = type { i32, %struct.exe_disk_file_t*, %struct.exe_disk_file_t*, i32, %struct.exe_disk_file_t*, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.exe_file_t = type { i32, i32, i64, %struct.exe_disk_file_t* }
%struct.exe_sym_env_t = type { [32 x %struct.exe_file_t], i32, i32, i32 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@__exe_env = unnamed_addr global %struct.exe_sym_env_t { [32 x %struct.exe_file_t] [%struct.exe_file_t { i32 0, i32 5, i64 0, %struct.exe_disk_file_t* null }, %struct.exe_file_t { i32 1, i32 9, i64 0, %struct.exe_disk_file_t* null }, %struct.exe_file_t { i32 2, i32 9, i64 0, %struct.exe_disk_file_t* null }, %struct.exe_file_t zeroinitializer, %struct.exe_file_t zeroinitializer, %struct.exe_file_t zeroinitializer, %struct.exe_file_t zeroinitializer, %struct.exe_file_t zeroinitializer, %struct.exe_file_t zeroinitializer, %struct.exe_file_t zeroinitializer, %struct.exe_file_t zeroinitializer, %struct.exe_file_t zeroinitializer, %struct.exe_file_t zeroinitializer, %struct.exe_file_t zeroinitializer, %struct.exe_file_t zeroinitializer, %struct.exe_file_t zeroinitializer, %struct.exe_file_t zeroinitializer, %struct.exe_file_t zeroinitializer, %struct.exe_file_t zeroinitializer, %struct.exe_file_t zeroinitializer, %struct.exe_file_t zeroinitializer, %struct.exe_file_t zeroinitializer, %struct.exe_file_t zeroinitializer, %struct.exe_file_t zeroinitializer, %struct.exe_file_t zeroinitializer, %struct.exe_file_t zeroinitializer, %struct.exe_file_t zeroinitializer, %struct.exe_file_t zeroinitializer, %struct.exe_file_t zeroinitializer, %struct.exe_file_t zeroinitializer, %struct.exe_file_t zeroinitializer, %struct.exe_file_t zeroinitializer], i32 18, i32 0, i32 0 }, align 32
@.str = private unnamed_addr constant [6 x i8] c"-stat\00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str2 = private unnamed_addr constant [10 x i8] c"fd_init.c\00", align 1
@__PRETTY_FUNCTION__.3923 = internal unnamed_addr constant [19 x i8] c"__create_new_dfile\00"
@.str3 = private unnamed_addr constant [7 x i8] c"?-data\00", align 1
@.str4 = private unnamed_addr constant [2 x i8] c".\00", align 1
@__exe_fs = common unnamed_addr global %struct.exe_file_system_t zeroinitializer, align 32
@.str5 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str6 = private unnamed_addr constant [10 x i8] c"read_fail\00", align 1
@.str7 = private unnamed_addr constant [11 x i8] c"write_fail\00", align 1
@.str8 = private unnamed_addr constant [11 x i8] c"close_fail\00", align 1
@.str9 = private unnamed_addr constant [15 x i8] c"ftruncate_fail\00", align 1
@.str10 = private unnamed_addr constant [12 x i8] c"getcwd_fail\00", align 1
@.str11 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str12 = private unnamed_addr constant [14 x i8] c"model_version\00", align 1

define internal void @__create_new_dfile(%struct.exe_disk_file_t* %dfile, i32 %size, i8* %name, %struct.stat64* %defaults) nounwind {
entry:
  %dfile_addr = alloca %struct.exe_disk_file_t*, align 8
  %size_addr = alloca i32, align 4
  %name_addr = alloca i8*, align 8
  %defaults_addr = alloca %struct.stat64*, align 8
  %s = alloca %struct.stat64*
  %sp = alloca i8*
  %sname = alloca [64 x i8]
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{%struct.exe_disk_file_t** %dfile_addr}, metadata !104), !dbg !105
  store %struct.exe_disk_file_t* %dfile, %struct.exe_disk_file_t** %dfile_addr
  call void @llvm.dbg.declare(metadata !{i32* %size_addr}, metadata !106), !dbg !105
  store i32 %size, i32* %size_addr
  call void @llvm.dbg.declare(metadata !{i8** %name_addr}, metadata !107), !dbg !108
  store i8* %name, i8** %name_addr
  call void @llvm.dbg.declare(metadata !{%struct.stat64** %defaults_addr}, metadata !109), !dbg !108
  store %struct.stat64* %defaults, %struct.stat64** %defaults_addr
  call void @llvm.dbg.declare(metadata !{%struct.stat64** %s}, metadata !110), !dbg !112
  call void @llvm.dbg.declare(metadata !{i8** %sp}, metadata !113), !dbg !114
  call void @llvm.dbg.declare(metadata !{[64 x i8]* %sname}, metadata !115), !dbg !119
  %0 = call noalias i8* @malloc(i64 144) nounwind, !dbg !112
  %1 = bitcast i8* %0 to %struct.stat64*, !dbg !112
  store %struct.stat64* %1, %struct.stat64** %s, align 8, !dbg !112
  %2 = load i8** %name_addr, align 8, !dbg !120
  store i8* %2, i8** %sp, align 8, !dbg !120
  br label %bb1, !dbg !120

bb:                                               ; preds = %bb1
  %3 = load i8** %sp, align 8, !dbg !121
  %4 = ptrtoint i8* %3 to i64, !dbg !121
  %5 = load i8** %name_addr, align 8, !dbg !121
  %6 = ptrtoint i8* %5 to i64, !dbg !121
  %7 = sub nsw i64 %4, %6, !dbg !121
  %8 = load i8** %sp, align 8, !dbg !121
  %9 = load i8* %8, align 1, !dbg !121
  %10 = getelementptr inbounds [64 x i8]* %sname, i64 0, i64 %7, !dbg !121
  store i8 %9, i8* %10, align 1, !dbg !121
  %11 = load i8** %sp, align 8, !dbg !120
  %12 = getelementptr inbounds i8* %11, i64 1, !dbg !120
  store i8* %12, i8** %sp, align 8, !dbg !120
  br label %bb1, !dbg !120

bb1:                                              ; preds = %bb, %entry
  %13 = load i8** %sp, align 8, !dbg !120
  %14 = load i8* %13, align 1, !dbg !120
  %15 = icmp ne i8 %14, 0, !dbg !120
  br i1 %15, label %bb, label %bb2, !dbg !120

bb2:                                              ; preds = %bb1
  %16 = load i8** %sp, align 8, !dbg !122
  %17 = ptrtoint i8* %16 to i64, !dbg !122
  %18 = load i8** %name_addr, align 8, !dbg !122
  %19 = ptrtoint i8* %18 to i64, !dbg !122
  %20 = sub nsw i64 %17, %19, !dbg !122
  %21 = getelementptr inbounds [64 x i8]* %sname, i64 0, i64 %20, !dbg !122
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* getelementptr inbounds ([6 x i8]* @.str, i64 0, i64 0), i64 6, i32 1, i1 false), !dbg !122
  %22 = load i32* %size_addr, align 4, !dbg !123
  %23 = icmp eq i32 %22, 0, !dbg !123
  br i1 %23, label %bb3, label %bb4, !dbg !123

bb3:                                              ; preds = %bb2
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 55, i8* getelementptr inbounds ([19 x i8]* @__PRETTY_FUNCTION__.3923, i64 0, i64 0)) noreturn nounwind, !dbg !123
  unreachable, !dbg !123

bb4:                                              ; preds = %bb2
  %24 = load %struct.exe_disk_file_t** %dfile_addr, align 8, !dbg !124
  %25 = getelementptr inbounds %struct.exe_disk_file_t* %24, i32 0, i32 0, !dbg !124
  %26 = load i32* %size_addr, align 4, !dbg !124
  store i32 %26, i32* %25, align 8, !dbg !124
  %27 = load %struct.exe_disk_file_t** %dfile_addr, align 8, !dbg !125
  %28 = getelementptr inbounds %struct.exe_disk_file_t* %27, i32 0, i32 0, !dbg !125
  %29 = load i32* %28, align 8, !dbg !125
  %30 = zext i32 %29 to i64, !dbg !125
  %31 = call noalias i8* @malloc(i64 %30) nounwind, !dbg !125
  %32 = load %struct.exe_disk_file_t** %dfile_addr, align 8, !dbg !125
  %33 = getelementptr inbounds %struct.exe_disk_file_t* %32, i32 0, i32 1, !dbg !125
  store i8* %31, i8** %33, align 8, !dbg !125
  %34 = load %struct.exe_disk_file_t** %dfile_addr, align 8, !dbg !126
  %35 = getelementptr inbounds %struct.exe_disk_file_t* %34, i32 0, i32 0, !dbg !126
  %36 = load i32* %35, align 8, !dbg !126
  %37 = zext i32 %36 to i64, !dbg !126
  %38 = load %struct.exe_disk_file_t** %dfile_addr, align 8, !dbg !126
  %39 = getelementptr inbounds %struct.exe_disk_file_t* %38, i32 0, i32 1, !dbg !126
  %40 = load i8** %39, align 8, !dbg !126
  %41 = load i8** %name_addr, align 8, !dbg !126
  call void @klee_make_symbolic(i8* %40, i64 %37, i8* %41) nounwind, !dbg !126
  %42 = load %struct.stat64** %s, align 8, !dbg !127
  %43 = bitcast %struct.stat64* %42 to i8*, !dbg !127
  %sname5 = bitcast [64 x i8]* %sname to i8*, !dbg !127
  call void @klee_make_symbolic(i8* %43, i64 144, i8* %sname5) nounwind, !dbg !127
  %44 = load %struct.stat64** %s, align 8, !dbg !128
  %45 = getelementptr inbounds %struct.stat64* %44, i32 0, i32 1, !dbg !128
  %46 = load i64* %45, align 8, !dbg !128
  %47 = call i32 @klee_is_symbolic(i64 %46) nounwind, !dbg !128
  %48 = icmp eq i32 %47, 0, !dbg !128
  br i1 %48, label %bb6, label %bb8, !dbg !128

bb6:                                              ; preds = %bb4
  %49 = load %struct.stat64** %s, align 8, !dbg !128
  %50 = getelementptr inbounds %struct.stat64* %49, i32 0, i32 1, !dbg !128
  %51 = load i64* %50, align 8, !dbg !128
  %52 = and i64 %51, 2147483647, !dbg !128
  %53 = icmp eq i64 %52, 0, !dbg !128
  br i1 %53, label %bb7, label %bb8, !dbg !128

bb7:                                              ; preds = %bb6
  %54 = load %struct.stat64** %defaults_addr, align 8, !dbg !129
  %55 = getelementptr inbounds %struct.stat64* %54, i32 0, i32 1, !dbg !129
  %56 = load i64* %55, align 8, !dbg !129
  %57 = load %struct.stat64** %s, align 8, !dbg !129
  %58 = getelementptr inbounds %struct.stat64* %57, i32 0, i32 1, !dbg !129
  store i64 %56, i64* %58, align 8, !dbg !129
  br label %bb8, !dbg !129

bb8:                                              ; preds = %bb7, %bb6, %bb4
  %59 = load %struct.stat64** %s, align 8, !dbg !130
  %60 = getelementptr inbounds %struct.stat64* %59, i32 0, i32 1, !dbg !130
  %61 = load i64* %60, align 8, !dbg !130
  %62 = and i64 %61, 2147483647, !dbg !130
  %63 = icmp ne i64 %62, 0, !dbg !130
  %64 = zext i1 %63 to i64, !dbg !130
  call void @klee_assume(i64 %64) nounwind, !dbg !130
  %65 = load %struct.stat64** %s, align 8, !dbg !131
  %66 = getelementptr inbounds %struct.stat64* %65, i32 0, i32 9, !dbg !131
  %67 = load i64* %66, align 8, !dbg !131
  %68 = and i64 %67, -65536, !dbg !131
  %69 = icmp eq i64 %68, 0, !dbg !131
  %70 = zext i1 %69 to i64, !dbg !131
  call void @klee_assume(i64 %70) nounwind, !dbg !131
  %71 = load %struct.stat64** %s, align 8, !dbg !132
  %72 = getelementptr inbounds %struct.stat64* %71, i32 0, i32 3, !dbg !132
  %73 = load i32* %72, align 8, !dbg !132
  %74 = and i32 %73, -61952, !dbg !132
  %75 = icmp eq i32 %74, 0, !dbg !132
  %76 = zext i1 %75 to i64, !dbg !132
  %77 = load %struct.stat64** %s, align 8, !dbg !132
  %78 = bitcast %struct.stat64* %77 to i8*, !dbg !132
  call void @klee_prefer_cex(i8* %78, i64 %76) nounwind, !dbg !132
  %79 = load %struct.stat64** %s, align 8, !dbg !133
  %80 = getelementptr inbounds %struct.stat64* %79, i32 0, i32 0, !dbg !133
  %81 = load i64* %80, align 8, !dbg !133
  %82 = load %struct.stat64** %defaults_addr, align 8, !dbg !133
  %83 = getelementptr inbounds %struct.stat64* %82, i32 0, i32 0, !dbg !133
  %84 = load i64* %83, align 8, !dbg !133
  %85 = icmp eq i64 %81, %84, !dbg !133
  %86 = zext i1 %85 to i64, !dbg !133
  %87 = load %struct.stat64** %s, align 8, !dbg !133
  %88 = bitcast %struct.stat64* %87 to i8*, !dbg !133
  call void @klee_prefer_cex(i8* %88, i64 %86) nounwind, !dbg !133
  %89 = load %struct.stat64** %s, align 8, !dbg !134
  %90 = getelementptr inbounds %struct.stat64* %89, i32 0, i32 7, !dbg !134
  %91 = load i64* %90, align 8, !dbg !134
  %92 = load %struct.stat64** %defaults_addr, align 8, !dbg !134
  %93 = getelementptr inbounds %struct.stat64* %92, i32 0, i32 7, !dbg !134
  %94 = load i64* %93, align 8, !dbg !134
  %95 = icmp eq i64 %91, %94, !dbg !134
  %96 = zext i1 %95 to i64, !dbg !134
  %97 = load %struct.stat64** %s, align 8, !dbg !134
  %98 = bitcast %struct.stat64* %97 to i8*, !dbg !134
  call void @klee_prefer_cex(i8* %98, i64 %96) nounwind, !dbg !134
  %99 = load %struct.stat64** %s, align 8, !dbg !135
  %100 = getelementptr inbounds %struct.stat64* %99, i32 0, i32 3, !dbg !135
  %101 = load i32* %100, align 8, !dbg !135
  %102 = and i32 %101, 448, !dbg !135
  %103 = icmp eq i32 %102, 384, !dbg !135
  %104 = zext i1 %103 to i64, !dbg !135
  %105 = load %struct.stat64** %s, align 8, !dbg !135
  %106 = bitcast %struct.stat64* %105 to i8*, !dbg !135
  call void @klee_prefer_cex(i8* %106, i64 %104) nounwind, !dbg !135
  %107 = load %struct.stat64** %s, align 8, !dbg !136
  %108 = getelementptr inbounds %struct.stat64* %107, i32 0, i32 3, !dbg !136
  %109 = load i32* %108, align 8, !dbg !136
  %110 = and i32 %109, 56, !dbg !136
  %111 = icmp eq i32 %110, 16, !dbg !136
  %112 = zext i1 %111 to i64, !dbg !136
  %113 = load %struct.stat64** %s, align 8, !dbg !136
  %114 = bitcast %struct.stat64* %113 to i8*, !dbg !136
  call void @klee_prefer_cex(i8* %114, i64 %112) nounwind, !dbg !136
  %115 = load %struct.stat64** %s, align 8, !dbg !137
  %116 = getelementptr inbounds %struct.stat64* %115, i32 0, i32 3, !dbg !137
  %117 = load i32* %116, align 8, !dbg !137
  %118 = and i32 %117, 7, !dbg !137
  %119 = icmp eq i32 %118, 2, !dbg !137
  %120 = zext i1 %119 to i64, !dbg !137
  %121 = load %struct.stat64** %s, align 8, !dbg !137
  %122 = bitcast %struct.stat64* %121 to i8*, !dbg !137
  call void @klee_prefer_cex(i8* %122, i64 %120) nounwind, !dbg !137
  %123 = load %struct.stat64** %s, align 8, !dbg !138
  %124 = getelementptr inbounds %struct.stat64* %123, i32 0, i32 3, !dbg !138
  %125 = load i32* %124, align 8, !dbg !138
  %126 = and i32 %125, 61440, !dbg !138
  %127 = icmp eq i32 %126, 32768, !dbg !138
  %128 = zext i1 %127 to i64, !dbg !138
  %129 = load %struct.stat64** %s, align 8, !dbg !138
  %130 = bitcast %struct.stat64* %129 to i8*, !dbg !138
  call void @klee_prefer_cex(i8* %130, i64 %128) nounwind, !dbg !138
  %131 = load %struct.stat64** %s, align 8, !dbg !139
  %132 = getelementptr inbounds %struct.stat64* %131, i32 0, i32 2, !dbg !139
  %133 = load i64* %132, align 8, !dbg !139
  %134 = icmp eq i64 %133, 1, !dbg !139
  %135 = zext i1 %134 to i64, !dbg !139
  %136 = load %struct.stat64** %s, align 8, !dbg !139
  %137 = bitcast %struct.stat64* %136 to i8*, !dbg !139
  call void @klee_prefer_cex(i8* %137, i64 %135) nounwind, !dbg !139
  %138 = load %struct.stat64** %s, align 8, !dbg !140
  %139 = getelementptr inbounds %struct.stat64* %138, i32 0, i32 4, !dbg !140
  %140 = load i32* %139, align 4, !dbg !140
  %141 = load %struct.stat64** %defaults_addr, align 8, !dbg !140
  %142 = getelementptr inbounds %struct.stat64* %141, i32 0, i32 4, !dbg !140
  %143 = load i32* %142, align 4, !dbg !140
  %144 = icmp eq i32 %140, %143, !dbg !140
  %145 = zext i1 %144 to i64, !dbg !140
  %146 = load %struct.stat64** %s, align 8, !dbg !140
  %147 = bitcast %struct.stat64* %146 to i8*, !dbg !140
  call void @klee_prefer_cex(i8* %147, i64 %145) nounwind, !dbg !140
  %148 = load %struct.stat64** %s, align 8, !dbg !141
  %149 = getelementptr inbounds %struct.stat64* %148, i32 0, i32 5, !dbg !141
  %150 = load i32* %149, align 8, !dbg !141
  %151 = load %struct.stat64** %defaults_addr, align 8, !dbg !141
  %152 = getelementptr inbounds %struct.stat64* %151, i32 0, i32 5, !dbg !141
  %153 = load i32* %152, align 8, !dbg !141
  %154 = icmp eq i32 %150, %153, !dbg !141
  %155 = zext i1 %154 to i64, !dbg !141
  %156 = load %struct.stat64** %s, align 8, !dbg !141
  %157 = bitcast %struct.stat64* %156 to i8*, !dbg !141
  call void @klee_prefer_cex(i8* %157, i64 %155) nounwind, !dbg !141
  %158 = load %struct.stat64** %s, align 8, !dbg !142
  %159 = getelementptr inbounds %struct.stat64* %158, i32 0, i32 9, !dbg !142
  %160 = load i64* %159, align 8, !dbg !142
  %161 = icmp eq i64 %160, 4096, !dbg !142
  %162 = zext i1 %161 to i64, !dbg !142
  %163 = load %struct.stat64** %s, align 8, !dbg !142
  %164 = bitcast %struct.stat64* %163 to i8*, !dbg !142
  call void @klee_prefer_cex(i8* %164, i64 %162) nounwind, !dbg !142
  %165 = load %struct.stat64** %s, align 8, !dbg !143
  %166 = getelementptr inbounds %struct.stat64* %165, i32 0, i32 11, !dbg !143
  %167 = getelementptr inbounds %struct.timespec* %166, i32 0, i32 0, !dbg !143
  %168 = load i64* %167, align 8, !dbg !143
  %169 = load %struct.stat64** %defaults_addr, align 8, !dbg !143
  %170 = getelementptr inbounds %struct.stat64* %169, i32 0, i32 11, !dbg !143
  %171 = getelementptr inbounds %struct.timespec* %170, i32 0, i32 0, !dbg !143
  %172 = load i64* %171, align 8, !dbg !143
  %173 = icmp eq i64 %168, %172, !dbg !143
  %174 = zext i1 %173 to i64, !dbg !143
  %175 = load %struct.stat64** %s, align 8, !dbg !143
  %176 = bitcast %struct.stat64* %175 to i8*, !dbg !143
  call void @klee_prefer_cex(i8* %176, i64 %174) nounwind, !dbg !143
  %177 = load %struct.stat64** %s, align 8, !dbg !144
  %178 = getelementptr inbounds %struct.stat64* %177, i32 0, i32 12, !dbg !144
  %179 = getelementptr inbounds %struct.timespec* %178, i32 0, i32 0, !dbg !144
  %180 = load i64* %179, align 8, !dbg !144
  %181 = load %struct.stat64** %defaults_addr, align 8, !dbg !144
  %182 = getelementptr inbounds %struct.stat64* %181, i32 0, i32 12, !dbg !144
  %183 = getelementptr inbounds %struct.timespec* %182, i32 0, i32 0, !dbg !144
  %184 = load i64* %183, align 8, !dbg !144
  %185 = icmp eq i64 %180, %184, !dbg !144
  %186 = zext i1 %185 to i64, !dbg !144
  %187 = load %struct.stat64** %s, align 8, !dbg !144
  %188 = bitcast %struct.stat64* %187 to i8*, !dbg !144
  call void @klee_prefer_cex(i8* %188, i64 %186) nounwind, !dbg !144
  %189 = load %struct.stat64** %s, align 8, !dbg !145
  %190 = getelementptr inbounds %struct.stat64* %189, i32 0, i32 13, !dbg !145
  %191 = getelementptr inbounds %struct.timespec* %190, i32 0, i32 0, !dbg !145
  %192 = load i64* %191, align 8, !dbg !145
  %193 = load %struct.stat64** %defaults_addr, align 8, !dbg !145
  %194 = getelementptr inbounds %struct.stat64* %193, i32 0, i32 13, !dbg !145
  %195 = getelementptr inbounds %struct.timespec* %194, i32 0, i32 0, !dbg !145
  %196 = load i64* %195, align 8, !dbg !145
  %197 = icmp eq i64 %192, %196, !dbg !145
  %198 = zext i1 %197 to i64, !dbg !145
  %199 = load %struct.stat64** %s, align 8, !dbg !145
  %200 = bitcast %struct.stat64* %199 to i8*, !dbg !145
  call void @klee_prefer_cex(i8* %200, i64 %198) nounwind, !dbg !145
  %201 = load %struct.exe_disk_file_t** %dfile_addr, align 8, !dbg !146
  %202 = getelementptr inbounds %struct.exe_disk_file_t* %201, i32 0, i32 0, !dbg !146
  %203 = load i32* %202, align 8, !dbg !146
  %204 = zext i32 %203 to i64, !dbg !146
  %205 = load %struct.stat64** %s, align 8, !dbg !146
  %206 = getelementptr inbounds %struct.stat64* %205, i32 0, i32 8, !dbg !146
  store i64 %204, i64* %206, align 8, !dbg !146
  %207 = load %struct.stat64** %s, align 8, !dbg !147
  %208 = getelementptr inbounds %struct.stat64* %207, i32 0, i32 10, !dbg !147
  store i64 8, i64* %208, align 8, !dbg !147
  %209 = load %struct.exe_disk_file_t** %dfile_addr, align 8, !dbg !148
  %210 = getelementptr inbounds %struct.exe_disk_file_t* %209, i32 0, i32 2, !dbg !148
  %211 = load %struct.stat64** %s, align 8, !dbg !148
  store %struct.stat64* %211, %struct.stat64** %210, align 8, !dbg !148
  br label %return, !dbg !149

return:                                           ; preds = %bb8
  ret void, !dbg !149
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare noalias i8* @malloc(i64) nounwind

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

declare void @klee_make_symbolic(i8*, i64, i8*)

declare i32 @klee_is_symbolic(i64)

declare void @klee_assume(i64)

declare void @klee_prefer_cex(i8*, i64)

define internal i32 @__sym_uint32(i8* %name) nounwind {
entry:
  %name_addr = alloca i8*, align 8
  %retval = alloca i32
  %0 = alloca i32
  %x = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i8** %name_addr}, metadata !150), !dbg !151
  store i8* %name, i8** %name_addr
  call void @llvm.dbg.declare(metadata !{i32* %x}, metadata !152), !dbg !154
  %x1 = bitcast i32* %x to i8*, !dbg !155
  %1 = load i8** %name_addr, align 8, !dbg !155
  call void @klee_make_symbolic(i8* %x1, i64 4, i8* %1) nounwind, !dbg !155
  %2 = load i32* %x, align 4, !dbg !156
  store i32 %2, i32* %0, align 4, !dbg !156
  %3 = load i32* %0, align 4, !dbg !156
  store i32 %3, i32* %retval, align 4, !dbg !156
  br label %return, !dbg !156

return:                                           ; preds = %entry
  %retval2 = load i32* %retval, !dbg !156
  ret i32 %retval2, !dbg !156
}

define void @klee_init_fds(i32 %n_files, i32 %file_length, i32 %sym_stdout_flag, i32 %save_all_writes_flag, i32 %max_failures) nounwind {
entry:
  %n_files_addr = alloca i32, align 4
  %file_length_addr = alloca i32, align 4
  %sym_stdout_flag_addr = alloca i32, align 4
  %save_all_writes_flag_addr = alloca i32, align 4
  %max_failures_addr = alloca i32, align 4
  %k = alloca i32
  %name = alloca [7 x i8]
  %s = alloca %struct.stat64
  %"alloca point" = bitcast i32 0 to i32
  call void @llvm.dbg.declare(metadata !{i32* %n_files_addr}, metadata !157), !dbg !158
  store i32 %n_files, i32* %n_files_addr
  call void @llvm.dbg.declare(metadata !{i32* %file_length_addr}, metadata !159), !dbg !158
  store i32 %file_length, i32* %file_length_addr
  call void @llvm.dbg.declare(metadata !{i32* %sym_stdout_flag_addr}, metadata !160), !dbg !161
  store i32 %sym_stdout_flag, i32* %sym_stdout_flag_addr
  call void @llvm.dbg.declare(metadata !{i32* %save_all_writes_flag_addr}, metadata !162), !dbg !161
  store i32 %save_all_writes_flag, i32* %save_all_writes_flag_addr
  call void @llvm.dbg.declare(metadata !{i32* %max_failures_addr}, metadata !163), !dbg !164
  store i32 %max_failures, i32* %max_failures_addr
  call void @llvm.dbg.declare(metadata !{i32* %k}, metadata !165), !dbg !167
  call void @llvm.dbg.declare(metadata !{[7 x i8]* %name}, metadata !168), !dbg !172
  call void @llvm.dbg.declare(metadata !{%struct.stat64* %s}, metadata !173), !dbg !174
  %0 = getelementptr inbounds [7 x i8]* %name, i32 0, i32 0, !dbg !172
  %1 = load i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 0), align 1, !dbg !172
  store i8 %1, i8* %0, align 1, !dbg !172
  %2 = getelementptr inbounds [7 x i8]* %name, i32 0, i32 1, !dbg !172
  %3 = load i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 1), align 1, !dbg !172
  store i8 %3, i8* %2, align 1, !dbg !172
  %4 = getelementptr inbounds [7 x i8]* %name, i32 0, i32 2, !dbg !172
  %5 = load i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 2), align 1, !dbg !172
  store i8 %5, i8* %4, align 1, !dbg !172
  %6 = getelementptr inbounds [7 x i8]* %name, i32 0, i32 3, !dbg !172
  %7 = load i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 3), align 1, !dbg !172
  store i8 %7, i8* %6, align 1, !dbg !172
  %8 = getelementptr inbounds [7 x i8]* %name, i32 0, i32 4, !dbg !172
  %9 = load i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 4), align 1, !dbg !172
  store i8 %9, i8* %8, align 1, !dbg !172
  %10 = getelementptr inbounds [7 x i8]* %name, i32 0, i32 5, !dbg !172
  %11 = load i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 5), align 1, !dbg !172
  store i8 %11, i8* %10, align 1, !dbg !172
  %12 = getelementptr inbounds [7 x i8]* %name, i32 0, i32 6, !dbg !172
  %13 = load i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 6), align 1, !dbg !172
  store i8 %13, i8* %12, align 1, !dbg !172
  %14 = call i32 @stat64(i8* noalias getelementptr inbounds ([2 x i8]* @.str4, i64 0, i64 0), %struct.stat64* noalias %s) nounwind, !dbg !175
  %15 = load i32* %n_files_addr, align 4, !dbg !176
  store i32 %15, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !176
  %16 = load i32* %n_files_addr, align 4, !dbg !177
  %17 = zext i32 %16 to i64, !dbg !177
  %18 = mul i64 %17, 24, !dbg !177
  %19 = call noalias i8* @malloc(i64 %18) nounwind, !dbg !177
  %20 = bitcast i8* %19 to %struct.exe_disk_file_t*, !dbg !177
  store %struct.exe_disk_file_t* %20, %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !177
  store i32 0, i32* %k, align 4, !dbg !178
  br label %bb2, !dbg !178

bb:                                               ; preds = %bb2
  %21 = load i32* %k, align 4, !dbg !179
  %22 = trunc i32 %21 to i8, !dbg !179
  %23 = add i8 %22, 65, !dbg !179
  %24 = getelementptr inbounds [7 x i8]* %name, i64 0, i64 0, !dbg !179
  store i8 %23, i8* %24, align 1, !dbg !179
  %25 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !180
  %26 = load i32* %k, align 4, !dbg !180
  %27 = zext i32 %26 to i64, !dbg !180
  %28 = getelementptr inbounds %struct.exe_disk_file_t* %25, i64 %27, !dbg !180
  %29 = load i32* %file_length_addr, align 4, !dbg !180
  %name1 = bitcast [7 x i8]* %name to i8*, !dbg !180
  call void @__create_new_dfile(%struct.exe_disk_file_t* %28, i32 %29, i8* %name1, %struct.stat64* %s) nounwind, !dbg !180
  %30 = load i32* %k, align 4, !dbg !178
  %31 = add i32 %30, 1, !dbg !178
  store i32 %31, i32* %k, align 4, !dbg !178
  br label %bb2, !dbg !178

bb2:                                              ; preds = %bb, %entry
  %32 = load i32* %k, align 4, !dbg !178
  %33 = load i32* %n_files_addr, align 4, !dbg !178
  %34 = icmp ult i32 %32, %33, !dbg !178
  br i1 %34, label %bb, label %bb3, !dbg !178

bb3:                                              ; preds = %bb2
  %35 = load i32* %file_length_addr, align 4, !dbg !181
  %36 = icmp ne i32 %35, 0, !dbg !181
  br i1 %36, label %bb4, label %bb5, !dbg !181

bb4:                                              ; preds = %bb3
  %37 = call noalias i8* @malloc(i64 24) nounwind, !dbg !182
  %38 = bitcast i8* %37 to %struct.exe_disk_file_t*, !dbg !182
  store %struct.exe_disk_file_t* %38, %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 1), align 8, !dbg !182
  %39 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 1), align 8, !dbg !183
  %40 = load i32* %file_length_addr, align 4, !dbg !183
  call void @__create_new_dfile(%struct.exe_disk_file_t* %39, i32 %40, i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0), %struct.stat64* %s) nounwind, !dbg !183
  %41 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 1), align 8, !dbg !184
  store %struct.exe_disk_file_t* %41, %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 0, i32 3), align 8, !dbg !184
  br label %bb6, !dbg !184

bb5:                                              ; preds = %bb3
  store %struct.exe_disk_file_t* null, %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 1), align 8, !dbg !185
  br label %bb6, !dbg !185

bb6:                                              ; preds = %bb5, %bb4
  %42 = load i32* %max_failures_addr, align 4, !dbg !186
  store i32 %42, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !186
  %43 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !187
  %44 = icmp ne i32 %43, 0, !dbg !187
  br i1 %44, label %bb7, label %bb8, !dbg !187

bb7:                                              ; preds = %bb6
  %45 = call noalias i8* @malloc(i64 4) nounwind, !dbg !188
  %46 = bitcast i8* %45 to i32*, !dbg !188
  store i32* %46, i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 6), align 8, !dbg !188
  %47 = call noalias i8* @malloc(i64 4) nounwind, !dbg !189
  %48 = bitcast i8* %47 to i32*, !dbg !189
  store i32* %48, i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 7), align 8, !dbg !189
  %49 = call noalias i8* @malloc(i64 4) nounwind, !dbg !190
  %50 = bitcast i8* %49 to i32*, !dbg !190
  store i32* %50, i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 8), align 8, !dbg !190
  %51 = call noalias i8* @malloc(i64 4) nounwind, !dbg !191
  %52 = bitcast i8* %51 to i32*, !dbg !191
  store i32* %52, i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 9), align 8, !dbg !191
  %53 = call noalias i8* @malloc(i64 4) nounwind, !dbg !192
  %54 = bitcast i8* %53 to i32*, !dbg !192
  store i32* %54, i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 10), align 8, !dbg !192
  %55 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 6), align 8, !dbg !193
  %56 = bitcast i32* %55 to i8*, !dbg !193
  call void @klee_make_symbolic(i8* %56, i64 4, i8* getelementptr inbounds ([10 x i8]* @.str6, i64 0, i64 0)) nounwind, !dbg !193
  %57 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 7), align 8, !dbg !194
  %58 = bitcast i32* %57 to i8*, !dbg !194
  call void @klee_make_symbolic(i8* %58, i64 4, i8* getelementptr inbounds ([11 x i8]* @.str7, i64 0, i64 0)) nounwind, !dbg !194
  %59 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 8), align 8, !dbg !195
  %60 = bitcast i32* %59 to i8*, !dbg !195
  call void @klee_make_symbolic(i8* %60, i64 4, i8* getelementptr inbounds ([11 x i8]* @.str8, i64 0, i64 0)) nounwind, !dbg !195
  %61 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 9), align 8, !dbg !196
  %62 = bitcast i32* %61 to i8*, !dbg !196
  call void @klee_make_symbolic(i8* %62, i64 4, i8* getelementptr inbounds ([15 x i8]* @.str9, i64 0, i64 0)) nounwind, !dbg !196
  %63 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 10), align 8, !dbg !197
  %64 = bitcast i32* %63 to i8*, !dbg !197
  call void @klee_make_symbolic(i8* %64, i64 4, i8* getelementptr inbounds ([12 x i8]* @.str10, i64 0, i64 0)) nounwind, !dbg !197
  br label %bb8, !dbg !197

bb8:                                              ; preds = %bb7, %bb6
  %65 = load i32* %sym_stdout_flag_addr, align 4, !dbg !198
  %66 = icmp ne i32 %65, 0, !dbg !198
  br i1 %66, label %bb9, label %bb10, !dbg !198

bb9:                                              ; preds = %bb8
  %67 = call noalias i8* @malloc(i64 24) nounwind, !dbg !199
  %68 = bitcast i8* %67 to %struct.exe_disk_file_t*, !dbg !199
  store %struct.exe_disk_file_t* %68, %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 2), align 8, !dbg !199
  %69 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 2), align 8, !dbg !200
  call void @__create_new_dfile(%struct.exe_disk_file_t* %69, i32 1024, i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), %struct.stat64* %s) nounwind, !dbg !200
  %70 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 2), align 8, !dbg !201
  store %struct.exe_disk_file_t* %70, %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 1, i32 3), align 8, !dbg !201
  store i32 0, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 3), align 8, !dbg !202
  br label %bb11, !dbg !202

bb10:                                             ; preds = %bb8
  store %struct.exe_disk_file_t* null, %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 2), align 8, !dbg !203
  br label %bb11, !dbg !203

bb11:                                             ; preds = %bb10, %bb9
  %71 = load i32* %save_all_writes_flag_addr, align 4, !dbg !204
  store i32 %71, i32* getelementptr inbounds (%struct.exe_sym_env_t* @__exe_env, i64 0, i32 3), align 8, !dbg !204
  %72 = call i32 @__sym_uint32(i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0)) nounwind, !dbg !205
  store i32 %72, i32* getelementptr inbounds (%struct.exe_sym_env_t* @__exe_env, i64 0, i32 2), align 4, !dbg !205
  %73 = load i32* getelementptr inbounds (%struct.exe_sym_env_t* @__exe_env, i64 0, i32 2), align 4, !dbg !206
  %74 = icmp eq i32 %73, 1, !dbg !206
  %75 = zext i1 %74 to i64, !dbg !206
  call void @klee_assume(i64 %75) nounwind, !dbg !206
  br label %return, !dbg !207

return:                                           ; preds = %bb11
  ret void, !dbg !207
}

declare i32 @stat64(i8* noalias, %struct.stat64* noalias) nounwind

!llvm.dbg.gv = !{!0, !75}
!llvm.dbg.sp = !{!93, !98, !101}

!0 = metadata !{i32 589876, i32 0, metadata !1, metadata !"__exe_env", metadata !"__exe_env", metadata !"", metadata !1, i32 37, metadata !3, i1 false, i1 true, %struct.exe_sym_env_t* @__exe_env} ; [ DW_TAG_variable ]
!1 = metadata !{i32 589865, metadata !"fd_init.c", metadata !"/home/tyu/Documents/bugredx/klee2.9/runtime/POSIX/", metadata !2} ; [ DW_TAG_file_type ]
!2 = metadata !{i32 589841, i32 0, i32 1, metadata !"fd_init.c", metadata !"/home/tyu/Documents/bugredx/klee2.9/runtime/POSIX/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!3 = metadata !{i32 589846, metadata !4, metadata !"exe_sym_env_t", metadata !4, i32 69, i64 0, i64 0, i64 0, i32 0, metadata !5} ; [ DW_TAG_typedef ]
!4 = metadata !{i32 589865, metadata !"fd.h", metadata !"/home/tyu/Documents/bugredx/klee2.9/runtime/POSIX/", metadata !2} ; [ DW_TAG_file_type ]
!5 = metadata !{i32 589843, metadata !1, metadata !"", metadata !4, i32 61, i64 6272, i64 64, i64 0, i32 0, null, metadata !6, i32 0, null} ; [ DW_TAG_structure_type ]
!6 = metadata !{metadata !7, metadata !71, metadata !73, metadata !74}
!7 = metadata !{i32 589837, metadata !5, metadata !"fds", metadata !4, i32 62, i64 6144, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ]
!8 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 6144, i64 64, i64 0, i32 0, metadata !9, metadata !69, i32 0, null} ; [ DW_TAG_array_type ]
!9 = metadata !{i32 589846, metadata !4, metadata !"exe_file_t", metadata !4, i32 40, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ]
!10 = metadata !{i32 589843, metadata !1, metadata !"", metadata !4, i32 33, i64 192, i64 64, i64 0, i32 0, null, metadata !11, i32 0, null} ; [ DW_TAG_structure_type ]
!11 = metadata !{metadata !12, metadata !14, metadata !16, metadata !20}
!12 = metadata !{i32 589837, metadata !10, metadata !"fd", metadata !4, i32 34, i64 32, i64 32, i64 0, i32 0, metadata !13} ; [ DW_TAG_member ]
!13 = metadata !{i32 589860, metadata !1, metadata !"int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!14 = metadata !{i32 589837, metadata !10, metadata !"flags", metadata !4, i32 35, i64 32, i64 32, i64 32, i32 0, metadata !15} ; [ DW_TAG_member ]
!15 = metadata !{i32 589860, metadata !1, metadata !"unsigned int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!16 = metadata !{i32 589837, metadata !10, metadata !"off", metadata !4, i32 38, i64 64, i64 64, i64 64, i32 0, metadata !17} ; [ DW_TAG_member ]
!17 = metadata !{i32 589846, metadata !18, metadata !"off64_t", metadata !18, i32 94, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ]
!18 = metadata !{i32 589865, metadata !"types.h", metadata !"/usr/include/sys", metadata !2} ; [ DW_TAG_file_type ]
!19 = metadata !{i32 589860, metadata !1, metadata !"long int", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!20 = metadata !{i32 589837, metadata !10, metadata !"dfile", metadata !4, i32 39, i64 64, i64 64, i64 128, i32 0, metadata !21} ; [ DW_TAG_member ]
!21 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !22} ; [ DW_TAG_pointer_type ]
!22 = metadata !{i32 589846, metadata !4, metadata !"exe_disk_file_t", metadata !4, i32 24, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ]
!23 = metadata !{i32 589843, metadata !1, metadata !"", metadata !4, i32 20, i64 192, i64 64, i64 0, i32 0, null, metadata !24, i32 0, null} ; [ DW_TAG_structure_type ]
!24 = metadata !{metadata !25, metadata !26, metadata !29}
!25 = metadata !{i32 589837, metadata !23, metadata !"size", metadata !4, i32 21, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ]
!26 = metadata !{i32 589837, metadata !23, metadata !"contents", metadata !4, i32 22, i64 64, i64 64, i64 64, i32 0, metadata !27} ; [ DW_TAG_member ]
!27 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !28} ; [ DW_TAG_pointer_type ]
!28 = metadata !{i32 589860, metadata !1, metadata !"char", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!29 = metadata !{i32 589837, metadata !23, metadata !"stat", metadata !4, i32 23, i64 64, i64 64, i64 128, i32 0, metadata !30} ; [ DW_TAG_member ]
!30 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ]
!31 = metadata !{i32 589843, metadata !1, metadata !"stat64", metadata !4, i32 23, i64 1152, i64 64, i64 0, i32 0, null, metadata !32, i32 0, null} ; [ DW_TAG_structure_type ]
!32 = metadata !{metadata !33, metadata !38, metadata !40, metadata !42, metadata !44, metadata !46, metadata !48, metadata !49, metadata !50, metadata !52, metadata !54, metadata !56, metadata !63, metadata !64, metadata !65}
!33 = metadata !{i32 589837, metadata !31, metadata !"st_dev", metadata !34, i32 121, i64 64, i64 64, i64 0, i32 0, metadata !35} ; [ DW_TAG_member ]
!34 = metadata !{i32 589865, metadata !"stat.h", metadata !"/usr/include/bits", metadata !2} ; [ DW_TAG_file_type ]
!35 = metadata !{i32 589846, metadata !36, metadata !"__dev_t", metadata !36, i32 134, i64 0, i64 0, i64 0, i32 0, metadata !37} ; [ DW_TAG_typedef ]
!36 = metadata !{i32 589865, metadata !"types.h", metadata !"/usr/include/bits", metadata !2} ; [ DW_TAG_file_type ]
!37 = metadata !{i32 589860, metadata !1, metadata !"long unsigned int", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!38 = metadata !{i32 589837, metadata !31, metadata !"st_ino", metadata !34, i32 123, i64 64, i64 64, i64 64, i32 0, metadata !39} ; [ DW_TAG_member ]
!39 = metadata !{i32 589846, metadata !36, metadata !"__ino64_t", metadata !36, i32 138, i64 0, i64 0, i64 0, i32 0, metadata !37} ; [ DW_TAG_typedef ]
!40 = metadata !{i32 589837, metadata !31, metadata !"st_nlink", metadata !34, i32 124, i64 64, i64 64, i64 128, i32 0, metadata !41} ; [ DW_TAG_member ]
!41 = metadata !{i32 589846, metadata !36, metadata !"__nlink_t", metadata !36, i32 140, i64 0, i64 0, i64 0, i32 0, metadata !37} ; [ DW_TAG_typedef ]
!42 = metadata !{i32 589837, metadata !31, metadata !"st_mode", metadata !34, i32 125, i64 32, i64 32, i64 192, i32 0, metadata !43} ; [ DW_TAG_member ]
!43 = metadata !{i32 589846, metadata !36, metadata !"__mode_t", metadata !36, i32 139, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_typedef ]
!44 = metadata !{i32 589837, metadata !31, metadata !"st_uid", metadata !34, i32 132, i64 32, i64 32, i64 224, i32 0, metadata !45} ; [ DW_TAG_member ]
!45 = metadata !{i32 589846, metadata !36, metadata !"__uid_t", metadata !36, i32 135, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_typedef ]
!46 = metadata !{i32 589837, metadata !31, metadata !"st_gid", metadata !34, i32 133, i64 32, i64 32, i64 256, i32 0, metadata !47} ; [ DW_TAG_member ]
!47 = metadata !{i32 589846, metadata !36, metadata !"__gid_t", metadata !36, i32 136, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_typedef ]
!48 = metadata !{i32 589837, metadata !31, metadata !"__pad0", metadata !34, i32 135, i64 32, i64 32, i64 288, i32 0, metadata !13} ; [ DW_TAG_member ]
!49 = metadata !{i32 589837, metadata !31, metadata !"st_rdev", metadata !34, i32 136, i64 64, i64 64, i64 320, i32 0, metadata !35} ; [ DW_TAG_member ]
!50 = metadata !{i32 589837, metadata !31, metadata !"st_size", metadata !34, i32 137, i64 64, i64 64, i64 384, i32 0, metadata !51} ; [ DW_TAG_member ]
!51 = metadata !{i32 589846, metadata !36, metadata !"__off_t", metadata !36, i32 141, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ]
!52 = metadata !{i32 589837, metadata !31, metadata !"st_blksize", metadata !34, i32 143, i64 64, i64 64, i64 448, i32 0, metadata !53} ; [ DW_TAG_member ]
!53 = metadata !{i32 589846, metadata !36, metadata !"__blksize_t", metadata !36, i32 164, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ]
!54 = metadata !{i32 589837, metadata !31, metadata !"st_blocks", metadata !34, i32 144, i64 64, i64 64, i64 512, i32 0, metadata !55} ; [ DW_TAG_member ]
!55 = metadata !{i32 589846, metadata !36, metadata !"__blkcnt64_t", metadata !36, i32 170, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ]
!56 = metadata !{i32 589837, metadata !31, metadata !"st_atim", metadata !34, i32 152, i64 128, i64 64, i64 576, i32 0, metadata !57} ; [ DW_TAG_member ]
!57 = metadata !{i32 589843, metadata !1, metadata !"timespec", metadata !58, i32 121, i64 128, i64 64, i64 0, i32 0, null, metadata !59, i32 0, null} ; [ DW_TAG_structure_type ]
!58 = metadata !{i32 589865, metadata !"time.h", metadata !"/usr/include", metadata !2} ; [ DW_TAG_file_type ]
!59 = metadata !{metadata !60, metadata !62}
!60 = metadata !{i32 589837, metadata !57, metadata !"tv_sec", metadata !58, i32 122, i64 64, i64 64, i64 0, i32 0, metadata !61} ; [ DW_TAG_member ]
!61 = metadata !{i32 589846, metadata !36, metadata !"__time_t", metadata !36, i32 149, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ]
!62 = metadata !{i32 589837, metadata !57, metadata !"tv_nsec", metadata !58, i32 123, i64 64, i64 64, i64 64, i32 0, metadata !19} ; [ DW_TAG_member ]
!63 = metadata !{i32 589837, metadata !31, metadata !"st_mtim", metadata !34, i32 153, i64 128, i64 64, i64 704, i32 0, metadata !57} ; [ DW_TAG_member ]
!64 = metadata !{i32 589837, metadata !31, metadata !"st_ctim", metadata !34, i32 154, i64 128, i64 64, i64 832, i32 0, metadata !57} ; [ DW_TAG_member ]
!65 = metadata !{i32 589837, metadata !31, metadata !"__unused", metadata !34, i32 167, i64 192, i64 64, i64 960, i32 0, metadata !66} ; [ DW_TAG_member ]
!66 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 192, i64 64, i64 0, i32 0, metadata !19, metadata !67, i32 0, null} ; [ DW_TAG_array_type ]
!67 = metadata !{metadata !68}
!68 = metadata !{i32 589857, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!69 = metadata !{metadata !70}
!70 = metadata !{i32 589857, i64 0, i64 31}       ; [ DW_TAG_subrange_type ]
!71 = metadata !{i32 589837, metadata !5, metadata !"umask", metadata !4, i32 63, i64 32, i64 32, i64 6144, i32 0, metadata !72} ; [ DW_TAG_member ]
!72 = metadata !{i32 589846, metadata !18, metadata !"mode_t", metadata !18, i32 71, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_typedef ]
!73 = metadata !{i32 589837, metadata !5, metadata !"version", metadata !4, i32 64, i64 32, i64 32, i64 6176, i32 0, metadata !15} ; [ DW_TAG_member ]
!74 = metadata !{i32 589837, metadata !5, metadata !"save_all_writes", metadata !4, i32 68, i64 32, i64 32, i64 6208, i32 0, metadata !13} ; [ DW_TAG_member ]
!75 = metadata !{i32 589876, i32 0, metadata !1, metadata !"__exe_fs", metadata !"__exe_fs", metadata !"", metadata !1, i32 24, metadata !76, i1 false, i1 true, %struct.exe_file_system_t* @__exe_fs} ; [ DW_TAG_variable ]
!76 = metadata !{i32 589846, metadata !4, metadata !"exe_file_system_t", metadata !4, i32 61, i64 0, i64 0, i64 0, i32 0, metadata !77} ; [ DW_TAG_typedef ]
!77 = metadata !{i32 589843, metadata !1, metadata !"", metadata !4, i32 42, i64 832, i64 64, i64 0, i32 0, null, metadata !78, i32 0, null} ; [ DW_TAG_structure_type ]
!78 = metadata !{metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92}
!79 = metadata !{i32 589837, metadata !77, metadata !"n_sym_files", metadata !4, i32 43, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ]
!80 = metadata !{i32 589837, metadata !77, metadata !"sym_stdin", metadata !4, i32 44, i64 64, i64 64, i64 64, i32 0, metadata !21} ; [ DW_TAG_member ]
!81 = metadata !{i32 589837, metadata !77, metadata !"sym_stdout", metadata !4, i32 44, i64 64, i64 64, i64 128, i32 0, metadata !21} ; [ DW_TAG_member ]
!82 = metadata !{i32 589837, metadata !77, metadata !"stdout_writes", metadata !4, i32 45, i64 32, i64 32, i64 192, i32 0, metadata !15} ; [ DW_TAG_member ]
!83 = metadata !{i32 589837, metadata !77, metadata !"sym_files", metadata !4, i32 46, i64 64, i64 64, i64 256, i32 0, metadata !21} ; [ DW_TAG_member ]
!84 = metadata !{i32 589837, metadata !77, metadata !"max_failures", metadata !4, i32 49, i64 32, i64 32, i64 320, i32 0, metadata !15} ; [ DW_TAG_member ]
!85 = metadata !{i32 589837, metadata !77, metadata !"read_fail", metadata !4, i32 52, i64 64, i64 64, i64 384, i32 0, metadata !86} ; [ DW_TAG_member ]
!86 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_pointer_type ]
!87 = metadata !{i32 589837, metadata !77, metadata !"write_fail", metadata !4, i32 52, i64 64, i64 64, i64 448, i32 0, metadata !86} ; [ DW_TAG_member ]
!88 = metadata !{i32 589837, metadata !77, metadata !"close_fail", metadata !4, i32 52, i64 64, i64 64, i64 512, i32 0, metadata !86} ; [ DW_TAG_member ]
!89 = metadata !{i32 589837, metadata !77, metadata !"ftruncate_fail", metadata !4, i32 52, i64 64, i64 64, i64 576, i32 0, metadata !86} ; [ DW_TAG_member ]
!90 = metadata !{i32 589837, metadata !77, metadata !"getcwd_fail", metadata !4, i32 52, i64 64, i64 64, i64 640, i32 0, metadata !86} ; [ DW_TAG_member ]
!91 = metadata !{i32 589837, metadata !77, metadata !"chmod_fail", metadata !4, i32 53, i64 64, i64 64, i64 704, i32 0, metadata !86} ; [ DW_TAG_member ]
!92 = metadata !{i32 589837, metadata !77, metadata !"fchmod_fail", metadata !4, i32 53, i64 64, i64 64, i64 768, i32 0, metadata !86} ; [ DW_TAG_member ]
!93 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__create_new_dfile", metadata !"__create_new_dfile", metadata !"", metadata !1, i32 47, metadata !94, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.exe_disk_file_t*, i32, i8*, %struct.stat64*)* @__create_new_dfile} ; [ DW_TAG_subprogram ]
!94 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !95, i32 0, null} ; [ DW_TAG_subroutine_type ]
!95 = metadata !{null, metadata !21, metadata !15, metadata !96, metadata !30}
!96 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !97} ; [ DW_TAG_pointer_type ]
!97 = metadata !{i32 589862, metadata !1, metadata !"", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !28} ; [ DW_TAG_const_type ]
!98 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__sym_uint32", metadata !"__sym_uint32", metadata !"", metadata !1, i32 97, metadata !99, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*)* @__sym_uint32} ; [ DW_TAG_subprogram ]
!99 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !100, i32 0, null} ; [ DW_TAG_subroutine_type ]
!100 = metadata !{metadata !15, metadata !96}
!101 = metadata !{i32 589870, i32 0, metadata !1, metadata !"klee_init_fds", metadata !"klee_init_fds", metadata !"klee_init_fds", metadata !1, i32 112, metadata !102, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32, i32, i32, i32)* @klee_init_fds} ; [ DW_TAG_subprogram ]
!102 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !103, i32 0, null} ; [ DW_TAG_subroutine_type ]
!103 = metadata !{null, metadata !15, metadata !15, metadata !13, metadata !13, metadata !15}
!104 = metadata !{i32 590081, metadata !93, metadata !"dfile", metadata !1, i32 46, metadata !21, i32 0} ; [ DW_TAG_arg_variable ]
!105 = metadata !{i32 46, i32 0, metadata !93, null}
!106 = metadata !{i32 590081, metadata !93, metadata !"size", metadata !1, i32 46, metadata !15, i32 0} ; [ DW_TAG_arg_variable ]
!107 = metadata !{i32 590081, metadata !93, metadata !"name", metadata !1, i32 47, metadata !96, i32 0} ; [ DW_TAG_arg_variable ]
!108 = metadata !{i32 47, i32 0, metadata !93, null}
!109 = metadata !{i32 590081, metadata !93, metadata !"defaults", metadata !1, i32 47, metadata !30, i32 0} ; [ DW_TAG_arg_variable ]
!110 = metadata !{i32 590080, metadata !111, metadata !"s", metadata !1, i32 48, metadata !30, i32 0} ; [ DW_TAG_auto_variable ]
!111 = metadata !{i32 589835, metadata !93, i32 47, i32 0, metadata !1, i32 0} ; [ DW_TAG_lexical_block ]
!112 = metadata !{i32 48, i32 0, metadata !111, null}
!113 = metadata !{i32 590080, metadata !111, metadata !"sp", metadata !1, i32 49, metadata !96, i32 0} ; [ DW_TAG_auto_variable ]
!114 = metadata !{i32 49, i32 0, metadata !111, null}
!115 = metadata !{i32 590080, metadata !111, metadata !"sname", metadata !1, i32 50, metadata !116, i32 0} ; [ DW_TAG_auto_variable ]
!116 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 512, i64 8, i64 0, i32 0, metadata !28, metadata !117, i32 0, null} ; [ DW_TAG_array_type ]
!117 = metadata !{metadata !118}
!118 = metadata !{i32 589857, i64 0, i64 63}      ; [ DW_TAG_subrange_type ]
!119 = metadata !{i32 50, i32 0, metadata !111, null}
!120 = metadata !{i32 51, i32 0, metadata !111, null}
!121 = metadata !{i32 52, i32 0, metadata !111, null}
!122 = metadata !{i32 53, i32 0, metadata !111, null}
!123 = metadata !{i32 55, i32 0, metadata !111, null}
!124 = metadata !{i32 57, i32 0, metadata !111, null}
!125 = metadata !{i32 58, i32 0, metadata !111, null}
!126 = metadata !{i32 59, i32 0, metadata !111, null}
!127 = metadata !{i32 61, i32 0, metadata !111, null}
!128 = metadata !{i32 64, i32 0, metadata !111, null}
!129 = metadata !{i32 66, i32 0, metadata !111, null}
!130 = metadata !{i32 71, i32 0, metadata !111, null}
!131 = metadata !{i32 75, i32 0, metadata !111, null}
!132 = metadata !{i32 77, i32 0, metadata !111, null}
!133 = metadata !{i32 78, i32 0, metadata !111, null}
!134 = metadata !{i32 79, i32 0, metadata !111, null}
!135 = metadata !{i32 80, i32 0, metadata !111, null}
!136 = metadata !{i32 81, i32 0, metadata !111, null}
!137 = metadata !{i32 82, i32 0, metadata !111, null}
!138 = metadata !{i32 83, i32 0, metadata !111, null}
!139 = metadata !{i32 84, i32 0, metadata !111, null}
!140 = metadata !{i32 85, i32 0, metadata !111, null}
!141 = metadata !{i32 86, i32 0, metadata !111, null}
!142 = metadata !{i32 87, i32 0, metadata !111, null}
!143 = metadata !{i32 88, i32 0, metadata !111, null}
!144 = metadata !{i32 89, i32 0, metadata !111, null}
!145 = metadata !{i32 90, i32 0, metadata !111, null}
!146 = metadata !{i32 92, i32 0, metadata !111, null}
!147 = metadata !{i32 93, i32 0, metadata !111, null}
!148 = metadata !{i32 94, i32 0, metadata !111, null}
!149 = metadata !{i32 95, i32 0, metadata !111, null}
!150 = metadata !{i32 590081, metadata !98, metadata !"name", metadata !1, i32 97, metadata !96, i32 0} ; [ DW_TAG_arg_variable ]
!151 = metadata !{i32 97, i32 0, metadata !98, null}
!152 = metadata !{i32 590080, metadata !153, metadata !"x", metadata !1, i32 98, metadata !15, i32 0} ; [ DW_TAG_auto_variable ]
!153 = metadata !{i32 589835, metadata !98, i32 97, i32 0, metadata !1, i32 1} ; [ DW_TAG_lexical_block ]
!154 = metadata !{i32 98, i32 0, metadata !153, null}
!155 = metadata !{i32 99, i32 0, metadata !153, null}
!156 = metadata !{i32 100, i32 0, metadata !153, null}
!157 = metadata !{i32 590081, metadata !101, metadata !"n_files", metadata !1, i32 110, metadata !15, i32 0} ; [ DW_TAG_arg_variable ]
!158 = metadata !{i32 110, i32 0, metadata !101, null}
!159 = metadata !{i32 590081, metadata !101, metadata !"file_length", metadata !1, i32 110, metadata !15, i32 0} ; [ DW_TAG_arg_variable ]
!160 = metadata !{i32 590081, metadata !101, metadata !"sym_stdout_flag", metadata !1, i32 111, metadata !13, i32 0} ; [ DW_TAG_arg_variable ]
!161 = metadata !{i32 111, i32 0, metadata !101, null}
!162 = metadata !{i32 590081, metadata !101, metadata !"save_all_writes_flag", metadata !1, i32 111, metadata !13, i32 0} ; [ DW_TAG_arg_variable ]
!163 = metadata !{i32 590081, metadata !101, metadata !"max_failures", metadata !1, i32 112, metadata !15, i32 0} ; [ DW_TAG_arg_variable ]
!164 = metadata !{i32 112, i32 0, metadata !101, null}
!165 = metadata !{i32 590080, metadata !166, metadata !"k", metadata !1, i32 113, metadata !15, i32 0} ; [ DW_TAG_auto_variable ]
!166 = metadata !{i32 589835, metadata !101, i32 112, i32 0, metadata !1, i32 2} ; [ DW_TAG_lexical_block ]
!167 = metadata !{i32 113, i32 0, metadata !166, null}
!168 = metadata !{i32 590080, metadata !166, metadata !"name", metadata !1, i32 114, metadata !169, i32 0} ; [ DW_TAG_auto_variable ]
!169 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 56, i64 8, i64 0, i32 0, metadata !28, metadata !170, i32 0, null} ; [ DW_TAG_array_type ]
!170 = metadata !{metadata !171}
!171 = metadata !{i32 589857, i64 0, i64 6}       ; [ DW_TAG_subrange_type ]
!172 = metadata !{i32 114, i32 0, metadata !166, null}
!173 = metadata !{i32 590080, metadata !166, metadata !"s", metadata !1, i32 115, metadata !31, i32 0} ; [ DW_TAG_auto_variable ]
!174 = metadata !{i32 115, i32 0, metadata !166, null}
!175 = metadata !{i32 117, i32 0, metadata !166, null}
!176 = metadata !{i32 119, i32 0, metadata !166, null}
!177 = metadata !{i32 120, i32 0, metadata !166, null}
!178 = metadata !{i32 121, i32 0, metadata !166, null}
!179 = metadata !{i32 122, i32 0, metadata !166, null}
!180 = metadata !{i32 123, i32 0, metadata !166, null}
!181 = metadata !{i32 127, i32 0, metadata !166, null}
!182 = metadata !{i32 128, i32 0, metadata !166, null}
!183 = metadata !{i32 129, i32 0, metadata !166, null}
!184 = metadata !{i32 130, i32 0, metadata !166, null}
!185 = metadata !{i32 132, i32 0, metadata !166, null}
!186 = metadata !{i32 134, i32 0, metadata !166, null}
!187 = metadata !{i32 135, i32 0, metadata !166, null}
!188 = metadata !{i32 136, i32 0, metadata !166, null}
!189 = metadata !{i32 137, i32 0, metadata !166, null}
!190 = metadata !{i32 138, i32 0, metadata !166, null}
!191 = metadata !{i32 139, i32 0, metadata !166, null}
!192 = metadata !{i32 140, i32 0, metadata !166, null}
!193 = metadata !{i32 142, i32 0, metadata !166, null}
!194 = metadata !{i32 143, i32 0, metadata !166, null}
!195 = metadata !{i32 144, i32 0, metadata !166, null}
!196 = metadata !{i32 145, i32 0, metadata !166, null}
!197 = metadata !{i32 146, i32 0, metadata !166, null}
!198 = metadata !{i32 150, i32 0, metadata !166, null}
!199 = metadata !{i32 151, i32 0, metadata !166, null}
!200 = metadata !{i32 152, i32 0, metadata !166, null}
!201 = metadata !{i32 153, i32 0, metadata !166, null}
!202 = metadata !{i32 154, i32 0, metadata !166, null}
!203 = metadata !{i32 156, i32 0, metadata !166, null}
!204 = metadata !{i32 158, i32 0, metadata !166, null}
!205 = metadata !{i32 159, i32 0, metadata !166, null}
!206 = metadata !{i32 160, i32 0, metadata !166, null}
!207 = metadata !{i32 161, i32 0, metadata !166, null}
