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

@FastNative
foreign func ARKTS_CreateExternal(env: JSEnv, data: Int64): JSValue_

@FastNative
foreign func ARKTS_GetExternalData(env: JSEnv, value: JSValue_): Int64

@C
func cjExternalDestructor(id: Int64, env: JSEnv): Unit {
    let context = JSContext.getContext(env) ?? return ()
    if (let Some(data) <- context.sharedObjects_.get(id)) {
        data.shareCnt_--
        if (data.shareCnt_ == 0) {
            context.sharedObjects_.remove(id)
        }
    }
}

/**
 * Base class of objects shared with arkts. It has an unique id. When shared to arkts, the object would be kept to
 *  a global table. The id used to index the object.
 */
@!APILevel[
    since: "22"
]
public open class SharedObject {
    var nativeId_: Int64 = -1
    var shareCnt_: Int64 = 0

    /**
     * Init SharedObject.
     */
    @!APILevel[
        since: "22"
    ]
    public init() {}

    /**
     * Id of the SharedObject in global table.
     */
    @!APILevel[
        since: "22"
    ]
    public prop nativeId: Int64 {
        get() {
            nativeId_
        }
    }
}

/**
 * The js presentation of a cj object. It holds the id of cj object, and affects the lifecycle of the cj object.
 */
@!APILevel[
    since: "22"
]
public class JSExternal <: JSHeapObject {
    static func createExternal(context: JSContext, data: SharedObject): JSValue_ {
        let id = if (data.nativeId_ < 0) {
            let id = context.sharedObjects_.append(data)
            data.nativeId_ = id
            id
        } else {
            data.nativeId_
        }
        data.shareCnt_++
        let result = unsafe { ARKTS_CreateExternal(context.env, id) }
        context.checkJSException() // in case of ArkTS OOM
        return result
    }

    private var id_: ?Int64

    init(context: JSContext, value: JSValue_) {
        super(context, value, JSType.EXTERNAL)
        id_ = None
    }

    init(context: JSContext, data: SharedObject) {
        super(context, createExternal(context, data), JSType.EXTERNAL)
        id_ = data.nativeId_
    }

    private init(context: JSContext, value: JSValue, id: Int64) {
        super(context, value.value, JSType.EXTERNAL)
        id_ = id
    }

    ~init() {
        unsafe { ARKTS_DisposeGlobal(context.env_, globalValue_) }
    }

    /**
     * Get sharedObject by id.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { SharedObject } The bound Cangjie object.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getData(): SharedObject {
        let id = this.id
        context.sharedObjects_.get(id).getOrThrow {
            nativeIdInvalid(id)
        }
    }

    /**
     * Cast sharedObject to Option<T>.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Option<T> } The bound Cangjie object.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func cast<T>(): Option<T> where T <: SharedObject {
        getData() as T
    }

    prop id: Int64 {
        get() {
            let env = context.env
            match (id_) {
                case Some(v) => v
                case None =>
                    let v = unsafe { ARKTS_GetExternalData(env, innerValue) }
                    id_ = v
                    v
            }
        }
    }
}
