package ohos_app_cangjie_entry.tests.dt_jspromise

import ohos_app_cangjie_entry.utils.*

public class JSPromiseGenerator {
    public static func randomResolveValue(seed: UInt32, exceptionRatio: Float64): Float64 {
        RandomUtil.randomNumber(UInt64(seed), exceptionRatio)
    }

    public static func randomRejectMessage(seed: UInt32, exceptionRatio: Float64): String {
        if (exceptionRatio > 0.0 && (seed % 4 == 0)) {
            RandomUtil.randomString(UInt64(seed), exceptionRatio, allowLong: false, maxLength: 50)
        } else {
            RandomUtil.randomFrom(UInt64(seed), REJECT_MESSAGE_TEMPLATES)
        }
    }
}
