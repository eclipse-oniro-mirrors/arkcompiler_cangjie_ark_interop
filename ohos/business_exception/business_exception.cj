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

package ohos.business_exception

import std.collection.HashMap
import ohos.labels.APILevel

protected const ERR_NO_PERMISSION: Int32 = 201
protected const ERR_NOT_SYSTEM_APP: Int32 = 202
protected const ERR_PARAMETER_ERROR: Int32 = 401
protected const ERR_NOT_SUPPOERTED: Int32 = 801
protected let UNIVERSAL_ERROR_MAP = HashMap<Int32, String>(
    [
        (ERR_NO_PERMISSION,
            "Permission verification failed. The application does not have the permission required to call the API."),
        (ERR_NOT_SYSTEM_APP, "Permission verification failed. A non-system application calls a system API."),
        (ERR_PARAMETER_ERROR, "Parameter error. Parameter verification failed."),
        (ERR_NOT_SUPPOERTED, "Capability not supported. Failed to call the API due to limited device capabilities.")
    ]
)

protected func getUniversalErrorMsg(code: Int32): ?String {
    UNIVERSAL_ERROR_MAP.get(code)
}

enum ErrorKind {
    | Normal
    | CrossCangjie(Exception, Array<String>)
    | CrossArkTS(String, Array<String>)
}

/**
 * Defines the exception interface.
 */
@!APILevel[
    since: "22"
]
public class BusinessException <: Exception {
    /**
     * Defines the basic error code.
     */
    @!APILevel[
        since: "22"
    ]
    public let code: Int32

    private var errData: ?Any
    private let kind: ErrorKind

    /**
     * Defines the additional information for business.
     *
     * @returns { ?T } Return the business value.
     */
    @!APILevel[
        since: "22"
    ]
    public func getData<T>(): ?T {
        if (let Some(v) <- errData) {
            return v as T
        } else {
            return None
        }
    }

    protected init(code: Int32, msg: String, data!: ?Any = None) {
        super(msg)
        this.code = code
        this.errData = data
        kind = Normal
    }

    protected init(className: String, code: Int32, message: String, arkStack: Array<String>) {
        super(message)
        this.code = code
        this.errData = None
        kind = CrossArkTS(className, arkStack)
    }

    protected init(code: Int32, exp: Exception, stack: Array<String>) {
        super("")
        this.code = code
        this.errData = None
        kind = CrossCangjie(exp, stack)
    }

    protected override func getClassName(): String {
        match (kind) {
            case Normal => "BusinessException"
            case CrossArkTS(name, _) => name
            case CrossCangjie(exp, _) => exp.getClassName()
        }
    }

    protected func isCross(): Bool {
        match (kind) {
            case Normal => false
            case _ => true
        }
    }

    /**
     * Translate the exception to String.
     *
     * @returns { String } String representation of the exception.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String {
        match (kind) {
            case Normal => toNormalStr()
            case _ => toCrossStr()
        }
    }

    private func toCrossStr(): String {
        let codeStr = if (code == 0) {
            ""
        } else {
            "Error code: ${code}\n"
        }
        "Error name:${getClassName()}\nError message:${getCrossMessage()}\n${codeStr}Stacktrace:\n${getMixedStackTrace()}"
    }

    protected func getCrossMessage(): String {
        match (kind) {
            case CrossCangjie(exp, _) => exp.message
            case _ => this.message
        }
    }

    protected func getMixedStackTrace(): String {
        match (kind) {
            case CrossCangjie(exp, arkStack) =>
                var s = ""
                for (element in exp.getStackTrace()) {
                    s += "    at ${element.declaringClass}.${element.methodName}(${element.fileName}:${element.lineNumber})\n"
                }
                s += String.join(arkStack, delimiter: "\n")
                s
            case CrossArkTS(_, arkStack) =>
                var s = ""
                for (l in arkStack) {
                    s += "${l}\n"
                }
                let cjStack = getStackTrace()
                s += String.join(Array(cjStack.size) { idx =>
                    let element = cjStack[idx]
                    "    at ${element.declaringClass}.${element.methodName}(${element.fileName}:${element.lineNumber})"
                }, delimiter: "\n")
                s
            case _ => throw Exception()
        }
    }

    private func toNormalStr(): String {
        let className: String = getClassName()
        let message: String = this.message
        if (message.isEmpty()) {
            return "${className}:  errorcode: ${code}"
        }
        return "${className}: errorcode: ${code}, message: ${message}"
    }
}

/**
 * Defines the basic async callback.
 */
public type AsyncCallback<T> = (Option<BusinessException>, Option<T>) -> Unit
