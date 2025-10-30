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

package ohos.ark_interop_helper

import ohos.hilog.HilogChannel
import std.collection.HashMap

class Console <: SharedObject {
    static let LOGGER = HilogChannel(0, 0xD001E00, "console")
    let counter = HashMap<String, Int64>()

    static func create(context: JSContext): Unit {
        context.postJSTask {
            if (!context.global["console"].isObject()) {
                context.global["console"] = Console(context).createObj()
            }
        }
    }

    Console(let context: JSContext) {
    }

    func createObj(): JSValue {
        let console = context.object()
        console.attachCJObject(context.external(this))
        console["assert"] = context.function(jsAssert).toJSValue()
        console["clear"] = context.function(jsClear).toJSValue()
        console["count"] = context.function(jsCount).toJSValue()
        console["countReset"] = context.function(jsCountReset).toJSValue()
        console["debug"] = context.function {
            _, callInfo => consoleCall(context, callInfo) {
                console => console.debug(callInfo[0].toString())
            }
        }.toJSValue()
        console["dir"] = context.function {
            _, callInfo => consoleCall(context, callInfo) {
                console => console.dir()
            }
        }.toJSValue()
        console["dirxml"] = context.function {
            _, callInfo => consoleCall(context, callInfo) {
                console => console.dirxml()
            }
        }.toJSValue()
        console["error"] = context.function {
            _, callInfo => consoleCall(context, callInfo) {
                console => console.error(callInfo[0].toString())
            }
        }.toJSValue()
        console["group"] = context.function {
            _, callInfo => consoleCall(context, callInfo) {
                console => console.group()
            }
        }.toJSValue()
        console["groupCollapsed"] = context.function {
            _, callInfo => consoleCall(context, callInfo) {
                console => console.groupCollapsed()
            }
        }.toJSValue()
        console["groupEnd"] = context.function {
            _, callInfo => consoleCall(context, callInfo) {
                console => console.groupEnd()
            }
        }.toJSValue()
        console["info"] = context.function {
            _, callInfo => consoleCall(context, callInfo) {
                console => console.info(callInfo[0].toString())
            }
        }.toJSValue()
        console["log"] = context.function {
            _, callInfo => consoleCall(context, callInfo) {
                console => console.info(callInfo[0].toString())
            }
        }.toJSValue()
        console["table"] = context.function {
            _, callInfo => consoleCall(context, callInfo) {
                console => console.table()
            }
        }.toJSValue()
        console["time"] = context.function {
            _, callInfo => consoleCall(context, callInfo) {
                console => console.time()
            }
        }.toJSValue()
        console["timeEnd"] = context.function {
            _, callInfo => consoleCall(context, callInfo) {
                console => console.timeEnd()
            }
        }.toJSValue()
        console["timeLog"] = context.function {
            _, callInfo => consoleCall(context, callInfo) {
                console => console.timeLog()
            }
        }.toJSValue()
        console["trace"] = context.function {
            _, callInfo => consoleCall(context, callInfo) {
                console => console.trace(callInfo[0].toString())
            }
        }.toJSValue()
        console["warn"] = context.function {
            _, callInfo => consoleCall(context, callInfo) {
                console => console.warn(callInfo[0].toString())
            }
        }.toJSValue()
        console["profile"] = context.function {
            _, callInfo => consoleCall(context, callInfo) {
                console => console.profile()
            }
        }.toJSValue()
        console["profileEnd"] = context.function {
            _, callInfo => consoleCall(context, callInfo) {
                console => console.profileEnd()
            }
        }.toJSValue()
        console["timeStamp"] = context.function {
            _, callInfo => consoleCall(context, callInfo) {
                console => console.timeStamp()
            }
        }.toJSValue()
        console.toJSValue()
    }

    static func consoleCall(context: JSContext, callInfo: JSCallInfo, callback: (Console) -> Unit): JSValue {
        let console = callInfo.thisArg.asObject().getAttachInfo().getOrThrow().cast<Console>().getOrThrow()
        callback(console)
        context.undefined().toJSValue()
    }

    static func jsAssert(context: JSContext, callInfo: JSCallInfo): JSValue {
        let target = callInfo[0]

        if (!isGood(target)) {
            throw Exception(callInfo[1].toString())
        }

        context.undefined().toJSValue()
    }

    static func jsClear(context: JSContext, callInfo: JSCallInfo): JSValue {
        consoleCall(context, callInfo) {
            console => console.clear()
        }
    }

    static func jsCount(context: JSContext, callInfo: JSCallInfo): JSValue {
        consoleCall(context, callInfo) {
            console =>
            let label = if (callInfo.count > 0 && callInfo[0].isString()) {
                callInfo[0].toString()
            } else {
                "default"
            }
            console.count(label)
        }
    }

    static func jsCountReset(context: JSContext, callInfo: JSCallInfo): JSValue {
        consoleCall(context, callInfo) {
            console =>
            let label = if (callInfo.count > 0 && callInfo[0].isString()) {
                callInfo[0].toString()
            } else {
                "default"
            }
            console.countReset(label)
        }
    }

    static func isGood(target: JSValue): Bool {
        let ty = target.typeof()
        if (ty == JSType.UNDEFINED || ty == JSType.NULL) {
            return false
        }
        if (ty == JSType.NUMBER) {
            return target.toNumber() == 0.0
        } else if (ty == JSType.STRING) {
            return target.toString() == ""
        }
        return true
    }

    func info(message: String): Unit {
        LOGGER.info(message)
    }

    func clear(): Unit {
        counter.clear()
    }

    func count(label: String): Unit {
        let count = if (counter.contains(label)) {
            counter[label] + 1
        } else {
            1
        }
        counter[label] = count
        LOGGER.info("${label}: ${count}")
    }

    func countReset(label: String): Unit {
        counter.remove(label)
    }

    func debug(message: String): Unit {
        LOGGER.debug(message)
    }

    func error(message: String): Unit {
        LOGGER.error(message)
    }

    func dir(): Unit {
        error("console.dir unsupport")
    }

    func dirxml(): Unit {
        error("console.dirxml unsupport")
    }

    func group(): Unit {
        error("console.group unsupport")
    }

    func groupCollapsed(): Unit {
        error("console.groupCollaped unsupport")
    }

    func groupEnd(): Unit {
        error("console.groupEnd unsupport")
    }

    func table(): Unit {
        error("console.table unsupport")
    }

    func time(): Unit {
        error("console.time unsupport")
    }

    func timeEnd(): Unit {
        error("console.timeEnd unsupport")
    }

    func timeLog(): Unit {
        error("console.timeLog unsupport")
    }

    func trace(message: String): Unit {
        LOGGER.info(message)
    }

    func warn(message: String): Unit {
        LOGGER.warn(message)
    }

    func profile(): Unit {
        error("console.profile unsupport")
    }

    func profileEnd(): Unit {
        error("console.profileEnd unsupport")
    }

    func timeStamp(): Unit {
        error("console.timeStamp unsupport")
    }
}
