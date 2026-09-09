package ohos_app_cangjie_entry.tests.cl_interop_macro

import ohos_app_cangjie_entry.utils.*

public class InteropMacroGenerator {
    public static func randomNumber(seed: UInt32, exceptionRatio: Float64): Float64 {
        RandomUtil.randomNumber(UInt64(seed), exceptionRatio, allowSpecial: false, maxMagnitude: 10000.0)
    }

    public static func randomInt64(seed: UInt32, exceptionRatio: Float64): Int64 {
        RandomUtil.randomInt(UInt64(seed), exceptionRatio, allowSpecial: false, bitWidth: 32)
    }

    public static func randomString(seed: UInt32, exceptionRatio: Float64): String {
        RandomUtil.randomString(UInt64(seed), exceptionRatio, allowEmpty: false, allowControl: false, allowUnicode: true, allowLong: false, maxLength: 100)
    }
}
