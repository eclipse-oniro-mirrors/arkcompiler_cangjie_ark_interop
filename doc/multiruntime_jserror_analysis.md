# 多运行时场景下 JSError 预创建方案可行性分析

> **问题陈述**：当 ArkTS (vm_A) 调用 Cangjie，Cangjie 再通过 `JSRuntime()` 创建新的 ArkTS 运行时 (vm_B)，且 vm_B 中的代码抛出异常时，预创建于 vm_A 的 JSError 是否能在 vm_B 中正确 throw？
>
> **结论**：**不能安全地跨 VM 复用**。建议采用 **PC 指针更新 API 方案**。

---

## 1. 问题场景分析

### 1.1 多运行时的典型场景

```
┌─────────────────────────────────────────────────────┐
│ 应用进程                                            │
├─────────────────────────────────────────────────────┤
│ Thread 1: Main ArkTS Runtime (vm_A @ 0x1000)        │
│   - UIAbility 或其他 ArkTS 代码                     │
│   - 调用 Cangjie 代码                              │
│                                                     │
│   → Cangjie 函数中                                 │
│     • 异常构造期回调：预创建 JSError (vm_A bound) │
│     • 调用 new JSRuntime()                         │
│                                                     │
│   → vm_B 创建（同线程，@ 0x2000）                 │
│     • Cangjie 调用 vm_B 中的 ArkTS 代码           │
│     • 该 ArkTS 代码 throw new Error()             │
│                                                     │
│   ?→ 尝试 throw 预创建的 JSError(vm_A) 到 vm_B   │
│     ✗ 失败：vm address 不匹配                     │
└─────────────────────────────────────────────────────┘
```

### 1.2 预创建 JSError 方案的核心假设

**当前设计假设**：
- JSError 一次创建、多次复用
- 创建时刻：Cangjie 异常对象构造期间，通过互操作回调
- 复用路径：`toJSError()` 仅取回已存在的 JSError，不创建新对象
- **隐含假设**：JSError 被 throw 的目标 VM 与创建时的 VM 相同

**问题**：这个假设在多 VM 场景中不成立。

---

## 2. 技术根因

### 2.1 PcVector 与 EcmaVM 的绑定关系

**关键事实**（来自 `arkcompiler_ets_runtime/ecmascript/napi/dfx_jsnapi.cpp:1234`）：

```cpp
void DFXJSNApi::GetHybridStackTrace(const EcmaVM *vm, std::string &stackTraceStr)
{
    // PcVector 从 vm 对象中读取，符号化时需要传递正确的 vm 指针
    stackTraceStr = ecmascript::SymbolicAddress(
        vm->GetPcVectorData(),      // 来自 vm
        vm->GetPcVectorSize(),      // 来自 vm
        vm                          // 用于符号解析
    );
}
```

**含义**：
1. PcVector 数据存储在 **EcmaVM 对象内部**
2. 每个 EcmaVM 实例有唯一的内存地址（vm_A ≠ vm_B）
3. 符号化必须使用正确的 vm 指针来查找符号表

### 2.2 JSError 创建时的 VM 绑定

**假设基础**（基于常规异常实现）：
- JSError 对象创建时，自动调用 `BacktraceHybrid()` 或类似机制
- 该机制读取 **当前 EcmaVM** 的 PcVector 并记录
- 异常对象可能持有 vm 地址或从创建上下文推导

**在多 VM 场景中的后果**：
- vm_A 中创建的 JSError 记录了 vm_A @ 0x1000 的信息
- vm_B 中无法访问 vm_A 的 PcVector（vm_B 有自己的 PcVector @ 0x2000）
- 即使 throw 了这个 JSError，符号化时也会尝试用 vm_A 的地址去查 vm_B 的 vm 对象 → **访问冲突或符号解析失败**

---

## 3. 预创建方案在多 VM 下的失败模式

### 3.1 失败场景展开

```
Step 1: Cangjie 异常对象构造（在 vm_A 上下文）
  ├─ 异常构造回调触发
  ├─ 互操作框架：预创建 JSError
  │  └─ JSError.PcVector = snapshot of vm_A.PcVector
  │     JSError.vmAddr_hint = 0x1000 (或通过上下文隐含)
  └─ JSError 缓存到 Cangjie 异常对象

Step 2: Cangjie 代码创建新 JSRuntime（同线程）
  ├─ 新 EcmaVM 实例创建 @ 0x2000
  ├─ vm_B.PcVector = 空或旧值
  └─ JSEnv = vm_B 的环境指针

Step 3: vm_B 中 ArkTS 代码执行并抛出异常
  ├─ toJSError() 被调用
  ├─ 尝试取出缓存的 JSError (vm_A 创建的)
  ├─ throw 该 JSError...
  │  ✗ ERROR: Cannot throw object from vm_A context into vm_B context
  │          (或者 throw 成功，但后续符号化失败)
  └─ 如果强行 throw：
     ├─ 要么异常传播中断
     ├─ 要么 vm_B 创建新 Error 来包装
     └─ 新 Error 覆盖 vm_B.PcVector → 丢失 Cangjie 帧

Step 4: faultlog 符号化
  ├─ 尝试读取 vm.PcVector（但 vm 是哪个？）
  ├─ 如果用 vm_A：读到的是 Cangjie 调用点的帧，不是 ArkTS 代码的帧
  ├─ 如果用 vm_B：PcVector 已被覆盖，丢失信息
  └─ 结果：混合栈显示不完整或错误
```

