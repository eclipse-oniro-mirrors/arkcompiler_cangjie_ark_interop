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
internal import kit.LocalizationKit.{AppResource}
internal import ohos.application.test_runner.TestRunner
internal import ohos.ui_test.{Driver, On}
internal import ohos.web.webview.WebviewController
internal import std.unittest.*
internal import std.collection.ArrayList
internal import stdx.encoding.json.JsonValue
import ohos.arkui.state_macro_manage.*
import ohos.arkui.component.common.RenderFit
import ohos.arkui.state_management.ObservedArrayList

//  组件
let supportView = ObservedArrayList<String>(['AlphabetIndexer', 'Blank', 'Button', 'Checkbox', 'CheckboxGroup', 'DataPanel',
    'DatePicker', 'Divider', 'Gauge', 'Image', 'ImageSpan', 'LoadingProgress', 'Menu', 'MenuItem', 'MenuItemGroup',
    'Progress', 'QRCode', 'Radio', 'Rating', 'Refresh', 'RichEditor', 'RichText', 'RowSplit', 'ScrollBar', 'Search',
    'Slider','Stepper', 'StepperItem', 'Text', 'TextArea', 'TextClock', 'TextInput', 'TextPicker', 'TextTimer',
    'Toggle', 'Web', 'Select', 'Badge', 'Column', 'Grid', 'GridItem', 'GridRow', 'GridCol', 'Flex', 'List', 'ListItem',
    'ListItemGroup', 'RelativeContainer', 'Row', 'Scroll', 'Stack', 'Swiper', 'Tabs', 'TabContent', 'Circle',
    'Line', 'Rect', 'Shape', 'Path'])
//  属性
let Attrs_List = ObservedArrayList<String>(['RenderFit'])

// RenderFit_Prop_List 格式为  (单位， setValue, expectValue)
let RenderFit_Prop_List: Array<(String, RenderFit, String)> = [
    ("CENTER", RenderFit.Center, "\"RenderFit.CENTER\""),
    ("TOP", RenderFit.Top, "\"RenderFit.TOP\""),
    ("BOTTOM", RenderFit.Bottom, "\"RenderFit.BOTTOM\""),
    ("LEFT", RenderFit.Left, "\"RenderFit.LEFT\""),
    ("RIGHT", RenderFit.Right, "\"RenderFit.RIGHT\""),
    ("TOP_LEFT", RenderFit.TopLeft, "\"RenderFit.TOP_LEFT\""),
    ("TOP_RIGHT", RenderFit.TopRight, "\"RenderFit.TOP_RIGHT\""),
    ("BOTTOM_LEFT", RenderFit.BottomLeft, "\"RenderFit.BOTTOM_LEFT\""),
    ("BOTTOM_RIGHT", RenderFit.BottomRight, "\"RenderFit.BOTTOM_RIGHT\""),
    ("RESIZE_FILL", RenderFit.ResizeFill, "\"RenderFit.RESIZE_FILL\""),
    ("RESIZE_CONTAIN", RenderFit.ResizeContain, "\"RenderFit.RESIZE_CONTAIN\""),
    ("RESIZE_CONTAIN_TOP_LEFT", RenderFit.ResizeContainTopLeft, "\"RenderFit.RESIZE_CONTAIN_TOP_LEFT\""),
    ("RESIZE_CONTAIN_BOTTOM_RIGHT", RenderFit.ResizeContainBottomRight, "\"RenderFit.RESIZE_CONTAIN_BOTTOM_RIGHT\""),
    ("RESIZE_COVER", RenderFit.ResizeCover, "\"RenderFit.RESIZE_COVER\""),
    ("RESIZE_COVER_TOP_LEFT", RenderFit.ResizeCoverTopLeft, "\"RenderFit.RESIZE_COVER_TOP_LEFT\""),
    ("RESIZE_COVER_BOTTOM_RIGHT", RenderFit.ResizeCoverBottomRight, "\"RenderFit.RESIZE_COVER_BOTTOM_RIGHT\"")
]
