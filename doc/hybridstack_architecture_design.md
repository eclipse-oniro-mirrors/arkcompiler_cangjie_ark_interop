# 混合栈支持仓颉 - 架构设计

> 配套需求文档：[hybridstack_support_cangjie_design.md](./hybridstack_support_cangjie_design.md)
> 适用分支：`feat/hybridstack-redesign`
> 状态：草案 v1（Draft）

## 1. 设计目标对齐

| 优先级 | 目标 | 验证场景 |
| ------ | ---- | -------- |
| P0 (主要) | faultlog 中能稳定显示仓颉栈帧，无论异常源自仓颉侧抛出还是 ArkTS 侧抛出 | 信号触发 crash → faultloggerd 解析出仓颉帧 |
| P1 (次要) | 语言层 `Exception.toString()` 与 `getMixedStackTrace()` 至少呈现「仓颉 + ArkTS」混合栈 | 应用 `try/catch` 后打印异常 |
| P2 (可选) | 语言层混合栈进一步包含 Native (C/C++) 帧 | 同上 |

## 2. 关键约束与重要事实校正

1. **PC Array 单例语义**：`EcmaVM` 上仅保留最近一次 ArkTS Error 创建时刻的 PC 向量，后续任何 Error 创建都会覆盖（参见 `ets_runtime/ecmascript/napi/dfx_jsnapi.cpp:1234` 的 `GetHybridStackTrace`）。
2. **互操作侧当前实现问题**：`ohos/business_exception/business_exception.cj` 与 `ohos/ark_interop/js_exception.cj` 现状是在 `toJSError()` 边界构造新的 ArkTS Error，覆盖 PC Array，是当前 faultlog 丢失仓颉帧的根因。本方案采用 **PC 指针更新 API** 方案：在 `toJSError` 中创建新 JSError（自动绑定当前 vm），通过 `DFXJSNApi::UpdateHybridStackTracePc(vm, frames, count)` 将仓颉 PC 帧直接写入 PcVector（无需先读快照）。该方案支持所有 vm 配置场景（单 VM、多 VM、嵌套 JSRuntime 等），避免跨 VM JSError 转移的绑定问题。详见 [multiruntime_jserror_analysis.md](./multiruntime_jserror_analysis.md)。
3. **不引入仓颉自己抓取 C 栈的能力**：Native 栈仅依赖 ets_runtime / faultloggerd 已有的 `GetHybridStackTrace` 解析能力。
4. **二进制兼容性**：`BusinessException` 类公开 API（`getCrossMessage` / `getMixedStackTrace` / 错误码 34300001-34300008）必须保持兼容。
5. **PC Array 与跨 VM 问题**：`ARKTS_UpdateStackInfo(opKind)` 仅切换 fiber 栈上下文，不能写 PcVector。JSError 在创建时自动绑定到特定 EcmaVM 实例。若使用预创建方案（vm_A 中创建 JSError），当该 JSError 被 throw 到另一个 vm_B（例如嵌套 JSRuntime）时，会产生 vm address mismatch，导致符号化失败或新 Error 创建覆盖 PcVector。本方案改为：**统一采用单接口直接写入** — 每次 `toJSError` 创建新 JSError（自动绑定当前 vm），再通过 `DFXJSNApi::UpdateHybridStackTracePc(vm, frames, count)` 将仓颉 PC 帧直接写入该 vm 的 PcVector。上游仅需新增 1 个接口见 §4.2.4，无需读快照、无需恢复，亦无需新增上游 opKind。
6. **JSEnv 类型与 HiDebug API**：
   - `JSEnv = IntNative`（参见 `ohos/ark_interop/jscontext.cj`），是裸指针值，不是带方法的类。FFI 调用时直接当作 `CPointer<Unit>` 使用。
   - **Cangjie 异常创建期回调**中，使用公开的 HiDebug 栈回溯 API：
     - `OH_HiDebug_CreateBacktraceObject` / `OH_HiDebug_DestroyBacktraceObject`：创建/销毁回溯对象
     - `OH_HiDebug_BacktraceFromFp`：从帧指针获取 PC 帧数组
     - 获取到 PC 帧后调用互操作的 `CJ_HybridStack_UpdatePc(env, frames, count)` 写入当前 vm 的 PcVector
   - **语言层 toString/getMixedStackTrace**中，使用公开的 `OH_HiDebug_SymbolicAddress` 进行符号解析（将 PC 转换为符号信息）。

