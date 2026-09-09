package ohos_app_cangjie_entry.tests.cl_arkts_call_cj

import ohos_app_cangjie_entry.utils.*
import ohos.ark_interop.*

let _ = registerTestModule("arkts_call_cj", { jsContext, sandboxFile => ArkTsCallCangjieTest(jsContext, sandboxFile) })

public class ArkTsCallCangjieTest <: KitTest {
    public init(jsContext: JSContext, sandboxFile: String) {
        super(jsContext, sandboxFile)
    }

    public override func getTestMethodNames(): Array<String> {
        ["testArkTsCallCjAdd", "testArkTsCallCjConcat", "testArkTsCallCjEcho", "testArkTsCallCjMax", "testArkTsCallCjCounter", "testArkTsCallCjAsyncDouble", "testArkTsCallCjThrow"]
    }

    public func testArkTsCallCjAdd(seed: UInt32, exceptionRatio: Float64): String {
        runCaseWith("runArkTsCallCjCase", 0, "testArkTsCallCjAdd", seed, exceptionRatio)
        "testArkTsCallCjAdd"
    }

    public func testArkTsCallCjConcat(seed: UInt32, exceptionRatio: Float64): String {
        runCaseWith("runArkTsCallCjCase", 1, "testArkTsCallCjConcat", seed, exceptionRatio)
        "testArkTsCallCjConcat"
    }

    public func testArkTsCallCjEcho(seed: UInt32, exceptionRatio: Float64): String {
        runCaseWith("runArkTsCallCjCase", 2, "testArkTsCallCjEcho", seed, exceptionRatio)
        "testArkTsCallCjEcho"
    }

    public func testArkTsCallCjMax(seed: UInt32, exceptionRatio: Float64): String {
        runCaseWith("runArkTsCallCjCase", 3, "testArkTsCallCjMax", seed, exceptionRatio)
        "testArkTsCallCjMax"
    }

    public func testArkTsCallCjCounter(seed: UInt32, exceptionRatio: Float64): String {
        runCaseWith("runArkTsCallCjCase", 4, "testArkTsCallCjCounter", seed, exceptionRatio)
        "testArkTsCallCjCounter"
    }

    public func testArkTsCallCjAsyncDouble(seed: UInt32, exceptionRatio: Float64): String {
        runCaseWith("runArkTsCallCjCase", 5, "testArkTsCallCjAsyncDouble", seed, exceptionRatio)
        "testArkTsCallCjAsyncDouble"
    }

    public func testArkTsCallCjThrow(seed: UInt32, exceptionRatio: Float64): String {
        runCaseWith("runArkTsCallCjCase", 6, "testArkTsCallCjThrow", seed, exceptionRatio)
        "testArkTsCallCjThrow"
    }
}
