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

package ohos_app_cangjie_entry

import ohos.hilog.Hilog
import std.collection.*

enum CaseStatus <: ToString {
    | NotRun
    | Pass
    | Fail
    | Except(Exception)

    func isPass(): Bool {
        match (this) {
            case Pass => true
            case _ => false
        }
    }

    public func toString(): String {
        match (this) {
            case NotRun => "not run"
            case Pass => "pass"
            case Fail => "fail"
            case Except(exp) => "exception occured: ${printExp(exp)}"
        }
    }

    static func printExp(exp: Exception): String {
        var result = exp.toString()
        for (element in exp.getStackTrace()) {
            result += "\n\t at ${element.declaringClass}.${element.methodName}(${element.fileName}:${element.lineNumber})"
        }
        return result
    }
}

class TestCase {
    var status = CaseStatus.NotRun
    TestCase(
        let name: String,
        let task: () -> Unit
    ) {}
}

class AssertFail <: Exception {}

func count<T>(filter: (T) -> Bool): (Iterable<T>) -> Int64 {
    return {
        iterator =>
        let result = Box<Int64>(0)
        iterator.iterator().forEach {
            item => if (filter(item)) {
                result.value++
            }
        }
        return result.value
    }
}

class TestFramework {
    private static let allCase_ = ArrayList<TestCase>()
    static func register(name: String, task: () -> Unit): Unit {
        if (allCase_ |> any({item => item.name == name})) {
            throw Exception("case of '${name}' had allready been registered")
        }
        allCase_.add(TestCase(name, task))
    }

    static func execute(): Unit {
        for (one in allCase_) {
            try {
                one.task()
                one.status = CaseStatus.Pass
            } catch (err: AssertFail) {
                one.status = CaseStatus.Fail
            } catch (exp: Exception) {
                one.status = CaseStatus.Except(exp)
            }
            if (!one.status.isPass()) {
                break
            }
        }
        report()
    }

    static func report(): Unit {
        let total = allCase_.size
        let passed = allCase_ |> count {item => item.status.isPass()}
        //        Hilog.info(0, "test", "execution result, passed: ${passed}/${total}")
        for (one in allCase_) {
            //            Hilog.info(0, "test", "case ${one.name} result: ${one.status}")
        }
    }
}

func Expect(value: Bool): Unit {
    if (!value) {
        throw AssertFail()
    }
}

func ExpectEQ<T>(a: T, b: T): Unit where T <: Equatable<T> {
    Expect(a == b)
}
