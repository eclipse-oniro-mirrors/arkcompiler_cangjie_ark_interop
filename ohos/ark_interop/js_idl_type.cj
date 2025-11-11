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

import std.collection.{HashMap, EquatableCollection}

enum JSSource<T, J> {
    | JS(JSContext, J)
    | CJ(T)
}

/**
 * Function and performance expansion of JSString.
 */
@!APILevel[
    since: "22"
]
public class JSStringEx <: JSInteropType<JSStringEx> & Equatable<JSStringEx> & ToString {
    private var source_: JSSource<String, JSString>

    /**
     * Init JSStringEx.
     *
     * @param { String } str - Initial string.
     */
    @!APILevel[
        since: "22"
    ]
    public init(str: String) {
        source_ = CJ(str)
    }

    private init(context: JSContext, str: JSString) {
        source_ = JS(context, str)
    }

    /**
     * Return true if and only if the two string are identical.
     *
     * @param { JSStringEx } str - String to compare.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Bool } Returns true if equal, false if not equal.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func ==(str: JSStringEx): Bool {
        return toString() == str.toString()
    }

    /**
     * Return true if and only if the two string are not identical.
     *
     * @param { JSStringEx } str - String to compare.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Bool } Returns true if not equal, false if equal.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func !=(str: JSStringEx): Bool {
        return toString() != str.toString()
    }

    /**
     * Convert JSStringEx to String.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { String } Converted string.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toString(): String {
        match (source_) {
            case CJ(src) => src
            case JS(_, j) => j.toString()
        }
    }

    /**
     * Convert JSStringEx to JSValue.
     *
     * @param { JSContext } context - ArkTS interoperation context.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toJSValue(context: JSContext): JSValue {
        match (source_) {
            case JS(_, j) => j.toJSValue()
            case CJ(src) =>
                let j = context.string(src)
                source_ = JS(context, j)
                j.toJSValue()
        }
    }

    /**
     * Init JSStringEx from JSValue.
     *
     * @param { JSContext } context - ArkTS interoperation context.
     * @param { JSValue } input - ArkTS unified type.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { JSStringEx } Declarative interoperation macro type JSStringEx.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func fromJSValue(context: JSContext, input: JSValue): JSStringEx {
        let jsStr = input.asString()
        return JSStringEx(context, jsStr)
    }

    /**
     * Get ArkTS type name of JSStringEx.
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
 * Function and performance expansion of JSArray.
 */
@!APILevel[
    since: "22"
]
public class JSArrayEx<T> <: JSInteropType<JSArrayEx<T>> where T <: JSInteropType<T> {
    private var source_: JSSource<Array<T>, JSArray>

    /**
     * Init JSArrayEx<T>.
     *
     * @param { Array<T> } arr - Created based on this Array instance.
     */
    @!APILevel[
        since: "22"
    ]
    public init(arr: Array<T>) {
        source_ = CJ(arr)
    }

    private init(context: JSContext, arr: JSArray) {
        source_ = JS(context, arr)
    }

