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

/**
 * Created on 2025/6/4
 */
package ohos_app_cangjie_entry.test

import std.collection.*
import ohos.ark_interop.JSObjUseAfterFree
import ohos.ark_interop.JSContext
import ohos.ark_interop.JSValue
import ohos.ark_interop.JSString

@C struct Utf16StringPrivate {}
type Utf16StringHandle = CPointer<Utf16StringPrivate>

@C
struct Utf16StringHeader {
    let isConstObJ: Bool = false
    let isLatin1: Bool = false
    let length: UInt32 = 0
    let data: CPointer<Unit> = CPointer<Unit>()
}

@C
struct Utf16StringArray {
    Utf16StringArray(
        let length: UIntNative,
        let values: CPointer<Utf16StringHandle>
    ) {}
}

foreign {
    @FastNative func CJUtf16StringCreateEmpty(): Utf16StringHandle
    @FastNative func CJUtf16StringCreateWithoutData(isLatin1: Bool, length: Int32): Utf16StringHandle
    @FastNative func CJUtf16StringCreate(src: CPointer<UInt8>, size: Int32, isConstSrc: Bool): Utf16StringHandle
    @FastNative func CJUtf16StringDelete(handle: Utf16StringHandle): Unit
    @FastNative func CJUtf16StringGetHeader(handle: Utf16StringHandle): Utf16StringHeader
    @FastNative func CJUtf16StringWriteToUtf8(handle: Utf16StringHandle, dst: CPointer<UInt8>): UInt32
    @FastNative func CJUtf16StringTotalChars(handle: Utf16StringHandle): UInt32
    @FastNative func CJUtf16StringCompare(a: Utf16StringHandle, b: Utf16StringHandle): Int32
    @FastNative func CJUtf16StringHash(handle: Utf16StringHandle): IntNative
    @FastNative func CJUtf16StringSubString(handle: Utf16StringHandle, start: UInt32, end: UInt32): Utf16StringHandle
    @FastNative func CJUtf16StringSplit(handle: Utf16StringHandle, seperator: Utf16StringHandle, limit: UInt32): Utf16StringArray
    @FastNative func CJUtf16StringArrayFree(arr: Utf16StringArray): Unit
    @FastNative func CJUtf16StringIndexOf(handle: Utf16StringHandle, target: Utf16StringHandle, start: Int32): Int32
    @FastNative func CJUtf16StringLastIndexOf(handle: Utf16StringHandle, target: Utf16StringHandle, ending: Int32): Int32
    @FastNative func CJUtf16StringCountOf(handle: Utf16StringHandle, target: Utf16StringHandle): Int32
    @FastNative func CJUtf16StringStartsWith(handle: Utf16StringHandle, target: Utf16StringHandle, start: UInt32): Bool
    @FastNative func CJUtf16StringEndsWith(handle: Utf16StringHandle, target: Utf16StringHandle, ending: UInt32): Bool
    @FastNative func CJUtf16StringConcat(a: Utf16StringHandle, b: Utf16StringHandle): Utf16StringHandle
    @FastNative func CJUtf16StringGetCharAtIndex(handle: Utf16StringHandle, index: Int32): UInt32
    @FastNative func CJUtf16StringJoin(src: CPointer<Utf16StringHandle>, length: UInt32, delimiter: Utf16StringHandle): Utf16StringHandle
    @FastNative func CJUtf16StringReplace(handle: Utf16StringHandle, from: Utf16StringHandle, to: Utf16StringHandle, count: UInt32): Utf16StringHandle
}

public class Utf16String <: ToString & Equatable<Utf16String> & Hashable {
    private let handle_: Utf16StringHandle
    var header_ = Utf16StringHeader()
    var headerInited_ = false
    var isAlive_ = true
    var charsInited_ = false
    var chars_: UInt32 = 0

    public static let empty = Utf16String(unsafe { CJUtf16StringCreateEmpty()})
    static let nl = Utf16String("\n")

    public static unsafe func create(isLatin1: Bool, length: Int64, writer: (CPointer<Unit>)->Unit): Utf16String {
        let handle = unsafe {
            CJUtf16StringCreateWithoutData(isLatin1, Int32(length))
        }
        let src = Utf16String(handle)
        try {
            writer(src.getHeader().data)
        } catch (exp: Exception) {
            src.dispose()
            throw exp
        } catch (exp: Error) {
            src.dispose()
            throw exp
        }
        return src
    }

    public init(src: String) {
        handle_ = unsafe {
            let rawArr = src.rawData()
            let arrHandle = acquireArrayRawData(rawArr)
            let result = CJUtf16StringCreate(arrHandle.pointer, Int32(rawArr.size), false)
            releaseArrayRawData(arrHandle)
            result
        }
    }

    init(handle: Utf16StringHandle) {
        handle_ = handle
    }

