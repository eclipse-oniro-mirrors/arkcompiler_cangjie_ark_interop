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

import std.sync.{Mutex, AtomicInt8, AtomicInt64}
import std.collection.{HashMap, ArrayList}

@C
struct JSHClassPrivate {}

@C
struct JSScopePrivate {}

type JSEnv = IntNative

type JSScope = CPointer<JSScopePrivate>

type JSHClass = CPointer<JSHClassPrivate>

type JSAsyncCallback = CFunc<(JSEnv, Int64) -> Unit>

/**
 * Alias for type which is `CPointer<Unit>`.
 */
public type napi_env = CPointer<Unit>

/**
 * Alias for type which is `CPointer<Unit>`.
 */
public type napi_value = CPointer<Unit>

@FastNative
foreign func ARKTS_CreateNull(): JSValue_

@FastNative
foreign func ARKTS_CreateUndefined(): JSValue_

@FastNative
foreign func ARKTS_CreateF64(value: Float64): JSValue_

@FastNative
foreign func ARKTS_CreateI32(value: Int32): JSValue_

@FastNative
foreign func ARKTS_CreateBool(bValue: Bool): JSValue_

foreign func ARKTS_Throw(env: JSEnv, error: JSValue_): Unit

@FastNative
foreign func ARKTS_CreateAsyncTask(env: JSEnv, id: Int64): Unit

@FastNative
foreign func ARKTS_GetGlobalConstant(env: JSEnv): JSValue_

@FastNative
foreign func ARKTS_GetPosixThreadId(): UInt64

foreign func ARKTS_Require(env: JSEnv, target: CString, isNative: Bool, isAppModule: Bool, prefix: CString): JSValue_

@FastNative
foreign func ARKTS_OpenScope(env: JSEnv): JSScope

@FastNative
foreign func ARKTS_CloseScope(env: JSEnv, scope: JSScope): Unit

@FastNative
foreign func ARKTS_GetGlobalNapiEnv(env: JSEnv): napi_env

@FastNative
foreign func ARKTS_GetExceptionAndClear(env: JSEnv): JSValue_

@C
func asyncCallbackExecutor(env: JSEnv, id: Int64): Unit {
    let context = JSContext.getOrCreate(env)
    if (let Some(callback) <- context.asyncCallbacks_.remove(id)) {
        callback()
    }
}

@C
func disposeJSContext(env: JSEnv): Unit {
    synchronized(JSContext.RUNTIMES_MUTEX) {
        if (let Some(context) <- JSContext.ALL_RUNTIMES_.remove(env)) {
            context.dispose()
        }
    }
}

/**
 * A single-thread ArkTS interop context. JSContext has a one-to-one correspondence with the ArkTS runtime. 
 * Its main purpose is to create JSValues and safe references and manage the lifecycle of Cangjie objects 
 * referenced by ArkTS.
 */
@!APILevel[since: "22"]
public class JSContext {
    static let ALL_RUNTIMES_ = HashMap<JSEnv, JSContext>()
    static let RUNTIMES_MUTEX = Mutex()

    static func getOrCreate(env: JSEnv, tidGetter!: () -> UInt64 = {=> unsafe { ARKTS_GetPosixThreadId() }}): JSContext {
        synchronized(RUNTIMES_MUTEX) {
            match (ALL_RUNTIMES_.get(env)) {
                case Some(context) => context
                case None =>
                    let context = JSContext(env, tidGetter())
                    ALL_RUNTIMES_.add(env, context)
                    context
            }
        }
    }

    var sharedObjects_ = Slab<SharedObject>()
    var sharedLambda_ = Slab<JSLambda>()
    var asyncCallbacks_ = SlabMT<() -> Unit>()

    let env_: JSEnv
    private var disposed_ = AtomicInt8(0)
    private let bindTid_: UInt64
    var global_: ?JSObject = None
    var constants_: ?JSConstants = None
    private let void_: JSValue_

    private init(env: JSEnv, tid: UInt64) {
        if (env == 0) {
            throw Exception("create JSContext failed, env is null")
        }
        env_ = env
        bindTid_ = tid
        void_ = unsafe { ARKTS_CreateUndefined() }
    }

    prop void: JSValue {
        get() {
            JSValue(this, void_)
        }
    }

    func dispose(): Unit {
        while (!disposed_.compareAndSwap(0, -1)) {
            // wait for other thread to finish
        }
    }

    func keepAlive(callback: ()->Unit): Bool {
        while (true) {
            let value = disposed_.load()
            if (value == -1) {
                return false
            }
            if (disposed_.compareAndSwap(0, 1)) {
                break
            }
        }
        callback()
        disposed_.store(0)
        return true
    }

    prop constants: JSConstants {
        get() {
            if (let Some(data) <- constants_) {
                data
            } else {
                let data = JSConstants(this)
                constants_ = data
                data
            }
        }
    }

    /**
     * Check whether the current thread can execute interop interface.
     */
    @!APILevel[since: "22"]
    public func isInBindThread(): Bool {
        bindTid_ == unsafe { ARKTS_GetPosixThreadId() }
    }