## 3. 总体架构

### 3.1 周边组件依赖

```mermaid
flowchart LR
    subgraph App[应用进程]
        direction TB
        CJApp["仓颉用户代码"]
        ETSApp["ArkTS 用户代码"]
    end

    subgraph CJRT[cangjie_runtime]
        CJExc["仓颉异常对象创建点"]
        CJUnc["仓颉未捕获异常 dispatcher"]
    end

    subgraph Interop[arkcompiler_cangjie_ark_interop（本仓库）]
        direction TB
        IFCallbacks["CJModuleCallbacks /<br/>CJUncaughtExceptionInfo"]
        BizExc["BusinessException<br/>(business_exception.cj)"]
        JsExc["js_exception.cj<br/>toJSError / pendingJSError"]
        HybridApi["HybridStack 客户端封装<br/>(新增: hybrid_stack.cj + .cpp)"]
    end

    subgraph Napi[arkui_napi]
        CJFFI[\"hybrid_stack_bridge.h<br/>CJ_HybridStack_UpdatePc<br/>(→ DFXJSNApi::UpdateHybridStackTracePc)\"]
        NapiHS["napi_get_hybrid_stack_trace<br/>(native_node_api.h:174)"]
        ArkEng["ArkNativeEngine<br/>GetHybridStackTraceForCrash"]
    end

    subgraph EtsRT[arkcompiler_ets_runtime]
        VM["EcmaVM<br/>PcVector / pendingException"]
        Dfx["DFXJSNApi::GetHybridStackTrace"]
        Sym["ecmascript::SymbolicAddress"]
    end

    subgraph Ability[ability_ability_runtime]
        AnrL["application_anr_listener"]
        Freeze["appfreeze_manager"]
        AppMgr["AppMgrClient::NotifyAppFaultBySA"]
    end

    subgraph FaultL[faultloggerd / hilog]
        FltClient["faultloggerd_client"]
        DumpCatcher["dfx_dump_catcher"]
        SigHandler["DfxSignalHandler<br/>(libdfx_signalhandler)"]
    end

    subgraph HiLog[hilog / hisysevent]
        HiLogD["hilogd"]
    end

    CJApp -->|throw| CJExc
    ETSApp -->|throw / 调用 CJ| JsExc

    CJExc -->|跨边界| IFCallbacks
    JsExc -->|① 创建新 JSError ② 写仓颉 PC 帧| CJFFI
    CJFFI -->|UpdateHybridStackTracePc| VM

    JsExc -->|throw JSError| ETSApp

    BizExc -->|toString / getMixedStackTrace| HybridApi
    HybridApi -->|FFI: napi_get_hybrid_stack_trace| NapiHS
    NapiHS --> ArkEng --> Dfx --> Sym --> VM

    CJUnc -->|registerCJUncaughtExceptionHandler| IFCallbacks

    Ability -->|信号 / ANR| Freeze
    Freeze --> AppMgr --> FltClient
    SigHandler -->|crash 信号| DumpCatcher
    DumpCatcher -->|调用 napi 获取混合栈| ArkEng
    FltClient -->|dump 时调用| Dfx
    Dfx -->|读取 PcVector| VM
    Dfx -->|符号化| Sym
    BizExc -->|错误事件| HiLogD

    classDef new fill:#fff5cc,stroke:#d4a017,stroke-width:2px;
    class HybridApi,IFCallbacks new
```

> 图例：黄色节点为本设计在 `cangjie_ark_interop` 内**新增或重构**的组件；其余为已有外部依赖。

### 3.2 控制流时序

#### 场景 A：仓颉抛出未捕获异常 → faultlog

