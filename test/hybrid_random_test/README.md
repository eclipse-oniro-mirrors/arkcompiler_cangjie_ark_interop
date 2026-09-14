# Hybrid Random Test — 仓颉-ArkTS 互操作稳定性测试工程

> **目标**：系统性验证仓颉(Cangjie)与 ArkTS 互操作 API 在随机参数、异常注入、并发竞争、长循环压力下的稳定性与类型契约正确性。

- **平台**：HarmonyOS 26.0.0
- **架构**：hybrid 模式（ArkTS 主线程 + 仓颉 spawn worker 线程 + postJSTask 跨线程调度）
- **测试用例数**：32 个模块 / ~185 个测试方法

---

## 一、新人快速上手

### 1.1 这个工程做什么？

验证仓颉↔ArkTS 互操作 API 在**随机化压力**下是否稳定。每次运行：
1. ArkTS UI 点 Start → 仓颉 spawn N 个 worker 线程
2. 每个 worker 循环通过 `postJSTask` 回 ArkTS 主线程执行测试方法
3. 测试方法用 `RandomUtil` 生成随机参数，调用互操作 API，校验结果
4. 失败记录到 errorLog，最终写 CSV 文件

### 1.2 关键概念

| 概念 | 说明 |
|------|------|
| **ArkTS 绑定线程** | ArkTS 单线程虚拟机，互操作 API 只能在此线程执行 |
| **postJSTask** | 从仓颉 worker 线程提交任务到 ArkTS 绑定线程 |
| **safePostJSTask** | 带背压包装的 postJSTask（HIGH_WATERMARK=1000） |
| **spawnTracked** | 跟踪的 spawn future，stopTest 时统一 cancel |
| **testPendingAsync** | 全局原子计数器，workerLoop 等它归零才进入下一轮 |
| **registerTestModule** | 测试模块注册函数，每个 .cj 文件顶层调用一次 |
| **反射调度** | TestInit 用仓颉反射 `methodInfo.apply` 调用测试方法 |

### 1.3 5 分钟理解调用链

```
[ArkTS] 点 Start → startTest(modules, seed, ratio, isRandom, threads, delay)
  ↓ spawn N worker
[Cangjie worker] workerLoop → safePostJSTask(回调)
  ↓ 跨线程提交到 ArkTS 绑定线程
[ArkTS 绑定线程] 回调 → runner.run(反射) → testXxx(seed, exceptionRatio)
  ↓ 测试方法执行
[测试方法] RandomUtil 生成参数 → 调互操作 API → 校验结果
  ↓ 失败时
[writeLog] → pendingLogQueue(CSV) + errorLogQueue(UI显示,上限200) + Hilog
  ↓ 等待 testPendingAsync==0
[worker] 下一轮
```

### 1.4 添加一个新测试模块的最小步骤

1. **创建目录** `entry/src/main/cangjie/tests/<your_module>/`
2. **创建测试类** `<Name>Test.cj`：
   ```cangjie
   package ohos_app_cangjie_entry.tests.<your_module>
   import ohos_app_cangjie_entry.utils.*
   import ohos.ark_interop.*

   let _ = registerTestModule("<module_key>", { jsContext, sandboxFile =>
       <Name>Test(jsContext, sandboxFile)
   })

   public class <Name>Test <: KitTest {
       public init(jsContext: JSContext, sandboxFile: String) { super(jsContext, sandboxFile) }
       public override func getTestMethodNames(): Array<String> { ["testFoo"] }
       public func testFoo(seed: UInt32, exceptionRatio: Float64): String {
           let apiName = "testFoo"
           try { /* 测试逻辑 */ } catch (e: Exception) { this.writeLog(apiName, "Err", e.message) }
           apiName  // 必须返回 apiName
       }
   }
   ```
3. **在 `index.cj` 加一行** `import ohos_app_cangjie_entry.tests.<your_module>.*`
4. **完成** — 模块自动出现在 `getModuleList()` 中

> **强制约定**：测试方法签名必须 `(seed: UInt32, exceptionRatio: Float64) -> String`，因为反射 `apply` 传入 `[UInt32, Float64]`。

