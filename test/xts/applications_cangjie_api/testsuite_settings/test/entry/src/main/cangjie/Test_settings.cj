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

import kit.BasicServicesKit.*
import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import ohos.base.*
import std.regex.Regex
import kit.TestKit.*
import kit.PerformanceAnalysisKit.*


@Test
class Test_settings {
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func setAndGetBrightness(): Unit {
        const defaultValue = "-1"
        let brightnessValueRegex = Regex("^(25[0-5]|2[0-4][0-9]|1?[0-9][0-9]?)$")
        @Expect(brightnessValueRegex.matches(getValue(getAbilityContext(), Display.ScreenBrightnessStatus, defaultValue)))
        @Expect(brightnessValueRegex.matches(getValue(getAbilityContext(), Display.ScreenBrightnessStatus, defaultValue, DomainName.DeviceShared)))
        @Expect(getValue(getAbilityContext(), Display.ScreenBrightnessStatus, defaultValue, DomainName.UserProperty), defaultValue)
    }

    @TestCase
    @Tag[APILevel22, TestLevel0]
    func domainName_1(): Unit {
        @Expect(DomainName.DeviceShared.toString(),"global")
        @Expect(DomainName.UserProperty.toString(),"system")
    }

    @TestCase
    @Tag[APILevel22, TestLevel0]
    func date_1(): Unit {
        @Expect(Date.DateFormat.toString(),"settings.date.date_format")
        @Expect(Date.TimeFormat.toString(),"settings.date.time_format")
        @Expect(Date.AutoGainTime.toString(),"settings.date.auto_gain_time")
        @Expect(Date.AutoGainTimeZone.toString(),"settings.date.auto_gain_time_zone")
    }


    @TestCase
    @Tag[APILevel22, TestLevel0]
    func disPlay_1(): Unit {
        @Expect(Display.FontScale.toString(),"settings.display.font_scale")
        @Expect(Display.ScreenBrightnessStatus.toString(),"settings.display.screen_brightness_status")
        @Expect(Display.AutoScreenBrightness.toString(),"settings.display.auto_screen_brightness")

    }

    @TestCase
    @Tag[APILevel22, TestLevel0]
    func disPlay_2(): Unit {
        @Expect(Display.ScreenOffTimeout.toString(),"settings.display.screen_off_timeout")
        @Expect(Display.DefaultScreenRotation.toString(),"settings.display.default_screen_rotation")
        @Expect(Display.AnimatorDurationScale.toString(),"settings.display.animator_duration_scale")

    }

    @TestCase
    @Tag[APILevel22, TestLevel0]
    func disPlay_3(): Unit {
        @Expect(Display.TransitionAnimationScale.toString(),"settings.display.transition_animation_scale")
        @Expect(Display.DisplayInversionStatus.toString(),"settings.display.display_inversion_status")
    }
}
