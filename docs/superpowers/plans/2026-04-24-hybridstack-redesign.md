# 混合栈支持仓颉 - 实施计划

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking. After each task, dispatch a review subagent before moving on.

**Goal:** 在 `feat/hybridstack-redesign` 分支上从零实现新方案，使 faultlog 与语言层均能稳定显示仓颉栈帧。

**Architecture:** 采用 **单接口直接写 PcVector 统一方案** — 复用 ets_runtime 的 `PcVector` 与 `DFXJSNApi::GetHybridStackTrace`；在 `toJSError` 中创建新 JSError（自动绑定当前 vm），通过 `CJ_HybridStack_UpdatePc` 将仓颉 PC 帧直接写入 PcVector（覆盖写，无需读快照），完全支持嵌套 JSRuntime 等多 VM 场景。上游仅新增 1 个 cjffi C API：`DFXJSNApi::UpdateHybridStackTracePc`。详见 [`doc/hybridstack_architecture_design.md`](../../../doc/hybridstack_architecture_design.md) 和 [`doc/multiruntime_jserror_analysis.md`](../../../doc/multiruntime_jserror_analysis.md)。

**Tech Stack:** Cangjie (`.cj`) + C++ (`frameworks/native`) + GN/cjpm 双构建 + cjffi (`napi_get_hybrid_stack_trace` + 新增 PC API).

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

  在 `D:\docker\code\cangjie_runtime` 搜索 `OnExceptionCreated|UncaughtExceptionInfo|ExceptionCreate|throw_hook|registerStackInfoCallbacks`。定位是否存在「异常**对象**构造时」的 hook（而非 throw 时）。

  Expected: 在 spike notes 中明确：
  - 主路径：构造期 hook 中预创建 JSError。
  - 若 hook 不存在：进入临时兜底（`toJSError` 兼容分支），并标注不满足最终目标。

- [ ] **Step 4：提交调研结果**

  ```powershell
  cd D:\docker\code\arkcompiler_cangjie_ark_interop
  git add doc/hybridstack_architecture_design.md doc/hybridstack_spike_notes.md
  git commit -m "docs(hybridstack): record upstream API spike and CJ exception hook decision"
  ```

---

## Task 1: 新增 C++ 桥接骨架 + cjffi 新 PC API 调用封装