### 1.5 常用工具

| 工具 | 文件 | 用途 |
|------|------|------|
| `RandomUtil.randomNumber(seed, ratio, allowSpecial!, maxMagnitude!)` | `utils/random_util.cj` | 随机数（含 NaN/Inf） |
| `RandomUtil.randomString(seed, ratio, allowEmpty!, ...)` | 同上 | 随机字符串（含控制字符/Unicode） |
| `RandomUtil.randomPropertyName(seed, ratio, useAbnormal!)` | 同上 | 随机属性名（含边界名） |
| `safePostJSTask(jsContext) { /* 在 ArkTS 线程执行 */ }` | `utils/test_session.cj` | 带背压的跨线程调度 |
| `spawnTracked { /* 异步任务 */ }` | 同上 | 跟踪的 spawn future |
| `this.writeLog(apiName, errorCode, errorMsg)` | `utils/utils.cj` | 记录失败（CSV+UI+Hilog） |
| `this.handleCaseResult(jsContext, result, apiName)` | 同上 | 自动处理 Promise/Object 结果 |

---

## 二、工程结构

```
hybrid_random_test/
├── entry/
│   └── src/
│       ├── main/
│       │   ├── ets/pages/Index.ets          # ArkTS 前端（UI + runner 注入 + 定时轮询）
│       │   └── cangjie/
│       │       ├── index.cj                  # 模块导出 + workerLoop + start/stopTest + injectXxx
│       │       ├── test_init.cj              # 反射调度（TestInit.run）
│       │       ├── utils/
│       │       │   ├── utils.cj              # KitTest 基类 + handleCaseResult + registerTestModule
│       │       │   ├── test_session.cj       # TestSession 单例 + safePostJSTask + spawnTracked
│       │       │   └── random_util.cj        # RandomUtil 统一泛化工具
│       │       ├── interop_apis/
│       │       │   ├── cj_business.cj        # 仓颉业务函数（被 ArkTS 调用）
│       │       │   ├── cj_callback_wrapper.cj # 仓颉包裹 ArkTS 回调
│       │       │   └── cj_macro.cj           # @Interop[ArkTS] 宏定义（函数/异步/interface/class）
│       │       └── tests/                    # 29 个测试目录 / 32 个测试类
│       │           ├── cl_arkts_call_cj/     # ArkTS 调用仓颉
│       │           ├── cl_cj_call_arkts/     # 仓颉调用 ArkTS
│       │           ├── cl_interop_macro/     # @Interop 宏测试（新增）
│       │           ├── cl_ark_interface/     # 仓颉读 ArkTS 注入接口
│       │           ├── cl_cj_export/         # 仓颉导出到 ArkTS
│       │           ├── cl_cj_wrap_arkts_cb/  # 仓颉包裹 ArkTS 回调
│       │           ├── cl_global_arkts/      # 全局 ArkTS 对象
│       │           ├── cl_native_interface/  # 原生接口
│       │           ├── dt_jsvalue/           # JSValue 类型
│       │           ├── dt_jsobject/          # JSObject
│       │           ├── dt_jsarray/           # JSArray
│       │           ├── dt_jsclass/           # JSClass
│       │           ├── dt_jsfunction/        # JSFunction
│       │           ├── dt_jspromise/         # JSPromise
│       │           ├── dt_bigint/            # BigInt
│       │           ├── dt_arraybuffer/       # ArrayBuffer
│       │           ├── dt_boundary/          # 边界值
│       │           ├── mech_register/        # 注册机制
│       │           ├── mech_exception/       # 异常机制
│       │           ├── mech_async_sched/     # 异步调度
│       │           ├── mech_thread_safety/   # 线程安全
│       │           ├── mech_lifecycle/       # 生命周期/GC
│       │           ├── mech_concurrency/     # 并发
│       │           ├── mech_mem_leak/        # 内存泄漏
│       │           ├── mech_hwasan/          # HWASan tag 检测
│       │           ├── mech_jscontext_bind/  # JSContext 绑定/napi_env
│       │           ├── mech_array_ex/        # JSArrayEx 构造
│       │           ├── mech_loader_cache/   # loader 缓存
│       │           └── mech_scope_lifetime/  # scope 生命周期
│       └── main/cangjie/types/
│           └── libohos_app_cangjie_entry/
│               └── Index.d.ts               # ArkTS 类型声明
├── build-profile.json5
└── oh-package.json5
```

