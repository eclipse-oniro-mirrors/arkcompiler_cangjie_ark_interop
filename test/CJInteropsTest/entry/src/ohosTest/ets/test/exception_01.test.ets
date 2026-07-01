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
import { hilog } from '@kit.PerformanceAnalysisKit';
import * as lib from "libentry.so"

function functionThatThrows() {
  throw new Error("message of this error");
}

export default function testException01() {
  describe('TestException', () => {
    it('test00', 0, () => {
      try {
        lib.test_throwException();
        expect().assertFail();
      } catch (e) {
        hilog.error(0, 'WBT', `|${e.message.toString()}|`);
      }
    })
    it('test01', 0, () => {
      try {
        lib.test_JSFunction_throwException(functionThatThrows);
      } catch (e) {
        hilog.error(0, 'WBT', `|${e.message.toString()}|`);
      }
    })
    it("test_InteropType_Exception", 0, ()=> {
      lib.test_InteropType_Exception()
    })
    it("test_Utf16_LazySplit", 0, ()=> {
      lib.test_Utf16_LazySplit()
    })
  })
}