> 本 Task **不修改** ets_runtime / arkui_napi。仅在本仓库内调用上游在 Task 0 spike 结果中锁定的路径：
> - 路径主选：假定上游已接受 `DFXJSNApi::UpdateHybridStackTracePc`。本 Task 只按该签名转调。
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

  // faultlog 路径：将仓颉 backtrace PC 帧直接写入当前 vm 的 PcVector。
  // frames: void* 指针数组（每元素为 PC 地址）；count: 数组长度。
  // 返回 0 = 成功；-1 = 参数非法；-2 = 上游接口不可用（weak 符号未链接）。
  int CJ_HybridStack_UpdatePc(napi_env env, void** frames, int count);

  #ifdef __cplusplus
  }
  #endif
  #endif // CJ_INTEROP_HYBRID_STACK_BRIDGE_H
  ```

- [ ] **Step 2：编写实现文件**

  ```cpp
  // frameworks/native/hybrid_stack/hybrid_stack_bridge.cpp
  #include "hybrid_stack_bridge.h"

  #include <cstring>
  #include <string>

  #include "native_engine/native_engine.h"
  #include "native_node_api.h"
  // 上游 ets_runtime dfx 头文件
  #include "ecmascript/napi/include/dfx_jsnapi.h"

  // weak 占位：若 ets_runtime 未提供该符号则链接时设为 nullptr
  namespace panda {
  class DFXJSNApi;
  }
  __attribute__((weak)) extern void DFX_UpdateHybridStackTracePc(
      const panda::EcmaVM*, void**, int);

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

  extern "C" int CJ_HybridStack_UpdatePc(napi_env env, void** frames, int count)
  {
      if (env == nullptr || frames == nullptr || count <= 0) { return -1; }
      if (DFX_UpdateHybridStackTracePc == nullptr) { return -2; }
      auto* engine = reinterpret_cast<NativeEngine*>(env);
      auto* vm = reinterpret_cast<panda::EcmaVM*>(engine->GetEcmaVm());
      DFX_UpdateHybridStackTracePc(vm, frames, count);
      return 0;
  }
  ```

  > **说明**：由于 `DFXJSNApi::UpdateHybridStackTracePc` 是静态成员函数，weak 符号需要封装为普通 C 函数。若上游 API 已落地，可改为直接包含头文件和调用。

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

## Task 3: 改造 `js_exception.cj`：`toJSError` 创建新 JSError 并立即用 cjPcSnapshot 恢复

**核心思路（二阶段恢复方案）：** `toJSError` 创建新 JSError（自动绑定当前 vm）后，**立即检测 `SharedException.cjPcSnapshot` 非空**，调用 `HybridStack.updatePc(env, cjPcSnapshot)` 将备份的仓颉 PC 帧恢复到新 JSError 的 PcVector 中，彻底解决覆盖问题。支持多 VM / 嵌套 JSRuntime，无构造期回调、无跨 VM 传递。

**Files:**
- Modify: `ohos/ark_interop/js_exception.cj`（重点为 `toJSError`；`SharedException` 增加 `cjPcSnapshot` 字段）
- Add unit test: `test/hybridstack/js_exception_pc_preservation_test.cj`

- [ ] **Step 1：先写失败测试**

  ```cangjie
  // test/hybridstack/js_exception_pc_preservation_test.cj
  // 场景：SharedException 已携带 cjPcSnapshot → toJSError → ArkTS 捕获
  // 过程：
  //   1. 构造一个 SharedException，手动设置非空 cjPcSnapshot
  //   2. 调用 toJSError(env)
  //   3. 断言总是调用了 createJSError（新建 JSError，非复用旧对象）
  //   4. 断言调用了 HybridStack.updatePc（PcVector 已被恢复）
  //   5. 断言 PcVector 帧数 == cjPcSnapshot.size()
  ```

- [ ] **Step 2：运行测试确认失败**

  Run：按 `.agents/skills/cjpm-build` 指定的 test 命令执行；Expected: FAIL。

- [ ] **Step 3：修改 `toJSError`；为 `SharedException` 增加 `cjPcSnapshot` 字段**

  主路径实现：
  - `SharedException` 类增加 `var cjPcSnapshot: ?Array<UIntNative> = None`。
  - `toJSError` 主路径：
    1. 调用 `createJSError(env, message, stack)` 创建新 JSError（绑定当前 vm）。
    2. 若 `cjPcSnapshot` 非 `None`，**立即调用 `HybridStack.updatePc(env, cjPcSnapshot)` 将备份的 PC 帧恢复到该新 JSError 的 PcVector**。
    3. 调用 `ARKTS_Throw(newJSError)`。
  - 无兼容兜底分支、无 VM 地址比较逻辑；代码路径单一。

- [ ] **Step 4：测试通过**

  Run 同 Step 2；Expected: PASS。

- [ ] **Step 5：提交**

  ```powershell
  git add ohos/ark_interop/js_exception.cj test/hybridstack/
  git commit -m "feat(hybridstack): toJSError creates new JSError and immediately restores CJ PC frames from cjPcSnapshot"
  ```

---

## Task 4: 初始化 `cjPcSnapshot`——在互操作回调中备份仓颉 PC

**核心思路（二阶段恢复方案）：** 在仓颉异常创建期回调 `onCJExceptionCreated` 中，使用公开 HiDebug API（`OH_HiDebug_CreateBacktraceObject` + `OH_HiDebug_BacktraceFromFp`）获取仓颉 PC 帧数组，**同时备份到 `SharedException.cjPcSnapshot`** 和写入 PcVector（供 faultlog）。该备份在后续 `toJSError` 中用于恢复。

**Files:**
- Modify: `ohos/ark_interop/js_module.cj`（新增或改造 `onCJExceptionCreated` 回调）
- Modify: `ohos/ark_interop/js_exception.cj`（`SharedException` 增加 `cjPcSnapshot` 字段）
- Add unit test: `test/hybridstack/cj_pc_snapshot_backup_test.cj`

- [ ] **Step 1：先写失败测试**

  ```cangjie
  // test/hybridstack/cj_pc_snapshot_backup_test.cj
  // 场景：仓颉异常触发 → 回调中备份 PC → cjPcSnapshot 已填充 && PcVector 已写
  // 过程：
  //   1. 在 onCJExceptionCreated 回调中执行
  //   2. 断言通过 HiDebug API 成功获取 PC 帧数组
  //   3. 断言 cjPcSnapshot 非空且长度 > 0
  //   4. 断言调用 UpdateHybridStackTracePc 将 PC 写入 PcVector（供 faultlog）
  //   5. 二者都已填充，ready for toJSError 阶段
  ```

- [ ] **Step 2：运行测试确认失败**

  Run：按 `.agents/skills/cjpm-build` 指定的 test 命令执行；Expected: FAIL。

- [ ] **Step 3：实现 `onCJExceptionCreated` 回调**

  在 `ohos/ark_interop/js_module.cj` 中新增或改造回调：
  1. 使用公开 HiDebug API 序列：
     ```
     OH_HiDebug_CreateBacktraceObject()
     → OH_HiDebug_BacktraceFromFp() 填充 backtrace 对象
     → 读取 backtrace 中的 PC 指针数组
     ```
  2. **备份该 PC 数组到异常对象的 `cjPcSnapshot`**。
  3. 调用 `HybridStack.updatePc(env, frames, count)` 将 PC 写入当前 vm 的 PcVector（供 faultlog 路径）。
  4. 若任何步骤失败（HiDebug API 不可用、PC 数组为空等），置 `cjPcSnapshot = None`；`toJSError` 中的逻辑已对此有处理。

- [ ] **Step 4：测试通过**

  Run 同 Step 2；Expected: PASS。

- [ ] **Step 5：提交**

  ```powershell
  git add ohos/ark_interop/js_module.cj ohos/ark_interop/js_exception.cj test/hybridstack/
  git commit -m "feat(hybridstack): backup CJ PC frames in onCJExceptionCreated callback and store in cjPcSnapshot"
  ```

---

## Task 5: 重构 `BusinessException` 的 `toString` / `getMixedStackTrace` — 语言层混合栈显示

**Files:**
- Modify: `ohos/business_exception/business_exception.cj`
- Add: `test/hybridstack/business_exception_mixed_trace_test.cj`

**场景矩阵（语言层 catch 打印）**：基于**首帧语言类型**，设计以下场景：

| 场景编号 | 首帧语言 | 异常调用链 | 测试内容 |
| ---- | ---- | ---- | ---- |
| **L1** | Native | Native → ArkTS → Cangjie (throw) → catch | ① 获取完整栈：Native + ArkTS + Cangjie ② `getMixedStackTrace()` 包含三段标记（==Native==、==ArkTS==、==Cangjie==）③ 缓存：第二次调用返回同一 String 实例 |
| **L2** | ArkTS | ArkTS → Cangjie (throw) → catch | ① 获取栈：ArkTS + Cangjie ② 无 Native 帧（调用链无Native） ③ 缓存生效 |
| **L3** | Cangjie | Cangjie (throw) → catch | ① 获取栈：仅 Cangjie 帧 ② `cjPcSnapshot` 备份被 `toJSError` 恢复 ③ 缓存生效 |
| **L4** | Cangjie | Cangjie (throw) + PcVector 无帧 | ① 异常发生但未通过回调获取 PC（如回调失败、HiDebug API 不可用）② `cjPcSnapshot` = None ③ `getMixedStackTrace()` 返回仅含仓颉本地缓存字符串（不崩溃）|
| **L5** | Multi-VM | 多个 vm 各抛异常 | ① 每个 vm 独立的 `cjPcSnapshot` 和 PcVector ② toJSError 恢复针对当前 vm ③ Worker 场景：各 worker 各自显示完整混合栈 |
| **L6** | Cangjie | 嵌套 JSRuntime：内层 vm → Cangjie throw | ① 内层 vm 的 PcVector 独立 ② toJSError 在内层 vm 恢复 ③ 外层 vm 不受影响 |

- [ ] **Step 1：设计失败测试**

  在 `test/hybridstack/business_exception_mixed_trace_test.cj` 中为场景 L1-L6 各编写一个失败用例：
  ```cangjie
  // test/hybridstack/business_exception_mixed_trace_test.cj
  // 场景 L1：三语言混合
  func test_mixed_trace_native_arkts_cangjie() {
      // 调用栈：C++ Native → ArkTS → Cangjie throw
      // 断言：e.getMixedStackTrace() 含 ==Native==、==ArkTS==、==Cangjie==
  }
  
  // 场景 L3：仅 Cangjie
  func test_mixed_trace_cangjie_only() {
      // 调用栈：Cangjie throw → catch
      // 断言：cjPcSnapshot 非空 && toJSError 恢复后 PcVector 包含 Cangjie 帧
  }
  
  // 场景 L4：PcVector 缺失
  func test_mixed_trace_no_pc_snapshot() {
      // 异常发生但回调未填充 cjPcSnapshot
      // 断言：getMixedStackTrace() 不抛异常、返回仅含本地缓存
  }
  
  // 场景 L5：多 VM
  func test_mixed_trace_multi_vm() {
      // 启动两个 worker，各自抛异常
      // 断言：每个 worker 各自的 getMixedStackTrace() 正确，无串联
  }
  
  // 场景 L6：嵌套 JSRuntime
  func test_mixed_trace_nested_jsruntime() {
      // 内层 vm 抛异常
      // 断言：内层 vm 的 PcVector 恢复，外层 vm 不受影响
  }
  ```

- [ ] **Step 2：运行测试确认失败**

  Run：`hb build napi -t 2>&1 | grep "business_exception_mixed_trace_test"`；Expected: 所有 6 个用例 FAIL。

- [ ] **Step 3：实现 `getMixedStackTrace()` 核心逻辑**

  - `SharedException` 类新增 `cachedHybridTrace: ?String = None`。
  - `getMixedStackTrace()` 主路径：
    1. 若 `cachedHybridTrace` 非 `None` → 直接返回（缓存命中）。
    2. 取本地仓颉 backtrace 字符串（已在异常构造期收集）。
    3. 调用 `HybridStack.getTrace(env)` 获取 PcVector 符号化结果（含 Native + ArkTS + Cangjie 帧）。
    4. 拼接两部分；若重复则仅保留一份。
    5. 赋值 `cachedHybridTrace = result`，返回。
  - 处理边界情况：
    - `HybridStack.getTrace()` 返回空 → 使用本地缓存。
    - `cjPcSnapshot = None` → 仅返回本地缓存。
  - `toString()` 复用 `getMixedStackTrace()` 结果（可选添加前缀如「Exception: ...」）。

- [ ] **Step 4：测试通过**

  Run 同 Step 2；Expected: 所有 6 个用例 PASS。

- [ ] **Step 5：提交**

  ```powershell
  git add ohos/business_exception/business_exception.cj test/hybridstack/business_exception_mixed_trace_test.cj
  git commit -m "feat(hybridstack): implement getMixedStackTrace with L1-L6 multi-VM and nested JSRuntime support"
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

