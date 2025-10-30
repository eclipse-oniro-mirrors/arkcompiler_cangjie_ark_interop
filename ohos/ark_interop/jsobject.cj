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

@C
struct PropertyFlags {
    static let NONE = PropertyFlags(0)
    static let WRITABLE = PropertyFlags(1)
    static let ENUMERABLE = PropertyFlags(2)
    static let CONFIGURABLE = PropertyFlags(4)
    static let NORMAL = WRITABLE | ENUMERABLE | CONFIGURABLE

    let value: UInt32

    init(value: UInt32) {
        this.value = value
    }

    init(writable: Bool, enumerable: Bool, configurable: Bool) {
        var value_: UInt32 = 0
        if (writable) {
            value_ = value_ | WRITABLE.value
        }
        if (enumerable) {
            value_ = value_ | ENUMERABLE.value
        }
        if (configurable) {
            value_ = value_ | CONFIGURABLE.value
        }
        this.value = value_
    }

    operator func |(target: PropertyFlags): PropertyFlags {
        PropertyFlags(value | target.value)
    }
}

@C
struct JSAccessor {
    JSAccessor(
        let getter: JSValue_,
        let setter: JSValue_,
        let attrs: PropertyFlags
    ) {}
}

@FastNative
foreign func ARKTS_CreateObject(env: JSEnv): JSValue_

@FastNative
foreign func ARKTS_InstanceOf(env: JSEnv, object: JSValue_, clazz: JSValue_): Bool

@FastNative
foreign func ARKTS_HasOwnProperty(env: JSEnv, object: JSValue_, key: JSValue_): Bool

foreign func ARKTS_GetProperty(env: JSEnv, object: JSValue_, key: JSValue_): JSValue_

foreign func ARKTS_SetProperty(env: JSEnv, object: JSValue_, key: JSValue_, value: JSValue_): Unit

@FastNative
foreign func ARKTS_EnumOwnProperties(env: JSEnv, object: JSValue_): JSValue_

foreign func ARKTS_DefineOwnPropertyV2(env: JSEnv, object: JSValue_, key: JSValue_, value: JSValue_,
    attrs: PropertyFlags): Bool

foreign func ARKTS_DefineAccessorsV2(env: JSEnv, object: JSValue_, key: JSValue_, accessor: JSAccessor): Bool

/**
 * Base class of a safe reference to ArkTS object.
 */
@!APILevel[22, stagemodelonly: true]
abstract sealed class JSObjectBase <: JSHeapObject {
    init(context: JSContext, value: JSValue_) {
        super(context, value)
    }

