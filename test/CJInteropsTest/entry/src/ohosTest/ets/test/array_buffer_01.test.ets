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

class CustomBuffer1 extends ArrayBuffer {
  slice(begin: number, end?: number): ArrayBuffer {
    throw new Error("arkts error occur")
  }
}

class CustomBuffer2 extends Uint16Array {
  get byteLength(): number {
    throw new Error("arkts error occur")
  }
}

export default function arrayTest() {
  describe('TestArray', () => {
    it('test00_operator_get_jsArrayRangeMisMatch', 0, () => {
      let emptyArray = [];
      lib.test_JSArray_OperatorGet_throwException_jsArrayRangeMisMatch_1(emptyArray);
    })
    it('test00_operator_set_jsvalue_jsArrayRangeMisMatch', 0, () => {
      let emptyArray = [];
      lib.test_JSArray_OperatorSetJSValue_throwException_jsArrayRangeMisMatch_1(emptyArray);
    })
    it('test00_operator_set_jsheapobject_jsArrayRangeMisMatch', 0, () => {
      let emptyArray = [];
      lib.test_JSArray_OperatorSetJSHeapObject_throwException_jsArrayRangeMisMatch_1(emptyArray);
    })
    it('test01_operator_get_returnExpectedValue', 0, () => {
      let array = [114.514, "my love", undefined, null, true];
      lib.test_JSArray_OperatorGet_returnExpectedValue(array);
    })
    it('test01_operator_get_jsArrayRangeMisMatch', 0, () => {
      let array = [114.514, "my love", undefined, null, true];
      lib.test_JSArray_OperatorGet_throwException_jsArrayRangeMisMatch_2(array);
    })
    it('test01_operator_set_jsvalue_success', 0, () => {
      let array = [114.514, "my love", undefined, null, true];
      lib.test_JSArray_OperatorSetJSValue_success_1(array);
    })
    it('test01_operator_set_jsvalue_jsArrayRangeMisMatch', 0, () => {
      let array = [114.514, "my love", undefined, null, true];
      lib.test_JSArray_OperatorSetJSValue_throwException_jsArrayRangeMisMatch_2(array);
    })
    it('test01_operator_set_jsheapobject_success', 0, () => {
      let array = [114.514, "my love", undefined, null, true];
      lib.test_JSArray_OperatorSetJSHeapObject_success(array);
    })
    it('test01_operator_set_jsheapobject_jsArrayRangeMisMatch', 0, () => {
      let array = [114.514, "my love", undefined, null, true];
      lib.test_JSArray_OperatorSetJSHeapObject_throwException_jsArrayRangeMisMatch_2(array);
    })
    it('test02', 0, () => {
      let array = lib.test_JSArray_OperatorSetJSValue_success_2();
      expect(array[0]).assertEqual(114.514);
      expect(array[1]).assertEqual(false);
    })

    it('test_JSArrayBuffer_toArrayBufferJSValue_throwException34300002', 0, () => {
      let buffer = new CustomBuffer1(10)
      let typedArr = new Uint8Array(buffer)
      let str = lib.test_JSArrayBuffer_toArrayBufferJSValue_throwException34300002(typedArr);
      expect(str).assertEqual("arkts error occur");
    })
    it('test_JSArrayBuffer_toUInt8ArrayJSValue_throwException34300002', 0, () => {
      let buffer = new CustomBuffer2(10)
      let str = lib.test_JSArrayBuffer_toUInt8ArrayJSValue_throwException34300002(buffer);
      expect(str.includes("Outside error occurred"));
    })
    it('test_JSArrayBuffer_toUInt8ClampedArrayJSValue_throwException34300002', 0, () => {
      let buffer = new CustomBuffer2(10)
      let str = lib.test_JSArrayBuffer_toUInt8ClampedArrayJSValue_throwException34300002(buffer);
      expect(str.includes("Outside error occurred"));
    })
    it('test_JSArrayBuffer_toInt8ArrayJSValue_throwException34300002', 0, () => {
      let buffer = new CustomBuffer2(10)
      let str = lib.test_JSArrayBuffer_toInt8ArrayJSValue_throwException34300002(buffer);
      expect(str.includes("Outside error occurred"));
    })
    it("test_JSArrayBuffer_WithException", 0, ()=> {
      lib.test_JSArrayBuffer_WithException()
    })
    it("test_JSArrayEx", 0, ()=> {
        lib.test_JSArrayEx()
    })
    it("test_JSHashmapEx", 0, ()=> {
        lib.test_JSHashmapEx()
    })
  })
}