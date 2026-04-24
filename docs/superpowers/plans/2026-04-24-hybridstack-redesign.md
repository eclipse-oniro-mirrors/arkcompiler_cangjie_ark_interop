# 混合栈支持仓颉 - 实施计划

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking. After each task, dispatch a review subagent before moving on.

**Goal:** 在 `feat/hybridstack-redesign` 分支上从零实现新方案，使 faultlog 与语言层均能稳定显示仓颉栈帧。

**Architecture:** 复用 ets_runtime 的 `PcVector` 与 `DFXJSNApi::GetHybridStackTrace`；**上游新增三个取代「opKind=BARRIER」的 cjffi C API**：`ARKTS_GetPcVectorSnapshot`、`ARKTS_RestorePcVectorSnapshot`、`ARKTS_PushCJFramesToPcVector`。在仓颉异常构造点由互操作回调调用 `Push`；跨边界 wrapper 创建前/后调用 `Snapshot/Restore` 保护 PC；语言层通过新增 `HybridStack.getTrace()` 调用 `napi_get_hybrid_stack_trace`。详见 [`doc/hybridstack_architecture_design.md`](../../../doc/hybridstack_architecture_design.md)。

**Tech Stack:** Cangjie (`.cj`) + C++ (`frameworks/native`) + GN/cjpm 双构建 + cjffi (`ARKTS_UpdateStackInfo`, `napi_get_hybrid_stack_trace`).

---

## Task 0: 上游协作 Spike（Read-only / 不写代码）

**Files:** 仅调研。产出：在 `doc/hybridstack_architecture_design.md` 对应节补充、并新增 `doc/hybridstack_spike_notes.md`。

- [ ] **Step 1：确认 `ARKTS_UpdateStackInfo` 现行语义**

  阅读：
  - `D:\docker\code\arkui_napi\interfaces\inner_api\cjffi\ark_interop\ark_interop_napi.h:243`
  - `D:\docker\code\arkcompiler_ets_runtime\ecmascript\js_thread.h` 中 `StackInfoOpKind` 枚举
  - `D:\docker\code\arkcompiler_ets_runtime` 中 `UpdateStackInfo` 实现体

  Expected: 在 `doc/hybridstack_spike_notes.md` 记录枚举值与效果，明确 「UpdateStackInfo 仅切换 fiber 上下文、不写 PcVector」，勾锁本设计采用 `Snapshot/Restore + Append` 新接口路径。

- [ ] **Step 2：上游接口可行性评估**

  估评 ets_runtime 是否可接受新增 `JSNApi::GetPcVectorSnapshot/SetPcVector/AppendPcVector` 内部接口 + arkui_napi `ARKTS_*` 包装。记录 owner / 预计节点。若不可行，启动 §4.2.4 末尾「最终回退」（仅语言层 P1/P2）。

- [ ] **Step 3：确认 cangjie_runtime 异常构造回调 hook**

  在 `D:\docker\code\cangjie_runtime` 搜索 `OnExceptionCreated|UncaughtExceptionInfo|ExceptionCreate|throw_hook|registerStackInfoCallbacks`。定位是否存在「异常**对象**构造时」的 hook（而非 throw 时）。同时锁定仓颉侧主动抓取 backtrace 的公开 API（候选：`std.runtime.Backtrace.current()` / `Thread.currentThread().getStackTrace()`）以别名与入参。

  Expected: 在 spike notes 中明确：
  - 路径 A（hook 存在）或路径 B（使用 名为 `Backtrace.current()` 的仓颉 API）二选一。
  - Task 4 实施时仅保留选中路径。

- [ ] **Step 4：提交调研结果**

  ```powershell
  cd D:\docker\code\arkcompiler_cangjie_ark_interop
  git add doc/hybridstack_architecture_design.md doc/hybridstack_spike_notes.md
  git commit -m "docs(hybridstack): record upstream API spike and CJ exception hook decision"
  ```

---

## Task 1: 新增 C++ 桥接骨架 + cjffi 新 API 调用封装

