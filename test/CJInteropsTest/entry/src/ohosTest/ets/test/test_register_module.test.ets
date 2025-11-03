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
import { requireCJLib } from "libark_interop_loader.so"
import { hilog } from '@kit.PerformanceAnalysisKit';
import { JSON } from '@kit.ArkTS';

interface Lib {
  testRegisterModule00: undefined;
  testRegisterModule01: null;
  testRegisterModule02: boolean;
  testRegisterModule03: number;
  testRegisterModule04: string;
  testRegisterModule05: (a: number, b: number) => number;
  testRegisterModule06: () => IPerson;
  testRegisterModule07: Symbol;
  testRegisterModule08: Array<number | boolean>
  testRegisterModule09: object;
  testRegisterModule10: bigint;
  testRegisterModule11: ArrayBuffer;
}

interface IPerson {
  name: string;
}

export default function testJSModule02() {
  describe('TestRegisterModule', () => {
    const lib = requireCJLib('libentry.so') as Lib;

    it('test00', 0, () => {
      expect(typeof lib.testRegisterModule00).assertEqual('undefined');
      expect(lib.testRegisterModule00).assertEqual(undefined);
    })
    it('test01', 0, () => {
      expect(typeof lib.testRegisterModule01).assertEqual('object');
      expect(lib.testRegisterModule01).assertEqual(null);
    })
    it('test02', 0, () => {
      expect(typeof lib.testRegisterModule02).assertEqual('boolean');
      expect(lib.testRegisterModule02).assertEqual(true);
    })
    it('test03', 0, () => {
      expect(typeof lib.testRegisterModule03).assertEqual('number');
      expect(lib.testRegisterModule03).assertEqual(114.514);
    })
    it('test04', 0, () => {
      expect(typeof lib.testRegisterModule04).assertEqual('string');
      expect(lib.testRegisterModule04).assertEqual('hello world');
    })
    it('test05', 0, () => {
      expect(typeof lib.testRegisterModule05).assertEqual('function');
      expect(lib.testRegisterModule05(1, 2)).assertEqual(3);
    })
    it('test06', 0, () => {
      expect(typeof lib.testRegisterModule06).assertEqual('function');
      lib.testRegisterModule06 = () => {
        class Person implements IPerson {
          name: string;
          age: number;
          constructor(name: string, age: number){
            this.name = name
            this.age = age
          }
        }
        return new Person('tom', 23)
      }
      const person = lib.testRegisterModule06();
      expect(person.name).assertEqual('tom');
      expect(JSON.stringify(person)).assertEqual('{"name":"tom","age":23}');
    })
    it('test07', 0, () => {
      expect(typeof lib.testRegisterModule07).assertEqual('symbol');
    })
    it('test08', 0, () => {
      expect(typeof lib.testRegisterModule08).assertEqual('object');
      const array = lib.testRegisterModule08;
      expect(array[0]).assertEqual(1);
      expect(array[1]).assertEqual(true);
    })
    it('test09', 0, () => {
      expect(typeof lib.testRegisterModule09).assertEqual('object');
      expect(JSON.stringify(lib.testRegisterModule09)).assertEqual('{"name":"tom"}');
    })
    it('test10', 0, () => {
      expect(typeof lib.testRegisterModule10).assertEqual('bigint');
      expect(lib.testRegisterModule10).assertEqual(12345678901234567890n);
    })
    it('test11', 0, () => {
      expect(typeof lib.testRegisterModule11).assertEqual('object');
      expect(lib.testRegisterModule11.byteLength).assertEqual(114514);
    })
    it('test12', 0, () => {
      expect(Object.keys(lib).indexOf('testRegisterModule12') !== undefined).assertTrue();
    })
  })
}