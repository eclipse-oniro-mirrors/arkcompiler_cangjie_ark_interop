package ohos_app_cangjie_entry.tests.dt_jsobject

import ohos_app_cangjie_entry.utils.*

public class JSObjectGenerator {
    public static func randomPropertyName(seed: UInt32, exceptionRatio: Float64): String {
        RandomUtil.randomPropertyName(UInt64(seed), exceptionRatio, useAbnormal: true)
    }

    public static func randomPropertyValue(seed: UInt32, exceptionRatio: Float64): Float64 {
        RandomUtil.randomNumber(UInt64(seed), exceptionRatio, maxMagnitude: 10000.0)
    }

    public static func randomString(seed: UInt32, exceptionRatio: Float64): String {
        RandomUtil.randomString(UInt64(seed), exceptionRatio)
    }
}
