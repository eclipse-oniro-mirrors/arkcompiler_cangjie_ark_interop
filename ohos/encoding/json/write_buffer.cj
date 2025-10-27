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

protected package ohos.encoding.json

@FastNative
foreign func memcpy_s(dest: CPointer<UInt8>, destMax: UIntNative, src: CPointer<UInt8>, count: UIntNative): Int32

let BOOL_TRUE_STRING = "true".toArray()
let BOOL_FALSE_STRING = "false".toArray()
let NULL_STRING = "null".toArray()
const MIN_CAPACITY = 16
const BLANK: Byte = ' '
/*
 * This is a stringbuilder customized for json serialization.
 * Compared with stringbuilder, it has the following optimization points:
 *  1. Constructor with capacity, and func asumecapacity(jv: JsonVaule) is used to
 *     estimate the capacity in advance. Although this is not accurate,
 *     it can reduce a large amount of memory application and copy during
 *     long jsonvalue serialization.
 *  2. The cache(_buffer) is initialized with blank character. when adding blanks,
 *     only need to move the pointer.
 *  3. append(str: String), faster then StringBuilder.
 *  4. func removetail(), faster then StringBuilder.
 */
class WriteBuffer {
    private var _buffer: Array<Byte>
    private var _size: Int64 = 0

    /*
     * buff must be filled with blank
     */
    init(capacity: Int64) {
        let cap = if (capacity > MIN_CAPACITY) {
            capacity
        } else {
            MIN_CAPACITY
        }
        _buffer = Array<Byte>(cap, repeat: BLANK)
    }

    protected prop size: Int64 {
        get() {
            return _size
        }
    }

    /*
     * buff must be filled with blank
     */
    func checkAndExpend(addition: Int64): Unit {
        let minCapacity = _size + addition
        let oldCapacity: Int64 = _buffer.size
        if (minCapacity < oldCapacity) {
            return
        }

        var newCapacity: Int64 = oldCapacity + (oldCapacity >> 1)
        if (newCapacity < minCapacity) {
            newCapacity = minCapacity
        }
        let newArr: Array<Byte> = Array<Byte>(newCapacity, repeat: BLANK)
        _buffer.copyTo(newArr, 0, 0, _size)
        _buffer = newArr
    }

    func append(arr: Array<Byte>): WriteBuffer {
        checkAndExpend(arr.size)

        if (arr.size < 32) {
            for (index in 0..arr.size) {
                _buffer[_size] = arr[index]
                _size++
            }
        } else {
            arr.copyTo(_buffer, 0, _size, arr.size)
            _size += arr.size
        }
        return this
    }

    func append(str: String): WriteBuffer {
        append(unsafe { str.rawData() })
        return this
    }

    func append(byte: Byte): WriteBuffer {
        checkAndExpend(1)
        _buffer[_size] = byte
        _size++
        return this
    }

    func append(n: Int64): WriteBuffer {
        checkAndExpend(22)
        let len = writeBufferAppendInt(_buffer[_size..], n)
        _size += len
        return this
    }

    func append(fl: Float64): WriteBuffer {
        unsafe {
            let p: CPointer<UInt8> = CJ_CORE_Float64ToCPointer(fl)
            if (p.isNull()) {
                return this
            }
            let cpSize = Int64(strlen(p))
            checkAndExpend(cpSize)
            let dest = acquireArrayRawData(_buffer)
            memcpy_s(dest.pointer + _size, UIntNative(_buffer.size - _size), p, UIntNative(cpSize))
            releaseArrayRawData(dest)
            LibC.free(p)
            _size += cpSize
        }

        // the result of CJ_CORE_Float64ToCPointer have at least 6 decimal points
        // there is no out-of-bounds risk
        while (_buffer[_size - 1] == UInt8(UInt32(r'0'))) {
            _size--
        }
        if (_buffer[_size - 1] == UInt8(UInt32(r'.'))) {
            _size--
        }
        return this
    }

    func append(b: Bool): WriteBuffer {
        if (b) {
            append(BOOL_TRUE_STRING)
        } else {
            append(BOOL_FALSE_STRING)
        }
    }

    func appendBlank(n: Int64): WriteBuffer {
        checkAndExpend(n)
        _size += n
        return this
    }

    func removetail(): WriteBuffer {
        if (_size > 0) {
            _size--
        }
        return this
    }

