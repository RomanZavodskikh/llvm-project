; ModuleID = '/media/roza/Backup2/NIRCompilers/llvm-project/llvm/lib/Transforms/AddVars/tests_addvar/ManyAccessings.c'
source_filename = "/media/roza/Backup2/NIRCompilers/llvm-project/llvm/lib/Transforms/AddVars/tests_addvar/ManyAccessings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local global [30 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30], align 16

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
  %3 = load i32, i32* getelementptr inbounds ([30 x i32], [30 x i32]* @d, i64 0, i64 1), align 4, !tbaa !2
  %4 = load i32, i32* getelementptr inbounds ([30 x i32], [30 x i32]* @d, i64 0, i64 5), align 4, !tbaa !2
  %add = add nsw i32 %3, %4
  %5 = load i32, i32* getelementptr inbounds ([30 x i32], [30 x i32]* @d, i64 0, i64 14), align 8, !tbaa !2
  %add1 = add nsw i32 %add, %5
  %6 = load i32, i32* getelementptr inbounds ([30 x i32], [30 x i32]* @d, i64 0, i64 26), align 8, !tbaa !2
  %add2 = add nsw i32 %add1, %6
  %7 = load i32, i32* getelementptr inbounds ([30 x i32], [30 x i32]* @d, i64 0, i64 16), align 16, !tbaa !2
  %add3 = add nsw i32 %add2, %7
  %8 = load i32, i32* getelementptr inbounds ([30 x i32], [30 x i32]* @d, i64 0, i64 2), align 8, !tbaa !2
  %add4 = add nsw i32 %add3, %8
  store i32 %add4, i32* %a, align 4, !tbaa !2
  %9 = load i32, i32* getelementptr inbounds ([30 x i32], [30 x i32]* @d, i64 0, i64 29), align 4, !tbaa !2
  %10 = load i32, i32* getelementptr inbounds ([30 x i32], [30 x i32]* @d, i64 0, i64 24), align 16, !tbaa !2
  %add5 = add nsw i32 %9, %10
  %11 = load i32, i32* getelementptr inbounds ([30 x i32], [30 x i32]* @d, i64 0, i64 4), align 16, !tbaa !2
  %add6 = add nsw i32 %add5, %11
  %12 = load i32, i32* getelementptr inbounds ([30 x i32], [30 x i32]* @d, i64 0, i64 7), align 4, !tbaa !2
  %add7 = add nsw i32 %add6, %12
  %13 = load i32, i32* getelementptr inbounds ([30 x i32], [30 x i32]* @d, i64 0, i64 8), align 16, !tbaa !2
  %add8 = add nsw i32 %add7, %13
  %14 = load i32, i32* getelementptr inbounds ([30 x i32], [30 x i32]* @d, i64 0, i64 3), align 4, !tbaa !2
  %add9 = add nsw i32 %add8, %14
  store i32 %add9, i32* %b, align 4, !tbaa !2
  %15 = load i32, i32* getelementptr inbounds ([30 x i32], [30 x i32]* @d, i64 0, i64 6), align 8, !tbaa !2
  %16 = load i32, i32* getelementptr inbounds ([30 x i32], [30 x i32]* @d, i64 0, i64 17), align 4, !tbaa !2
  %add10 = add nsw i32 %15, %16
  %17 = load i32, i32* getelementptr inbounds ([30 x i32], [30 x i32]* @d, i64 0, i64 21), align 4, !tbaa !2
  %add11 = add nsw i32 %add10, %17
  %18 = load i32, i32* getelementptr inbounds ([30 x i32], [30 x i32]* @d, i64 0, i64 28), align 16, !tbaa !2
  %add12 = add nsw i32 %add11, %18
  %19 = load i32, i32* getelementptr inbounds ([30 x i32], [30 x i32]* @d, i64 0, i64 18), align 8, !tbaa !2
  %add13 = add nsw i32 %add12, %19
  %20 = load i32, i32* getelementptr inbounds ([30 x i32], [30 x i32]* @d, i64 0, i64 9), align 4, !tbaa !2
  %add14 = add nsw i32 %add13, %20
  store i32 %add14, i32* %c, align 4, !tbaa !2
  %21 = load i32, i32* %c, align 4, !tbaa !2
  %22 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #2
  %23 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #2
  %24 = bitcast i32* %a to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #2
  ret i32 %21
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
