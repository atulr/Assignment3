; ModuleID = 'rt.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin11.1"

%0 = type { double, float }
%struct.Box = type { %struct.Color, %struct.Color }
%struct.Color = type { float, float, float }
%struct.Image = type { i32, i32, i32 }
%struct.Material = type { %struct.Color, float, float }
%struct.PinHoleCamera = type { %struct.Color, %struct.Color, %struct.Color, float, float }
%struct.PointLight = type { %struct.Color, %struct.Color }
%struct.Ray = type { %struct.Color, %struct.Color }
%struct.Sphere = type { float, float, float, float, %struct.Material }
%struct.Vector = type { float, float, float }

declare void @llvm.trax.storef(float, i32, i32) nounwind

declare float @llvm.trax.invsqrt(float) nounwind

define i32 @main() nounwind ssp {
entry:
  %0 = alloca %struct.Color, align 8
  %L.i = alloca %struct.Color, align 8
  %ln.i = alloca %struct.Color, align 8
  %utmp.i = alloca %struct.Color, align 8
  %vtmp.i = alloca %struct.Color, align 8
  %normalized_utmp.i = alloca %struct.Color, align 8
  %1 = call i32 @llvm.trax.loadi(i32 0, i32 1)
  %2 = call i32 @llvm.trax.loadi(i32 0, i32 4)
  %3 = call i32 @llvm.trax.loadi(i32 0, i32 7) nounwind
  %4 = call i32 @llvm.trax.atominc(i32 0)
  %5 = mul nsw i32 %1, %2
  %6 = sitofp i32 %1 to float
  %7 = fdiv float %6, -2.000000e+00
  %8 = sitofp i32 %2 to float
  %9 = fdiv float %8, -2.000000e+00
  %10 = getelementptr inbounds %struct.Color* %L.i, i64 0, i32 0
  %11 = getelementptr inbounds %struct.Color* %L.i, i64 0, i32 1
  %12 = getelementptr inbounds %struct.Color* %L.i, i64 0, i32 2
  %13 = getelementptr inbounds %struct.Color* %ln.i, i64 0, i32 0
  %14 = getelementptr inbounds %struct.Color* %ln.i, i64 0, i32 1
  %15 = getelementptr inbounds %struct.Color* %ln.i, i64 0, i32 2
  %16 = getelementptr inbounds %struct.Color* %utmp.i, i64 0, i32 0
  %17 = getelementptr inbounds %struct.Color* %utmp.i, i64 0, i32 1
  %18 = getelementptr inbounds %struct.Color* %utmp.i, i64 0, i32 2
  %19 = getelementptr inbounds %struct.Color* %vtmp.i, i64 0, i32 0
  %20 = getelementptr inbounds %struct.Color* %vtmp.i, i64 0, i32 1
  %21 = getelementptr inbounds %struct.Color* %vtmp.i, i64 0, i32 2
  %22 = getelementptr inbounds %struct.Color* %normalized_utmp.i, i64 0, i32 0
  %23 = getelementptr inbounds %struct.Color* %normalized_utmp.i, i64 0, i32 1
  %24 = getelementptr inbounds %struct.Color* %normalized_utmp.i, i64 0, i32 2
  %elt28.i = bitcast %struct.Color* %ln.i to double*
  %25 = getelementptr inbounds %struct.Color* %0, i64 0, i32 0
  %26 = getelementptr inbounds %struct.Color* %0, i64 0, i32 1
  %27 = getelementptr inbounds %struct.Color* %0, i64 0, i32 2
  br label %bb25

bb:                                               ; preds = %bb25
  %28 = sdiv i32 %storemerge, %1
  %29 = srem i32 %storemerge, %1
  %30 = sitofp i32 %29 to float
  %31 = fadd float %30, %7
  %32 = fadd float %31, 5.000000e-01
  %33 = fmul float %32, 2.000000e+00
  %34 = fdiv float %33, %6
  %35 = sitofp i32 %28 to float
  %36 = fadd float %35, %9
  %37 = fadd float %36, 5.000000e-01
  %38 = fmul float %37, 2.000000e+00
  %39 = fdiv float %38, %8
  %tmp1182 = trunc i128 %memtmp.i19.0 to i32
  %tmp1183 = bitcast i32 %tmp1182 to float
  store float %tmp1183, float* %10, align 8
  %tmp1185 = lshr i128 %memtmp.i19.0, 32
  %tmp1186 = trunc i128 %tmp1185 to i32
  %tmp1187 = bitcast i32 %tmp1186 to float
  store float %tmp1187, float* %11, align 4
  %ins1193 = lshr i128 %memtmp.i19.0, 64
  %tmp1178 = or i128 %ins1193, 1073741824
  %tmp1179 = trunc i128 %tmp1178 to i32
  %tmp1180 = bitcast i32 %tmp1179 to float
  store float %tmp1180, float* %12, align 8
  %40 = call fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* %L.i) nounwind
  %mrv_gr8.i24 = extractvalue %0 %40, 0
  %tmp1173 = bitcast double %mrv_gr8.i24 to i64
  %mrv_gr10.i = extractvalue %0 %40, 1
  %tmp1160 = trunc i64 %tmp1173 to i32
  %tmp1161 = bitcast i32 %tmp1160 to float
  store float %tmp1161, float* %13, align 8
  %tmp1163 = lshr i64 %tmp1173, 32
  %tmp1164 = trunc i64 %tmp1163 to i32
  %tmp1165 = bitcast i32 %tmp1164 to float
  store float %tmp1165, float* %14, align 4
  store float %mrv_gr10.i, float* %15, align 8
  %41 = call fastcc %0 @_ZN6Vector5crossES_(%struct.Color* %ln.i, double 0.000000e+00, float 1.000000e+00) nounwind
  %mrv_gr18.i26 = extractvalue %0 %41, 0
  %tmp1151 = bitcast double %mrv_gr18.i26 to i64
  %mrv_gr20.i28 = extractvalue %0 %41, 1
  %tmp1138 = trunc i64 %tmp1151 to i32
  %tmp1139 = bitcast i32 %tmp1138 to float
  store float %tmp1139, float* %16, align 8
  %tmp1141 = lshr i64 %tmp1151, 32
  %tmp1142 = trunc i64 %tmp1141 to i32
  %tmp1143 = bitcast i32 %tmp1142 to float
  store float %tmp1143, float* %17, align 4
  store float %mrv_gr20.i28, float* %18, align 8
  %42 = call fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* %utmp.i) nounwind
  %mrv_gr24.i = extractvalue %0 %42, 0
  %tmp1129 = bitcast double %mrv_gr24.i to i64
  %mrv_gr26.i = extractvalue %0 %42, 1
  %tmp1116 = trunc i64 %tmp1129 to i32
  %tmp1117 = bitcast i32 %tmp1116 to float
  store float %tmp1117, float* %22, align 8
  %tmp1119 = lshr i64 %tmp1129, 32
  %tmp1120 = trunc i64 %tmp1119 to i32
  %tmp1121 = bitcast i32 %tmp1120 to float
  store float %tmp1121, float* %23, align 4
  store float %mrv_gr26.i, float* %24, align 8
  %val29.i = load double* %elt28.i, align 8
  %43 = call fastcc %0 @_ZN6Vector5crossES_(%struct.Color* %normalized_utmp.i, double %val29.i, float %mrv_gr10.i) nounwind
  %mrv_gr34.i31 = extractvalue %0 %43, 0
  %tmp1107 = bitcast double %mrv_gr34.i31 to i64
  %mrv_gr36.i = extractvalue %0 %43, 1
  %tmp1094 = trunc i64 %tmp1107 to i32
  %tmp1095 = bitcast i32 %tmp1094 to float
  store float %tmp1095, float* %19, align 8
  %tmp1097 = lshr i64 %tmp1107, 32
  %tmp1098 = trunc i64 %tmp1097 to i32
  %tmp1099 = bitcast i32 %tmp1098 to float
  store float %tmp1099, float* %20, align 4
  store float %mrv_gr36.i, float* %21, align 8
  %44 = call fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* %vtmp.i) nounwind
  %mrv_gr40.i33 = extractvalue %0 %44, 0
  %tmp1085 = bitcast double %mrv_gr40.i33 to i64
  %mrv_gr42.i = extractvalue %0 %44, 1
  %tmp1072 = trunc i64 %tmp1085 to i32
  %tmp1073 = bitcast i32 %tmp1072 to float
  %tmp1075 = lshr i64 %tmp1085, 32
  %tmp1076 = trunc i64 %tmp1075 to i32
  %tmp1077 = bitcast i32 %tmp1076 to float
  %45 = fmul float %tmp1117, 0x3FC925F640000000
  %46 = fmul float %tmp1121, 0x3FC925F640000000
  %47 = fmul float %mrv_gr26.i, 0x3FC925F640000000
  %48 = fmul float %tmp1073, 0x3FC925F640000000
  %49 = fmul float %tmp1077, 0x3FC925F640000000
  %50 = fmul float %mrv_gr42.i, 0x3FC925F640000000
  %51 = fmul float %48, %39
  %52 = fmul float %49, %39
  %53 = fmul float %50, %39
  %tmp1269 = bitcast float %51 to i32
  %tmp1270 = zext i32 %tmp1269 to i64
  %tmp1263 = bitcast float %52 to i32
  %tmp1264 = zext i32 %tmp1263 to i64
  %tmp1265 = shl nuw i64 %tmp1264, 32
  %ins1267 = or i64 %tmp1270, %tmp1265
  %54 = fmul float %45, %34
  %55 = fmul float %46, %34
  %56 = fmul float %47, %34
  store float %54, float* %25, align 8
  store float %55, float* %26, align 4
  store float %56, float* %27, align 8
  %tmp1255 = bitcast i64 %ins1267 to double
  %57 = call fastcc %0 @_ZN6Vector3addES_(%struct.Color* %0, double %tmp1255, float %53) nounwind
  %mrv_gr74.i = extractvalue %0 %57, 0
  %mrv_gr76.i = extractvalue %0 %57, 1
  %58 = call fastcc %0 @_ZN6Vector3addES_(%struct.Color* %ln.i, double %mrv_gr74.i, float %mrv_gr76.i) nounwind
  %mrv_gr84.i = extractvalue %0 %58, 0
  %tmp953 = bitcast double %mrv_gr84.i to i64
  %mrv_gr86.i = extractvalue %0 %58, 1
  %tmp1286 = lshr i64 %tmp953, 32
  %tmp608 = trunc i128 %memtmp.i.0 to i32
  %tmp609 = bitcast i32 %tmp608 to float
  %59 = fsub float -1.000000e+00, %tmp609
  %tmp1290.mask = and i64 %tmp953, 4294967295
  %tmp909 = zext i64 %tmp1290.mask to i96
  %tmp903 = zext i64 %tmp1286 to i96
  %tmp904 = shl nuw nsw i96 %tmp903, 32
  %tmp896 = bitcast float %mrv_gr86.i to i32
  %tmp594 = zext i32 %tmp896 to i128
  %tmp595 = shl nuw nsw i128 %tmp594, 64
  %tmp586 = trunc i64 %tmp953 to i32
  %tmp587 = bitcast i32 %tmp586 to float
  %60 = fdiv float %59, %tmp587
  %tmp564 = trunc i128 %memtmp10.i.0 to i32
  %tmp565 = bitcast i32 %tmp564 to float
  %61 = fsub float 1.000000e+00, %tmp565
  %tmp542 = trunc i64 %tmp953 to i32
  %tmp543 = bitcast i32 %tmp542 to float
  %62 = fdiv float %61, %tmp543
  %63 = fcmp ogt float %60, %62
  %tx1.i.0 = select i1 %63, float %62, float %60
  %tx2.i.0 = select i1 %63, float %60, float %62
  %64 = fcmp ogt float %tx1.i.0, -1.000000e+10
  %tnear.i.0 = select i1 %64, float %tx1.i.0, float -1.000000e+10
  %65 = fcmp olt float %tx2.i.0, 1.000000e+10
  %tfar.i.0 = select i1 %65, float %tx2.i.0, float 1.000000e+10
  %66 = fcmp ogt float %tnear.i.0, %tfar.i.0
  %67 = fcmp olt float %tfar.i.0, 0.000000e+00
  %or.cond = or i1 %66, %67
  br i1 %or.cond, label %_ZN3Box10intersectsE3Ray.exit.thread, label %bb29.i

