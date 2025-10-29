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

protected let FUNCTION_S2CS: (String) -> CString = {p: String => unsafe { LibC.mallocCString(p) }}
protected let FUNCTION_CS_FREE: (CString) -> Unit = {p: CString => unsafe { LibC.free(p) }}

protected unsafe func cjArr2CArr<T>(cjArr: Array<T>): CPointer<T> where T <: CType {
    let size = cjArr.size
    if (size == 0) {
        return CPointer<T>()
    }
    let ptr = safeMalloc<T>(count: size)
    for (i in 0..size) {
        ptr.write(i, cjArr[i])
    }
    ptr
}

protected unsafe func cjArr2CArr<T>(cjArr: Array<T>, exceptHandle: () -> Unit): CPointer<T> where T <: CType {
    let size = cjArr.size
    if (size == 0) {
        return CPointer<T>()
    }
    let ptr = safeMalloc<T>(size) {
        exceptHandle()
    }
    for (i in 0..size) {
        ptr.write(i, cjArr[i])
    }
    ptr
}

protected unsafe func cArr2cjArr<T1, T2>(size: Int64, ptr: CPointer<T1>, constructT2: (T1) -> T2) where T1 <: CType {
    if (size == 0 || ptr.isNull()) {
        return Array<T2>()
    }
    let ret = Array<T2>(
        size,
        {
            i =>
            let ctype = ptr.read(i)
            let data = constructT2(ctype)
            data
        }
    )
    ret
}

protected unsafe func cjArr2CArr<T1, T2>(cjArr: Array<T1>, constructT2: (T1) -> T2): CPointer<T2> where T2 <: CType {
    let size = cjArr.size
    if (size == 0) {
        return CPointer<T2>()
    }
    let ptr = safeMalloc<T2>(count: size)
    for (i in 0..size) {
        ptr.write(i, constructT2(cjArr[i]))
    }
    ptr
}

// use this when obj in the array need free
protected unsafe func cjArr2CArr<T1, T2>(cjArr: Array<T1>, constructT2: (T1) -> T2, destructT2: (T2) -> Unit): CPointer<T2> where T2 <: CType {
    let size = cjArr.size
    if (size == 0) {
        return CPointer<T2>()
    }
    let ptr = safeMalloc<T2>(count: size)
    for (i in 0..size) {
        try {
            ptr.write(i, constructT2(cjArr[i]))
        } catch (e: Exception) {
            for (j in 0..i) {
                destructT2(ptr.read(j))
            }
            LibC.free(ptr)
            throw e
        }
    }
    ptr
}

protected unsafe func cjArr2CArr<T1, T2>(
    cjArr: Array<T1>,
    constructT2: (T1) -> T2,
    destructT2: (T2) -> Unit,
    exceptHandle: () -> Unit
): CPointer<T2> where T2 <: CType {
    let size = cjArr.size
    if (size == 0) {
        return CPointer<T2>()
    }
    let ptr = safeMalloc<T2>(size) {
        exceptHandle()
    }
    for (i in 0..size) {
        try {
            ptr.write(i, constructT2(cjArr[i]))
        } catch (e: Exception) {
            for (j in 0..i) {
                destructT2(ptr.read(j))
            }
            LibC.free(ptr)
            exceptHandle()
            throw e
        }
    }
    ptr
}
