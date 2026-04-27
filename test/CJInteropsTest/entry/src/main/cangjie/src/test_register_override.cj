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

package entry

import ohos.ark_interop.{JSValue, JSRuntime, JSContext, JSCallInfo, JSModule}

// 同名 registerFunc 多次注册，应以最后一次为准（返回 3）
let _ = {
    =>
        JSModule.registerFunc("test_JSModule_registerFunc_repeatedRegister_lastWins_success") {
            jsContext, jsCallInfo => jsContext.number(1.0).toJSValue()
        }
        JSModule.registerFunc("test_JSModule_registerFunc_repeatedRegister_lastWins_success") {
            jsContext, jsCallInfo => jsContext.number(2.0).toJSValue()
        }
        JSModule.registerFunc("test_JSModule_registerFunc_repeatedRegister_lastWins_success") {
            jsContext, jsCallInfo => jsContext.number(3.0).toJSValue()
        }
}()

// 先 registerFunc 再 registerModule 写同名导出，模块导出覆盖函数（lib 上为 number 2）
let _ = {
    =>
        JSModule.registerFunc("test_JSModule_registerModule_overridesRegisterFunc_success") {
            jsContext, jsCallInfo => jsContext.number(1.0).toJSValue()
        }
        JSModule.registerModule {
            jsContext, jsObject => jsObject["test_JSModule_registerModule_overridesRegisterFunc_success"] = jsContext
                .number(2.0)
                .toJSValue()
        }
}()
