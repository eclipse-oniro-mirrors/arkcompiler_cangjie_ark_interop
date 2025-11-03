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
import worker from "@ohos.worker";

interface Lib {
  testExternal00(o: MyObject_test_external_00): void;
  MyObject_test_external_00: (name: string, age: number, grade: number) => void
  gcov_dump(): void
  testRuntime(): void
}

function runPureTestsAsync() {
    interface Req {
        data: string;
    }
    return new Promise<void>(resolve => {
        let w = new worker.ThreadWorker("./PureWorker.ets");
        let req: Req = {
            data: "start"
        };
        w.onmessage = evt => {
            let data = evt.data as Req;
            if (data.data === "end") {
                resolve();
                w.terminate();
            }
        };

        w.postMessage(req);
    });
}

declare class MyObject_test_external_00 {
  name: string;
  age: number;
  grade: number;
}

export default function TestExternal() {
  const lib = requireCJLib('libentry.so') as Lib;
  describe('TestExternal', () => {
    it('test00', 0, () => {
      let student = new
      lib.MyObject_test_external_00("tom", 19, 99) as MyObject_test_external_00
      expect(student.name).assertEqual('tom');
      lib.testExternal00(student);
    })

    it("test01", 0, (): Promise<void> => {
        return runPureTestsAsync()
    })

    it("test02", 0, () => {
        lib.testRuntime()
    })
  })
  afterAll(()=> {
    lib.gcov_dump()
  })
}