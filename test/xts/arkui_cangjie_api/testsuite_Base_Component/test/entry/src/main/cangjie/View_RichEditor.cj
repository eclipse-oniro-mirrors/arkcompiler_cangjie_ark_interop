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
import stdx.encoding.json.*

@Entry
@Component
class View_RichEditor {
    let controller: RichEditorController = RichEditorController()
    var start: Int32 = -1
    var end: Int32 = -1
    @State
    var message: String = "[-1, -1]"
    @State
    var content: String = ""
    @State
    var text: String = ""
    @State
    var insertOffset: String = ""
    @State
    var insertValue: String = ""
    @State
    var addTextSpan: String = ""

    @State
    var didchangestart1: Int32 = 0
    @State
    var didchangeend1: Int32 = 0
    @State
    var didchangestart2: Int32 = 0
    @State
    var didchangeend2: Int32 = 0

    func build() {
        Column() {
            Column() {
                Text("selection range:").width(100.percent)
                Text() {
                    Span(this.message)
                }.width(100.percent)
                Text("selection content:").width(100.percent)
                Text(this.content).width(100.percent).key("RichEditor01Text")
                Text(this.insertOffset).width(100.percent).key("RichEditor02Text")
                Text(this.insertValue).width(100.percent).key("RichEditor03Text")

                Text("${didchangestart1}--${didchangeend1}").id("textDid1").width(100.percent)
                Text("${didchangestart2}--${didchangeend2}").id("textDid2").width(100.percent)
            }.borderWidth(1).borderColor(Color.Red)

            Row() {
                Button("获取选择内容")
                    .key("RichEditor01GetSpans")
                    .onClick({
                        ClickEvent =>
                        this.content = ""
//                        for (item in this.controller.getSpans(start: this.start, end: this.end)) {
//                            if ((item as RichEditorImageSpanResult).isSome()) {
//                            } else {
//                                Hilog.info(0,"",   "cangjietest", "text:" + item.textResult.getOrThrow().value.toString())
//                            }
//                        }
                    })
                Button("删除选择内容")
                    .key("RichEditor01DelSpans")
                    .onClick({
                        ClickEvent =>
                        this.controller.deleteSpans(start: 0, end: 1)
                        this.start = -1
                        this.end = -1
                        this.message = "[" + this.start.toString() + ", " + this.end.toString() + "]"
                    })
                Button("添加中英特殊字符")
                    .id("addTextSpan1")
                    .onClick({
                        evt => controller.addTextSpan(
                            content: "你好,Cangjie!@#&%",
                            options: RichEditorTextSpanOptions(
                                style: RichEditorTextStyle(
                                    fontColor: Color(0XFF1298),
                                    fontSize: 20.fp,
                                    fontStyle: FontStyle.Italic,
                                    decoration: TextDecorationOptions(
                                        decorationType: TextDecorationType.Overline,
                                        color: Color(0X12FF98)
                                    ),
                                )
                            )
                        )
                    })
            }.borderWidth(1).borderColor(Color.Red).width(100.percent).height(5.percent)

            Row() {
                Button("获取组件信息").onClick({
                    ClickEvent =>
                    let strJson = getInspectorByKey("RichEditorKey")
                    this.text = JsonValue.fromStr(strJson).toString()
                })
                Button("获取光标位置")
                    .onClick({
                        ClickEvent => this.content = this.controller.getCaretOffset().toString() + ""
                    })
                    .key("getCaretOffset")
                Button("插入多行中英字符")
                    .id("addTextSpan2")
                    .onClick({
                        evt => controller.addTextSpan(
                            content: """
                            你好,Cangjie!@#&%
                            """,
                            options: RichEditorTextSpanOptions(
                                style: RichEditorTextStyle(
                                    fontColor: Color(0XFF1298),
                                    fontSize: 20.fp,
                                    fontStyle: FontStyle.Italic,
                                    decoration: TextDecorationOptions(
                                        decorationType: TextDecorationType.Overline,
                                        color: Color(0X12FF98)
                                    ),
                                )
                            )
                        )
                    })
            }.borderWidth(1).borderColor(Color.Red).width(100.percent).height(5.percent)

            Row() {
                Button("设置光标位置1")
                    .key("setCaretOffset01")
                    .onClick({
                        ClickEvent => this.content = this.controller.setCaretOffset(1).toString() + ""
                    })
                Button("设置光标位置100")
                    .key("setCaretOffset02")
                    .onClick({
                        ClickEvent => this.content = this.controller.setCaretOffset(100).toString() + ""
                    })
            }.borderWidth(1).borderColor(Color.Red).width(100.percent).height(5.percent)

            Row() {
                Button("添加空字符")
                    .id("addTextSpan3")
                    .onClick({
                        evt => controller.addTextSpan(
                            content: "",
                            options: RichEditorTextSpanOptions(
                                style: RichEditorTextStyle(
                                    fontColor: Color(0XFF1298),
                                    fontSize: 20.fp,
                                    fontStyle: FontStyle.Italic,
                                    decoration: TextDecorationOptions(
                                        decorationType: TextDecorationType.Overline,
                                        color: Color(0X12FF98)
                                    ),
                                )
                            )
                        )
                    })
                Button("插入转义字符")
                    .id("addTextSpan4")
                    .onClick({
                        evt => controller.addTextSpan(
                            content: "\n你好，仓颉\t",
                            options: RichEditorTextSpanOptions(
                                style: RichEditorTextStyle(
                                    fontColor: Color(0XFF1298),
                                    fontSize: 20.fp,
                                    fontStyle: FontStyle.Italic,
                                    decoration: TextDecorationOptions(
                                        decorationType: TextDecorationType.Overline,
                                        color: Color(0X12FF98)
                                    ),
                                )
                            )
                        )
                    })
            }.borderWidth(1).borderColor(Color.Red).width(100.percent).height(5.percent)

            Column() {
                RichEditor(this.controller)
                    .key("RichEditorKey")
                    .onReady({
                        => this.content = "012345678"
                    })
                    .onSelect(
                        {
                            value =>
                            this.start = value.selection[0]
                            this.end = value.selection[1]
                            this.message = "[" + this.start.toString() + ", " + this.end.toString() + "]"
                        }
                    )
                    .aboutToImeInput(
                        {
                            value =>
                            Hilog.info(0,"",   "cangjietest", "---------------------- aboutToIMEInput ----------------------")
                            Hilog.info(0,"",   "cangjietest", "insertOffset: ${value.insertOffset}")
                            Hilog.info(0,"",   "cangjietest", "insertValue: ${value.insertValue}")
                            this.insertOffset = value.insertOffset.toString() + ""
                            this.insertValue = value.insertValue.toString() + ""
                            return true
                        }
                    )
                    .onImeInputComplete(
                        {
                            value =>
                            Hilog.info(0,"",   "cangjietest", "---------------------- onIMEInputComplete ---------------------")
                            Hilog.info(0,"",   "cangjietest", "spanIndex: ${value.spanPosition.spanIndex}")
                            Hilog.info(0,"",   "cangjietest",
                                "spanRange:[ ${value.spanPosition.spanRange.getOrThrow()[0]}, ${value.spanPosition.spanRange.getOrThrow()[1]} ]")
                            Hilog.info(0,"",   "cangjietest", "offsetInSpan:[ ${value.offsetInSpan[0]}, ${value.offsetInSpan[1]} ]")
                            Hilog.info(0,"",   "cangjietest", "value:" + value.value)
                            this.content = "${value.spanPosition.spanIndex}, ${value.value}, ${value.spanPosition.spanRange.getOrThrow()[0]}, ${value.spanPosition.spanRange.getOrThrow()[1]}, ${value.offsetInSpan[0]}, ${value.offsetInSpan[1]}, ${value.textStyle.fontSize}"
                        }
                    )
                    .aboutToDelete(
                        {
                            value =>
                            this.content = "aboutToDelete"
                            Hilog.info(0,"",   "cangjietest", "RichEditor RichEditorDeleteValue.offset ${value.offset}")
                            Hilog.info(0,"",   "cangjietest", "---------------------- aboutToDelete --------------------------")
                            Hilog.info(0,"",   "cangjietest", "offset:" + value.offset.toString())
                            var direction = match (value.direction) {
                                case BACKWARD => "BACKWARD"
                                case FORWARD => "FORWARD"
                                case _ => ""
                            }

//                            for (item in value.richEditorDeleteSpans) {
//                                if (item.imageResult.isSome()) {
//                                } else {
//                                   // Hilog.info(0,"",   "cangjietest", "text:" + (item as RichEditorTextSpanResult).getOrThrow().value.toString())
//                                }
//                            }
                            return true
                        }
                    )
                    .onDeleteComplete(
                        {
                            => Hilog.info(0,"",   "cangjietest", "---------------------- onDeleteComplete ------------------------")
                        })
                    .onDidChange(
                        {
                            t1, t2 =>
                            didchangestart1 = t1.start.getOrThrow()
                            didchangeend1 = t1.end.getOrThrow()
                            didchangestart2 = t2.start.getOrThrow()
                            didchangeend2 = t2.end.getOrThrow()
                        }
                    )
                    .borderWidth(1)
                    .borderColor(Color.Green)
                    .width(100.percent)
                    .height(30.percent)
            }.borderWidth(1).borderColor(Color.Red).width(100.percent).height(70.percent)
        }
    }
}
