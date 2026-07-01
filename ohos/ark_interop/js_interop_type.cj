/*
 * Copyright (c) 2025 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

 // The Cangjie API is in Beta. For Details on its capabilities and limitations, please refer to the README file.

package ohos.ark_interop

@!APILevel[
    since: "22"
]
sealed interface JSInteropByte {}

/**
 * Byte extended JSInteropByte interface.
 */
@!APILevel[
    since: "22"
]
extend Byte <: JSInteropByte {}

/**
 * The interface is used to implement extension methods for types that can be utilized in declarative interop macros.
 */
@!APILevel[
    since: "22"
]
public interface JSInteropType<T> {
    /**
     * Init from JSValue.
     *
     * @param { JSContext } context - ArkTS interoperability context.
     * @param { JSValue } input - ArkTS unified type.
     * @returns { T } Cangjie type.
     */
    @!APILevel[
        since: "22"
    ]
    static func fromJSValue(context: JSContext, input: JSValue): T

    /**
     * Convert to JSValue.
     *
     * @param { JSContext } context - ArkTS interoperability context.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22"
    ]
    func toJSValue(context: JSContext): JSValue

    /**
     * Get ArkTS type name corresponding to the Cangjie type.
     *
     * @returns { String } Converted ArkTS type name.
     */
    @!APILevel[
        since: "22"
    ]
    static func toArktsType(): String
}

/**
 * Int8 extended JSInteropType interface.
 */
@!APILevel[
    since: "22"
]
extend Int8 <: JSInteropType<Int8> {
    /**
     * Convert JSValue to Int8.
     *
     * @param { JSContext } _ - ArkTS interoperability context.
     * @param { JSValue } input - The ArkTS unified type.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { Int8 } Cangjie type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    @OverflowWrapping
    public static func fromJSValue(_: JSContext, input: JSValue): Int8 {
        let value = input.toNumber()
        if (value > Float64(Int8.Max) || value < Float64(Int8.Min)) {
            throw integerOverflow()
        }
        Int8(value)
    }

    /**
     * Convert Int8 to JSValue.
     *
     * @param { JSContext } context - ArkTS interoperability context.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    @OverflowWrapping
    public func toJSValue(context: JSContext): JSValue {
        return context.number(Int32(this)).toJSValue()
    }

    /**
     * Get ArkTS type name of Int8.
     *
     * @returns { String } Converted ArkTS type name.
     */
    @!APILevel[
        since: "22"
    ]
    public static func toArktsType(): String {
        "number"
    }
}

/**
 * Int16 extended JSInteropType interface.
 */
@!APILevel[
    since: "22"
]
extend Int16 <: JSInteropType<Int16> {
    /**
     * Convert JSValue to Int16.
     *
     * @param { JSContext } _ - ArkTS interoperability context.
     * @param { JSValue } input - The ArkTS unified type.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { Int16 } Cangjie type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    @OverflowWrapping
    public static func fromJSValue(_: JSContext, input: JSValue): Int16 {
        let value = input.toNumber()
        if (value > Float64(Int16.Max) || value < Float64(Int16.Min)) {
            throw integerOverflow()
        }
        Int16(value)
    }

    /**
     * Convert Int16 to JSValue.
     *
     * @param { JSContext } context - ArkTS interoperability context.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    @OverflowWrapping
    public func toJSValue(context: JSContext): JSValue {
        return context.number(Int32(this)).toJSValue()
    }

    /**
     * Get ArkTS type name of Int16.
     *
     * @returns { String } Converted ArkTS type name.
     */
    @!APILevel[
        since: "22"
    ]
    public static func toArktsType(): String {
        "number"
    }
}

/**
 * Int32 extended JSInteropType interface.
 */
@!APILevel[
    since: "22"
]
extend Int32 <: JSInteropType<Int32> {
    /**
     * Convert JSValue to Int32.
     *
     * @param { JSContext } _ - ArkTS interoperability context.
     * @param { JSValue } input - The ArkTS unified type.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { Int32 } Cangjie type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    @OverflowWrapping
    public static func fromJSValue(_: JSContext, input: JSValue): Int32 {
        let value = input.toNumber()
        if (value > Float64(Int32.Max) || value < Float64(Int32.Min)) {
            throw integerOverflow()
        }
        Int32(value)
    }

    /**
     * Convert Int32 to JSValue.
     *
     * @param { JSContext } context - ArkTS interoperability context.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    @OverflowWrapping
    public func toJSValue(context: JSContext): JSValue {
        context.number(this).toJSValue()
    }

    /**
     * Get ArkTS type name of Int32.
     *
     * @returns { String } Converted ArkTS type name.
     */
    @!APILevel[
        since: "22"
    ]
    public static func toArktsType(): String {
        "number"
    }
}

/**
 * Int64 extended JSInteropType interface.
 */