> 本 Task **不修改** ets_runtime / arkui_napi。仅在本仓库内调用上游在 Task 0 spike 结果中锁定的路径：
> - 路径主选：假定上游已接受 `ARKTS_GetPcVectorSnapshot` / `ARKTS_RestorePcVectorSnapshot` / `ARKTS_PushCJFramesToPcVector`。本 Task 只按该签名转调。
> - 若 spike 表明上游接口未落地，在本 Task Step 0 中 **加入 weak 符号占位**（`__attribute__((weak))`）与运行时检测，仅语言层路径生效。

**Files:**
- Create: `frameworks/native/hybrid_stack/hybrid_stack_bridge.h`
- Create: `frameworks/native/hybrid_stack/hybrid_stack_bridge.cpp`
- Create: `frameworks/native/hybrid_stack/BUILD.gn`
- Modify: 父级 `BUILD.gn`（接入新子目标）

- [ ] **Step 0：根据 Task 0 锁定路径，决定是否启用 weak 符号占位**。在本 Task PR description 记录最终选择。

- [ ] **Step 1：编写头文件**

  ```cpp
  // frameworks/native/hybrid_stack/hybrid_stack_bridge.h
  #ifndef CJ_INTEROP_HYBRID_STACK_BRIDGE_H
  #define CJ_INTEROP_HYBRID_STACK_BRIDGE_H

  #include <cstddef>
  #include <cstdint>
  #include "napi/native_api.h"

  #ifdef __cplusplus
  extern "C" {
  #endif

  // 语言层路径：获取混合栈字符串。返回 0 = 成功；buf == nullptr 时
  // *outLen 为所需字节数（不含 '\0'）。
  int CJ_HybridStack_GetTrace(napi_env env, char* buf, size_t bufLen, size_t* outLen);

  // faultlog 路径：将仓颉 backtrace PC 追加到当前 vm 的 PcVector。
  // frames: PC 指针数组；count: 数组长度。
  // 返回 0 = 成功；非 0 = 上游接口不可用（weak 符号未链接）或调用失败。
  int CJ_HybridStack_AppendFrames(uint64_t vmAddr,
                                  const uintptr_t* frames,
                                  size_t count);

  // 保护路径：快照 / 恢复 PcVector。outSnap 负责调用者 free。
  int CJ_HybridStack_SnapshotPcVector(uint64_t vmAddr,
                                      uintptr_t** outFrames,
                                      size_t* outCount);
  int CJ_HybridStack_RestorePcVector(uint64_t vmAddr,
                                     const uintptr_t* frames,
                                     size_t count);

  #ifdef __cplusplus
  }
  #endif
  #endif // CJ_INTEROP_HYBRID_STACK_BRIDGE_H
  ```

- [ ] **Step 2：编写实现文件**

  ```cpp
  // frameworks/native/hybrid_stack/hybrid_stack_bridge.cpp
  #include "hybrid_stack_bridge.h"

  #include <cstdlib>
  #include <cstring>
  #include <string>

  #include "native_node_api.h"
  // 上游 cjffi 新增接口（spike 锁定后从 arkui_napi 头文件引入）
  // 若 weak 模式，这里使用本地 extern 并加 weak attribute。
  extern "C" __attribute__((weak)) int ARKTS_GetPcVectorSnapshot(
      uint64_t, uintptr_t**, size_t*);
  extern "C" __attribute__((weak)) int ARKTS_RestorePcVectorSnapshot(
      uint64_t, const uintptr_t*, size_t);
  extern "C" __attribute__((weak)) int ARKTS_AppendPcVector(
      uint64_t, const uintptr_t*, size_t);

  extern "C" int CJ_HybridStack_GetTrace(napi_env env, char* buf,
                                         size_t bufLen, size_t* outLen)
  {
      if (env == nullptr || outLen == nullptr) {
          return -1;
      }
      std::string trace;
      napi_status st = napi_get_hybrid_stack_trace(env, trace);
      if (st != napi_ok) {
          return static_cast<int>(st);
      }
      *outLen = trace.size();
      if (buf == nullptr || bufLen == 0) {
          return 0;
      }
      size_t copy = (trace.size() < bufLen - 1) ? trace.size() : (bufLen - 1);
      std::memcpy(buf, trace.data(), copy);
      buf[copy] = '\0';
      *outLen = copy;
      return 0;
  }

  extern "C" int CJ_HybridStack_AppendFrames(uint64_t vmAddr,
                                             const uintptr_t* frames,
                                             size_t count)
  {
      if (frames == nullptr || count == 0) { return -1; }
      if (ARKTS_AppendPcVector == nullptr) { return -2; }
      return ARKTS_AppendPcVector(vmAddr, frames, count);
  }

  extern "C" int CJ_HybridStack_SnapshotPcVector(uint64_t vmAddr,
                                                 uintptr_t** outFrames,
                                                 size_t* outCount)
  {
      if (outFrames == nullptr || outCount == nullptr) { return -1; }
      if (ARKTS_GetPcVectorSnapshot == nullptr) { return -2; }
      return ARKTS_GetPcVectorSnapshot(vmAddr, outFrames, outCount);
  }

  extern "C" int CJ_HybridStack_RestorePcVector(uint64_t vmAddr,
                                                const uintptr_t* frames,
                                                size_t count)
  {
      if (ARKTS_RestorePcVectorSnapshot == nullptr) { return -2; }
      return ARKTS_RestorePcVectorSnapshot(vmAddr, frames, count);
  }
  ```

