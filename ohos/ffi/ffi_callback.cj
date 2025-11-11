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

protected package ohos.ffi

protected abstract class BaseCallBack <: FFIData {
    protected func invoke(argc: Int32, argv: CPointer<CPointer<Unit>>, res: CPointer<Unit>): Unit
}

protected class Callback0Param<R> <: BaseCallBack where R <: CType {
    protected Callback0Param(let closure: () -> R) {
        registerSelf()
    }

    protected func invoke(argc: Int32, _: CPointer<CPointer<Unit>>, res: CPointer<Unit>): Unit {
        if (argc != 0) {
            throw InvalidArgsException()
        }
        let resValue = closure()
        if (resValue is Unit) {
            return
        }
        unsafe { CPointer<R>(res).write(resValue) }
    }
}

protected class Callback1Param<T, R> <: BaseCallBack where T <: CType, R <: CType {
    protected Callback1Param(let closure: (T) -> R) {
        registerSelf()
    }

    protected func invoke(argc: Int32, argv: CPointer<CPointer<Unit>>, res: CPointer<Unit>): Unit {
        if (argc != 1) {
            throw InvalidArgsException()
        }
        unsafe {
            let arg0 = CPointer<T>(argv.read()).read()
            let resValue = closure(arg0)
            if (resValue is Unit) {
                return
            }
            CPointer<R>(res).write(resValue)
        }
    }
}

protected class Callback2Param<T0, T1, R> <: BaseCallBack where T0 <: CType, T1 <: CType, R <: CType {
    protected Callback2Param(let closure: (T0, T1) -> R) {
        registerSelf()
    }

    protected func invoke(argc: Int32, argv: CPointer<CPointer<Unit>>, res: CPointer<Unit>): Unit {
        if (argc != 2) {
            throw InvalidArgsException()
        }
        unsafe {
            let arg0 = CPointer<T0>(argv.read()).read()
            let arg1 = CPointer<T1>(argv.read(1)).read()
            let resValue = closure(arg0, arg1)
            if (resValue is Unit) {
                return
            }
            CPointer<R>(res).write(resValue)
        }
    }
}

protected class Callback3Param<T0, T1, T2, R> <: BaseCallBack where T0 <: CType, T1 <: CType, T2 <: CType, R <: CType {
    protected Callback3Param(let closure: (T0, T1, T2) -> R) {
        registerSelf()
    }

    protected func invoke(argc: Int32, argv: CPointer<CPointer<Unit>>, res: CPointer<Unit>): Unit {
        if (argc != 3) {
            throw InvalidArgsException()
        }
        unsafe {
            let arg0 = CPointer<T0>(argv.read()).read()
            let arg1 = CPointer<T1>(argv.read(1)).read()
            let arg2 = CPointer<T2>(argv.read(2)).read()
            let resValue = closure(arg0, arg1, arg2)
            if (resValue is Unit) {
                return
            }
            CPointer<R>(res).write(resValue)
        }
    }
}

protected class Callback4Param<T0, T1, T2, T3, R> <: BaseCallBack where T0 <: CType, T1 <: CType, T2 <: CType,
    T3 <: CType, R <: CType {
    protected Callback4Param(let closure: (T0, T1, T2, T3) -> R) {
        registerSelf()
    }

    protected func invoke(argc: Int32, argv: CPointer<CPointer<Unit>>, res: CPointer<Unit>): Unit {
        if (argc != 4) {
            throw InvalidArgsException()
        }
        unsafe {
            let arg0 = CPointer<T0>(argv.read()).read()
            let arg1 = CPointer<T1>(argv.read(1)).read()
            let arg2 = CPointer<T2>(argv.read(2)).read()
            let arg3 = CPointer<T3>(argv.read(3)).read()
            let resValue = closure(arg0, arg1, arg2, arg3)
            if (resValue is Unit) {
                return
            }
            CPointer<R>(res).write(resValue)
        }
    }
}

protected class Callback5Param<T0, T1, T2, T3, T4, R> <: BaseCallBack where T0 <: CType, T1 <: CType, T2 <: CType,
    T3 <: CType, T4 <: CType, R <: CType {
    protected Callback5Param(let closure: (T0, T1, T2, T3, T4) -> R) {
        registerSelf()
    }

    protected func invoke(argc: Int32, argv: CPointer<CPointer<Unit>>, res: CPointer<Unit>): Unit {
        if (argc != 5) {
            throw InvalidArgsException()
        }
        unsafe {
            let arg0 = CPointer<T0>(argv.read()).read()
            let arg1 = CPointer<T1>(argv.read(1)).read()
            let arg2 = CPointer<T2>(argv.read(2)).read()
            let arg3 = CPointer<T3>(argv.read(3)).read()
            let arg4 = CPointer<T4>(argv.read(4)).read()
            let resValue = closure(arg0, arg1, arg2, arg3, arg4)
            if (resValue is Unit) {
                return
            }
            CPointer<R>(res).write(resValue)
        }
    }
}

@C
func ohosFFICJCallbackInvoker(id: Int64, argc: Int32, argv: CPointer<CPointer<Unit>>, res: CPointer<Unit>): Unit {
    let callback = FFIDataManager.getInstance().getData<BaseCallBack>(id)
    getOrThrow(callback, msg: "can not find CJCallback according to lambdaId: ${id}").invoke(argc, argv, res)
}
