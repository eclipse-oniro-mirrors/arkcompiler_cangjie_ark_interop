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

@FastNative
foreign func ARKTS_GetValueType(env: JSEnv, value: JSValue_): JSType

@FastNative
foreign func ARKTS_StrictEqual(env: JSEnv, a: JSValue_, b: JSValue_): Bool

@FastNative
foreign func ARKTS_IsNull(value: JSValue_): Bool

@FastNative
foreign func ARKTS_IsUndefined(value: JSValue_): Bool

@FastNative
foreign func ARKTS_IsBool(value: JSValue_): Bool

@FastNative
foreign func ARKTS_IsNumber(value: JSValue_): Bool

@FastNative
foreign func ARKTS_IsString(env: JSEnv, value: JSValue_): Bool

@FastNative
foreign func ARKTS_IsCallable(env: JSEnv, value: JSValue_): Bool

@FastNative
foreign func ARKTS_IsObject(env: JSEnv, value: JSValue_): Bool

@FastNative
foreign func ARKTS_IsArray(env: JSEnv, value: JSValue_): Bool

@FastNative
foreign func ARKTS_IsPromise(env: JSEnv, value: JSValue_): Bool

@FastNative
foreign func ARKTS_IsClass(env: JSEnv, value: JSValue_): Bool

@FastNative
foreign func ARKTS_IsExternal(env: JSEnv, value: JSValue_): Bool

@FastNative
foreign func ARKTS_GetValueNumber(value: JSValue_): Float64

@FastNative
foreign func ARKTS_GetValueBool(value: JSValue_): Bool

@C
protected struct JSValue_ {
    JSValue_(let value: UInt64) {}
}

/**
 * ArkTs null.
 */
@!APILevel[since: "22"]
public struct JSNull {
    let value: JSValue

    init(value: JSValue) {
        this.value = value
    }

    /**
     * Convert JSNull to JSValue.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func toJSValue(): JSValue {
        value.context.checkLifecycleAndThread()
        value
    }
}

/**
 * ArkTs undefined.
 */
@!APILevel[since: "22"]
public struct JSUndefined {
    let value: JSValue

    init(value: JSValue) {
        this.value = value
    }

    /**
     * Convert JSUndefined to JSValue.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func toJSValue(): JSValue {
        value.context.checkLifecycleAndThread()
        value
    }
}

/**
 * ArkTs boolean.
 */
@!APILevel[since: "22"]
public struct JSBoolean {
    let value: JSValue

    init(value: JSValue) {
        this.value = value
    }

    /**
     * Convert JSBoolean to JSValue.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func toJSValue(): JSValue {
        value.context.checkLifecycleAndThread()
        value
    }

    /**
     * Convert JSBoolean to Cangjie Bool.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func toBool(): Bool {
        value.toBoolean()
    }
}

/**
 * ArkTs number.
 */
@!APILevel[since: "22"]
public struct JSNumber {
    let value: JSValue

    init(value: JSValue) {
        this.value = value
    }

    /**
     * Convert JSNumber to JSValue.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func toJSValue(): JSValue {
        value.context.checkLifecycleAndThread()
        value
    }

    /**
     * Convert JSNumber to Cangjie Float64.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func toFloat64(): Float64 {
        value.toNumber()
    }
}

/**
 * JSValue is unified type in the ArkTS runtime and alse the data type that directly interacts with the ArkTS runtime.
 */
@!APILevel[since: "22"]
public struct JSValue {
    protected JSValue(
        let context: JSContext,
        protected let value: JSValue_
    ) {}

