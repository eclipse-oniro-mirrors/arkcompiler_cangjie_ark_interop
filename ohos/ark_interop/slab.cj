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

import std.collection.ArrayList
import std.sync.Mutex
import std.sync.AtomicInt64

protected struct SlabItem<T> {
    SlabItem(
        var data: ?T,
        var prev: Int64
    ) {}
}

protected struct Slab<T> {
    private static var nextId_ = AtomicInt64(0)
    private static func nextId(): Int64 {
        let result = nextId_.fetchAdd(0x1_0000_0000)
        result
    }

    private let slabId_ = nextId()
    private var items_ = ArrayList<SlabItem<T>>()
    private var last_ = -1

    protected init() {}

    private func toIndex(id: Int64): ?Int64 {
        if ((id & slabId_) != slabId_) {
            return None
        }
        id & 0xFFFFFFFF;
    }

    private func toId(index: Int64): Int64 {
        if (index > 0xFFFFFFFF) {
            throw Exception("out of range: ${index}")
        }
        slabId_ | index
    }

    protected mut func getSlabItemsAndClear(): ArrayList<SlabItem<T>> {
        let items = items_
        items_ = ArrayList<SlabItem<T>>()
        last_ = -1
        return items
    }

    protected static func toDataList(items: ArrayList<SlabItem<T>>): ArrayList<T> {
        let result = ArrayList<T>()
        for (item in items) {
            if (let Some(data) <- item.data) {
                result.add(data)
            }
        }
        return result
    }

    protected mut func getAllAndClear(): ArrayList<T> {
        let items = getSlabItemsAndClear()
        toDataList(items)
    }

    protected mut func append(data: T): Int64 {
        if (last_ >= 0) {
            let lastPrev = items_[last_].prev
            let result = last_;
            items_[last_] = SlabItem<T>(data, -1)
            last_ = lastPrev
            return toId(result)
        }
        let result = items_.size
        if (result >= Int64(UInt32.Max)) {
            throw Exception("reach max capacity")
        }
        items_.add(SlabItem<T>(data, -1))
        return toId(result)
    }

    protected mut func remove(id: Int64): ?T {
        let optIndex = toIndex(id)
        if (optIndex.isNone()) {
            return None
        }
        let index = optIndex.getOrThrow()
        if (index < 0 || index >= items_.size) {
            return None;
        }
        if (let Some(data) <- items_[index].data) {
            items_[index] = SlabItem<T>(None, last_)
            last_ = index
            return data
        } else {
            return None
        }
    }

    protected func get(id: Int64): ?T {
        let optIndex = toIndex(id)
        if (optIndex.isNone()) {
            return None
        }
        let index = optIndex.getOrThrow()
        if (index < 0 || index >= items_.size) {
            return None;
        }
        if (let Some(data) <- items_[index].data) {
            return data
        } else {
            return None
        }
    }

    protected operator func [](id: Int64): T {
        return get(id).getOrThrow()
    }
}

protected struct SlabMT<T> {
    var slab_ = Slab<T>()
    let mutex_: Mutex

    protected init() {
        mutex_ = Mutex()
    }

    protected mut func append(data: T): Int64 {
        synchronized(mutex_) {
            slab_.append(data)
        }
    }

    protected mut func remove(id: Int64): ?T {
        synchronized(mutex_) {
            slab_.remove(id)
        }
    }

    protected func get(id: Int64): ?T {
        synchronized(mutex_) {
            slab_.get(id)
        }
    }

    protected operator func [](id: Int64): T {
        get(id).getOrThrow()
    }

    protected mut func getAllAndClear(): ArrayList<T> {
        let items = synchronized(mutex_) {
            slab_.getSlabItemsAndClear()
        }
        return Slab<T>.toDataList(items)
    }
}
