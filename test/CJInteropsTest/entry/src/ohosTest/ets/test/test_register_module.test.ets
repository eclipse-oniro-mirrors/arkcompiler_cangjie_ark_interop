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
import { JSON } from '@kit.ArkTS';
import * as lib from "libentry.so"
import deviceInfo from "@ohos.deviceInfo";

interface IPerson {
  name: string;
}

export default function testJSModule02() {
  describe('TestRegisterModule', () => {
    it('test00', 0, () => {
      expect(typeof lib.test_JSModule_registerModule_exportUndefined_success).assertEqual('undefined');
      expect(lib.test_JSModule_registerModule_exportUndefined_success).assertEqual(undefined);
    })
    it('test01', 0, () => {
      expect(typeof lib.test_JSModule_registerModule_exportNull_success).assertEqual('object');
      expect(lib.test_JSModule_registerModule_exportNull_success).assertEqual(null);
    })
    it('test02', 0, () => {
      expect(typeof lib.test_JSModule_registerModule_exportBoolean_success).assertEqual('boolean');
      expect(lib.test_JSModule_registerModule_exportBoolean_success).assertEqual(true);
    })
    it('test03', 0, () => {
      expect(typeof lib.test_JSModule_registerModule_exportNumber_success).assertEqual('number');
      expect(lib.test_JSModule_registerModule_exportNumber_success).assertEqual(114.514);
    })
    it('test04', 0, () => {
      expect(typeof lib.test_JSModule_registerModule_exportString_success).assertEqual('string');
      expect(lib.test_JSModule_registerModule_exportString_success).assertEqual('hello world');
    })
    it('test05', 0, () => {
      expect(typeof lib.test_JSModule_registerModule_exportFuncAddTwoNumbers_success).assertEqual('function');
      expect(lib.test_JSModule_registerModule_exportFuncAddTwoNumbers_success(1, 2)).assertEqual(3);
    })
    it('test06', 0, () => {
      expect(typeof lib.test_JSModule_registerModule_exportClassPerson_success).assertEqual('function');
      const person = new lib.test_JSModule_registerModule_exportClassPerson_success("tom", 23);
      expect(person.name).assertEqual('tom');
      expect(person.age).assertEqual(23);
    })
    it('test07', 0, () => {
      expect(typeof lib.test_JSModule_registerModule_exportSymbol_success).assertEqual('symbol');
    })
    it('test08', 0, () => {
      expect(typeof lib.test_JSModule_registerModule_exportArray_success).assertEqual('object');
      const array = lib.test_JSModule_registerModule_exportArray_success;
      expect(array[0]).assertEqual(1);
      expect(array[1]).assertEqual(true);
    })
    it('test09', 0, () => {
      expect(typeof lib.test_JSModule_registerModule_exportPlainObject_success).assertEqual('object');
      expect(JSON.stringify(lib.test_JSModule_registerModule_exportPlainObject_success)).assertEqual('{"name":"tom"}');
    })
    it('test10', 0, () => {
      expect(typeof lib.test_JSModule_registerModule_exportBigInt_success).assertEqual('bigint');
      expect(lib.test_JSModule_registerModule_exportBigInt_success).assertEqual(12345678901234567890n);
    })
    it('test11', 0, () => {
      expect(typeof lib.test_JSModule_registerModule_exportArrayBuffer_success).assertEqual('object');
      expect(lib.test_JSModule_registerModule_exportArrayBuffer_success.byteLength).assertEqual(114514);
    })
    it('test12', 0, () => {
      expect(Object.keys(lib).indexOf('test_JSModule_registerModule_exportExternal_success') !== undefined).assertTrue();
    })
    if (deviceInfo.sdkApiVersion >= 23) {
      it("fail during cangjie load", 0, ()=> {
        try {
          loadNativeModule("libentry.fail_load.so")
          expect().assertFail();
        } catch (e) {
          hilog.error(0, 'WBT', `|${e.message.toString()}|`);
        }
      })
      it("load pub sys native", 0, () => {
          const sources = [
              "@system.app",
              "@system.router",
              "@ohos.curves",
              "@ohos.matrix4"
          ]
          for (const src of sources) {
              const data = lib.test_JSContext_requireArkModule_success(src)
              expect(typeof data).assertEqual("object")
          }
      })
    }
  })
}