    private func checkAlive(): Unit {
        if (!isAlive_) {
            throw JSObjUseAfterFree()
        }
    }

    public func dispose(): Unit {
        if (isAlive_) {
            unsafe {CJUtf16StringDelete(handle_)}
            isAlive_ = false
        }
    }

    public prop accessible: Bool {
        get() {
            isAlive_
        }
    }

    ~init() {
        if (isAlive_) {
            unsafe {CJUtf16StringDelete(handle_)}
        }
    }

    prop safeHandle: Utf16StringHandle {
        get() {
            checkAlive()
            return handle_
        }
    }

    func getHeader(): Utf16StringHeader {
        if (!headerInited_) {
            header_ = unsafe {CJUtf16StringGetHeader(safeHandle)}
            headerInited_ = true
        }
        return header_
    }

    public func toString(): String {
        let header = getHeader()
        let allocSize = if (header.isLatin1) {
            header.length
        } else {
            header.length * 4;
        }
        let array = Array<UInt8>(Int64(allocSize), repeat: 0)
        let size = unsafe {
            let arrHandle = acquireArrayRawData(array)
            let size = CJUtf16StringWriteToUtf8(safeHandle, arrHandle.pointer)
            releaseArrayRawData(arrHandle)
            size
        }
        return unsafe {String.fromUtf8Unchecked(array[0..Int64(size)])}
    }

    public func compare(target: Utf16String): Ordering {
        let result = unsafe {
            CJUtf16StringCompare(safeHandle, target.safeHandle)
        }
        return if (result > 0) {
            Ordering.GT
        } else if (result == 0) {
            Ordering.EQ
        } else {
            Ordering.LT
        }
    }

    public operator func == (target: Utf16String): Bool {
        match (compare(target)) {
            case EQ => true
            case _ => false
        }
    }

    public func hashCode(): Int64 {
        let value = unsafe {CJUtf16StringHash(safeHandle)}
        Int64(value)
    }

    public prop size: Int64 {
        get() {
            Int64(length)
        }
    }

    prop length: UInt32 {
        get() {
            getHeader().length
        }
    }

    public prop totalChars: Int64 {
        get() {
            if (!charsInited_) {
                chars_ = unsafe {CJUtf16StringTotalChars(safeHandle)}
                charsInited_ = true
            }
            return Int64(chars_)
        }
    }

    public func isEmpty(): Bool {
        return size == 0
    }

    public func isLatin1Encoding(): Bool {
        return getHeader().isLatin1
    }

    public operator func != (target: Utf16String): Bool {
        return ! (this == target)
    }

    public operator func > (target: Utf16String): Bool {
        return match (compare(target)) {
            case Ordering.GT => true
            case _ => false
        }
    }

    public operator func >= (target: Utf16String): Bool {
        return ! (this < target)
    }

    public operator func < (target: Utf16String): Bool {
        return match (compare(target)) {
            case Ordering.LT => true
            case _ => false
        }
    }

    public operator func <= (target: Utf16String): Bool {
        return ! (this > target)
    }

    public operator func [](index: Int64): UInt16 {
        let header = getHeader()
        if (index < 0 || index >= Int64(header.length)) {
            throw Exception("index: '${index}' outof range [0, ${header.length})")
        }
        let value = unsafe {
            if (header.isLatin1) {
                UInt16(CPointer<UInt8>(header.data).read(index))
            } else {
                CPointer<UInt16>(header.data).read(index)
            }
        }
        return value
    }

    public operator func [](range: Range<Int64>): Utf16String {
        if (range.start < 0 || range.end < 0 || range.start > range.end) {
            throw Exception("invalid substr range ${range.start}..${range.end}")
        }
        let handle = unsafe {
            CJUtf16StringSubString(safeHandle, UInt32(range.start), UInt32(range.end))
        }
        return Utf16String(handle)
    }

    public func runes(): Iterator<Rune> {
        let header = getHeader()
        if (header.isLatin1) {
            Latin1Iterator(CPointer<UInt8>(header.data), 0, Int64(header.length))
        } else {
            Utf16Iterator(CPointer<UInt16>(header.data), 0, Int64(header.length))
        }
    }

    public func lines(): Iterator<Utf16String> {
        SplitIterator(this, nl, 0, false)
    }

    public func indexOf(target: Utf16String): ?Int64 {
        return indexOf(target, 0)
    }

    public func indexOf(target: Utf16String, fromIndex: Int64): ?Int64 {
        if (fromIndex < 0 || fromIndex >= size) {
            throw Exception("index")
        }
        let result = unsafe {CJUtf16StringIndexOf(safeHandle, target.safeHandle, Int32(fromIndex))}
        if (result >= 0) {
            return Int64(result)
        }
        return None
    }

    public func lastIndexOf(target: Utf16String): ?Int64 {
        return lastIndexOf(target, -1)
    }

