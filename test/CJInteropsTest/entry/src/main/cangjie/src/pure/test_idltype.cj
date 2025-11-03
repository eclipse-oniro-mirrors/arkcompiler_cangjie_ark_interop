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
import std.unittest.testmacro.*
import std.unittest.common.*
import std.unittest.*
import std.collection.*

func doJSArrExTest(both: JSArrayEx<String>) {
    let jsContext = getJSContext()
    @Expect(both.size, 2)
    let firstOpt = both.get(0)
    @Expect(firstOpt.isSome())
    @Expect(firstOpt.getOrThrow(), "aaa")
    both.set(0, "bbb")
    @Expect(!both.isEmpty())
    @Expect(both[0], "bbb")
    both[1] = "ccc"
    @Expect(both[1], "ccc")
    let cjArr = both.toArray()
    let outRangeOpt = both.get(3)
    @Expect(withException<Exception> {
        let outRangeInfo = both[2]
    })
}

func doJSHashMapTest(map: JSHashMapEx<String, String>) {
    let jsContext = getJSContext()
    @Expect(await(jsContext){map.isEmpty()})
    @Expect(await(jsContext){map.get("a").isNone()})
    await(jsContext) {map.set("a", "b")}
    let clonedMap = await(jsContext) {map.clone() }
    @Expect(await(jsContext){map.get("a").isSome()})
    @Expect(await(jsContext){map.size}, 1)
    @Expect(await(jsContext){map.has("a")})
    @Expect(await(jsContext){map.containsAll(["a"])})
    @Expect(await(jsContext){clonedMap.get("a").isSome()})
    @Expect(await(jsContext){clonedMap.size}, 1)
    @Expect(await(jsContext){clonedMap.has("a")})
    let curKeys = await(jsContext) {map.keys()}
    let values = await(jsContext) {map.values()}
    @Expect(await(jsContext){values.size}, 1)
    await(jsContext) {map["b"] = "c"}
    let bv = await(jsContext) {map["b"]}
    @Expect(bv, "c")
    await(jsContext) {map.delete("a")}
    @Expect(await(jsContext){map.size}, 1)
    await(jsContext) {map.setIfAbsent("a", "a")}
    await(jsContext) {map.setIfAbsent("a", "b")}
    @Expect(await(jsContext){map["a"]}, "a")
    await(jsContext) {map.setAll([("a", "b")])}
    @Expect(await(jsContext){map["a"]}, "b")
    await(jsContext) {map.deleteAll(["a"])}
    @Expect(await(jsContext){map.size}, 1)
    await(jsContext) {map["a"] = "c"}
    await(jsContext) {
        map.deleteIf {
            k, v => k == "d"
        }
    }
    @Expect(await(jsContext){map.size}, 2)
    await(jsContext) {
        map.deleteIf {
            k, v => v == "c"
        }
    }
    @Expect(await(jsContext){map.isEmpty()})
    let hh = await(jsContext) {map.toHashMap()}
    await(jsContext) {map["d"] = "a"}
    await(jsContext) {map.clear()}
    @Expect(await(jsContext){map.size}, 0)
    @Expect(withException<Exception> {
        let res = await(jsContext){map["a"]}
    })
}

func doJSInteropTypeTest<T>(jsContext: JSContext, value: T): Unit where T <: JSInteropType<T> & Equatable<T> {
    let jsValue = value.toJSValue(jsContext)
    let received = T.fromJSValue(jsContext, jsValue)
    @Expect(value, received)
}

@Test
class TestIDLType {
    @TestCase
    func testJSStringEx() {
        let jsContext = getJSContext()
        await(jsContext) {
            let value = JSStringEx("abc")
            let other = JSStringEx.fromJSValue(jsContext, value.toJSValue(jsContext))
            @Expect(value.toString(), "abc")
            @Expect(!(value != other))
            @Expect(value == other)
            @Expect(JSStringEx.toArktsType(), "string")
        }
    }

    @TestCase
    func testJSArrayEx() {
        let jsContext = getJSContext()
        await(jsContext) {
            let array = JSArrayEx<String>("aaa")
            let copy = array.clone()
            let both = array.concat(copy)
            let jsTy =
                JSArrayEx<String>
                    .fromJSValue(jsContext, both.toJSValue(jsContext))
                    .clone()
            doJSArrExTest(both)
            doJSArrExTest(jsTy)
            @Expect(JSArrayEx<String>.toArktsType(), "Array")
        }
    }

