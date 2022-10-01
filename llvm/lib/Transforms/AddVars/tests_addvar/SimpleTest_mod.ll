; ModuleID = '/media/roza/Backup2/NIRCompilers/llvm-project/llvm/lib/Transforms/AddVars/tests_addvar/SimpleTest.ll'
source_filename = "/media/roza/Backup2/NIRCompilers/llvm-project/llvm/lib/Transforms/AddVars/tests_addvar/SimpleTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant [7 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7], align 16

; Function Attrs: nounwind uwtable
define dso_local i32 @foo(i32 %a) #0 {
entry:
  %a.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4, !tbaa !2
  %0 = load i32, i32* %a.addr, align 4, !tbaa !2
  %prob = add i64 0, 1
  %1 = load i32, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @d, i64 0, i64 3), align 4, !tbaa !2
  %add = add nsw i32 %0, %1
  store i32 %add, i32* %a.addr, align 4, !tbaa !2
  %2 = load i32, i32* %a.addr, align 4, !tbaa !2
  %mul = mul nsw i32 %2, 2
  ret i32 %mul
}

; Function Attrs: nounwind uwtable
define dso_local i32 @bar(i32 %a, i32 %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4, !tbaa !2
  store i32 %b, i32* %b.addr, align 4, !tbaa !2
  %0 = load i32, i32* %a.addr, align 4, !tbaa !2
  %prob = add i64 0, 1
  %1 = load i32, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @d, i64 0, i64 0), align 16, !tbaa !2
  %add = add nsw i32 %0, %1
  store i32 %add, i32* %a.addr, align 4, !tbaa !2
  %2 = load i32, i32* %b.addr, align 4, !tbaa !2
  %prob1 = add i64 0, 0
  %3 = load i32, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @d, i64 0, i64 4), align 16, !tbaa !2
  %add1 = add nsw i32 %2, %3
  store i32 %add1, i32* %b.addr, align 4, !tbaa !2
  %4 = load i32, i32* %a.addr, align 4, !tbaa !2
  %5 = load i32, i32* %b.addr, align 4, !tbaa !2
  %call = call i32 @foo(i32 %5)
  %mul = mul nsw i32 %call, 2
  %add2 = add nsw i32 %4, %mul
  ret i32 %add2
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fez(i32 %a, i32 %b, i32 %c) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4, !tbaa !2
  store i32 %b, i32* %b.addr, align 4, !tbaa !2
  store i32 %c, i32* %c.addr, align 4, !tbaa !2
  %0 = load i32, i32* %a.addr, align 4, !tbaa !2
  %prob = add i64 0, 1
  %1 = load i32, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @d, i64 0, i64 5), align 4, !tbaa !2
  %add = add nsw i32 %0, %1
  store i32 %add, i32* %a.addr, align 4, !tbaa !2
  %2 = load i32, i32* %b.addr, align 4, !tbaa !2
  %prob1 = add i64 0, 0
  %3 = load i32, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @d, i64 0, i64 6), align 8, !tbaa !2
  %add1 = add nsw i32 %2, %3
  store i32 %add1, i32* %b.addr, align 4, !tbaa !2
  %4 = load i32, i32* %c.addr, align 4, !tbaa !2
  %prob2 = add i64 0, 1
  %5 = load i32, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @d, i64 0, i64 1), align 4, !tbaa !2
  %add2 = add nsw i32 %4, %5
  store i32 %add2, i32* %c.addr, align 4, !tbaa !2
  %6 = load i32, i32* %a.addr, align 4, !tbaa !2
  %7 = load i32, i32* %a.addr, align 4, !tbaa !2
  %8 = load i32, i32* %b.addr, align 4, !tbaa !2
  %call = call i32 @bar(i32 %7, i32 %8)
  %mul = mul nsw i32 %call, 2
  %add3 = add nsw i32 %6, %mul
  %9 = load i32, i32* %c.addr, align 4, !tbaa !2
  %mul4 = mul nsw i32 %9, 3
  %add5 = add nsw i32 %add3, %mul4
  ret i32 %add5
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %a = alloca i32, align 4
  %ret = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !2
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !6
  %0 = bitcast i32* %a to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #2
  store i32 123, i32* %a, align 4, !tbaa !2
  %1 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #2
  store i32 0, i32* %ret, align 4, !tbaa !2
  %2 = load i32, i32* %a, align 4, !tbaa !2
  %call = call i32 @foo(i32 %2)
  %3 = load i32, i32* %ret, align 4, !tbaa !2
  %add = add nsw i32 %3, %call
  store i32 %add, i32* %ret, align 4, !tbaa !2
  %4 = load i32, i32* %a, align 4, !tbaa !2
  %5 = load i32, i32* %ret, align 4, !tbaa !2
  %call1 = call i32 @bar(i32 %4, i32 %5)
  %6 = load i32, i32* %ret, align 4, !tbaa !2
  %add2 = add nsw i32 %6, %call1
  store i32 %add2, i32* %ret, align 4, !tbaa !2
  %7 = load i32, i32* %a, align 4, !tbaa !2
  %8 = load i32, i32* %ret, align 4, !tbaa !2
  %call3 = call i32 @fez(i32 %7, i32 %8, i32 123)
  %9 = load i32, i32* %ret, align 4, !tbaa !2
  %add4 = add nsw i32 %9, %call3
  store i32 %add4, i32* %ret, align 4, !tbaa !2
  %10 = load i32, i32* %ret, align 4, !tbaa !2
  %11 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #2
  %12 = bitcast i32* %a to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #2
  ret i32 %10
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

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
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !4, i64 0}
