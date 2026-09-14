package ohos_app_cangjie_entry.tests.mech_loader_cache

import ohos_app_cangjie_entry.utils.*
import ohos.ark_interop.*

// 问题单#8：【arkts互操作】互操作加载器返回空的JSObject
// 现象：interop loader 的缓存机制导致返回了空的 JSObject
// 根因：创建运行时实例每次都创建（每次 ArkTS 运行时实例都触发模块重新加载），
//       但模块缓存机制在某些路径下会返回空 JSObject
// 涉及接口：JSModule.registerModule、getCachedModule、finishLoad（js_module.cj）
//          ArkTS import { cjBusinessAdd, ... } from 'libohos_app_cangjie_entry.so'
// 复现思路：
//   - 仓颉侧无法直接访问 ArkTS 模块导入符号（这些符号不在 globalThis 上）
//   - 参考已有 runCaseWith 调度模式（如 JsContextBindTest/UvloopReleaseTest）：
//     ArkTS 侧通过 injectLoaderCacheRunner 注入 runLoaderCacheCase runner，
//     runner 在自身作用域内直接调用 import 进来的 cjBusinessAdd 等导出，
//     覆盖 loader 缓存读取路径；若缓存返回空，会抛 TypeError 或返回 undefined
//   - 多 caseId 覆盖：单轮访问、批量访问、反复缓存读取、多轮压力

let _ = registerTestModule("loader_cache", { jsContext, sandboxFile => LoaderEmptyObjectTest(jsContext, sandboxFile) })

public class LoaderEmptyObjectTest <: KitTest {
    public init(jsContext: JSContext, sandboxFile: String) {
        super(jsContext, sandboxFile)
    }

    public override func getTestMethodNames(): Array<String> {
        [
            "testExportedObjectNonEmpty",
            "testExportedFunctionNonEmpty",
            "testRepeatedModuleAccess",
            "testExportedObjectRound"
        ]
    }

    /// 基础场景：反复调用 ArkTS 侧已导入的导出对象（cjBusinessAdd），验证不为空
    /// 修复前：缓存机制在某些路径下会返回空 JSObject（undefined）
    public func testExportedObjectNonEmpty(seed: UInt32, exceptionRatio: Float64): String {
        runCaseWith("runLoaderCacheCase", 0, "testExportedObjectNonEmpty", seed, exceptionRatio)
        "testExportedObjectNonEmpty"
    }

    /// 批量验证多个导出函数都不为空
    public func testExportedFunctionNonEmpty(seed: UInt32, exceptionRatio: Float64): String {
        runCaseWith("runLoaderCacheCase", 1, "testExportedFunctionNonEmpty", seed, exceptionRatio)
        "testExportedFunctionNonEmpty"
    }

    /// 反复访问模块：模拟多运行时实例场景下缓存读取
    /// 修复前：缓存路径在某些时序下返回空对象
    public func testRepeatedModuleAccess(seed: UInt32, exceptionRatio: Float64): String {
        runCaseWith("runLoaderCacheCase", 2, "testRepeatedModuleAccess", seed, exceptionRatio)
        "testRepeatedModuleAccess"
    }

    /// 多轮循环：覆盖概率性返回空 JSObject 的场景
    public func testExportedObjectRound(seed: UInt32, exceptionRatio: Float64): String {
        runCaseWith("runLoaderCacheCase", 3, "testExportedObjectRound", seed, exceptionRatio)
        "testExportedObjectRound"
    }
}
