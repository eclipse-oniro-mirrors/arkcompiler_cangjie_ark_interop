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
import std.collection.ArrayList
import ohos.multimedia.image.PixelMap
import ohos.multimedia.image.createPixelMap
import ohos.multimedia.image.InitializationOptions
import ohos.multimedia.image.Size
import ohos.multimedia.image.ScaleMode
import ohos.arkui.component.list.*

@Entry
@Component
class View_Scroll2 {
    @State
    var listPosition: Int32 = 0
    @State
    var arr: ObservedArrayList<Int32> = ObservedArrayList<Int32>([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
    @State
    var scrollerForScroll: Scroller = Scroller()
    @State
    var scrollerForList: Scroller = Scroller()
    func build() {
        Flex() {
            Scroll(scrollerForScroll) {
                Column() {
                    Text("ScrollArea")
                        .width(100.percent)
                        .height(40.percent)
                        .backgroundColor(0x330000ff)
                        .fontSize(16.vp)
                        .textAlign(TextAlign.Center)
                        .onClick({
                            e => this.scrollerForList.scrollToIndex(5)
                        })
                        .id("ScrollArea")

                    List(space: 20, initialIndex:0, scroller:scrollerForList) {
                        ForEach(
                            arr,
                            itemGeneratorFunc: {
                                itemInfo: Int32, index: Int64 => ListItem() {
                                    Text("${itemInfo}")
                                        .width(100.percent)
                                        .height(100.percent)
                                        .borderRadius(15)
                                        .fontSize(16)
                                        .textAlign(TextAlign.Center)
                                        .backgroundColor(Color.White)
                                        .id("ListItem")
                                }.width(100.percent).height(100)
                            }
                        )
                    }
                        .width(100.percent)
                        .height(50.percent)
                        .edgeEffect(EdgeEffect.None)
                        .onReachStart({=> listPosition = 0})
                        .onReachEnd({=> listPosition = 2})
                        .onScrollFrameBegin(
                            {
                                offset, state =>
                                if ((listPosition == 0 && offset <= 0.0) || (listPosition == 2 && offset >= 0.0)) {
                                    scrollerForScroll.scrollBy(xOffset: 0.0, yOffset: offset)
                                    return OnScrollFrameBeginHandlerResult(offsetRemain: 0.0)
                                }
                                listPosition = 1
                                return OnScrollFrameBeginHandlerResult(offsetRemain: offset)
                            }
                        )
                }
            }.width(100.percent).height(100.percent).id("Scroll_component")
        }.width(100.percent).height(100.percent).backgroundColor(0xdcdcdc).padding(20)
    }
}