    /**
     * Get the type of JSValue.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func typeof(): JSType {
        let env = context.env // do lifecycle check and thread check here.
        unsafe { ARKTS_GetValueType(env, value) }
    }

    /**
     * Perform a strict equality check (type consistency and value equality) on two JSValues.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func strictEqual(target: JSValue): Bool {
        let env = context.env // do lifecycle check and thread check here.
        unsafe { ARKTS_StrictEqual(env, value, target.value) }
    }

    /**
     * Check whether JSValue is null.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func isNull(): Bool {
        context.checkLifecycleAndThread()
        unsafe { ARKTS_IsNull(value) }
    }

    /**
     * Check whether JSValue is undefined.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func isUndefined(): Bool {
        context.checkLifecycleAndThread()
        unsafe { ARKTS_IsUndefined(value) }
    }

    /**
     * Check whether JSValue is boolean.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func isBoolean(): Bool {
        context.checkLifecycleAndThread()
        unsafe { ARKTS_IsBool(value) }
    }

    /**
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func isNumber(): Bool {
        context.checkLifecycleAndThread()
        unsafe { ARKTS_IsNumber(value) }
    }

    /**
     * Check whether JSValue is string.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func isString(): Bool {
        let env = context.env // do lifecycle check and thread check here.
        unsafe { ARKTS_IsString(env, value) }
    }

    /**
     * Check whether JSValue is function.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func isFunction(): Bool {
        let env = context.env // do lifecycle check and thread check here.
        unsafe { ARKTS_IsCallable(env, value) }
    }

    /**
     * Check whether JSValue is object.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func isObject(): Bool {
        let env = context.env // do lifecycle check and thread check here.
        unsafe { ARKTS_IsObject(env, value) }
    }

    /**
     * Check whether JSValue is array.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func isArray(): Bool {
        let env = context.env // do lifecycle check and thread check here.
        unsafe { ARKTS_IsArray(env, value) }
    }

    /**
     * Check whether JSValue is Promise.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func isPromise(): Bool {
        let env = context.env // do lifecycle check and thread check here.
        unsafe { ARKTS_IsPromise(env, value) }
    }

    /**
     * Check whether JSValue is ArkTS class.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func isClass(): Bool {
        let env = context.env // do lifecycle check and thread check here.
        unsafe { ARKTS_IsClass(env, value) }
    }

    /**
     * Check whether JSValue is an external object (ArkTS reference of a Cangjie object).
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func isExternal(): Bool {
        let env = context.env // do lifecycle check and thread check here.
        unsafe { ARKTS_IsExternal(env, value) }
    }

    /**
     * Check whether JSValue is symbol.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func isSymbol(): Bool {
        let env = context.env // do lifecycle check and thread check here.
        unsafe { ARKTS_IsSymbol(env, value) }
    }

    /**
     * Check whether JSValue is ArrayBuffer.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func isArrayBuffer(): Bool {
        let env = context.env // do lifecycle check and thread check here.
        unsafe { ARKTS_IsArrayBuffer(env, value) }
    }

    func isMap(): Bool {
        if (!isObject()) {
            return false
        }
        JSObject.instanceOfByValue(context.env, value, context.constants.mapFuncs.clazz.innerValue)
    }

    /**
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     */
    func asMap(): JSMap {
        if (!isMap()) {
            throw jsTypeMisMatch("Map", typeof())
        }
        JSMap(context, value)
    }

    /**
     * Convert JSValue to JSNull. If the failure occurs, Exception will be throwed.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     */
    @!APILevel[
        since: "22"
    ]
    public func asNull(): JSNull {
        if (!isNull()) {
            throw jsTypeMisMatch(JSType.NULL, typeof())
        }
        JSNull(this)
    }

    /**
     * Convert JSValue to JSUndefined. If the failure occurs, Exception will be throwed.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     */
    @!APILevel[
        since: "22"
    ]
    public func asUndefined(): JSUndefined {
        if (!isUndefined()) {
            throw jsTypeMisMatch(JSType.UNDEFINED, typeof())
        }
        JSUndefined(this)
    }

    /**
     * Convert JSValue to JSBoolean. If the failure occurs, Exception will be throwed.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     */
    @!APILevel[
        since: "22"
    ]
    public func asBoolean(): JSBoolean {
        if (!isBoolean()) {
            throw jsTypeMisMatch(JSType.BOOLEAN, typeof())
        }
        JSBoolean(this)
    }
    
    /**
     * Convert JSValue to JSNumber. If the failure occurs, Exception will be throwed.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     */
    @!APILevel[
        since: "22"
    ]
    public func asNumber(): JSNumber {
        if (!isNumber()) {
            throw jsTypeMisMatch(JSType.NUMBER, typeof())
        }
        JSNumber(this)
    }
    
