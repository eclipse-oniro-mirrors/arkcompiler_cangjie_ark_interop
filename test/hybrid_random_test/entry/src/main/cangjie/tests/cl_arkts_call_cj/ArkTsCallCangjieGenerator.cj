package ohos_app_cangjie_entry.tests.cl_arkts_call_cj

import ohos_app_cangjie_entry.utils.*

public class ArkTsCallCangjieGenerator {
    public static func randomNumber(seed: UInt32, exceptionRatio: Float64): Float64 {
        RandomUtil.randomNumber(UInt64(seed), exceptionRatio)
    }

    public static func randomInt(seed: UInt32, exceptionRatio: Float64): Int64 {
        RandomUtil.randomInt(UInt64(seed), exceptionRatio, allowSpecial: false)
    }

    public static func randomString(seed: UInt32, exceptionRatio: Float64): String {
        RandomUtil.randomString(UInt64(seed), exceptionRatio, allowLong: false, maxLength: 100)
    }

    public static func randomArray(seed: UInt32, exceptionRatio: Float64, size: Int64): Array<Float64> {
        Array<Float64>(size, { i: Int64 =>
            let elemSeed = RandomUtil.mixSeed(UInt64(seed), UInt64(0), apiName: "arr", callSeq: i)
            RandomUtil.randomNumber(elemSeed, exceptionRatio, allowSpecial: false, maxMagnitude: 1e6)
        })
    }
}