### 3.2 技术冲突点

| 冲突点 | 预创建方案 | PC 更新 API 方案 |
|--------|---------|---------|
| **JSError 所有权** | vm_A 所有（无法在 vm_B 中 throw） | vm_B 所有（本地创建） |
| **PcVector 归属** | vm_A.PcVector（符号化需要 vm_A） | vm_B.PcVector（符号化用 vm_B） |
| **多 VM 支持** | ✗ 需要检测 VM 匹配（复杂） | ✓ 自动适配（每 VM 一个 JSError） |
| **跨 VM 传递** | ✗ 不安全（vm address mismatch） | ✓ 安全（PC 数据手动转移） |
| **实现复杂度** | 低（简单缓存） | 高（快照/恢复/追加 3 个 API） |
| **运行时成本** | 低（单次创建） | 中等（每 VM 一次创建 + PC 操作） |

---

## 4. 解决方案对比

### 方案 A：继续预创建 + 运行时 VM 检测（混合方案）

**设计**：
```
在 Cangjie 异常对象中记录预创建时的 vm_A 地址。
toJSError() 执行时：
  ├─ 读取缓存的 JSError
  ├─ 检测当前 vm == 缓存 vm_A?
  │  ├─ YES → throw 缓存的 JSError（快速路径）
  │  └─ NO → 在当前 vm 创建新 JSError + 恢复 PcVector（兼容路径）
  └─ 返回
```

**优点**：
- 单 VM 场景最优（零开销）
- 多 VM 场景有降级方案

**缺点**：
- 代码复杂性翻倍（两套逻辑）
- 多 VM 检测成本（每次 toJSError 检查 vm 地址）
- **难以测试**：需要单 VM 和多 VM 两套测试路径
- 维护成本高（两个代码路径的 bug 分离）
- Cangjie 异常对象需要额外字段存储 vm 地址

**实现成本**：★★★★☆ (4/5，中等偏高)

---

### 方案 B：放弃预创建，仅使用 PC 指针更新 API（推荐）

**设计**：
```
对所有场景采用统一路径：
  toJSError() 执行时：
    ├─ 在当前 vm 中创建新的 JSError（自动绑定当前 vm）
    ├─ 恢复 PcVector：调用 ARKTS_RestorePcVectorSnapshot
    │  └─ 写入缓存的 Cangjie 帧 PC 集合
    ├─ 追加当前 ArkTS 帧：调用 ARKTS_AppendPcVector（可选）
    └─ throw 新 JSError
```

**优点**：
- ✓ **通用**：所有 VM 配置下都工作（单 VM / 多 VM / 嵌套都安全）
- ✓ **简洁**：单一代码路径，易于理解和维护
- ✓ **安全**：无 VM 地址匹配风险
- ✓ **可测试**：单一行为，测试覆盖简单

**缺点**：
- ✗ 每次 toJSError 都要创建新 JSError（轻微性能成本）
- ✗ 需要上游提供 PC 快照/恢复 API（任务 1 新增 3 个接口）
- ✗ 实现复杂度相对较高（但单一路径）

**实现成本**：★★★☆☆ (3/5，中等)

---

### 方案 C：放弃跨 VM 支持，仅文档化限制（保守方案）

**设计**：
```
坚持预创建方案，但明确文档：
  "本方案支持线性 VM 链（A→B→C...）内的异常传递，
   不支持嵌套 JSRuntime()（A→B[new JSRuntime] 创建的 VM）。
   如果应用中使用嵌套 JSRuntime，需在 Cangjie 侧用 try/catch 处理异常。"
```

**优点**：
- ✓ 实现成本最低（无改动）
- ✓ 性能最优（单次创建）

**缺点**：
- ✗ 功能受限（不完整）
- ✗ **风险高**：隐形的边界条件失败，用户难以debug
- ✗ 不满足"通用混合栈"的目标

**实现成本**：★☆☆☆☆ (1/5，极低但功能受限)

---

## 5. 建议与决策矩阵