bb29.i:                                           ; preds = %bb
  %tmp502 = trunc i64 %tmp1286 to i32
  %tmp503 = bitcast i32 %tmp502 to float
  %68 = fdiv float 1.400000e+01, %tmp503
  %tmp458 = trunc i64 %tmp1286 to i32
  %tmp459 = bitcast i32 %tmp458 to float
  %69 = fdiv float 1.600000e+01, %tmp459
  %70 = fcmp ogt float %68, %69
  %ty1.i.0 = select i1 %70, float %69, float %68
  %ty2.i.0 = select i1 %70, float %68, float %69
  %71 = fcmp ogt float %ty1.i.0, %tnear.i.0
  %tnear.i.1 = select i1 %71, float %ty1.i.0, float %tnear.i.0
  %72 = fcmp olt float %ty2.i.0, %tfar.i.0
  %tfar.i.1 = select i1 %72, float %ty2.i.0, float %tfar.i.0
  %73 = fcmp ogt float %tnear.i.1, %tfar.i.1
  %74 = fcmp olt float %tfar.i.1, 0.000000e+00
  %or.cond1637 = or i1 %73, %74
  br i1 %or.cond1637, label %_ZN3Box10intersectsE3Ray.exit.thread, label %bb62.i

bb62.i:                                           ; preds = %bb29.i
  %tmp909.masked1627 = and i96 %tmp909, 4294967295
  %ins722 = or i96 %tmp909.masked1627, %tmp904
  %tmp424 = zext i96 %ins722 to i128
  %mask425 = and i128 %memtmp69.i.1, -79228162514264337593543950336
  %mask420 = or i128 %mask425, %tmp424
  %ins421 = or i128 %mask420, %tmp595
  %tmp406 = lshr i128 %ins421, 64
  %tmp407 = trunc i128 %tmp406 to i32
  %tmp408 = bitcast i32 %tmp407 to float
  %75 = fdiv float 1.000000e+00, %tmp408
  %tmp909.masked1628 = and i96 %tmp909, 4294967295
  %ins676 = or i96 %tmp909.masked1628, %tmp904
  %tmp380 = zext i96 %ins676 to i128
  %mask381 = and i128 %memtmp81.i.1, -79228162514264337593543950336
  %mask376 = or i128 %mask381, %tmp380
  %ins377 = or i128 %mask376, %tmp595
  %tmp362 = lshr i128 %ins377, 64
  %tmp363 = trunc i128 %tmp362 to i32
  %tmp364 = bitcast i32 %tmp363 to float
  %76 = fdiv float 3.000000e+00, %tmp364
  %77 = fcmp ogt float %75, %76
  %tz1.i.0 = select i1 %77, float %76, float %75
  %tz2.i.0 = select i1 %77, float %75, float %76
  %78 = fcmp ogt float %tz1.i.0, %tnear.i.1
  %tnear.i.2 = select i1 %78, float %tz1.i.0, float %tnear.i.1
  %79 = fcmp olt float %tz2.i.0, %tfar.i.1
  %tfar.i.2 = select i1 %79, float %tz2.i.0, float %tfar.i.1
  %80 = fcmp ogt float %tnear.i.2, %tfar.i.2
  %81 = fcmp olt float %tfar.i.2, 0.000000e+00
  %or.cond1638 = or i1 %80, %81
  br i1 %or.cond1638, label %_ZN3Box10intersectsE3Ray.exit.thread, label %bb20