- [ ] **Step 3：编写 BUILD.gn**

  ```gn
  # frameworks/native/hybrid_stack/BUILD.gn
  import("//build/ohos.gni")

  ohos_shared_library("cj_hybrid_stack_bridge") {
      sources = [ "hybrid_stack_bridge.cpp" ]
      include_dirs = [ "." ]
      external_deps = [
          "napi:ace_napi",
          "napi:cj_bind_native",
      ]
      part_name = "cangjie_ark_interop"
      subsystem_name = "arkcompiler"
  }
  ```

- [ ] **Step 4：将子目标接入父级 `BUILD.gn`**

  定位仓库根 `BUILD.gn` 中现有的聚合 group（`group("cangjie_ark_interop")` 或类似），在其 `deps` 列表追加：
  ```gn
  "//foundation/arkcompiler/cangjie_ark_interop/frameworks/native/hybrid_stack:cj_hybrid_stack_bridge",
  ```

  > 若该 group 位于 `ohos/BUILD.gn` 而非根 `BUILD.gn`，在该文件修改。

- [ ] **Step 5：本地编译验证**

  Run（独立工程模式）：
  ```powershell
  cd D:\docker\code\arkcompiler_cangjie_ark_interop
  hb build cj_hybrid_stack_bridge -i
  ```
  Expected: 产出 `libcj_hybrid_stack_bridge.z.so`，无编译错误。若 `hb` 不可用，回退 `./build.sh --product-name rk3568 --target-cpu arm64 --build-target cj_hybrid_stack_bridge`。

- [ ] **Step 6：提交**

  ```powershell
  git add frameworks/native/hybrid_stack/ BUILD.gn ohos/BUILD.gn
  git commit -m "feat(hybridstack): add C++ bridge with snapshot/restore/append + napi_get_hybrid_stack_trace forwarders"
  ```

---

## Task 2: 仓颉侧 `HybridStack` API 封装

**Files:**
- Create: `ohos/hybrid_stack/hybrid_stack_ffi.cj`
- Create: `ohos/hybrid_stack/hybrid_stack.cj`
- Modify: `ohos/cjpm.toml`（按现有 `[package.package-configuration."module.name"]` 语法注册 `hybrid_stack`；以 `.agents/skills/cjpm-build/extra_libs/src/ohos/cjpm.toml` 中`encoding`模块的写法为参考）
- Modify: `kit/CangjieKit/index.cj`（导出新 API）

- [ ] **Step 1：阅取现有 `cjpm.toml` 注册语法**

  Run：
  ```powershell
  Get-Content D:\docker\code\arkcompiler_cangjie_ark_interop\.agents\skills\cjpm-build\extra_libs\src\ohos\cjpm.toml
  Get-Content D:\docker\code\arkcompiler_cangjie_ark_interop\ohos\cjpm.toml
  ```
  记录 `encoding` 模块的完整注册块。Step 4 使用同样语法。