---

## 三、核心架构

### 3.1 三层调用栈

```
┌──────────── ArkTS 主线程 ────────────┐
│  Index.ets (UI + runner 注入)         │
│       ↓ startTest / injectXxx         │
└─────────────────┬────────────────────┘
                  │ spawn N 个 worker
                  ▼
┌──────── Cangjie worker 线程 ─────────┐
│  index.cj workerLoop                  │
│       ↓ safePostJSTask(回调)          │
│       │  (跨线程提交回 ArkTS 主线程)   │
└─────────────────┬────────────────────┘
                  │ postJSTask 调度
                  ▼
┌──────── ArkTS 主线程(回调) ──────────┐
│  test_init.cj runner.run             │
│       ↓ 反射 methodInfo.apply         │
│  测试方法 testXxx(seed, ratio)        │
│       ↓ 调 ArkTS runner 或 CJ 业务    │
└──────────────────────────────────────┘
```

### 3.2 关键单例与机制

| 组件 | 文件 | 职责 |
|------|------|------|
| `TestSession` | `utils/test_session.cj` | 全局原子状态（runCount/stopSignal/testPendingAsync） |
| `safePostJSTask` | `utils/test_session.cj` | postJSTask 背压包装（HIGH_WATERMARK=1000） |
| `spawnTracked` | `utils/test_session.cj` | spawn future 跟踪（stopTest 时 cancel） |
| `RandomUtil` | `utils/random_util.cj` | 统一泛化随机工具（支持命名参数控制） |
| `KitTest` | `utils/utils.cj` | 测试基类（writeLog + handleCaseResult） |
| `TestInit` | `test_init.cj` | 反射调度（testInstancePool 随机/顺序取） |

### 3.3 异步 await 机制

worker 在每轮 callback 完成后，等待 `testPendingAsync == 0` 才进入下一轮（5s 超时 + stopSignal 检查），确保 Promise 异步验证回调不丢。

### 3.4 故障注入

`TestInit.run` 在 `exceptionRatio > 0` 时，按概率注入 3 种故障：
- 负 `exceptionRatio`（测试方法收到非法参数）
- 极大 `seed`（`UInt32(999999999)`）
- 翻倍 `exceptionRatio`

故障注入下抛异常不记日志（预期行为）。

---

## 四、互操作调用流程示例：cjBusinessAdd

以 `cjBusinessAdd(a, b)` 为例，展示完整的「双向互操作闭环」：

### 4.1 仓颉侧定义

**业务层**（`interop_apis/cj_business.cj`）— 纯仓颉，无互操作依赖：
```cangjie
public func businessAdd(a: Float64, b: Float64): Float64 { a + b }
```

**互操作包装层**（同文件）— JSValue ↔ 仓颉类型翻译：
```cangjie
public func jsBusinessAdd(context: JSContext, callInfo: JSCallInfo): JSValue {
    let a = callInfo[0].toNumber()
    let b = callInfo[1].toNumber()
    context.number(businessAdd(a, b)).toJSValue()
}
```

**导出注册**（`index.cj`）— 模块加载时挂到 exports：
```cangjie
exports["cjBusinessAdd"] = runtime.function(jsBusinessAdd).toJSValue()
```

### 4.2 ArkTS 侧声明与调用

**类型声明**（`Index.d.ts`）：`export declare function cjBusinessAdd(a: number, b: number): number`

**调用**（`Index.ets`）：`const r = cjBusinessAdd(seed, seed * 2)`

### 4.3 跨语言调用两条路径