## Task 6: 端到端验证（语言层 + faultlog 层）

**Files:** 
- Add: `test/hybridstack/e2e_scenario_faultlog_test.cj`（faultlog 层测试场景 F1-F6）
- Add: `doc/hybridstack_e2e_report.md`（验证报告）

**场景矩阵（faultlog 层 crash 时自动捕获）**：基于**首帧语言类型**，设计以下场景：

| 场景编号 | 首帧语言 | 异常调用链 | faultlog 验证内容 |
| ---- | ---- | ---- | ---- |
| **F1** | Native | Native → ArkTS → Cangjie (throw) → **未catch（崩溃）** | ① DFXJSNApi::GetHybridStackTrace 读取 PcVector ② faultlog 输出完整混合栈（Native + ArkTS + Cangjie） ③ 无回退降级（PC Array 已在回调中写入） |
| **F2** | ArkTS | ArkTS → Cangjie (throw) → **未catch（崩溃）** | ① faultlog 输出 ArkTS + Cangjie 帧 ② 无 Native 帧 |
| **F3** | Cangjie | Cangjie (throw) → **未catch（崩溃）** | ① faultlog 输出 Cangjie 帧 ② PC Array 由 `onCJExceptionCreated` 回调写入 |
| **F4** | Cangjie | 异常发生但回调失败（HiDebug API 不可用、PC 获取失败） → **未catch（崩溃）** | ① faultlog 输出现有帧（仅 ArkTS，无 Cangjie） ② 无崩溃（降级处理）|
| **F5** | Multi-VM | 多个 worker，各抛异常 → **各自未catch（各自崩溃）** | ① 每个 worker 进程各自的 faultlog 包含其对应语言层的完整栈 ② 无跨 worker 污染 |
| **F6** | Cangjie | 嵌套 JSRuntime：内层 vm → Cangjie throw → **内层未catch（崩溃）** | ① 内层 vm 的 faultlog 包含完整混合栈 ② 外层 vm 不受影响，继续运行 |