@!APILevel[
    since: "22"
]
extend Int64 <: JSInteropType<Int64> {
    /**
     * Convert JSValue to Int64.
     *
     * @param { JSContext } _ - ArkTS interoperability context.
     * @param { JSValue } input - The ArkTS unified type.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { Int64 } Cangjie type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    @OverflowWrapping
    public static func fromJSValue(_: JSContext, input: JSValue): Int64 {
        let value = input.toNumber()
        if (value > Float64(Int64.Max) || value < Float64(Int64.Min)) {
            throw integerOverflow()
        }
        Int64(value)
    }

    /**
     * Convert Int64 to JSValue.
     *
     * @param { JSContext } context - ArkTS interoperability context.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    @OverflowWrapping
    public func toJSValue(context: JSContext): JSValue {
        let dValue = Float64(this)
        if (Int64(dValue) != this) {
            throw integerOverflow()
        }
        return context.number(dValue).toJSValue()
    }

    /**
     * Get ArkTS type name of Int64.
     *
     * @returns { String } Converted ArkTS type name.
     */
    @!APILevel[
        since: "22"
    ]
    public static func toArktsType(): String {
        "number"
    }
}

/**
 * UInt8 extended JSInteropType interface.
 */
@!APILevel[
    since: "22"
]
extend UInt8 <: JSInteropType<UInt8> {
    /**
     * Convert JSValue to UInt8.
     *
     * @param { JSContext } _ - ArkTS interoperability context.
     * @param { JSValue } input - The ArkTS unified type.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { UInt8 } Cangjie type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    @OverflowWrapping
    public static func fromJSValue(_: JSContext, input: JSValue): UInt8 {
        let value = Int64(input.toNumber())
        if (value < 0 || value > Int64(UInt8.Max)) {
            throw integerOverflow()
        }
        return UInt8(value)
    }

    /**
     * Convert UInt8 to JSValue.
     *
     * @param { JSContext } context - ArkTS interoperability context.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    @OverflowWrapping
    public func toJSValue(context: JSContext): JSValue {
        return context.number(Int32(this)).toJSValue()
    }

    /**
     * Get ArkTS type name of UInt8.
     *
     * @returns { String } Converted ArkTS type name.
     */
    @!APILevel[
        since: "22"
    ]
    public static func toArktsType(): String {
        "number"
    }
}

/**
 * UInt16 extended JSInteropType interface.
 */
@!APILevel[
    since: "22"
]
extend UInt16 <: JSInteropType<UInt16> {
    /**
     * Convert JSValue to UInt16.
     *
     * @param { JSContext } _ - ArkTS interoperability context.
     * @param { JSValue } input - The ArkTS unified type.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { UInt16 } Cangjie type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    @OverflowWrapping
    public static func fromJSValue(_: JSContext, input: JSValue): UInt16 {
        let value = input.toNumber()
        if (value > Float64(UInt16.Max) || value < 0.0) {
            throw integerOverflow()
        }
        UInt16(value)
    }

    /**
     * Convert UInt16 to JSValue.
     *
     * @param { JSContext } context - ArkTS interoperability context.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    @OverflowWrapping
    public func toJSValue(context: JSContext): JSValue {
        return context.number(Int32(this)).toJSValue()
    }

    /**
     * Get ArkTS type name of UInt16.
     *
     * @returns { String } Converted ArkTS type name.
     */
    @!APILevel[
        since: "22"
    ]
    public static func toArktsType(): String {
        "number"
    }
}

/**
 * UInt32 extended JSInteropType interface.
 */
@!APILevel[
    since: "22"
]
extend UInt32 <: JSInteropType<UInt32> {
    /**
     * Convert JSValue to UInt32.
     *
     * @param { JSContext } _ - ArkTS interoperability context.
     * @param { JSValue } input - The ArkTS unified type.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { UInt32 } Cangjie type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    @OverflowWrapping
    public static func fromJSValue(_: JSContext, input: JSValue): UInt32 {
        let value = input.toNumber()
        if (value < 0.0 || value > Float64(UInt32.Max)) {
            throw integerOverflow()
        }
        return UInt32(Int64(value))
    }

    /**
     * Convert UInt32 to JSValue.
     *
     * @param { JSContext } context - ArkTS interoperability context.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    @OverflowWrapping
    public func toJSValue(context: JSContext): JSValue {
        if (Int64(this) <= Int64(Int32.Max)) {
            return context.number(Int32(this)).toJSValue()
        } else {
            return context.number(Float64(this)).toJSValue()
        }
    }

    /**
     * Get ArkTS type name of UInt32.
     *
     * @returns { String } Converted ArkTS type name.
     */
    @!APILevel[
        since: "22"
    ]
    public static func toArktsType(): String {
        "number"
    }
}

