/*
 * Copyright (c) 2026 Huawei Device Co., Ltd.
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
import * as lib from "libentry.so"

export default function TestMixedStackBadError() {
  describe('TestMixedStackBadError', ()=> {
    it('TestMixedStackBadErrorString', 0, ()=> {
      let error = undefined
      try {
        lib.testMixedStack1((callback)=> {
          try {
            callback(()=> {
              throw "This is a error text"
            })
          } catch (e) {
            error = e
            throw e
          }
        })
      } catch (e) {
        expect(error.message).assertEqual(e.message)
        expect(error.stack).assertEqual(e.stack)
        expect(error.message).assertEqual('This is a error text')
      }
    })
    it('TestMixedStackBadErrorNumber', 0, ()=> {
      let error = undefined
      try {
        lib.testMixedStack1((callback)=> {
          try {
            callback(()=> {
              throw 123456
            })
          } catch (e) {
            error = e
            throw e
          }
        })
      } catch (e) {
        expect(error.message).assertEqual(e.message)
        expect(error.stack).assertEqual(e.stack)
        expect(error.message).assertEqual('unsupported js error[number]')
      }
    })
  })
}