| 方向 | 机制 | 例子 |
|------|------|------|
| **ArkTS → 仓颉** | 仓颉 `JSModule.registerModule` 导出 + ArkTS `import` + 直接调用 | `cjBusinessAdd(seed, seed*2)` |
| **仓颉 → ArkTS** | ArkTS `injectXxx` 注入 globalThis + 仓颉 `global.getProperty().asFunction().call()` | `runArkTsCallCjCase(caseId, seed)` |

---

## 五、测试模块清单（23 个模块 / ~150 个方法）

| # | 模块 | 类别 | 测试类 | 方法数 | 说明 |
|---|------|------|--------|--------|------|
| 1 | cl_arkts_call_cj | 调用方向 | ArkTsCallCangjieTest | 7 | ArkTS 调用仓颉业务函数 |
| 2 | cl_ark_interface | 调用方向 | ArkTSInterfaceTest | 16 | 仓颉读 ArkTS 注入接口 |
| 3 | cl_cj_call_arkts | 调用方向 | CjCallArkTsTest | 5 | 仓颉调用 ArkTS（含 requireArkModule 降级） |
| 4 | cl_cj_export | 调用方向 | CangjieExportTest | 7 | 仓颉导出到 ArkTS |
| 5 | cl_cj_wrap_arkts_cb | 调用方向 | CjWrapArkTsCallbackTest | 6 | 仓颉包裹 ArkTS 回调 |
| 6 | cl_global_arkts | 调用方向 | GlobalArkTSTest | 5 | 全局 ArkTS 对象 |
| 7 | cl_native_interface | 调用方向 | NativeInterfaceTest | 10 | 原生接口 |
| 8 | cl_interop_macro | 调用方向 | InteropMacroTest | 8 | @Interop 宏（函数/异步/interface/class） |
| 9 | dt_jsvalue | 数据类型 | JSValueTest | 6 | JSValue 类型语义（含 symbol） |
| 10 | dt_jsobject | 数据类型 | JSObjectTest | 5 | JSObject 属性操作 |
| 11 | dt_jsarray | 数据类型 | JSArrayTest | 4 | JSArray |
| 12 | dt_jsclass | 数据类型 | JSClassTest | 8 | JSClass + 继承（含 superClass） |
| 13 | dt_jsfunction | 数据类型 | JSFunctionTest | 3 | JSFunction |
| 14 | dt_jspromise | 数据类型 | JSPromiseTest | 8 | JSPromise（含 reject 短路 + catch 链） |
| 15 | dt_bigint | 数据类型 | BigIntTest | 6 | BigInt（含超大数 + 算术） |
| 16 | dt_arraybuffer | 数据类型 | ArrayBufferTest | 4 | ArrayBuffer |
| 17 | dt_boundary | 数据类型 | BoundaryTest | 6 | 边界值/压力 |
| 18 | mech_register | 机制 | RegisterTest | 4 | JSModule 注册机制 |
| 19 | mech_exception | 机制 | ExceptionTest | 7 | 异常跨语言传播（含多层异常链） |
| 20 | mech_async_sched | 机制 | AsyncSchedTest | 8 | 异步调度 postJSTask |
| 21 | mech_thread_safety | 机制 | ThreadSafetyTest | 3 | 线程安全 |
| 22 | mech_lifecycle | 机制 | LifecycleTest | 6 | 生命周期/GC |
| 23 | mech_concurrency | 机制 | ConcurrencyTest | 3 | 并发竞争 |
| 24 | mech_mem_leak | 机制 | MemoryLeakTest | 3 | PromiseCapability 批量创建/释放，验证 Global 引用不泄漏 |
| 25 | mech_hwasan | 机制 | HwasanTagMaskTest | 7 | HeapObject↔JSValue 批量转换，覆盖 Nan-boxing tag 清除路径 |
| 26 | mech_jscontext_bind | 机制 | JsContextBindTest | 2 | Worker 加载仓颉模块多轮循环，覆盖 JSContext 绑定冲突 |
| 27 | mech_jscontext_bind | 机制 | GetNapiEnvTest | 4 | getNapiEnv 多线程调用，验证不抛线程校验异常 |
| 28 | mech_jscontext_bind | 机制 | TaskPoolBindTest | 2 | TaskPool 并发加载仓颉模块多轮循环 |
| 29 | mech_lifecycle | 机制 | UvloopReleaseTest | 2 | Worker 关闭后触发仓颉 GC，覆盖 uvloop 释放路径 |
| 30 | mech_array_ex | 机制 | JsArrayExConstructTest | 5 | JSArrayEx 构造与延迟 toJSValue，验证 context 不被提前置空 |
| 31 | mech_loader_cache | 机制 | LoaderEmptyObjectTest | 4 | 反复访问导出对象，覆盖 loader 缓存返回空 JSObject 路径 |
| 32 | mech_scope_lifetime | 机制 | ArkTsScopeLifetimeTest | 6 | 显式 newScope 包装 JSValue 创建，覆盖栈变量生命周期 |

