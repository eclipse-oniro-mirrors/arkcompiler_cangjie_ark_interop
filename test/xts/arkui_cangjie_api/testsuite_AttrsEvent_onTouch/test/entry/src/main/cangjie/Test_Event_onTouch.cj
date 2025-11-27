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
import std.convert.*
import std.collection.ArrayList

import ohos.ui_test.{Driver, On}
import ohos.arkui.state_macro_manage.*
import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*

@Test
class Test_EmptyEvent_onTouch {
    protected func getTextById(id: String) {
        return Int64.tryParse(getInspector()[id, "content"].split(" ")[1].split(".")[0]) ?? -1
    }

    protected func getTimestamp(id: String) {
        return Int64.tryParse(
            getInspector()[id, "content"].split(" ")[1][0..getInspector()[id, "content"].split(" ")[1].size - 1]) ?? -1
    }

    protected func checkExpect_eventType() {
        @Expect(getInspector()["touchevent.eventType", "content"], "\"touchevent.eventType: Up\"")
    }

    protected func checkExpect_touches() {
        @Expect(getInspector()["touchevent.touches0.touchType", "content"], "\"touchevent.touches0.touchType: Up\"")
        @Expect(getTextById("touchevent.touches0.id"), 0)
        @Expect(getTextById("touchevent.touches0.screenX") > 0, getTextById("touchevent.touches0.screenX") < 400)
        @Expect(getTextById("touchevent.touches0.screenY") > 0, getTextById("touchevent.touches0.screenY") < 800)
        @Expect(getTextById("touchevent.touches0.x") > 0, getTextById("touchevent.touches0.x") < 400)
        @Expect(getTextById("touchevent.touches0.y") > 0, getTextById("touchevent.touches0.y") < 800)
    }

    protected func checkExpect_changedTouches() {
        @Expect(getInspector()["touchevent.changedTouches0.touchType", "content"], "\"touchevent.changedTouches0.touchType: Up\"")
        @Expect(getTextById("touchevent.changedTouches0.id"), 0)
        @Expect(getTextById("touchevent.changedTouches0.screenX") > 0, getTextById("touchevent.changedTouches0.screenX") < 400)
        @Expect(getTextById("touchevent.changedTouches0.screenY") > 0, getTextById("touchevent.changedTouches0.screenY") < 800)
        @Expect(getTextById("touchevent.changedTouches0.x") > 0, getTextById("touchevent.changedTouches0.x") < 400)
        @Expect(getTextById("touchevent.changedTouches0.y") > 0, getTextById("touchevent.changedTouches0.y") < 800)
    }

    protected func checkExpect_compareTouches() {
        @Expect(getInspector()["touchevent.touches0.touchType", "content"].split(" ")[1], getInspector()["touchevent.changedTouches0.touchType", "content"].split(" ")[1])
        @Expect(getTextById("touchevent.touches0.id"), getTextById("touchevent.changedTouches0.id"))
        @Expect(getTextById("touchevent.touches0.screenX"), getTextById("touchevent.changedTouches0.screenX"))
        @Expect(getTextById("touchevent.touches0.screenY"), getTextById("touchevent.changedTouches0.screenY"))
        @Expect(getTextById("touchevent.touches0.x"), getTextById("touchevent.changedTouches0.x"))
        @Expect(getTextById("touchevent.touches0.y"), getTextById("touchevent.changedTouches0.y"))
    }

    protected func checkExpect_timeStamp() {
        @Expect(getTimestamp("touchevent.timestamp") > 0)
    }

    protected func checkExpect_eventTarget() {
        @Expect(getTextById("touchevent.target.area.width") > 0, getTextById("touchevent.target.area.width") < 400)
        @Expect(getTextById("touchevent.target.area.height") > 0, getTextById("touchevent.target.area.height") < 800)
        @Expect(getTextById("touchevent.target.area.position.x") >= 0, getTextById("touchevent.target.area.position.x") < 400)
        @Expect(getTextById("touchevent.target.area.position.y") >= 0, getTextById("touchevent.target.area.position.y") < 800)
        @Expect(getTextById("touchevent.target.area.globalPosition.x") > 0, getTextById("touchevent.target.area.globalPosition.x") < 400)
        @Expect(getTextById("touchevent.target.area.globalPosition.y") > 0, getTextById("touchevent.target.area.globalPosition.y") <800)
    }