    public func lastIndexOf(target: Utf16String, fromIndex: Int64): ?Int64 {
        let result = unsafe {CJUtf16StringLastIndexOf(safeHandle, target.safeHandle, Int32(fromIndex))}
        if (result >= 0) {
            return Int64(result)
        }
        return None
    }

    public func count(src: Utf16String): Int64 {
        let result = unsafe {CJUtf16StringCountOf(safeHandle, src.safeHandle)}
        return Int64(result)
    }

    public func split(seperator: Utf16String, removeEmpty!: Bool = false): Array<Utf16String> {
        return split(seperator, 0, removeEmpty: removeEmpty)
    }

    public func split(seperator: Utf16String, maxSplit: Int64, removeEmpty!: Bool = false): Array<Utf16String> {
        let list = ArrayList<Utf16String>()
        unsafe {
            let jArr = CJUtf16StringSplit(safeHandle, seperator.safeHandle, UInt32(maxSplit))
            for (i in 0..jArr.length) {
                let str = Utf16String(jArr.values.read(Int64(i)))
                if (!removeEmpty || !str.isEmpty()) {
                    list.add(str)
                } else {
                    str.dispose()
                }
            }
            CJUtf16StringArrayFree(jArr)
        }
        list.toArray()
    }

    public func lazySplit(separator: Utf16String, removeEmpty!: Bool = false): Iterator<Utf16String> {
        return lazySplit(separator, 0, removeEmpty: removeEmpty)
    }

    public func lazySplit(separator: Utf16String, maxSplit: Int64, removeEmpty!: Bool = false): Iterator<Utf16String> {
        SplitIterator(this, separator, maxSplit, removeEmpty)
    }

    public func replace(old: Utf16String, new: Utf16String, count!: Int64 = 1): Utf16String {
        let handle = unsafe {
            CJUtf16StringReplace(safeHandle, old.safeHandle, new.safeHandle, UInt32(count))
        }
        Utf16String(handle)
    }

    public func contains(target: Utf16String): Bool {
        return indexOf(target).isSome()
    }

    public func startsWith(target: Utf16String): Bool {
        unsafe {
            CJUtf16StringStartsWith(safeHandle, target.safeHandle, 0)
        }
    }

    public func endsWith(target: Utf16String): Bool {
        unsafe {
            CJUtf16StringEndsWith(safeHandle, target.safeHandle, 0)
        }
    }

    public operator func + (right: Utf16String): Utf16String {
        let handle = unsafe {
            CJUtf16StringConcat(safeHandle, right.safeHandle)
        }
        Utf16String(handle)
    }
}

class Latin1Iterator <: Iterator<Rune> {
    Latin1Iterator(
        let src: CPointer<UInt8>,
        var current: Int64,
        let size: Int64
    ) {}

    public func next(): ?Rune {
        if (current < size) {
            let result = Rune(unsafe {src.read(current)})
            current++
            return result
        } else {
            None
        }
    }
}

class Utf16Iterator <: Iterator<Rune> {
    Utf16Iterator(
        let src: CPointer<UInt16>,
        var current: Int64,
        let size: Int64
    ) {}

    public func next(): ?Rune {
        if (current < size) {
            let nextChar = UInt32(unsafe {src.read(current)})
            current++
            if (nextChar < 0xD800 || nextChar >= 0xE000) {
                return Rune(nextChar)
            } else if (current < size) {
                let lower = UInt32(unsafe {src.read(current)})
                current++
                let code = (nextChar & 0x3FF) << 10 | (lower & 0x3FF) | 0x10000
                Rune(code)
            }
        }
        return None
    }
}

class SplitIterator <: Iterator<Utf16String> {
    let src: Utf16String
    let target: Utf16String
    var current: UInt32
    var length: UInt32
    var maxCount: Int64
    let removeEmpty: Bool
    var closed = false

    SplitIterator(src: Utf16String, target: Utf16String, maxCount: Int64, removeEmpty: Bool) {
        this.src = src
        this.target = target
        current = 0
        length = src.length
        this.maxCount = if (maxCount <= 0) {
            Int64.Max
        } else {
            maxCount - 1
        }
        this.removeEmpty = removeEmpty
    }

    public func next(): ?Utf16String {
        if (current < length) {
            let start = current
            if (maxCount == 0) {
                current = length
                return src[Int64(start)..Int64(length)]
            }
            let nextNL = src.indexOf(target, Int64(current))
            let end = if (let Some(pos) <- nextNL) {
                current = UInt32(pos) + UInt32(target.length)
                pos
            } else {
                current = length
                closed = true
                Int64(length)
            }

            let result = src[Int64(start)..end]
            if (!removeEmpty || !result.isEmpty()) {
                maxCount--
                return result
            }

            return next()
        }
        if (!closed) {
            closed = true
            if (!removeEmpty) {
                return Utf16String.empty
            }
        }
        return None
    }
}

