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
import { print } from './utility';

export default function testBigInt01() {
  describe('TestBigIntPrecision', () => {
    const int64MinValue = -9_223_372_036_854_775_808n;
    // print(int64MinValue.toString());
    const int64MaxValue = 9_223_372_036_854_775_807n;
    // print(int64MaxValue.toString());
    const maxSafeInteger = BigInt(Number.MAX_SAFE_INTEGER);
    print(maxSafeInteger.toString());
    const maxValue = BigInt(Number.MAX_VALUE);
    // // print(maxValue.toString());
    // const minValue = BigInt(Number.MIN_VALUE);
    // // print(minValue.toString());
    const minSafeInteger = BigInt(Number.MIN_SAFE_INTEGER);
    print(minSafeInteger.toString());
    // const negativeInfinity = BigInt(Number.NEGATIVE_INFINITY);
    // // print(negativeInfinity.toString());
    // const positiveInfinity = BigInt(Number.POSITIVE_INFINITY);
    // // print(positiveInfinity.toString());
    // const epsilon = BigInt(Number.EPSILON);
    // print(epsilon.toString());
    print(`maxSafeInteger + 1n = ${maxSafeInteger + 1n}`);
    print(`maxSafeInteger = ${maxSafeInteger}`);
    print(`minSafeInteger - 1n = ${minSafeInteger - 1n}`);
    print(`minSafeInteger = ${minSafeInteger}`);
    print(`Number.MAX_SAFE_INTEGER     = ${Number.MAX_SAFE_INTEGER}`);
    print(`Number.MAX_SAFE_INTEGER + 1 = ${Number.MAX_SAFE_INTEGER + 1}`);
    print(`Number.MIN_SAFE_INTEGER     = ${Number.MIN_SAFE_INTEGER}`);
    print(`Number.MIN_SAFE_INTEGER - 1 = ${Number.MIN_SAFE_INTEGER - 1}`);
    print(Number(BigInt('999999999999999999')).toString());
    print(`${999999999999999999}`);
    print(`${999999999999999}`);

    it('test13', 0, () => {
      lib.test_JSBigInt_case_06_success(int64MinValue - 1n);
    })
    it('test14', 0, () => {
      lib.test_JSBigInt_case_06_success(int64MinValue);
    })
    it('test15', 0, () => {
      lib.test_JSBigInt_case_06_success(int64MinValue + 1n);
    })
    it('test16', 0, () => {
      lib.test_JSBigInt_case_06_success(-114514n);
    })
    it('test17', 0, () => {
      lib.test_JSBigInt_case_06_success(-1n);
    })
    it('test18', 0, () => {
      lib.test_JSBigInt_case_06_success(0n);
    })
    it('test19', 0, () => {
      lib.test_JSBigInt_case_06_success(1n);
    })
    it('test20', 0, () => {
      lib.test_JSBigInt_case_06_success(114514n);
    })
    it('test21', 0, () => {
      lib.test_JSBigInt_case_06_success(int64MaxValue - 1n);
    })
    it('test22', 0, () => {
      lib.test_JSBigInt_case_06_success(int64MaxValue);
    })
    it('test23', 0, () => {
      lib.test_JSBigInt_case_06_success(int64MaxValue + 1n);
    })
    it('test24', 0, () => {
      lib.test_JSBigInt_case_07_success(int64MinValue - 1n);
    })
    it('test25', 0, () => {
      lib.test_JSBigInt_case_08_success(int64MinValue);
    })
    it('test26', 0, () => {
      lib.test_JSBigInt_case_09_success(int64MinValue + 1n);
    })
    it('test27', 0, () => {
      lib.test_JSBigInt_case_10_success(-114514n);
    })
    it('test28', 0, () => {
      lib.test_JSBigInt_case_11_success(-1n);
    })
    it('test29', 0, () => {
      lib.test_JSBigInt_case_12_success(0n);
    })
    it('test30', 0, () => {
      lib.test_JSBigInt_case_13_success(1n);
    })
    it('test31', 0, () => {
      lib.test_JSBigInt_case_14_success(114514n);
    })
    it('test32', 0, () => {
      lib.test_JSBigInt_case_15_success(int64MaxValue - 1n);
    })
    it('test33', 0, () => {
      lib.test_JSBigInt_case_16_success(int64MaxValue);
    })
    it('test34', 0, () => {
      lib.test_JSBigInt_case_17_success(int64MaxValue + 1n);
    })
  })
}