```mermaid
sequenceDiagram
    autonumber
    participant U as 仓颉用户代码
    participant CR as cangjie_runtime
    participant IF as Interop CJModuleCallbacks
    participant CFFI as CJ_HybridStack_UpdatePc (新增)
    participant VM as EcmaVM (PcVector)
    participant SH as DfxSignalHandler (libdfx_signalhandler)
    participant DC as dfx_dump_catcher
    participant AE as ArkNativeEngine::GetHybridStackTraceForCrash
    participant DFX as DFXJSNApi::GetHybridStackTrace

    U->>CR: throw e
    CR->>IF: onCJExceptionCreated(e) (互操作回调)
    Note over IF: 使用 HiDebug 公开 API 获取 PC 帧：<br/>OH_HiDebug_CreateBacktraceObject→OH_HiDebug_BacktraceFromFp
    IF->>CFFI: CJ_HybridStack_UpdatePc(env, frames[], n)
    CFFI->>VM: 将仓颉 PC 帧直接写入 PcVector
    Note over CR: 仓颉栈逐层 unwind，<br/>未捕获 → 默认 dispatcher
    CR->>SH: abort / SIGSEGV
    SH->>DC: 信号 → dump 流程
    DC->>AE: 调用 napi_get_hybrid_stack_trace<br/>（ability_runtime 在 AppMgrService 启动时注册的 callback）
    AE->>DFX: DFXJSNApi::GetHybridStackTrace(vm, str)
    DFX->>VM: 读 PcVector + SymbolicAddress
    DFX-->>DC: 返回 ArkTS+Native+Cangjie 混合栈字符串
    DC-->>U: faultlog 写盘
```

#### 场景 B：仓颉抛出异常被 ArkTS 捕获并打印

```mermaid
sequenceDiagram
    autonumber
    participant U as 仓颉用户代码
    participant CR as cangjie_runtime
    participant JS as js_exception.cj toJSError
    participant BIZ as BusinessException
    participant CFFI as CJ_HybridStack_UpdatePc (新增)
    participant VM as EcmaVM
    participant ETS as ArkTS catch
    participant HS as HybridStack 客户端
    participant NAPI as napi_get_hybrid_stack_trace

    U->>CR: throw e
    Note over CR: 异常构造期：调用互操作回调获取 PC & 写 PcVector
    CR->>IF: onCJExceptionCreated(e)
    IF->>CFFI: HiDebug_GetFrames() → CJ_HybridStack_UpdatePc()
    CFFI->>VM: 写 PcVector
    Note over CR: 同时存储 PC 快照到 cjPcSnapshot
    CR->>JS: 跨边界 toJSError(e)
    JS->>JS: createJSError（新 JSError，自动绑定当前 vm）
    Note over JS: PC 已在回调中写入 PcVector，<br/>toJSError 无需再调用 UpdatePc
    JS->>ETS: ARKTS_Throw(newJSError)
    ETS->>BIZ: e.toString() / e.getMixedStackTrace()
    BIZ->>HS: getMixedStackTrace()
    HS->>HS: 使用公开 HiDebug_SymbolicAddress API<br/>对 PC 帧进行符号解析
    HS-->>BIZ: 完整的 ArkTS+Native+Cangjie 字符串
    BIZ-->>ETS: 返回给应用
```

#### 场景 C：ArkTS 抛出异常（无仓颉参与）

不变更现有路径：ArkTS 自身的 `JSError` 创建已经写入 PcVector，faultlog 直接由 ets_runtime 输出，互操作侧零参与。

## 4. 模块设计

### 4.1 仓库内目录规划

```
arkcompiler_cangjie_ark_interop/
├── doc/
│   ├── hybridstack_support_cangjie_design.md    # 需求文档（已存在）
│   └── hybridstack_architecture_design.md       # 本文件
├── ohos/
│   ├── ark_interop/
│   │   ├── js_exception.cj            # 重构：toJSError 不再 createJSError（主路径）
│   │   └── js_module.cj               # 重构：注册“异常构造期回调”
│   ├── business_exception/
│   │   └── business_exception.cj      # 重构：toString/getMixedStackTrace 调用 HybridStack
│   └── hybrid_stack/                  # 新增子模块
│       ├── hybrid_stack.cj            # 仓颉侧 API 封装
│       └── hybrid_stack_ffi.cj        # @C foreign 声明
├── frameworks/native/hybrid_stack/    # 新增 C++ 桥接
│   ├── hybrid_stack_bridge.cpp
│   ├── hybrid_stack_bridge.h
│   └── BUILD.gn
├── interfaces/inner_api/hybrid_stack/ # 对外暴露给 ability_runtime（可选）
│   └── hybrid_stack_inner.h
└── test/
    └── hybridstack/                   # 单测 + 端到端验证脚本
```

