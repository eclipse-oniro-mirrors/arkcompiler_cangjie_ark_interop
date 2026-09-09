package ohos_app_cangjie_entry.tests.dt_jsfunction

import ohos_app_cangjie_entry.utils.*

public class JSFunctionGenerator {
    public static func randomArgValue(seed: UInt32, exceptionRatio: Float64): Float64 {
        RandomUtil.randomNumber(UInt64(seed), exceptionRatio)
    }

    public static func randomReturnType(seed: UInt32): Int64 {
        RandomUtil.randomInt(UInt64(seed), 0.0, allowNegative: false, allowSpecial: false) % 5
    }
}
