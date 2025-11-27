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
import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.*
import std.collection.ArrayList

@Entry
@Component
class View_RichEditor {
    let controller = RichEditorController()
    @State
    var text = "test"
    @State
    var text0: ObservedArrayList<String> = ObservedArrayList<String>()
    @State
    var position: Int64 = 0

    func build() {
        Column(space:30) {
            Row {
                Button("getCaretOffset")
                    .onClick({
                        evt =>
                        Hilog.info(0, "cangjietest", controller.getCaretOffset().toString())
                        this.position = Int64(controller.getCaretOffset())
                    })
                    .width(400.px)
                    .height(150.px)
                    .id("button_getCaretOffset")
                Text("position: ${this.position.toString()}")
            }

            Row {
                Button("setCaretOffset 0").onClick({
                    evt => controller.setCaretOffset(0)
                }).width(400.px).height(150.px)

                Text("position: ${this.position.toString()}").id("Text_CaretOffset")
            }

            Row {
                Button("addText Hello")
                    .onClick({
                        evt => controller.addTextSpan(
                            content: "Helo",
                            options: RichEditorTextSpanOptions(
                                style: RichEditorTextStyle(
                                    fontColor: Color(0XFF1298),
                                    fontSize: 20.fp,
                                    fontStyle: FontStyle.Italic,
                                    decoration: TextDecorationOptions(decorationType:TextDecorationType.Overline,color: Color(0X12FF98)
                                    ),
                                )
                            )
                        )
                    })
                    .width(400.px)
                    .height(150.px)
                    .id("Test_addTextSpan")

                Button("addImage")
                    .onClick({
                        evt => controller.addImageSpan(
                            value: @r(app.media.startIcon),
                            options: RichEditorImageSpanOptions(
                                imageStyle: RichEditorImageSpanStyle(size: (24.vp, 24.vp)))
                        )
                    })
                    .width(400.px)
                    .height(150.px)
                    .id("Test_addImageSpan")
            }

            Row {
                Button("getSpans")
                    .onClick({
                        evt =>
                        this.text0.clear()
                        for (item in this.controller.getSpans(start: 0, end: 0))
                        //let array = controller.getSpans(start: 0, end: 10)
                        //for (i in 0..array.size)
                    {
                        match (item) {
                            case RichEditorTextSpanResult  =>
                                let textResult = (item as RichEditorTextSpanResult).getOrThrow()
                                Hilog.info(0,"", "cangjietest", "RichEditor textResult. value: ${textResult.value})")
                                this.text0.append(textResult.value)
                            case RichEditorImageSpanResult  =>
                                let imageResult = (item as RichEditorImageSpanResult).getOrThrow()

                                this
                                    .text0
                                    .append(imageResult.imageStyle.getOrThrow().size.getOrThrow()[0].toString() + "-" + imageResult.imageStyle.getOrThrow().size.getOrThrow()[1].toString())
                            case _ => ()
                        }
                        }
                        this.text = this.controller.getSpans(start: 0, end: 0).size.toString()
                    })
                    .width(400.px)
                    .height(150.px)
                    .id("Test_getSpan")
            }

            Row {
                Button("updateParagraphStyle")
                    .onClick({
                        evt => let array = controller.updateParagraphStyle(
                            start: 0,
                            end: 100,
                            style: RichEditorParagraphStyle(
                                textAlign: TextAlign.Center,
                                leadingMargin: 24.px
                            )
                        )
                    })
                    .width(400.px)
                    .height(150.px)
                    .id("button_updateParagraphStyle")
            }

            Text("${this.text}").id("Test_Text")
            Text("${this.text0.get()}").id("Test_Text01").width(100.percent)

            RichEditor(controller)
                .onReady({=> Hilog.info(0, "cangjietest", "RichEditor onReady!!")})
                .onDeleteComplete({=> Hilog.info(0, "cangjietest", "RichEditor onDeleteComplete!!")})
                .onSelect({
                    value => Hilog.info(0,"", "cangjietest", "RichEditor onSelect. ${value.selection[0]} ~ ${value.selection[1]}")
                })
                .id("Test_RichEditor")
        }
    }
}
