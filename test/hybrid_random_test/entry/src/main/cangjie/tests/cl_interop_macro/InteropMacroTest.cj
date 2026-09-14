package ohos_app_cangjie_entry.tests.cl_interop_macro

import ohos_app_cangjie_entry.utils.*
import ohos.ark_interop.*

let _ = registerTestModule("interop_macro", { jsContext, sandboxFile => InteropMacroTest(jsContext, sandboxFile) })

public class InteropMacroTest <: KitTest {
    public init(jsContext: JSContext, sandboxFile: String) {
        super(jsContext, sandboxFile)
    }

    public override func getTestMethodNames(): Array<String> {
        [
            "testMacroAdd",
            "testMacroGreet",
            "testMacroAsyncDouble",
            "testMacroWithCallback",
            "testMacroClass",
            "testMacroEnum",
            "testMacroParamGeneralization",
            "testMacroEchoUtf16",
            "testMacroInvisible",
            "testMacroColorByName"
        ]
    }

    public func testMacroAdd(seed: UInt32, exceptionRatio: Float64): String {
        runCaseWith("runInteropMacroCase", 0, "testMacroAdd", seed, exceptionRatio)
        "testMacroAdd"
    }

    public func testMacroGreet(seed: UInt32, exceptionRatio: Float64): String {
        runCaseWith("runInteropMacroCase", 1, "testMacroGreet", seed, exceptionRatio)
        "testMacroGreet"
    }

    public func testMacroAsyncDouble(seed: UInt32, exceptionRatio: Float64): String {
        runCaseWith("runInteropMacroCase", 2, "testMacroAsyncDouble", seed, exceptionRatio)
        "testMacroAsyncDouble"
    }

    public func testMacroWithCallback(seed: UInt32, exceptionRatio: Float64): String {
        runCaseWith("runInteropMacroCase", 3, "testMacroWithCallback", seed, exceptionRatio)
        "testMacroWithCallback"
    }

    public func testMacroClass(seed: UInt32, exceptionRatio: Float64): String {
        runCaseWith("runInteropMacroCase", 4, "testMacroClass", seed, exceptionRatio)
        "testMacroClass"
    }

    public func testMacroEnum(seed: UInt32, exceptionRatio: Float64): String {
        runCaseWith("runInteropMacroCase", 5, "testMacroEnum", seed, exceptionRatio)
        "testMacroEnum"
    }

    public func testMacroParamGeneralization(seed: UInt32, exceptionRatio: Float64): String {
        runCaseWith("runInteropMacroCase", 6, "testMacroParamGeneralization", seed, exceptionRatio)
        "testMacroParamGeneralization"
    }

    public func testMacroEchoUtf16(seed: UInt32, exceptionRatio: Float64): String {
        runCaseWith("runInteropMacroCase", 9, "testMacroEchoUtf16", seed, exceptionRatio)
        "testMacroEchoUtf16"
    }

    public func testMacroInvisible(seed: UInt32, exceptionRatio: Float64): String {
        runCaseWith("runInteropMacroCase", 7, "testMacroInvisible", seed, exceptionRatio)
        "testMacroInvisible"
    }

    public func testMacroColorByName(seed: UInt32, exceptionRatio: Float64): String {
        runCaseWith("runInteropMacroCase", 8, "testMacroColorByName", seed, exceptionRatio)
        "testMacroColorByName"
    }
}
