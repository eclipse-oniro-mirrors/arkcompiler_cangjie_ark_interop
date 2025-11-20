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
import ohos.base.{LengthProp, Length, Color}
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import ohos.multimedia.image.PixelMap
import ohos.multimedia.image.createPixelMap
import ohos.multimedia.image.InitializationOptions
import ohos.multimedia.image.Size
import ohos.multimedia.image.ScaleMode
import std.collection.*

@Entry
@Component
class View_Rating {
    @State
    var rating: Float64 = 3.5

    @State
    var backPng: String = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEIAAAAnCAYAAAC7bZ4BAAADNElEQVRoge1a2ZKbMBDsHtjkP/Pt+YW8bAV1HjQ6EMiA8Qavy11lC9AB0+rRMcA/v38JCSIAgBoBGKDBMwxAABEACEAAYDANgAyBATO059D8zPMFw5VgdTxGoyKUsjT5GZFImFevDFgYfRvidpkrMFKVoYo9DU4AAigi9ub6088oYE1oujZXQo3c9JPAoA9AHwAGkMM8lwHI7rCCZPwLqGKEfoIKRQW1Uap9eIMM9JWglbL3oOXvkYIai7HuFgdbT47zRCq/CyP56YfJlP0juahcaxcROjdLtPc47WGVj4739mXt599dDcCR7n9xnCLiFZSQMD7jVHYF3q7hGF9J3kdRe8NbEY43EY43EY7x6ge4EvWW6K0Ix3hmGfFKM85Lu4Z0u6tYbdveruH4pkSk2OqJtNlb7HONzoakN74si0eJhnolp2UbRcjxal/aMRQkEJCHhiSQHn9NqZVzaSrXac39puvGiMBCRg9koSmSUgvYPD/FWetXD3tSxECRhw+/mIjteeVWiUSEJD9Wo5KlJpfk9e5kkEUiDXruWaN1ja1ZYG+ZJeyxRGzFNrZcoWop/mej1hvuGV2r4uZdvL6+iyL2Gnas3vzVwikizka3Qqd+nlGyIcfkvl5vGQO3ioynVoSZzeR/1hXm0KzevgjVF8U1hQnAcuyYrSdYdomtvZmY3ku4qsIaV9LffHzpynLP4HnjPfJJhLiGYADxn11jbRVZk9EazXSt+850/6aqny/YvV9qSO3C5jj2eNuaGkzzX7pWpwMIkt38WRve7iFFtMZPTY8spe7T2OysoCUjG+4KsLy5Winj183L0dtLKrKNFABoqcaDF1RfjYXrsIjf0sAK7EojSoO7iTjrCmtIo3pRQkys0cpCKYt1BpDV191rrCC9nVdXEbc/GQKiW1BDXlQRAYEq7sEQeyw/i4GKi7CYdgZABv+EqXmc1IpiW8D6lJiraH2wLPePO/gAAwiM68am76piWpitZngSE0aIBBG/tjEEBAYMXs5cuhKzPwdPpyDACHIALZUXpKSA+BWfmcFkCFN8cMMA4gMBgvSJQOVJxXwrLqkzoQTvuBjL0PADwWMU/wDDhFsU9HnSYgAAAABJRU5ErkJggg=="
    @State
    var forePng: String = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOYAAACzCAYAAACdKWD/AAADHUlEQVR4nO3dQY7TQBRAQYx8fE7HNTiEWaBZjBAEy6j7dbpqM6tRHMdPP3bcyfHt+4/rC5DydfYGAL8TJgQJE4KECUHChCBhQpAwIei8jtmbwAqOh592O87uMTEhSJgQJEwIOp+eO8C/cJzdY2JCkDAhSJgQJEwIEiYECROChAlBwoQgYUKQMCFImBAkTAgSJgQJE4KECUHChCBhQpAwIUiYECRMCBImBAkTgoQJQcKEIGFCkDAhSJgQJEwIEiYECROChAlBwoQgYUKQMCFImBAkTAgSJgQJE4KECUHChCBhQpAwIUiYEHRex+xNgNeO69n/r3acm5gQJEwIEiYEnU/fu8MKVjvOTUwIEiYECROChAlBwoQgYUKQMCFImBAkTAgSJgQJE4Ksx4QgExOChAlBwoQg6zEhyMSEIGFCkDAhSJgQJEwIEiYECROChAlBwoQgYUKQMCFom/WYs+8J3mU/83+YmBAkTAgSJgRZjzmI/cwdJiYECROChAlBwoQgYUKQMCFImBAkTAgSJgQJE4KECUHn7A0Y5el6yNXvdV39+c/e/tHraU1MCBImBAkTgrY5x5x9jjTb6s9/9vaPfnwTE4KECUHChCBhQpAwIUiYECRMCBImBAkTgoQJQcKEoGH3ys7+fcjZ6/Fm3+u5utWPn7tMTAjaZnUJa7uuv4+s43ivn+wWJkt4t/BeGRbm6udYq2//6nbb/84xIUiYECRMCBImBLkqyxJ8XAJB7xbeK97KQpAwIUiYECRMCBImBJ2z17ntYva9nl7nZ0av5zUxIUiYECRMCDpnn/swhtd5rrv738SEIGFCkDAhSJgQJEwI8k3sEGRiQpAwIUiYECRMCBImBG2zHnP15zn79z1Xt9r+MzEhSJgQJEwIGrYec/Y5zu53/uz+/J8avf9MTAgSJgQJE4KECUHChKBh6zFdFdzb06vyux0/JiYECROChAlBwoQgYULQMt+St9tVOT6bffyMfnwTE4KECUHChCB3/rCE2cfP6McfFibwZ9f1uXxvZSFImBAkTAgSJgS5+AMTfVz0+fh7HL9uMfoJCvdZ4sMjKU4AAAAASUVORK5CYII="
    @State
    var secondPng: String = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAQAAAACRCAYAAAAsP2Y0AAAB9UlEQVR4nO3XsRECMQwAwRdD/33QEX1QgAnogA88ntutQIlP8nzer3UBSc/dA8C/1lrXWr/9NTPXzGye6DwCwNE8+nseuwcA9hEACPMF4FjO//tcABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABAmABD2BVguCqGPfvPmAAAAAElFTkSuQmCC"

    func build() {
        Column() {
            Rating(rating: this.rating, indicator: false)
                .stars(5)
                .stepSize(0.5)
                .starStyle(
                    backgroundUri: backPng,
                    foregroundUri: forePng,
                    secondaryUri: secondPng
                )
                .margin(24)
                .onChange({
                    value: Float64 => this.rating = value
                })
                .id("ratingbasic")
            Button("change").onClick({
                ClickEvent => this.rating = 4.0
            }).id("change")
            Text("${this.rating}").id("rating").fontSize(16).fontColor(0x182431).margin(16)
        }.width(100.percent).padding(top: 5)
    }
}
