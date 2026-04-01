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

import ohos.ark_interop.*
import std.runtime.*
import std.sync.*
import std.unittest.testmacro.*
import std.unittest.common.*
import std.unittest.*

@Test
class TestJSClass {
    // @TestCase
    func test_JSClass_prototype_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let c = jsContext.clazz({_, ci => ci.thisArg})
        testThreadMismatch {c.prototype}
    }

    @TestCase
    func test_JSClass_new_instanceOf_classA(): Unit {
        let jsContext = getJSContext()
        let classA = jsContext.clazz({
            _, callInfo => callInfo.thisArg
        })
        let valueA = classA.new()
        @Expect(valueA.isObject(), true)
        let objA = valueA.asObject()
        @Expect(objA.instanceOf(classA), true)
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSClass_new_throwException34300003_referenceBeyondReach(): Unit {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let clazz = newContext.clazz({_, callInfo => callInfo.thisArg})
        testReferenceBeyondReach(jsContext) {
            clazz.new()
        }
    }

    @TestCase
    func test_JSClass_new_throwException34300004_threadMismatch(): Unit {
        let jsContext = getJSContext()
        let clazz = jsContext.clazz({_, callInfo => callInfo.thisArg})
        testThreadMismatch {
            clazz.new()
        }
    }

    @TestCase
    func test_JSClass_addProperty_new_getProperty_success(): Unit {
        let jsContext = getJSContext()
        let clazz = jsContext.clazz({_, callInfo => callInfo.thisArg})
        clazz.addProperty("x", jsContext.number(7.0).toJSValue())
        let value = clazz.new()
        @Expect(value.isObject())
        let obj = value.asObject()
        @Expect(obj.getProperty("x").toNumber(), 7.0)
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSClass_addProperty_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let c = newContext.clazz({_, ci => ci.thisArg})

        testReferenceBeyondReach(jsContext) {
            c.addProperty("p", newContext.number(1.0).toJSValue())
        }
    }

    @TestCase
    func test_JSClass_addProperty_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let c = jsContext.clazz({_, ci => ci.thisArg})

        testThreadMismatch {
            c.addProperty("p", jsContext.number(1.0).toJSValue())
        }
    }

    @TestCase
    func test_JSClass_addAccessor_and_addMethod_success(): Unit {
        let jsContext = getJSContext()
        let clazz = jsContext.clazz({_, callInfo => callInfo.thisArg})
        clazz.addAccessor(
            "name",
            getter: jsContext.function {
                context, callInfo => callInfo.thisArg.getProperty("rawName")
            },
            setter: jsContext.function {
                context, callInfo =>
                    callInfo.thisArg.setProperty("rawName", callInfo[0])
                    context.undefined().toJSValue()
            }
        )
        clazz.addMethod("ping", jsContext.function {
            context, _ => context.string("pong").toJSValue()
        })
        let obj = clazz.new().asObject()
        obj["name"] = jsContext.string("abc").toJSValue()
        @Expect(obj["name"].toString(), "abc")
        @Expect(obj.callMethod("ping").toString(), "pong")
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSClass_addAccessor_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let c = newContext.clazz({_, ci => ci.thisArg})

        testReferenceBeyondReach(jsContext) {
            c.addAccessor(
                "p",
                getter: None<JSFunction>,
                setter: None<JSFunction>
            )
        }
    }

    @TestCase
    func test_JSClass_addAccessor_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let c = jsContext.clazz({_, ci => ci.thisArg})

        testThreadMismatch {
            c.addAccessor(
                "p",
                getter: None<JSFunction>,
                setter: None<JSFunction>
            )
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSClass_addMethod_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let c = newContext.clazz({_, ci => ci.thisArg})

        testReferenceBeyondReach(jsContext) {
            let f = newContext.function {_, __ => newContext.undefined().toJSValue()}
            c.addMethod("m", f)
        }
    }

    @TestCase
    func test_JSClass_addMethod_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let c = jsContext.clazz({_, ci => ci.thisArg})
        let f = jsContext.function {_, __ => jsContext.undefined().toJSValue()}

        testThreadMismatch {
            c.addMethod("m", f)
        }
    }

    @TestCase
    func test_JSFunction_toJSValue_call_variants(): Unit {
        let jsContext = getJSContext()
        let callNum = Box<Int64>(0)
        let entry = jsContext.function {
            _, callInfo =>
                callNum.value++
                jsContext.undefined().toJSValue()
        }
        let value = entry.toJSValue()
        @Expect(value.isFunction())
        @Expect(value.typeof() == JSType.FUNCTION)
        value.asFunction()
        entry.call()
        entry.call(
            jsContext.undefined().toJSValue(),
            thisArg: jsContext.null().toJSValue()
        )
        entry.call(thisArg: jsContext.null().toJSValue())
        entry.call(
            [
                jsContext.undefined().toJSValue(),
                jsContext.undefined().toJSValue()
            ],
            thisArg: jsContext.null().toJSValue()
        )
        @Expect(callNum.value, 4)
    }

    @TestCase
    func test_JSClass_prototypeMethod_callMethod_doSth_setsFlag(): Unit {
        let jsContext = getJSContext()
        let classA = jsContext.clazz({
            _, callInfo => callInfo.thisArg
        })
        let proto = classA.prototype
        let sthDone = Box<Bool>(false)
        proto["doSth"] = jsContext.function {
            _, callInfo =>
                sthDone.value = true
                jsContext.undefined().toJSValue()
        }.toJSValue()
        let valueA = classA.new()
        let objA = valueA.asObject()
        objA.callMethod("doSth")
        @Expect(sthDone.value, true)
    }

    @TestCase
    func test_JSClass_inherit_instanceOf_classB_and_classA(): Unit {
        let jsContext = getJSContext()
        let classA = jsContext.clazz(
            {
                _, callInfo =>
                    let thisObj = callInfo.thisArg.asObject()
                    thisObj["name"] = callInfo[0]
                    callInfo.thisArg
            }
        )
        let classB = jsContext.clazz(
            {
                _, callInfo =>
                    let thisObj = callInfo.thisArg.asObject()
                    thisObj["name"] = callInfo[0]
                    thisObj["id"] = callInfo[1]
                    callInfo.thisArg
            },
            superClass: classA
        )
        let valueB = classB.new(
            jsContext.string("b").toJSValue(),
            jsContext.number(1.0).toJSValue()
        )
        let objB = valueB.asObject()
        @Expect(objB.instanceOf(classB), true)
        @Expect(objB.instanceOf(classA), true)
    }

    @TestCase
    func test_JSClass_inherit_getName_returnsNameProperty(): Unit {
        let jsContext = getJSContext()
        let classA = jsContext.clazz(
            {
                _, callInfo =>
                    let thisObj = callInfo.thisArg.asObject()
                    thisObj["name"] = callInfo[0]
                    callInfo.thisArg
            }
        )
        classA.addMethod("getName") {
            _, callInfo => callInfo.thisArg.getProperty("name")
        }
        let valueA = classA.new(jsContext.string("a").toJSValue())
        let objA = valueA.asObject()
        let nameA = objA.callMethod("getName")
        @Expect(nameA.isString(), true)
        @Expect(nameA.toString(), "a")
    }

    @TestCase
    func test_JSClass_inherit_setName_updatesNameProperty(): Unit {
        let jsContext = getJSContext()
        let classA = jsContext.clazz(
            {
                _, callInfo =>
                    let thisObj = callInfo.thisArg.asObject()
                    thisObj["name"] = callInfo[0]
                    callInfo.thisArg
            }
        )
        classA.addMethod(
            "setName",
            {
                _, callInfo =>
                    callInfo.thisArg.setProperty("name", callInfo[0])
                    jsContext.undefined().toJSValue()
            }
        )
        let valueA = classA.new(jsContext.string("a").toJSValue())
        let objA = valueA.asObject()
        objA.callMethod("setName", jsContext.string("A").toJSValue())
        let nameA1 = objA["name"]
        @Expect(nameA1.isString(), true)
        @Expect(nameA1.toString(), "A")
    }

    @TestCase
    func test_JSClass_inherit_callMethod_name_throws(): Unit {
        let jsContext = getJSContext()
        let classA = jsContext.clazz(
            {
                _, callInfo =>
                    let thisObj = callInfo.thisArg.asObject()
                    thisObj["name"] = callInfo[0]
                    callInfo.thisArg
            }
        )
        let valueA = classA.new(jsContext.string("a").toJSValue())
        let objA = valueA.asObject()
        var isMismatch: Bool = false
        try {
            objA.callMethod("name")
        } catch (_: BusinessException) {
            isMismatch = true
        }
        @Expect(isMismatch, true)
    }

    @TestCase
    func test_JSClass_inherit_accessor_myid_getterSetter_aliases_id(): Unit {
        let jsContext = getJSContext()
        let classA = jsContext.clazz(
            {
                _, callInfo =>
                    let thisObj = callInfo.thisArg.asObject()
                    thisObj["name"] = callInfo[0]
                    callInfo.thisArg
            }
        )
        let classB = jsContext.clazz(
            {
                _, callInfo =>
                    let thisObj = callInfo.thisArg.asObject()
                    thisObj["name"] = callInfo[0]
                    thisObj["id"] = callInfo[1]
                    callInfo.thisArg
            },
            superClass: classA
        )
        classB.addAccessor(
            "myid",
            getter: jsContext.function {
                _, callInfo => callInfo.thisArg.getProperty("id")
            },
            setter: jsContext.function {
                _, callInfo =>
                    callInfo.thisArg.setProperty("id", callInfo[0])
                    jsContext.undefined().toJSValue()
            }
        )

        let valueB = classB.new(jsContext.string("b").toJSValue(), jsContext.number(1.0).toJSValue())
        let objB = valueB.asObject()
        let id1 = objB["id"]
        let id2 = objB["myid"]
        @Expect(id1.isNumber(), true)
        @Expect(id2.isNumber(), true)
        @Expect(id1.toNumber(), 1.0)
        @Expect(id2.toNumber(), 1.0)

        objB["myid"] = jsContext.number(3.0).toJSValue()
        @Expect(objB["id"].toNumber(), 3.0)
        @Expect(objB["myid"].toNumber(), 3.0)
    }

    @TestCase
    func test_JSClass_inherit_accessor_myid1_getterSetter_updates_id(): Unit {
        let jsContext = getJSContext()
        let classA = jsContext.clazz(
            {
                _, callInfo =>
                    let thisObj = callInfo.thisArg.asObject()
                    thisObj["name"] = callInfo[0]
                    callInfo.thisArg
            }
        )
        let classB = jsContext.clazz(
            {
                _, callInfo =>
                    let thisObj = callInfo.thisArg.asObject()
                    thisObj["name"] = callInfo[0]
                    thisObj["id"] = callInfo[1]
                    callInfo.thisArg
            },
            superClass: classA
        )
        classB.addAccessor(
            "myid1",
            getter: jsContext.function {
                _, callInfo => callInfo.thisArg.getProperty("id")
            },
            setter: jsContext.function {
                _, callInfo =>
                    callInfo.thisArg.setProperty("id", callInfo[0])
                    jsContext.undefined().toJSValue()
            }
        )

        let valueB = classB.new(jsContext.string("b").toJSValue(), jsContext.number(1.0).toJSValue())
        let objB = valueB.asObject()
        @Expect(objB["myid1"].toNumber(), 1.0)

        objB["myid1"] = jsContext.number(3.0).toJSValue()
        @Expect(objB["id"].toNumber(), 3.0)
        @Expect(objB["myid1"].toNumber(), 3.0)
    }

    @TestCase
    func test_JSClass_constructor_throwException34300002(): Unit {
        let jsContext = getJSContext()
        let jsClass = jsContext.clazz(
            {
                _: JSContext, callInfo: JSCallInfo =>
                    throw Exception("exception inside constructor.")
                    callInfo.thisArg
            }
        )
        try {
            let _ = jsClass.new()
            @Assert(false)
        } catch (e: BusinessException) {
            @Expect(e.toString().contains("exception inside constructor."))
        }
    }

    @TestCase
    func test_JSClass_new_arg_throwException34300002(): Unit {
        let jsContext = getJSContext()
        let jsClass = jsContext.clazz(
            {
                _: JSContext, callInfo: JSCallInfo =>
                    throw Exception("exception inside constructor.")
                    callInfo.thisArg
            }
        )
        try {
            let _ = jsClass.new(jsContext.number(1.0).toJSValue())
            @Assert(false)
        } catch (e: BusinessException) {
            @Expect(e.toString().contains("exception inside constructor."))
        }
    }

    @TestCase
    func test_JSClass_new_args_throwException34300002(): Unit {
        let jsContext = getJSContext()
        let jsClass = jsContext.clazz(
            {
                _: JSContext, callInfo: JSCallInfo =>
                    throw Exception("exception inside constructor.")
                    callInfo.thisArg
            }
        )
        try {
            let _ = jsClass.new([jsContext.number(1.0).toJSValue()])
            @Assert(false)
        } catch (e: BusinessException) {
            @Expect(e.toString().contains("exception inside constructor."))
        }
    }
}