    func checkAlive(): Unit {
        if (disposed_.load() < 0) {
            throw jsObjUseAfterFree("JSContext")
        }
    }

    func checkThread(): Unit {
        if (!isInBindThread()) {
            throw jsThreadMismatch(bindTid_, unsafe { ARKTS_GetPosixThreadId() })
        }
    }

    /**
     * ArkTS global environment variable.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public prop global: JSObject {
        get() {
            let env = this.env // do lifecycle check and thread check here.
            match (global_) {
                case Some(data) => data
                case None =>
                    let local = JSValue(this, unsafe { ARKTS_GetGlobalConstant(env) })
                    let result = local.asObject()
                    global_ = result
                    result
            }
        }
    }

    /**
     * ArkTS interop context.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public prop env: JSEnv {
        get() {
            checkLifecycleAndThread()
            env_
        }
    }

    func checkLifecycleAndThread(): Unit {
        checkAlive()
        checkThread()
    }

    /**
     * Get napi environment pointer.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func getNapiEnv(): napi_env {
        unsafe {
            ARKTS_GetGlobalNapiEnv(env)
        }
    }

    func newScope(callback: () -> Unit): Unit {
        unsafe {
            let scope = ARKTS_OpenScope(env)
            callback()
            ARKTS_CloseScope(env, scope)
        }
    }

    /**
     * Create an ArkTS undefined.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func undefined(): JSUndefined {
        checkLifecycleAndThread()
        JSUndefined(void)
    }

    /**
     * Create an ArkTS null.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func null(): JSNull {
        checkLifecycleAndThread()
        JSNull(JSValue(this, unsafe { ARKTS_CreateNull() }))
    }

    /**
     * Create an ArkTS boolean.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func boolean(value: Bool): JSBoolean {
        checkLifecycleAndThread()
        JSBoolean(JSValue(this, unsafe { ARKTS_CreateBool(value) }))
    }

    /**
     * Create an ArkTS number.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func number(value: Float64): JSNumber {
        checkLifecycleAndThread()
        JSNumber(JSValue(this, unsafe { ARKTS_CreateF64(value) }))
    }

    /**
     * Create an ArkTS number.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func number(value: Int32): JSNumber {
        checkLifecycleAndThread()
        JSNumber(JSValue(this, unsafe { ARKTS_CreateI32(value) }))
    }

    /**
     * Create an ArkTS string.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func string(value: String): JSString {
        JSString(this, value)
    }

    /**
     * Create an ArkTS string.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func string(value: Utf16String): JSString {
        JSString(this, value)
    }

    /**
     * Create an empty ArkTS object reference.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func object(): JSObject {
        JSObject(this)
    }

    /**
     * Create an ArkTS function.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func function(lambda: JSLambda): JSFunction {
        JSFunction(this, lambda)
    }

    /**
     * Create an ArkTS array.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func array(arr: Array<JSValue>): JSArray {
        JSArray(this, arr)
    }

    /**
     * Create an ArkTS class.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func clazz(ctor: JSLambda, superClass!: ?JSClass = None): JSClass {
        JSClass(this, ctor, superClass)
    }

    /**
     * Create an ArkTS reference to Cangjie object.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func external(data: SharedObject): JSExternal {
        JSExternal(this, data)
    }

    /**
     * Create an ArkTS Promise.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func promiseCapability(): JSPromiseCapability {
        JSPromiseCapability(this)
    }

    func throwJSError(exception: Exception): Unit {
        let stack = exception.getStackTrace()
        let stackTexts = Array<String>(stack.size) {
            index =>
            let frame = stack[index]
            let packageDelimiter = if (frame.declaringClass.isEmpty()) {
                ""
            } else {
                "."
            }
            "\t at ${frame.declaringClass}${packageDelimiter}${frame.methodName}(${frame.fileName}:${frame.lineNumber})"
        }
        let message = "${exception}\n${String.join(stackTexts, delimiter: "\n")}"
        let jstr = JSString.createString(this, message)
        unsafe { ARKTS_Throw(env, jstr) }
    }

    func throwJSError(exception: Error): Unit {
        let stack = exception.getStackTrace()
        let stackTexts = Array<String>(stack.size) {
            index =>
            let frame = stack[index]
            let packageDelimiter = if (frame.declaringClass.isEmpty()) {
                ""
            } else {
                "."
            }
            "\t at ${frame.declaringClass}${packageDelimiter}${frame.methodName}(${frame.fileName}:${frame.lineNumber})"
        }
        let message = "${exception}\n${String.join(stackTexts, delimiter: "\n")}"
        let jstr = JSString.createString(this, message)
        unsafe { ARKTS_Throw(env, jstr) }
    }

    /**
     * Create an ArkTS ArrayBuffer.
	 *
     * @throws { BusinessException } 34300001 - The arrayBuffer length is invalid.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func arrayBuffer(length: Int32): JSArrayBuffer {
        if (length <= 0) {
            throw jsArrayRangeMisMatch(0, Int64(Int32.Max), Int64(length), message: "The arrayBuffer length is invalid")
        }
        JSArrayBuffer(this, length)
    }

    /**
     * Create an ArkTS ArrayBuffer.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func arrayBuffer(data: Array<Byte>): JSArrayBuffer {
        JSArrayBuffer(this, data)
    }

    /**
     * Create an ArkTS ArrayBuffer.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func arrayBuffer(data: Array<Int8>): JSArrayBuffer {
        JSArrayBuffer(this, data)
    }

    /**
     * Create an ArkTS ArrayBuffer.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func arrayBuffer(data: Array<Int16>): JSArrayBuffer {
        JSArrayBuffer(this, data)
    }

    /**
     * Create an ArkTS ArrayBuffer.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func arrayBuffer(data: Array<UInt16>): JSArrayBuffer {
        JSArrayBuffer(this, data)
    }

    /**
     * Create an ArkTS ArrayBuffer.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func arrayBuffer(data: Array<UInt32>): JSArrayBuffer {
        JSArrayBuffer(this, data)
    }

    /**
     * Create an ArkTS ArrayBuffer.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func arrayBuffer(data: Array<Int32>): JSArrayBuffer {
        JSArrayBuffer(this, data)
    }

    /**
     * Create an ArkTS ArrayBuffer.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func arrayBuffer(data: Array<Float32>): JSArrayBuffer {
        JSArrayBuffer(this, data)
    }

    /**
     * Create an ArkTS ArrayBuffer.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func arrayBuffer(data: Array<Int64>): JSArrayBuffer {
        JSArrayBuffer(this, data)
    }

    /**
     * Create an ArkTS ArrayBuffer.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func arrayBuffer(data: Array<UInt64>): JSArrayBuffer {
        JSArrayBuffer(this, data)
    }

    /**
     * Create an ArkTS ArrayBuffer.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func arrayBuffer(data: Array<Float64>): JSArrayBuffer {
        JSArrayBuffer(this, data)
    }

    /**
     * Create an ArkTS ArrayBuffer.
	 *
     * @throws { BusinessException } 34300001 - The arrayBuffer length is invalid.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public unsafe func arrayBuffer(rawData: CPointer<Byte>, length: Int32, finalizer: JSBufferFinalizer): JSArrayBuffer {
        if (length <= 0) {
            throw jsArrayRangeMisMatch(0, Int64(Int32.Max), Int64(length), message: "The arrayBuffer length is invalid")
        }
        JSArrayBuffer(this, rawData, length, finalizer)
    }

    /**
     * Create an ArkTS symbol.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func symbol(description!: String = ""): JSSymbol {
        JSSymbol(this, description)
    }

    /**
     * Create an ArkTS bigint.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func bigint(value: Int64): JSBigInt {
        JSBigInt(this, value)
    }

    /**
     * Create an ArkTS bigint.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func bigint(value: BigInt): JSBigInt {
        JSBigInt(this, value)
    }

    /**
     * Create a task to be executed in ArkTS thread.
     */
    @!APILevel[since: "22"]
    public func postJSTask(callback: () -> Unit): Unit {
        keepAlive {
            let id = asyncCallbacks_.append(callback)
            unsafe { ARKTS_CreateAsyncTask(env_, id) }
        }
    }

