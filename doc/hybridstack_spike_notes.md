# 混合栈支持仓颉 - Task 0 Spike Notes

> 日期：2026-04-24
> 关联：[hybridstack_architecture_design.md](./hybridstack_architecture_design.md) §4.2.4 / §6
> 关联：[实施计划 Task 0](../docs/superpowers/plans/2026-04-24-hybridstack-redesign.md)

## A. `ARKTS_UpdateStackInfo` 现行语义（确认）

| 项 | 结论 | 引用 |
| -- | ---- | ---- |
| 声明 | `void ARKTS_UpdateStackInfo(unsigned long long vmAddress, void *subStackInfo, unsigned int opKind);` | `arkui_napi/interfaces/inner_api/cjffi/ark_interop/ark_interop_napi.h:243` |
| `StackInfoOpKind` 枚举 | `0 = SwitchToSubStackInfo`、`1 = SwitchToMainStackInfo`，仅两个值 | `ets_runtime/ecmascript/js_thread.h:233` |
| 实现行为 | 仅在 fiber 上下文之间互换 `stackLimit_` / `leaveFrame_`；**不**写 `PcVector` | `ets_runtime/ecmascript/js_thread.cpp:1429` |
| `PcVector` 读接口 | `GetPcVectorData()` / `GetPcVectorSize()` | `ets_runtime/ecmascript/ecma_vm.h:1402-1412` |
| `PcVector` 现有写入者 | 仅 `BacktraceHybrid()` → `js_stackinfo.cpp` 调用 `SetPcVectorSize()`；ets_runtime 自身在 ArkTS Error 构造路径上自动写入 | `ets_runtime/ecmascript/platform/backtrace.h:28`、`ets_runtime/ecmascript/dfx/stackinfo/js_stackinfo.cpp:231` |

**结论**：架构文档 §2.5 的判断（`UpdateStackInfo` 不能直接写 `PcVector`）属实，**必须**新增上游接口。

## B. 新接口可行性（确认 Low 复杂度）

| 项 | 结论 | 引用 |
| -- | ---- | ---- |
| 现有 `JSNApi` PcVector 方法 | 无 | — |
| 新增 `JSNApi::AppendPcVector / SnapshotPcVector / RestorePcVectorSnapshot` 插入点 | `JSNApi::UpdateStackInfo` 声明之后 | `ets_runtime/ecmascript/napi/include/jsnapi_expo.h:2094` |
| 新增 `ARKTS_*` 包装器插入点 | `ARKTS_UpdateStackInfo` 实现之后 | `arkui_napi/interfaces/inner_api/cjffi/ark_interop/ark_interop_napi.cpp:889` |
| 机械复杂度 | Low（薄包装即可） | — |
| 已存在的语言层入口 | `napi_get_hybrid_stack_trace()` 已使用现有的 `GetPcVectorData/Size`，本设计直接复用 | `arkui_napi/interfaces/inner_api/napi/native_node_api.h:174` |

**结论**：上游新增 3 个接口的 PR 改动量小、风险低，可作为 Plan Task 1 之前的前置 PR 推上 ets_runtime + arkui_napi。

## C. cangjie_runtime 异常构造钩子（重大调整）

| 项 | 结论 | 引用 |
| -- | ---- | ---- |
| 异常**对象构造**时的回调 | **不存在** | — |
| 仅有的异常钩子 | `ExceptionManager::DumpException()`，发生在**未捕获 / throw**路径，不在构造时 | `cangjie_runtime/runtime/src/ExceptionManager.cpp:92` |
| 现有跨边界回调注册 | `ARKTS_UpdateStackInfo` 已经被 CJ 运行时注册回调 | `cangjie_runtime/runtime/src/CompilerCalls.cpp:1966` |
| 公开的 `Backtrace.current()` 仓颉 API | **不存在**导出。仅有内部 `StackManager::RecordLiteFrameInfos()`，在异常 wrapper 捕获时由运行时自动调用，**已经把帧记录到 CJ 异常对象内部** | `cangjie_runtime/runtime/src/StackManager.*` |

**结论**：
1. Plan Task 4 **路径 A（cangjie_runtime 提供构造钩子）短期不可行**。
2. Plan Task 4 **路径 B 不能依赖 `Backtrace.current()`**，因为该 API 未导出。
3. **新路径 C（采纳，替换原 A/B）**：CJ 异常对象本身在构造时已由 `StackManager` 记录了帧；在跨边界 `toJSError` 入口处通过新增 cjffi C API（如 `CJ_HybridStack_GetCJFramesFromException(exceptionPtr, frames[], *count)`），将 CJ 异常对象内的帧抽出，再调用 `CJ_HybridStack_AppendFrames` 写入 PcVector。需要 cangjie_runtime 暴露一个内部访问器（很小的改动）。
4. 若 cangjie_runtime 拒绝暴露访问器，**最终回退**：仅做语言层 P1 / P2，faultlog 仓颉帧能力暂以 `business_exception.message` + 已有 stitched 字符串方式呈现。

## D. 决策

| 维度 | 决策 |
| ---- | ---- |
| 上游 ets_runtime / arkui_napi 接口扩展 | **采纳**：新增 `JSNApi::Append/Snapshot/RestorePcVectorSnapshot` + 对应 `ARKTS_*` 包装。Plan Task 1 之前发起跨仓 PR。 |
| Plan Task 4 路径选择 | **新增路径 C**：在 `js_exception.cj toJSError` 入口直接从 CJ 异常对象抽帧并 append 到 PcVector，无需 CJ 运行时构造时回调。需要 cangjie_runtime 暴露一个 C 访问器。 |
| Plan Task 4 路径 A | 关闭 |
| Plan Task 4 路径 B | 降级为「最终回退」（语言层 only，不解锁 P0） |

## E. 后续行动

1. 将本 spike 结论同步到 `doc/hybridstack_architecture_design.md` §4.2.3 与 §6（已就绪可补丁）。
2. 修订 `docs/superpowers/plans/2026-04-24-hybridstack-redesign.md` Task 4：以路径 C 重写。
3. 与 ets_runtime / arkui_napi / cangjie_runtime owner 启动跨仓协调 PR（3 个仓库，各 1 个小改动）。
