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
import { CJNativeClass, CustomLib, Node, TicketMachine, Season } from "libark_interop_api.so"
import { requireCJLib } from "libark_interop_loader.so"
import { JSON } from '@kit.ArkTS';

class JSNativeClass {
}

interface MyClass_test_instanceof_02 {}

interface MyClass_test_instanceof_03 {}

export default function TestJSClass() {
  describe('TestJSClass', () => {
    const lib: CustomLib = requireCJLib("libohos_app_cangjie_entry.so") as CustomLib;
    beforeAll(() => {
    })
    beforeEach(() => {
    })
    afterEach(() => {
    })
    afterAll(() => {
    })

    it('test01', 0, () => {
      const obj = new lib.CJNativeClass();
      expect(obj instanceof lib.CJNativeClass).assertTrue();
    })
    it('test02', 0, () => {
      const obj = new lib.CJNativeClass();
      expect(obj instanceof lib.CJNativeClass).assertTrue();
    })
    it('test03', 0, () => {
      const obj = new JSNativeClass();
      expect(obj instanceof JSNativeClass).assertTrue();
    })
    it('staticMethodOnClass01', 0, () => {
      lib.TicketMachine.reset(0);
      const first = lib.TicketMachine.nextId();
      const second = lib.TicketMachine.nextId();
      expect(first).assertEqual(1);
      expect(second).assertEqual(2);
    })
    it('staticMethodOnClass02', 0, () => {
      let p = lib.Person.build();
      expect(p.name).assertEqual("");
      expect(p.age).assertEqual(0);
    })
    it('staticMethodBuildFromSeasonMapping', 0, () => {
      const person = lib.Person.buildFromSeason(Season.Autumn);
      expect(person.name).assertEqual("harvest");
      expect(person.age).assertEqual(3);
    })
    it('classWithMultiCtors', 0, () => {
      const obj1 = new lib.ClassWithMultiCtors();
      expect(obj1.name).assertEqual("empty");

      const obj2 = new lib.ClassWithMultiCtors(100);
      expect(obj2.name).assertEqual("Int64");

      const obj3 = new lib.ClassWithMultiCtors("test");
      expect(obj3.name).assertEqual("String");

      const obj4 = new lib.ClassWithMultiCtors(200, 300);
      expect(obj4.name).assertEqual("2Int64");

      const obj5 = new lib.ClassWithMultiCtors("a", "b");
      expect(obj5.name).assertEqual("2String");
    })
  })
}