### 4.2 关键接口

#### 4.2.1 C 桥接（新增 `frameworks/native/hybrid_stack/hybrid_stack_bridge.h`）

```cpp
// 被仓颉侧通过 @C foreign 调用，获取混合栈信息（语言层路径）
extern "C" int CJ_HybridStack_GetTrace(napi_env env,
                                       char* buf,
                                       size_t bufLen,
                                       size_t* outLen);

// faultlog 路径：将仓颉 backtrace PC 帧直接写入当前 vm 的 PcVector。
// frames: void* 指针数组（每个元素为 PC 地址）；count: 数组长度。
// 返回 0 = 成功；-1 = 参数非法；-2 = 上游接口不可用。
extern "C" int CJ_HybridStack_UpdatePc(napi_env env,
                                       void** frames,
                                       int count);
```

实现内部转调：
- `CJ_HybridStack_GetTrace` → `napi_get_hybrid_stack_trace`（语言层获取混合栈）
- `CJ_HybridStack_UpdatePc` → `DFXJSNApi::UpdateHybridStackTracePc(vm, frames, count)`（写 PcVector）

#### 4.2.2 仓颉侧 API（新增 `ohos/hybrid_stack/hybrid_stack.cj`）

```cangjie
public class HybridStack {
    // 获取混合栈信息（语言层 toString/getMixedStackTrace 调用）
    public static func getTrace(env: JSEnv): String { ... }
}
```

#### 4.2.3 重构点

| 文件 | 现状 | 改动（单接口统一方案） |
| ---- | ---- | ---- |
| `ohos/ark_interop/js_module.cj` 互操作回调 | 不存在或未实现 | **新增**: 在 `onCJExceptionCreated` 回调中：① 使用 HiDebug 公开 API (`OH_HiDebug_CreateBacktraceObject` + `OH_HiDebug_BacktraceFromFp`) 获取 PC 帧数组 ② 调用 `CJ_HybridStack_UpdatePc(env, frames, count)` 直接写入当前 vm 的 PcVector ③ 同时存储 PC 帧到 `SharedException.cjPcSnapshot`。支持所有 vm 配置，无存在跨 vm 绑定问题。 |
| `ohos/ark_interop/js_exception.cj:145-165 toJSError` | 每次跨边界都创建 ArkTS Error，覆盖 PcVector | **不假起加**: toJSError 创建新 JSError（自动绑定当前 vm）并 throw。PC 已在回调中写入，无需调用 UpdatePc。 |
| `ohos/business_exception/business_exception.cj:152-178 getMixedStackTrace` | 自行拼接仓颉 + ArkTS 字符串 | **重构**: 使用公开的 `OH_HiDebug_SymbolicAddress` API 进行符号解析 PC 帧，输出 ArkTS+Native+Cangjie 完整混合栈。 |
| `ohos/ark_interop/js_exception.cj` 缓存机制 | 无 | 新增字段：`SharedException.cjPcSnapshot: ?Array<UIntNative>` 存储仓颉帧 PC 快照，在回调中填充。`toJSError` 中仅读取（不追例使用）。 |

#### 4.2.4 PC 指针更新接口与 HiDebug API 调用（上游新增 1 个 API）

本设计采用 **"Cangjie 回调中获取 PC + 互操作写入 PcVector"** 的策略，完全利用公开的 HiDebug API。

**上游新增接口**：

