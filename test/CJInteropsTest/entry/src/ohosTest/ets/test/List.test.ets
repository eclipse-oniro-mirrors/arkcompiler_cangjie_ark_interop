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

import arrayTest from './array_buffer_01.test'
import promiseTest from './promise_00.test'
import promiseTest1 from './promise_01.test'
import postJSTask from './post_jstask_01.test'
import functionTest from './function_01.test'
import testException01 from './exception_01.test'
import testBigInt00 from './test_big_int_00.test'
import testBigInt01 from './test_big_int_01.test';
import TestTypeValue from './test_type_value_00.test';
import testJSModule04 from './test_register_after_static_init.test';
import testJSModule00 from './test_register_class.test'
import testJSModule01 from './test_register_func.test';
import testJSModule02 from './test_register_module.test';
import testJSModule03 from './test_register_override.test';
import TestExternal from './test_external_00.test'
import TestNewScopeTask from './test_newScope.test'
import TestMixedStack from './test_mixed_stack.test'
import TestMixedStackBadError from './test_mixed_stack_bad_error.test'

export default function testsuite() {
  promiseTest();
  arrayTest();
  promiseTest1();
  postJSTask();
  functionTest();
  testException01();
  testBigInt00();
  testBigInt01();
  TestTypeValue();
  testJSModule00();
  testJSModule01();
  testJSModule02();
  testJSModule03();
  testJSModule04();
  testJSModule04();
  TestExternal();
  TestNewScopeTask();
  TestMixedStack();
  TestMixedStackBadError();
}