    func appendEscape(str: String): WriteBuffer {
        var escapenum = 0

        escapenum = stringEscapeCharNumGet(str.toArray())

        if (escapenum == 0) {
            append(str)
            return this
        } else {
            checkAndExpend(str.size + escapenum)
            let len = replaceEscapeChar(str.toArray(), str.size, _buffer[_size..])
            _size += len
            return this
        }
    }

    func getAndClear(): Array<Byte> {
        let ret = _buffer[0.._size]
        _buffer = Array<Byte>(0, repeat: BLANK)
        _size = 0
        return ret
    }
}

func jsonWriteWithoutFormat(json: JsonValue, buff: WriteBuffer): Unit {
    match (json) {
        case jo: JsonObject =>
            if (jo.size() == 0) {
                buff.append("{}".toArray())
                return
            }
            buff.append(UInt8(UInt32(r'{')))
            for ((strKey, jv) in jo.getFields()) {
                buff.append(UInt8(UInt32(r'\"'))).appendEscape(strKey).append("\":".toArray())
                jsonWriteWithoutFormat(jv, buff)
                buff.append(UInt8(UInt32(r',')))
            }
            buff.removetail()
            buff.append(UInt8(UInt32(r'}')))
        case ja: JsonArray =>
            if (ja.size() == 0) {
                buff.append("[]".toArray())
                return
            }
            buff.append(UInt8(UInt32(r'[')))
            for (item in ja.getItems()) {
                jsonWriteWithoutFormat(item, buff)
                buff.append(UInt8(UInt32(r',')))
            }
            buff.removetail()
            buff.append(UInt8(UInt32(r']')))
        case js: JsonString => buff.append(UInt8(UInt32(r'\"'))).appendEscape(js.getValue()).append(
            UInt8(UInt32(r'\"')))
        case jb: JsonBool => buff.append(jb.getValue())
        case ji: JsonInt => buff.append(ji.getValue())
        case jf: JsonFloat => buff.append(jf.getValue())
        case _ => buff.append(NULL_STRING)
    }
}

func jsonWriteObject(json: JsonObject, buff: WriteBuffer, depth: Int64, bracketInNewLine: Bool, indent: String): Unit {
    if (bracketInNewLine) {
        for (_ in 0..depth) {
            buff.append(indent)
        }
    }

    if (json.size() == 0) {
        buff.append("{}".toArray())
        return
    }

    buff.append(UInt8(UInt32(r'{')))
    let new_depth = depth + 1
    for ((key, jv) in json.getFields()) {
        buff.append(UInt8(UInt32(r'\n')))
        for (_ in 0..new_depth) {
            buff.append(indent)
        }
        buff.append(UInt8(UInt32(r'\"'))).appendEscape(key).append(UInt8(UInt32(r'\"'))).append(UInt8(UInt32(r':')))
            .appendBlank(1)
        match (jv) {
            case jo: JsonObject => jsonWriteObject(jo, buff, new_depth, false, indent)
            case ja: JsonArray => jsonWriteArray(ja, buff, new_depth, false, indent)
            case _ => jsonWriteWithoutFormat(jv, buff)
        }
        buff.append(UInt8(UInt32(r',')))
    }
    buff.removetail()
    buff.append(UInt8(UInt32(r'\n')))
    for (_ in 0..depth) {
        buff.append(indent)
    }
    buff.append(UInt8(UInt32(r'}')))
}

func jsonWriteArray(json: JsonArray, buff: WriteBuffer, depth: Int64, bracketInNewLine: Bool, indent: String): Unit {
    if (bracketInNewLine) {
        for (_ in 0..depth) {
            buff.append(indent)
        }
    }

    if (json.size() == 0) {
        buff.append("[]".toArray())
        return
    }

    buff.append(UInt8(UInt32(r'[')))
    let new_depth = depth + 1
    for (v in json.getItems()) {
        buff.append(UInt8(UInt32(r'\n')))
        for (_ in 0..new_depth) {
            buff.append(indent)
        }
        match (v) {
            case jo: JsonObject => jsonWriteObject(jo, buff, new_depth, false, indent)
            case ja: JsonArray => jsonWriteArray(ja, buff, new_depth, false, indent)
            case _ => jsonWriteWithoutFormat(v, buff)
        }
        buff.append(UInt8(UInt32(r',')))
    }
    buff.removetail()
    buff.append(UInt8(UInt32(r'\n')))
    for (_ in 0..depth) {
        buff.append(indent)
    }
    buff.append(UInt8(UInt32(r']')))
}

