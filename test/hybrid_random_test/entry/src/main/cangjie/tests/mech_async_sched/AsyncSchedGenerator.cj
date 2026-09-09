package ohos_app_cangjie_entry.tests.mech_async_sched

import ohos_app_cangjie_entry.utils.*

public class AsyncSchedGenerator {
    public static func randomWaitMs(seed: UInt64): Int64 {
        RandomUtil.randomInt(seed, 0.0, allowNegative: false, allowSpecial: false) % 50 + 10
    }

    public static func randomBool(seed: UInt64, exceptionRatio: Float64): Bool {
        RandomUtil.randomBool(seed, exceptionRatio)
    }
}
