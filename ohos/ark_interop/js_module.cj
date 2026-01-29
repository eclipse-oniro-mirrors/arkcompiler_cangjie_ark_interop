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

import std.collection.{HashMap, ArrayList}
import std.convert.Parsable
import ohos.business_exception.*

@C
struct CJModuleCallbacks {
    CJModuleCallbacks(
        let exporter: CFunc<(JSEnv, CString, JSValue_) -> JSValue_>,
        let hasModule: CFunc<(CString) -> Bool>,
        let throwJSError: CFunc<(JSEnv, JSValue_) -> Unit>,
        let throwNativeError: CFunc<(CString) -> Unit>,
        let deleteBuffer: CFunc<(CPointer<Byte>, Int64) -> Unit>,
        let deleteExternal: CFunc<(Int64, JSEnv) -> Unit>,
        let invokeLambda: CFunc<(JSCallInfoPrivate, Int64) -> JSValue_>,
        let deleteLambda: CFunc<(JSEnv, Int64) -> Unit>,
        let invokeAsync: CFunc<(JSEnv, Int64) -> Unit>,
        let deleteContext: CFunc<(JSEnv) -> Unit>
    ) {}
}

foreign func ARKTS_SetCJModuleCallback(callbacks: CPointer<CJModuleCallbacks>): Unit

/**
 * Alias for function which is `(JSContext, JSObject) -> Unit`.
 */
public type ModuleRegister = (JSContext, JSObject) -> Unit

/**
 * Alias for function which is `(JSContext) -> JSClass`.
 */
public type ClassRegister = (JSContext) -> JSClass

/**
 * Alias for function which is `(JSContext) -> JSFunction`.
 */
public type FuncRegister = (JSContext) -> JSFunction

@C
func loadArkInteropModule(env: JSEnv, cname: CString, exports: JSValue_): JSValue_ {
    let context = JSContext.getOrCreate(env)
    context.isOnLoadingCJ = true
    try {
        let name = cname.toString()
        let module = match (JSModule.getCachedModule(name)) {
            case Some(mod) => mod
            case None => JSModule.finishLoad(name)
        }
        let exportObj = JSValue(context, exports).asObject()
        module.fillInto(context, exportObj)
        context.isOnLoadingCJ = false
        exports
    } catch (err: Exception) {
        context.isOnLoadingCJ = false
        context.throwJSError(err)
        context.undefined().toJSValue().value
    }
}

@C
func hasArkInteropModule(cname: CString): Bool {
    let name = cname.toString()
    JSModule.LOADED_MODULES_.contains(name)
}

/**
 * @throws { BusinessException } 34300002 - Outside error occurred.
 * @throws { Exception } - Unknown js error.
 */
@C
func throwJSErrorToCJ(env: JSEnv, rawError: JSValue_): Unit {
    let context = JSContext.getOrCreate(env)
    let error = JSValue(context, rawError)

    if (error.isString()) {
        let errorMsg = error.toString()
        throw jsCodeError(errorMsg, [])
    } else if (!error.isObject()) {
        throw Exception("unknown js error")
    }
    let errObJ = error.asObject()
    let errName = if (errObJ["name"].isString()) {
        errObJ["name"].toString()
    } else {
        "[unknown]"
    }
    let errMsg = if (errObJ["message"].isString()) {
        errObJ["message"].toString()
    } else {
        "[unknown]"
    }
    let errStack: Array<String> = if (errObJ["stack"].isArray()) {
        let errStack = errObJ["stack"].asArray()
        let stackSize = errStack.size
        Array<String>(stackSize) {
            idx => if (errStack[idx].isString()) {
                errStack[idx].toString()
            } else {
                "..."
            }
        }
    } else {
        []
    }
    let errCode: Int32 = if (errObJ["code"].isNumber()) {
        Int32(errObJ["code"].toNumber())
    } else if (errObJ["code"].isString()) {
        let code = Int32.tryParse(errObJ["code"].toString())
        if (let Some(v) <- code) {
            v
        } else {
            0
        }
    } else {
        0
    }
    if (let Some(missingModule) <- searchNotExist(errMsg)) {
        throw moduleNotExist(missingModule)
    }
    // requireArkModule without ArkTS frame may fail, reorganize the error message to help user fix the failure.
    if (errMsg.startsWith("ReferenceError Unable to get recordName and fileName due to failure")) {
        throw withoutArkFrame()
    }
    throw jsCodeError(errCode, "${errName}\n${errMsg}", errStack)
}

