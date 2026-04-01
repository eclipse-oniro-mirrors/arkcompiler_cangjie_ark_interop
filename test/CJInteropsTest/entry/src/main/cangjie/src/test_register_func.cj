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

// registerFunc(name, lambda: JSLambda)，JSLambda 为 (JSContext, JSCallInfo) -> JSValue（见 js_func.cj / js_module.cj）
let _ = JSModule.registerFunc("test_JSModule_registerFunc_JSLambda_success", test_JSModule_registerFunc_JSLambda_success)

// registerFunc(name, register: FuncRegister)，FuncRegister 为 (JSContext) -> JSFunction
let _ = JSModule.registerFunc("test_JSModule_registerFunc_FuncRegister_success") {
    jsContext => jsContext.function(test_JSModule_registerFunc_FuncRegister_body_success)
}

func test_JSModule_registerFunc_JSLambda_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    jsContext.string("test_JSModule_registerFunc_JSLambda_success").toJSValue()
}

func test_JSModule_registerFunc_FuncRegister_body_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    jsContext.string("test_JSModule_registerFunc_FuncRegister_success").toJSValue()
}
