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

package ohos.callback_invoke

import ohos.business_exception.*
import ohos.labels.APILevel

/**
 * Callback type.
 */
public type Callback<T> = (arg: T) -> Unit

/**
 * The callback wrapper base class.
 */
@!APILevel[
    since: "22"
]
public abstract class CallbackObject {}

/**
 * The wrapper of callback without argument and returns.
 */
@!APILevel[
    since: "22"
]
public abstract class Callback0Argument <: CallbackObject {
    /**
     * invoker mainly for C
     */
    @!APILevel[
        since: "22"
    ]
    public open func invoke(err: ?BusinessException): Unit
}

/**
 * The wrapper of callback with one argument and no returns.
 */
@!APILevel[
    since: "22"
]
public abstract class Callback1Argument<A> <: CallbackObject {
    /**
     * invoker mainly for C
     */
    @!APILevel[
        since: "22"
    ]
    public open func invoke(err: ?BusinessException, arg: A): Unit
}

/**
 * The wrapper of callback with 2 arguments and no returns.
 */
@!APILevel[
    since: "22"
]
public abstract class Callback2Argument<A, B> <: CallbackObject {
    /**
     * invoker mainly for C
     */
    @!APILevel[
        since: "22"
    ]
    public open func invoke(err: ?BusinessException, arg1: A, arg2: B): Unit
}

/**
 * The wrapper of callback with 3 arguments.
 */
@!APILevel[
    since: "22"
]
public abstract class Callback3ArgumentWithReturn<A, B, C, D> <: CallbackObject {
    @!APILevel[
        since: "22"
    ]
    public open func invoke(err: ?BusinessException, arg1: A, arg2: B, arg3: C): D
}

/**
 * The wrapper of callback with 2 arguments and returns.
 */
@!APILevel[
    since: "22"
]
public abstract class Callback1ArgumentWithReturn<A, B> <: CallbackObject {
    @!APILevel[
        since: "22"
    ]
    public open func invoke(err: ?BusinessException, arg1: A): B
}

/**
 * The wrapper of callback without argument and returns.
 */
@!APILevel[
    since: "22"
]
public abstract class CallbackWithReturn<A> <: CallbackObject {
    @!APILevel[
        since: "22"
    ]
    public open func invoke(err: ?BusinessException): A
}