所有测试类继承 `KitTest`（`utils/utils.cj`），通过 `registerTestModule(name, factory)` 注册到 `testModuleRegistry`，由 `TestInit` 反射调度。

---

## 六、互操作场景覆盖度分析

### 6.1 仓颉侧导出方式

| 方式 | 覆盖 | 说明 |
|------|------|------|
| `@Interop[ArkTS]` 声明式宏 | ✅ | `interop_apis/cj_macro.cj`（函数/异步/interface/class） |
| `@Interop[ArkTS]` enum | 📝 | 已写好注释，待 SDK 升级解注释 |
| `JSModule.registerModule` 互操作库 | ✅ | `index.cj` |
| `JSModule.registerFunc` | ✅ | `mech_register/RegisterTest.cj` |
| `JSModule.registerClass` | ✅ | `mech_register/RegisterTest.cj` |

### 6.2 ArkTS 侧调用方式

| 方式 | 覆盖 | 说明 |
|------|------|------|
| `import` 静态导入 | ✅ | `Index.ets` |
| `requireArkModule` 动态导入 | ⚠️降级 | API 不可用，改为 globalThis 访问 |
| `global.getProperty` 注入 | ✅ | 30+ 处 |

### 6.3 数据类型覆盖

**互操作库类型映射（14/14 覆盖）**：

| 类型 | 覆盖 | 类型 | 覆盖 |
|------|------|------|------|
| undefined | ✅ | function | ✅ |
| null | ✅ | **symbol** | ✅ |
| boolean | ✅ | class | ✅ |
| number | ✅ | ArrayBuffer | ✅ |
| string | ✅ | Promise | ✅ |
| object | ✅ | External | ✅ |
| Array | ✅ | bigint | ✅ |

**@Interop 宏特有类型**：

| 类型 | 覆盖 | 备注 |
|------|------|------|
| JSStringEx | ❌ | 宏不支持，已删除 |
| JSArrayEx<T> | ❌ | 宏不支持，已删除 |
| JSHashMapEx<K,V> | ❌ | 宏不支持，已删除 |
| Utf16String | ⚠️降级 | 宏不支持，改用 String |
| Array<Byte> | ❌ | 宏不支持，已删除 |

### 6.4 特殊机制覆盖

| 机制 | 覆盖 | 机制 | 覆盖 |
|------|------|------|------|
| `JSClass superClass` 继承 | ✅ | `attachCJObject` / `getAttachInfo` | ✅ |
| `addAccessor` / `addProperty` | ✅ | `bindObject` / `getBindingObject` | ✅ |
| `context.newScope` | ⚠️降级 | API 不可用，改为直接执行 | `strictEqual` | ✅ |
| `spawn(UIThread)` | ⚠️降级 | 导致模块加载递归崩溃，改用 spawnTracked | `instanceOf` | ✅ |
| `SharedObject` | ✅ | `BusinessException` catch | ✅ |
| `JSCodeError` catch | ⚠️降级 | 类型不可用，改为 catch(Exception) | | |

### 6.5 参数泛化分布

~150 个测试方法的参数泛化程度：

