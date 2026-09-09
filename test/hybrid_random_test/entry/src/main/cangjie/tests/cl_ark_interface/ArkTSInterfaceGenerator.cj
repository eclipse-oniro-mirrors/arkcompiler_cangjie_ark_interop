package ohos_app_cangjie_entry.tests.cl_ark_interface

import ohos_app_cangjie_entry.utils.*

public class ArkTSInterfaceGenerator {
    public static func randomNumber(seed: UInt32, exceptionRatio: Float64): Float64 {
        RandomUtil.randomNumber(UInt64(seed), exceptionRatio)
    }

    public static func randomString(seed: UInt32, exceptionRatio: Float64): String {
        RandomUtil.randomString(UInt64(seed), exceptionRatio)
    }

    public static func randomTypeCode(seed: UInt32): Int64 {
        RandomUtil.randomInt(UInt64(seed), 0.0, allowNegative: false, allowSpecial: false) % 6
    }

    public static func randomArrayIndex(seed: UInt32): Int64 {
        RandomUtil.randomInt(UInt64(seed), 0.0, allowNegative: false, allowSpecial: false) % 5
    }

    public static func randomPropertyName(seed: UInt32, exceptionRatio: Float64): String {
        RandomUtil.randomPropertyName(UInt64(seed), exceptionRatio, useAbnormal: true)
    }
}
