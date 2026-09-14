package ohos_app_cangjie_entry.utils

import std.random.Random
import std.collection.ArrayList
import std.overflow.*

public let ABNORMAL_PROPERTY_NAMES: Array<String> = ["", "var", "if", "123abc", "我的名字", "my-name", "constructor", "__proto__", "toString", "null", "\u{0}", "\u{FEFF}", "🎨", "\u{200D}", "\u{200B}"]

public let NORMAL_PROPERTY_NAMES: Array<String> = ["prop1", "name", "value", "age", "count", "data", "id", "key", "result", "status"]

public let ARKTS_GLOBAL_NAMES: Array<String> = ["ArkTools", "console", "Math", "JSON", "parseInt", "parseFloat", "isNaN", "isFinite", "Number", "String", "Boolean", "Date", "RegExp", "Error", "Array", "Object", "Function", "Symbol", "Promise", "Map", "Set"]

public let ARKTS_OBJ_PROPERTY_NAMES: Array<String> = ["num", "str", "flag", "nil", "value", "name", "count", "data"]

public let CJ_EXPORT_PROPERTY_NAMES: Array<String> = ["value", "name", "count", "data", "result", "item"]

public let JS_CLASS_PROPERTY_NAMES: Array<String> = ["prop0", "prop1", "prop2", "name", "age", "value"]

public let REJECT_MESSAGE_TEMPLATES: Array<String> = ["Error occurred", "Operation failed", "Invalid input", "Timeout exceeded", "Permission denied"]

public let EXCEPTION_MESSAGE_TEMPLATES: Array<String> = ["test error", "stability error", "interop exception"]

public class RandomUtil {
    public static func mixSeed(globalSeed: UInt64, threadId: UInt64, apiName!: String = "", callSeq!: Int64 = 0): UInt64 {
        var z = globalSeed ^ threadId.wrappingMul(0x9E3779B97F4A7C15u64)
        let apiHash = hashString(apiName)
        z = z ^ (apiHash ^ UInt64(callSeq).wrappingMul(0xBB67AE8584CAA73Bu64))
        z = (z ^ (z >> 30)).wrappingMul(0xBF58476D1CE4E5B9u64)
        z = (z ^ (z >> 27)).wrappingMul(0x94D049BB133111EBu64)
        z = z ^ (z >> 31)
        z
    }

    public static func mixSeedSimple(globalSeed: UInt64, threadId: UInt64): UInt64 {
        var z = globalSeed ^ threadId.wrappingMul(0x9E3779B97F4A7C15u64)
        z = (z ^ (z >> 30)).wrappingMul(0xBF58476D1CE4E5B9u64)
        z = (z ^ (z >> 27)).wrappingMul(0x94D049BB133111EBu64)
        z = z ^ (z >> 31)
        z
    }

    public static func hashString(s: String): UInt64 {
        var h = 0xCBF29CE484222325u64
        for (c in s) {
            h = h ^ UInt64(UInt32(c))
            h = h.wrappingMul(0x100000001B3u64)
        }
        h
    }

    public static func randomNumber(seed: UInt64, exceptionRatio: Float64,
        allowNegative!: Bool = true,
        allowSpecial!: Bool = true,
        maxMagnitude!: Float64 = 1e18
    ): Float64 {
        let rng = Random(seed)
        if (allowSpecial && rng.nextFloat64() < exceptionRatio) {
            generateAbnormalNumber(rng)
        } else {
            generateNormalNumber(rng, allowNegative, allowSpecial, maxMagnitude)
        }
    }

    public static func randomInt(seed: UInt64, exceptionRatio: Float64,
        allowNegative!: Bool = true,
        allowSpecial!: Bool = true,
        bitWidth!: Int64 = 64
    ): Int64 {
        let rng = Random(seed)
        if (allowSpecial && rng.nextFloat64() < exceptionRatio) {
            generateAbnormalInt(rng, bitWidth)
        } else {
            generateNormalInt(rng, allowNegative, bitWidth)
        }
    }

