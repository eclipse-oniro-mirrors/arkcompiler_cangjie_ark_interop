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
internal import kit.ArkUI.{ImageRepeat,Color,ImageSize,Alignment}
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
import ohos.display
import std.convert.*
internal import kit.ArkUI.{ImageRepeat,Color,ImageSize,Alignment,Length}

//  组件
let supportView = ObservedArrayList<String>(['AlphabetIndexer', 'Blank', 'Button', 'Checkbox', 'CheckboxGroup', 'DataPanel',
    'DatePicker', 'Divider', 'Gauge', 'Image', 'ImageSpan', 'LoadingProgress', 'Menu', 'MenuItem', 'MenuItemGroup',
    'Progress', 'QRCode', 'Radio', 'Rating', 'Refresh', 'RichEditor', 'RichText', 'RowSplit', 'ScrollBar', 'Search',
    'Slider', 'Stepper', 'StepperItem', 'Text', 'TextArea', 'TextClock', 'TextInput', 'TextPicker', 'TextTimer',
    'Toggle', 'Web', 'Select', 'Badge', 'Column', 'Grid', 'GridItem', 'GridRow', 'GridCol', 'Flex', 'List', 'ListItem',
    'ListItemGroup', 'RelativeContainer', 'Row', 'Scroll', 'Stack', 'Swiper', 'Tabs', 'TabContent', 'Circle',
    'Line', 'Rect', 'Shape', 'Path'])
//  属性
let Attrs_List = ObservedArrayList<String>(['BackgroundColor', 'BackgroundImage', 'BackgroundImageSize', 'BackgroundImagePosition'])

//BackgroundColor_Prop_List 格式为  (单位， setValue, expectValue)
let BackgroundColor_Prop_List: Array<(String, Any, String)> = [
    ("Color", Color.Red, "\"#FFFF0000\""),
    ("AppResource", @r(app.color.color_red), "\"#FFFF0000\""),
    ("UInt32", 16711680u32, "\"#FFFF0000\"")
]

//BackgroundImage_Prop_List 格式为  (单位， setValue, expectValue)
let BackgroundImage_Prop_List: Array<(String, Any, String)> = [
    ("StringX", ('resources/base/media/startIcon.png', ImageRepeat.X),
        "\"resources/base/media/startIcon.png, ImageRepeat.X\""),
    ("AppResourceY", (@r(app.media.startIcon), ImageRepeat.Y), "ImageRepeat.Y"),
    ("StringXY", ("https://csdnimg.cn/release/devpress-cangjie/public/img/logo.81433277.png",
            ImageRepeat.XY),
        "\"https://csdnimg.cn/release/devpress-cangjie/public/img/logo.81433277.png, ImageRepeat.XY\""),
    ("AppResourceNoRepeat", (@r(app.media.startIcon), ImageRepeat.NoRepeat), "ImageRepeat.NoRepeat")
]

let SizeLpxFloatx: Float32 = 100.5*display.getDefaultDisplaySync().densityPixels
let SizeLpxFloaty: Float32 = 80.5*display.getDefaultDisplaySync().densityPixels

let FloatxSize = SizeLpxFloatx.toString().size
let FloatySize = SizeLpxFloaty.toString().size

let finalSizeLpxFloatxpx:String = SizeLpxFloatx.toString()[0..FloatxSize-4]
let finalSizeLpxFloatypx:String = SizeLpxFloaty.toString()[0..FloatySize-4]




let SizeVpLpxIntx = 100.0*display.getDefaultDisplaySync().densityPixels
let SizeVpLpxInty = 80.0*display.getDefaultDisplaySync().densityPixels

let IntxSize = SizeVpLpxIntx.toString().size
let IntySize = SizeVpLpxInty.toString().size

let finalSizeVpLpxIntxpx:String = SizeVpLpxIntx.toString()[0..IntxSize-4]
let finalSizeVpLpxIntypx:String = SizeVpLpxInty.toString()[0..IntySize-4]


