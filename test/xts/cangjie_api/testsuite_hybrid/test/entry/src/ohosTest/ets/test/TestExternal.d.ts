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

interface Lib {
  testExternal00(o: MyObject_test_external_00): void;

  MyObject_test_external_00: { new(name: string, age: number, grade: number): MyObject_test_external_00 }
}

declare class MyObject_test_external_00 {
  name: string;
  age: number;
  grade: number;

  constructor(name: string, age: number, grade: number);
}