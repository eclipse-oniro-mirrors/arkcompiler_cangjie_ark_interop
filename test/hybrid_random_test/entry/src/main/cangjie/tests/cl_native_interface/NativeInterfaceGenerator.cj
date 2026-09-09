package ohos_app_cangjie_entry.tests.cl_native_interface

import ohos_app_cangjie_entry.utils.*

public class NativeInterfaceGenerator {
    public static func randomNumber(seed: UInt32, exceptionRatio: Float64): Float64 {
        RandomUtil.randomNumber(UInt64(seed), exceptionRatio)
    }

    public static func randomString(seed: UInt32, exceptionRatio: Float64): String {
        RandomUtil.randomString(UInt64(seed), exceptionRatio)
    }

    public static func randomBool(seed: UInt32, exceptionRatio: Float64): Bool {
        RandomUtil.randomBool(UInt64(seed), exceptionRatio)
    }
}
