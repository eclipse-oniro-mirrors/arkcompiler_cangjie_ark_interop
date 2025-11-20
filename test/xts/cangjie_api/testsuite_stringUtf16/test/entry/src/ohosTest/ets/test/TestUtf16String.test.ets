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

import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect } from '@ohos/hypium';
import { compare, substr, substrAdvanced, split, splitAdv, indexOf, lastIndexOf, countOf, replace, contains, startsWith, endsWith } from "libohos_app_cangjie_entry.so";


export default function TestUtf16String() {
  describe('TestUtf16String', () => {

    beforeAll(() => {
    })
    beforeEach(() => {
    })
    afterEach(() => {
    })
    afterAll(() => {
    })
    /*
    * @tc.number    : Sub_Cangjie_arkts_interop_TestUtf16String_0100
    * @tc.name      : test00
    * @tc.desc      : Test the function of compare through the comparison of multiple strings.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test00', 0, () => {
      compare();
    })
    /*
    * @tc.number    : Sub_Cangjie_arkts_interop_TestUtf16String_0200
    * @tc.name      : test01
    * @tc.desc      : Test the function of substr through different input strings and ranges, it was verified that substr correctly returned the expected substring.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test01', 0, () => {
      substr();
    })
    /*
    * @tc.number    : Sub_Cangjie_arkts_interop_TestUtf16String_0300
    * @tc.name      : test02
    * @tc.desc      : This function substrAdvanced tests that the substring is correct.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test02', 0, () => {
      substrAdvanced();
    })
    /*
    * @tc.number    : Sub_Cangjie_arkts_interop_TestUtf16String_0600
    * @tc.name      : test05
    * @tc.desc      : This function indexOf tests verifying that it correctly returns the index of a target substring within a source string.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test05', 0, () => {
      indexOf();
    })
    /*
    * @tc.number    : Sub_Cangjie_arkts_interop_TestUtf16String_0800
    * @tc.name      : test07
    * @tc.desc      : This function countOf tests that it correctly counts the occurrences of a target substring within a source string.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test07', 0, () => {
      countOf();
    })
    /*
    * @tc.number    : Sub_Cangjie_arkts_interop_TestUtf16String_0900
    * @tc.name      : test08
    * @tc.desc      : This function replace tests that it correctly replaces occurrences of a substring with another substring in a source string.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test08', 0, () => {
      replace();
    })
    /*
    * @tc.number    : Sub_Cangjie_arkts_interop_TestUtf16String_1000
    * @tc.name      : test09
    * @tc.desc      : This function contains tests that it correctly checks if a source string contains a target substring.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test09', 0, () => {
      contains();
    })
    /*
    * @tc.number    : Sub_Cangjie_arkts_interop_TestUtf16String_1100
    * @tc.name      : test10
    * @tc.desc      : This function startsWith tests that it correctly checks if a source string starts with a specified target substring.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test10', 0, () => {
      startsWith();
    })
    /*
    * @tc.number    : Sub_Cangjie_arkts_interop_TestUtf16String_1200
    * @tc.name      : test11
    * @tc.desc      : This function startsWith tests that it correctly checks if a source string ends with a specified target substring.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test11', 0, () => {
      endsWith();
    })
  });
}