/**
 * UInt64 extended JSInteropType interface.
 */
@!APILevel[
    since: "22"
]
extend UInt64 <: JSInteropType<UInt64> {
    /**
     * Convert JSValue to UInt64.
     *
     * @param { JSContext } _ - ArkTS interoperability context.
     * @param { JSValue } input - The ArkTS unified type.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { UInt64 } Cangjie type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    @OverflowWrapping
    public static func fromJSValue(_: JSContext, input: JSValue): UInt64 {
        let value = input.toNumber()
        if (value < 0.0 || value > Float64(UInt64.Max)) {
            throw integerOverflow()
        }
        return UInt64(value)
    }

    /**
     * Convert UInt64 to JSValue.
     *
     * @param { JSContext } context - ArkTS interoperability context.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    @OverflowWrapping
    public func toJSValue(context: JSContext): JSValue {
        let dValue = Float64(this)
        if (UInt64(dValue) != this) {
            throw integerOverflow()
        }
        return context.number(dValue).toJSValue()
    }

    /**
     * Get ArkTS type name of UInt64.
     *
     * @returns { String } Converted ArkTS type name.
     */
    @!APILevel[
        since: "22"
    ]
    public static func toArktsType(): String {
        "number"
    }
}

/**
 * Float16 extended JSInteropType interface.
 */
@!APILevel[
    since: "22"
]
extend Float16 <: JSInteropType<Float16> {
    /**
     * Convert JSValue to Float16.
     *
     * @param { JSContext } _ - ArkTS interoperability context.
     * @param { JSValue } input - The ArkTS unified type.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { Float16 } Cangjie type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    @OverflowWrapping
    public static func fromJSValue(_: JSContext, input: JSValue): Float16 {
        return Float16(input.toNumber())
    }

    /**
     * Convert Float16 to JSValue.
     *
     * @param { JSContext } context - ArkTS interoperability context.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toJSValue(context: JSContext): JSValue {
        return context.number(Float64(this)).toJSValue()
    }

    /**
     * Get ArkTS type name of Float16.
     *
     * @returns { String } Converted ArkTS type name.
     */
    @!APILevel[
        since: "22"
    ]
    public static func toArktsType(): String {
        "number"
    }
}

/**
 * Float32 extended JSInteropType interface.
 */
@!APILevel[
    since: "22"
]
extend Float32 <: JSInteropType<Float32> {
    /**
     * Convert JSValue to Float32.
     *
     * @param { JSContext } _ - ArkTS interoperability context.
     * @param { JSValue } input - The ArkTS unified type.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { Float32 } Cangjie type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    @OverflowWrapping
    public static func fromJSValue(_: JSContext, input: JSValue): Float32 {
        return Float32(input.toNumber())
    }

    /**
     * Convert Float32 to JSValue.
     *
     * @param { JSContext } context - ArkTS interoperability context.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toJSValue(context: JSContext): JSValue {
        return context.number(Float64(this)).toJSValue()
    }

    /**
     * Get ArkTS type name of Float32.
     *
     * @returns { String } Converted ArkTS type name.
     */
    @!APILevel[
        since: "22"
    ]
    public static func toArktsType(): String {
        "number"
    }
}

/**
 * Float64 extended JSInteropType interface.
 */
@!APILevel[
    since: "22"
]
extend Float64 <: JSInteropType<Float64> & JSKeyable {
    /**
     * Convert JSValue to Float64.
     *
     * @param { JSContext } _ - ArkTS interoperability context.
     * @param { JSValue } input - The ArkTS unified type.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { Float64 } Cangjie type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func fromJSValue(_: JSContext, input: JSValue): Float64 {
        return input.toNumber()
    }

    /**
     * Convert Float64 to JSValue.
     *
     * @param { JSContext } context - ArkTS interoperability context.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toJSValue(context: JSContext): JSValue {
        return context.number(this).toJSValue()
    }

    /**
     * Get ArkTS type name of Float64.
     *
     * @returns { String } Converted ArkTS type name.
     */
    @!APILevel[
        since: "22"
    ]
    public static func toArktsType(): String {
        "number"
    }
}

/**
 * Bool extended JSInteropType interface.
 */
@!APILevel[
    since: "22"
]
extend Bool <: JSInteropType<Bool> {
    /**
     * Convert JSValue to Bool.
     *
     * @param { JSContext } _ - ArkTS interoperability context.
     * @param { JSValue } input - The ArkTS unified type.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { Bool } Cangjie type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func fromJSValue(_: JSContext, input: JSValue): Bool {
        return input.toBoolean()
    }

    /**
     * Convert Bool to JSValue.
     *
     * @param { JSContext } context - ArkTS interoperability context.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toJSValue(context: JSContext): JSValue {
        return context.boolean(this).toJSValue()
    }

    /**
     * Get ArkTS type name of Bool.
     *
     * @returns { String } Converted ArkTS type name.
     */
    @!APILevel[
        since: "22"
    ]
    public static func toArktsType(): String {
        "boolean"
    }
}