    /**
     * Convert JSValue to Bool. If the failure occurs, Exception will be throwed.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     */
    @!APILevel[
        since: "22"
    ]
    public func toBoolean(): Bool {
        if (!isBoolean()) {
            throw jsTypeMisMatch(JSType.BOOLEAN, typeof())
        }
        unsafe { ARKTS_GetValueBool(value) }
    }

    /**
     * Convert JSValue to Float64. If the failure occurs, Exception will be throwed.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     */
    @!APILevel[
        since: "22"
    ]
    public func toNumber(): Float64 {
        if (!isNumber()) {
            throw jsTypeMisMatch(JSType.NUMBER, typeof())
        }
        unsafe { ARKTS_GetValueNumber(value) }
    }

    /**
     * Convert JSValue to String. If the failure occurs, Exception will be throwed.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String {
        if (!isString()) {
            throw jsTypeMisMatch(JSType.STRING, typeof())
        }
        JSString.readString(context, value)
    }

    /**
     * Convert JSValue to Utf16String.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     */
    @!APILevel[
        since: "22"
    ]
    public func toUtf16String(): Utf16String {
        if (!isString()) {
            throw jsTypeMisMatch(JSType.STRING, typeof())
        }
        JSString.readUtf16String(context, value)
    }

    /**
     * Convert JSValue to JSString. If the failure occurs, Exception will be throwed.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     */
    @!APILevel[
        since: "22"
    ]
    public func asString(): JSString {
        if (!isString()) {
            throw jsTypeMisMatch(JSType.STRING, typeof())
        }
        JSString(context, value)
    }

    /**
     * Convert JSValue to JSObject. If the failure occurs, Exception will be throwed.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     */
    @!APILevel[
        since: "22"
    ]
    public func asObject(): JSObject {
        if (!isObject()) {
            throw jsTypeMisMatch(JSType.OBJECT, typeof())
        }
        JSObject(context, value)
    }

    /**
     * Convert JSValue to JSFunction. If the failure occurs, Exception will be throwed.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     */
    @!APILevel[
        since: "22"
    ]
    public func asFunction(): JSFunction {
        if (!isFunction()) {
            throw jsTypeMisMatch(JSType.FUNCTION, typeof())
        }
        JSFunction(context, value)
    }

    /**
     * Conert JSValue to JSArray. If the failure occurs, Exception will be throwed.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     */
    @!APILevel[
        since: "22"
    ]
    public func asArray(): JSArray {
        if (!isArray()) {
            throw jsTypeMisMatch("Array", typeof())
        }
        JSArray(context, value)
    }

    /**
     * Convert JSValue to JSClass. If the failure occurs, Exception will be throwed.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     */
    @!APILevel[
        since: "22"
    ]
    public func asClass(): JSClass {
        if (!isClass()) {
            throw jsTypeMisMatch("Class", typeof())
        }
        JSClass(context, value)
    }

    /**
     * Convert JSValue to JSExternal. If the failure occurs, Exception will be throwed.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     */
    @!APILevel[
        since: "22"
    ]
    public func asExternal(): JSExternal {
        if (!isExternal()) {
            throw jsTypeMisMatch(JSType.EXTERNAL, typeof())
        }
        JSExternal(context, value)
    }

    /**
     * Convert JSValue to JSPromise. If the failure occurs, Exception will be throwed.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     */
    @!APILevel[
        since: "22"
    ]
    public func asPromise(): JSPromise {
        if (!isPromise()) {
            throw jsTypeMisMatch("Promise", typeof())
        }
        JSPromise(context, value)
    }

    /**
     * Convert JSValue to JSSymbol. If the failure occurs, Exception will be throwed.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     */
    @!APILevel[
        since: "22"
    ]
    public func asSymbol(): JSSymbol {
        if (!isSymbol()) {
            throw jsTypeMisMatch(JSType.SYMBOL, typeof())
        }
        JSSymbol(context, value)
    }

    /**
     * Convert JSValue to JSArrayBuffer. If the failure occurs, Exception will be throwed.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     */
    @!APILevel[
        since: "22"
    ]
    public func asArrayBuffer(): JSArrayBuffer {
        if (!isArrayBuffer()) {
            throw jsTypeMisMatch("ArrayBuffer", typeof())
        }
        JSArrayBuffer(context, value)
    }

