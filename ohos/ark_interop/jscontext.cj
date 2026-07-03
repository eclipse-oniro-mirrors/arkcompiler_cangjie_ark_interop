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

import std.sync.{Mutex, AtomicInt8}
import std.collection.*
import ohos.business_exception.*

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

foreign func ARKTS_RequireArkModule(env: JSEnv, path: CPointer<UInt8>, size: UIntNative, kind: Int32): JSValue_

@FastNative foreign func CJDFX_IgnoreNextBacktrace(): Unit

@C
func asyncCallbackExecutor(env: JSEnv, id: Int64): Unit {
    let context = JSContext.getContext(env) ?? return ()
    if (let Some(callback) <- context.asyncCallbacks_.remove(id)) {
        context.newScope {
            callback()
        }
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

class Scope {
    private let handle_: JSScope
    private let handledValues_ = ArrayList<JSValue>()

    init(env: JSEnv) {
        handle_ = unsafe { ARKTS_OpenScope(env) }
        if (handle_.isNull()) {
            throw cHeapOOM()
        }
    }

    func close(env: JSEnv): Unit {
        for (value in handledValues_) {
            value.isSafe = false
        }
        unsafe { ARKTS_CloseScope(env, handle_) }
    }

    func add(value: JSValue): Unit {
        handledValues_.add(value)
    }
}

/**
 * A single-thread ArkTS interop context. JSContext has a one-to-one correspondence with the ArkTS runtime. 
 * Its main purpose is to create JSValues and safe references and manage the lifecycle of Cangjie objects 
 * referenced by ArkTS.
 */
@!APILevel[
    since: "22"
]
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

    static func getContext(env: JSEnv): ?JSContext {
        synchronized(RUNTIMES_MUTEX) {
            ALL_RUNTIMES_.get(env)
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
    let void_: JSValue_
    private let scopes_ = ArrayList<Scope>()
    var pendingJSError: ?JSObject = None

    /**
     * @throws { Exception } - Create JSContext failed, env is null.
     */
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
            JSValue(this, void_, JSType.UNDEFINED)
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
     * @returns { Bool } Returns true if the current thread can call interoperation interfaces.
     */
    @!APILevel[
        since: "22"
    ]
    public func isInBindThread(): Bool {
        bindTid_ == unsafe { ARKTS_GetPosixThreadId() }
    }

    /**
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     */
    func checkAlive(): Unit {
        if (disposed_.load() < 0) {
            throw jsObjUseAfterFree("JSContext")
        }
    }

    /**
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
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
        since: "22",
        throwexception: true
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
        since: "22",
        throwexception: true
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
     * @returns { napi_env } The env for napi interfaces.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getNapiEnv(): napi_env {
        unsafe {
            ARKTS_GetGlobalNapiEnv(env)
        }
    }

    func handleValue(value: JSValue): Unit {
        if (scopes_.isEmpty()) {
            printExp(noScopeError())
            return
        }
        scopes_[scopes_.size - 1].add(value)
    }

    /**
     * Create a new handle scope, ensuring that no js memory leaks occur when the callback function is executed in the scope.
     *
     * @param { () -> T } callback - The task to to be executed in the scope.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { T } The result of the callback.
     */
    @!APILevel[
        since: "24",
        throwexception: true
    ]
    public func newScope<T>(callback: () -> T): T {
        let scope = Scope(env)
        let index = scopes_.size
        scopes_.add(scope)
        let result = try {
            callback()
        } catch (e: Exception) {
            throw e
        } catch (e: Error) {
            throw e
        } finally {
            scopes_.remove(at: index)
            scope.close(env_)
        }
        return result
    }

    /**
     * Create an ArkTS undefined.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSUndefined } Returns ArkTS undefined.
     */
    @!APILevel[
        since: "22",
        throwexception: true
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
     * @returns { JSNull } Returns ArkTS null.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func null(): JSNull {
        checkLifecycleAndThread()
        JSNull(JSValue(this, unsafe { ARKTS_CreateNull() }, JSType.NULL))
    }

    /**
     * Create an ArkTS boolean.
     *
     * @param { Bool } value - Cangjie bool.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSBoolean } Returns ArkTS bool.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func boolean(value: Bool): JSBoolean {
        checkLifecycleAndThread()
        JSBoolean(JSValue(this, unsafe { ARKTS_CreateBool(value) }, JSType.BOOLEAN))
    }

    /**
     * Create an ArkTS number.
     *
     * @param { Float64 } value - Cangjie Float64.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSNumber } Returns ArkTS number.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func number(value: Float64): JSNumber {
        checkLifecycleAndThread()
        JSNumber(JSValue(this, unsafe { ARKTS_CreateF64(value) }, JSType.NUMBER))
    }

    /**
     * Create an ArkTS number.
     *
     * @param { Int32 } value - Cangjie Int32.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSNumber } Returns ArkTS number.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func number(value: Int32): JSNumber {
        checkLifecycleAndThread()
        JSNumber(JSValue(this, unsafe { ARKTS_CreateI32(value) }, JSType.NUMBER))
    }

    /**
     * Create an ArkTS string.
     *
     * @param { String } value - Cangjie string.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSString } Returns ArkTS string.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func string(value: String): JSString {
        JSString(this, value)
    }

    /**
     * Create an ArkTS string.
     *
     * @param { Utf16String } value - Cangjie UTF16 string.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSString } Returns ArkTS string.
     */
    @!APILevel[
        since: "22",
        throwexception: true
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
     * @returns { JSObject } Returns ArkTS object reference.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func object(): JSObject {
        JSObject(this)
    }

    /**
     * Create an ArkTS function.
     *
     * @param { JSLambda } lambda - Cangjie function.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSFunction } Returns ArkTS function reference.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func function(lambda: JSLambda): JSFunction {
        JSFunction(this, lambda)
    }

    /**
     * Create an ArkTS array.
     *
     * @param { Array<JSValue> } arr - Array of Reference to an ArkTS array.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSArray } Returns Reference to an ArkTS array.

     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func array(arr: Array<JSValue>): JSArray {
        JSArray(this, arr)
    }

    /**
     * Create an ArkTS class.
     *
     * @param { JSLambda } ctor - Cangjie function serving as the class constructor.
     * @param { ?JSClass } [ superClass ] - Named parameter. Parent class of the ArkTS class. The default value is None.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSClass } Returns Reference to the ArkTS class.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func clazz(ctor: JSLambda, superClass!: ?JSClass = None): JSClass {
        JSClass(this, ctor, superClass)
    }

    /**
     * Create an ArkTS reference to Cangjie object.
     *
     * @param { SharedObject } data - Original Cangjie object.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSExternal } Returns ArkTS reference to the Cangjie object.
     */
    @!APILevel[
        since: "22",
        throwexception: true
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
     * @returns { JSPromiseCapability } Returns Native reference to the ArkTS promise.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func promiseCapability(): JSPromiseCapability {
        JSPromiseCapability(this)
    }

    private func formatStackTrace(stack: Array<StackTraceElement>): String {
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
        String.join(stackTexts, delimiter: "\n")
    }

    func throwJSError(exception: Exception): Unit {
        let stack = formatStackTrace(exception.getStackTrace())
        let message = "${exception}\n${stack}"
        let jstr = JSString.createString(this, message)
        unsafe { ARKTS_Throw(env, jstr) }
    }

    func throwJSError(exception: Error): Unit {
        let stack = formatStackTrace(exception.getStackTrace())
        let message = "${exception}\n${stack}"
        let jstr = JSString.createString(this, message)
        unsafe { ARKTS_Throw(env, jstr) }
    }

    /**
     * Create an ArkTS ArrayBuffer.
	 *
     * @param { Int32 } length - Size of the memory block.
     * @throws { BusinessException } 34300001 - The arrayBuffer length is invalid.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSArrayBuffer } Returns Reference to an ArkTS ArrayBuffer object.
     */
    @!APILevel[
        since: "22",
        throwexception: true
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
     * @param { Array<Byte> } data - Cangjie array.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSArrayBuffer } Returns Reference to an ArkTS ArrayBuffer object.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func arrayBuffer(data: Array<Byte>): JSArrayBuffer {
        JSArrayBuffer(this, data)
    }

    /**
     * Create an ArkTS ArrayBuffer.
     *
     * @param { Array<Int8> } data - Cangjie array.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSArrayBuffer } Returns Reference to an ArkTS ArrayBuffer object.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func arrayBuffer(data: Array<Int8>): JSArrayBuffer {
        JSArrayBuffer(this, data)
    }

    /**
     * Create an ArkTS ArrayBuffer.
     *
     * @param { Array<Int16> } data - Cangjie array.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSArrayBuffer } Returns Reference to an ArkTS ArrayBuffer object.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func arrayBuffer(data: Array<Int16>): JSArrayBuffer {
        JSArrayBuffer(this, data)
    }

    /**
     * Create an ArkTS ArrayBuffer.
     *
     * @param { Array<UInt16> } data - Cangjie array.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSArrayBuffer } Returns Reference to an ArkTS ArrayBuffer object.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func arrayBuffer(data: Array<UInt16>): JSArrayBuffer {
        JSArrayBuffer(this, data)
    }

    /**
     * Create an ArkTS ArrayBuffer.
     *
     * @param { Array<UInt32> } data - Cangjie array.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSArrayBuffer } Returns Reference to an ArkTS ArrayBuffer object.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func arrayBuffer(data: Array<UInt32>): JSArrayBuffer {
        JSArrayBuffer(this, data)
    }

    /**
     * Create an ArkTS ArrayBuffer.
     *
     * @param { Array<Int32> } data - Cangjie array.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSArrayBuffer } Returns Reference to an ArkTS ArrayBuffer object.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func arrayBuffer(data: Array<Int32>): JSArrayBuffer {
        JSArrayBuffer(this, data)
    }

    /**
     * Create an ArkTS ArrayBuffer.
     *
     * @param { Array<Float32> } data - Cangjie array.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSArrayBuffer } Returns Reference to an ArkTS ArrayBuffer object.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func arrayBuffer(data: Array<Float32>): JSArrayBuffer {
        JSArrayBuffer(this, data)
    }

    /**
     * Create an ArkTS ArrayBuffer.
     *
     * @param { Array<Int64> } data - Cangjie array.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSArrayBuffer } Returns Reference to an ArkTS ArrayBuffer object.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func arrayBuffer(data: Array<Int64>): JSArrayBuffer {
        JSArrayBuffer(this, data)
    }

    /**
     * Create an ArkTS ArrayBuffer.
     *
     * @param { Array<UInt64> } data - Cangjie array.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSArrayBuffer } Returns Reference to an ArkTS ArrayBuffer object.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func arrayBuffer(data: Array<UInt64>): JSArrayBuffer {
        JSArrayBuffer(this, data)
    }

    /**
     * Create an ArkTS ArrayBuffer.
     *
     * @param { Array<Float64> } data - Cangjie array.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSArrayBuffer } Returns Reference to an ArkTS ArrayBuffer object.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func arrayBuffer(data: Array<Float64>): JSArrayBuffer {
        JSArrayBuffer(this, data)
    }

    /**
     * Create an ArkTS ArrayBuffer.
	 *
     * @param { CPointer<Byte> } rawData - Memory block address.
     * @param { Int32 } length - Size of the memory block.
     * @param { JSBufferFinalizer } finalizer - Memory block cleanup function.
     * @throws { BusinessException } 34300001 - The arrayBuffer length is invalid.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSArrayBuffer } Returns Reference to an ArkTS ArrayBuffer object.
     */
    @!APILevel[
        since: "22",
        throwexception: true
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
     * @param { String } [ description ] - Named parameter. Description of the symbol. The default value is "".
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSSymbol } Reference to the ArkTS symbol object.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func symbol(description!: String = ""): JSSymbol {
        JSSymbol(this, description)
    }

    /**
     * Create an ArkTS bigint.
     *
     * @param { Int64 } value - Cangjie Int64.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSBigInt } Reference to an ArkTS bigint object.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func bigint(value: Int64): JSBigInt {
        JSBigInt(this, value)
    }

    /**
     * Create an ArkTS bigint.
     *
     * @param { BigInt } value - Cangjie BigInt.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSBigInt } Reference to an ArkTS bigint object.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func bigint(value: BigInt): JSBigInt {
        JSBigInt(this, value)
    }

    /**
     * Create a task to be executed in ArkTS thread.
     * @param { () -> Unit } callback - Task to be executed on the ArkTS thread.
     */
    @!APILevel[
        since: "22"
    ]
    public func postJSTask(callback: () -> Unit): Unit {
        keepAlive {
            let id = asyncCallbacks_.append(callback)
            unsafe { ARKTS_CreateAsyncTask(env_, id) }
        }
    }

    /**
     * Load the built-in ArkTS napi module of the system.
     *
     * @param { String } moduleName - Registered name of the ArkTS napi module.
     * @param { ?String } [ prefix ] - Named parameter. Archive directory of the ArkTS napi module. Can be omitted if under /system/lib64/module; otherwise, specify the subdirectory name. The default value is None.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } Module return value, typically an object. Returns undefined if loading fails.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func requireSystemNativeModule(moduleName: String, prefix!: ?String = None): JSValue {
        let env = this.env // do lifecycle check and thread check here.
        unsafe {
            let moduleNameC = LibC.mallocCString(moduleName)
            if (moduleNameC.isNull()) {
                throw cHeapOOM()
            }
            let result = if (let Some(p) <- prefix) {
                let cp = LibC.mallocCString(p)
                if (cp.isNull()) {
                    LibC.free(moduleNameC)
                    throw cHeapOOM()
                }
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

    /**
     * @throws { Exception } - ArkTS error.
     */
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
        rethrowJSError(error)
    }

    private func tryParseInt32(rawCode: String): Int32 {
        if (rawCode.isEmpty()) {
            return 0
        }

        let array = rawCode.toRuneArray()
        var index = 0
        var sign: Int32 = 1
        var result: Int32 = 0

        if (array[index] == r'-') {
            sign = -1
            index += 1
            if (index >= array.size) {
                return 0
            }
        }

        while (index < array.size) {
            let c = array[index]
            if (c < r'0' || c > r'9') {
                return 0
            }
            let digit = Int32(UInt32(c) - UInt32(r'0'))

            if (sign == 1 && (result > Int32.Max / 10 || (result == Int32.Max / 10 && digit > Int32.Max % 10))) {
                return 0
            }
            if (sign == -1 && (result > -(Int32.Min / 10) || (result == -(Int32.Min / 10) && digit > -(Int32.Min % 10)))) {
                return 0
            }
            if (sign == -1 && result == -(Int32.Min / 10) && digit == -(Int32.Min % 10)) {
                if (index == array.size - 1) {
                    return Int32.Min
                } else {
                    return 0
                }
            }

            result = result * 10 + digit
            index += 1
        }
        return result * sign
    }

    func rethrowJSError(errObJ: JSObject): Unit {
        if (let Some(shared) <- errObJ.getAttachInfo()) {
            if (let Some(mixed) <- shared.cast<SharedException>()) {
                throw mixed.mixedException
            }
        }
        let errName = errObJ.getClassName()
        let rawMsg = errObJ[constants.builtinText.message]
        let errMsg = if (rawMsg.isString()) {
            rawMsg.toString()
        } else {
            "[unknown]"
        }
        let rawStack = errObJ[constants.builtinText.stack]
        let errStack: Array<String> = if (rawStack.isString()) {
            constants.parseArkStack(rawStack.toString())
        } else {
            []
        }
        let rawCode = errObJ[constants.builtinText.code]
        let errCode: Int32 = if (rawCode.isNumber()) {
            Int32(rawCode.toNumber())
        } else if (rawCode.isString()) {
            tryParseInt32(rawCode.toString())
        } else {
            0
        }
        let errDataValue = errObJ["data"]
        let errData: ?Any = if (errDataValue.isObject()) {
            errDataValue.asObject()
        } else {
            None
        }
        unsafe { CJDFX_IgnoreNextBacktrace() }
        let exception = BusinessException(errName, errCode, errMsg, errStack, errData)
        let ext = external(SharedException(exception))
        errObJ[constants.builtinText.stack] = string(exception.getMixedStackTrace()).toJSValue()
        errObJ.attachCJObject(ext)
        pendingJSError = errObJ
        throw exception
    }

    private let cachedKits = HashMap<String, JSObject>()
    var isOnLoadingCJ = false

    // create kit object
    private func createKit(config: KitConfig): JSObject {
        let result = object()
        for ((pkgName, data) in config) {
            match (data) {
                // import napi default, like: import hilog from "@ohos.hilog"(name: "hilog", pkgName: "@ohos.hilog")
                case Package(name) =>
                    result.defineOwnAccessor(name, getter: { context, _ =>
                        context.requireArkModule(pkgName)
                    })
                // import napi content.
                case Decls(decls) =>
                    for (one in decls) {
                        match (one) {
                            // export as import, like:
                            // import {AVCastPickerState} from "@ohos.multimedia.avCastPickerParam"
                            // export {AVCastPickerState}
                            case Name(name) =>
                                result.defineOwnAccessor(name, getter: { context, _ =>
                                    let pkg = context.requireArkModule(pkgName).asObject()
                                    return pkg[name]
                                })
                            // export alias, like:
                            // import {LabelOptions as ChipItemLabelOptions} from "@ohos.arkui.advanced.ChipGroup"
                            // export {ChipItemLabelOptions} (from: "LabelOptions", to: ChipItemLabelOptions)
                            case Mapping(from, to) =>
                                result.defineOwnAccessor(to, getter: { context, _ =>
                                    let pkg = context.requireArkModule(pkgName).asObject()
                                    return pkg[from]
                                })
                        }
                    }
            }
        }
        return result
    }

    /**
     * Load ArkTS module.
     *
     * @param { String } src - ArkTS module specifier.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300006 - The module not exist.
     * @throws { BusinessException } 34300007 - Can not requireArkModule during initializing cangjie module.
     * @throws { BusinessException } 34300008 - Current application have not support requireArkModule of the url.
     * @returns { JSValue } Module return value, typically an object. Returns undefined if loading fails.
     */
    @!APILevel[
        since: "23",
        throwexception: true
    ]
    public func requireArkModule(src: String): JSValue {
        let env = this.env // thread check and lifecycle check here.
        if (isOnLoadingCJ) {
            throw noRequireWhenExport()
        }
        if (!ArkModuleHelper.checkSpecifier(src)) {
            throw moduleNotExist(src)
        }
        // ArkTS kit dit not exist at runtime, cangjie create an object to fake a kit module object.
        if (src.startsWith("@kit.")) {
            if (let Some(object) <- cachedKits.get(src)) {
                return object.toJSValue()
            }
            let object = createKit(KIT_CONFIGS[src])
            cachedKits[src] = object
            return object.toJSValue()
        }
        // process native
        let (url, kind) = ArkModuleHelper.resolveUrl(src)
        unsafe {
            let handle = acquireArrayRawData(url.rawData())
            let size = UIntNative(url.size)
            let result = try {
                ARKTS_RequireArkModule(env, handle.pointer, size, kind)
            } catch (e: Exception) {
                releaseArrayRawData(handle)
                throw e
            }
            releaseArrayRawData(handle)
            return JSValue(this, result)
        }
    }
}
