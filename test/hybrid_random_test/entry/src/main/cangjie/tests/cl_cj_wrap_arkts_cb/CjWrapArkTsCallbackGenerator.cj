package ohos_app_cangjie_entry.tests.cl_cj_wrap_arkts_cb

import ohos_app_cangjie_entry.utils.*

public class CjWrapArkTsCallbackGenerator {
    public static func randomNumber(seed: UInt32, exceptionRatio: Float64): Float64 {
        RandomUtil.randomNumber(UInt64(seed), exceptionRatio, allowSpecial: false)
    }

    public static func randomString(seed: UInt32, exceptionRatio: Float64): String {
        RandomUtil.randomString(UInt64(seed), exceptionRatio, allowLong: false, maxLength: 50)
    }

    public static func shouldThrow(seed: UInt32, exceptionRatio: Float64): Bool {
        RandomUtil.randomBool(UInt64(seed), exceptionRatio)
    }
}
