package ohos_app_cangjie_entry.tests.cl_global_arkts

import ohos_app_cangjie_entry.utils.*

public class GlobalArkTSGenerator {
    public static func randomNumber(seed: UInt32, exceptionRatio: Float64): Float64 {
        RandomUtil.randomNumber(UInt64(seed), exceptionRatio, allowSpecial: false, maxMagnitude: 10000.0)
    }

    public static func randomString(seed: UInt32, exceptionRatio: Float64): String {
        RandomUtil.randomString(UInt64(seed), exceptionRatio, allowLong: false, maxLength: 50)
    }

    public static func randomGlobalPropName(seed: UInt32): String {
        RandomUtil.randomFrom(UInt64(seed), ARKTS_GLOBAL_NAMES)
    }
}