_ZN3Box10intersectsE3Ray.exit.thread:             ; preds = %bb62.i, %bb29.i, %bb
  %memtmp69.i.0.ph = phi i128 [ %memtmp69.i.1, %bb ], [ %memtmp69.i.1, %bb29.i ], [ %ins421, %bb62.i ]
  %memtmp81.i.0.ph = phi i128 [ %memtmp81.i.1, %bb ], [ %memtmp81.i.1, %bb29.i ], [ %ins377, %bb62.i ]
  br label %bb20

bb20:                                             ; preds = %_ZN3Box10intersectsE3Ray.exit.thread, %bb62.i
  %memtmp69.i.01631 = phi i128 [ %memtmp69.i.0.ph, %_ZN3Box10intersectsE3Ray.exit.thread ], [ %ins421, %bb62.i ]
  %memtmp81.i.01629 = phi i128 [ %memtmp81.i.0.ph, %_ZN3Box10intersectsE3Ray.exit.thread ], [ %ins377, %bb62.i ]
  %result.0.off0.off0 = phi float [ 0.000000e+00, %_ZN3Box10intersectsE3Ray.exit.thread ], [ 1.000000e+00, %bb62.i ]
  %result.0.off0.off32 = phi float [ 0.000000e+00, %_ZN3Box10intersectsE3Ray.exit.thread ], [ 0x3FD3333340000000, %bb62.i ]
  %result.0.off64.off64 = phi float [ 0.000000e+00, %_ZN3Box10intersectsE3Ray.exit.thread ], [ 0x3FC99999A0000000, %bb62.i ]
  %82 = mul nsw i32 %1, %28
  %83 = add nsw i32 %82, %29
  %84 = mul nsw i32 %83, 3
  %85 = add nsw i32 %3, %84
  call void @llvm.trax.storef(float %result.0.off0.off0, i32 %85, i32 0) nounwind
  call void @llvm.trax.storef(float %result.0.off0.off32, i32 %85, i32 1) nounwind
  call void @llvm.trax.storef(float %result.0.off64.off64, i32 %85, i32 2) nounwind
  %86 = call i32 @llvm.trax.atominc(i32 0)
  %phitmp = and i128 %memtmp.i19.0, -79228162514264337593543950336
  %phitmp1574 = or i128 %phitmp, 4715268813086523392
  %phitmp1611 = and i128 %memtmp.i.0, -79228162514264337593543950336
  %phitmp1612 = or i128 %phitmp1611, 13938640847793815552
  %phitmp1619 = and i128 %memtmp10.i.0, -79228162514264337593543950336
  %phitmp1620 = or i128 %phitmp1619, 13938640847793815552
  br label %bb25