```c
// 将 Cangjie backtrace 的 PC 帧直接写入指定 vm 的 PcVector
// 参数：vm 实例指针，data 为 PC 指针数组，size 为数组大小
void DFXJSNApi::UpdateHybridStackTracePc(const EcmaVM *vm, void** data, int size);
```

**调用时机与流程**：

1. **Cangjie 异常创建期（运行时回调 `onCJExceptionCreated` 中）**：
   - 使用公开 HiDebug API：`OH_HiDebug_CreateBacktraceObject()` → `OH_HiDebug_BacktraceFromFp()` 获取 PC 帧
   - 调用互操作的 `CJ_HybridStack_UpdatePc(env, frames, count)` → `DFXJSNApi::UpdateHybridStackTracePc()` 写入
   - 同时存储 PC 快照到 `SharedException.cjPcSnapshot` 作为备用

2. **语言层 `toString()/getMixedStackTrace()` 中**：
   - 不再依赖内部 `DFXJSNApi::GetHybridStackTrace`，而是使用公开的 `OH_HiDebug_SymbolicAddress()` 进行符号解析
   - 将 PC 帧转换为带符号名的字符串输出

3. **Faultlog 路径（自动）**：
   - DFXJSNApi::GetHybridStackTrace 直接读取已更新的 PcVector（无需额外干预）

**使用模式**：

| 场景 | 处理 |
| ---- | ---- |
| 未捕获异常 faultlog（场景 A） | ① Cangjie 回调中用 HiDebug 获取 PC ② 调用 UpdateHybridStackTracePc 写 PcVector ③ 信号触发 crash ④ DFXJSNApi::GetHybridStackTrace 读已更新的 PcVector → faultlog 输出完整混合栈 |
| 跨边界 toJSError（场景 B） | ① Cangjie 回调已写入 PcVector + 存 cjPcSnapshot ② toJSError 创建新 JSError ③ throw ④ getMixedStackTrace 用公开 HiDebug API 符号解析 → 输出完整栈 |
| 多 worker 场景 | 每个 worker 独立 vm，回调各自 UpdatePc 自己的 vm，无跨 vm 冲突 |

> **优势**：
> - ✓ 完全避免 JSError vm address 绑定问题（每个 vm 独立处理）
> - ✓ 统一代码路径，无复杂的检测与降级逻辑
> - ✓ **上游仅需 1 个接口**（vs 旧方案的 3 个），协作成本极低
> - ✓ **客户端 PC 获取和符号解析都用公开 HiDebug API**，无依赖私有实现
> - ✓ 支持所有 vm 配置（单 VM、多 VM、嵌套 JSRuntime）

> **上游依赖**：ets_runtime 仅需提供 `DFXJSNApi::UpdateHybridStackTracePc`。若无法接受，回退至仅语言层（P1/P2），faultlog 能力不完整。

## 5. 性能与可优化空间

| 项 | 描述 | 状态 |
| -- | ---- | ---- |
| **符号化结果缓存** | 语言层 `getMixedStackTrace` 解析后缓存到 `BusinessException` 实例字段 `cachedHybridTrace: ?String`；faultlog 路径获取同一 vmAddr 的结果时，在 C++ 桥接层额外增一层 `static thread_local std::unordered_map<uint64_t, std::string>` 缓存，赋值于 `napi_get_hybrid_stack_trace` 之后。Plan **Task 5b** 为实现优化。 | v1 提供实例字段，thread_local 缓存作为选项任务 |
| **PcVector 写入成本** | 仅在 wrapper 创建场景调用，O(n) n=PcVector size，估计 < 1KB | 启用 |
| **跨语言 FFI 调用** | `CJ_HybridStack_GetTrace` 仅在异常路径触发，频次低 | 启用 |

## 6. 兼容性 / 风险与 PC API 方案的安全性

1. **PcVector 写接口的上游依赖**：`DFXJSNApi::UpdateHybridStackTracePc` 必须落地到 ets_runtime。Plan Task 1 spike 决定上游接受度；若拒绝，启用语言层降级（P1/P2），faultlog 能力不完整。**相比旧方案的 3 个接口，上游上沉本更低。**