| 程度 | 占比 | 说明 |
|------|------|------|
| 高 | ~15% | 用 RandomUtil.randomNumber(allowSpecial) |
| 中 | ~55% | 用 RandomUtil 但限制特殊值 |
| 低 | ~30% | 仍有 Float64(seed) 直用或固定值 |

### 6.6 特殊业务场景覆盖

| 场景 | 覆盖 | 缺口 |
|------|------|------|
| 长循环压力 | `dt_boundary` 10000 量级 | ❌ 跨语言 10000 次往返 |
| 并发竞争 | 2-4 线程×50-100 | ❌ 16+ 线程×10000 |
| 生命周期 | `mech_lifecycle` 6 个 | ❌ 缺「使用→GC→再使用」闭环 |
| 内存泄漏 | 1 个粗粒度 | ❌ 无引用计数断言 |
| 跨上下文 | `testJSRuntime` 创建未隔离 | ❌ 多 JSContext 隔离 |
| Promise reject 短路 | ✅ `testPromiseAllRejectShortCircuit` | - |
| 异常链多层 | ✅ `testMultilayerExceptionChain`（4层） | - |

### 6.7 接口覆盖率（量化指标）

统计互操作 SDK 各类别公共 API 的测试覆盖情况：

| 类别 | 已覆盖 | 总数 | 覆盖率 | 未覆盖 API |
|------|--------|------|--------|-----------|
| JSContext | 17 | 20 | 85% | `newScope` `requireArkModule` `getNapiEnv` |
| JSValue 类型判断 | 15 | 15 | 100% | - |
| JSValue 类型转换 | 14 | 14 | 100% | - |
| JSValue 属性/引用 | 5 | 5 | 100% | - |
| JSObject | 12 | 12 | 100% | - |
| JSArray | 3 | 3 | 100% | - |
| JSClass | 8 | 8 | 100% | - |
| JSFunction | 3 | 3 | 100% | - |
| JSPromise | 6 | 6 | 100% | - |
| JSBigInt | 9 | 9 | 100% | - |
| JSArrayBuffer | 4 | 5 | 80% | `arrayBuffer(ptr,len,finalizer)` |
| JSExternal | 2 | 2 | 100% | - |
| JSModule | 3 | 3 | 100% | - |
| JSCallInfo | 3 | 3 | 100% | - |
| 全局/运行时 | 5 | 5 | 100% | - |
| @Interop 宏 | 5 | 6 | 83% | `enum`(已写好待 SDK 升级解注释) |
| **总计** | **114** | **119** | **96%** | 5 个 API 未覆盖 |

**剩余 5 个未覆盖 API**：
- `newScope` — SDK 无此方法签名，降级为直接执行代码
- `requireArkModule` — SDK 限制，回调中调用会失败
- `getNapiEnv` — 返回类型文档未说明，需 NAPI 底层知识
- `arrayBuffer(ptr,len,finalizer)` — 需 unsafe + CPointer + malloc/free
- `@Interop enum` — 已写好代码并注释，待 SDK 升级后解注释即可运行

---

## 七、TodoList — 改进路线图

### P0 — skill 场景空白 ✅ 已完成

- [x] **@Interop[ArkTS] 宏测试模块** — 函数/异步/interface/class/Invisible 完成；enum 已写好注释待 SDK 升级
- [x] **requireArkModule** — ⚠️ API 不可用，降级为 globalThis 访问
- [x] **symbol 类型测试** — context.symbol/isSymbol/strictEqual + Symbol 属性键
- [x] **newScope + spawn(UIThread)** — ⚠️ API 不可用/崩溃，降级为 spawnTracked+safePostJSTask

### P1 — 类型/机制缺口 ✅ 已完成

- [x] **JSClass superClass 继承** — 父子类继承链 + instanceOf 父子类
- [x] **JSCodeError 异常 catch** — ⚠️ 类型不可用，降级为 catch(Exception)
- [x] **Utf16String / JSStringEx** — ⚠️ 宏不支持，macroEchoUtf16 改用 String
- [~] **JSArrayEx<T> / JSHashMapEx<K,V>** — ❌ 宏不支持，已取消

### P2 — 参数泛化加强 ✅ 已完成

