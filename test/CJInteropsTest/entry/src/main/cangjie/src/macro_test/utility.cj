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

package entry.macro_test

import ohos.hilog.Hilog
import std.collection.forEach
import std.math.abs
import std.convert.Formattable

let LOG_DOMAIN = UInt32(0)
let LOG_TAG = "WBT"

foreign func malloc(size: UIntNative): CPointer<Unit>

foreign func free(cPointer: CPointer<Unit>): Unit

public func assertEqual<T>(a: T, b: T): Unit where T <: Equatable<T> {
    Assert.equals(a, b)
}

public func assertTrue(a: Bool): Unit {
    Assert.isTrue(a)
}

public class Assert {
    public static func isFalse(actual: Bool, reason!: String = "") {
        if (actual) {
            let message = "isFalse, result=true, reason=${reason}"
            Hilog.error(LOG_DOMAIN, LOG_TAG, message)
            fail(message, reason)
        } else {
            Hilog.info(LOG_DOMAIN, LOG_TAG, "isFalse, result=false, reason=${reason}")
        }
    }
    public static func isTrue(actual: Bool, reason!: String = "") {
        if (actual) {
            Hilog.info(LOG_DOMAIN, LOG_TAG, "isTrue, result=true, reason=${reason}")
        } else {
            let message = "isTrue, result=false, reason=${reason}"
            Hilog.error(LOG_DOMAIN, LOG_TAG, message)
            fail(message, reason)
        }
    }
    public static func isUnreachable(reason!: String = "") {
        Hilog.error(LOG_DOMAIN, LOG_TAG, "unreachable, ${reason}")
        fail("isUnreachable", reason)
    }
    public static func isNone<T>(actual: Option<T>, reason!: String = "") {
        let argStr = if (actual is ToString) {
            "(${actual as ToString ?? ""})"
        } else {
            ""
        }
        match (actual) {
            case None => ()
            case Some(_) => fail("isNone${argStr}", reason)
        }
    }
    public static func isSome<T>(actual: Option<T>, reason!: String = "") {
        match (actual) {
            case None => fail("isSome", reason)
            case Some(_) => ()
        }
    }
    public static func notEquals<T>(unexpected: T, actual: T, reason!: String = "") where T <: Equatable<T> {
        if (unexpected == actual) {
            let argStr = if (actual is ToString) {
                "(unexpected='${unexpected as ToString ?? ""}', actual='${actual as ToString ?? ""}')"
            } else {
                ""
            }
            Hilog.error(LOG_DOMAIN, LOG_TAG, "notEquals${argStr}")
        } else {
            Hilog.info(LOG_DOMAIN, LOG_TAG, "notEquals success")
        }
    }
    public static func equals<T>(expected: T, actual: T, reason!: String = "") where T <: Equatable<T> {
        if (expected != actual) {
            let argStr = if (actual is ToString) {
                "(expected='${expected as ToString ?? ""}', actual='${actual as ToString ?? ""}')"
            } else {
                ""
            }
            throw AssertException(argStr)
        //            Hilog.error(LOG_DOMAIN, LOG_TAG, "equals${argStr} ${reason}")
        //            fail("equals ${argStr} ${reason}", reason)
        } else {
            //            Hilog.info(LOG_DOMAIN, LOG_TAG, "equals success ${reason}")
        }
    }
    public static func approxEquals(expected: Float64, actual: Float64, reason!: String = "") {
        approxEquals(expected, actual, abs(expected) * 1e-4, reason: reason)
    }
    public static func approxEquals(expected: Float32, actual: Float32, reason!: String = "") {
        approxEquals(expected, actual, abs(expected) * 1e-3f32, reason: reason)
    }
    public static func approxEquals(expected: Float16, actual: Float16, reason!: String = "") {
        approxEquals(expected, actual, abs(expected) * 1e-2f16, reason: reason)
    }
    public static func approxEquals(expected: Float64, actual: Float64, tolerance: Float64, reason!: String = "") {
        let actualTolerance = abs(expected - actual)
        if (isNaN(actualTolerance) || isNaN(tolerance) || actualTolerance > tolerance) {
            Hilog.error(LOG_DOMAIN, LOG_TAG,
                """
approxEquals64(expected =${expected.format(".30e")},
                                           actual   =${actual
                    .format(".30e")},
                                           tolerance=${tolerance})""")
        } else {
            Hilog.info(LOG_DOMAIN, LOG_TAG, "approxEquals success: ${reason}")
        }
    }
    public static func approxEquals(expected: Float32, actual: Float32, tolerance: Float32, reason!: String = "") {
        let actualTolerance = abs(expected - actual)
        if (isNaN(actualTolerance) || isNaN(tolerance) || actualTolerance > tolerance) {
            fail(
                """
approxEquals32(expected =${expected.format(".20e")},
                                           actual   =${actual
                    .format(".20e")},
                                           tolerance=${tolerance})""",
                reason
            )
        }
    }
    public static func approxEquals(expected: Float16, actual: Float16, tolerance: Float16, reason!: String = "") {
        let actualTolerance = abs(expected - actual)
        if (isNaN(actualTolerance) || isNaN(tolerance) || actualTolerance > tolerance) {
            fail(
                """
approxEquals16(expected =${expected.format(".10e")},
                                           actual   =${actual
                    .format(".10e")},
                                           tolerance=${tolerance})""",
                reason
            )
        }
    }
    public static func throws(f: () -> Unit, check!: (Exception) -> Bool = {_ => true}, reason!: String = "") {
        try {
            f()
        } catch (e: Exception) {
            if (check(e)) {
                return
            }
            let exceptionMessage = e.toString().lazySplit("\n").next() ?? ""
            let reasonStr = if (reason.isEmpty()) {
                ""
            } else {
                " Reason: '${reason}'"
            }
            throw AssertException(
                "Assertion 'throws' failed: the exception with the message '${exceptionMessage}' is not what was expected.${reasonStr}"
            )
        }
        fail("throws", reason)
    }
}

public class AssertException <: Exception {
    public AssertException(private let assertionMessage: String) {}
    public override func toString(): String {
        "AssertException: ${this.assertionMessage}"
    }
}

func isNaN<T>(item: T): Bool {
    false
}

func fail(assertionName: String, reason: String) {
    try {
        throw Exception()
    } catch (e: Exception) {
        let sb = StringBuilder(assertionName)
        sb.append('\n')
        e.getStackTrace() |>
            forEach<StackTraceElement> {
            s: StackTraceElement => sb.append(
                "\t\tat ${s.declaringClass}.${s.methodName}(${s.fileName}:${s.lineNumber})\n")
        }
        Hilog.error(LOG_DOMAIN, LOG_TAG, sb.toString())
    }
}

const numberValue = 114514
const booleanValue = true

func functionThatReturnsUnit() {
    ()
}

const int64Value = 114514i64
const uint64Value = 114514u64
const float64Value = 114.514f64
const stringValue = "hello world"
let arrayBufferValue: Array<Byte> = [1, 2, 3, 4, 5]

type complexFunctionType = (((((Unit) -> Bool) -> Int64) -> Float64) -> Option<Float16>) -> Array<Byte>
