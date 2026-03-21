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

import std.collection.*

protected class LazyInit<T> {
    private var data_: ?T = None
    private var func_: ?() -> T

    protected init(lambda: () -> T) {
        func_ = lambda
    }

    protected prop data: T {
        get() {
            if (let Some(v) <- data_) {
                v
            } else {
                let v = func_.getOrThrow()()
                func_ = None
                data_ = v
                v
            }
        }
    }
}

class JSBuiltinText {
    let WeakSet: JSString
    let add: JSString
    let delete: JSString
    let has: JSString
    let WeakMap: JSString
    let get: JSString
    let set: JSString
    let constructor: JSString

    let Error: JSString
    let name: JSString
    let message: JSString
    let stack: JSString
    let code: JSString
    let prototype: JSString
    let __proto__: JSString
    let __cj_object__: JSSymbol
    let next: JSString
    let done: JSString
    let value: JSString

    init(context: JSContext) {
        WeakSet = context.string("WeakSet")
        add = context.string("add")
        delete = context.string("delete")
        has = context.string("has")
        WeakMap = context.string("WeakMap")
        get = context.string("get")
        set = context.string("set")
        constructor = context.string("constructor")
        Error = context.string("Error")
        name = context.string("name")
        message = context.string("message")
        stack = context.string("stack")
        prototype = context.string("prototype")
        __proto__ = context.string("__proto__")
        __cj_object__ = context.symbol(description: "__cj_object__")
        next = context.string("next")
        done = context.string("done")
        value = context.string("value")
        code = context.string("code")
    }
}

class JSMapFuncs {
    let clazz: JSClass

    let delete: JSFunction
    let get: JSFunction
    let has: JSFunction
    let set: JSFunction
    let clear: JSFunction
    let keys: JSFunction

    init(context: JSContext) {
        clazz = context.global["Map"].asClass()
        let proto = clazz.prototype
        delete = proto["delete"].asFunction()
        get = proto["get"].asFunction()
        has = proto["has"].asFunction()
        set = proto["set"].asFunction()
        clear = proto["clear"].asFunction()
        keys = proto["keys"].asFunction()
    }
}

/**
 * @throws { BusinessException } 34300002 - Outside error occurred.
 */
func loadGlobalClass(context: JSContext, name: String): JSClass {
    context.env // do lifecycle check and thread check here.
    let value = context.global[name]
    if (!value.isClass()) {
        throw propertyError("global", name, "class")
    }
    value.asClass()
}

class JSTypedArrayFuncs {
    let arrayBuffer: LazyInit<JSClass>
    let dataView: LazyInit<JSClass>
    let uint8Array: LazyInit<JSClass>
    let uint8Clamped: LazyInit<JSClass>
    let int8Array: LazyInit<JSClass>
    let uint16Array: LazyInit<JSClass>
    let int16Array: LazyInit<JSClass>
    let uint32Array: LazyInit<JSClass>
    let int32Array: LazyInit<JSClass>
    let uint64Array: LazyInit<JSClass>
    let int64Array: LazyInit<JSClass>
    let float32Array: LazyInit<JSClass>
    let float64Array: LazyInit<JSClass>

    init(context: JSContext) {
        arrayBuffer = LazyInit {
            loadGlobalClass(context, "ArrayBuffer")
        }
        dataView = LazyInit {
            loadGlobalClass(context, "DataView")
        }
        uint8Array = LazyInit {
            loadGlobalClass(context, "Uint8Array")
        }
        uint8Clamped = LazyInit {
            loadGlobalClass(context, "Uint8ClampedArray")
        }
        int8Array = LazyInit {
            loadGlobalClass(context, "Int8Array")
        }
        uint16Array = LazyInit {
            loadGlobalClass(context, "Uint16Array")
        }
        int16Array = LazyInit {
            loadGlobalClass(context, "Int16Array")
        }
        uint32Array = LazyInit {
            loadGlobalClass(context, "Uint32Array")
        }
        int32Array = LazyInit {
            loadGlobalClass(context, "Int32Array")
        }
        int64Array = LazyInit {
            loadGlobalClass(context, "BigInt64Array")
        }
        uint64Array = LazyInit {
            loadGlobalClass(context, "BigUint64Array")
        }
        float32Array = LazyInit {
            loadGlobalClass(context, "Float32Array")
        }
        float64Array = LazyInit {
            loadGlobalClass(context, "Float64Array")
        }
    }
}

class JSConstants {
    let context: JSContext
    let builtinText: JSBuiltinText
    let mapFuncs: JSMapFuncs
    let typedArray: JSTypedArrayFuncs
    let errClsByName = HashMap<String, JSClass>()

    init(context: JSContext) {
        this.context = context
        builtinText = JSBuiltinText(context)
        mapFuncs = JSMapFuncs(context)
        typedArray = JSTypedArrayFuncs(context)
        errClsByName["Error"] = context.global["Error"].asClass()
    }

    func getErrorClass(clsName: String): JSClass {
        if (let Some(cls) <- errClsByName.get(clsName)) {
            cls
        } else {
            let base = errClsByName["Error"]
            let cls = context.clazz({ context, callInfo =>
                callInfo.thisArg
            }, superClass: base)
            cls.addProperty("name", context.string(clsName).toJSValue())
            errClsByName[clsName] = cls
            cls
        }
    }

    func getArkStack(): Array<String> {
        let cls = errClsByName["Error"]
        let obJ = cls.new().asObject()
        let stack = obJ["stack"].toString()
        parseArkStack(stack)
    }

    func parseArkStack(stack: String): Array<String> {
        let result = ArrayList<String>()
        for (line in stack.split("\n")) {
            if (!line.trimStart().isEmpty()) {
                result.add(line)
            }
        }
        result.toArray()
    }
}