- [x] **9 个 Float64(seed) 直用改为 randomNumber**
- [x] **13 个 runCase 薄壳透传 exceptionRatio 给 JS runner**
- [x] **dt_bigint 补超大 BigInt（1200位）+ 算术往返**
- [x] **dt_jspromise 补 Promise.all reject 短路 + catch 链**
- [x] **补字符串边界**：\0/BOM/emoji/ZWJ/ZWSP

### P3 — 特殊业务场景

- [x] **ArkTS↔CJ 多层异常链** — 4 层嵌套（ArkTS throw → CJ×3 层 catch+rethrow），验证 message 透传
- [ ] **跨语言 10000 次长循环压力测试** — 新增 mech_stress 模块
- [ ] **多 JSContext 隔离测试** — 创建两个 JSRuntime/JSContext，验证互不干扰
- [ ] **引用计数级内存泄漏量化测试** — 记录对象创建/释放计数，量化断言
- [ ] **资源上限测试** — ArrayBuffer/字符串/数组大小上限
- [ ] **16+ 线程×10000 迭代高强度并发** — 真并发（非 postJSTask 串行化）
- [ ] **清理冗余空操作用例** — testNewScopeInBindThread/testIsInBindThread 重复等

### P2.5 — 接口覆盖率补齐 ✅ 已完成（84% → 96%）

补齐 14 个 API，覆盖率从 84% 提升至 96%：

- [x] **JSValue 类型判断** — `typeof()` 返回 JSType 枚举，验证不同类型返回不同值
- [x] **JSValue 类型转换** — `asString(ctx)` / `toUtf16String()` / `asSymbol()` 往返验证
- [x] **JSObject** — `defineOwnAccessor()` getter/setter 三种用法
- [x] **JSFunction** — `call(thisArg:)` 显式传 this 验证
- [x] **JSCallInfo** — `.count` 参数数量验证
- [x] **JSBigInt** — `bitLen` 位长度验证（via `toBigInt().bitLen`）
- [x] **全局/运行时** — `global[name]` 下标语法读写 + `global.callMethod()` 统计修正
- [x] **JSClass** — `asClass()` JSValue→JSClass 往返 + `addMethod()` 注册方法 + `prototype` 原型链
- [~] **JSContext** — `newScope` SDK 无此方法签名，降级为直接执行代码
- [x] **@Interop Invisible** — MacroCounter 加 Invisible 成员，d.ts 不暴露验证

### 降级项 — 需 SDK 升级后补回

以下功能当前 SDK 版本不支持，代码已用替代方案编译通过，待 SDK 升级后可补回真正实现：

| 功能 | 当前状态 | 替代方案 | 根因 |
|------|----------|----------|------|
| `requireArkModule` | ⚠️降级 | globalThis 访问 | JSContext 无此成员 |
| `context.newScope` | ⚠️降级 | 直接执行代码 | API 签名不匹配 |
| `spawn(UIThread)` | ⚠️降级 | spawnTracked+safePostJSTask | `import ohos.base.UIThread` 导致模块加载递归崩溃 |
| `JSCodeError` | ⚠️降级 | catch(Exception) | 类型未声明 |
| `JSStringEx/JSArrayEx/JSHashMapEx` | ❌取消 | — | @Interop 宏不支持 IDL 类型 |
| `@Interop enum` | 📝已写好待解注释 | Int64 参数 | 旧 SDK 编译器不支持，代码已写好注释，SDK 升级后解注释即可 |

---

## 八、构建与运行

### 8.1 环境要求

- HarmonyOS SDK 26.0.0(26)
- 仓颉工具链（cjc/cjpm）
- DevEco Studio

### 8.2 构建

```bash
# 在 DevEco Studio 中打开工程
# 或命令行构建
hvigorw assembleHap
```

### 8.3 运行

1. 安装到设备/模拟器
2. 打开应用，进入 Select Tab 选择测试模块
3. 配置线程数 / 延迟 / 种子 / 异常率
4. 点 Start 开始测试
5. Log Tab 查看错误日志与统计

### 8.4 日志抓取