- [ ] **Step 2：FFI 声明**

  ```cangjie
  // ohos/hybrid_stack/hybrid_stack_ffi.cj
  package ohos.hybrid_stack

  @C
  foreign func CJ_HybridStack_GetTrace(env: CPointer<Unit>,
                                       buf: CPointer<UInt8>,
                                       bufLen: UIntNative,
                                       outLen: CPointer<UIntNative>): Int32

  @C
  foreign func CJ_HybridStack_AppendFrames(vmAddr: UInt64,
                                           frames: CPointer<UIntNative>,
                                           count: UIntNative): Int32

  @C
  foreign func CJ_HybridStack_SnapshotPcVector(vmAddr: UInt64,
                                               outFrames: CPointer<CPointer<UIntNative>>,
                                               outCount: CPointer<UIntNative>): Int32

  @C
  foreign func CJ_HybridStack_RestorePcVector(vmAddr: UInt64,
                                              frames: CPointer<UIntNative>,
                                              count: UIntNative): Int32

  @C
  foreign func free(ptr: CPointer<Unit>): Unit
  ```

- [ ] **Step 3：高层 API**

  ```cangjie
  // ohos/hybrid_stack/hybrid_stack.cj
  package ohos.hybrid_stack

  import ohos.ark_interop.*
  import std.ffi.c.*

  // PcVector 快照：仅供同仓 js_exception.cj 使用。
  public struct PcSnapshot {
      let frames: CPointer<UIntNative>
      let count: UIntNative
      init(frames: CPointer<UIntNative>, count: UIntNative) {
          this.frames = frames
          this.count = count
      }
  }

  public class HybridStack {
      // 将 JSEnv（= IntNative）原值作为 CPointer<Unit> 传入 FFI。
      private static func envToPtr(env: JSEnv): CPointer<Unit> {
          unsafe { return CPointer<Unit>(env) }
      }

      public static func getTrace(env: JSEnv): String {
          unsafe {
              let envPtr = envToPtr(env)
              var size: UIntNative = 0
              let probe = CJ_HybridStack_GetTrace(envPtr, CPointer<UInt8>(), 0,
                                                  inout size)
              if (probe != 0 || size == 0) { return "" }
              let cap = size + 1
              let buf = LibC.malloc(cap) as CPointer<UInt8>
              if (buf.isNull()) { return "" }
              try {
                  var written: UIntNative = size
                  let st = CJ_HybridStack_GetTrace(envPtr, buf, cap, inout written)
                  if (st != 0) { return "" }
                  return String.fromCString(buf as CPointer<Byte>)
              } finally {
                  LibC.free(buf as CPointer<Unit>)
              }
          }
      }

      // 仅供同仓内部 / cangjie_runtime 回调使用。
      static func appendFrames(vmAddr: UInt64,
                               frames: CPointer<UIntNative>,
                               count: UIntNative): Int32 {
          unsafe { return CJ_HybridStack_AppendFrames(vmAddr, frames, count) }
      }

      static func snapshot(vmAddr: UInt64): PcSnapshot {
          unsafe {
              var framesOut: CPointer<UIntNative> = CPointer<UIntNative>()
              var countOut: UIntNative = 0
              let st = CJ_HybridStack_SnapshotPcVector(vmAddr,
                  inout framesOut, inout countOut)
              if (st != 0) { return PcSnapshot(CPointer<UIntNative>(), 0) }
              return PcSnapshot(framesOut, countOut)
          }
      }

      static func restore(vmAddr: UInt64, snap: PcSnapshot): Unit {
          if (snap.frames.isNull()) { return }
          unsafe {
              CJ_HybridStack_RestorePcVector(vmAddr, snap.frames, snap.count)
              free(snap.frames as CPointer<Unit>)
          }
      }
  }
  ```

  > **修正**：上一版草稿中 `env.rawPointer()` 不存在，因为 `JSEnv = IntNative`（参 `ohos/ark_interop/jscontext.cj`）。本版使用 `unsafe { CPointer<Unit>(env) }`。

- [ ] **Step 4：注册到 cjpm**

  以仓库现有 `ohos/cjpm.toml` 中 `encoding` 模块的注册块为模板，插入同结构的 `hybrid_stack` 条目。**不要**发明不存在的 `[modules]` 块。

