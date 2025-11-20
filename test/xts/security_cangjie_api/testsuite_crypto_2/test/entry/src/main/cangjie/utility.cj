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

package ohos_app_cangjie_entry

import std.sync.{Monitor}
internal import ohos.ark_interop.{JSModule}
import kit.PerformanceAnalysisKit.Hilog
import ohos.business_exception.*
import ohos.resource_manager.{ResourceManager}
import ohos.web.webview.{WebviewController}
import std.time.{DateTime}
import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*

public class Comment {
    public func assertThrows(expectedException: Error, f: () -> Unit): Unit {
        try {
            f()
        } catch (actualException: BusinessException) {
            @Expect(expectedException.code, actualException.code)
            @Expect(expectedException.message, actualException.message)
        }
    }
}

public func comment(_: String): Comment {
    Comment()
}

public enum Error {
    | ParameterError(String)
    | NotSupportOperation(String)
    | NotSupportOperation2
    | OperationError(String)
    | GetAsyKeySpecFailed(String)
    | MemoryError(String)
    | CapabilityNotSupported

    public prop code: Int32 {
        get() {
            match (this) {
                case CapabilityNotSupported => 801
                case NotSupportOperation(_) => 801
                case NotSupportOperation2 => 801
                case ParameterError(_) => 401
                case GetAsyKeySpecFailed(_) => 401
                case OperationError(_) => 17630001
                case MemoryError(_) => 17620001
            }
        }
    }
    public prop message: String {
        get() {
            match (this) {
                case CapabilityNotSupported => "[SymKeyGenerator] createSymKeyGenerator: Capability not supported."
                case ParameterError(functionName) => "${functionName}: Parameter error."
                case GetAsyKeySpecFailed(functionName) => "${functionName} failed to get valid asyKeySpec!"
                case NotSupportOperation(functionName) => "${functionName}: Capability not supported."
                case NotSupportOperation2 => "Capability not supported."
                case OperationError(functionName) => "${functionName}: Crypto operation error."
                case MemoryError(functionName) => "${functionName}: Memory error."
            }
        }
    }
}
