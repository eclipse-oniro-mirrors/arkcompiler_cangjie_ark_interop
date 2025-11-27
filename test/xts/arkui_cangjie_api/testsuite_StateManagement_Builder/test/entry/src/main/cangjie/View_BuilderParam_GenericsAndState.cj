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

@Entry
@Component
class View_BuilderParam_GenericsAndState {
    @Builder
    func f1() {
        Builder_GenericsFunc_TopLevel<String>("GenericsFunc Builder", Color.Red, fontsize: 20)
    }

    @Builder
    func f2() {
        Builder_GenericsFunc_TopLevel<Int64>(100, Color.Red, fontsize: 20)
    }

    func build() {
        Row {
            Column(space:10) {
                View_SubBuilderParam_GenericsAndState(BuilderParam_Func: this.f1, color: Color.Green)
                View_SubBuilderParam_GenericsAndState(BuilderParam_Func: this.f2, color: Color.Gray)
            }.width(100.percent)
        }.height(100.percent)
    }
}

@Component
class View_SubBuilderParam_GenericsAndState {
    @BuilderParam
    let BuilderParam_Func: () -> Unit
    let color: Color

    func build() {
        Column(space:10) {
            this.BuilderParam_Func()
        }.backgroundColor(color)
    }
}