- [ ] **Step 1：设计 faultlog 层测试**

  在 `test/hybridstack/e2e_scenario_faultlog_test.cj` 中为场景 F1-F6 各编写场景启动代码（包括故意崩溃的 hook）：
  ```cangjie
  // test/hybridstack/e2e_scenario_faultlog_test.cj
  
  // 场景 F1：三语言混合 + 崩溃
  func setup_scenario_f1_native_arkts_cangjie_crash() {
      // 调用链：C++ Native → ArkTS → Cangjie throw（不 catch）
      // 期望：faultlog 后处理程序 (dfx_dump_catcher 或 faultloggerd) 调用
      // DFXJSNApi::GetHybridStackTrace，读 PcVector 并输出完整栈
  }
  
  // 场景 F3：仅 Cangjie 崩溃
  func setup_scenario_f3_cangjie_only_crash() {
      // 调用链：Cangjie throw（不 catch）
      // 回调 onCJExceptionCreated 中已备份 PC 到 cjPcSnapshot & 写 PcVector
      // 期望：faultlog 包含 Cangjie 帧
  }
  
  // 场景 F5：多 worker 崩溃
  func setup_scenario_f5_multi_worker_crash() {
      // 启动 Worker 1 & Worker 2，各自抛异常不 catch
      // 期望：两个 worker 各自生成独立 faultlog，互不影响
  }
  
  // 场景 F6：嵌套 JSRuntime 崩溃
  func setup_scenario_f6_nested_jsruntime_crash() {
      // 启动嵌套 JSRuntime，内层 vm 抛异常不 catch
      // 期望：内层崩溃，外层继续，各自 faultlog 独立
  }
  ```

