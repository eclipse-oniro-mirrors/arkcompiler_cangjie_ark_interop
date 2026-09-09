package ohos_app_cangjie_entry.tests.cl_cj_wrap_arkts_cb

import ohos_app_cangjie_entry.utils.*
import ohos.ark_interop.*

let _ = registerTestModule("cj_wrap_arkts_cb",
    {jsContext, sandboxFile => CjWrapArkTsCallbackTest(jsContext, sandboxFile)})

public class CjWrapArkTsCallbackTest <: KitTest {
    public init(jsContext: JSContext, sandboxFile: String) {
        super(jsContext, sandboxFile)
    }

    public override func getTestMethodNames(): Array<String> {
        ["testCjWrapSyncDoubler", "testCjWrapSyncUpper", "testCjWrapCompose", "testCjWrapExceptionCatch",
            "testCjWrapAsyncDoubler", "testCjWrapAsyncReject"]
    }

    public func testCjWrapSyncDoubler(seed: UInt32, exceptionRatio: Float64): String {
        runCaseWith("runCjWrapArkTsCallbackCase", 0, "testCjWrapSyncDoubler", seed, exceptionRatio)
        "testCjWrapSyncDoubler"
    }

    public func testCjWrapSyncUpper(seed: UInt32, exceptionRatio: Float64): String {
        runCaseWith("runCjWrapArkTsCallbackCase", 1, "testCjWrapSyncUpper", seed, exceptionRatio)
        "testCjWrapSyncUpper"
    }

    public func testCjWrapCompose(seed: UInt32, exceptionRatio: Float64): String {
        runCaseWith("runCjWrapArkTsCallbackCase", 2, "testCjWrapCompose", seed, exceptionRatio)
        "testCjWrapCompose"
    }

    public func testCjWrapExceptionCatch(seed: UInt32, exceptionRatio: Float64): String {
        runCaseWith("runCjWrapArkTsCallbackCase", 3, "testCjWrapExceptionCatch", seed, exceptionRatio)
        "testCjWrapExceptionCatch"
    }

    public func testCjWrapAsyncDoubler(seed: UInt32, exceptionRatio: Float64): String {
        runCaseWith("runCjWrapArkTsCallbackCase", 4, "testCjWrapAsyncDoubler", seed, exceptionRatio)
        "testCjWrapAsyncDoubler"
    }

    public func testCjWrapAsyncReject(seed: UInt32, exceptionRatio: Float64): String {
        runCaseWith("runCjWrapArkTsCallbackCase", 5, "testCjWrapAsyncReject", seed, exceptionRatio)
        "testCjWrapAsyncReject"
    }
}
