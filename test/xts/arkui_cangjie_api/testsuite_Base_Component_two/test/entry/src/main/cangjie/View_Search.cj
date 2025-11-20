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
import std.unittest.testmacro.*
import ohos.ui_test.*
import ohos.base.{LengthProp, Length, Color}
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import ohos.multimedia.image.PixelMap
import ohos.multimedia.image.createPixelMap
import ohos.multimedia.image.InitializationOptions
import ohos.multimedia.image.Size
import ohos.multimedia.image.ScaleMode
import std.collection.*

@Entry
@Component
class View_Search {
    @State
    var changeValue: String = "test_01"
    @State
    var submitValue: String = "test_02"
    @State
    var copyValue: String = "test_03"
    @State
    var pasteValue: String = "test_04"
    @State
    var cutValue: String = "test_05"
    let controller = SearchController()

    func build() {
        Flex(direction: FlexDirection.Row, justifyContent: FlexAlign.Center, alignItems: ItemAlign.Center) {
            Column() {
                Search(value: "", placeholder: "Type to search", icon: @r(app.media.icon), controller: controller)
                    .searchButton("Search")
                    .placeholderColor(Color.Gray)
                    .placeholderFont(size: 26.px, weight: FontWeight.W100, family: "sans-serif", style: FontStyle.Normal
                    )
                    .textFont(size: 17.px, weight: FontWeight.W100, style: FontStyle.Italic, family: "Arial")
                    .id("Test_Search_01")

                Text(changeValue).id("Text_01")
                Text(submitValue).id("Text_02")
                Text(copyValue).id("Text_03")
                Text(pasteValue).id("Text_04")
                Text(cutValue).id("Text_05")

                Search(value: "", placeholder: "Type to search", controller: controller)
                    .placeholderColor(0xCCCCCC)
                    .onSubmit({
                        value => submitValue = value
                    })
                    .onChange({
                        value => changeValue = value
                    })
                    .onCopy({
                        value => copyValue = value
                    })
                    .onPaste({
                        value => pasteValue = value
                    })
                    .onCut({
                        value => cutValue = value
                    })
                    .margin(top: 30)
                    .id("Test_Search_02")
                    .searchButton("搜索")
            }
        }
    }
}
