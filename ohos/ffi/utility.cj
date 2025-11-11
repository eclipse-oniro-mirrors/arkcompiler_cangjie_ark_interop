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

protected class CTypeResource<T> <: Resource where T <: CType {
    protected CTypeResource(
        protected let value: T,
        protected let free: () -> Unit
    ) {}
    protected let isFree: Box<Bool> = Box(false)

    public func isClosed(): Bool {
        return isFree.value
    }

    public func close(): Unit {
        if (isFree.value) {
            return
        }
        this.free()
        isFree.value = true
    }
}

@C
protected struct CArrFloat32 {
    protected CArrFloat32(
        protected var head: CPointer<Float32>,
        protected var size: Int64
    ) {}

    protected init() {
        this.head = CPointer()
        this.size = 0
    }

    protected func free(): Unit {
        unsafe { LibC.free(head) }
    }

    protected func asResource(): CTypeResource<CArrFloat32> {
        return CTypeResource(this, free)
    }

    protected func asArray(): Array<Float32> {
        if (head.isNull()) {
            return Array<Float32>()
        }
        Array<Float32>(size) {i => unsafe { head.read(i) }}
    }

    protected func toArrayF64(): Array<Float64> {
        if (head.isNull()) {
            return Array<Float64>()
        }
        Array<Float64>(size) {i => unsafe { Float64(head.read(i)) }}
    }
}
