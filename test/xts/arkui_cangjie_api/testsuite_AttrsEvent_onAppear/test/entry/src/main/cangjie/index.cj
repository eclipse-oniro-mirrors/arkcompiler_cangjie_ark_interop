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
import ohos.arkui.state_macro_manage.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.base.*
import ohos.arkui.ui_context.Router

@Entry
@Component
class EntryView {
    func build() {
        Scroll() {
            Column {
                ForEach(
                    supportView,
                    itemGeneratorFunc: {
                        viewName: String, idx: Int64 => Button("View_EmptyEvent_onAppear_" + supportView[idx])
                            .fontSize(14)
                            .width(100.percent)
                            .height(30)
                            .id(viewName)
                            .borderRadius(10)
                            .onClick({
                                ClickEvent => getUIContext().getRouter().pushUrl(url: "View_EmptyAttrs_onAppear", params: supportView[idx])
                            })
                    }
                )
            }.width(100.percent).margin(top: 5)
        }.id("scroll")
    }
}
