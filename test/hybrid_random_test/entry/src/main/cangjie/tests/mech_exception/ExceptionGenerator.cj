package ohos_app_cangjie_entry.tests.mech_exception

import ohos_app_cangjie_entry.utils.*

public class ExceptionGenerator {
    public static func randomErrorType(seed: UInt64): Int64 {
        RandomUtil.randomInt(seed, 0.0, allowNegative: false, allowSpecial: false) % 3
    }

    public static func randomErrorMessage(seed: UInt64, exceptionRatio: Float64): String {
        if (exceptionRatio > 0.0 && (seed % 5 == 0)) {
            RandomUtil.randomString(seed, exceptionRatio, allowLong: false, maxLength: 50)
        } else {
            let template = RandomUtil.randomFrom(seed, EXCEPTION_MESSAGE_TEMPLATES)
            let suffix = RandomUtil.randomInt(seed + 1, 0.0, allowNegative: false, allowSpecial: false) % 10000
            "${template} ${suffix}"
        }
    }
}