    /**
     * Check whether JSValue is BigInt.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func isBigInt(): Bool {
        let env = context.env // do lifecycle check and thread check here.
        unsafe { ARKTS_IsBigInt(env, value) }
    }

    /**
     * Convert JSValue to JSBigInt. If the failure occurs, Exception will be throwed.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     */
    @!APILevel[
        since: "22"
    ]
    public func asBigInt(): JSBigInt {
        if (!isBigInt()) {
            throw jsTypeMisMatch("BigInt", typeof())
        }
        JSBigInt(context, value)
    }

    /**
     * Convert JSValue to BigInt. If the failure occurs, Exception will be throwed.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     */
    @!APILevel[
        since: "22"
    ]
    public func toBigInt(): BigInt {
        if (!isBigInt()) {
            throw jsTypeMisMatch("BigInt", typeof())
        }

        JSBigInt.readAsBigInt(context.env, value)
    }

    /**
     * Get the element at index.
     *
     * @throws { BusinessException } 34300001 - The accessing index is out of range.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     */
    @!APILevel[
        since: "22"
    ]
    public func getElement(index: Int64): JSValue {
        if (!isArray()) {
            throw jsTypeMisMatch("array", typeof())
        }
        let safeSize = Int64(unsafe { ARKTS_GetArrayLength(context.env, value) })
        if (index < 0 || index >= safeSize) {
            throw jsArrayRangeMisMatch(0, safeSize, index)
        }
        let value_ = unsafe { ARKTS_GetElement(context.env, value, UInt32(index)) }
        JSValue(context, value_)
    }

    /**
     * Set the element at index.
     *
     * @throws { BusinessException } 34300001 - The accessing index is out of range.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     */
    @!APILevel[
        since: "22"
    ]
    public func setElement(index: Int64, value: JSValue): Unit {
        if (!isArray()) {
            throw jsTypeMisMatch("array", typeof())
        }
        let safeSize = Int64(unsafe { ARKTS_GetArrayLength(context.env, this.value) })
        if (index < 0) {
            throw jsArrayRangeMisMatch(0, safeSize, index)
        }
        unsafe { ARKTS_SetElement(context.env, this.value, UInt32(index), value.value) }
    }

    /**
     * Get the property corresponding to the key.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     */
    @!APILevel[
        since: "22"
    ]
    public func getProperty(key: JSKeyable): JSValue {
        if (!isObject()) {
            throw jsTypeMisMatch(JSType.OBJECT, typeof())
        }
        let keyValue = key.toJSValue(context)
        let result = unsafe { ARKTS_GetProperty(context.env, value, keyValue.value) }
        JSValue(context, result)
    }

    /**
     * Set the property corresponding to the key.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     */
    @!APILevel[
        since: "22"
    ]
    public func setProperty(key: JSKeyable, setValue: JSValue): Unit {
        if (!isObject()) {
            throw jsTypeMisMatch(JSType.OBJECT, typeof())
        }
        let keyValue = key.toJSValue(context)
        unsafe { ARKTS_SetProperty(context.env, value, keyValue.value, setValue.value) }
    }

    /**
     * Bind JSValue to an ArkTs external object.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     */
    @!APILevel[
        since: "22"
    ]
    public func bindObject(external: JSValue): Unit {
        if (!isObject()) {
            throw jsTypeMisMatch(JSType.OBJECT, typeof())
        }
        if (!external.isExternal()) {
            throw jsTypeMisMatch("external", external.typeof())
        }
        setProperty(context.constants.builtinText.__cj_object__, external)
    }

    /**
     * Bind JSValue to an ArkTs external object.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     */
    @!APILevel[
        since: "22"
    ]
    public func bindObject(data: SharedObject): Unit {
        let value_ = JSValue(context, JSExternal.createExternal(context, data))
        bindObject(value_)
    }

    /**
     * Get the Cangjie object bound to the ArkTs object.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     */
    @!APILevel[
        since: "22"
    ]
    public func getBindingObject(): ?SharedObject {
        let external = getProperty(context.constants.builtinText.__cj_object__)
        if (!external.isExternal()) {
            return None
        }
        let id = unsafe { ARKTS_GetExternalData(context.env, external.value) }
        context.sharedObjects_.get(id).getOrThrow {
            nativeIdInvalid(id)
        }
    }
}