| 决策维度 | 方案 A（混合检测） | 方案 B（PC API） | 方案 C（文档化限制） |
|---------|------------------|---------|---------|
| **功能完整性** | 90% | 100% ✓ | 60% |
| **代码复杂度** | 高（两路径） | 中（新 API + 操作） | 低（无新代码） |
| **测试覆盖** | 困难（两路径） | 简单（单路径） ✓ | 简单但不全面 |
| **运行时性能** | 优（单 VM 快） | 中（创建成本） | 优（单 VM 最快） |
| **多 VM 支持** | 条件支持 | 完全支持 ✓ | 不支持 |
| **维护成本** | 高（分支维护） | 中（新接口文档） | 低（无维护） |
| **推荐场景** | 单 VM 为主 | **生产环境** ✓ | 原型或MVP |

---

## 6. 最终建议

### 推荐选择：**方案 B（PC 指针更新 API）**

**理由**：

1. **风险最小**：避免 VM 地址绑定陷阱，单一代码路径无隐藏失败模式
2. **功能完整**：支持所有 OpenHarmony 应用可能出现的场景（包括插件系统、动态运行时等）
3. **长期收益**：一次性投入获得永久通用解决方案，不需后续的"兼容路径维护"
4. **测试友好**：单一路径易于单元测试和集成测试
5. **文档简洁**：无条件限制，规则清晰

### 实施路径：

1. **Task 0 决策确认**（当前）：
   - 文档记录：放弃预创建，采用 PC API 方案
   - 在 `doc/multiruntime_jserror_analysis.md` 记录本分析
   
2. **Task 1 修订**：
   - 明确新增 3 个 PC API：`GetPcVectorSnapshot`、`RestorePcVectorSnapshot`、`AppendPcVector`
   - C++ 桥接实现这三个接口

3. **Task 3/4 简化**：
   - Task 3：`toJSError()` 统一为"创建新 JSError + 恢复 PC + throw"
   - Task 4：移除"预创建"回调，改为"在创建时记录 Cangjie PC 快照"用于 Task 3 恢复

4. **架构文档更新**：
   - 删除"预创建方案"的复杂流程图
   - 改为"PC 快照→恢复→throw"的简洁流程

### 替代选择：

如果**必须保证单 VM 性能**且**确认应用不使用嵌套 JSRuntime**，可考虑**方案 A**，但需：
- 额外的性能测试基准
- Cangjie 异常对象新增 `_vmAddrHint` 字段
- Task 3/4 中增加 VM 检测逻辑及详细注释警告
- 独立的多 VM 集成测试用例

---

## 7. 后续行动

### 立即决策：

请确认：
1. **是否同意方案 B（PC API）**？
2. 如否，是否选择方案 A（混合）或方案 C（限制）？

### 一旦决策：

1. 更新 `doc/hybridstack_architecture_design.md` §4.2.4，替换为选中方案
2. 修订 `docs/superpowers/plans/2026-04-24-hybridstack-redesign.md` Task 1-5
3. 继续 Task 1 实施

---

## 附录：多 VM 场景的用户代码示例

### 示例 1：嵌套 JSRuntime（失败场景，方案 B 救场）

```cangjie
// Cangjie 代码
package app.sample

@ForeignCpp
extern class JSRuntime {
    extern func new()
    extern func execute(code: String)
}

public func doSomething() {
    // 回调 ArkTS
    arktsFunc()
}

// 在 ArkTS 侧
@Binding
fun arktsFunc() {
    // 创建新 JSRuntime 执行隔离的代码
    let runtime = JSRuntime()
    runtime.execute("""
        function riskyCode() {
            throw new Error("From nested vm");
        }
        riskyCode();
    """)  // ← 这里抛出的异常在新 vm 中
}

// 回到 Cangjie
func callArkts() {
    try {
        arktsFunc()
    } catch (e) {
        println("Caught: " + e.getMessage())  // ← 需要混合栈
    }
}
```

**方案 B 处理**：
- vm_B 中的 `new Error()` 创建于 vm_B，绑定 vm_B
- `toJSError()` 在 vm_B 中创建新 JSError，恢复 Cangjie PC，追加 vm_B 的 ArkTS 帧
- 混合栈完整且正确

**方案 A 失败**：
- 预创建的 JSError 来自 vm_A，无法在 vm_B 中 throw
- 需要特殊检测绕路，增加复杂性

---

## 参考资源

- 设计文档：`doc/hybridstack_architecture_design.md`
- 需求文档：`doc/hybridstack_support_cangjie_design.md`
- 实施计划：`docs/superpowers/plans/2026-04-24-hybridstack-redesign.md`
- ets_runtime 异常处理：`arkcompiler_ets_runtime/ecmascript/napi/dfx_jsnapi.cpp:1234`
- 上游 API 签名：Task 0 spike notes