    public static func randomString(seed: UInt64, exceptionRatio: Float64,
        allowEmpty!: Bool = true,
        allowControl!: Bool = true,
        allowUnicode!: Bool = true,
        allowLong!: Bool = true,
        maxLength!: Int64 = 10000,
        charset!: String = "full"
    ): String {
        let rng = Random(seed)
        let abnormalThreshold = if (allowEmpty || allowControl || allowUnicode || allowLong) { exceptionRatio } else { 0.0 }
        if (rng.nextFloat64() < abnormalThreshold) {
            generateAbnormalString(rng, allowEmpty, allowControl, allowUnicode, allowLong, maxLength)
        } else {
            generateNormalString(rng, maxLength, charset)
        }
    }

    public static func randomBool(seed: UInt64, exceptionRatio: Float64): Bool {
        let rng = Random(seed)
        let r = rng.nextFloat64()
        if (r < exceptionRatio * 0.5) {
            true
        } else if (r < exceptionRatio) {
            false
        } else {
            rng.nextBool()
        }
    }

    public static func randomArray<T>(seed: UInt64, exceptionRatio: Float64, elementGen: (UInt64) -> T,
        allowEmpty!: Bool = true,
        maxSize!: Int64 = 100
    ): Array<T> {
        let rng = Random(seed)
        var size = rng.nextInt64(maxSize) + 1
        if (allowEmpty && rng.nextFloat64() < exceptionRatio * 0.5) {
            size = 0
        }
        Array<T>(size, { i: Int64 =>
            let elemSeed = seed ^ UInt64(i + 1).wrappingMul(0x9E3779B97F4A7C15u64)
            elementGen(elemSeed)
        })
    }

    public static func randomIndex(seed: UInt64, size: Int64, exceptionRatio: Float64): Int64 {
        if (size == 0) {
            return -1
        }
        let rng = Random(seed + 999)
        if (rng.nextFloat64() < exceptionRatio) {
            let offset = rng.nextInt64(10) + 1
            size + offset
        } else {
            rng.nextInt64(size)
        }
    }

    public static func randomFrom<T>(seed: UInt64, candidates: Array<T>): T {
        let rng = Random(seed)
        let idx = rng.nextInt64(candidates.size)
        candidates[idx]
    }

    public static func randomPropertyName(seed: UInt64, exceptionRatio: Float64,
        useAbnormal!: Bool = true
    ): String {
        let rng = Random(seed)
        if (useAbnormal && rng.nextFloat64() < exceptionRatio) {
            randomFrom(seed + 1, ABNORMAL_PROPERTY_NAMES)
        } else {
            randomFrom(seed + 2, NORMAL_PROPERTY_NAMES)
        }
    }

    private static func generateNormalNumber(rng: Random, allowNegative: Bool, allowSpecial: Bool, maxMagnitude: Float64): Float64 {
        let normalTypes = rng.nextInt64(10)
        match (normalTypes) {
            case 0 =>
                rng.nextFloat64() * maxMagnitude
            case 1 =>
                Float64(rng.nextInt64(1000000))
            case 2 =>
                if (allowNegative) { -rng.nextFloat64() * maxMagnitude } else { rng.nextFloat64() * maxMagnitude }
            case 3 =>
                if (allowNegative) { -Float64(rng.nextInt64(1000000)) } else { Float64(rng.nextInt64(1000000)) }
            case 4 => 0.0
            case 5 => 1.0
            case 6 =>
                if (allowNegative) { -1.0 } else { 1.0 }
            case 7 => rng.nextFloat64()
            case 8 =>
                if (allowSpecial) { Float64(rng.nextInt64()) - Float64(rng.nextInt64()) } else { rng.nextFloat64() * 1000.0 }
            case _ =>
                if (allowNegative) { (rng.nextFloat64() - 0.5) * maxMagnitude * 2.0 } else { rng.nextFloat64() * maxMagnitude }
        }
    }

    private static func generateAbnormalNumber(rng: Random): Float64 {
        let abnormalTypes = rng.nextInt64(7)
        match (abnormalTypes) {
            case 0 => Float64.NaN
            case 1 => Float64.Inf
            case 2 => -Float64.Inf
            case 3 => Float64.Max
            case 4 => -Float64.Max
            case 5 => Float64.Min
            case _ => -0.0
        }
    }

