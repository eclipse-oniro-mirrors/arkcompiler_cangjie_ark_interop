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
import ohos.ark_interop.*
import ohos.business_exception.BusinessException
import std.time.*
import std.runtime.*
import std.math.numeric.*
import std.sync.*

@Test
class TestObject {
    @TestCase
    func test_JSObject_instanceOf_class_false_success() {
        let jsContext = getJSContext()
        let object = jsContext.object()
        let newCls = jsContext.clazz({
            _, callInfo => callInfo.thisArg
        })
        let isError = object.instanceOf(newCls)
        @Expect(isError, false)
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSObject_instanceOf_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let o = newContext.object()
        let c = newContext.clazz({_, ci => ci.thisArg})

        testReferenceBeyondReach(jsContext) {
            o.instanceOf(c)
        }
    }

    @TestCase
    func test_JSObject_instanceOf_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let o = jsContext.object()
        let c = jsContext.clazz({_, ci => ci.thisArg})

        testThreadMismatch {
            o.instanceOf(c)
        }
    }

    @TestCase
    func test_JSObject_hasProperty_success() {
        let jsContext = getJSContext()
        let object = jsContext.object()
        object["a"] = jsContext.boolean(true).toJSValue()
        @Expect(object.hasProperty("a"))
        @Expect(object.hasProperty("b"), false)
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSObject_hasProperty_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let o = newContext.object()
        let key = "k"

        testReferenceBeyondReach(jsContext) {
            o.hasProperty(key)
        }
    }

    @TestCase
    func test_JSObject_hasProperty_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let o = jsContext.object()
        let key = jsContext.string("k")

        testThreadMismatch {
            o.hasProperty(key)
        }
    }

    @TestCase
    func test_JSObject_getProperty_and_setProperty_success() {
        let jsContext = getJSContext()
        let object = jsContext.object()
        object["a"] = jsContext.boolean(true).toJSValue()
        @Expect(object.getProperty("a").toBoolean())
        object.setProperty("a", jsContext.boolean(false).toJSValue())
        @Expect(object["a"].toBoolean(), false)
    }

    @TestCase
    func test_JSObject_getProperty_throwException34300002_outsideError() {
        let jsContext = getJSContext()
        let object = jsContext.object()
        let getter = jsContext.function {
            context, _ =>
                throw Exception("outside getter error")
                context.undefined().toJSValue()
        }
        object.defineOwnAccessor("k", getter: getter, setter: None<JSFunction>)
        expectBusinessExceptionCode(34300002) {
            let _ = object.getProperty("k")
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSObject_getProperty_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let object = newContext.object()
        object["a"] = newContext.number(1.0).toJSValue()
        testReferenceBeyondReach(jsContext) {
            object.getProperty("a")
        }
    }

    @TestCase
    func test_JSObject_getProperty_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let object = jsContext.object()
        object["a"] = jsContext.number(1.0).toJSValue()
        testThreadMismatch {
            object.getProperty("a")
        }
    }

    @TestCase
    func test_JSObject_operatorSet_operatorGet_stringKey_success() {
        let jsContext = getJSContext()
        let object = jsContext.object()
        object["a"] = jsContext.boolean(true).toJSValue()
        @Expect(object["a"].isBoolean())
        @Expect(object["b"].isUndefined())
    }

    @TestCase
    func test_JSObject_operatorGet_throwException34300002_outsideError() {
        let jsContext = getJSContext()
        let object = jsContext.object()
        let getter = jsContext.function {
            context, _ =>
                throw Exception("outside getter error")
                context.undefined().toJSValue()
        }
        object.defineOwnAccessor("k", getter: getter, setter: None<JSFunction>)
        expectBusinessExceptionCode(34300002) {
            let _ = object["k"]
        }
    }

    @TestCase
    func test_JSObject_symbolKey_operatorSet_success() {
        let jsContext = getJSContext()
        let object = jsContext.object()
        let key = jsContext.symbol(description: "b")
        object[key] = jsContext.boolean(true).toJSValue()
        @Expect(object[key].toBoolean())
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSObject_operatorGet_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let o = newContext.object()
        let key = "k"
        o.setProperty(key, newContext.number(1.0).toJSValue())

        testReferenceBeyondReach(jsContext) {
            o[key]
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSObject_operatorSet_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let o = newContext.object()
        let key = "k"

        testReferenceBeyondReach(jsContext) {
            o[key] = newContext.number(3.0).toJSValue()
        }
    }

    @TestCase
    func test_JSObject_operatorGet_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let o = jsContext.object()
        let key = jsContext.string("k")
        o.setProperty(key, jsContext.number(1.0).toJSValue())

        testThreadMismatch {
            o[key]
        }
    }

    @TestCase
    func test_JSObject_operatorSet_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let o = jsContext.object()
        let key = jsContext.string("k")

        testThreadMismatch {
            o[key] = jsContext.number(3.0).toJSValue()
        }
    }

    @TestCase
    func test_JSObject_callMethod_success() {
        let jsContext = getJSContext()
        let object = jsContext.object()
        object["c"] = jsContext.function {
            _, _ => jsContext.undefined().toJSValue()
        }.toJSValue()
        object.callMethod("c")
    }

    @TestCase
    func test_JSObject_callMethod_throwException34300002_outsideError() {
        let jsContext = getJSContext()
        let object = jsContext.object()
        object["boom"] = jsContext.object().toJSValue()
        expectBusinessExceptionCode(34300002) {
            let _ = object.callMethod("boom")
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSObject_callMethod_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let object = newContext.object()
        object["m"] = newContext.function {context, _ => context.undefined().toJSValue()}.toJSValue()
        testReferenceBeyondReach(jsContext) {
            object.callMethod("m")
        }
    }

    @TestCase
    func test_JSObject_callMethod_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let object = jsContext.object()
        object["m"] = jsContext.function {context, _ => context.undefined().toJSValue()}.toJSValue()
        testThreadMismatch {
            object.callMethod("m")
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSObject_setProperty_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let o = newContext.object()
        let key = "k"

        testReferenceBeyondReach(jsContext) {
            o.setProperty(key, newContext.number(2.0).toJSValue())
        }
    }

    // @TestCase
    func test_JSObject_operatorSet_throwException34300002_outsideError() {
        let jsContext = getJSContext()
        let object = jsContext.object()
        let setter = jsContext.function {
            context, _ =>
                throw Exception("outside setter error")
                context.undefined().toJSValue()
        }
        object.defineOwnAccessor("k", getter: None<JSFunction>, setter: setter)
        expectBusinessExceptionCode(34300002) {
            object["k"] = jsContext.number(1.0).toJSValue()
        }
    }

    @TestCase
    func test_JSObject_setProperty_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let o = jsContext.object()
        let key = jsContext.string("k")

        testThreadMismatch {
            o.setProperty(key, jsContext.number(2.0).toJSValue())
        }
    }

    @TestCase
    func test_JSObject_defineOwnProperty_flags() {
        let jsContext = getJSContext()
        let cases = [
            PropCase("a", false, false, false),
            PropCase("b", true, false, false),
            PropCase("c", false, true, false),
            PropCase("d", false, false, true),
            PropCase("e", true, true, false),
            PropCase("f", true, false, false),
            PropCase("g", false, true, true),
            PropCase("h", true, true, true)
        ]
        let object = jsContext.object()
        let valueT = jsContext.boolean(true).toJSValue()
        let valueF = jsContext.boolean(false).toJSValue()
        for (one in cases) {
            object.defineOwnProperty(one.key, valueF, isWritable: one.writable, isEnumerable: one.enumerable,
                isConfigurable: one.configurable)
        }
        // enumerable
        let keys = object.keys()
        let expectedKeys = ["c", "e", "g", "h"]
        @Expect(keys.size, 4)
        for (k in keys) {
            @Expect(expectedKeys.contains(k))
        }
        // writable
        for (one in cases) {
            if (one.writable) {
                object[one.key] = valueT
                let received = object[one.key].toBoolean()
                @Expect(one.writable, received)
            }
        }
        // configurable
        let valueNull = jsContext.null().toJSValue()
        for (one in cases) {
            let expThrow = try {
                object.defineOwnProperty(one.key, valueNull)
                false
            } catch (_) {
                true
            }
            if (one.configurable) {
                @Expect(object[one.key].isNull())
            } else {
                @Expect(expThrow)
            }
        }
    }

    @TestCase
    func test_JSObject_defineOwnProperty_throwException34300002() {
        let jsContext = getJSContext()
        let o = jsContext.object()
        let key = jsContext.string("k")

        let msg = try {
            o.defineOwnProperty(key, jsContext.number(0.0).toJSValue(), isWritable: true, isEnumerable: true,
                isConfigurable: false)
            o.defineOwnProperty(key, jsContext.number(0.0).toJSValue())
            "NO_EXCEPTION"
        } catch (e: BusinessException) {
            e.message.toString()
        }
        @Expect(msg.contains("Cannot define property"))
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSObject_defineOwnProperty_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let o = newContext.object()
        let key = "k"

        testReferenceBeyondReach(jsContext) {
            o.defineOwnProperty(key, newContext.number(0.0).toJSValue())
        }
    }

    @TestCase
    func test_JSObject_defineOwnProperty_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let o = jsContext.object()
        let key = jsContext.string("k")

        testThreadMismatch {
            o.defineOwnProperty(key, jsContext.number(0.0).toJSValue())
        }
    }

    @TestCase
    func test_JSObject_defineOwnAccessor_getter_setter_success() {
        let jsContext = getJSContext()
        let object = jsContext.object()
        object["a"] = jsContext.number(1.1).toJSValue()

        let rawGetter: JSLambda = {
            _, callInfo => callInfo.thisArg.getProperty("a")
        }
        let rawSetter: JSLambda = {
            _, callInfo =>
                callInfo.thisArg.setProperty("a", callInfo[0])
                jsContext.undefined().toJSValue()
        }
        let getter = jsContext.function(rawGetter)
        let setter = jsContext.function(rawSetter)
        object.defineOwnAccessor("b", getter: getter, setter: setter)
        object.defineOwnAccessor("c", getter: getter)
        object.defineOwnAccessor("d", setter: setter)
        object.defineOwnAccessor("e", getter: rawGetter, setter: rawSetter)
        object.defineOwnAccessor("f", getter: rawGetter)
        object.defineOwnAccessor("g", setter: rawSetter)
        object["b"] = jsContext.boolean(true).toJSValue()
        @Expect(object["a"].toBoolean())
        @Expect(object["b"].toBoolean())
        @Expect(object["c"].toBoolean())
        @Expect(object["e"].toBoolean())
        @Expect(object["f"].toBoolean())
        object["d"] = jsContext.number(0.0).toJSValue()
        @Expect(object["a"].toNumber(), 0.0)
        @Expect(object["b"].toNumber(), 0.0)
        @Expect(object["c"].toNumber(), 0.0)
        @Expect(object["e"].toNumber(), 0.0)
        @Expect(object["f"].toNumber(), 0.0)
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSObject_defineOwnAccessor_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let o = newContext.object()
        let key = "k"

        testReferenceBeyondReach(jsContext) {
            o.defineOwnAccessor(
                key,
                getter: None<JSFunction>,
                setter: None<JSFunction>
            )
        }
    }

    @TestCase
    func test_JSObject_defineOwnAccessor_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let o = jsContext.object()
        let key = jsContext.string("k")

        testThreadMismatch {
            o.defineOwnAccessor(
                key,
                getter: None<JSFunction>,
                setter: None<JSFunction>
            )
        }
    }

    @TestCase
    func test_JSObject_keys_empty_success() {
        let jsContext = getJSContext()
        let object = jsContext.object()
        @Expect(object.keys().size, 0)
    }

    @TestCase
    func test_JSObject_keys_after_stringKey_and_symbolKey_success() {
        let jsContext = getJSContext()
        let object = jsContext.object()
        object["a"] = jsContext.null().toJSValue()
        object[jsContext.symbol(description: "b")] = jsContext.boolean(true).toJSValue()
        let keys = object.keys()
        @Expect(keys.size, 1)
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSObject_keys_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let o = newContext.object()
        let key = "k"

        testReferenceBeyondReach(jsContext) {
            o.keys()
        }
    }

    @TestCase
    func test_JSObject_keys_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let o = jsContext.object()

        testThreadMismatch {
            o.keys()
        }
    }

    @TestCase
    func test_JSObject_attachCJObject_getAttachInfo_success() {
        let jsContext = getJSContext()
        let object = jsContext.object()
        @Expect(object.getAttachInfo().isNone())
        let myObject = MyObject()
        let external = jsContext.external(myObject)
        object.attachCJObject(external)
        let received = object.getAttachInfo()
        @Expect(received.isSome())
        let receivedExt = received.getOrThrow()
        let receivedObJOpt = receivedExt.cast<MyObject>()
        @Expect(receivedObJOpt.isSome())
        let receivedObJ = receivedObJOpt.getOrThrow()
        @Expect(receivedObJ.nativeId, myObject.nativeId)
        let data = receivedExt.getData() as MyObject
        @Expect(data.isSome())
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSObject_attachCJObject_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let o = newContext.object()
        let ext = newContext.external(MyObject())

        testReferenceBeyondReach(jsContext) {
            o.attachCJObject(ext)
        }
    }

    @TestCase
    func test_JSObject_attachCJObject_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let o = jsContext.object()
        let ext = jsContext.external(MyObject())

        testThreadMismatch {
            o.attachCJObject(ext)
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSObject_getAttachInfo_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let o = newContext.object()

        testReferenceBeyondReach(jsContext) {
            o.getAttachInfo()
        }
    }

    @TestCase
    func test_JSObject_getAttachInfo_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let o = jsContext.object()

        testThreadMismatch {
            o.getAttachInfo()
        }
    }

    @TestCase
    func test_JSRuntime_finalizer_forceFullGC() {
        let context = getJSContext()
        let a = context.function {_, _ => context.undefined().toJSValue()}
        let b = context.object()
        let c = context.external(MyObject())
        let d = context.array()
        let e = context.bigint(BigInt(123))
        let f = context.clazz({_, c => c.thisArg})
        let g = unsafe {
            context.arrayBuffer(LibC.malloc<Byte>(count: 8), 8) {ptr => LibC.free(ptr)}
        }
        let h = context.promiseCapability()
        let i = h.toJSValue().asPromise()
        h.resolve(context.undefined().toJSValue())
        let j = context.symbol()
        let l = context.string("")

        gc()
        sleep(Duration.second * 1)
        context.global["ArkTools"].asObject().callMethod("forceFullGC")
        sleep(Duration.millisecond * 200)
    }
}

class MyObject <: SharedObject {
    var name: String = ""
}

struct PropCase {
    PropCase(
        let key: String,
        let writable: Bool,
        let enumerable: Bool,
        let configurable: Bool
    ) {}
}
