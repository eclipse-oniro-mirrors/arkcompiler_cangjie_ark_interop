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

protected package ohos.ffi

import ohos.hilog.HilogChannel

let FFI_BIND_LOG = HilogChannel(0, 0xD001E00, "CJ-FFIBind")

// only for ffi package
func getOrThrow<T>(optData: Option<T>, msg!: String = ""): T {
    match (optData) {
        case None =>
            FFI_BIND_LOG.error(msg)
            throw NoneValueException(msg + "\n")
        case Some(data) => data
    }
}

protected open class CFFIException <: Exception {
    protected init(message: String) {
        super(message)
    }
}

protected class InvalidArgsException <: CFFIException {
    protected init() {
        super("Invalid args or ret")
    }
}