bb25:                                             ; preds = %bb20, %entry
  %memtmp81.i.1 = phi i128 [ undef, %entry ], [ %memtmp81.i.01629, %bb20 ]
  %memtmp69.i.1 = phi i128 [ undef, %entry ], [ %memtmp69.i.01631, %bb20 ]
  %memtmp10.i.0 = phi i128 [ 13938640847793815552, %entry ], [ %phitmp1620, %bb20 ]
  %memtmp.i.0 = phi i128 [ 13938640847793815552, %entry ], [ %phitmp1612, %bb20 ]
  %memtmp.i19.0 = phi i128 [ 4715268813086523392, %entry ], [ %phitmp1574, %bb20 ]
  %storemerge = phi i32 [ %4, %entry ], [ %86, %bb20 ]
  %87 = icmp sgt i32 %5, %storemerge
  br i1 %87, label %bb, label %return

return:                                           ; preds = %bb25
  ret i32 0
}

declare i32 @llvm.trax.loadi(i32, i32) nounwind

declare i32 @llvm.trax.atominc(i32) nounwind

define internal fastcc %0 @_ZN6Vector5crossES_(%struct.Color* nocapture %this, double %other.0, float %other.1) nounwind readonly ssp align 2 {
return:
  %tmp28 = bitcast double %other.0 to i64
  %0 = getelementptr inbounds %struct.Color* %this, i64 0, i32 1
  %1 = load float* %0, align 4
  %2 = fmul float %1, %other.1
  %3 = getelementptr inbounds %struct.Color* %this, i64 0, i32 2
  %4 = load float* %3, align 4
  %tmp47 = lshr i64 %tmp28, 32
  %tmp48 = trunc i64 %tmp47 to i32
  %tmp49 = bitcast i32 %tmp48 to float
  %5 = fmul float %4, %tmp49
  %6 = fsub float %2, %5
  %tmp44 = trunc i64 %tmp28 to i32
  %tmp45 = bitcast i32 %tmp44 to float
  %7 = fmul float %4, %tmp45
  %8 = getelementptr inbounds %struct.Color* %this, i64 0, i32 0
  %9 = load float* %8, align 4
  %10 = fmul float %9, %other.1
  %11 = fsub float %7, %10
  %12 = fmul float %9, %tmp49
  %13 = fmul float %1, %tmp45
  %14 = fsub float %12, %13
  %tmp17 = bitcast float %6 to i32
  %tmp18 = zext i32 %tmp17 to i64
  %tmp11 = bitcast float %11 to i32
  %tmp12 = zext i32 %tmp11 to i64
  %tmp13 = shl nuw i64 %tmp12, 32
  %ins15 = or i64 %tmp18, %tmp13
  %tmp6 = bitcast i64 %ins15 to double
  %mrv4 = insertvalue %0 undef, double %tmp6, 0
  %mrv5 = insertvalue %0 %mrv4, float %14, 1
  ret %0 %mrv5
}

