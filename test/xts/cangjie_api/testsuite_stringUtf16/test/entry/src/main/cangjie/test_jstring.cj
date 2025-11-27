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
import ohos.ark_interop.*
import ohos.ark_interop.{JSValue, JSRuntime, JSContext, JSCallInfo, JSModule}

struct CompareCase {
    CompareCase(
        let a: String,
        let b: String
    ) {}
}

func compare(jsContext: JSContext, _: JSCallInfo): JSValue {
    let cases = [
        CompareCase("123456", "1234567"),
        CompareCase("xxdfasdfa", "132456"),
        CompareCase("惺惺惜惺惺", "惺惺惜下惺"),
        CompareCase("谢谢谢谢", "xxxxx"),
        CompareCase("xxxxx", "谢谢谢谢")
    ]
    for (c in cases) {
        let sa = Utf16String(c.a)
        let sb = Utf16String(c.b)
        let ra = sa.compare(sb)
        let rb = c.a.compare(c.b)
        Assert.equals(ra, rb)
    }
    jsContext.undefined().toJSValue()
}

struct SubStrCase {
    SubStrCase(
        let src: String,
        let range: Range<Int64>,
        let dst: String
    ) {}
}

func substr(jsContext: JSContext, _: JSCallInfo): JSValue {
    let cases = [
        SubStrCase("0123456789", 0..5, "01234"),
        SubStrCase("123456", 0..6, "123456"),
        SubStrCase("你好世界，🧭123", 2..8, "世界，🧭1")
    ]
    for (c in cases) {
        let src = Utf16String(c.src)
        let dst = src[c.range]
        Assert.equals(dst.toString(), c.dst)
    }
    jsContext.undefined().toJSValue()
}

struct SubstrAdvCase {
    SubstrAdvCase(
        let src: String,
        let range: Range<Int64>,
        let dst: String,
        let isLatin1: Bool
    ) {}
}

func substrAdvanced(jsContext: JSContext, _: JSCallInfo): JSValue {
    let cases = [SubstrAdvCase("你好世界，🧭123", 2..8, "世界，🧭1", false), SubstrAdvCase("你好世界，🧭123", 6..7, "1",
        true)]
    for (c in cases) {
        let src = Utf16String(c.src)
        let dst = src[c.range]
        //        Assert.equals(dst.isCompressed(), c.isLatin1)
        //        Assert.equals(dst.toString(), c.dst)
    }
    jsContext.undefined().toJSValue()
}

struct SplitCase {
    SplitCase(
        let src: String,
        let seperator: String,
        let count: Int64,
        let dst: Array<String>
    ) {}
}

func split(jsContext: JSContext, _: JSCallInfo): JSValue {
    let cases = [
        SplitCase("🤴⛩😁😘🚲", "", 0, ["🤴", "⛩", "😁", "😘", "🚲"]),
        SplitCase("🤴⛩😁😘🚲", "", 2, ["🤴", "⛩😁😘🚲"]),
        SplitCase("1234", "", 0, ["1", "2", "3", "4"]),
        SplitCase("1234", "", 3, ["1", "2", "34"]),
        SplitCase("0,h]你😎", "", 0, ["0", ",", "h", "]", "你", "😎"]),
        SplitCase("0,h]你😎", "", 3, ["0", ",", "h]你😎"]),
        SplitCase("123456789", "1", 0, ["", "23456789"]),
        SplitCase("123456789", "9", 0, ["12345678", ""]),
        SplitCase("1 2 3 4 568", " ", 0, ["1", "2", "3", "4", "568"])
    ]

    for (c in cases) {
        let src = Utf16String(c.src)
        let spt = Utf16String(c.seperator)
        let result = src.split(spt, c.count)
        Assert.equals(result.size, c.dst.size)
        for (i in 0..result.size) {
            Assert.equals(result[i].toString(), c.dst[i])
        }
    }
    jsContext.undefined().toJSValue()
}

struct SplitElement {
    SplitElement(
        let value: String,
        let isLatin1: Bool
    ) {}
}

struct SplitAdvCase {
    SplitAdvCase(
        let src: String,
        let seperator: String,
        let count: Int64,
        let dst: Array<SplitElement>
    ) {}
}

func splitAdv(jsContext: JSContext, _: JSCallInfo): JSValue {
    let cases = [
        SplitAdvCase(
            "0,h]你😎",
            "",
            0,
            [
                SplitElement("0", true),
                SplitElement(",", true),
                SplitElement("h", true),
                SplitElement("]", true),
                SplitElement("你", false),
                SplitElement("😎", false)
            ]
        )
    ]
    for (c in cases) {
        let src = Utf16String(c.src)
        let spt = Utf16String(c.seperator)
        let result = src.split(spt, c.count)
        Assert.equals(result.size, c.dst.size)
        for (i in 0..result.size) {
            Assert.equals(result[i].isCompressed(), c.dst[i].isLatin1)
            Assert.equals(result[i].toString(), c.dst[i].value)
        }
    }
    jsContext.undefined().toJSValue()
}

struct IndexOfCase {
    IndexOfCase(
        let src: String,
        let offset: Int64,
        let target: String,
        let result: ?Int64
    ) {}
}

func indexOf(jsContext: JSContext, _: JSCallInfo): JSValue {
    let cases = [
        IndexOfCase("真实的自我132", 6, "我", None),
        IndexOfCase("真实的自我132", 0, "我", 4),
        IndexOfCase("0123456", 0, "132", None)
    ]
    for (c in cases) {
        let src = Utf16String(c.src)
        let target = Utf16String(c.target)
        let result = src.indexOf(target, c.offset)
        Assert.equals(result, c.result)
    }
    jsContext.undefined().toJSValue()
}