```bash
hdc shell hilog | grep HybridTest
```

关键日志标签：
- `Worker N: entered workerLoop` — worker 启动
- `safePostJSTask: dispatching` — 任务提交
- `Worker N iter K: run '...' ok, totalRun=N` — 测试完成
- `postJSTask callback error` — 测试异常
- `stopTest: totalRun=N` — 停止统计

### 8.5 错误日志文件

运行停止后，错误日志自动写入沙箱文件：
```
/data/storage/el2/base/haps/entry/files/ErrorLog-yyyyMMddHHmmss.csv
```
格式：`时间,API名,错误码,错误消息`

---

## 九、关键约束

### 9.1 仓颉整数溢出

仓颉默认整数乘法溢出抛 `OverflowException`，splitmix64/FNV 等依赖 wrapping 乘法的算法必须用 `wrappingMul`（`import std.overflow.*`）。

### 9.2 ArkTS 严格模式

- 禁止无类型对象字面量（`arkts-no-untyped-obj-literals`）
- 禁止混合类型数组字面量（`arkts-no-noninferrable-arr-literals`）
- 必须在 `Index.d.ts` 声明所有导出函数的 TS 类型

### 9.3 线程约束

- ArkTS 代码和互操作接口只能在 ArkTS 绑定线程执行
- 仓颉 spawn 线程访问 ArkTS 数据必须通过 `context.postJSTask` 回 ArkTS 线程
- `JSRuntime()` 只能在主线程创建
- **禁止 `import ohos.base.UIThread`** — 会导致模块加载递归崩溃（`package_global_init` → `ohos.ark_interop::package_global_init` → `registerTestModule` → 空指针）

### 9.4 并发集合

- `ConcurrentHashMap` 和 `ConcurrentLinkedQueue` 无 `clear()` 方法，清空需整体替换（`var` + 重新赋值）

### 9.5 UI 轮询防 OOM

- `setInterval` 频率不低于 2000ms（原 500ms 长时间运行导致 ArkUI `OldSpace::Merge` OOM）
- `@State` 变量只在值变化时更新（避免无条件 rerender 产生内存碎片）
- `errorLogQueue` 有上限 `ERROR_LOG_MAX=200`（FIFO 淘汰）

### 9.6 @Interop 宏限制

- 当前旧版 SDK 编译器不支持 `enum` 被 `@Interop` 修饰，代码已写好注释，SDK 升级后解注释即可
- `JSStringEx`/`JSArrayEx<T>`/`JSHashMapEx<K,V>`/`Utf16String` 在 @Interop 宏中不可用
- 异步函数 `@Interop[ArkTS, Async]` 中不支持 IDL 类型
- @Interop 宏与 `JSModule.registerModule` 注册的名称不能同名

---

## 十、相关文档

- [仓颉-ArkTS 互操作 Skill](.agents/skills/cangjie-arkts-interop/SKILL.md)
- [仓颉语言特性](.agents/skills/CangjieSkills/.agents/skills/cangjie-lang-features/SKILL.md)
- [仓颉标准库](.agents/skills/CangjieSkills/.agents/skills/cangjie-std/SKILL.md)
- [仓颉项目规范](.agents/skills/CangjieSkills/.agents/skills/cangjie-regulations/SKILL.md)

---

## 十一、版本历史

- **v2.1** — 接口覆盖率 84%→96%（补齐 14 个 API：typeof/asString/toUtf16String/asSymbol/defineOwnAccessor/call(thisArg:)/bitLen/count/global[name]/asClass/addMethod/prototype/Invisible + callMethod 统计修正）；newScope 仍降级（SDK 无此方法）；@Interop enum 已写好注释待 SDK 升级
- **v2.0** — 23 模块 / ~150 方法，新增 @Interop 宏模块/symbol/superClass/多层异常链/超大BigInt/Promise reject短路/参数泛化加强；5 项降级（SDK 限制）；OOM 修复
- **v1.0** — 22 模块 / 130 方法，互操作库方式覆盖完整，@Interop 宏与 requireArkModule 待补