/**
 * String extended JSInteropType interface.
 */
@!APILevel[
    since: "22"
]
extend String <: JSInteropType<String> {
    /**
     * Convert JSValue to String.
     *
     * @param { JSContext } _ - ArkTS interoperability context.
     * @param { JSValue } input - The ArkTS unified type.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { String } Cangjie type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func fromJSValue(_: JSContext, input: JSValue): String {
        return input.toString()
    }

    /**
     * Get ArkTS type name of String.
     *
     * @returns { String } Converted ArkTS type name.
     */
    @!APILevel[
        since: "22"
    ]
    public static func toArktsType(): String {
        "string"
    }
}

/**
 * JSString extended JSInteropType interface.
 */
@!APILevel[
    since: "22"
]
extend JSString <: JSInteropType<JSString> {
    /**
     * Convert JSValue to JSString.
     *
     * @param { JSContext } _ - ArkTS interoperability context.
     * @param { JSValue } input - The ArkTS unified type.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { JSString } Cangjie type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func fromJSValue(_: JSContext, input: JSValue): JSString {
        return input.asString()
    }

    /**
     * Get ArkTS type name of JSString.
     *
     * @returns { String } Converted ArkTS type name.
     */
    @!APILevel[
        since: "22"
    ]
    public static func toArktsType(): String {
        "string"
    }
}

/**
 * Unit extended JSInteropType interface.
 */
@!APILevel[
    since: "22"
]
extend Unit <: JSInteropType<Unit> {
    /**
     * Convert JSValue to Unit.
     *
     * @param { JSContext } _ - ArkTS interoperability context.
     * @param { JSValue } _ - The ArkTS unified type.
     * @returns { Unit } Cangjie type.
     */
    @!APILevel[
        since: "22"
    ]
    public static func fromJSValue(_: JSContext, _: JSValue): Unit {}

    /**
     * Convert Unit to JSValue.
     *
     * @param { JSContext } context - ArkTS interoperability context.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toJSValue(context: JSContext): JSValue {
        return context.undefined().toJSValue()
    }

    /**
     * Get ArkTS type name of Unit.
     *
     * @returns { String } Converted ArkTS type name.
     */
    @!APILevel[
        since: "22"
    ]
    public static func toArktsType(): String {
        "undefined"
    }
}

/**
 * Option<T> extended JSInteropType interface.
 */
@!APILevel[
    since: "22"
]
extend<T> Option<T> <: JSInteropType<Option<T>> where T <: JSInteropType<T> {
    /**
     * Convert JSValue to Option<T>.
     *
     * @param { JSContext } context - ArkTS interoperability context.
     * @param { JSValue } input - The ArkTS unified type.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Option<T> } Cangjie type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func fromJSValue(context: JSContext, input: JSValue): Option<T> {
        if (input.isUndefined()) {
            None<T>
        } else {
            Some(T.fromJSValue(context, input))
        }
    }

    /**
     * Convert Option<T> to JSValue.
     *
     * @param { JSContext } context - ArkTS interoperability context.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toJSValue(context: JSContext): JSValue {
        match (this) {
            case Some(T) => T.toJSValue(context)
            case None => context.undefined().toJSValue()
        }
    }

    /**
     * Get ArkTS type name of Option<T>.
     *
     * @returns { String } Converted ArkTS type name.
     */
    @!APILevel[
        since: "22"
    ]
    public static func toArktsType(): String {
        "union"
    }
}

/**
 * Array<T> extended JSInteropType interface.
 */
@!APILevel[
    since: "22"
]
extend<T> Array<T> <: JSInteropType<Array<T>> where T <: JSInteropByte {
    /**
     * Convert JSValue to Array<T>.
     *
     * @param { JSContext } _ - ArkTS interoperability context.
     * @param { JSValue } input - The ArkTS unified type.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { Array<T> } Cangjie type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func fromJSValue(_: JSContext, input: JSValue): Array<T> {
        return (input.asArrayBuffer().readBytes() as Array<T>) ?? throw outsideError("JSValue to buffer error.")
    }

    /**
     * Convert Array to JSValue.
     *
     * @param { JSContext } context - ArkTS interoperability context.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toJSValue(context: JSContext): JSValue {
        return context.arrayBuffer((this as Array<Byte>) ?? throw outsideError("Buffer to jsvalue error.")).toJSValue()
    }

    /**
     * Get ArkTS type name of Array.
     *
     * @returns { String } Converted ArkTS type name.
     */
    @!APILevel[
        since: "22"
    ]
    public static func toArktsType(): String {
        "ArrayBuffer"
    }
}
