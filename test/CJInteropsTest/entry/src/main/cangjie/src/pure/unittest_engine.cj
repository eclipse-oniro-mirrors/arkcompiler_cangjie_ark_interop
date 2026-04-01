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

package entry.pure

import std.unittest.*
import std.unittest.testmacro.*
import std.collection.*
import std.fs.*
import std.sync.*
import std.runtime.*
import ohos.ark_interop.*
import ohos.business_exception.BusinessException
import ohos.hilog.*
import std.unittest.common.PrettyText

private var curContext_: ?JSContext = None
private let allTests_ = HashMap<String, TestClass>()

func registerTestSuite(name: String, creator: () -> TestClass): Unit {
    allTests_.add(name, creator())
}

private func runAllTests(context: JSContext): Unit {
    curContext_ = context

    let reporter = XmlReporter(Path("/data/storage/el1/base/report"))
    let reports = ArrayList<(String, TestReport)>()

    for ((name, clazz) in allTests_) {
        let suite = clazz.asTestSuite()
        let report = suite.runTests()
        reports.add((name, report))
    }
    for ((name, report) in reports) {
        report.reportTo(reporter)
        let pp = PrettyText()
        report.reportTo(TextReporter(into: pp))
        let str = pp.toString()
        for (line in str.lines()) {
            if (line.contains("[ FAILED ] ") || line.contains("[ ERROR ] ")) {
                Hilog.error(0, "unittest", "${line}")
            }
        }
        // Hilog.error(0, "unittest", "${pp.toString()}")
        Hilog.error(0, "unittest", "resulting: ${name}, passed: ${report.passedCount}/${report.caseCount}")
    }
}

let _ = JSModule.registerFunc("runPureTests") {
    context => return context.function {
        context, _ =>
            runAllTests(context)
            context.undefined().toJSValue()
    }
}

func getJSContext(): JSContext {
    curContext_.getOrThrow()
}

func expectBusinessExceptionCode(expected: Int32, callback: () -> Unit) {
    var ok = false
    try {
        callback()
    } catch (e: BusinessException) {
        @Expect(e.code, expected)
        ok = true
    }
    @Expect(ok)
}

func expectBusinessExceptionMsg(expected: String, callback: () -> Unit) {
    let msg = try {
        callback()
        "NO_EXCEPTION"
    } catch (e: BusinessException) {
        e.message.toString()
    }
    @Expect(msg == expected)
}

func testThreadMismatch<T>(operation: () -> T) {
    let msg = spawn {
        try {
            operation()
            "NO_EXCEPTION"
        } catch (e: BusinessException) {
            e.message.toString()
        }
    }.get()
    @Expect(msg.contains("Thread mismatch"))
}

func testReferenceBeyondReach<T>(jsContext: JSContext, operation: () -> T) {
    gc(heavy: true)
    jsContext.global.callMethod(
        "setTimeout",
        jsContext.function {
            context, _ =>
                let msg = try {
                    operation()
                    "NO_EXCEPTION"
                } catch (e: BusinessException) {
                    e.message.toString()
                }
                @Expect(msg.contains("beyond reach"))
                context.undefined().toJSValue()
        }.toJSValue(),
        jsContext.number(2000).toJSValue()
    )
}

func testExceptionThrow<T>(callback: () -> Unit): Unit where T <: BusinessException {
    let isExpThrow = try {
        callback()
        false
    } catch (exp: T) {
        exp.toString()
        true
    } catch (exp: Exception) {
        false
    }
    @Expect(isExpThrow)
}


private enum Result<T, E> {
    | Ok(T)
    | Err(E)
}

func await<T>(context: JSContext, f: () -> T): T {
    if (context.isInBindThread()) {
        return f()
    }
    let result = Box(None<Result<T, Exception>>)
    let monitor = Monitor()
    context.postJSTask {
        result.value = try {
            Result.Ok(f())
        } catch (e: Exception) {
            Result.Err(e)
        } finally {
            synchronized(monitor) {
                monitor.notify()
            }
        }
    }

    synchronized(monitor) {
        monitor.wait(timeout: Duration.second * 6)
    }
    match (result.value) {
        case None => throw Exception("await timeout")
        case Some(result) => match (result) {
            case Ok(value) => value
            case Err(e) => throw e
        }
    }
}
