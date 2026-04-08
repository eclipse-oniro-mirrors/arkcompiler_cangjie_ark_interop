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

@Intrinsic func getJSLambdaAddr(lambda: (JSContext, JSCallInfo)->JSValue): CPointer<Unit>

@FastNative
foreign func ARKTS_RegisterAddrGetter(callback: CFunc<(JSEnv, Int64)->CPointer<Unit>>): Unit

@C
func getJSLambdaAddr_(env: JSEnv, id: Int64): CPointer<Unit> {
    let context = JSContext.getContext(env) ?? return CPointer<Unit>()
    let lambda = context.sharedLambda_.get(id) ?? return CPointer<Unit>()
    return getJSLambdaAddr(lambda)
}

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
    let exportValue = JSValue(context, exports)
    context.newScope {
        try {
            let name = cname.toString()
            let exportObj = exportValue.asObject()
            JSModule.finishLoad(name).fillInto(context, exportObj)
            exportValue.value
        } catch (err: Exception) {
            context.throwJSError(err)
            context.void_
        } catch (err: Error) {
            context.throwJSError(err)
            context.void_
        } finally {
            context.isOnLoadingCJ = false
        }
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
        throw BusinessException("Error", 0, errorMsg, [], None)
    } else if (!error.isObject()) {
        throw BusinessException("Error", 0, "unsupported js error[${error.typeof().toString()}]", [], None)
    }
    if (let Some(shared) <- error.getBindingObject()) {
        if (let Some(mixed) <- (shared as SharedException)) {
            throw mixed.mixedException
        }
    }
    let errObJ = error.asObject()
    let errName = errObJ.getClassName()
    var errMsg = if (errObJ["message"].isString()) {
        errObJ["message"].toString()
    } else {
        "[unknown]"
    }
    let errStack: Array<String> = if (errObJ["stack"].isString()) {
        context.constants.parseArkStack(errObJ["stack"].toString())
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
    let errDataValue = errObJ["data"]
    let errData: ?Any = if (errDataValue.isObject()) {
        errDataValue.asObject()
    } else {
        None
    }
    throw BusinessException(errName, errCode, errMsg, errStack, errData)
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
    // Reference to usage in ohpm.
    private static const DELIMITER = "@"

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
        unsafe { ARKTS_RegisterAddrGetter(getJSLambdaAddr_) }
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

    // To be made public.
    static func registerModule(name: String, register: ModuleRegister): Unit {
        if (name.isEmpty()) {
            return registerModule(register)
        }
        if (!JSModule.LOADED_MODULES_.contains(name)) {
            let newModule = JSModule()
            JSModule.LOADED_MODULES_.add(name, newModule)
        }
        LOADED_MODULES_[name].addExporter(register)
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
        if (name.contains(DELIMITER)) {
            let split = name.split(DELIMITER, 2)
            let moduleName = split[0]
            let identifier = split[1]
            return registerModule(moduleName) { context, exports =>
                exports[identifier] = register(context).toJSValue()
            }
        }
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
        if (name.contains(DELIMITER)) {
            let split = name.split(DELIMITER, 2)
            let moduleName = split[0]
            let identifier = split[1]
            return registerModule(moduleName) { context, exports =>
                exports[identifier] = register(context).toJSValue()
            }
        }
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
        if (name.contains(DELIMITER)) {
            let split = name.split(DELIMITER, 2)
            let moduleName = split[0]
            let identifier = split[1]
            return registerModule(moduleName) { context, exports =>
                exports[identifier] = context.function(lambda).toJSValue()
            }
        }
        lastModule_.addRawFunc(name, lambda)
    }

    static func getCachedModule(name: String): ?JSModule {
        LOADED_MODULES_.get(name)
    }

    static func finishLoad(name: String): JSModule {
        let result = lastModule_
        lastModule_ = JSModule()
        if (let Some(module) <- getCachedModule(name)) {
            if (!module.finished_) {
                module.exports_.add(all: result.exports_)
                module.classes_.add(all: result.classes_)
                module.funcs_.add(all: result.funcs_)
                module.rawFuncs_.add(all: result.rawFuncs_)
                module.finished_ = true
            }
            return module
        } else {
            LOADED_MODULES_.add(name, result)
            result.finished_ = true
            return result
        }
    }

    private let classes_ = HashMap<String, ClassRegister>()
    private let funcs_ = HashMap<String, FuncRegister>()
    private let rawFuncs_ = HashMap<String, JSLambda>()
    private let exports_ = ArrayList<ModuleRegister>()
    private var finished_ = false

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