    /**
     * Check whether the current object is an instance of the target ArkTS class. 
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        22,
        stagemodelonly: true
    ]
    public func instanceOf(clazz: JSClass): Bool {
        let env = context.env // do lifecycle check and thread check here.
        instanceOfByValue(env, innerValue, clazz.innerValue)
    }

    static func instanceOfByValue(env: JSEnv, object: JSValue_, clazz: JSValue_): Bool {
        unsafe { ARKTS_InstanceOf(env, object, clazz) }
    }

    /**
     * Check whether the current object has the target property. 
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        22,
        stagemodelonly: true
    ]
    public func hasProperty(key: JSKeyable): Bool {
        let keyValue = key.toJSValue(context)
        unsafe { ARKTS_HasOwnProperty(context.env, innerValue, keyValue.value) }
    }

    /**
     * Get the property value of the current object. 
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        22,
        stagemodelonly: true
    ]
    public func getProperty(key: JSKeyable): JSValue {
        let keyValue = key.toJSValue(context)
        let result = unsafe { ARKTS_GetProperty(context.env, innerValue, keyValue.value) }
        JSValue(context, result)
    }

    /**
     * Get the property value of the current object. 
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        22,
        stagemodelonly: true
    ]
    public operator func [](key: JSKeyable): JSValue {
        getProperty(key)
    }

    /**
     * Call method corressponding to the key of the JSObject.
	 *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        22,
        stagemodelonly: true
    ]
    public func callMethod(key: JSKeyable, args: Array<JSValue>): JSValue {
        let fun = getProperty(key)
        if (!fun.isFunction()) {
            throw propertyError(getClassName(), key.toString(), "function")
        }
        let rawArgs = Array(args.size) { idx =>
            args[idx].value
        }
        let value = JSFunction.callWithArr(context.env, fun.value, innerValue, rawArgs)
        JSValue(context, value)
    }

    func getClassName(): String {
        let ctor = this["constructor"]
        if (!ctor.isObject() || !ctor.isFunction()) {
            return "[unknown]"
        }
        let name = ctor.getProperty("name")
        if (!name.isString()) {
            return "[unknown]"
        }
        return "[${name.toString()}]"
    }

    /**
     * Set property to the current object.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        22,
        stagemodelonly: true
    ]
    public func setProperty(key: JSKeyable, setValue: JSValue): Unit {
        let keyValue = key.toJSValue(context)
        unsafe { ARKTS_SetProperty(context.env, innerValue, keyValue.value, setValue.value) }
    }

    /**
     * Set property to the current object. 
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        22,
        stagemodelonly: true
    ]
    public operator func [](key: JSKeyable, value!: JSValue): Unit {
        setProperty(key, value)
    }

    /**
     * Define property on the current object. 
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        22,
        stagemodelonly: true
    ]
    public func defineOwnProperty(key: JSKeyable, setValue: JSValue, isWritable!: Bool = true,
        isEnumerable!: Bool = true, isConfigurable!: Bool = true): Bool {
        let keyValue = key.toJSValue(context)
        let flags = PropertyFlags(isWritable, isEnumerable, isConfigurable)
        unsafe { ARKTS_DefineOwnPropertyV2(context.env, innerValue, keyValue.value, setValue.value, flags) }
    }

    /**
     * Define accessor on the current object. 
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        22,
        stagemodelonly: true
    ]
    public func defineOwnAccessor(key: JSKeyable, getter!: ?JSFunction = None, setter!: ?JSFunction = None,
        isEnumerable!: Bool = false, isConfigurable!: Bool = false): Bool {
        let undefined = context.undefined().toJSValue().value
        let getterValue = match (getter) {
            case Some(f) => f.innerValue
            case None => undefined
        }
        let setterValue = match (setter) {
            case Some(f) => f.innerValue
            case None => undefined
        }
        let keyValue = key.toJSValue(context)
        let flags = PropertyFlags(setter.isSome(), isEnumerable, isConfigurable)
        let accessor = JSAccessor(getterValue, setterValue, flags)
        unsafe { ARKTS_DefineAccessorsV2(context.env, innerValue, keyValue.value, accessor) }
    }

    /**
     * Define accessor on the current object. 
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        22,
        stagemodelonly: true
    ]
    public func defineOwnAccessor(key: JSKeyable, getter!: ?JSLambda = None, setter!: ?JSLambda = None,
        isEnumerable!: Bool = false, isConfigurable!: Bool = false): Bool {
        let undefined = context.undefined().toJSValue().value
        let getterValue = match (getter) {
            case Some(f) => JSFunction.createFunction(context, f)
            case None => undefined
        }
        let setterValue = match (setter) {
            case Some(f) => JSFunction.createFunction(context, f)
            case None => undefined
        }
        let keyValue = key.toJSValue(context)
        let flags = PropertyFlags(setter.isSome(), isEnumerable, isConfigurable)
        let accessor = JSAccessor(getterValue, setterValue, flags)

        unsafe { ARKTS_DefineAccessorsV2(context.env, innerValue, keyValue.value, accessor) }
    }

    /**
     * Get all property names of the current object. 
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        22,
        stagemodelonly: true
    ]
    public func keys(): Array<String> {
        let keyJArr = JSValue(context, unsafe { ARKTS_EnumOwnProperties(context.env, innerValue) })
        if (!keyJArr.isArray()) {
            return []
        }
        let jArr = keyJArr.asArray()
        return Array<String>(jArr.size) {
            index =>
            let raw = jArr[index]
            if (raw.isString()) {
                return raw.toString()
            }
            if (raw.isSymbol()) {
                let symbol = raw.asSymbol()
                return "symbol[\"${symbol.description}\"]"
            }
            if (raw.isNumber()) {
                return "${raw.toNumber()}"
            }
            return "[unknown key type]: ${raw.typeof().toString()}"
        }
    }

    /**
     * Attach target JSValue to the current object. 
     */
    func setAttachInfo(target: JSValue): Unit {
        this[context.constants.builtinText.__cj_object__] = target
    }

    /**
     * Attach target JSExternal to the current object. 
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        22,
        stagemodelonly: true
    ]
    public func attachCJObject(target: JSExternal): Unit {
        setAttachInfo(target.toJSValue())
    }

    /**
     * Get the target JSExternal attached to the current object. 
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        22,
        stagemodelonly: true
    ]
    public func getAttachInfo(): ?JSExternal {
        let jValue = this[context.constants.builtinText.__cj_object__]
        if (!jValue.isExternal()) {
            return None
        }
        JSExternal(context, jValue.value)
    }
}

/**
 * A secure reference to ArkTS object.
 */
@!APILevel[22, stagemodelonly: true]
public class JSObject <: JSObjectBase {
    init(context: JSContext, value: JSValue_) {
        super(context, value)
    }

    init(context: JSContext) {
        super(context, unsafe { ARKTS_CreateObject(context.env) })
    }

    ~init() {
        unsafe { ARKTS_DisposeGlobal(context.env_, globalValue_) }
    }
}