define internal fastcc %0 @_ZN6Vector3addES_(%struct.Color* nocapture %this, double %other.0, float %other.1) nounwind readonly ssp align 2 {
return:
  %tmp28 = bitcast double %other.0 to i64
  %0 = getelementptr inbounds %struct.Color* %this, i64 0, i32 0
  %1 = load float* %0, align 4
  %tmp41 = trunc i64 %tmp28 to i32
  %tmp42 = bitcast i32 %tmp41 to float
  %2 = fadd float %1, %tmp42
  %3 = getelementptr inbounds %struct.Color* %this, i64 0, i32 1
  %4 = load float* %3, align 4
  %tmp37 = lshr i64 %tmp28, 32
  %tmp38 = trunc i64 %tmp37 to i32
  %tmp39 = bitcast i32 %tmp38 to float
  %5 = fadd float %4, %tmp39
  %6 = getelementptr inbounds %struct.Color* %this, i64 0, i32 2
  %7 = load float* %6, align 4
  %8 = fadd float %7, %other.1
  %tmp17 = bitcast float %2 to i32
  %tmp18 = zext i32 %tmp17 to i64
  %tmp11 = bitcast float %5 to i32
  %tmp12 = zext i32 %tmp11 to i64
  %tmp13 = shl nuw i64 %tmp12, 32
  %ins15 = or i64 %tmp18, %tmp13
  %tmp6 = bitcast i64 %ins15 to double
  %mrv4 = insertvalue %0 undef, double %tmp6, 0
  %mrv5 = insertvalue %0 %mrv4, float %8, 1
  ret %0 %mrv5
}

