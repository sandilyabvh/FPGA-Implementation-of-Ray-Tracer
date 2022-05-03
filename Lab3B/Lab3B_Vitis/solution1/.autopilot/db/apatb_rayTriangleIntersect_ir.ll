; ModuleID = '/nethome/sbn6/fpga/Lab3B/Lab3B_Vitis/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%struct.ap_fixed = type { %struct.ap_fixed_base }
%struct.ap_fixed_base = type { %struct.ssdm_int }
%struct.ssdm_int = type { i32 }

; Function Attrs: noinline
define void @apatb_rayTriangleIntersect_ir(%struct.ap_fixed* %dir_DRAM, [3 x %struct.ap_fixed]* %P1_DRAM, [3 x %struct.ap_fixed]* %P2_DRAM, [3 x %struct.ap_fixed]* %P3_DRAM, %struct.ap_fixed* %intersectIndex) local_unnamed_addr #0 {
entry:
  %dir_DRAM_copy = alloca [3 x i32], align 512
  %malloccall = call i8* @malloc(i64 75840)
  %P1_DRAM_copy = bitcast i8* %malloccall to [6320 x [3 x i32]]*
  %malloccall1 = call i8* @malloc(i64 75840)
  %P2_DRAM_copy = bitcast i8* %malloccall1 to [6320 x [3 x i32]]*
  %malloccall2 = call i8* @malloc(i64 75840)
  %P3_DRAM_copy = bitcast i8* %malloccall2 to [6320 x [3 x i32]]*
  %intersectIndex_copy = alloca [2 x i32], align 512
  %0 = bitcast %struct.ap_fixed* %dir_DRAM to [3 x %struct.ap_fixed]*
  %1 = bitcast [3 x %struct.ap_fixed]* %P1_DRAM to [6320 x [3 x %struct.ap_fixed]]*
  %2 = bitcast [3 x %struct.ap_fixed]* %P2_DRAM to [6320 x [3 x %struct.ap_fixed]]*
  %3 = bitcast [3 x %struct.ap_fixed]* %P3_DRAM to [6320 x [3 x %struct.ap_fixed]]*
  %4 = bitcast %struct.ap_fixed* %intersectIndex to [2 x %struct.ap_fixed]*
  call fastcc void @copy_in([3 x %struct.ap_fixed]* %0, [3 x i32]* nonnull align 512 %dir_DRAM_copy, [6320 x [3 x %struct.ap_fixed]]* %1, [6320 x [3 x i32]]* %P1_DRAM_copy, [6320 x [3 x %struct.ap_fixed]]* %2, [6320 x [3 x i32]]* %P2_DRAM_copy, [6320 x [3 x %struct.ap_fixed]]* %3, [6320 x [3 x i32]]* %P3_DRAM_copy, [2 x %struct.ap_fixed]* %4, [2 x i32]* nonnull align 512 %intersectIndex_copy)
  %5 = getelementptr [3 x i32], [3 x i32]* %dir_DRAM_copy, i32 0, i32 0
  %6 = getelementptr [6320 x [3 x i32]], [6320 x [3 x i32]]* %P1_DRAM_copy, i32 0, i32 0
  %7 = getelementptr [6320 x [3 x i32]], [6320 x [3 x i32]]* %P2_DRAM_copy, i32 0, i32 0
  %8 = getelementptr [6320 x [3 x i32]], [6320 x [3 x i32]]* %P3_DRAM_copy, i32 0, i32 0
  %9 = getelementptr [2 x i32], [2 x i32]* %intersectIndex_copy, i32 0, i32 0
  call void @apatb_rayTriangleIntersect_hw(i32* %5, [3 x i32]* %6, [3 x i32]* %7, [3 x i32]* %8, i32* %9)
  call fastcc void @copy_out([3 x %struct.ap_fixed]* %0, [3 x i32]* nonnull align 512 %dir_DRAM_copy, [6320 x [3 x %struct.ap_fixed]]* %1, [6320 x [3 x i32]]* %P1_DRAM_copy, [6320 x [3 x %struct.ap_fixed]]* %2, [6320 x [3 x i32]]* %P2_DRAM_copy, [6320 x [3 x %struct.ap_fixed]]* %3, [6320 x [3 x i32]]* %P3_DRAM_copy, [2 x %struct.ap_fixed]* %4, [2 x i32]* nonnull align 512 %intersectIndex_copy)
  call void @free(i8* %malloccall)
  call void @free(i8* %malloccall1)
  call void @free(i8* %malloccall2)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in([3 x %struct.ap_fixed]* readonly, [3 x i32]* noalias align 512, [6320 x [3 x %struct.ap_fixed]]* readonly, [6320 x [3 x i32]]* noalias, [6320 x [3 x %struct.ap_fixed]]* readonly, [6320 x [3 x i32]]* noalias, [6320 x [3 x %struct.ap_fixed]]* readonly, [6320 x [3 x i32]]* noalias, [2 x %struct.ap_fixed]* readonly, [2 x i32]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a3struct.ap_fixed([3 x i32]* align 512 %1, [3 x %struct.ap_fixed]* %0)
  call fastcc void @onebyonecpy_hls.p0a6320a3struct.ap_fixed.203([6320 x [3 x i32]]* %3, [6320 x [3 x %struct.ap_fixed]]* %2)
  call fastcc void @onebyonecpy_hls.p0a6320a3struct.ap_fixed.203([6320 x [3 x i32]]* %5, [6320 x [3 x %struct.ap_fixed]]* %4)
  call fastcc void @onebyonecpy_hls.p0a6320a3struct.ap_fixed.203([6320 x [3 x i32]]* %7, [6320 x [3 x %struct.ap_fixed]]* %6)
  call fastcc void @onebyonecpy_hls.p0a2struct.ap_fixed([2 x i32]* align 512 %9, [2 x %struct.ap_fixed]* %8)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a3struct.ap_fixed([3 x i32]* noalias align 512, [3 x %struct.ap_fixed]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [3 x i32]* %0, null
  %3 = icmp eq [3 x %struct.ap_fixed]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx9 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %5 = getelementptr [3 x i32], [3 x i32]* %0, i64 0, i64 %for.loop.idx9
  %src.addr.0.0.05.gep8 = getelementptr [3 x %struct.ap_fixed], [3 x %struct.ap_fixed]* %1, i64 0, i64 %for.loop.idx9, i32 0, i32 0, i32 0
  %6 = load i32, i32* %src.addr.0.0.05.gep8, align 4
  store i32 %6, i32* %5, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx9, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 3
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a2struct.ap_fixed([2 x i32]* noalias align 512, [2 x %struct.ap_fixed]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [2 x i32]* %0, null
  %3 = icmp eq [2 x %struct.ap_fixed]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx9 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %5 = getelementptr [2 x i32], [2 x i32]* %0, i64 0, i64 %for.loop.idx9
  %src.addr.0.0.05.gep8 = getelementptr [2 x %struct.ap_fixed], [2 x %struct.ap_fixed]* %1, i64 0, i64 %for.loop.idx9, i32 0, i32 0, i32 0
  %6 = load i32, i32* %src.addr.0.0.05.gep8, align 4
  store i32 %6, i32* %5, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx9, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 2
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out([3 x %struct.ap_fixed]*, [3 x i32]* noalias readonly align 512, [6320 x [3 x %struct.ap_fixed]]*, [6320 x [3 x i32]]* noalias readonly, [6320 x [3 x %struct.ap_fixed]]*, [6320 x [3 x i32]]* noalias readonly, [6320 x [3 x %struct.ap_fixed]]*, [6320 x [3 x i32]]* noalias readonly, [2 x %struct.ap_fixed]*, [2 x i32]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a3struct.ap_fixed.219([3 x %struct.ap_fixed]* %0, [3 x i32]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a6320a3struct.ap_fixed([6320 x [3 x %struct.ap_fixed]]* %2, [6320 x [3 x i32]]* %3)
  call fastcc void @onebyonecpy_hls.p0a6320a3struct.ap_fixed([6320 x [3 x %struct.ap_fixed]]* %4, [6320 x [3 x i32]]* %5)
  call fastcc void @onebyonecpy_hls.p0a6320a3struct.ap_fixed([6320 x [3 x %struct.ap_fixed]]* %6, [6320 x [3 x i32]]* %7)
  call fastcc void @onebyonecpy_hls.p0a2struct.ap_fixed.197([2 x %struct.ap_fixed]* %8, [2 x i32]* align 512 %9)
  ret void
}

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a2struct.ap_fixed.197([2 x %struct.ap_fixed]* noalias, [2 x i32]* noalias readonly align 512) unnamed_addr #2 {
entry:
  %2 = icmp eq [2 x %struct.ap_fixed]* %0, null
  %3 = icmp eq [2 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx9 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr.0.0.06.gep7 = getelementptr [2 x %struct.ap_fixed], [2 x %struct.ap_fixed]* %0, i64 0, i64 %for.loop.idx9, i32 0, i32 0, i32 0
  %5 = getelementptr [2 x i32], [2 x i32]* %1, i64 0, i64 %for.loop.idx9
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %dst.addr.0.0.06.gep7, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx9, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 2
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a6320a3struct.ap_fixed.203([6320 x [3 x i32]]* noalias, [6320 x [3 x %struct.ap_fixed]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [6320 x [3 x i32]]* %0, null
  %3 = icmp eq [6320 x [3 x %struct.ap_fixed]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx18 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx317 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %5 = getelementptr [6320 x [3 x i32]], [6320 x [3 x i32]]* %0, i64 0, i64 %for.loop.idx18, i64 %for.loop.idx317
  %src.addr6.0.0.013.gep16 = getelementptr [6320 x [3 x %struct.ap_fixed]], [6320 x [3 x %struct.ap_fixed]]* %1, i64 0, i64 %for.loop.idx18, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %6 = load i32, i32* %src.addr6.0.0.013.gep16, align 4
  store i32 %6, i32* %5, align 4
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx317, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 3
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx18, 1
  %exitcond19 = icmp ne i64 %for.loop.idx.next, 6320
  br i1 %exitcond19, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a6320a3struct.ap_fixed([6320 x [3 x %struct.ap_fixed]]* noalias, [6320 x [3 x i32]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [6320 x [3 x %struct.ap_fixed]]* %0, null
  %3 = icmp eq [6320 x [3 x i32]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx18 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx317 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %dst.addr5.0.0.014.gep15 = getelementptr [6320 x [3 x %struct.ap_fixed]], [6320 x [3 x %struct.ap_fixed]]* %0, i64 0, i64 %for.loop.idx18, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %5 = getelementptr [6320 x [3 x i32]], [6320 x [3 x i32]]* %1, i64 0, i64 %for.loop.idx18, i64 %for.loop.idx317
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %dst.addr5.0.0.014.gep15, align 4
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx317, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 3
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx18, 1
  %exitcond19 = icmp ne i64 %for.loop.idx.next, 6320
  br i1 %exitcond19, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a3struct.ap_fixed.219([3 x %struct.ap_fixed]* noalias, [3 x i32]* noalias readonly align 512) unnamed_addr #2 {
entry:
  %2 = icmp eq [3 x %struct.ap_fixed]* %0, null
  %3 = icmp eq [3 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx9 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr.0.0.06.gep7 = getelementptr [3 x %struct.ap_fixed], [3 x %struct.ap_fixed]* %0, i64 0, i64 %for.loop.idx9, i32 0, i32 0, i32 0
  %5 = getelementptr [3 x i32], [3 x i32]* %1, i64 0, i64 %for.loop.idx9
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %dst.addr.0.0.06.gep7, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx9, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 3
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

declare void @apatb_rayTriangleIntersect_hw(i32*, [3 x i32]*, [3 x i32]*, [3 x i32]*, i32*)

define void @rayTriangleIntersect_hw_stub_wrapper(i32*, [3 x i32]*, [3 x i32]*, [3 x i32]*, i32*) #4 {
entry:
  %5 = alloca [3 x %struct.ap_fixed]
  %malloccall = tail call i8* @malloc(i64 75840)
  %6 = bitcast i8* %malloccall to [6320 x [3 x %struct.ap_fixed]]*
  %malloccall1 = tail call i8* @malloc(i64 75840)
  %7 = bitcast i8* %malloccall1 to [6320 x [3 x %struct.ap_fixed]]*
  %malloccall2 = tail call i8* @malloc(i64 75840)
  %8 = bitcast i8* %malloccall2 to [6320 x [3 x %struct.ap_fixed]]*
  %9 = alloca [2 x %struct.ap_fixed]
  %10 = bitcast i32* %0 to [3 x i32]*
  %11 = bitcast [3 x i32]* %1 to [6320 x [3 x i32]]*
  %12 = bitcast [3 x i32]* %2 to [6320 x [3 x i32]]*
  %13 = bitcast [3 x i32]* %3 to [6320 x [3 x i32]]*
  %14 = bitcast i32* %4 to [2 x i32]*
  call void @copy_out([3 x %struct.ap_fixed]* %5, [3 x i32]* %10, [6320 x [3 x %struct.ap_fixed]]* %6, [6320 x [3 x i32]]* %11, [6320 x [3 x %struct.ap_fixed]]* %7, [6320 x [3 x i32]]* %12, [6320 x [3 x %struct.ap_fixed]]* %8, [6320 x [3 x i32]]* %13, [2 x %struct.ap_fixed]* %9, [2 x i32]* %14)
  %15 = bitcast [3 x %struct.ap_fixed]* %5 to %struct.ap_fixed*
  %16 = bitcast [6320 x [3 x %struct.ap_fixed]]* %6 to [3 x %struct.ap_fixed]*
  %17 = bitcast [6320 x [3 x %struct.ap_fixed]]* %7 to [3 x %struct.ap_fixed]*
  %18 = bitcast [6320 x [3 x %struct.ap_fixed]]* %8 to [3 x %struct.ap_fixed]*
  %19 = bitcast [2 x %struct.ap_fixed]* %9 to %struct.ap_fixed*
  call void @rayTriangleIntersect_hw_stub(%struct.ap_fixed* %15, [3 x %struct.ap_fixed]* %16, [3 x %struct.ap_fixed]* %17, [3 x %struct.ap_fixed]* %18, %struct.ap_fixed* %19)
  call void @copy_in([3 x %struct.ap_fixed]* %5, [3 x i32]* %10, [6320 x [3 x %struct.ap_fixed]]* %6, [6320 x [3 x i32]]* %11, [6320 x [3 x %struct.ap_fixed]]* %7, [6320 x [3 x i32]]* %12, [6320 x [3 x %struct.ap_fixed]]* %8, [6320 x [3 x i32]]* %13, [2 x %struct.ap_fixed]* %9, [2 x i32]* %14)
  ret void
}

declare void @rayTriangleIntersect_hw_stub(%struct.ap_fixed*, [3 x %struct.ap_fixed]*, [3 x %struct.ap_fixed]*, [3 x %struct.ap_fixed]*, %struct.ap_fixed*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
