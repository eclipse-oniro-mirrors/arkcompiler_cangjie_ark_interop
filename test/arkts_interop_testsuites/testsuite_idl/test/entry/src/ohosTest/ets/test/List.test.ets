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

import TestAsyncFunction from './TestAsyncFunction.test';
import TestBinaryTree from './TestBinaryTree.test';
import TestEnum from './TestEnum.test';
import TestJSArrayEx from './TestJSArrayEx.test';
import TestJSClass from './TestJSClass.test';
import TestJSMapEx from './TestJSMapEx.test';
import TestJSStringEx from './TestJSStringEx.test';
import TestNamedParameter from './TestNamedParameter.test';
import TestOption from './TestOption.test';
import TestParameterNumber from './TestParameterNumber.test';
import TestParameterType from './TestParameterType.test';
import TestQuestionMarkSyntacticSugar from './TestQuestionMarkSyntacticSugar.test';
import TestReturnType from './TestReturnType.test'
import TestZoo from './TestZoo.test';

export default function testsuite() {
  TestAsyncFunction();
  TestEnum();
  TestNamedParameter();
  TestOption();
  TestParameterNumber();
  TestParameterType();
  TestQuestionMarkSyntacticSugar();
  TestReturnType();
  TestJSStringEx();
  TestJSArrayEx();
  TestJSMapEx();
  TestBinaryTree();
  TestZoo();
  TestJSClass();
}
