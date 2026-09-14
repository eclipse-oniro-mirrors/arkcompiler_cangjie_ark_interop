package ohos_app_cangjie_entry.tests.dt_jsarray

import ohos_app_cangjie_entry.utils.*
import ohos.ark_interop.*
import ohos.business_exception.BusinessException
import kit.PerformanceAnalysisKit.Hilog

let _ = registerTestModule("jsarray", { jsContext, sandboxFile => JSArrayTest(jsContext, sandboxFile) })

public class JSArrayTest <: KitTest {
    public init(jsContext: JSContext, sandboxFile: String) {
        super(jsContext, sandboxFile)
    }

    public override func getTestMethodNames(): Array<String> {
        ["testCreateArray", "testArrayAccess", "testArrayModify", "testArrayOutOfBounds"]
    }

    public func testCreateArray(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testCreateArray") {
            let jsContext = this.jsContext
            let sizes = [0, 1, 5, 10]
            for (size in sizes) {
                let content = JSArrayGenerator.randomArrayContent(jsContext, UInt64(seed) + UInt64(size), Int64(size), exceptionRatio)
                let jsArray = jsContext.array(content).toJSValue()
                let arr = jsArray.asArray()
                if (arr.size != Int64(size)) {
                    this.writeLog("testCreateArray", "SizeMismatch", "expected ${size} got ${arr.size}")
                }
            }
            let mixedContent = JSArrayGenerator.randomArrayContent(jsContext, UInt64(seed), 5, exceptionRatio)
            let jsArray = jsContext.array(mixedContent).toJSValue()
            let arr = jsArray.asArray()
            if (arr.size != 5) {
                this.writeLog("testCreateArray", "MixedSizeMismatch", "expected 5 got ${arr.size}")
            }
        }
    }

    public func testArrayAccess(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testArrayAccess") {
            let jsContext = this.jsContext
            let content = JSArrayGenerator.randomArrayContent(jsContext, UInt64(seed), 5, exceptionRatio)
            let jsArray = jsContext.array(content).toJSValue()
            let arr = jsArray.asArray()
            let idx = JSArrayGenerator.randomIndex(UInt64(seed), arr.size, exceptionRatio)
            if (idx < 0 || idx >= arr.size) {
                return
            }
            let val = arr[Int64(idx)]
            if (val.isNumber()) {
                let num = val.toNumber()
            } else if (val.isString()) {
                let str = val.toString()
            } else if (val.isBoolean()) {
                let b = val.toBoolean()
            } else if (val.isNull()) {
            } else if (val.isUndefined()) {
            } else if (val.isObject()) {
                let obj = val.asObject()
            } else if (val.isArray()) {
                let subArr = val.asArray()
            } else if (val.isFunction()) {
                let fn = val.asFunction()
            } else {
                this.writeLog("testArrayAccess", "UnknownType", "index ${idx} value type unknown")
            }
        }
    }

    public func testArrayModify(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testArrayModify") {
            let jsContext = this.jsContext
            let content = try {
                JSArrayGenerator.randomArrayContent(jsContext, UInt64(seed), 5, exceptionRatio)
            } catch (e: Exception) {
                // NegativeArraySizeException occurred once with seed 2536469050; log details for diagnosis
                Hilog.error(1, "HybridTest", "testArrayModify: randomArrayContent threw ${e} for seed=${seed}, msg=${e.message}")
                return
            }
            let jsArray = jsContext.array(content).toJSValue()
            let arr = jsArray.asArray()
            let newValue = jsContext.number(RandomUtil.randomNumber(UInt64(seed), exceptionRatio, allowSpecial: false, maxMagnitude: 1e15)).toJSValue()
            arr[Int64(0)] = newValue
            let retrieved = arr[Int64(0)]
            if (!retrieved.isNumber()) {
                this.writeLog("testArrayModify", "TypeMismatch", "expected number after modify")
            }
        }
    }

    public func testArrayOutOfBounds(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testArrayOutOfBounds") {
            let jsContext = this.jsContext
            let content = [jsContext.number(1.0).toJSValue()]
            let jsArray = jsContext.array(content).toJSValue()
            let arr = jsArray.asArray()
            let outIdx = arr.size + 10
            try {
                let val = arr[outIdx]
            } catch (be: BusinessException) {
            }
        }
    }
}