2. **多 VM 安全性（PC API 方案的优势）**：
   - 每个 `toJSError` 调用时都创建**新的** JSError，该 JSError 自动绑定到当前执行的 vm。
   - 恢复 PcVector 操作只作用于当前 vm，不涉及跨 vm 对象转移。
   - 完全避免「预创建方案」中的 vm address mismatch 问题（参见 [multiruntime_jserror_analysis.md](./multiruntime_jserror_analysis.md)）。
   - 支持嵌套 JSRuntime、worker 隔离等所有场景。

3. **缓存机制（Cangjie PC 快照存储）**：
   - 在 `SharedException` 中新增 `cjPcSnapshot: ?Array<UIntNative>` 字段，在仓颉异常对象创建时自动填充（读取 backtrace）。
   - `toJSError` 读取该字段传入 `CJ_HybridStack_UpdatePc`；若缺失则 PcVector 保持初始值（ArkTS-only）。
   - 无需预创建 JSError，无需 vm 地址匹配检查。

4. **多 worker 线程安全**：
   - 每个 worker 独立的 EcmaVM + PcVector；`ALL_RUNTIMES_` map（`jscontext.cj`）按 `vmAddr` 索引，访问点已在仓颉侧 `synchronized`。
   - `CJ_HybridStack_UpdatePc` 调用前需锁住对应 `JSContext`；C++ 侧实现通过 `napi_env` 自动定位正确 vm。

5. **异常对象字段扩展**：
   - 新增 `SharedException.cjPcSnapshot: ?Array<UIntNative>` 存储仓颉帧 PC 快照。
   - 新增 `SharedException.fromInteropBoundary: Bool` 标记是否为互操作内部生成的 wrapper（可选，用于加强类型安全）。

6. **API Level**：新增仓颉 API 需打 `@APILevel` 装饰器（参考 `ohos/labels/api_level.cj`）。

## 7. 端到端验证策略

| 验证 | 方式 | 工具 |
| ---- | ---- | ---- |
| 单元 | `test/hybridstack/` 下 `cjpm test` | `.agents/skills/cjpm-build` |
| 集成构建 | 替换兼容 SDK 产物后 hvigor 打包 VerifyBuild | `.agents/skills/verifybuild-e2e-validation` |
| Faultlog 现场 | 设备 hilog + faultlog 抓取，确认仓颉 PC 出现在 `=====Hybrid Stack=====` 段 | 手工 |
| 语言层 | `try{ ... } catch(e){ console.error(e.toString()) }` 输出包含三段：CJ frames / ArkTS frames / Native frames | 手工 + 单测 |

## 8. 与历史方案的差异

| 维度 | 旧 stitching 方案（`feat/mixed-exception-stack-stitching`） | 本设计（PC API 方案） |
| ---- | --------------------------------------------------------- | ------ |
| Faultlog 仓颉栈来源 | 互操作侧自行 stitch 字符串注入 faultlog | 复用 ets_runtime PcVector + DFXJSNApi 已有路径，通过恢复 PC 避免覆盖 |
| ArkTS Wrapper 与 PC 覆盖 | 未处理，依赖 stitching 弥补 | 在 `toJSError` 中创建新 JSError（自动绑定当前 vm），再恢复 Cangjie PC 到 PcVector；支持嵌套 JSRuntime |
| 语言层混合栈 | 字符串拼接 | 调用 `napi_get_hybrid_stack_trace` 统一来源 |
| 多 VM 支持 | 无考虑 | ✓ 完全支持（PC API 方案的核心优势） |
| 对仓颉运行时依赖 | 强（自带 HiDebug backtrace 抓取） | 弱（仅需异常对象记录本地 backtrace，无需回调） |
| 上游协作面 | 仓颉运行时 + interop | ets_runtime (`DFXJSNApi` **+1 API**）+ interop |

## 9. 后续工作

1. 与 ets_runtime owner 对齐 `DFXJSNApi::UpdateHybridStackTracePc` 接口（**仅 1 个**）。
2. 实施 plan：[`docs/superpowers/plans/2026-04-24-hybridstack-redesign.md`](../docs/superpowers/plans/2026-04-24-hybridstack-redesign.md)
