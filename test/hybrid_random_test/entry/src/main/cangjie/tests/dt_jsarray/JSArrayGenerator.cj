package ohos_app_cangjie_entry.tests.dt_jsarray

import ohos_app_cangjie_entry.utils.*
import ohos.ark_interop.*
import std.random.Random

public class JSArrayGenerator {
    public static func randomArraySize(seed: UInt64): Int64 {
        RandomUtil.randomInt(seed, 0.0, allowNegative: false, allowSpecial: false) % 21
    }

    public static func randomArrayContent(jsContext: JSContext, seed: UInt64, size: Int64, exceptionRatio: Float64): Array<JSValue> {
        let rng = Random(seed)
        Array<JSValue>(size, { i: Int64 =>
            let elemSeed = RandomUtil.mixSeed(seed, UInt64(0), apiName: "arr", callSeq: i)
            let typeChoice = rng.nextInt64(7)
            if (typeChoice == 0) {
                let n = RandomUtil.randomNumber(elemSeed, exceptionRatio)
                jsContext.number(n).toJSValue()
            } else if (typeChoice == 1) {
                let s = RandomUtil.randomString(elemSeed, exceptionRatio, allowLong: false, maxLength: 50)
                jsContext.string(s).toJSValue()
            } else if (typeChoice == 2) {
                let b = RandomUtil.randomBool(elemSeed, exceptionRatio)
                jsContext.boolean(b).toJSValue()
            } else if (typeChoice == 3) {
                jsContext.null().toJSValue()
            } else if (typeChoice == 4) {
                jsContext.undefined().toJSValue()
            } else if (typeChoice == 5) {
                let innerSize = RandomUtil.randomInt(elemSeed, 0.0, allowNegative: false, allowSpecial: false) % 5
                let inner = randomArrayContent(jsContext, elemSeed + 1, innerSize, exceptionRatio)
                jsContext.array(inner).toJSValue()
            } else {
                let obj = jsContext.object()
                obj.setProperty("k", jsContext.number(RandomUtil.randomNumber(elemSeed, exceptionRatio, allowSpecial: false)).toJSValue())
                obj.toJSValue()
            }
        })
    }

    public static func randomIndex(seed: UInt64, size: Int64, exceptionRatio: Float64): Int64 {
        RandomUtil.randomIndex(seed, size, exceptionRatio)
    }
}
