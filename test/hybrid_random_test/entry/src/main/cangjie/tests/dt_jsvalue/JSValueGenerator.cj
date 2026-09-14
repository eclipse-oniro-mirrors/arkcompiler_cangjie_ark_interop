package ohos_app_cangjie_entry.tests.dt_jsvalue

import ohos_app_cangjie_entry.utils.*

public class JSValueGenerator {
    public static func randomBool(seed: UInt32, exceptionRatio: Float64): Bool {
        RandomUtil.randomBool(UInt64(seed), exceptionRatio)
    }

    public static func randomNumber(seed: UInt32, exceptionRatio: Float64): Float64 {
        RandomUtil.randomNumber(UInt64(seed), exceptionRatio)
    }

    public static func randomString(seed: UInt32, exceptionRatio: Float64): String {
        RandomUtil.randomString(UInt64(seed), exceptionRatio)
    }

    public static func randomStringSimple(seed: UInt32, length: Int64): String {
        RandomUtil.randomString(UInt64(seed), 0.0, allowEmpty: false, allowControl: false, allowUnicode: false, allowLong: false, maxLength: length, charset: "ascii")
    }

    public static func randomInt64(seed: UInt32, upper: Int64): Int64 {
        RandomUtil.randomInt(UInt64(seed), 0.0, allowNegative: false, allowSpecial: false) % upper
    }
}