    @TestCase
    func testJSHashMapEx() {
        let jsContext = getJSContext()
        await(jsContext) {
            let hashmap = JSHashMapEx<String, String>()
            let src = HashMap<String, String>()
            let hashmap1 = JSHashMapEx<String, String>(src)
            let hashmap2 =
                JSHashMapEx<String, String>.fromJSValue(jsContext, hashmap.toJSValue(jsContext))
            doJSHashMapTest(hashmap)
            doJSHashMapTest(hashmap1)
            doJSHashMapTest(hashmap2)
            @Expect(JSHashMapEx<String, String>.toArktsType(), "Map")
        }
    }

    @TestCase
    func testJSInteropType() {
        let jsContext = getJSContext()
        await(jsContext) {
            @Expect(Int8.toArktsType(), "number")
            doJSInteropTypeTest<Int8>(jsContext, 0);
            doJSInteropTypeTest<Int8>(jsContext, Int8.Max);
            doJSInteropTypeTest<Int8>(jsContext, Int8.Min);
            @Expect(UInt8.toArktsType(), "number")
            doJSInteropTypeTest<UInt8>(jsContext, 0);
            doJSInteropTypeTest<UInt8>(jsContext, UInt8.Max);
            doJSInteropTypeTest<UInt8>(jsContext, UInt8.Min);
            @Expect(UInt16.toArktsType(), "number")
            doJSInteropTypeTest<UInt16>(jsContext, 0);
            doJSInteropTypeTest<UInt16>(jsContext, UInt16.Max);
            doJSInteropTypeTest<UInt16>(jsContext, UInt16.Min);
            @Expect(Int16.toArktsType(), "number")
            doJSInteropTypeTest<Int16>(jsContext, 0);
            doJSInteropTypeTest<Int16>(jsContext, Int16.Max);
            doJSInteropTypeTest<Int16>(jsContext, Int16.Min);
            @Expect(Int32.toArktsType(), "number")
            doJSInteropTypeTest<Int32>(jsContext, 0);
            doJSInteropTypeTest<Int32>(jsContext, Int32.Max);
            doJSInteropTypeTest<Int32>(jsContext, Int32.Min);

            @Expect(Int64.toArktsType(), "number")
            doJSInteropTypeTest<Int64>(jsContext, 0);
            doJSInteropTypeTest<Int64>(jsContext, Int64(Int32.Max));
            doJSInteropTypeTest<Int64>(jsContext, Int64(Int32.Min));
            @Expect(UInt64.toArktsType(), "number")
            doJSInteropTypeTest<UInt64>(jsContext, 0);
            doJSInteropTypeTest<UInt64>(jsContext, UInt64(UInt32.Max));
            doJSInteropTypeTest<UInt64>(jsContext, UInt64(UInt32.Min));
            @Expect(Float16.toArktsType(), "number")
            doJSInteropTypeTest<Float16>(jsContext, 0.0);
            doJSInteropTypeTest<Float16>(jsContext, Float16.Max);
            doJSInteropTypeTest<Float16>(jsContext, Float16.Min);
            @Expect(Float32.toArktsType(), "number")
            doJSInteropTypeTest<Float32>(jsContext, 0.0);
            @Expect(Float64.toArktsType(), "number")
            doJSInteropTypeTest<Float64>(jsContext, 0.0);
            @Expect(Bool.toArktsType(), "boolean")
            doJSInteropTypeTest<Bool>(jsContext, true);
            doJSInteropTypeTest<Bool>(jsContext, false);
            @Expect(String.toArktsType(), "string")
            doJSInteropTypeTest<Bool>(jsContext, true);
            doJSInteropTypeTest<Bool>(jsContext, false);
            @Expect(Unit.toArktsType(), "undefined")
            doJSInteropTypeTest<Unit>(jsContext, ());
            @Expect(Option<String>.toArktsType(), "union")
            doJSInteropTypeTest<?String>(jsContext, None<String>);
            doJSInteropTypeTest<?String>(jsContext, "abc");
            @Expect(Array<Byte>.toArktsType(), "ArrayBuffer")
            doJSInteropTypeTest<Array<Byte>>(jsContext, [1, 3, 4]);
            @Expect(Utf16String.toArktsType(), "string")
            doJSInteropTypeTest<Utf16String>(jsContext, Utf16String("💗"))
            @Expect(JSString.toArktsType(), "string")
            let strValue = jsContext
                .string("abc")
                .toJSValue()
            let jsStr = JSString.fromJSValue(jsContext, strValue)
            @Expect("abc", jsStr.toString())
        }
    }

    @TestCase
    func testJSInteropTypeUInt32() {
        let jsContext = getJSContext()
        await (jsContext) {
            @Expect(UInt32.toArktsType(), "number")
            doJSInteropTypeTest<UInt32>(jsContext, 0);
            doJSInteropTypeTest<UInt32>(jsContext, UInt32.Max);
            doJSInteropTypeTest<UInt32>(jsContext, UInt32.Min);
        }
    }
}
