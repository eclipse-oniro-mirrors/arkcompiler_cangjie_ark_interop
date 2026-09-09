package ohos_app_cangjie_entry.tests.cl_cj_export

import ohos_app_cangjie_entry.utils.*

public class CangjieExportGenerator {
    public static func randomNumber(seed: UInt32, exceptionRatio: Float64): Float64 {
        RandomUtil.randomNumber(UInt64(seed), exceptionRatio)
    }

    public static func randomString(seed: UInt32, exceptionRatio: Float64): String {
        RandomUtil.randomString(UInt64(seed), exceptionRatio)
    }

    public static func randomPropertyName(seed: UInt32, exceptionRatio: Float64): String {
        let useAbnormal = exceptionRatio > 0.0
        if (useAbnormal && (seed % 2 == 0)) {
            RandomUtil.randomFrom(UInt64(seed), ABNORMAL_PROPERTY_NAMES)
        } else {
            RandomUtil.randomFrom(UInt64(seed), CJ_EXPORT_PROPERTY_NAMES)
        }
    }

    public static func randomReturnType(seed: UInt32): Int64 {
        RandomUtil.randomInt(UInt64(seed), 0.0, allowNegative: false, allowSpecial: false) % 5
    }
}