func lastIndexOf(jsContext: JSContext, _: JSCallInfo): JSValue {
    let cases = [
        IndexOfCase("🚜好🚜3456", 7, "345", 5),
        IndexOfCase("🚜好🚜3456", -1, "345", None),
        IndexOfCase("🚜好🚜3456", -3, "345", None),
        IndexOfCase("0123456", 7, "123", 1),
        IndexOfCase("0123456", 7, "56", 5),
        IndexOfCase("abc", 0, "d", None),
        IndexOfCase("abc", 2, "bc", 1),
        IndexOfCase("abc", -100, "a", 0),
        IndexOfCase("abc", 100, "c", 2),
        IndexOfCase("a", 0, "", 0)
    ]

    for (c in cases) {
        let src = Utf16String(c.src)
        let target = Utf16String(c.target)
        let result = src.lastIndexOf(target, c.offset)
        Assert.equals(result, c.result)
    }
    return jsContext.undefined().toJSValue()
}

struct CountOfCase {
    CountOfCase(
        let src: String,
        let target: String,
        let result: Int64
    ) {}
}

func countOf(jsContext: JSContext, _: JSCallInfo): JSValue {
    let cases = [CountOfCase("0123456", "123", 1), CountOfCase("012345781456789148578", "7", 3)]
    for (c in cases) {
        let src = Utf16String(c.src)
        let target = Utf16String(c.target)
        let result = src.count(target)
        Assert.equals(result, c.result)
    }
    jsContext.undefined().toJSValue()
}

struct ReplaceCase {
    ReplaceCase(
        let src: String,
        let from: String,
        let to: String,
        let count: Int64,
        let result: String
    ) {}
}

func replace(jsContext: JSContext, _: JSCallInfo): JSValue {
    let cases = [
        ReplaceCase("abcdefg", "cde", "123", 0, "ab123fg"),
        ReplaceCase("abc 解决 abc", "abc", "qwerty", 0, "qwerty 解决 qwerty"),
        ReplaceCase("abc 解决 abc", "abc", "qwerty", 1, "qwerty 解决 abc")
    ]
    for (c in cases) {
        let src = Utf16String(c.src)
        let from = Utf16String(c.from)
        let to = Utf16String(c.to)
        let result = src.replace(from, to, count: c.count)
        Assert.equals(result.toString(), c.result)
    }
    jsContext.undefined().toJSValue()
}

func toString() {
    let cases = [
        "a plain test",
        "[]{}-=_+;':\"./>?`~!@$%^&*()<,\\",
        "中文字符",
        "🚗🦼🚇🛬🚥🧭⛩"
    ]
    for (c in cases) {
        let src = Utf16String(c)
        let dst = src.toString()
        Assert.equals(dst, c)
    }
}

struct ContainCase {
    ContainCase(
        let src: String,
        let target: String,
        let result: Bool
    ) {}
}

func contains(jsContext: JSContext, _: JSCallInfo): JSValue {
    let cases = [
        ContainCase("123456789", "0254", false),
        ContainCase("123145456", "1454", true),
        ContainCase("你12看5678", "56", true),
        ContainCase("你12看看线性5678", "看线", true)
    ]
    for (c in cases) {
        let src = Utf16String(c.src)
        let dst = Utf16String(c.target)
        let contains = src.contains(dst)
        Assert.equals(contains, c.result)
    }
    jsContext.undefined().toJSValue()
}

struct StartsWithCase {
    StartsWithCase(
        let src: String,
        let target: String,
        let result: Bool
    ) {}
}

func startsWith(jsContext: JSContext, _: JSCallInfo): JSValue {
    let cases = [StartsWithCase("abcd123", "abc", true), StartsWithCase("abcd您那你", "abc", true)]
    for (c in cases) {
        let src = Utf16String(c.src)
        let dst = Utf16String(c.target)
        let result = src.startsWith(dst)
        Assert.equals(result, c.result)
    }
    jsContext.undefined().toJSValue()
}

func endsWith(jsContext: JSContext, _: JSCallInfo): JSValue {
    let cases = [
        StartsWithCase("abcd123", "abc", false),
        StartsWithCase("abcd123", "123", true),
        StartsWithCase("在这种这地方12354x", "54x", true),
        StartsWithCase("吱吱吱吱中", "5454", false)
    ]
    for (c in cases) {
        let src = Utf16String(c.src)
        let target = Utf16String(c.target)
        let result = src.endsWith(target)
        Assert.equals(result, c.result)
    }
    jsContext.undefined().toJSValue()
}

let _ = JSModule.registerModule {
    jsContext, jsObject =>
    jsObject["compare"] = jsContext.function(compare).toJSValue()
    jsObject["substr"] = jsContext.function(substr).toJSValue()
    jsObject["substrAdvanced"] = jsContext.function(substrAdvanced).toJSValue()
    jsObject["split"] = jsContext.function(split).toJSValue()
    jsObject["splitAdv"] = jsContext.function(splitAdv).toJSValue()
    jsObject["indexOf"] = jsContext.function(indexOf).toJSValue()
    jsObject["lastIndexOf"] = jsContext.function(lastIndexOf).toJSValue()
    jsObject["countOf"] = jsContext.function(countOf).toJSValue()
    jsObject["replace"] = jsContext.function(replace).toJSValue()
    jsObject["contains"] = jsContext.function(contains).toJSValue()
    jsObject["startsWith"] = jsContext.function(startsWith).toJSValue()
    jsObject["endsWith"] = jsContext.function(endsWith).toJSValue()
}