    /**
     * Clone JSArrayEx<T>. A deep copy of JSArrayEx<T> data will be performed.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSArrayEx<T> } New JSArrayEx obtained from cloning.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func clone(): JSArrayEx<T> {
        JSArrayEx<T>(this.toArray())
    }

    /**
     * Create a new JSArrayEx, with content being the concatenation of the current JSArrayEx follow by other JSArrayEx.
     *
     * @param { JSArrayEx<T> } other - JSArrayEx to concatenate at the end.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSArrayEx<T> } New JSArrayEx obtained from concatenation.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func concat(other: JSArrayEx<T>): JSArrayEx<T> {
        JSArrayEx<T>(this.toArray().concat(other.toArray()))
    }

    /**
     * The size of JSArrayEx.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public prop size: Int64 {
        get() {
            match (source_) {
                case CJ(arr) => arr.size
                case JS(_, jsArr) => jsArr.size
            }
        }
    }

    /**
     * Get the element at index.
     *
     * @param { Int64 } index - Index of the value to retrieve.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Option<T> } Value at the specified index in the current array.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func get(index: Int64): Option<T> {
        if (index >= this.size || index < 0) {
            return None<T>
        }
        return this[index]
    }

    /**
     * Set the element at index.
     *
     * @param { Int64 } index - Index of the value to modify, range [0..this.size].
     * @param { T } element - Target value to modify.
     * @throws { BusinessException } 34300001 - The accessing index is out of range.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func set(index: Int64, element: T): Unit {
        this[index] = element
    }

    /**
     * Check whether the size is empty. If yes, true is returned. Otherwise, false is returned.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Bool } Returns true if the array is empty; otherwise, returns false.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func isEmpty(): Bool {
        this.size == 0
    }

    /**
     * Get the element at index.
     *
     * @param { Int64 } index - Index of the value to retrieve.
     * @throws { BusinessException } 34300001 - The accessing index is out of range.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { T } Value at the specified index in the current array.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func [](index: Int64): T {
        if (index < 0 || index >= size) {
            throw jsArrayRangeMisMatch(0, size, index)
        }
        match (source_) {
            case CJ(arr) => arr[index]
            case JS(ctx, jsArr) => T.fromJSValue(ctx, jsArr[index])
        }
    }

    /**
     * Set the element at index.
     *
     * @param { Int64 } index - Index of the value to modify, range [0..this.size].
     * @param { T } value - Target value to modify.
     * @throws { BusinessException } 34300001 - The accessing index is out of range.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func [](index: Int64, value!: T): Unit {
        if (index < 0 || index >= size) {
            throw jsArrayRangeMisMatch(0, size, index)
        }
        match (source_) {
            case CJ(arr) => arr[index] = value
            case JS(ctx, jsArr) => jsArr[index] = value.toJSValue(ctx)
        }
    }

    /**
     * Convert JSArrayEx<T> to Array<T>.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Array<T> } Converted Cangjie array.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toArray(): Array<T> {
        match (source_) {
            case CJ(arr) => arr // have not transfer to JSValue yet, no binding context to check.
            case JS(context, arr) =>
                context.checkLifecycleAndThread()
                Array<T>(arr.size) {
                    index: Int64 => T.fromJSValue(context, arr[index])
                }
        }
    }

    /**
     * Convert JSArrayEx<T> to JSValue.
     *
     * @param { JSContext } context - ArkTS interop context.
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
        let jsArr = match (source_) {
            case CJ(arr) =>
                context.checkLifecycleAndThread()
                let jsArr = context.array(Array(arr.size, {
                    idx => arr[idx].toJSValue(context)
                }))
                source_ = JS(context, jsArr)
                jsArr
            case JS(_, jsArr) => jsArr // no need to check here, since toJSValue() later will do.
        }
        return jsArr.toJSValue()
    }

    /**
     * Init JSArrayEx<T> from JSValue.
     *
     * @param { JSContext } context - ArkTS interop context.
     * @param { JSValue } input - ArkTS unified type.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { JSArrayEx<T> } Declarative interop macro type JSArrayEx.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func fromJSValue(context: JSContext, input: JSValue): JSArrayEx<T> {
        let jsArr = input.asArray()
        return JSArrayEx<T>(context, jsArr)
    }

    /**
     * Get ArkTS type name of JSArrayEx<T>.
     *
     * @returns { String } Converted ArkTS type name.
     */
    @!APILevel[
        since: "22"
    ]
    public static func toArktsType(): String {
        "Array"
    }
}

/**
 * Function and performance expansion of JSMap.
 */
@!APILevel[
    since: "22"
]
public class JSHashMapEx<K, V> <: JSInteropType<JSHashMapEx<K, V>> where K <: JSKeyable & Hashable & Equatable<K> &
    JSInteropType<K>, V <: JSInteropType<V> {

    private var source_: JSSource<HashMap<K, V>, JSMap>

    /**
     * Init JSHashMapEx<K, V>.
     *
     * @param { HashMap<K, V> } map - Creates based on this HashMap instance.
     */
    @!APILevel[
        since: "22"
    ]
    public init(map: HashMap<K, V>) {
        source_ = CJ(map)
    }

    /**
     * Init JSHashMapEx<K, V>.
     */
    @!APILevel[
        since: "22"
    ]
    public init() {
        source_ = CJ(HashMap<K, V>())
    }

    private init(context: JSContext, obj: JSValue) {
        source_ = JS(context, obj.asMap())
    }

    /**
     * Get the value corresponding to the key.
     *
     * @param { K } key - Input key.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Option<V> } Value corresponding to the key. Wrapped in Option.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func get(key: K): Option<V> {
        match (source_) {
            case CJ(src) => src.get(key)
            case JS(c, j) =>
                let value = j.get(key)
                Option<V>.fromJSValue(c, value)
        }
    }

    /**
     * Clear JSHashMapEx.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func clear(): Unit {
        match (source_) {
            case CJ(src) => src.clear()
            case JS(_, j) => j.clear()
        }
    }

    /**
     * Clone JSHashMapEx<K, V>. A deep copy of JSHashMapEx<K, V> data will be peformed.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSHashMapEx<K, V> } The newly cloned JSHashMapEx.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func clone(): JSHashMapEx<K, V> {
        JSHashMapEx<K, V>(this.toHashMap())
    }

    /**
     * Checks whether the mapping relationship corresponding to the collection key exists in this JSHashMapEx<K, V>.
     *
     * @param { Collection<K> } keys - Keys to be checked.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Bool } Returns true if all are contained; otherwise, false.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func containsAll(keys: Collection<K>): Bool {
        this.toHashMap().contains(all: keys)
    }

    /**
     * Check whether the size is empty. If yes, true is returned. Otherwise, false is returned.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Bool } Whether JSHashMapEx is empty.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func isEmpty(): Bool {
        this.size == 0
    }

    /**
     * Set value corresponding to the key.
     *
     * @param { K } key - Key to be inserted.
     * @param { V } value - Value to be assigned.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func set(key: K, value: V): Unit {
        match (source_) {
            case CJ(src) => src.add(key, value)
            case JS(c, j) => j.set(key, value.toJSValue(c))
        }
    }

    /**
     * Set value corresponding to the key in collection.
     *
     * @param { Collection<(K, V)> } elements - Collection of key-value pairs to be added to JSHashMapEx.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func setAll(elements: Collection<(K, V)>): Unit {
        for ((k, v) in elements) {
            this.set(k, v)
        }
    }

    /**
     * Set value corresponding to the key if key does not exists in this JSHashMapEx<K, V>.
     *
     * @param { K } key - Key to be inserted.
     * @param { V } value - Value to be assigned.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Bool } Returns false if the key existed before assignment; otherwise, true.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func setIfAbsent(key: K, value: V): Bool {
        if (this.has(key)) {
            false
        } else {
            this.set(key, value)
            true
        }
    }

    /**
     * Delete key in this JSHashMapEx<K, V>.
     *
     * @param { K } key - Key to be deleted.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Bool } Returns true if the key existed and was successfully deleted; otherwise, false.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func delete(key: K): Bool {
        match (source_) {
            case CJ(src) => src.remove(key).isSome()
            case JS(_, j) => j.remove(key)
        }
    }

    /**
     * Delete keys in this JSHashMapEx<K, V>.
     *
     * @param { Collection<K> } keys - Collection of keys to be deleted.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func deleteAll(keys: Collection<K>): Unit {
        for (key in keys) {
            this.delete(key)
        }
    }

    /**
     * Delete keys that do not meet the predicate condition.
     *
     * @param { (K, V) -> Bool } predicate - Lambda expression for evaluation.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func deleteIf(predicate: (K, V) -> Bool): Unit {
        let keys = this.keys().toArray()
        for (key in keys) {
            if (let Some(value) <- this.get(key)) {
                if (predicate(key, value)) {
                    this.delete(key)
                }
            }
        }
    }

    /**
     * Return keys.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { EquatableCollection<K> } Container holding all returned keys.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func keys(): EquatableCollection<K> {
        match (source_) {
            case CJ(src) => src.keys()
            case JS(c, j) =>
                let it = j.rawkeys().asObject()
                let result = HashMap<K, Int32>()
                let builtinText = c.constants.builtinText
                while (true) {
                    let ret = it.callMethod(builtinText.next).asObject()
                    if (ret[builtinText.done].toBoolean()) {
                        break;
                    }
                    let value = K.fromJSValue(c, ret[builtinText.value])
                    result.add(value, 0)
                }
                result.keys()
        }
    }

    /**
     * Return values.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Collection<V> } Container holding all returned values.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func values(): Collection<V> {
        this.toHashMap().values()
    }

    /**
     * The size of JSHashMapEx<K, V>.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public prop size: Int64 {
        get() {
            match (source_) {
                case CJ(src) => src.size
                case JS(_, j) => j.size
            }
        }
    }

    /**
     * Checks whether the mapping relationship corresponding to the key exists in this JSHashMapEx<K, V>.
     *
     * @param { K } key - Key to be checked.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Bool } Returns true if present; otherwise, false.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func has(key: K): Bool {
        match (source_) {
            case CJ(src) => src.contains(key)
            case JS(_, j) => j.has(key)
        }
    }

    /**
     * Convert JSHashMapEx<K, V> to HashMap<K, V>.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { HashMap<K, V> } Converted HashMap.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toHashMap(): HashMap<K, V> {
        match (source_) {
            case CJ(src) => src
            case JS(c, j) =>
                let result = HashMap<K, V>()
                for (k in keys()) {
                    result[k] = V.fromJSValue(c, j.get(k))
                }
                result
        }
    }

    /**
     * Get the value corresponding to the key.
     *
     * @param { K } key - Key to be inserted.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { V } Value corresponding to the key.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func [](key: K): V {
        get(key).getOrThrow {
            indexInvalid("")
        }
    }

    /**
     * Set value corresponding to the key.
     *
     * @param { K } key - Key to be inserted.
     * @param { V } value - Value to be assigned.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func [](key: K, value!: V): Unit {
        set(key, value)
    }

    /**
     * Convert JSHashMapEx<K, V> to JSValue.
     *
     * @param { JSContext } c - ArkTS interoperability context.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toJSValue(c: JSContext): JSValue {
        match (source_) {
            case JS(_, j) => j.toJSValue()
            case CJ(src) =>
                let j = JSMap.fromHashMap(c, src)
                source_ = JS(c, j)
                j.toJSValue()
        }
    }

    /**
     * Init JSHashMapEx<K, V> from JSValue.
     *
     * @param { JSContext } context - ArkTS interoperability context.
     * @param { JSValue } input - ArkTS unified type.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSHashMapEx<K, V> } Declarative interoperability macro type JSHashMapEx.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func fromJSValue(context: JSContext, input: JSValue): JSHashMapEx<K, V> {
        return JSHashMapEx<K, V>(context, input)
    }

    /**
     * Get ArkTS type name of JSHashMapEx<K, V>.
     *
     * @returns { String } Converted ArkTS type name.
     */
    @!APILevel[
        since: "22"
    ]
    public static func toArktsType(): String {
        "Map"
    }
}
