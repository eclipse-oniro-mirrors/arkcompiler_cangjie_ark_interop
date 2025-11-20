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
import std.sync.*
import ohos.multimedia.image.PixelMap
import ohos.multimedia.image.createPixelMap
import ohos.multimedia.image.InitializationOptions
import ohos.multimedia.image.Size
import ohos.multimedia.image.ScaleMode
import std.collection.ArrayList

extend RefreshStatus {
    public func toString():String {
        match (this) {
            case Inactive => "Inactive"
            case Drag => "Drag"
            case OverDrag => "OverDrag"
            case Refresh => "Refresh"
            case Done => "Done"
            case _ => throw IllegalArgumentException("The type is not supported.")
        }
    }

}

@Entry
@Component
class View_Refresh {
    @State
    var isRefreshing: Bool = true
    @State
    var status: RefreshStatus = RefreshStatus.Inactive
    @State
    var arr: ObservedArrayList<String> = ObservedArrayList<String>(["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"])

    func build() {
        Column() {
            Refresh(RefreshOptions(refreshing:@Binder(this.isRefreshing))) {
                List {
                    ForEach(
                        this.arr,
                        itemGeneratorFunc: {
                            item: String, idx: Int64 => ListItem() {
                                Text("${this.isRefreshing}")
                                    .width(100.percent)
                                    .height(100)
                                    .fontSize(16)
                                    .textAlign(TextAlign.Center)
                                    .borderRadius(10)
                                    .backgroundColor(0xFFFFFF)
                            }
                        },
                        keyGeneratorFunc: {
                            item: String, idx: Int64 => return item
                        }
                    )
                }
                    .onScrollIndex(
                        {
                            first: Int32, value: Int32,last: Int32 =>
                            Hilog.info(0,"",   "cangjietest", "list onScrollIndex")
                            Hilog.info(0,"",   "cangjietest", "fist:" + first.toString())
                            Hilog.info(0,"",   "cangjietest", "last:" + last.toString())
                        }
                    )
                    .width(100.percent)
                    .height(100.percent)
                    .divider(ListDividerOptions(strokeWidth: 1.vp, color: Color(0X808080), startMargin: 10.vp, endMargin: 10.vp))
                    .scrollBar(BarState.Off)
            }
                .onStateChange(
                    {
                        refreshStatus: RefreshStatus =>
                        this.status = refreshStatus
                        Hilog.info(0,"",   "cangjietest", "Refresh onStatueChange state is: " + refreshStatus.toString())
                        Hilog.info(0,"",   "cangjietest", "Refresh onStatueChange this.isRefreshing is is======= ${this.isRefreshing}")
                    }
                )
                .onRefreshing(
                    {
                        =>
                        Hilog.info(0,"",   "cangjietest", "onRefreshing this.isRefreshing is is======= ${this.isRefreshing}")
                        Timer.once(
                            Duration.second * 2,
                            {
                                =>
                                this.isRefreshing = false
                                Hilog.info(0,"",   "cangjietest", "setTimeout this.isRefreshing is======= ${this.isRefreshing}")
                            }
                        )
                    }
                )
                .backgroundColor(0x89CFF0)
                .id("refreshbasic")
            Text("${this.status.toString()}").id("onStateChange")
            Text("${this.isRefreshing}").id("refreshing")
        }
    }
}
