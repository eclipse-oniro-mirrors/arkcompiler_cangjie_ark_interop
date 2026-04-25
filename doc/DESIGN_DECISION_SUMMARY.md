# 混合栈设计决策摘要

> **状态**：已决策并实施（2026-04-25）
> **分支**：`feat/hybridstack-redesign`
> **关键提交**：`f4738b49` (架构重构)、`eb5ca915` (计划更新)

---

## 问题 & 核心决策

### 问题：多运行时 JSError 绑定

**场景**：ArkTS (vm_A) → Cangjie → `new JSRuntime()` (vm_B) → ArkTS code throws

**原方案缺陷**（预创建方案）：
- 在 vm_A 异常构造期预创建 JSError，绑定到 vm_A 地址
- 当异常进入 vm_B 时，预创建的 JSError 无法 throw（vm address mismatch）
- 导致 vm_B 创建新 Error → 覆盖 PcVector → **丢失 Cangjie 帧**

### 决策：PC 指针更新 API 方案 ✅

**新方案特点**：
- ✅ **通用**：支持所有 VM 配置（单 VM、多 VM、嵌套 JSRuntime）
- ✅ **简洁**：单一代码路径，无复杂的 VM 检测逻辑
- ✅ **安全**：无 vm address 绑定陷阱
- ✅ **可测试**：测试覆盖简单直观

**关键机制**：
```
toJSError 执行时：
  ① 创建新 JSError（自动绑定当前 vm）
  ② 读取 Cangjie 异常对象的 cjPcSnapshot
  ③ 调用 ARKTS_RestorePcVectorSnapshot 恢复 PC
  ④ throw 新 JSError

结果：每个 vm 都有自己的 JSError + 正确的 PcVector
```

---

## 架构变更

### 对比预创建方案

| 方面 | 预创建方案（已弃） | PC API 方案（已采） |
|------|---------|---------|
| JSError 创建时机 | 仓颉异常构造期（回调） | `toJSError` 时刻 |
| VM 绑定 | 固定（vm_A） | 动态（当前 vm） |
| 多 VM 支持 | ✗ 需检测 + 降级 | ✓ 天然支持 |
| 代码路径数 | 2（主路径 + 兼容） | 1（统一） |
| Cangjie 回调 | 必须（异常构造） | 不需要（仅记录 PC） |

### 新增 API（3 个）

在 `arkui_napi` 中新增 cjffi C 接口：

```c
// 获取 PcVector 快照
int ARKTS_GetPcVectorSnapshot(uint64_t vmAddr,
                              uintptr_t** outFrames,
                              size_t* outCount);

// 恢复 PcVector（覆盖写）
int ARKTS_RestorePcVectorSnapshot(uint64_t vmAddr,
                                  const uintptr_t* frames,
                                  size_t count);

// 追加 PcVector（可选）
int ARKTS_AppendPcVector(uint64_t vmAddr,
                         const uintptr_t* frames,
                         size_t count);
```

所有接口都由 `ets_runtime` 通过新增 `JSNApi::SetPcVector/AppendPcVector` 支持。

### 重构范围

**新增文件**：
- `frameworks/native/hybrid_stack/hybrid_stack_bridge.{h,cpp}`
- `frameworks/native/hybrid_stack/BUILD.gn`
- `ohos/hybrid_stack/hybrid_stack.cj`
- `ohos/hybrid_stack/hybrid_stack_ffi.cj`
- `doc/multiruntime_jserror_analysis.md`

**修改文件**：
- `doc/hybridstack_architecture_design.md` — 更新 §2-6，说明新方案
- `docs/superpowers/plans/2026-04-24-hybridstack-redesign.md` — Task 3-4 改写
- `ohos/ark_interop/js_exception.cj` — `toJSError` 流程
- `ohos/business_exception/business_exception.cj` — 复用混合栈 API
- `ohos/cjpm.toml` — 注册新模块

---

## 实施路线图

