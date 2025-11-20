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

import kit.PerformanceAnalysisKit.Hilog
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import std.convert.*
import ohos.base.{LengthProp, Length, Color}

@Builder
func f(str: String) {
    Text("BuilderParam ${str} Func").fontSize(20).fontColor(Color.Red).id("BuilderParam_baseFunc")
}

@Builder
func g<T>(str: T, fontcolor: Color, fontsize!: Int64 = 20): Unit where T <: ToString {
    Text("BuilderParam ${str} Func").fontSize(fontsize).fontColor(fontcolor).id("BuilderParam_GenericsFunc")
}

@Component
class View_SubBuilderParam_Func {
    @BuilderParam
    var BuilderParam_UnInitialized_func: (String) -> Unit
    @BuilderParam
    var BuilderParam_f_func: (String) -> Unit = f
    @BuilderParam
    let BuilderParam_ff_func: (String) -> Unit = BuilderParam_f_func
    @BuilderParam
    let BuilderParam_g_func: (String, Color, Int64) -> Unit = g<String>

    func build() {
        Column(space:20) {
            BuilderParam_UnInitialized_func("UnInitialized")
            BuilderParam_f_func("DirectCall")
            BuilderParam_ff_func("InDirectCall")
            BuilderParam_g_func("GenericsCall", Color.Red, 20)
        }
    }
}

@Entry
@Component
class View_BuilderParam_Func {
    func build() {
        Row {
            Column(space:20) {
                View_SubBuilderParam_Func(BuilderParam_UnInitialized_func: f)
            }.width(100.percent)
        }.height(100.percent)
    }
}
