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

import std.collection.HashMap
import ohos.ark_interop.*
import std.collection.ArrayList

class Lazy<T> {
    var creator_: ?() -> T
    var data_: ?T = None
    init(creator: () -> T) {
        creator_ = creator
    }

    prop value: T {
        get() {
            if (let Some(v) <- data_) {
                v
            } else {
                let v = creator_.getOrThrow()()
                creator_ = None
                data_ = v
                v
            }
        }
    }
}

func createRand(length: Int64, _: UInt32, distance: UInt32) {
    let seq = Box(Array<UInt32>(length, repeat: 0))
    let reset = {
        begin: Int64 => for (i in begin..length) {
            seq.value[i] = 0
        }
    }
    let raise = {
        => for (i in 0..length) {
            let idx = length - i - 1
            let id = seq.value[idx]
            if (id < distance - 1) {
                seq.value[idx]++
                reset(idx + 1)
            } else if (idx == 0) {
                reset(0)
            }
        }
    }
    let next = {
        =>
        let runes = Array<Rune>(length) {
            idx => Rune(seq.value[idx])
        }
        raise()
        String(runes)
    }
    return next
}

class StrIterator <: Iterator<String> {
    StrIterator(let rand: () -> String) {}

    public func next(): ?String {
        rand()
    }
}

struct CharsetOption {
    let randoms = HashMap<Int64, () -> String>()
    CharsetOption(
        let starting: UInt32,
        let ending: UInt32
    ) {}

    func getSamples(length: Int64): StrIterator {
        let rander = if (let Some(r) <- randoms.get(length)) {
            r
        } else {
            let r = createRand(length, starting, ending - starting)
            randoms[length] = r
            r
        }
        return StrIterator(rander)
    }
}

let chara: UInt8 = 'a'
let charz: UInt8 = 'z'
let charsets = [CharsetOption(UInt32(chara), UInt32(charz)), CharsetOption(25105, 36213)]

func createStdLaint1(context: JSContext, callInfo: JSCallInfo): JSValue {
    let length = Int64(callInfo[0].toNumber())
    let data = charsets[0].getSamples(length)
    let next = Box("")

    let doInit = context.function {
        _, _ =>
        next.value = data.next().getOrThrow()
        context.undefined().toJSValue()
    }
    let doRun = context.function {
        _, callInfo => context.string(next.value).toJSValue()
    }
    let doFini = context.function {
        _, _ => context.undefined().toJSValue()
    }

    context.array([doInit.toJSValue(), doRun.toJSValue(), doFini.toJSValue()]).toJSValue()
}

func createStdUtf16(context: JSContext, callInfo: JSCallInfo): JSValue {
    let length = Int64(callInfo[0].toNumber())
    let data = charsets[0].getSamples(length)
    let next = Box("")

    let doInit = context.function {
        _, _ =>
        next.value = data.next().getOrThrow()
        context.undefined().toJSValue()
    }
    let doRun = context.function {
        _, callInfo => context.string(next.value).toJSValue()
    }
    let doFini = context.function {
        _, _ => context.undefined().toJSValue()
    }

    context.array([doInit.toJSValue(), doRun.toJSValue(), doFini.toJSValue()]).toJSValue()
}

func createNewLaint1(context: JSContext, callInfo: JSCallInfo): JSValue {
    let length = Int64(callInfo[0].toNumber())
    let data = charsets[0].getSamples(length)
    let next = Box(Utf16String.EMPTY)

    let doInit = context.function {
        _, _ =>
        next.value.dispose()
        next.value = Utf16String(data.next().getOrThrow())
        context.undefined().toJSValue()
    }
    let doRun = context.function {
        _, callInfo => context.string(next.value).toJSValue()
    }
    let doFini = context.function {
        _, _ => context.undefined().toJSValue()
    }

    context.array([doInit.toJSValue(), doRun.toJSValue(), doFini.toJSValue()]).toJSValue()
}

func createNewUtf16(context: JSContext, callInfo: JSCallInfo): JSValue {
    let length = Int64(callInfo[0].toNumber())
    let data = charsets[1].getSamples(length)
    let next = Box(Utf16String.EMPTY)

    let doInit = context.function {
        _, _ =>
        next.value.dispose()
        next.value = Utf16String(data.next().getOrThrow())
        context.undefined().toJSValue()
    }
    let doRun = context.function {
        _, callInfo => context.string(next.value).toJSValue()
    }
    let doFini = context.function {
        _, _ => context.undefined().toJSValue()
    }

    context.array([doInit.toJSValue(), doRun.toJSValue(), doFini.toJSValue()]).toJSValue()
}

func readStrToJ(context: JSContext, callInfo: JSCallInfo): JSValue {
    let value = callInfo[0].toUtf16String()
    context.undefined().toJSValue()
}

func readStrToC(context: JSContext, callInfo: JSCallInfo): JSValue {
    let value = callInfo[0].toString()
    context.undefined().toJSValue()
}