- [ ] **Step 2：梳理 faultlog 调用链路**

  在 `D:\docker\code\ability_ability_runtime` 搜索并记录：
  - `napi_get_hybrid_stack_trace` 调用点（在哪个模块、哪个文件）
  - DFXJSNApi::GetHybridStackTrace 被哪个系统服务调用（如 dfx_dump_catcher、faultloggerd）
  - 调用时的上下文（是否已知当前 vm 地址、如何获取）
  
  产出：在 `doc/hybridstack_e2e_report.md` 中记录调用链路关键代码位置。

- [ ] **Step 3：在 ability_runtime 中注册/启用 faultlog 回调**

  若 Step 2 发现 `napi_get_hybrid_stack_trace` 尚未被 faultlog 系统调用，需要补充**子任务 Task 6b**（见下）以完成注册。若已注册，跳过此步。

- [ ] **Step 4：完整 cjpm 构建**

  运行 `.agents/skills/cjpm-build/SKILL.md` 中的构建命令链路，验证所有目标编译成功（包括 `test/hybridstack/e2e_scenario_faultlog_test.cj`）。

- [ ] **Step 5：兼容 SDK 产物替换 + VerifyBuild 打包**

  运行 `.agents/skills/verifybuild-e2e-validation/SKILL.md` 中的完整流程：
  1. 编译互操作库产物。
  2. 替换兼容 SDK 中的产物。
  3. VerifyBuild hvigor 打包应用。
  4. 使用 `collectSDKLibs=true` 验证产物可用。

