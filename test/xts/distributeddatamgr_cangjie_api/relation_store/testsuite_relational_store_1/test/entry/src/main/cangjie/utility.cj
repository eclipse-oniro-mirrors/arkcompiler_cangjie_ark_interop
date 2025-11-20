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
import ohos.business_exception.{BusinessException}
import ohos.resource_manager.{ResourceManager}
import ohos.web.webview.{WebviewController}
import std.time.{DateTime}

public enum RdbStoreError {
    | InnerError

    public prop code: Int32 {
        get() {
            match (this) {
                case InnerError => 14800000
            }
        }
    }
    public prop message: String {
        get() {
            match (this) {
                case InnerError => "RdbStore query failed: Inner error. Inner code is 0"
            }
        }
    }
}