define internal fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* nocapture %this) nounwind ssp align 2 {
return:
  %0 = getelementptr inbounds %struct.Color* %this, i64 0, i32 0
  %1 = load float* %0, align 4
  %2 = fmul float %1, %1
  %3 = getelementptr inbounds %struct.Color* %this, i64 0, i32 1
  %4 = load float* %3, align 4
  %5 = fmul float %4, %4
  %6 = fadd float %2, %5
  %7 = getelementptr inbounds %struct.Color* %this, i64 0, i32 2
  %8 = load float* %7, align 4
  %9 = fmul float %8, %8
  %10 = fadd float %6, %9
  %11 = call float @llvm.trax.invsqrt(float %10) nounwind
  %12 = fdiv float 1.000000e+00, %11
  %13 = load float* %7, align 4
  %14 = fdiv float %13, %12
  %15 = load float* %3, align 4
  %16 = fdiv float %15, %12
  %17 = load float* %0, align 4
  %18 = fdiv float %17, %12
  %tmp18 = bitcast float %18 to i32
  %tmp19 = zext i32 %tmp18 to i64
  %tmp12 = bitcast float %16 to i32
  %tmp13 = zext i32 %tmp12 to i64
  %tmp14 = shl nuw i64 %tmp13, 32
  %ins16 = or i64 %tmp19, %tmp14
  %tmp7 = bitcast i64 %ins16 to double
  %mrv4 = insertvalue %0 undef, double %tmp7, 0
  %mrv5 = insertvalue %0 %mrv4, float %14, 1
  ret %0 %mrv5
}
