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
internal import ohos.application.test_runner.TestRunner
internal import ohos.ui_test.{Driver, On}
internal import ohos.web.webview.WebviewController
internal import std.unittest.*
internal import std.collection.ArrayList
internal import stdx.encoding.json.JsonValue
import ohos.arkui.state_macro_manage.*
import ohos.arkui.state_management.ObservedArrayList

let views = ObservedArrayList<String>(["View_Checkbox", "View_CheckboxGroup","View_AlphabetIndexer", "View_Button",
    "View_Badge", "View_Blank", "View_DataPanel", "View_DatePicker", "View_Divider", "View_Gauge", "View_ImageSpan",
    "View_Menu", "View_LoadingProgress", "View_Progress", "View_QRCode", "View_Radio",
    "View_ScrollBar", "View_Stepper", "View_TextInput", "View_TextPicker", "View_Toggle", "View_Select",
    "View_Slider", "View_Search", "View_Text", "View_TextArea", "View_Rating"])
