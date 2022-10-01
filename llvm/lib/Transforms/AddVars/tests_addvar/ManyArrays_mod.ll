; ModuleID = '/media/roza/Backup2/NIRCompilers/llvm-project/llvm/lib/Transforms/AddVars/tests_addvar/ManyArrays.ll'
source_filename = "/media/roza/Backup2/NIRCompilers/llvm-project/llvm/lib/Transforms/AddVars/tests_addvar/ManyArrays.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local global [15 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15], align 16
@e = dso_local global [15 x i32] [i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30], align 16
@f = dso_local global [15 x i32] [i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45], align 16
@g = dso_local global [15 x i32] [i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60], align 16

; Function Attrs: nounwind uwtable
define dso_local i32 @foo() #0 {
entry:
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %0 = bitcast i32* %a to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #2
  %1 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #2
  %2 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #2
  %prob = add i64 0, 1
  %3 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @d, i64 0, i64 1), align 4, !tbaa !2
  %prob1 = add i64 0, 0
  %4 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @d, i64 0, i64 5), align 4, !tbaa !2
  %add = add nsw i32 %3, %4
  %prob2 = add i64 0, 1
  %5 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @d, i64 0, i64 14), align 8, !tbaa !2
  %add1 = add nsw i32 %add, %5
  %prob3 = add i64 0, 1
  %6 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @e, i64 0, i64 14), align 8, !tbaa !2
  %add2 = add nsw i32 %add1, %6
  %prob4 = add i64 0, 1
  %7 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @e, i64 0, i64 2), align 8, !tbaa !2
  %add3 = add nsw i32 %add2, %7
  %prob5 = add i64 0, 1
  %8 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @e, i64 0, i64 12), align 16, !tbaa !2
  %add4 = add nsw i32 %add3, %8
  %prob6 = add i64 0, 1
  %9 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @f, i64 0, i64 0), align 16, !tbaa !2
  %add5 = add nsw i32 %add4, %9
  %prob7 = add i64 0, 0
  %10 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @f, i64 0, i64 2), align 8, !tbaa !2
  %add6 = add nsw i32 %add5, %10
  %prob8 = add i64 0, 0
  %11 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @f, i64 0, i64 4), align 16, !tbaa !2
  %add7 = add nsw i32 %add6, %11
  store i32 %add7, i32* %a, align 4, !tbaa !2
  %prob9 = add i64 0, 1
  %12 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @d, i64 0, i64 9), align 4, !tbaa !2
  %prob10 = add i64 0, 1
  %13 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @d, i64 0, i64 5), align 4, !tbaa !2
  %add8 = add nsw i32 %12, %13
  %prob11 = add i64 0, 1
  %14 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @d, i64 0, i64 4), align 16, !tbaa !2
  %add9 = add nsw i32 %add8, %14
  %prob12 = add i64 0, 0
  %15 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @d, i64 0, i64 7), align 4, !tbaa !2
  %add10 = add nsw i32 %add9, %15
  %prob13 = add i64 0, 0
  %16 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @d, i64 0, i64 8), align 16, !tbaa !2
  %add11 = add nsw i32 %add10, %16
  %prob14 = add i64 0, 1
  %17 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @e, i64 0, i64 3), align 4, !tbaa !2
  %add12 = add nsw i32 %add11, %17
  %prob15 = add i64 0, 1
  %18 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @g, i64 0, i64 7), align 4, !tbaa !2
  %add13 = add nsw i32 %add12, %18
  %prob16 = add i64 0, 0
  %19 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @g, i64 0, i64 13), align 4, !tbaa !2
  %add14 = add nsw i32 %add13, %19
  %prob17 = add i64 0, 1
  %20 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @g, i64 0, i64 1), align 4, !tbaa !2
  %add15 = add nsw i32 %add14, %20
  %prob18 = add i64 0, 0
  %21 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @g, i64 0, i64 4), align 16, !tbaa !2
  %add16 = add nsw i32 %add15, %21
  store i32 %add16, i32* %b, align 4, !tbaa !2
  %prob19 = add i64 0, 1
  %22 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @e, i64 0, i64 6), align 8, !tbaa !2
  %prob20 = add i64 0, 0
  %23 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @e, i64 0, i64 10), align 8, !tbaa !2
  %add17 = add nsw i32 %22, %23
  %prob21 = add i64 0, 0
  %24 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @e, i64 0, i64 11), align 4, !tbaa !2
  %add18 = add nsw i32 %add17, %24
  %prob22 = add i64 0, 1
  %25 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @d, i64 0, i64 8), align 16, !tbaa !2
  %add19 = add nsw i32 %add18, %25
  %prob23 = add i64 0, 0
  %26 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @d, i64 0, i64 9), align 4, !tbaa !2
  %add20 = add nsw i32 %add19, %26
  %prob24 = add i64 0, 0
  %27 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @d, i64 0, i64 13), align 4, !tbaa !2
  %add21 = add nsw i32 %add20, %27
  %prob25 = add i64 0, 1
  %28 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @f, i64 0, i64 14), align 8, !tbaa !2
  %add22 = add nsw i32 %add21, %28
  %prob26 = add i64 0, 1
  %29 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @f, i64 0, i64 10), align 8, !tbaa !2
  %add23 = add nsw i32 %add22, %29
  %prob27 = add i64 0, 1
  %30 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @g, i64 0, i64 7), align 4, !tbaa !2
  %add24 = add nsw i32 %add23, %30
  %prob28 = add i64 0, 0
  %31 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @g, i64 0, i64 8), align 16, !tbaa !2
  %add25 = add nsw i32 %add24, %31
  store i32 %add25, i32* %c, align 4, !tbaa !2
  %32 = load i32, i32* %c, align 4, !tbaa !2
  %33 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #2
  %34 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #2
  %35 = bitcast i32* %a to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #2
  ret i32 %32
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast i32* %a to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #2
  %call = call i32 @foo()
  store i32 %call, i32* %a, align 4, !tbaa !2
  %1 = bitcast i32* %a to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #2
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 12.0.1 (git@github.com:llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
