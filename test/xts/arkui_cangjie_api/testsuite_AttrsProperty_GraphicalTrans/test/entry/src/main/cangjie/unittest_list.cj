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
internal import std.collection.ArrayList
internal import stdx.encoding.json.JsonValue
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.base.*
import kit.ArkUI.{ImageRepeat,Color,ImageSize,Alignment,Length,GradientDirection}

//  组件
let supportView = ObservedArrayList<String>(['AlphabetIndexer', 'Blank', 'Button', 'Checkbox', 'CheckboxGroup', 'DataPanel',
    'DatePicker', 'Divider', 'Gauge', 'Image', 'ImageSpan', 'LoadingProgress', 'Menu', 'MenuItem', 'MenuItemGroup',
    'Progress', 'QRCode', 'Radio', 'Rating', 'Refresh', 'RichEditor', 'RichText', 'RowSplit', 'ScrollBar', 'Search',
    'Slider','Stepper', 'StepperItem', 'Text', 'TextArea', 'TextClock', 'TextInput', 'TextPicker', 'TextTimer',
    'Toggle', 'Web', 'Select', 'Badge', 'Column', 'Grid', 'GridItem', 'GridRow', 'GridCol', 'Flex', 'List', 'ListItem',
    'ListItemGroup', 'RelativeContainer', 'Row', 'Scroll', 'Stack', 'Swiper', 'Tabs', 'TabContent', 'Circle',
    'Line', 'Rect', 'Shape', 'Path'])
//  属性
let Attrs_List = ObservedArrayList<String>(['Scale', 'Rotate', 'Translate'])

//  Scale_Prop_List 格式为  (单位， setValue, expectValue),setValue有四种：(Float32) (Int32) (Float32, Float32, Float32, Length, Length) (Float32, Float32, Float32, Length, Length)
let Scale_Prop_List: Array<(String, Any, String)> = [
    ("Float32Percent", (1.2f32, 0.5f32, 1.0f32, 20.percent, 50.percent),
        "{\"x\":\"1.200000\",\"y\":\"0.500000\",\"centerX\":\"20.00%\",\"centerY\":\"50.00%\"}"),
    ("Float32Px", (1.2f32, 0.5f32, 1.0f32, 100.px, 30.px),
        "{\"x\":\"1.200000\",\"y\":\"0.500000\",\"centerX\":\"100.00px\",\"centerY\":\"30.00px\"}"),
    ("Float32Vp", (1.2f32, 0.5f32, 1.0f32, 20.vp, 30.vp),
        "{\"x\":\"1.200000\",\"y\":\"0.500000\",\"centerX\":\"20.00vp\",\"centerY\":\"30.00vp\"}"),
    ("Float32Lpx", (1.2f32, 0.5f32, 1.0f32, 80.lpx, 30.lpx),
        "{\"x\":\"1.200000\",\"y\":\"0.500000\",\"centerX\":\"80.00lpx\",\"centerY\":\"30.00lpx\"}"),
    ("Float32AppResource", (1.2f32, 0.5f32, 1.0f32, @r(app.float.float_size_20), @r(app.float.float_size_30)),
        "{\"x\":\"1.200000\",\"y\":\"0.500000\",\"centerX\":\"20.00vp\",\"centerY\":\"30.00vp\"}")
]


//  Rotate_Prop_List 格式为  (单位， setValue, expectValue),setValue有四种：(Float32)、(Int32)、(x:Float32, y:Float32, z:Float32, angle:Float32, centerX:Length, centerY:Length)、(x:Float32, y:Float32, z:Float32, angle:Float32, centerX:AppResource, centerY:AppResource)
let Rotate_Prop_List: Array<(String, Any, String)> = [
    ("Float32Percent", (1.2f64, 0.5f64, 1.0f64, 150.0f64, 20.percent, 50.percent),
        "{\"x\":\"1.200000\",\"y\":\"0.500000\",\"z\":\"1.000000\",\"angle\":\"150.000000\",\"perspective\":\"0.000000\",\"centerX\":\"20.00%\",\"centerY\":\"50.00%\"}"),
    ("Float32Px", (1.2f64, 0.5f64, 1.0f64, -150.0f64, 100.px, 30.px),
        "{\"x\":\"1.200000\",\"y\":\"0.500000\",\"z\":\"1.000000\",\"angle\":\"-150.000000\",\"perspective\":\"0.000000\",\"centerX\":\"100.00px\",\"centerY\":\"30.00px\"}"),
    ("Float32Vp", (1.2f64, 0.5f64, 1.0f64, 150.0f64, 20.vp, 30.vp),
        "{\"x\":\"1.200000\",\"y\":\"0.500000\",\"z\":\"1.000000\",\"angle\":\"150.000000\",\"perspective\":\"0.000000\",\"centerX\":\"20.00vp\",\"centerY\":\"30.00vp\"}"),
    ("Float32Lpx", (1.2f64, 0.5f64, 1.0f64, -150.0f64, 80.lpx, 30.lpx),
        "{\"x\":\"1.200000\",\"y\":\"0.500000\",\"z\":\"1.000000\",\"angle\":\"-150.000000\",\"perspective\":\"0.000000\",\"centerX\":\"80.00lpx\",\"centerY\":\"30.00lpx\"}"),
    ("Float32AppResource", (1.2f64, 0.5f64, 1.0f64, 150.0f64, @r(app.float.float_size_20), @r(app.float.float_size_30)),
        "{\"x\":\"1.200000\",\"y\":\"0.500000\",\"z\":\"1.000000\",\"angle\":\"150.000000\",\"perspective\":\"0.000000\",\"centerX\":\"20.00vp\",\"centerY\":\"30.00vp\"}")
]


//Translate_Prop_List 格式为  (单位， setValue, expectValue)
let Translate_Prop_List: Array<(String, Any, String)> = [
    ("PercentXYZ", (20.percent, 10.percent, 5.percent), "{\"x\":\"20.00%\",\"y\":\"10.00%\",\"z\":\"5.00%\"}"),
    ("PxXYZ", ((-30).px, (-10).px, (-5).px), "{\"x\":\"-30.00px\",\"y\":\"-10.00px\",\"z\":\"-5.00px\"}"),
    ("VpXYZ", (30.vp, 10.vp, 5.vp), "{\"x\":\"30.00vp\",\"y\":\"10.00vp\",\"z\":\"5.00vp\"}"),
    ("LpxXYZ", ((-30).lpx, (-10).lpx, (-5).lpx), "{\"x\":\"-30.00lpx\",\"y\":\"-10.00lpx\",\"z\":\"-5.00lpx\"}"),
    ("Float64XYZ", (30.0, 10.0, 5.0), "{\"x\":\"30.00vp\",\"y\":\"10.00vp\",\"z\":\"5.00vp\"}"),
    ("Int64XYZ", (-30, -10, -5), "{\"x\":\"-30.00vp\",\"y\":\"-10.00vp\",\"z\":\"-5.00vp\"}"),
    ("AppResourceXYZ", (@r(app.float.float_size_30), @r(app.float.float_size_10), @r(app.float.float_size_5)),
        "{\"x\":\"30.00vp\",\"y\":\"10.00vp\",\"z\":\"5.00vp\"}")
]

