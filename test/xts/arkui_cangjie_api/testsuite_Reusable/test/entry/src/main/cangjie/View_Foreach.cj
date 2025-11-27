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


internal import ohos.base.*
internal import ohos.arkui.component.*
internal import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import std.convert.*

@Reusable
@Component
class ListItemView {
    @State
    var listVal: String = ""
    protected override func aboutToAppear() {
        Hilog.info(0, "cangjietest", "====aboutToAppear====ListItemView==创建了==${listVal}")
    }
    protected override func aboutToReuse(val: ReuseParams) {
            let msg = val.get<String>("listVal").getOrThrow()
            listVal = msg
            Hilog.info(0, "cangjietest", "===Recycle Child")

    }
    func build() {
        Column() {
            Text("${listVal}标题").fontSize(16)
        }.height(60).borderWidth(1)
    }
}

@Entry
@Component
public class View_Foreach {
    let scroller = Scroller()
    @State
    var dataSource: ObservedArrayList<String> = ObservedArrayList<String>()
    public func build(): Unit {

        Column() {
            Button("clear")
                .id("clear")
                .onClick({
                    ClickEvent =>
                    Hilog.info(0, "cangjietest", "=== size ${dataSource.size})")
                    dataSource.clear()
                    Hilog.info(0, "cangjietest", "=== size ${dataSource.size}")
                })
            Button("update").id("update").onClick({
                ClickEvent => for (i in 0..20) {
                    dataSource.append("${i})")
                }
            })

            List() {
                ForEach(dataSource,
                    itemGeneratorFunc: {
                        item: String, idx: Int64 => ListItem() {
                            ListItemView(listVal: item)
                        }.id("ListItem_${idx}")
                    })
            }.cachedCount(0).id("List")
            Text("出现").id("Text").height(100).width(100)
        }
    }
}
