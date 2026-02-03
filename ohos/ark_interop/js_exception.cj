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

import ohos.business_exception.BusinessException
import ohos.hilog.*

internal func jsArrayRangeMisMatch(min: Int64, max: Int64, given: Int64, message!: String = "The accessing index is out of range"): BusinessException {
    return BusinessException(34300001, "${message}, allowed: [${min}, ${max}), given: ${given}")
}

internal func jsCodeError(code: Int32, jsMessage: String, jsStack: Array<String>): BusinessException {
    return outsideError("ArkTS exception, code: ${code}, " +
        "message: ${jsMessage}, stack: ${String.join(jsStack, delimiter: "\n")}.")
}

internal func jsCodeError(jsMessage: String, jsStack: Array<String>): BusinessException {
    return outsideError("ArkTS exception, " +
        "message: ${jsMessage}, stack: ${String.join(jsStack, delimiter: "\n")}.")
}

internal func outsideError(message: String): BusinessException {
    return BusinessException(34300002, "Outside error occurred, ${message}")
}

// throw when create Local value without any scope.
internal func noScopeError(): BusinessException {
    return BusinessException(34300003, "Without any scope")
}

internal func jsObjUseAfterFree(kind: String): BusinessException {
    return BusinessException(34300003, "Accessing reference [${kind}] is beyond reach.")
}

internal func jsThreadMismatch(bindTid: UInt64, curTid: UInt64): BusinessException {
    BusinessException(34300004, "Thread mismatch, bound thread is ${bindTid}, current thread is ${curTid}.")
}

internal func jsTypeMisMatch(acquireType: String, givenType: JSType): BusinessException {
    BusinessException(34300005, "The ArkTS data types do not match, expect: ${acquireType}, given: ${givenType.toString()}.")
}

internal func jsTypeMisMatch(acquireType: JSType, givenType: JSType): BusinessException {
    BusinessException(34300005, "The ArkTS data types do not match, expect: ${acquireType.toString()}, given: ${givenType.toString()}.")
}

internal func sizeError(size: Int64, tyName: String): BusinessException {
    return outsideError("Binding memory's size is not uniformed(${tyName}'s size should be pow of ${size}).")
}

internal func codecError(): BusinessException {
    return outsideError("Codec error.")
}

internal func nativeIdInvalid(value: Int64): BusinessException {
    return outsideError("Unknown native reference, id is ${value}.")
}

internal func propertyError(object: String, propertyName: String, expectType: String): BusinessException {
    return outsideError("Property ${object}.${propertyName} is not ${expectType}")
}

internal func integerOverflow(): BusinessException {
    return outsideError("Integer overflow.")
}

internal func indexInvalid(key: String): BusinessException {
    return outsideError("Dict key ${key} not found.")
}

internal func cHeapOOM(): BusinessException {
    return outsideError("c heap out of memory")
}

internal func moduleNotExist(src: String): BusinessException {
    BusinessException(34300006, "Fail to load module '${src}' which doesn't exist.")
}

internal func noRequireWhenExport(): BusinessException {
    BusinessException(34300007, "Cannot requireArkModule during initializing cangjie module.")
}

internal func withoutArkFrame(): BusinessException {
    BusinessException(34300008, "Cannot requireArkModule without ArkTS frame.")
}

class JSInteropNativeError <: Exception {
    public init(message: String) {
        super(message)
    }

    protected func getClassName(): String {
        "JSInteropNativeError"
    }
}

internal func invalidHeapObject(value: JSValue_): BusinessException {
    outsideError("Target value[${value.value}] is not heap object.")
}

internal func printExp(exp: Exception): Unit {
    Hilog.error(0xD003900, "ark_interop", exp.toString())
    for (element in exp.getStackTrace()) {
        Hilog.error(0xD003900, "ark_interop", "\t at ${element.declaringClass}.${element.methodName}(${element.fileName}:${element.lineNumber})")
    }
}