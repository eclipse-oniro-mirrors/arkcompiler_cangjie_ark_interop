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

package entry.macro_test

import ohos.ark_interop_macro.*
import ohos.ark_interop.*

@Interop[ArkTS]
public enum Season {
    | Spring
    | Summer
    | Autumn
    | Winter
}

@Interop[ArkTS]
public enum Color {
    | Red
    | Green
    | Blue
    | Yellow
}

@Interop[ArkTS]
public enum Status {
    | Pending
    | Running
    | Completed
    | Failed
}

@Interop[ArkTS]
public func getDefaultSeason(): Season {
    Season.Spring
}

@Interop[ArkTS]
public func rotateSeason(current: Season): Season {
    match (current) {
        case Season.Spring => Season.Summer
        case Season.Summer => Season.Autumn
        case Season.Autumn => Season.Winter
        case Season.Winter => Season.Spring
    }
}

@Interop[ArkTS]
public func isHotSeason(current: Season): Bool {
    match (current) {
        case Season.Summer => true
        case _ => false
    }
}

@Interop[ArkTS]
public func seasonFromOrdinal(index: Int32): Option<Season> {
    match (index) {
        case 0 => Some(Season.Spring)
        case 1 => Some(Season.Summer)
        case 2 => Some(Season.Autumn)
        case 3 => Some(Season.Winter)
        case _ => None
    }
}

@Interop[ArkTS]
public func seasonToOrdinal(season: Season): Int32 {
    match (season) {
        case Season.Spring => 0
        case Season.Summer => 1
        case Season.Autumn => 2
        case Season.Winter => 3
    }
}

@Interop[ArkTS]
public func seasonToString(season: Season): String {
    match (season) {
        case Season.Spring => "Spring"
        case Season.Summer => "Summer"
        case Season.Autumn => "Autumn"
        case Season.Winter => "Winter"
    }
}

@Interop[ArkTS]
public func optionSeasonParam(season: Option<Season>): String {
    match (season) {
        case Some(s) => seasonToString(s)
        case None => "None"
    }
}

@Interop[ArkTS]
public func optionSeasonReturnSome(): Option<Season> {
    Some(Season.Autumn)
}

@Interop[ArkTS]
public func optionSeasonReturnNone(): Option<Season> {
    None
}

@Interop[ArkTS]
public func compareSeasons(s1: Season, s2: Season): Bool {
    seasonToOrdinal(s1) == seasonToOrdinal(s2)
}

@Interop[ArkTS]
public func getDefaultColor(): Color {
    Color.Red
}

@Interop[ArkTS]
public func colorFromOrdinal(index: Int32): Option<Color> {
    match (index) {
        case 0 => Some(Color.Red)
        case 1 => Some(Color.Green)
        case 2 => Some(Color.Blue)
        case 3 => Some(Color.Yellow)
        case _ => None
    }
}

@Interop[ArkTS]
public func colorToOrdinal(color: Color): Int32 {
    match (color) {
        case Color.Red => 0
        case Color.Green => 1
        case Color.Blue => 2
        case Color.Yellow => 3
    }
}

@Interop[ArkTS]
public func getDefaultStatus(): Status {
    Status.Pending
}

@Interop[ArkTS]
public func nextStatus(current: Status): Status {
    match (current) {
        case Status.Pending => Status.Running
        case Status.Running => Status.Completed
        case Status.Completed => Status.Completed
        case Status.Failed => Status.Pending
    }
}

@Interop[ArkTS]
public func statusFromOrdinal(index: Int32): Option<Status> {
    match (index) {
        case 0 => Some(Status.Pending)
        case 1 => Some(Status.Running)
        case 2 => Some(Status.Completed)
        case 3 => Some(Status.Failed)
        case _ => None
    }
}

@Interop[ArkTS]
public func isTerminalStatus(status: Status): Bool {
    match (status) {
        case Status.Completed | Status.Failed => true
        case _ => false
    }
}

@Interop[ArkTS]
public func mixedEnumParams(season: Season, color: Color): Int32 {
    seasonToOrdinal(season) + colorToOrdinal(color)
}
