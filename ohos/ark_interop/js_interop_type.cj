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

@!APILevel[since: "22"]
sealed interface JSInteropByte {}

/**
 * Byte extended JSInteropByte interface.
 */
@!APILevel[since: "22"]
extend Byte <: JSInteropByte {}

/**
 * The interface is used to implement extension methods for types that can be utilized in declarative interop macros.
 */
@!APILevel[since: "22"]
public interface JSInteropType<T> {
    /**
     * Init from JSValue.
     */
    @!APILevel[since: "22"]
    static func fromJSValue(context: JSContext, input: JSValue): T

    /**
     * Convert to JSValue.
     */
    @!APILevel[since: "22"]
    func toJSValue(context: JSContext): JSValue

    /**
     * Get ArkTS type name corresponding to the Cangjie type.
     */
    @!APILevel[since: "22"]
    static func toArktsType(): String
}

/**
 * Int8 extended JSInteropType interface.
 */
@!APILevel[since: "22"]
extend Int8 <: JSInteropType<Int8> {
    /**
     * Convert JSValue to Int8.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     */
    @!APILevel[
        since: "22"
    ]
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
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func toJSValue(context: JSContext): JSValue {
        return context.number(Int32(this)).toJSValue()
    }

    /**
     * Get corresponding ArkTS type name of Int8.
     */
    @!APILevel[since: "22"]
    public static func toArktsType(): String {
        "number"
    }
}

/**
 * Int16 extended JSInteropType interface.
 */
@!APILevel[since: "22"]
extend Int16 <: JSInteropType<Int16> {
    /**
     * Convert JSValue to Int16.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     */
    @!APILevel[
        since: "22"
    ]
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
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func toJSValue(context: JSContext): JSValue {
        return context.number(Int32(this)).toJSValue()
    }

    /**
     * Get corresponding ArkTS type name of Int16.
     */
    @!APILevel[since: "22"]
    public static func toArktsType(): String {
        "number"
    }
}

/**
 * Int32 extended JSInteropType interface.
 */
@!APILevel[since: "22"]
extend Int32 <: JSInteropType<Int32> {
    /**
     * Convert JSValue to Int32.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     */
    @!APILevel[
        since: "22"
    ]
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
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func toJSValue(context: JSContext): JSValue {
        context.number(this).toJSValue()
    }

    /**
     * Get corresponding ArkTS type name of Int32.
     */
    @!APILevel[since: "22"]
    public static func toArktsType(): String {
        "number"
    }
}

/**
 * Int64 extended JSInteropType interface.
 */
@!APILevel[since: "22"]
extend Int64 <: JSInteropType<Int64> {
    /**
     * Convert JSValue to Int64.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     */
    @!APILevel[
        since: "22"
    ]
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
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func toJSValue(context: JSContext): JSValue {
        if (Int64(Float64(this)) != this) {
            throw integerOverflow()
        }
        return context.number(Float64(this)).toJSValue()
    }

    /**
     * Get corresponding ArkTS type name of Int64.
     */
    @!APILevel[since: "22"]
    public static func toArktsType(): String {
        "number"
    }
}

/**
 * UInt8 extended JSInteropType interface.
 */
@!APILevel[since: "22"]
extend UInt8 <: JSInteropType<UInt8> {
    /**
     * Convert JSValue to UInt8.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     */
    @!APILevel[
        since: "22"
    ]
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
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func toJSValue(context: JSContext): JSValue {
        return context.number(Int32(this)).toJSValue()
    }

    /**
     * Get corresponding ArkTS type name of UInt8.
     */
    @!APILevel[since: "22"]
    public static func toArktsType(): String {
        "number"
    }
}

/**
 * UInt16 extended JSInteropType interface.
 */
@!APILevel[since: "22"]
extend UInt16 <: JSInteropType<UInt16> {
    /**
     * Convert JSValue to UInt16.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     */
    @!APILevel[
        since: "22"
    ]
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
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func toJSValue(context: JSContext): JSValue {
        return context.number(Int32(this)).toJSValue()
    }

    /**
     * Get corresponding ArkTS type name of UInt16.
     */
    @!APILevel[since: "22"]
    public static func toArktsType(): String {
        "number"
    }
}

/**
 * UInt32 extended JSInteropType interface.
 */