- [ ] **Step 6：在设备上执行场景 F1-F6 并采集 faultlog**

  对每个场景执行以下步骤（可编写 shell/Python 脚本自动化）：
  1. 启动应用/worker，触发异常不 catch。
  2. 应用崩溃，系统自动生成 faultlog。
  3. 从设备上拉取 faultlog 日志（位置如 `/data/log/faultlog` 或 `adb logcat` 输出）。
  4. 检查日志是否包含对应场景的完整混合栈符号（包括函数名、文件名、行号）。
  5. 对比三语言帧数是否正确（无丢失、无重复）。
  
  记录每个场景的 PASS/FAIL 结果及关键日志片段。

- [ ] **Step 7：生成 E2E 验证报告**

  在 `doc/hybridstack_e2e_report.md` 中记录：
  ```markdown
  # 混合栈 E2E 验证报告
  
  ## 环境
  - 编译时间、设备型号、系统版本、ability_runtime 版本
  
  ## 场景验证结果
  
  ### 语言层 (Task 5)
  | 场景 | 状态 | 关键验证点 | 日志片段 |
  | ---- | ---- | ---- | ---- |
  | L1 | PASS | 三语言混合、缓存生效 | [日志输出] |
  | L5 | PASS | 多 VM 隔离 | [日志输出] |
  | ... | ... | ... | ... |
  
  ### faultlog 层 (Task 6)
  | 场景 | 状态 | 关键验证点 | faultlog 片段 |
  | ---- | ---- | ---- | ---- |
  | F1 | PASS | Native+ArkTS+Cangjie 完整栈 | [faultlog] |
  | F5 | PASS | Worker 隔离 | [faultlog] |
  | ... | ... | ... | ... |
  
  ## ability_runtime faultlog 调用链路
  - 文件：`services/abilitymgr/src/fault_handler.cpp` (示例)
  - 调用点：Line XXX，调用 `DFXJSNApi::GetHybridStackTrace(vm, ...)`
  
  ## 已知限制 & 后续优化
  - ...
  ```

- [ ] **Step 8：提交**

  ```powershell
  git add test/hybridstack/e2e_scenario_faultlog_test.cj doc/hybridstack_e2e_report.md
  git commit -m "test(hybridstack): add E2E faultlog scenarios F1-F6 with multi-VM and nested JSRuntime coverage"
  ```

---

## Task 6b: 若需要 — ability_runtime faultlog 系统集成（可选子任务）

若 Task 6 Step 3 发现 `napi_get_hybrid_stack_trace` 尚未被 ability_runtime 的 faultlog 系统调用，需要补充以下步骤（此任务仅在 Task 6 Step 2 发现缺失时执行）：

**Files:**
- Modify: `services/abilitymgr/src/fault_handler.cpp` 或类似 faultlog 调用点
- Modify: `BUILD.gn` 依赖项

- [ ] **研究现有 faultlog 调用点** — 定位 ability_runtime 中何处调用 DFXJSNApi / dfx 相关接口。
- [ ] **增加 `napi_get_hybrid_stack_trace` 调用** — 在获取 ArkTS 栈后，额外调用该接口以获取混合栈。
- [ ] **参数传递** — 确保 current vm 地址被正确传递到 dfx 系统。
- [ ] **测试** — 验证 faultlog 输出混合栈无崩溃。
- [ ] **提交** — 同步提交到 ability_runtime 仓库（超出本计划范围，由下游跟进）。
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
- Task 3/4 已对齐原始思路：`toJSError` 主路径不再 `createJSError`，由仓颉异常构造回调预创建并复用 JSError。
- 类型一致：FFI / C++ / Cangjie 三侧函数名（`CJ_HybridStack_GetTrace`、`CJ_HybridStack_AppendFrames`、`CJ_HybridStack_SnapshotPcVector`、`CJ_HybridStack_RestorePcVector`）三处一致。
- Task 6b 提供上游 ability_runtime 补齐底牌。
