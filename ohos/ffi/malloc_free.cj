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

protected func safeMalloc<T>(count!: Int64 = 1): CPointer<T> where T <: CType {
    let ptr = LibC.malloc<T>(count: count)
    if (ptr.isNull()) {
        throw IllegalMemoryException("Out of Memory!")
    }
    ptr
}

protected func safeMalloc<T>(count: Int64, exceptHandle: () -> Unit): CPointer<T> where T <: CType {
    let ptr = LibC.malloc<T>(count: count)
    if (ptr.isNull()) {
        exceptHandle()
        throw IllegalMemoryException("Out of Memory!")
    }
    ptr
}