    /**
     * Load the built-in ArkTS napi module of the system.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func requireSystemNativeModule(moduleName: String, prefix!: ?String = None): JSValue {
        let env = this.env // do lifecycle check and thread check here.
        unsafe {
            let moduleNameC = LibC.mallocCString(moduleName)
            let result = if (let Some(p) <- prefix) {
                let cp = LibC.mallocCString(p)
                let ret = ARKTS_Require(env, moduleNameC, true, false, cp)
                LibC.free(cp)
                ret
            } else {
                ARKTS_Require(env, moduleNameC, true, false, CString(CPointer<UInt8>()))
            }
            LibC.free(moduleNameC)
            checkJSException()
            return JSValue(this, result)
        }
    }

    func checkJSException(): Unit {
        let error = unsafe {
            let value_ = ARKTS_GetExceptionAndClear(env_)
            let valueType = ARKTS_GetValueType(env_, value_)
            if (valueType == JSType.UNDEFINED) {
                return
            }
            if (valueType != JSType.OBJECT) {
                throw Exception("unknown ArkTS error, addr: ${value_.value}")
            }
            JSObject(this, value_)
        }
        let rawMsg = error[constants.builtinText.message]
        let message = "[${error.getClassName()}]" + if (rawMsg.isString()) {
            rawMsg.toString()
        } else {
            "undefined"
        }
        let rawStack = error[constants.builtinText.stack]
        let stack: Array<String> = if (rawStack.isArray()) {
            let jStack = rawStack.asArray()
            Array<String>(jStack.size) { idx =>
                jStack[idx].toString()
            }
        } else {
            []
        }
        let rawCode = error[constants.builtinText.code]
        let code = if (rawCode.isNumber()) {
            Int32(rawCode.toNumber())
        } else {
            Int32(0)
        }
        jsCodeError(code, message, stack)
    }
}