- [ ] **Step 5：导出到 Kit**

  在 `kit/CangjieKit/index.cj` 末尾追加：
  ```cangjie
  public import ohos.hybrid_stack.*
  ```

- [ ] **Step 6：cjpm 构建验证**

  调用 `.agents/skills/cjpm-build/SKILL.md` 给出的命令链路完成构建，确认 `libark_interop.z.so` 等关键产物正常生成。

- [ ] **Step 7：提交**

  ```powershell
  git add ohos/hybrid_stack/ ohos/cjpm.toml kit/CangjieKit/index.cj
  git commit -m "feat(hybridstack): expose Cangjie HybridStack API wrapping the C++ bridge"
  ```

---

## Task 3: 改造 `js_exception.cj`：Snapshot/Restore 保护 PcVector

**Files:**
- Modify: `ohos/ark_interop/js_exception.cj`（重点为 `toJSError` / `createJSError`）
- Modify: `ohos/ark_interop/js_exception.cj` 中 `SharedException` 类：增加 `var fromInteropBoundary: Bool = false`
- Add unit test: `test/hybridstack/js_exception_pc_preservation_test.cj`

- [ ] **Step 1：先写失败测试**

  ```cangjie
  // test/hybridstack/js_exception_pc_preservation_test.cj
  // 场景：仓颉抛出异常 → 互操作 toJSError 包装 → ArkTS 捕获
  // 过程：
  //   1. 在 toJSError 调用前调用 HybridStack.snapshot(vmAddr) 取 snapBefore
  //   2. toJSError 返回后调用 HybridStack.snapshot(vmAddr) 取 snapAfter
  //   3. 断言 snapBefore.frames 中的 PC 序列 ≡ snapAfter（表示 wrapper 创建未覆盖）
  ```

- [ ] **Step 2：运行测试确认失败**

  Run：按 `.agents/skills/cjpm-build` 指定的 test 命令执行；Expected: FAIL。

- [ ] **Step 3：修改 `toJSError` / `createJSError`**

  逆向实现：
  - 在创建 `BusinessException` wrapper **之前**调用 `HybridStack.snapshot(vmAddr)` 取 `snap`。
  - 创建 wrapper 后（`createJSError` 返回后）调用 `HybridStack.restore(vmAddr, snap)`。
  - `SharedException` 类增加字段 `var fromInteropBoundary: Bool = false`；wrapper 创建路径设为 `true`。
  - 复用路径：`if (let Some(pending) <- ctx.pendingJSError) where refEq(pending.sharedException.mixedException, exception) && pending.sharedException.fromInteropBoundary` 时直接 throw pending，跳过创建与 snapshot/restore。

- [ ] **Step 4：测试通过**

  Run 同 Step 2；Expected: PASS。

- [ ] **Step 5：提交**

  ```powershell
  git add ohos/ark_interop/js_exception.cj test/hybridstack/
  git commit -m "fix(hybridstack): preserve EcmaVM PcVector via snapshot/restore around CJ exception wrapping"
  ```

---

## Task 4: 接入仓颉异常构造回调

> 依赖 Task 0 Step 2 结论；以下两条路径择一执行。

### 路径 A — cangjie_runtime 已有构造 hook

**Files:**
- Modify: `ohos/ark_interop/js_module.cj`（扩展 `CJModuleCallbacks` / `CJUncaughtExceptionInfo`）
- Modify: 互操作启动初始化处（`registerCJUncaughtExceptionHandler` 调用点）

- [ ] **Step 1：扩展回调结构**

  在 `CJModuleCallbacks` 中追加 `onCJExceptionCreated: CFunc<(JSEnv, JSValue_) -> Unit>`，实现内部：
  1. 调用 spike 锁定的仓颉 backtrace API（例 `Backtrace.current().getFramePCs()`）取当前帧的 PC 数组。
  2. 调用 `HybridStack.appendFrames(vmAddr, framesPtr, count)`。

- [ ] **Step 2：注册**

  在初始化点调用 cangjie_runtime 暴露的回调注册 API；`registerStackInfoCallbacks` 已经存在，沿用即可。

