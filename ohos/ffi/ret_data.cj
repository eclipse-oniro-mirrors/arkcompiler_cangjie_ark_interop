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

protected type RetCode = Int32

@C
protected struct RetDataCString {
    private RetDataCString(
        protected let code: Int32,
        protected let data: CString
    ) {}

    protected unsafe func free(): Unit {
        LibC.free(data)
    }
}

@C
protected struct RetDataI32 {
    private RetDataI32(
        protected let code: Int32,
        protected let data: Int32
    ) {}
}

@C
protected struct RetDataUI32 {
    private RetDataUI32(
        protected let code: UInt32,
        protected let data: UInt32
    ) {}
}

@C
protected struct RetDataUI {
    private RetDataUI(
        protected let code: Int32,
        protected let data: UIntNative
    ) {}
}

@C
protected struct RetDataI64 {
    protected RetDataI64(
        protected let code: Int32,
        protected let data: Int64
    ) {}
}

@C
protected struct RetDataI64U32 {
    private RetDataI64U32(
        protected let code: UInt32,
        protected let data: Int64
    ) {}
}

@C
protected struct RetDataBool {
    private RetDataBool(
        protected let code: Int32,
        protected let data: Bool
    ) {}
}

@C
protected struct CArrUI32 {
    protected CArrUI32(
        protected let head: CPointer<UInt32>,
        protected let size: Int64
    ) {}
}

@C
protected struct CArrI64 {
    protected CArrI64(
        protected let head: CPointer<Int64>,
        protected let size: Int64
    ) {}
}

@C
protected struct CArrI32 {
    protected CArrI32(
        protected let head: CPointer<Int32>,
        protected let size: Int64
    ) {}
}

@C
protected struct CArrBool {
    protected CArrBool(
        protected let head: CPointer<Bool>,
        protected let size: Int64
    ) {}
}

@C
protected struct CArrDouble {
    protected CArrDouble(
        protected let head: CPointer<Float64>,
        protected let size: Int64
    ) {}
}

@C
protected struct CArrFloat {
    protected CArrFloat(
        protected let head: CPointer<Float32>,
        protected let size: Int64
    ) {}
}

@C
protected struct RetDataCArrI64 {
    private RetDataCArrI64(
        protected let code: Int32,
        protected let data: CArrI64
    ) {}
}

@C
protected struct RetDataCArrI32 {
    private RetDataCArrI32(
        protected let code: Int32,
        protected let data: CArrI32
    ) {}
}

@C
protected struct CArrUnit {
    protected CArrUnit(
        protected let head: CPointer<Unit>,
        protected let size: Int64
    ) {}
}

@C
protected struct RetDataCArrUnit {
    private RetDataCArrUnit(
        protected let code: Int32,
        protected let data: CArrUnit
    ) {}
}

@C
protected struct CArrString {
    protected CArrString(
        protected let head: CPointer<CString>,
        protected let size: Int64
    ) {}

    init() {
        head = CPointer()
        size = 0
    }

    protected func toStringArray(): Array<String> {
        Array<String>(size) {i => unsafe { head.read(i) }.toString()}
    }

    protected func free(): Unit {
        unsafe {
            for (i in 0..size) {
                LibC.free(head.read(i))
            }
            LibC.free<CString>(head)
        }
    }

    protected func asResource(): CTypeResource<CArrString> {
        return CTypeResource(this, free)
    }
}

@C
protected struct RetDataCArrString {
    private RetDataCArrString(
        protected let code: Int32,
        protected let data: CArrString
    ) {}

    protected func getDataAndFree(): Array<String> {
        let ptr = data.head
        if (ptr.isNull()) {
            return Array<String>()
        }
        let size = data.size
        var ret = Array<String>()
        try {
            ret = Array<String>(
                size,
                {
                    i =>
                    let cString = unsafe { ptr.read(i) }
                    let dataStr = cString.toString()
                    dataStr
                }
            )
        } finally {
            unsafe {
                for (i in 0..size) {
                    LibC.free(ptr.read(i))
                }
                LibC.free<CString>(ptr)
            }
        }
        return ret
    }
}

@C
protected struct CArrUI8 {
    protected CArrUI8(
        protected let head: CPointer<UInt8>,
        protected let size: Int64
    ) {}

    protected func free(): Unit {
        unsafe { LibC.free<UInt8>(head) }
    }
}

@C
protected struct RetDataCArrUI8 {
    private RetDataCArrUI8(
        protected let code: Int32,
        protected let data: CArrUI8
    ) {}
}

protected unsafe func toArrayCString(arr: Array<String>): CArrString {
    if (arr.size == 0) {
        return CArrString(CPointer<CString>(), 0)
    }
    let cArrCStringPtr = LibC.malloc<CString>(count: arr.size)
    if (cArrCStringPtr.isNull()) {
        throw IllegalMemoryException("Failed to allocate memory")
    }
    for (i in 0..arr.size) {
        let cString: CString
        try {
            cString = LibC.mallocCString(arr[i])
        } catch (e: IllegalMemoryException) {
            freeArrCString(CArrString(cArrCStringPtr, i))
            throw e
        }
        cArrCStringPtr.write(i, cString)
    }
    return CArrString(cArrCStringPtr, arr.size)
}

protected unsafe func freeArrCString(cArrString: CArrString): Unit {
    let ptr = cArrString.head
    let size = cArrString.size
    for (i in 0..size) {
        let cString = ptr.read(i)
        LibC.free(cString)
    }
    LibC.free<CString>(ptr)
}

protected unsafe func toCPointer<T, CT>(
    data: T,
    convert: (T) -> CT
): CPointer<CT> where CT <: CType {
    let head: CPointer<CT> = safeMalloc<CT>()
    try {
        head.write(convert(data)) // "convert" may throw exception
    } catch (e: Exception) {
        LibC.free<CT>(head)
        throw e
    }

    return head
}