    private static func generateNormalInt(rng: Random, allowNegative: Bool, bitWidth: Int64): Int64 {
        let normalTypes = rng.nextInt64(8)
        match (normalTypes) {
            case 0 =>
                // rng.nextInt64() may return negative values; honor allowNegative=false
                // to prevent NegativeArraySizeException in callers using size = result % N.
                let v = if (bitWidth >= 64) { rng.nextInt64() } else { rng.nextInt64(Int64(UInt32.Max)) }
                if (allowNegative || v >= 0) { v } else { -v }
            case 1 =>
                if (allowNegative) { -rng.nextInt64(1000000) - 1 } else { rng.nextInt64(1000000) }
            case 2 => rng.nextInt64(1000)
            case 3 => 0
            case 4 => 1
            case 5 =>
                if (allowNegative) { -1 } else { 1 }
            case 6 =>
                if (allowNegative) { rng.nextInt64() - rng.nextInt64() } else { rng.nextInt64(1000000000) }
            case _ =>
                if (allowNegative) { rng.nextInt64() - rng.nextInt64() } else { rng.nextInt64(100000000) }
        }
    }

    private static func generateAbnormalInt(rng: Random, bitWidth: Int64): Int64 {
        let abnormalTypes = rng.nextInt64(6)
        match (abnormalTypes) {
            case 0 =>
                if (bitWidth >= 64) { Int64.Max } else { Int64(Int32.Max) }
            case 1 =>
                if (bitWidth >= 64) { Int64.Min } else { Int64(Int32.Min) }
            case 2 => 0
            case 3 => 1
            case 4 => -1
            case _ =>
                if (bitWidth >= 64) { Int64.Max - rng.nextInt64(1000) } else { Int64(Int32.Max) - rng.nextInt64(1000) }
        }
    }

    private static func generateNormalString(rng: Random, maxLength: Int64, charset: String): String {
        let length = rng.nextInt64(min(maxLength, 50)) + 1
        let chars = ArrayList<Rune>()
        for (_ in 0..length) {
            let codePoint = if (charset == "ascii") {
                rng.nextInt64(26) + 65
            } else {
                rng.nextInt64(95) + 32
            }
            chars.add(Rune(codePoint))
        }
        var sb = StringBuilder()
        for (c in chars) {
            sb.append(c.toString())
        }
        sb.toString()
    }

    private static func generateAbnormalString(rng: Random, allowEmpty: Bool, allowControl: Bool, allowUnicode: Bool, allowLong: Bool, maxLength: Int64): String {
        let candidates = ArrayList<Int64>()
        if (allowEmpty) { candidates.add(0) }
        if (allowControl) { candidates.add(1) }
        if (allowUnicode) { candidates.add(2) }
        if (allowLong) { candidates.add(3) }
        if (candidates.size == 0) {
            return generateNormalString(rng, maxLength, "full")
        }
        let choiceIdx = rng.nextInt64(candidates.size)
        let choice = candidates[choiceIdx]
        match (choice) {
            case 0 => ""
            case 1 => "\0\0\0\0"
            case 2 =>
                let unicodeStrings = ["🌈", "中文测试", "🎉🎊", "Ελληνικά", "Привет", "مرحبا", "\u{FEFF}test", "a\u{200D}b", "x\u{200B}y", "🌍🚀💻世界"]
                let idx = rng.nextInt64(unicodeStrings.size)
                unicodeStrings[idx]
            case 3 =>
                let len = rng.nextInt64(min(maxLength, 10000)) + 1000
                let chars = ArrayList<Rune>()
                for (_ in 0..len) {
                    var codePoint = rng.nextInt64(0x10FFFF) + 1
                    // 跳过代理区码点 (0xD800-0xDFFF)，它们不是合法的 Unicode 标量值
                    if (codePoint >= 0xD800 && codePoint <= 0xDFFF) {
                        codePoint = 0x10000
                    }
                    chars.add(Rune(codePoint))
                }
                var sb = StringBuilder()
                for (c in chars) {
                    sb.append(c.toString())
                }
                sb.toString()
            case _ => ""
        }
    }
}