- [ ] **Step 3：单测**

  新增 `test/hybridstack/cj_exception_pc_push_test.cj`：抛出仓颉异常但**不**进入 ArkTS，验证 `HybridStack.snapshot(vmAddr).count > 0`。

- [ ] **Step 4：提交**

  ```powershell
  git add ohos/ark_interop/js_module.cj ohos/ark_interop/*.cj test/hybridstack/
  git commit -m "feat(hybridstack): hook CJ exception creation to push cangjie frames into PcVector"
  ```

### 路径 B — 降级（cangjie_runtime 暂无 hook）

- [ ] **Step 1**：在 `js_exception.cj toJSError` 入口处使用 spike 锁定的仓颉 backtrace API（例 `std.runtime.Backtrace.current()` 返回的 frame PC list）一次性合成 frames 数组；调用 `HybridStack.appendFrames(vmAddr, framesPtr, count)`；再走 Task 3 的 snapshot/restore 流程。

  > 表面上 `appendFrames` 调用发生在 wrapper 创建之前，所以 snapshot 会含仓颉帧，后续 restore 恢复后仃然保留。

- [ ] **Step 2**：注释中标注降级原因 + Task 0 spike notes 链接。
- [ ] **Step 3**：单测同路径 A Step 3。
- [ ] **Step 4**：提交，commit 信息 `feat(hybridstack): fallback CJ frame push at interop boundary using Backtrace.current()`。

---

## Task 5: 重构 `BusinessException` 的 `toString` / `getMixedStackTrace`

**Files:**
- Modify: `ohos/business_exception/business_exception.cj`
- Add: `test/hybridstack/business_exception_mixed_trace_test.cj`

- [ ] **Step 1：失败测试**

  构造三个场景：
  1. 跨语言场景：断言 `e.getMixedStackTrace()` 返回字符串含「==Cangjie==」、「==ArkTS==」（路径 P1），如果平台上 `napi_get_hybrid_stack_trace` 返回 Native 帧，并含「==Native==」。
  2. PcVector 空场景：表示仓颉未 push 帧，验证不抛异常、返回仅含仓颉本地缓存字符串。
  3. 调用 `getMixedStackTrace` 两次，验证第二次返回同一 String 实例（缓存生效）。

- [ ] **Step 2：实现**

  - `getMixedStackTrace()` 内：
    1. 若 `cachedHybridTrace` 已赋值 → 直接返回。
    2. 取本地仓颉 backtrace 缓存。
    3. 调用 `HybridStack.getTrace(env)`。
    4. 拼接并去重（仓颉部分若已在混合栈出现则只保留一份）。
    5. 缓存结果到 `cachedHybridTrace: ?String` 字段。
  - `toString()`：复用 `getMixedStackTrace()` 输出。

- [ ] **Step 3：测试通过**

- [ ] **Step 4：提交**

  ```powershell
  git add ohos/business_exception/business_exception.cj test/hybridstack/
  git commit -m "feat(hybridstack): unify BusinessException trace via HybridStack.getTrace and add per-instance cache"
  ```

---

## Task 5b: 跨路径符号化结果缓存（选项 / 对应需求「可优化空间」）

**Files:**
- Modify: `frameworks/native/hybrid_stack/hybrid_stack_bridge.cpp`、`hybrid_stack_bridge.h`

- [ ] **Step 1**：在 `CJ_HybridStack_GetTrace` 内部增加 `static thread_local std::unordered_map<uint64_t, std::string>` 缓存，以 `reinterpret_cast<uint64_t>(env)` 为 key。
- [ ] **Step 2**：新增 API `void CJ_HybridStack_InvalidateCache(napi_env env)`；snapshot/restore 调用后由互操作调用以使缓存失效。
- [ ] **Step 3**：在 `js_exception.cj` Task 3 修改处额外调用 `Invalidate`。
- [ ] **Step 4**：新增单测 `test/hybridstack/cache_test.cj` 验证同一 env 两次调用后返回一致、Invalidate 后变化。
- [ ] **Step 5**：提交 `perf(hybridstack): add thread_local cache for hybrid trace per env`。

---

