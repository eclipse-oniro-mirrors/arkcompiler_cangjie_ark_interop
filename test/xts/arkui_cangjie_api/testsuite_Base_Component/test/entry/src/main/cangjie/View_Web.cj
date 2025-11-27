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
import ohos.web.webview.*
import std.collection.*

@Entry
@Component
class View_Web {
    let webController = WebviewController()
    let headers = [WebHeader("headerKey", "headerValue")]
    @State
    var scroller: Scroller = Scroller()
    @State
    var urlbegin: String = "https://gitee.com/organizations/openharmony/projects"
    @State
    var urlend: String = "https://gitee.com/organizations/openharmony/projects"
    @State
    var getrequestheader: ArrayList<Header> = ArrayList([])
    @State
    var ismainframe: Bool = false
    @State
    var isredirect: Bool = false
    @State
    var isrequestgesture: Bool = false
    @State
    var getrequestmethod: String = ""
    @State
    var getrequesturl: String = ""

    func build() {
        Scroll() {
            Column(space:30) {

                
                Text("web_case_001: onLoadIntercept true") // @rawfile("index.html")
                Web(src: "https://gitee.com/organizations/openharmony/projects", controller: WebviewController())
                    .height(300)
                    .domStorageAccess(true)
                    .fileAccess(true)
                    .imageAccess(true)
                    .mixedMode(MixedMode.None)
                    .onlineImageAccess(true)
                    .zoomAccess(true)
                    .geolocationAccess(false)
                    .onPageBegin({
                        evt => Hilog.info(0,"",   "cangjietest", "page begin url: ${evt.url}")
                    })
                    .onPageEnd({
                        evt => Hilog.info(0,"",   "cangjietest", "page end url: ${evt.url}")
                    })
                    .verticalScrollBarAccess(true)
                    .nestedScroll(scrollForward: NestedScrollMode.SelfFirst,
                        scrollBackward: NestedScrollMode.ParentFirst)
                    .onLoadIntercept(
                        {
                            res: OnLoadInterceptEvent =>
                            this.getrequesturl = res.data.getRequestUrl()
                            this.ismainframe = res.data.isMainFrame()
                            this.isredirect = res.data.isRedirect()
                            this.isrequestgesture = res.data.isRequestGesture()
                            this.getrequestmethod = res.data.getRequestMethod()
                            true
                        }
                    )
                    .id("Webbasic")
                Text("事件： \n")
                Text("this.getrequesturl : ${this.getrequesturl} \n").id("getrequesturl")
                Text("this.ismainframe : ${this.ismainframe} \n").id("ismainframe")
                Text("this.isredirect : ${this.isredirect} \n").id("isredirect")
                Text("this.isrequestgesture : ${this.isrequestgesture} \n").id("isrequestgesture")
                Text("this.getrequestmethod : ${this.getrequestmethod} \n").id("getrequestmethod")
            }
        }
    }
}