// case1: cannot find record '&somemodule/somedir/somefile&1.0.0'
// case2: Cannot find module 'libxxx.so'
func searchNotExist(src: String): ?String {
    let begins = ["cannot find record '", "Cannot find module '"]
    for (target in begins) {
        let endingChar: UInt8 = "'"
        if (!src.startsWith(target)) {
            continue
        }
        if (let Some(ending) <- src.indexOf(endingChar, target.size)) {
            return src[target.size..ending]
        }
    }
    return None
}

/**
 * @throws { JSInteropNativeError } - JSInteropNativeError.
 */
@C
func throwNativeErrorToCJ(message: CString): Unit {
    let msg = unsafe { message.toString() }
    throw JSInteropNativeError(msg)
}

/**
 * A static class that provides interface for exporting symbol registration.
 */
@!APILevel[
    since: "22"
]
public class JSModule {
    private static var lastModule_ = JSModule()
    static let LOADED_MODULES_ = HashMap<String, JSModule>()

    static init() {
        var moduleCallbacks = CJModuleCallbacks(
            loadArkInteropModule,
            hasArkInteropModule,
            throwJSErrorToCJ,
            throwNativeErrorToCJ,
            JSBufferFinalizerStub,
            cjExternalDestructor,
            cjLambdaInvoker,
            cjLambdaDestructor,
            asyncCallbackExecutor,
            disposeJSContext
        )
        unsafe { ARKTS_SetCJModuleCallback(inout moduleCallbacks) }
    }

    /**
     * Register the interface to be exported to ArkTS.
     *
     * @param { ModuleRegister } register - A function that can return an ArkTS class (constructor).
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func registerModule(register: ModuleRegister): Unit {
        lastModule_.addExporter(register)
    }

    /**
     * Register a class to be exported to ArkTS.
     *
     * @param { String } name - Export name.
     * @param { ClassRegister } register - A function that returns an ArkTS class.
     */
    @!APILevel[
        since: "22"
    ]
    public static func registerClass(name: String, register: ClassRegister): Unit {
        lastModule_.addClass(name, register)
    }

    /**
     * Register a function to be exported to ArkTS.
     *
     * @param { String } name - Exported function name.
     * @param { FuncRegister } register - A function that returns JSFunction.
     */
    @!APILevel[
        since: "22"
    ]
    public static func registerFunc(name: String, register: FuncRegister): Unit {
        lastModule_.addFunc(name, register)
    }

    /**
     * Register a function to be exported to ArkTS.
     *
     * @param { String } name - Exported function name.
     * @param { JSLambda } lambda - The function to export.
     */
    @!APILevel[
        since: "22"
    ]
    public static func registerFunc(name: String, lambda: JSLambda): Unit {
        lastModule_.addRawFunc(name, lambda)
    }

    static func getCachedModule(name: String): ?JSModule {
        LOADED_MODULES_.get(name)
    }

    static func finishLoad(name: String): JSModule {
        let result = lastModule_
        lastModule_ = JSModule()
        LOADED_MODULES_.add(name, result)
        result
    }

    private let classes_ = HashMap<String, ClassRegister>()
    private let funcs_ = HashMap<String, FuncRegister>()
    private let rawFuncs_ = HashMap<String, JSLambda>()
    private let exports_ = ArrayList<ModuleRegister>()

    func addClass(name: String, register: ClassRegister): Unit {
        classes_.add(name, register)
    }

    func addFunc(name: String, register: FuncRegister): Unit {
        funcs_.add(name, register)
    }

    func addRawFunc(name: String, rawFunc: JSLambda): Unit {
        rawFuncs_.add(name, rawFunc)
    }

    func addExporter(register: ModuleRegister): Unit {
        exports_.add(register)
    }

    func fillInto(context: JSContext, object: JSObject): Unit {
        for ((k, v) in classes_) {
            object[k] = v(context).toJSValue()
        }
        for ((k, v) in funcs_) {
            object[k] = v(context).toJSValue()
        }
        for ((k, v) in rawFuncs_) {
            object[k] = context.function(v).toJSValue()
        }
        for (exporter in exports_) {
            exporter(context, object)
        }
    }
}
