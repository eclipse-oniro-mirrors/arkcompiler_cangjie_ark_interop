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
foreign func ARKTS_CreateClass(env: JSEnv, lambdaId: Int64, base: JSValue_): JSValue_

@FastNative
foreign func ARKTS_GetPrototype(env: JSEnv, fun: JSValue_): JSValue_

foreign func ARKTS_New(env: JSEnv, constructor: JSValue_, argCount: Int32, args: CPointer<JSValue_>): JSValue_

/**
 * The JSClass object is used to represent a safe reference to the ArkTS class (constructor).
 * Method and accessors can be added to this class, and instances of this class can be created.
 */
@!APILevel[since: "22"]
public class JSClass <: JSHeapObject {
    static func createClass(context: JSContext, constructor: JSLambda, superClass: ?JSClass): JSValue_ {
        let lambdaId = context.sharedLambda_.append(constructor)
        let baseValue = match (superClass) {
            case Some(v) => v.innerValue
            case None => context.undefined().toJSValue().value
        }
        let result = unsafe { ARKTS_CreateClass(context.env, lambdaId, baseValue) }
        context.checkJSException() // in case of ArkTS OOM
        return result
    }

    private let prototype_: ?JSObject

    init(context: JSContext, value: JSValue_) {
        super(context, value)
        let proto = unsafe { ARKTS_GetPrototype(context.env, value) }
        prototype_ = if (unsafe { ARKTS_IsObject(context.env, proto) }) {
            JSObject(context, proto)
        } else {
            None
        }
    }

    init(context: JSContext, constructor: JSLambda, superClass: ?JSClass) {
        super(context, createClass(context, constructor, superClass))
        let proto = unsafe { ARKTS_GetPrototype(context.env, innerValue) }
        prototype_ = if (unsafe { ARKTS_IsObject(context.env, proto) }) {
            JSObject(context, proto)
        } else {
            None
        }
    }

    ~init() {
        unsafe { ARKTS_DisposeGlobal(context.env_, globalValue_) }
    }

    /**
     * Prototype object of class.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     */
    @!APILevel[
        since: "22"
    ]
    public prop prototype: JSObject {
        get() {
            prototype_.getOrThrow {
                propertyError("class", "prototype", "object")
            }
        }
    }

    /**
     * Instantiate a new object through the ArkTS class.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func new(): JSValue {
        let env = context.env // do lifecycle check and thread check here.
        let result = unsafe { ARKTS_New(env, innerValue, 0, CPointer<JSValue_>()) }
        JSValue(context, result)
    }

    /**
     * Instantiate a new object through the ArkTS class.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func new(arg: JSValue): JSValue {
        let env = context.env // do lifecycle check and thread check here.
        var mutableArg = arg.value
        let result = unsafe { ARKTS_New(env, innerValue, 1, inout mutableArg) }
        JSValue(context, result)
    }

    /**
     * Instantiate a new object through the ArkTS class.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func new(args: Array<JSValue>): JSValue {
        let env = context.env // do lifecycle check and thread check here.
        let result = if (args.size > 0) {
            let jsArr = Array<JSValue_>(args.size) {
                index => args[index].value
            }
            unsafe {
                let rawHandle = acquireArrayRawData(jsArr)
                let result = ARKTS_New(env, innerValue, Int32(args.size), rawHandle.pointer)
                releaseArrayRawData(rawHandle)
                result
            }
        } else {
            unsafe { ARKTS_New(env, innerValue, 0, CPointer<JSValue_>()) }
        }
        JSValue(context, result)
    }

    /**
     * Add a data member to the ArkTS class, typically used to define immutable property.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func addProperty(key: JSKeyable, value: JSValue): Unit {
        prototype.defineOwnProperty(key, value, isWritable: false, isEnumerable: false)
    }

    /**
     * Define a pair of getter and setter for the ArkTS class.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func addAccessor(key: JSKeyable, getter!: ?JSFunction = None, setter!: ?JSFunction = None): Unit {
        prototype.defineOwnAccessor(key, getter: getter, setter: setter, isEnumerable: false)
    }

    /**
     * Define a pair of getter and setter for the ArkTS class.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func addAccessor(key: JSKeyable, getter!: ?JSLambda = None, setter!: ?JSLambda = None): Unit {
        prototype.defineOwnAccessor(key, getter: getter, setter: setter, isEnumerable: false)
    }

    /**
     * Define a method for the ArkTS class.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func addMethod(key: JSKeyable, method: JSFunction): Unit {
        prototype.defineOwnProperty(key, method.toJSValue(), isWritable: false, isEnumerable: false)
    }

    /**
     * Define a method for the ArkTS class.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func addMethod(key: JSKeyable, method: JSLambda): Unit {
        prototype.defineOwnProperty(key, JSValue(context, JSFunction.createFunction(context, method)), isWritable: false,
            isEnumerable: false)
    }
}
