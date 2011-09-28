; ModuleID = 'rt.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin11.1"

declare void @llvm.trax.storef(float, i32, i32) nounwind

declare float @llvm.trax.invsqrt(float) nounwind

define i32 @main() nounwind ssp {
entry:
  %0 = tail call i32 @llvm.trax.loadi(i32 0, i32 1)
  %1 = tail call i32 @llvm.trax.loadi(i32 0, i32 4)
  %2 = tail call i32 @llvm.trax.loadi(i32 0, i32 7) nounwind
  %3 = tail call i32 @llvm.trax.atominc(i32 0)
  %4 = mul nsw i32 %1, %0
  %5 = sitofp i32 %0 to float
  %6 = fdiv float %5, -2.000000e+00
  %7 = sitofp i32 %1 to float
  %8 = fdiv float %7, -2.000000e+00
  %9 = icmp sgt i32 %4, %3
  br i1 %9, label %bb, label %return

bb:                                               ; preds = %bb20, %entry
  %storemerge109 = phi i32 [ %105, %bb20 ], [ %3, %entry ]
  %10 = sdiv i32 %storemerge109, %0
  %11 = srem i32 %storemerge109, %0
  %12 = sitofp i32 %11 to float
  %13 = fadd float %12, %6
  %14 = fadd float %13, 5.000000e-01
  %15 = fmul float %14, 2.000000e+00
  %16 = fdiv float %15, %5
  %17 = sitofp i32 %10 to float
  %18 = fadd float %17, %8
  %19 = fadd float %18, 5.000000e-01
  %20 = fmul float %19, 2.000000e+00
  %21 = fdiv float %20, %7
  %22 = tail call float @llvm.trax.invsqrt(float 2.450000e+02) nounwind
  %23 = fdiv float 1.000000e+00, %22
  %24 = fdiv float 2.000000e+00, %23
  %25 = fdiv float 1.500000e+01, %23
  %26 = fdiv float -4.000000e+00, %23
  %27 = fmul float %24, 0.000000e+00
  %28 = fsub float %25, %27
  %29 = fsub float %27, %26
  %30 = fmul float %26, 0.000000e+00
  %31 = fmul float %25, 0.000000e+00
  %32 = fsub float %30, %31
  %33 = fmul float %28, %28
  %34 = fmul float %29, %29
  %35 = fadd float %33, %34
  %36 = fmul float %32, %32
  %37 = fadd float %35, %36
  %38 = tail call float @llvm.trax.invsqrt(float %37) nounwind
  %39 = fdiv float 1.000000e+00, %38
  %40 = fdiv float %32, %39
  %41 = fdiv float %29, %39
  %42 = fdiv float %28, %39
  %43 = fmul float %41, %24
  %44 = fmul float %25, %40
  %45 = fsub float %43, %44
  %46 = fmul float %26, %40
  %47 = fmul float %42, %24
  %48 = fsub float %46, %47
  %49 = fmul float %25, %42
  %50 = fmul float %26, %41
  %51 = fsub float %49, %50
  %52 = fmul float %45, %45
  %53 = fmul float %48, %48
  %54 = fadd float %52, %53
  %55 = fmul float %51, %51
  %56 = fadd float %54, %55
  %57 = tail call float @llvm.trax.invsqrt(float %56) nounwind
  %58 = fdiv float 1.000000e+00, %57
  %59 = fdiv float %51, %58
  %60 = fdiv float %48, %58
  %61 = fdiv float %45, %58
  %62 = fmul float %42, 0x3FC925F640000000
  %63 = fmul float %41, 0x3FC925F640000000
  %64 = fmul float %40, 0x3FC925F640000000
  %65 = fmul float %61, 0x3FC925F640000000
  %66 = fmul float %60, 0x3FC925F640000000
  %67 = fmul float %59, 0x3FC925F640000000
  %68 = fmul float %65, %21
  %69 = fmul float %66, %21
  %70 = fmul float %67, %21
  %71 = fmul float %62, %16
  %72 = fmul float %63, %16
  %73 = fmul float %64, %16
  %74 = fadd float %68, %71
  %75 = fadd float %69, %72
  %76 = fadd float %73, %70
  %77 = fadd float %74, %26
  %78 = fadd float %75, %25
  %79 = fadd float %24, %76
  %80 = fdiv float -5.000000e+00, %77
  %81 = fdiv float -3.000000e+00, %77
  %82 = fcmp ogt float %80, %81
  %tx1.i.0 = select i1 %82, float %81, float %80
  %tx2.i.0 = select i1 %82, float %80, float %81
  %83 = fcmp ogt float %tx1.i.0, -1.000000e+10
  %tnear.i.0 = select i1 %83, float %tx1.i.0, float -1.000000e+10
  %84 = fcmp olt float %tx2.i.0, 1.000000e+10
  %tfar.i.0 = select i1 %84, float %tx2.i.0, float 1.000000e+10
  %85 = fcmp ogt float %tnear.i.0, %tfar.i.0
  %86 = fcmp olt float %tfar.i.0, 0.000000e+00
  %or.cond = or i1 %85, %86
  br i1 %or.cond, label %_ZN3Box10intersectsE3Ray.exit.thread, label %bb29.i

bb29.i:                                           ; preds = %bb
  %87 = fdiv float 1.400000e+01, %78
  %88 = fdiv float 1.600000e+01, %78
  %89 = fcmp ogt float %87, %88
  %ty1.i.0 = select i1 %89, float %88, float %87
  %ty2.i.0 = select i1 %89, float %87, float %88
  %90 = fcmp ogt float %ty1.i.0, %tnear.i.0
  %tnear.i.1 = select i1 %90, float %ty1.i.0, float %tnear.i.0
  %91 = fcmp olt float %ty2.i.0, %tfar.i.0
  %tfar.i.1 = select i1 %91, float %ty2.i.0, float %tfar.i.0
  %92 = fcmp ogt float %tnear.i.1, %tfar.i.1
  %93 = fcmp olt float %tfar.i.1, 0.000000e+00
  %or.cond1637 = or i1 %92, %93
  br i1 %or.cond1637, label %_ZN3Box10intersectsE3Ray.exit.thread, label %bb62.i

bb62.i:                                           ; preds = %bb29.i
  %94 = fdiv float 1.000000e+00, %79
  %95 = fdiv float 3.000000e+00, %79
  %96 = fcmp ogt float %94, %95
  %tz1.i.0 = select i1 %96, float %95, float %94
  %tz2.i.0 = select i1 %96, float %94, float %95
  %97 = fcmp ogt float %tz1.i.0, %tnear.i.1
  %tnear.i.2 = select i1 %97, float %tz1.i.0, float %tnear.i.1
  %98 = fcmp olt float %tz2.i.0, %tfar.i.1
  %tfar.i.2 = select i1 %98, float %tz2.i.0, float %tfar.i.1
  %99 = fcmp ogt float %tnear.i.2, %tfar.i.2
  %100 = fcmp olt float %tfar.i.2, 0.000000e+00
  %or.cond1638 = or i1 %99, %100
  br i1 %or.cond1638, label %_ZN3Box10intersectsE3Ray.exit.thread, label %bb20

_ZN3Box10intersectsE3Ray.exit.thread:             ; preds = %bb62.i, %bb29.i, %bb
  br label %bb20

bb20:                                             ; preds = %_ZN3Box10intersectsE3Ray.exit.thread, %bb62.i
  %result.0.off0.off0 = phi float [ 0.000000e+00, %_ZN3Box10intersectsE3Ray.exit.thread ], [ 1.000000e+00, %bb62.i ]
  %result.0.off0.off32 = phi float [ 0.000000e+00, %_ZN3Box10intersectsE3Ray.exit.thread ], [ 0x3FD3333340000000, %bb62.i ]
  %result.0.off64.off64 = phi float [ 0.000000e+00, %_ZN3Box10intersectsE3Ray.exit.thread ], [ 0x3FC99999A0000000, %bb62.i ]
  %101 = mul nsw i32 %10, %0
  %102 = add nsw i32 %101, %11
  %103 = mul nsw i32 %102, 3
  %104 = add nsw i32 %103, %2
  tail call void @llvm.trax.storef(float %result.0.off0.off0, i32 %104, i32 0) nounwind
  tail call void @llvm.trax.storef(float %result.0.off0.off32, i32 %104, i32 1) nounwind
  tail call void @llvm.trax.storef(float %result.0.off64.off64, i32 %104, i32 2) nounwind
  %105 = tail call i32 @llvm.trax.atominc(i32 0)
  %106 = icmp sgt i32 %4, %105
  br i1 %106, label %bb, label %return

return:                                           ; preds = %bb20, %entry
  ret i32 0
}

declare i32 @llvm.trax.loadi(i32, i32) nounwind

declare i32 @llvm.trax.atominc(i32) nounwind
