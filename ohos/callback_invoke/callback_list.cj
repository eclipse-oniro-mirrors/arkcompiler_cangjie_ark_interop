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

// The Cangjie API is in Beta. For details on its capabilities and limitations, please refer to the README file.

package ohos.callback_invoke

import ohos.business_exception.BusinessException

import std.collection.ArrayList
import std.sync.Mutex

class CallbackWrapper {
    let callback: CallbackObject
    var isOnce: Bool

    init(callback: CallbackObject, inOnce: Bool) {
        this.callback = callback
        this.isOnce = inOnce
    }
}

protected class CallbackList {
    var list: ?ArrayList<CallbackWrapper> = None
    var listMut: Mutex = Mutex()
    static let DEFAULTLAMBDA = { => }
    private func tryInitialize(): Bool {
        synchronized(listMut) {
            match (list) {
                case Some(v) => false
                case None =>
                    list = ArrayList<CallbackWrapper>()
                    true
            }
        }
    }

    private func addCallbackInner(callback: CallbackObject, isOnce: Bool): Unit {
        synchronized(listMut) {
            list?.add(CallbackWrapper(callback, isOnce))
        }
    }

    private func hasCallback(callback: CallbackObject, isOnce: Bool): Bool {
        synchronized(listMut) {
            if (let Some(callbackList) <- list) {
                for (idx in 0..callbackList.size) {
                    if (refEq(callbackList[idx].callback, callback)) {
                        callbackList[idx].isOnce = isOnce
                        return true
                    }
                }
            }
        }
        return false
    }

    protected init() {}

    protected func removeAllCallback(): Unit {
        synchronized(listMut) {
            list?.clear()
        }
    }

    protected func invokeCallback<T>(cjType: T, error!: ?BusinessException = None): Unit {
        let listCopy = ArrayList<CallbackObject>()
        synchronized(listMut) {
            match (list) {
                case Some(callbackWrapper) =>
                    for (idx in 0..callbackWrapper.size) {
                        listCopy.add(callbackWrapper[idx].callback)
                        if (callbackWrapper[idx].isOnce) {
                            callbackWrapper.remove(at: idx)
                        }
                    }
                case None => return
            }
        }
        for (caller in listCopy) {
            (caller as Callback1Argument<T>)?.invoke(error, cjType)
        }
    }

    protected func addCallback(
        callback: CallbackObject,
        isOnce!: Bool = false,
        onInitialize!: () -> Unit = DEFAULTLAMBDA,
        onSucceed!: () -> Unit = DEFAULTLAMBDA,
        onFailed!: () -> Unit = DEFAULTLAMBDA
    ): Unit {
        if (tryInitialize()) {
            onInitialize()
        }
        if (hasCallback(callback, isOnce)) {
            onFailed()
            return
        }
        addCallbackInner(callback, isOnce)
        onSucceed()
    }

    protected func removeCallback(
        callback: CallbackObject,
        onSucceed!: () -> Unit = DEFAULTLAMBDA,
        onFailed!: () -> Unit = DEFAULTLAMBDA
    ): Unit {
        synchronized(listMut) {
            if (let Some(callbackList) <- list) {
                for (idx in 0..callbackList.size) {
                    if (refEq(callbackList[idx].callback, callback)) {
                        callbackList.remove(at: idx)
                        onSucceed()
                        return
                    }
                }
            }
            onFailed()
        }
    }
}