@!APILevel[since: "22"]
extend UInt32 <: JSInteropType<UInt32> {
    /**
     * Convert JSValue to UInt32.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     */
    @!APILevel[
        since: "22"
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
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    @OverflowWrapping
    public func toJSValue(context: JSContext): JSValue {
        return context.number(Int32(this)).toJSValue()
    }

    /**
     * Get corresponding ArkTS type name of UInt32.
     */
    @!APILevel[since: "22"]
    public static func toArktsType(): String {
        "number"
    }
}

/**
 * UInt64 extended JSInteropType interface.
 */
@!APILevel[since: "22"]
extend UInt64 <: JSInteropType<UInt64> {
    /**
     * Convert JSValue to UInt64.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     */
    @!APILevel[
        since: "22"
    ]
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
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func toJSValue(context: JSContext): JSValue {
        if (UInt64(Float64(this)) != this) {
            throw integerOverflow()
        }
        return context.number(Float64(this)).toJSValue()
    }

    /**
     * Get corresponding ArkTS type name of UInt64.
     */
    @!APILevel[since: "22"]
    public static func toArktsType(): String {
        "number"
    }
}

/**
 * Float16 extended JSInteropType interface.
 */
@!APILevel[since: "22"]
extend Float16 <: JSInteropType<Float16> {
    /**
     * Convert JSValue to Float16.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     */
    @!APILevel[
        since: "22"
    ]
    public static func fromJSValue(_: JSContext, input: JSValue): Float16 {
        return Float16(input.toNumber())
    }

    /**
     * Convert Float16 to JSValue.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func toJSValue(context: JSContext): JSValue {
        return context.number(Float64(this)).toJSValue()
    }

    /**
     * Get corresponding ArkTS type name of Float16.
     */
    @!APILevel[since: "22"]
    public static func toArktsType(): String {
        "number"
    }
}

/**
 * Float32 extended JSInteropType interface.
 */
@!APILevel[since: "22"]
extend Float32 <: JSInteropType<Float32> {
    /**
     * Convert JSValue to Float32.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     */
    @!APILevel[
        since: "22"
    ]
    public static func fromJSValue(_: JSContext, input: JSValue): Float32 {
        return Float32(input.toNumber())
    }

    /**
     * Convert Float32 to JSValue.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func toJSValue(context: JSContext): JSValue {
        return context.number(Float64(this)).toJSValue()
    }

    /**
     * Get corresponding ArkTS type name of Float32.
     */
    @!APILevel[since: "22"]
    public static func toArktsType(): String {
        "number"
    }
}

/**
 * Float64 extended JSInteropType interface.
 */
@!APILevel[since: "22"]
extend Float64 <: JSInteropType<Float64> & JSKeyable {
    /**
     * Convert JSValue to Float64.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     */
    @!APILevel[
        since: "22"
    ]
    public static func fromJSValue(_: JSContext, input: JSValue): Float64 {
        return input.toNumber()
    }

    /**
     * Convert Float64 to JSValue.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func toJSValue(context: JSContext): JSValue {
        return context.number(this).toJSValue()
    }

    /**
     * Get corresponding ArkTS type name of Float64.
     */
    @!APILevel[since: "22"]
    public static func toArktsType(): String {
        "number"
    }
}

/**
 * Bool extended JSInteropType interface.
 */
@!APILevel[since: "22"]
extend Bool <: JSInteropType<Bool> {
    /**
     * Convert JSValue to Bool.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     */
    @!APILevel[
        since: "22"
    ]
    public static func fromJSValue(_: JSContext, input: JSValue): Bool {
        return input.toBoolean()
    }

    /**
     * Convert Bool to JSValue.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func toJSValue(context: JSContext): JSValue {
        return context.boolean(this).toJSValue()
    }

    /**
     * Get corresponding ArkTS type name of Bool.
     */
    @!APILevel[since: "22"]
    public static func toArktsType(): String {
        "boolean"
    }
}

/**
 * String extended JSInteropType interface.
 */
@!APILevel[since: "22"]
extend String <: JSInteropType<String> {
    /**
     * Convert JSValue to String.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     */
    @!APILevel[
        since: "22"
    ]
    public static func fromJSValue(_: JSContext, input: JSValue): String {
        return input.toString()
    }

    /**
     * Get corresponding ArkTS type name of String.
     */
    @!APILevel[since: "22"]
    public static func toArktsType(): String {
        "string"
    }
}

/**
 * JSString extended JSInteropType interface.
 */
@!APILevel[since: "22"]
extend JSString <: JSInteropType<JSString> {
    /**
     * Convert JSValue to JSString.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     */
    @!APILevel[
        since: "22"
    ]
    public static func fromJSValue(_: JSContext, input: JSValue): JSString {
        return input.asString()
    }

    /**
     * Get corresponding ArkTS type name of JSString.
     */
    @!APILevel[since: "22"]
    public static func toArktsType(): String {
        "string"
    }
}

/**
 * Unit extended JSInteropType interface.
 */
@!APILevel[since: "22"]
extend Unit <: JSInteropType<Unit> {
    /**
     * Convert JSValue to Unit.
     */
    @!APILevel[since: "22"]
    public static func fromJSValue(_: JSContext, _: JSValue): Unit {}

    /**
     * Convert Unit to JSValue.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func toJSValue(context: JSContext): JSValue {
        return context.undefined().toJSValue()
    }

    /**
     * Get corresponding ArkTS type name of Unit.
     */
    @!APILevel[since: "22"]
    public static func toArktsType(): String {
        "undefined"
    }
}

/**
 * Option<T> extended JSInteropType interface.
 */
@!APILevel[since: "22"]
extend<T> Option<T> <: JSInteropType<Option<T>> where T <: JSInteropType<T> {
    /**
     * Convert JSValue to Option<T>.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
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
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func toJSValue(context: JSContext): JSValue {
        match (this) {
            case Some(T) => T.toJSValue(context)
            case None => context.undefined().toJSValue()
        }
    }

    /**
     * Get corresponding ArkTS type name of Option<T>.
     */
    @!APILevel[since: "22"]
    public static func toArktsType(): String {
        "union"
    }
}

/**
 * Array<T> extended JSInteropType interface.
 */
@!APILevel[since: "22"]
extend<T> Array<T> <: JSInteropType<Array<T>> where T <: JSInteropByte {
     /**
     * Init Int8 from JSValue.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     */
    @!APILevel[
        since: "22"
    ]
    public static func fromJSValue(_: JSContext, input: JSValue): Array<T> {
        return (input.asArrayBuffer().readBytes() as Array<T>) ?? throw outsideError("JSValue to buffer error.")
    }

    /**
     * Convert Array to JSValue.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func toJSValue(context: JSContext): JSValue {
        return context.arrayBuffer((this as Array<Byte>) ?? throw outsideError("Buffer to jsvalue error.")).toJSValue()
    }

    /**
     * Get corresponding ArkTS type name of Array.
     */
    @!APILevel[since: "22"]
    public static func toArktsType(): String {
        "ArrayBuffer"
    }
}
