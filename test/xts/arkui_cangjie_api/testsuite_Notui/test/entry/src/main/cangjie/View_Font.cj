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
import ohos.arkui.component.Text
import ohos.arkui.component.Button
import ohos.arkui.component.Column
import ohos.arkui.component.CustomView
import ohos.arkui.component.*
import ohos.arkui.state_management.LocalStorage
import ohos.arkui.state_management.ObservedProperty
import ohos.arkui.state_management.SubscriberManager
import ohos.arkui.state_management.ViewStackProcessor
import ohos.arkui.state_macro_manage.State
import ohos.arkui.state_macro_manage.Component
import ohos.arkui.state_macro_manage.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import ohos.base.*
import ohos.arkui.ui_context.*

@Entry
@Component
class View_Font {
    @State
    var listsize: Int64 = 0

    func build() {
        Row {
            Column {
                Button("HelloWorld1")
                    .onClick({
                        evt =>
                        let list = getUIContext().getFont().getSystemFontList()
                        listsize = list.size
                        Hilog.info(0, "cangjietest", "test", "111${list.size})")
                    })
                    .id("Button1")
                Text("${listsize}").id("Text")
                Button("HelloWorld2")
                    .onClick({
                        evt =>
                        let info = getUIContext().getFont().getFontByName("HarmonyOS Sans Italic")
                        match (info) {
                            case Some(v) =>
                                Hilog.info(0, "cangjietest", "test", "${v.path})")
                                Hilog.info(0, "cangjietest", "test", "${v.postScriptName}")
                                Hilog.info(0, "cangjietest", "test", "${v.fullName}")
                                Hilog.info(0, "cangjietest", "test", "${v.family}")
                                Hilog.info(0, "cangjietest", "test", "${v.subfamily}")
                                Hilog.info(0, "cangjietest", "test", "${v.weight}")
                                Hilog.info(0, "cangjietest", "test", "${v.width}")
                                Hilog.info(0, "cangjietest", "test", "${v.italic}")
                                Hilog.info(0, "cangjietest", "test", "${v.monoSpace}")
                                Hilog.info(0, "cangjietest", "test", "${v.symbolic}")
                            case None => Hilog.info(0, "cangjietest", "test", "None")
                        }
                    })
                    .id("Button2")
            }.width(100.percent)
        }.height(100.percent)
    }
}