func asumecapacity(json: JsonValue): Int64 {
    match (json) {
        case jo: JsonObject =>
            var sum = 2
            for ((k, v) in jo.getFields()) {
                sum = sum + k.size + 4 // + "key": value,
                sum += asumecapacity(v)
            }
            return sum
        case ja: JsonArray =>
            var sum = 2
            for (v in ja.getItems()) {
                sum = sum + asumecapacity(v) + 1
            }
            return sum
        case js: JsonString => return js.value.size + 2 // "value"
        case _: JsonBool => return 5 // max of "false" and "true" 
        case _: JsonInt => return 22 // max len is 22
        case _: JsonFloat => return 200 // not precision 
        case _ => return 4 // len of "null" is 4
    }
}

func replaceEscapeChar(input: Array<Byte>, inputlen: Int64, buffer: Array<Byte>): Int64 {
    let hex: Array<Byte> = "0123456789abcdef".toArray()
    var j: Int64 = 0
    for (i in 0..inputlen) {
        let b = input[i]
        if (b == 0X7f) {
            buffer[j..j + 6] = [b'\\', b'u', b'0', b'0', b'7', b'f']
            j += 6 // 6 is the sizeof("\u007f")
            continue
        }
        if ((b >= 32) && (b != b'\"') && (b != b'\\') && (b != b'&')) { // ASCII code over 32 don't need escape
            buffer[j] = input[i]
            j++
            continue
        }
        match (b) {
            case b'\b' =>
                buffer[j..j + 2] = [b'\\', b'b']
                j += 2 // add 2 bytes
            case b'\f' =>
                buffer[j..j + 2] = [b'\\', b'f']
                j += 2 // add 2 bytes
            case b'\n' =>
                buffer[j..j + 2] = [b'\\', b'n']
                j += 2 // add 2 bytes
            case b'\r' =>
                buffer[j..j + 2] = [b'\\', b'r']
                j += 2 // add 2 bytes
            case b'\t' =>
                buffer[j..j + 2] = [b'\\', b't']
                j += 2 // add 2 bytes
            case b'\\' =>
                buffer[j..j + 2] = [b'\\', b'\\']
                j += 2 // add 2 bytes
            case b'\"' =>
                buffer[j..j + 2] = [b'\\', b'\"']
                j += 2 // add 2 bytes
            case _ =>
                buffer[j..j + 6] = [b'\\', b'u', b'0', b'0', hex[Int64(b) >> 4], hex[Int64(b) & 0xF]]
                j += 6 // add 6 bytes
        }
    }
    return j
}

@OverflowWrapping
func writeBufferAppendInt(arr: Array<Byte>, num: Int64): Int64 {
    if (num < 0) {
        let unum = UInt64(-num)
        arr[0] = b'-'
        return writeBufferAppendUint(arr[1..], unum) + 1
    } else {
        return writeBufferAppendUint(arr, UInt64(num))
    }
}

func writeBufferAppendUint(arr: Array<Byte>, num: UInt64): Int64 {
    var index = 0
    var unum = num
    do {
        arr[index] = UInt8(unum % 10) + b'0' // mod 10
        unum /= 10 // mod 10
        index++
    } while (unum > 0)

    var temp: UInt8 = 0
    var iOpposite = 0
    let mid = (index - 1) / 2
    for (i in 0..=mid) {
        iOpposite = index - i - 1
        temp = arr[i]
        arr[i] = arr[iOpposite]
        arr[iOpposite] = temp
    }
    return index
}

func stringEscapeCharNumGet(arr: Array<Byte>): Int64 {
    var escapeCharacters = 0
    for (byte in arr) {
        if (byte == 127) {
            escapeCharacters += 5
            continue
        }
        // ASCII code over 32 don't need escape
        if ((byte >= 32) && (byte != b'\"') && (byte != b'\\') && (byte != b'&')) {
            continue
        }
        match (byte) {
            case b'\r' | b'\f' | b'\t' | b'\b' | b'\n' | b'\"' | b'\\' => escapeCharacters++
            case _ => escapeCharacters += 5
        }
    }
    return escapeCharacters
}