    protected func checkExpect_touchEvent() {
        @Expect(getInspector()["touchEvent.source", "content"], "\"touchEvent.source: TouchScreen\"")
    }

    protected override func beforeAll() {
        Hilog.info(0, "cangjietest", "Check Event: onTouchTest Begin")
    }

    protected override func afterAll() {
        sleepFor(1.second)
        pressBack()
        Hilog.info(0, "cangjietest", "Check Event: onTouchTest End")
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_AlphabetIndexer_onTouch_0100
     * @tc.name： Test_EmptyEvent_AlphabetIndexer_onTouch_0100
     * @tc.desic：Empty_AlphabetIndexer_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_AlphabetIndexer_0100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin AlphabetIndexer")
        enterPage(scrollerId: "scroll", buttonId: "AlphabetIndexer")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd AlphabetIndexer")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexeronTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Blank_onTouch_0200
     * @tc.name： Test_EmptyEvent_Blank_onTouch_0200
     * @tc.desic：Empty_Blank_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_Blank_0200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin Blank")
        enterPage(scrollerId: "scroll", buttonId: "Blank")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd Blank")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("BlankonTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Button_onTouch_0300
     * @tc.name： Test_EmptyEvent_Button_onTouch_0300
     * @tc.desic：Empty_Button_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_Button_0300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin Button")
        enterPage(scrollerId: "scroll", buttonId: "Button")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd Button")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ButtononTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Checkbox_onTouch_0400
     * @tc.name： Test_EmptyEvent_Checkbox_onTouch_0400
     * @tc.desic：Empty_Checkbox_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_Checkbox_0400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin Checkbox")
        enterPage(scrollerId: "scroll", buttonId: "Checkbox")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd Checkbox")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("CheckboxonTouch").centerPoint)
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_CheckboxGroup_onTouch_0500
     * @tc.name： Test_EmptyEvent_CheckboxGroup_onTouch_0500
     * @tc.desic：Empty_CheckboxGroup_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_CheckboxGroup_0500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin CheckboxGroup")
        enterPage(scrollerId: "scroll", buttonId: "CheckboxGroup")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd CheckboxGroup")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("CheckboxGrouponTouch").centerPoint)
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DataPanel_onTouch_0700
     * @tc.name： Test_EmptyEvent_DataPanel_onTouch_0700
     * @tc.desic：Empty_DataPanel_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_DataPanel_0700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin DataPanel")
        enterPage(scrollerId: "scroll", buttonId: "DataPanel")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd DataPanel")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("DataPanelonTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DatePicker_onTouch_0800
     * @tc.name： Test_EmptyEvent_DatePicker_onTouch_0800
     * @tc.desic：Empty_DatePicker_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_DatePicker_0800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin DatePicker")
        enterPage(scrollerId: "scroll", buttonId: "DatePicker")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd DatePicker")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("DatePickeronTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Divider_onTouch_0900
     * @tc.name： Test_EmptyEvent_Divider_onTouch_0900
     * @tc.desic：Empty_Divider_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_Divider_0900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin Divider")
        enterPage(scrollerId: "scroll", buttonId: "Divider")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd Divider")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("DivideronTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Gauge_onTouch_1000
     * @tc.name： Test_EmptyEvent_Gauge_onTouch_1000
     * @tc.desic：Empty_Gauge_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_Gauge_1000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin Gauge")
        enterPage(scrollerId: "scroll", buttonId: "Gauge")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd Gauge")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GaugeonTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Image_onTouch_1100
     * @tc.name： Test_EmptyEvent_Image_onTouch_1100
     * @tc.desic：Empty_Image_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_Image_1100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin Image")
        enterPage(scrollerId: "scroll", buttonId: "Image")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd Image")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageonTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ImageSpan_onTouch_1200
     * @tc.name： Test_EmptyEvent_ImageSpan_onTouch_1200
     * @tc.desic：Empty_ImageSpan_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_ImageSpan_1200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin ImageSpan")
        enterPage(scrollerId: "scroll", buttonId: "ImageSpan")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd ImageSpan")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_LoadingProgress_onTouch_1300
     * @tc.name： Test_EmptyEvent_LoadingProgress_onTouch_1300
     * @tc.desic：Empty_LoadingProgress_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_LoadingProgress_1300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin LoadingProgress")
        enterPage(scrollerId: "scroll", buttonId: "LoadingProgress")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd LoadingProgress")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("LoadingProgressonTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Menu_onTouch_1400
     * @tc.name： Test_EmptyEvent_Menu_onTouch_1400
     * @tc.desic：Empty_Menu_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_Menu_1400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin Menu")
        enterPage(scrollerId: "scroll", buttonId: "Menu")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd Menu")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuonTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItem_onTouch_1500
     * @tc.name： Test_EmptyEvent_MenuItem_onTouch_1500
     * @tc.desic：Empty_MenuItem_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_MenuItem_1500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin MenuItem")
        enterPage(scrollerId: "scroll", buttonId: "MenuItem")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd MenuItem")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuItemonTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItemGroup_onTouch_1600
     * @tc.name： Test_EmptyEvent_MenuItemGroup_onTouch_1600
     * @tc.desic：Empty_MenuItemGroup_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_MenuItemGroup_1600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin MenuItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "MenuItemGroup")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd MenuItemGroup")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuItemGrouponTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Progress_onTouch_1700
     * @tc.name： Test_EmptyEvent_Progress_onTouch_1700
     * @tc.desic：Empty_Progress_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_Progress_1700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin Progress")
        enterPage(scrollerId: "scroll", buttonId: "Progress")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd Progress")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ProgressonTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_QRCode_onTouch_1800
     * @tc.name： Test_EmptyEvent_QRCode_onTouch_1800
     * @tc.desic：Empty_QRCode_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_QRCode_1800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin QRCode")
        enterPage(scrollerId: "scroll", buttonId: "QRCode")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd QRCode")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("QRCodeonTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Radio_onTouch_1900
     * @tc.name： Test_EmptyEvent_Radio_onTouch_1900
     * @tc.desic：Empty_Radio_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_Radio_1900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin Radio")
        enterPage(scrollerId: "scroll", buttonId: "Radio")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd Radio")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RadioonTouch").centerPoint)
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rating_onTouch_2000
     * @tc.name： Test_EmptyEvent_Rating_onTouch_2000
     * @tc.desic：Empty_Rating_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_Rating_2000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin Rating")
        enterPage(scrollerId: "scroll", buttonId: "Rating")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd Rating")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RatingonTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Refresh_onTouch_2100
     * @tc.name： Test_EmptyEvent_Refresh_onTouch_2100
     * @tc.desic：Empty_Refresh_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_Refresh_2100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin Refresh")
        enterPage(scrollerId: "scroll", buttonId: "Refresh")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd Refresh")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RefreshonTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichEditor_onTouch_2200
     * @tc.name： Test_EmptyEvent_RichEditor_onTouch_2200
     * @tc.desic：Empty_RichEditor_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_RichEditor_2200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin RichEditor")
        enterPage(scrollerId: "scroll", buttonId: "RichEditor")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd RichEditor")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RichEditoronTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichText_onTouch_2300
     * @tc.name： Test_EmptyEvent_RichText_onTouch_2300
     * @tc.desic：Empty_RichText_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_RichText_2300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin RichText")
        enterPage(scrollerId: "scroll", buttonId: "RichText")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd RichText")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RichTextonTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RowSplit_onTouch_2400
     * @tc.name： Test_EmptyEvent_RowSplit_onTouch_2400
     * @tc.desic：Empty_RowSplit_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_RowSplit_2400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin RowSplit")
        enterPage(scrollerId: "scroll", buttonId: "RowSplit")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd RowSplit")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplitonTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ScrollBar_onTouch_2500
     * @tc.name： Test_EmptyEvent_ScrollBar_onTouch_2500
     * @tc.desic：Empty_ScrollBar_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_ScrollBar_2500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin ScrollBar")
        enterPage(scrollerId: "scroll", buttonId: "ScrollBar")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd ScrollBar")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ScrollBaronTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Search_onTouch_2600
     * @tc.name： Test_EmptyEvent_Search_onTouch_2600
     * @tc.desic：Empty_Search_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_Search_2600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin Search")
        enterPage(scrollerId: "scroll", buttonId: "Search")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd Search")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SearchonTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Slider_onTouch_2700
     * @tc.name： Test_EmptyEvent_Slider_onTouch_2700
     * @tc.desic：Empty_Slider_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_Slider_2700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin Slider")
        enterPage(scrollerId: "scroll", buttonId: "Slider")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd Slider")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SlideronTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }


    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stepper_onTouch_2900
     * @tc.name： Test_EmptyEvent_Stepper_onTouch_2900
     * @tc.desic：Empty_Stepper_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_Stepper_2900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin Stepper")
        enterPage(scrollerId: "scroll", buttonId: "Stepper")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd Stepper")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("StepperonTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_StepperItem_onTouch_3000
     * @tc.name： Test_EmptyEvent_StepperItem_onTouch_3000
     * @tc.desic：Empty_StepperItem_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_StepperItem_3000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin StepperItem")
        enterPage(scrollerId: "scroll", buttonId: "StepperItem")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd StepperItem")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("StepperItemonTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Text_onTouch_3100
     * @tc.name： Test_EmptyEvent_Text_onTouch_3100
     * @tc.desic：Empty_Text_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_Text_3100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin Text")
        enterPage(scrollerId: "scroll", buttonId: "Text")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd Text")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextonTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextArea_onTouch_3200
     * @tc.name： Test_EmptyEvent_TextArea_onTouch_3200
     * @tc.desic：Empty_TextArea_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_TextArea_3200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin TextArea")
        enterPage(scrollerId: "scroll", buttonId: "TextArea")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd TextArea")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextAreaonTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextClock_onTouch_3300
     * @tc.name： Test_EmptyEvent_TextClock_onTouch_3300
     * @tc.desic：Empty_TextClock_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_TextClock_3300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin TextClock")
        enterPage(scrollerId: "scroll", buttonId: "TextClock")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd TextClock")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextClockonTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextInput_onTouch_3400
     * @tc.name： Test_EmptyEvent_TextInput_onTouch_3400
     * @tc.desic：Empty_TextInput_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_TextInput_3400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin TextInput")
        enterPage(scrollerId: "scroll", buttonId: "TextInput")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd TextInput")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInputonTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextPicker_onTouch_3500
     * @tc.name： Test_EmptyEvent_TextPicker_onTouch_3500
     * @tc.desic：Empty_TextPicker_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_TextPicker_3500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin TextPicker")
        enterPage(scrollerId: "scroll", buttonId: "TextPicker")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd TextPicker")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextPickeronTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextTimer_onTouch_3600
     * @tc.name： Test_EmptyEvent_TextTimer_onTouch_3600
     * @tc.desic：Empty_TextTimer_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_TextTimer_3600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin TextTimer")
        enterPage(scrollerId: "scroll", buttonId: "TextTimer")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd TextTimer")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextTimeronTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Toggle_onTouch_3700
     * @tc.name： Test_EmptyEvent_Toggle_onTouch_3700
     * @tc.desic：Empty_Toggle_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_Toggle_3700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin Toggle")
        enterPage(scrollerId: "scroll", buttonId: "Toggle")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd Toggle")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ToggleonTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Web_onTouch_3800
     * @tc.name： Test_EmptyEvent_Web_onTouch_3800
     * @tc.desic：Empty_Web_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_Web_3800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin Web")
        enterPage(scrollerId: "scroll", buttonId: "Web")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd Web")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("WebonTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Select_onTouch_3900
     * @tc.name： Test_EmptyEvent_Select_onTouch_3900
     * @tc.desic：Empty_Select_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_Select_3900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin Select")
        enterPage(scrollerId: "scroll", buttonId: "Select")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd Select")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SelectonTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Badge_onTouch_4000
     * @tc.name： Test_EmptyEvent_Badge_onTouch_4000
     * @tc.desic：Empty_Badge_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_Badge_4000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin Badge")
        enterPage(scrollerId: "scroll", buttonId: "Badge")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd Badge")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("BadgeonTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Column_onTouch_4100
     * @tc.name： Test_EmptyEvent_Column_onTouch_4100
     * @tc.desic：Empty_Column_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_Column_4100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin Column")
        enterPage(scrollerId: "scroll", buttonId: "Column")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd Column")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ColumnonTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Grid_onTouch_4200
     * @tc.name： Test_EmptyEvent_Grid_onTouch_4200
     * @tc.desic：Empty_Grid_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_Grid_4200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin Grid")
        enterPage(scrollerId: "scroll", buttonId: "Grid")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd Grid")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridonTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridItem_onTouch_4300
     * @tc.name： Test_EmptyEvent_GridItem_onTouch_4300
     * @tc.desic：Empty_GridItem_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_GridItem_4300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin GridItem")
        enterPage(scrollerId: "scroll", buttonId: "GridItem")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd GridItem")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItemonTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridRow_onTouch_4400
     * @tc.name： Test_EmptyEvent_GridRow_onTouch_4400
     * @tc.desic：Empty_GridRow_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_GridRow_4400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin GridRow")
        enterPage(scrollerId: "scroll", buttonId: "GridRow")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd GridRow")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRowonTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridCol_onTouch_4500
     * @tc.name： Test_EmptyEvent_GridCol_onTouch_4500
     * @tc.desic：Empty_GridCol_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_GridCol_4500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin GridCol")
        enterPage(scrollerId: "scroll", buttonId: "GridCol")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd GridCol")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridColonTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Flex_onTouch_4600
     * @tc.name： Test_EmptyEvent_Flex_onTouch_4600
     * @tc.desic：Empty_Flex_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_Flex_4600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin Flex")
        enterPage(scrollerId: "scroll", buttonId: "Flex")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd Flex")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("FlexonTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_List_onTouch_4700
     * @tc.name： Test_EmptyEvent_List_onTouch_4700
     * @tc.desic：Empty_List_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_List_4700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin List")
        enterPage(scrollerId: "scroll", buttonId: "List")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd List")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListonTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItem_onTouch_4800
     * @tc.name： Test_EmptyEvent_ListItem_onTouch_4800
     * @tc.desic：Empty_ListItem_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_ListItem_4800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin ListItem")
        enterPage(scrollerId: "scroll", buttonId: "ListItem")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd ListItem")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItemonTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItemGroup_onTouch_4900
     * @tc.name： Test_EmptyEvent_ListItemGroup_onTouch_4900
     * @tc.desic：Empty_ListItemGroup_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_ListItemGroup_4900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin ListItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "ListItemGroup")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd ListItemGroup")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItemGrouponTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }



    /*
     * @tc.number：Sub_Cangjie_ArkUI_RelativeContainer_onTouch_5100
     * @tc.name： Test_EmptyEvent_RelativeContainer_onTouch_5100
     * @tc.desic：Empty_RelativeContainer_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_RelativeContainer_5100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin RelativeContainer")
        enterPage(scrollerId: "scroll", buttonId: "RelativeContainer")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd RelativeContainer")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RelativeContaineronTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Row_onTouch_5200
     * @tc.name： Test_EmptyEvent_Row_onTouch_5200
     * @tc.desic：Empty_Row_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_Row_5200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin Row")
        enterPage(scrollerId: "scroll", buttonId: "Row")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd Row")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowonTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Scroll_onTouch_5300
     * @tc.name： Test_EmptyEvent_Scroll_onTouch_5300
     * @tc.desic：Empty_Scroll_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_Scroll_5300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin Scroll")
        enterPage(scrollerId: "scroll", buttonId: "Scroll")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd Scroll")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ScrollonTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stack_onTouch_5400
     * @tc.name： Test_EmptyEvent_Stack_onTouch_5400
     * @tc.desic：Empty_Stack_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_Stack_5400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin Stack")
        enterPage(scrollerId: "scroll", buttonId: "Stack")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd Stack")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("StackonTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Swiper_onTouch_5500
     * @tc.name： Test_EmptyEvent_Swiper_onTouch_5500
     * @tc.desic：Empty_Swiper_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_Swiper_5500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin Swiper")
        enterPage(scrollerId: "scroll", buttonId: "Swiper")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd Swiper")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SwiperonTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Tabs_onTouch_5600
     * @tc.name： Test_EmptyEvent_Tabs_onTouch_5600
     * @tc.desic：Empty_Tabs_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_Tabs_5600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin Tabs")
        enterPage(scrollerId: "scroll", buttonId: "Tabs")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd Tabs")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TabsonTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TabContent_onTouch_5700
     * @tc.name： Test_EmptyEvent_TabContent_onTouch_5700
     * @tc.desic：Empty_TabContent_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_TabContent_5700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin TabContent")
        enterPage(scrollerId: "scroll", buttonId: "TabContent")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd TabContent")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TabContentonTouch").centerPoint)
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Circle_onTouch_5800
     * @tc.name： Test_EmptyEvent_Circle_onTouch_5800
     * @tc.desic：Empty_Circle_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_Circle_5800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin Circle")
        enterPage(scrollerId: "scroll", buttonId: "Circle")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd Circle")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("CircleonTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Line_onTouch_5900
     * @tc.name： Test_EmptyEvent_Line_onTouch_5900
     * @tc.desic：Empty_Line_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_Line_5900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin Line")
        enterPage(scrollerId: "scroll", buttonId: "Line")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd Line")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("LineonTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rect_onTouch_6000
     * @tc.name： Test_EmptyEvent_Rect_onTouch_6000
     * @tc.desic：Empty_Rect_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_Rect_6000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin Rect")
        enterPage(scrollerId: "scroll", buttonId: "Rect")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd Rect")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RectonTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Shape_onTouch_6100
     * @tc.name： Test_EmptyEvent_Shape_onTouch_6100
     * @tc.desic：Empty_Shape_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_Shape_6100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin Shape")
        enterPage(scrollerId: "scroll", buttonId: "Shape")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd Shape")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ShapeonTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Path_onTouch_6300
     * @tc.name： Test_EmptyEvent_Path_onTouch_6300
     * @tc.desic：Empty_Path_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_Path_6300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin Path")
        enterPage(scrollerId: "scroll", buttonId: "Path")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd Path")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("PathonTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Canvas_onTouch_6400
     * @tc.name： Test_EmptyEvent_Canvas_onTouch_6400
     * @tc.desic：Empty_Canvas_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_Canvas_6400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin Canvas")
        enterPage(scrollerId: "scroll", buttonId: "Canvas")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd Canvas")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("CanvasonTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Video_onTouch_6500
     * @tc.name： Test_EmptyEvent_Video_onTouch_6500
     * @tc.desic：Empty_Video_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_Video_6500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin Video")
        enterPage(scrollerId: "scroll", buttonId: "Video")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd Video")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("VideoonTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }


    /*
     * @tc.number：Sub_Cangjie_ArkUI_Counter_onTouch_7000
     * @tc.name： Test_EmptyEvent_Counter_onTouch_7000
     * @tc.desic：Empty_Counter_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_Counter_7000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin Counter")
        enterPage(scrollerId: "scroll", buttonId: "Counter")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd Counter")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("CounteronTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_PatternLock_onTouch_7100
     * @tc.name： Test_EmptyEvent_PatternLock_onTouch_7100
     * @tc.desic：Empty_PatternLock_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_PatternLock_7100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin PatternLock")
        enterPage(scrollerId: "scroll", buttonId: "PatternLock")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd PatternLock")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("PatternLockonTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Ellipse_onTouch_7200
     * @tc.name： Test_EmptyEvent_Ellipse_onTouch_7200
     * @tc.desic：Empty_Ellipse_onTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onTouch_Ellipse_7200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onTouch: FindBegin Ellipse")
        enterPage(scrollerId: "scroll", buttonId: "Ellipse")
        Hilog.info(0, "cangjietest", "Check onTouch: FindEnd Ellipse")
        sleepFor(1.second)
        swipe(
            from: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("EllipseonTouch").centerPoint,
            deltaY: 100
        )
        sleepFor(1.second)
        this.checkExpect_eventType()
        this.checkExpect_touches()
        this.checkExpect_compareTouches()
        this.checkExpect_timeStamp()
        this.checkExpect_eventTarget()
        this.checkExpect_touchEvent()
        Hilog.info(0, "cangjietest", "Check onTouch: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }
}
