package ohos_app_cangjie_entry.tests.dt_jsclass

import ohos_app_cangjie_entry.utils.*

public class JSClassGenerator {
    public static func randomPropertyName(seed: UInt32, exceptionRatio: Float64): String {
        if (exceptionRatio > 0.0 && (seed % 3 == 0)) {
            RandomUtil.randomFrom(UInt64(seed), ABNORMAL_PROPERTY_NAMES)
        } else {
            RandomUtil.randomFrom(UInt64(seed), JS_CLASS_PROPERTY_NAMES)
        }
    }

    public static func randomNumberValue(seed: UInt32, exceptionRatio: Float64): Float64 {
        RandomUtil.randomNumber(UInt64(seed), exceptionRatio)
    }
}
