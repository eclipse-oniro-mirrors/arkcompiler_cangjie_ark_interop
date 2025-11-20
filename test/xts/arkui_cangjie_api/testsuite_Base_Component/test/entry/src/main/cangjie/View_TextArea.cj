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
import ohos.base.{LengthProp, Length,  Color}
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
class View_TextArea {
    var controller: TextAreaController = TextAreaController()
    var scroller: Scroller = Scroller()
    @State
    var val_onSubmit: String = ""
    @State
    var val_onChange: String = ""
    @State
    var val_onPaste: String = ""
    @State
    var val_onCut: String = ""
    @State
    var val_onCopy: String = ""
    @State
    var val_onEditChanged: String = ""
    @State
    var val_onEditChange: String = ""
    @State
    var index: Int64 = 0
    let enterTypes: Array<EnterKeyType> = [EnterKeyType.Go, EnterKeyType.Search, EnterKeyType.Send,
        EnterKeyType.Done, EnterKeyType.Next]

    func build() {
        Scroll(this.scroller) {
            Column(space:10.px) {
                Button("caretposition  3").onClick({
                    evt => controller.caretPosition(3)
                }).id("caretposition3")

                TextArea(placeholder: "placeholder", text: "AAABBB", controller: controller)
                    .id("TextAreaBasis")
                    .placeholderColor(Color(0x8A2BE2))
                    .placeholderFont(size: 20.0, weight: FontWeight.W100, family: "Georgia", style: FontStyle.Italic)
                    .textAlign(TextAlign.Center)
                    .caretColor(Color.Red)
                    .inputFilter(value: "[A-Za-z0-9]", error: {val => //nativeLog("TextArea OnError:" + val)
                })
                    .onChange(
                        {
                            val =>
                            //nativeLog("TextArea onChange:" + val)
                            val_onChange = val
                        }
                    )
                    .onPaste(
                        {
                            val =>
                            //nativeLog("TextArea onPaste:" + val)
                            val_onPaste = val
                        }
                    )
                    .onCopy(
                        {
                            val =>
                            //nativeLog("TextArea onCopy:" + val)
                            val_onCopy = val
                        }
                    )
                    .onCut(
                        {
                            val =>
                            //nativeLog("TextArea onCut:" + val)
                            val_onCut = val
                        }
                    )


                Button("change entryType ${index}")
                    .onClick({
                        evt => index = (index + 1) % enterTypes.size
                    })
                    .id("changeEnterKeyType")
                TextArea(placeholder: "TextArea onSubmit")
                    .id("TextAreaBasis1")
                    .onEditChange(
                        {
                            val =>
                            //nativeLog("TextArea onEditChange:" + val.toString())
                            val_onEditChange = val.toString()
                        }
                    )
                    .enterKeyType(this.enterTypes[index])
                    .onSubmit(
                        {
                            aaa =>
                            let cs = match (aaa) {
                                case EnterKeyType.Go => "GO"
                                case EnterKeyType.Done => "Done"
                                case EnterKeyType.Search => "EntrySearch"
                                case EnterKeyType.Next => "Next"
                                case EnterKeyType.Send => "Send"
                                case _ => "abcd"
                            }
                            val_onSubmit = cs
                        }
                    )
                Text("TextArea onChange callback:${val_onChange}").id("onChange_callback")
                Text("TextArea onPaste callback:${val_onPaste}").id("onPaste_callback")
                Text("TextArea onCut callback:${val_onCut}").id("onCut_callback")
                Text("TextArea onCopy callback:${val_onCopy}").id("onCopy_callback")
                Text("TextArea onEditChanged callback:${val_onEditChanged}").id("onEditChanged_callback")
                Text("TextArea onEditChange callback:${val_onEditChange}").id("onEditChange_callback")
                Text("TextArea onSubmit callback:${val_onSubmit}").id("onSubmit_callback")

                TextArea(text: "AAA")
                    .size(width: 300.vp, height: 100.vp)
                    .borderRadius(100.vp)
                    .border(width: 1.vp, color: Color(0XFFFF0011), radius: 5.vp, style: BorderStyle.Dashed)
                    .padding(40.vp)
                    .fontColor(0x8A2BE2)
                    .fontSize(60)
                    .fontWeight(FontWeight.W900)
                    .fontStyle(FontStyle.Italic)
            }.width(100.percent)
        }
    }
}
