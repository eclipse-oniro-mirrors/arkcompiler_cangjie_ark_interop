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

import { hilog } from '@kit.PerformanceAnalysisKit';
import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect } from '@ohos/hypium';
import * as lib from "libentry.so"

export default function TestTypeValue() {
  describe('TestTypeValue', () => {
    it('test_types_00', 0, () => {
      lib.test_types_00(32);
    })
    it('test_types_01', 0, () => {
      try {
        lib.test_types_01();
      } catch (e) {
        hilog.error(0, 'WBT', `|${e.message.toString()}|`);
      }
    })
    it('test_types_02', 0, () => {
      try {
        lib.test_types_02();
      } catch (e) {
        hilog.error(0, 'WBT', `|${e.message.toString()}|`);
      }
    })
    it('test_types_03', 0, () => {
      try {
        lib.test_types_03();
      } catch (e) {
        hilog.error(0, 'WBT', `|${e.message.toString()}|`);
      }
    })
    it('test_types_04', 0, () => {
      lib.test_types_04(true);
    })
    it('test_types_05', 0, () => {
      lib.test_types_05("32");
    })
    it('test_types_06', 0, () => {
      lib.test_types_06(undefined);
    })
    it('test_types_07', 0, () => {
      lib.test_types_07(null);
    })
    it('test_types_bigint_08', 0, () => {
      const bigInt = 123n;
      lib.test_types_bigint_08(bigInt);
    })
    it('test_types_09', 0, () => {
      try {
        const NumberArr1 = ["1", "2", "3"]
        lib.test_types_09(NumberArr1);
      } catch (e) {
        hilog.error(0, 'WBT', `|${e.message.toString()}|`);
      }
    })
    it('test_types_10', 0, () => {
      try {
        lib.test_types_10("jsString");
      } catch (e) {
        hilog.error(0, 'WBT', `|${e.message.toString()}|`);
      }
    })
    it('test_types_11', 0, () => {
      try {
        lib.test_types_11(20);
      } catch (e) {
        hilog.error(0, 'WBT', `|${e.message.toString()}|`);
      }
    })
    it('test_types_12', 0, () => {
      lib.test_types_12();
    })
    it('test_types_13', 0, () => {
      lib.test_types_13("isStageMode");
    })
    it('test_jsCurrent_14', 0, () => {
      lib.test_jsCurrent_14("isStageMode");
    })
    it('test_jsStringEx_15', 0, () => {
      lib.test_jsStringEx_15("isStageMode");
    })
    it('test_jsHashMap_16', 0, () => {
      lib.test_jsHashMap_16("isStageMode");
    })
  })
}