## Task 6: 端到端验证（VerifyBuild + faultlog）

**Files:** 仅运行；产出验证报告 `doc/hybridstack_e2e_report.md`

- [ ] **Step 1：完整 cjpm 构建** — 走 `.agents/skills/cjpm-build/SKILL.md`。
- [ ] **Step 2：兼容 SDK 产物替换 + VerifyBuild** — 走 `.agents/skills/verifybuild-e2e-validation/SKILL.md`。
- [ ] **Step 3：确认 faultlog 调用链路已贯通**
  在 `D:\docker\code\ability_ability_runtime` 搜索 `napi_get_hybrid_stack_trace` / `GetHybridStackTraceForCrash`。确认 ability_runtime 在进程启动时已向 faultloggerd / dfx_dump_catcher 注册调用点；若**未**注册，需补充子任务 Task 6b（见下）。并在报告中记录调用路径代码位置。
- [ ] **Step 4：在设备上运行 VerifyBuild 应用，分别构造场景 A/B/C** —
  - A：仓颉抛未捕获异常 → 抓 faultlog 检查仓颉帧出现。
  - B：仓颉抛 → ArkTS catch → 调用 `e.getMixedStackTrace()` → 检查日志含三段。
  - C：纯 ArkTS 抛 → 抓 faultlog 检查无回归。
- [ ] **Step 5：编写 `doc/hybridstack_e2e_report.md`** — 列出每场景的关键日志片段、PASS/FAIL、复现命令、ability_runtime 代码参考位置。
- [ ] **Step 6：提交**

  ```powershell
  git add doc/hybridstack_e2e_report.md
  git commit -m "test(hybridstack): record end-to-end VerifyBuild + faultlog validation"
  ```

---

## Task 6b: （按需）补齐 ability_runtime 调用点

> 仅在 Task 6 Step 3 发现 ability_runtime 未调用 `napi_get_hybrid_stack_trace` 时启用。该任务涉及其它仓库。

- [ ] **Step 1**：定位 ability_runtime 现有 JS crash dump 调用点（参考：`services/appdfr/src/appfreeze_manager.cpp` AcquireStack 路径）。
- [ ] **Step 2**：提 PR 到 ability_runtime，在 dump 处理处调用 `napi_get_hybrid_stack_trace` 并拼接到 faultlog payload。
- [ ] **Step 3**：在本仓 `doc/hybridstack_e2e_report.md` 中记录上游 PR 链接与预计合入节点。

---

## Task 7: 文档收尾

- [ ] **Step 1**：根据实施结果回写 `doc/hybridstack_architecture_design.md` 中的「待定项」（opKind 数值、降级是否激活等）。
- [ ] **Step 2**：在 `README.md` 或 `README_zh.md` 索引部分添加跳转。
- [ ] **Step 3**：提交 `docs(hybridstack): finalize architecture doc with implementation outcomes`。

---

## 完成标准（Definition of Done）

1. 所有 Task 单测在 cjpm 与 GN 构建下均 PASS。
2. VerifyBuild E2E 三场景日志符合预期。
3. 所有提交均位于 `feat/hybridstack-redesign` 分支。
4. 文档（设计 + e2e 报告）齐备并相互交叉引用。
5. 无对 master 分支的直接修改。

## Self-Review 备忘

- 已覆盖需求文档全部 §（背景/目标/方案思路/周边配合/可优化空间→Task 5b）。
- 上游接口依赖已明确「Snapshot/Restore/Append」三件套，不再依赖伪造的 `opKind=BARRIER`。
- Task 2 代码中 `JSEnv` 处理使用 `unsafe { CPointer<Unit>(env) }`，与 `JSEnv = IntNative` 事实一致。
- Task 4 路径 B 明确使用 spike 锁定的 `Backtrace.current()` （不是占位词）。
- 类型一致：FFI / C++ / Cangjie 三侧函数名（`CJ_HybridStack_GetTrace`、`CJ_HybridStack_AppendFrames`、`CJ_HybridStack_SnapshotPcVector`、`CJ_HybridStack_RestorePcVector`）三处一致。
- Task 6b 提供上游 ability_runtime 补齐底牌。