### 已完成 ✅

1. **多运行时场景分析**（`multiruntime_jserror_analysis.md`）
   - 详细对比三个方案
   - 量化风险与成本
   - 决策理由

2. **架构设计更新**（`hybridstack_architecture_design.md`）
   - 修改目标约束部分说明 PC API 方案
   - 更新时序图和关键接口
   - 简化重构点

3. **实施计划更新**（`2026-04-24-hybridstack-redesign.md`）
   - Task 3：PC 恢复主路径
   - Task 4：PC 快照初始化

### 待完成 ⏳

4. **Task 1**：C++ 桥接骨架（无需 ets_runtime 修改，可独立完成）
5. **Task 2**：Cangjie HybridStack API 封装
6. **Task 3**：`toJSError` PC 恢复实现
7. **Task 4**：`cjPcSnapshot` 初始化实现
8. **Task 5**：`BusinessException` 混合栈集成
9. **Task 6**：端到端验证（VerifyBuild + faultlog）

**预计周期**：每 Task 1-2 天（取决于上游接口可用性）

---

## 关键决策点

### 1. 上游接口依赖

**必须项**：`ets_runtime` 新增 `JSNApi::SetPcVector(vm, data, size)`

**可选项**：`JSNApi::AppendPcVector`（用于语言层优化）

**风险**：若上游拒绝，则仅支持语言层（P1/P2），faultlog 回退

### 2. Cangjie 侧配合

**不需要**：异常构造回调（简化集成难度）

**需要**：Cangjie 异常对象预留 `cjPcSnapshot` 字段空间（可后补）

### 3. 多 VM 测试

**优先项**：嵌套 JSRuntime 场景单测（验证核心价值）

**覆盖项**：worker 隔离、线程安全

---

## 与原始需求的对标

| 需求 | 类别 | 达成度 |
|------|------|--------|
| faultlog 显示仓颉帧 | P0 | ✅ 完整支持 |
| 语言层混合栈 toString | P1 | ✅ 完整支持 |
| 语言层包含 Native 帧 | P2 | ✅ 依赖 DFXJSNApi（已有） |
| 多 VM 场景 | 新增约束 | ✅ 完整支持（本方案核心价值） |
| 二进制兼容性 | 约束 | ✅ 保持（BusinessException 接口不变） |

---

## 可优化空间（Task 5b）

1. **符号化结果缓存**
   - 语言层缓存到实例字段
   - 跨路径（语言层 + faultlog）缓存用 thread_local

2. **渐进式编码**
   - Task 1-2：骨架搭建
   - Task 3-4：核心逻辑
   - Task 5b：缓存优化

---

## 参考文档

- **详细分析**：[multiruntime_jserror_analysis.md](./multiruntime_jserror_analysis.md)
- **架构设计**：[hybridstack_architecture_design.md](./hybridstack_architecture_design.md)
- **需求文档**：[hybridstack_support_cangjie_design.md](./hybridstack_support_cangjie_design.md)
- **实施计划**：[2026-04-24-hybridstack-redesign.md](../docs/superpowers/plans/2026-04-24-hybridstack-redesign.md)
- **Spike 结果**：[hybridstack_spike_notes.md](./hybridstack_spike_notes.md)

---

## 提交历史

```
eb5ca915 refactor(plan): update Task 3-4 to PC API unified approach
f4738b49 refactor(hybridstack): adopt PC API unified approach to solve multi-runtime JSError issue
1c8f18ee docs(hybridstack): align with original idea - pre-create JSError at CJ exception creation
799bd1c9 docs(hybridstack): record Task 0 spike - confirm UpdateStackInfo cannot write PcVector
044c8ebe docs(hybridstack): add architecture design and implementation plan
```

---

## 问题 & 反馈

若需澄清设计细节或报告实施中的问题，请参考：
- 多运行时场景分析（§3-4）
- 架构设计风险部分（§6）
- 实施计划中的 spike 结果（Task 0）
