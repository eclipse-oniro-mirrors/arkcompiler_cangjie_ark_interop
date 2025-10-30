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

 // The Cangjie API is in Beta. For Details on its capabilities and limitations, please refer to the README file.

package ohos.ark_interop

import std.collection.HashMap

class JSMap <: JSObjectBase {
    static func fromHashMap<K, V>(context: JSContext, src: HashMap<K, V>): JSMap
        where K <: JSKeyable & Hashable & Equatable<K> & JSInteropType<K>, V <: JSInteropType<V> {
        let result = context.constants.mapFuncs.clazz.new().asMap()
        for ((k, v) in src) {
            result.set(k, v.toJSValue(context))
        }
        return result
    }

    init(context: JSContext, value: JSValue_) {
        super(context, value)
    }

    ~init() {
        unsafe { ARKTS_DisposeGlobal(context.env_, globalValue_) }
    }

    prop size: Int64 {
        get() {
            Int64(this["size"].toNumber())
        }
    }

    func has(key: JSKeyable): Bool {
        let result = context.constants.mapFuncs.has.call(key.toJSValue(context), thisArg: toJSValue())
        return result.toBoolean()
    }

    func get(key: JSKeyable): JSValue {
        context.constants.mapFuncs.get.call(key.toJSValue(context), thisArg: toJSValue())
    }

    func set(key: JSKeyable, value: JSValue): Unit {
        context.constants.mapFuncs.set.call([key.toJSValue(context), value], thisArg: toJSValue())
    }

    func remove(key: JSKeyable): Bool {
        context.constants.mapFuncs.delete.call(key.toJSValue(context), thisArg: toJSValue()).toBoolean()
    }

    func clear(): Unit {
        context.constants.mapFuncs.clear.call(thisArg: toJSValue())
    }

    /**
     * returns js iterator
     */
    func rawkeys(): JSValue {
        context.constants.mapFuncs.keys.call(thisArg: toJSValue())
    }
}