//BackgroundImageSize_Prop_List 格式为  (单位， setValue, expectValue)
let BackgroundImageSize_Prop_List: Array<(String, Any, String)> = [
    ("PercentFloat", (60.5.percent, 60.5.percent), "\"{\\\"width\\\":\\\"60.50px\\\",\\\"height\\\":\\\"60.50px\\\"}\""),
    ("PercentInt", (60.percent, 60.percent), "\"{\\\"width\\\":\\\"60.00px\\\",\\\"height\\\":\\\"60.00px\\\"}\""),
    //("LpxFloat", (100.5.lpx, 80.5.lpx), "\"{\\\"width\\\":\\\"175.88px\\\",\\\"height\\\":\\\"140.88px\\\"}\""),
    //("LpxInt", (100.lpx, 80.lpx), "\"{\\\"width\\\":\\\"175.00px\\\",\\\"height\\\":\\\"140.00px\\\"}\""),
    ("VpFloat", (100.5.vp, 80.5.vp), "\"{\\\"width\\\":\\\"${finalSizeLpxFloatxpx}px\\\",\\\"height\\\":\\\"${finalSizeLpxFloatypx}px\\\"}\""),
    ("VpInt", (100.vp, 80.vp), "\"{\\\"width\\\":\\\"${finalSizeVpLpxIntxpx}px\\\",\\\"height\\\":\\\"${finalSizeVpLpxIntypx}px\\\"}\""),
    ("PxFloat", (100.5.px, 80.5.px), "\"{\\\"width\\\":\\\"100.50px\\\",\\\"height\\\":\\\"80.50px\\\"}\""),
    ("PxInt", (100.px, 80.px), "\"{\\\"width\\\":\\\"100.00px\\\",\\\"height\\\":\\\"80.00px\\\"}\""),
    ("Float64", (100.0, 80.0), "\"{\\\"width\\\":\\\"${finalSizeVpLpxIntxpx}px\\\",\\\"height\\\":\\\"${finalSizeVpLpxIntypx}px\\\"}\""),
    ("Int64", (100, 80), "\"{\\\"width\\\":\\\"${finalSizeVpLpxIntxpx}px\\\",\\\"height\\\":\\\"${finalSizeVpLpxIntypx}px\\\"}\""),
    ("AppResource", (@r(app.float.float_size_100), @r(app.float.float_size_80)),
        "\"{\\\"width\\\":\\\"350.00px\\\",\\\"height\\\":\\\"280.00px\\\"}\""),
    ("ImageSizeCover", ImageSize.Cover, "\"ImageSize.Cover\""),
    ("ImageSizeContain", ImageSize.Contain, "\"ImageSize.Contain\""),
    ("ImageSizeAuto", ImageSize.Auto, "\"ImageSize.Auto\"")
]


let LpxFloatx: Float32 = 30.5*display.getDefaultDisplaySync().densityPixels
let LpxFloaty: Float32 = 20.5*display.getDefaultDisplaySync().densityPixels

let lengthx = LpxFloatx.toString().size
let lengthy = LpxFloaty.toString().size

let finalLpxFloatxpx:String = LpxFloatx.toString()[0..lengthx-4]
let finalLpxFloatypx:String = LpxFloaty.toString()[0..lengthy-4]




let VpLpxIntx = 30.0*display.getDefaultDisplaySync().densityPixels
let VpLpxInty = 20.0*display.getDefaultDisplaySync().densityPixels

let lengthIntx = VpLpxIntx.toString().size
let lengthInty = VpLpxInty.toString().size

let finalVpLpxIntxpx:String = VpLpxIntx.toString()[0..lengthIntx-7]
let finalVpLpxIntypx:String = VpLpxInty.toString()[0..lengthInty-7]

//BackgroundImagePosition_Prop_List 格式为  (单位， setValue, expectValue)
let BackgroundImagePosition_Prop_List: Array<(String, Any, String)> = [
    ("PercentFloat", (30.5.percent, 30.5.percent), "\"Alignment.BottomEnd\""),
    ("PercentInt", (30.percent, 30.percent), "\"Alignment.BottomEnd\""),
   // ("LpxFloat", (30.5.lpx, 20.5.lpx), "\"{\\\"x\\\":53.375,\\\"y\\\":35.875}\""),
   // ("LpxInt", (30.lpx, 20.lpx), "\"{\\\"x\\\":52.5,\\\"y\\\":35}\""),
    ("VpFloat", (30.5.vp, 20.5.vp), "\"{\\\"x\\\":${finalLpxFloatxpx},\\\"y\\\":${finalLpxFloatypx}}\""),
    ("VpLpxInt", (30.vp, 20.vp), "\"{\\\"x\\\":${finalVpLpxIntxpx},\\\"y\\\":${finalVpLpxIntypx}}\""),
    ("PxFloat", (30.5.px, 20.5.px), "\"{\\\"x\\\":30.5,\\\"y\\\":20.5}\""),
    ("PxInt", (30.px, 20.px), "\"{\\\"x\\\":30,\\\"y\\\":20}\""),
    ("Float64", (30.0, 20.0), "\"{\\\"x\\\":${finalVpLpxIntxpx},\\\"y\\\":${finalVpLpxIntypx}}\""),
    ("Int64", (30, 20), "\"{\\\"x\\\":${finalVpLpxIntxpx},\\\"y\\\":${finalVpLpxIntypx}}\""),
    ("AppResource", (@r(app.float.float_size_30), @r(app.float.float_size_20)), "\"{\\\"x\\\":${finalVpLpxIntxpx},\\\"y\\\":${finalVpLpxIntypx}}\""),
    ("Start", Alignment.Start, "\"Alignment.Start\""),
    ("Center", Alignment.Center, "\"Alignment.Center\""),
    ("End", Alignment.End, "\"Alignment.End\""),
    ("Top", Alignment.Top, "\"Alignment.Top\""),
    ("Bottom", Alignment.Bottom, "\"Alignment.Bottom\""),
    ("TopStart", Alignment.TopStart, "\"Alignment.TopStart\""),
    ("TopEnd", Alignment.TopEnd, "\"Alignment.TopEnd\""),
    ("BottomStart", Alignment.BottomStart, "\"Alignment.BottomStart\""),
    ("BottomEnd", Alignment.BottomEnd, "\"Alignment.BottomEnd\"")
]
