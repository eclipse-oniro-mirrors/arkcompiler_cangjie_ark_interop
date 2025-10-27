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

import std.collection.*
import std.convert.*

@FastNative
foreign func CJ_CORE_Float64ToCPointer(num: Float64): CPointer<UInt8>

@FastNative
foreign func strlen(str: CPointer<UInt8>): UIntNative

/**
 * @brief Get rows and columns of the error position
 *
 * @param Array<UInt8> JSON string array
 * @param Int64 The order of the error characters in the string
 * @return (Int64, Int64) Rows and columns of the error position
 * @throws IllegalArgumentException if there is no valid utf8 leading code in array `strArr`.
 */
func getErrRowAndCol(strArr: Array<UInt8>, errPos: Int64): (Int64, Int64) {
    var tempPos: Int64 = 0
    var errRow: Int64 = 1
    var errCol: Int64 = 1
    var lineStartPos: Int64 = 0
    while (tempPos < errPos) {
        let temp = Rune.fromUtf8(strArr, tempPos)
        let tempChr = temp[0]
        if (tempChr == r'\n') {
            errRow += 1
            lineStartPos = tempPos + 1
        }
        tempPos += temp[1]
    }
    while (lineStartPos < errPos) {
        let tempChr = Rune.fromUtf8(strArr, lineStartPos)[0]
        if (tempChr == r' ') {
            lineStartPos += 1
        } else {
            break
        }
    }
    while (lineStartPos < errPos) {
        let temp = Rune.fromUtf8(strArr, lineStartPos)
        let tempSize = temp[1]
        errCol += 1
        lineStartPos += tempSize
    }
    return (errRow, errCol)
}

/**
 * @brief Handle Escape Characters and Multibyte Characters
 *
 * @param Rune error characters
 * @return String Escaped character string
 */
func handleErrChr(errChr: Rune): String {
    match (errChr) {
        case r'\0' => return "\\0"
        case r'\b' => return "\\b"
        case r'\t' => return "\\t"
        case r'\n' => return "\\n"
        case r'\f' => return "\\f"
        case r'\r' => return "\\r"
        case r'\v' => return "\\v"
        case _ => return "${errChr}"
    }
}

enum NumberSystem {
    Binary
    | Octal
    | Decimal
    | Hex
}

class JsonParser {
    let data: Array<Byte>
    let size: Int64
    var offset: Int64
    let cache: Array<JsonValue>
    var cacheSize: Int64
    let strCache: ArrayList<Byte>

    init(str: String) {
        this.data = unsafe { str.rawData() }
        this.size = data.size
        this.offset = 0
        if ((size >> 1) > 16) {
            this.cache = Array<JsonValue>(size >> 1, repeat: JsonNull())
        } else {
            this.cache = Array<JsonValue>(16, repeat: JsonNull())
        }
        this.cacheSize = 0
        this.strCache = ArrayList<Byte>()
    }
}

func skipWhiteSpace(parser: JsonParser): Unit {
    var tmp = parser.data[parser.offset]
    while (tmp == UInt8(UInt32(r' ')) || tmp == UInt8(UInt32(r'\t')) || tmp == UInt8(UInt32(r'\n')) || tmp == UInt8(UInt32(r'\r'))) {
        parser.offset++
        if (parser.offset >= parser.size) {
            return
        }
        tmp = parser.data[parser.offset]
    }
}

func parseString(str: String): JsonValue {
    if (str.size == 0) {
        throw JsonException("Json String is empty!")
    }
    let parser = JsonParser(str)
    let res = parseJson(parser)
    if (parser.offset <= (parser.size - 1)) {
        skipWhiteSpace(parser)
    }
    if (parser.offset <= (parser.size - 1)) {
        let errRowAndCol = getErrRowAndCol(parser.data, parser.offset)
        let (errChr, _) = Rune.fromUtf8(parser.data, parser.offset)
        let errStr = handleErrChr(errChr)
        let errMsg: String = "Parse Error: [Line]: ${errRowAndCol[0]}, [Pos]: ${errRowAndCol[1]}, [Error]: Unexpected character: \'${errStr}\'."
        throw JsonException("the json data is Non-standard, please check:\n${errMsg}")
    }
    return res
}

func parseJson(parser: JsonParser): JsonValue {
    try {
        skipWhiteSpace(parser)
        let start = parser.data[parser.offset]
        match {
            case start == UInt8(UInt32(r'{')) => return parseJsonObject(parser)
            case start == UInt8(UInt32(r'[')) => return parseJsonArray(parser)
            case start == UInt8(UInt32(r'n')) => return parseJsonNull(parser)
            case start == UInt8(UInt32(r't')) => return parseJsonTrue(parser)
            case start == UInt8(UInt32(r'f')) => return parseJsonFalse(parser)
            case start == UInt8(UInt32(r'\"')) => return parseJsonString(parser)
            case start >= UInt8(UInt32(r'0')) && start <= UInt8(UInt32(r'9')) || start == UInt8(UInt32(r'-')) => return parseJsonNumber(
                parser)
            case _ => throw JsonException()
        }
    } catch (_: Exception) {
        unsafe {
            let strArr = parser.data
            var errPos = parser.offset
            if (errPos >= strArr.size) {
                errPos = strArr.size - 1
            }
            let errRowAndCol = getErrRowAndCol(strArr, errPos)
            let (errChr, _) = Rune.fromUtf8(strArr, errPos)
            let errStr = handleErrChr(errChr)
            let errMsg: String = "Parse Error: [Line]: ${errRowAndCol[0]}, [Pos]: ${errRowAndCol[1]}, [Error]: Unexpected character: \'${errStr}\'."
            throw JsonException("the json data is Non-standard, please check:\n${errMsg}")
        }
    }
}

func parseJsonObject(parser: JsonParser): JsonObject {
    parser.offset++
    skipWhiteSpace(parser)
    var count = 0
    var first = true
    while (parser.data[parser.offset] != UInt8(UInt32(r'}'))) {
        if (first) {
            first = false
        } else if (parser.data[parser.offset] == UInt8(UInt32(r','))) {
            parser.offset++
        } else {
            throw JsonException()
        }
        skipWhiteSpace(parser)
        let key = parseJsonString(parser)
        skipWhiteSpace(parser)
        if (parser.data[parser.offset] != UInt8(UInt32(r':'))) {
            throw JsonException()
        }
        parser.offset++
        let value = parseJson(parser)
        skipWhiteSpace(parser)
        parser.cache[parser.cacheSize] = key
        parser.cache[parser.cacheSize + 1] = value
        count++
        parser.cacheSize += 2
    }
    parser.offset++
    let map = HashMap<String, JsonValue>(count)
    for (i in count..0 : -1) {
        let key = parser.cache[parser.cacheSize - (i * 2)].asString().getValue()
        let value = parser.cache[parser.cacheSize - (i * 2) + 1]
        map.add(key, value)
    }
    parser.cacheSize -= (2 * count)
    return JsonObject(map)
}

func parseJsonArray(parser: JsonParser): JsonArray {
    parser.offset++
    skipWhiteSpace(parser)
    var count = 0
    var first = true
    while (parser.data[parser.offset] != UInt8(UInt32(r']'))) {
        if (first) {
            first = false
        } else if (parser.data[parser.offset] == UInt8(UInt32(r','))) {
            parser.offset++
        } else {
            throw JsonException()
        }
        let item = parseJson(parser)
        skipWhiteSpace(parser)
        parser.cache[parser.cacheSize] = item
        count++
        parser.cacheSize++
    }
    parser.offset++
    let arr = ArrayList<JsonValue>(count)
    for (i in count..0 : -1) {
        let item = parser.cache[parser.cacheSize - i]
        arr.add(item)
    }
    parser.cacheSize -= count
    return JsonArray(arr)
}

func parseJsonNull(parser: JsonParser): JsonNull {
    if (parser.data[parser.offset] != UInt8(UInt32(r'n'))) {
        throw JsonException()
    }
    parser.offset++
    if (parser.data[parser.offset] != UInt8(UInt32(r'u'))) {
        throw JsonException()
    }
    parser.offset++
    if (parser.data[parser.offset] != UInt8(UInt32(r'l'))) {
        throw JsonException()
    }
    parser.offset++
    if (parser.data[parser.offset] != UInt8(UInt32(r'l'))) {
        throw JsonException()
    }
    parser.offset++
    return JsonNull()
}

func parseJsonTrue(parser: JsonParser): JsonBool {
    if (parser.data[parser.offset] != UInt8(UInt32(r't'))) {
        throw JsonException()
    }
    parser.offset++
    if (parser.data[parser.offset] != UInt8(UInt32(r'r'))) {
        throw JsonException()
    }
    parser.offset++
    if (parser.data[parser.offset] != UInt8(UInt32(r'u'))) {
        throw JsonException()
    }
    parser.offset++
    if (parser.data[parser.offset] != UInt8(UInt32(r'e'))) {
        throw JsonException()
    }
    parser.offset++
    return JsonBool(true)
}

func parseJsonFalse(parser: JsonParser): JsonBool {
    if (parser.data[parser.offset] != UInt8(UInt32(r'f'))) {
        throw JsonException()
    }
    parser.offset++
    if (parser.data[parser.offset] != UInt8(UInt32(r'a'))) {
        throw JsonException()
    }
    parser.offset++
    if (parser.data[parser.offset] != UInt8(UInt32(r'l'))) {
        throw JsonException()
    }
    parser.offset++
    if (parser.data[parser.offset] != UInt8(UInt32(r's'))) {
        throw JsonException()
    }
    parser.offset++
    if (parser.data[parser.offset] != UInt8(UInt32(r'e'))) {
        throw JsonException()
    }
    parser.offset++
    return JsonBool(false)
}

func parseJsonNumber(parser: JsonParser): JsonValue {
    var isFloat = false
    let leftIndex = parser.offset
    var rightIndex = parser.offset
    parseSign(parser)
    let numSystem = parseNumberSystem(parser)
    let isNumber = checkNumberSystem(numSystem)
    parseInteger(parser, isNumber)
    isFloat = parseDecimal(parser, numSystem)
    if (isFloat) {
        parseExponent(parser, numSystem)
    } else {
        isFloat = parseExponent(parser, numSystem)
    }
    rightIndex = parser.offset
    let numStr = unsafe { String.fromUtf8Unchecked(parser.data[leftIndex..rightIndex]) }
    if (isFloat) {
        return JsonFloat(Float64.parse(numStr))
    }
    return JsonInt(Int64.parse(numStr))
}

func parseSign(parser: JsonParser): Unit {
    if (parser.data[parser.offset] == UInt8(UInt32(r'-'))) {
        parser.offset++
    }
}

func parseNumberSystem(parser: JsonParser): NumberSystem {
    if (parser.data[parser.offset] == UInt8(UInt32(r'0'))) {
        parser.offset++
        if (parser.offset >= parser.size) {
            parser.offset--
            return Decimal
        }
        match (parser.data[parser.offset]) {
            case 'b' | 'B' =>
                parser.offset++
                return Binary
            case 'o' | 'O' =>
                parser.offset++
                return Octal
            case 'x' | 'X' =>
                parser.offset++
                return Hex
            case _ => parser.offset--
        }
    }
    return Decimal
}

func checkNumberSystem(numSystem: NumberSystem): (Byte) -> Bool {
    match (numSystem) {
        case Binary => return {byte: Byte => byte >= UInt8(UInt32(r'0')) && byte <= UInt8(UInt32(r'1'))}
        case Octal => return {byte: Byte => byte >= UInt8(UInt32(r'0')) && byte <= UInt8(UInt32(r'7'))}
        case Decimal => return {byte: Byte => byte >= UInt8(UInt32(r'0')) && byte <= UInt8(UInt32(r'9'))}
        case Hex => return {
            byte: Byte => byte >= UInt8(UInt32(r'0')) && byte <= UInt8(UInt32(r'9')) || byte >= UInt8(UInt32(r'a')) &&
                byte <= UInt8(UInt32(r'f')) || byte >= UInt8(UInt32(r'A')) && byte <= UInt8(UInt32(r'F'))
        }
    }
}

func parseInteger(parser: JsonParser, isNumber: (Byte) -> Bool): Unit {
    var nextByte = parser.data[parser.offset]
    var hasNumber = false
    if (nextByte == UInt8(UInt32(r'0'))) {
        parser.offset++
        return
    }
    while (isNumber(nextByte)) {
        hasNumber = true
        parser.offset++
        if (parser.offset >= parser.size) {
            return
        }
        nextByte = parser.data[parser.offset]
    }
    if (!hasNumber) {
        throw JsonException()
    }
}

func parseDecimal(parser: JsonParser, numSystem: NumberSystem): Bool {
    if (parser.offset >= parser.size) {
        return false
    }
    if (parser.data[parser.offset] != UInt8(UInt32(r'.'))) {
        return false
    }
    match (numSystem) {
        case Decimal => ()
        case _ => throw JsonException()
    }
    parser.offset++
    return parseDigit(parser)
}

func parseExponent(parser: JsonParser, numSystem: NumberSystem): Bool {
    if (parser.offset >= parser.size) {
        return false
    }
    var nextByte = parser.data[parser.offset]
    if (nextByte != UInt8(UInt32(r'e')) && nextByte != UInt8(UInt32(r'E'))) {
        return false
    }
    match (numSystem) {
        case Decimal => ()
        case _ => throw JsonException()
    }
    parser.offset++
    nextByte = parser.data[parser.offset]
    if (nextByte == UInt8(UInt32(r'+')) || nextByte == UInt8(UInt32(r'-'))) {
        parser.offset++
    }
    return parseDigit(parser)
}

func parseDigit(parser: JsonParser): Bool {
    var nextByte = parser.data[parser.offset]
    var hasNumber = false
    while (nextByte >= UInt8(UInt32(r'0')) && nextByte <= UInt8(UInt32(r'9'))) {
        hasNumber = true
        parser.offset++
        if (parser.offset >= parser.size) {
            return true
        }
        nextByte = parser.data[parser.offset]
    }
    if (!hasNumber) {
        throw JsonException()
    }
    return true
}

func isHexNum(char: UInt8): Bool {
    if (!((char >= UInt8(UInt32(r'0')) && char <= UInt8(UInt32(r'9'))) || (char >= UInt8(UInt32(r'a')) && char <= UInt8(UInt32(r'f'))) ||
        (char >= UInt8(UInt32(r'A')) && char <= UInt8(UInt32(r'F'))))) {
        return false
    }
    return true
}

func parseJsonString(parser: JsonParser): JsonString {
    if (parser.data[parser.offset] != UInt8(UInt32(r'\"'))) {
        throw JsonException("Fail to parseJsonString")
    }
    parser.offset++
    let start = parser.offset
    var next = parser.data[parser.offset]
    var needEscape = false
    var tmpStart = start
    while (next != UInt8(UInt32(r'\"'))) {
        if (next == UInt8(UInt32(r'\\'))) {
            if (!needEscape) {
                needEscape = true
            }
            parser.strCache.add(all: parser.data[tmpStart..parser.offset])
            parser.offset++
            handleEscape(parser)
            tmpStart = parser.offset + 1
        }
        parser.offset++
        next = parser.data[parser.offset]
    }
    parser.offset++
    if (!needEscape) {
        return unsafe { JsonString(String.fromUtf8Unchecked(parser.data[start..(parser.offset - 1)])) }
    } else {
        parser.strCache.add(all: parser.data[tmpStart..parser.offset - 1])
        let res = unsafe { JsonString(String.fromUtf8Unchecked(parser.strCache.getRawArray()[0..parser.strCache.size])) }
        parser.strCache.clear()
        return res
    }
}

func getNextHexNum(parser: JsonParser): Byte {
    parser.offset++
    let byte = parser.data[parser.offset]
    if (!isHexNum(byte)) {
        throw JsonException()
    }
    return byte
}

func handleEscape(parser: JsonParser): Unit {
    match (parser.data[parser.offset]) {
        case '\"' => parser.strCache.add(UInt8(UInt32(r'\"')))
        case '\\' => parser.strCache.add(UInt8(UInt32(r'\\')))
        case '/' => parser.strCache.add(UInt8(UInt32(r'/')))
        case 'b' => parser.strCache.add(UInt8(UInt32(r'\b')))
        case 'f' => parser.strCache.add(UInt8(UInt32(r'\f')))
        case 'n' => parser.strCache.add(UInt8(UInt32(r'\n')))
        case 'r' => parser.strCache.add(UInt8(UInt32(r'\r')))
        case 't' => parser.strCache.add(UInt8(UInt32(r'\t')))
        case 'u' =>
            let byte1 = getNextHexNum(parser)
            let byte2 = getNextHexNum(parser)
            let byte3 = getNextHexNum(parser)
            let byte4 = getNextHexNum(parser)
            try {
                let arr: Array<Byte> = [UInt8(UInt32(r'\'')), UInt8(UInt32(r'\\')), UInt8(UInt32(r'u')),
                    UInt8(UInt32(r'{')), byte1, byte2, byte3, byte4, UInt8(UInt32(r'}')), UInt8(UInt32(r'\''))]
                let chr = unsafe { Rune.parse(String.fromUtf8Unchecked(arr)) }
                if (UInt32(chr) <= 127) {
                    parser.strCache.add(UInt8(UInt32(chr)))
                } else {
                    let str = chr.toString()
                    unsafe { parser.strCache.add(all: str.rawData()) }
                }
            } catch (_: Exception) {
                parser.offset++
                if (parser.data[parser.offset] != UInt8(UInt32(r'\\'))) {
                    throw JsonException()
                }
                parser.offset++
                if (parser.data[parser.offset] != UInt8(UInt32(r'u'))) {
                    throw JsonException()
                }
                let str1 = unsafe {
                    String.fromUtf8Unchecked([UInt8(UInt32(r'0')), UInt8(UInt32(r'x')), byte1, byte2, byte3, byte4])
                }
                let str2 = getStr(parser)
                let num1 = UInt16.parse(str1) & 0b0000001111111111
                let num2 = UInt16.parse(str2) & 0b0000001111111111
                let str = Rune((((UInt32(num1)) << 10) | (UInt32(num2))) + 0x10000).toString()
                unsafe { parser.strCache.add(all: str.rawData()) }
            }
        case _ => throw JsonException("Fail to parseJsonString")
    }
}

func getStr(parser: JsonParser): String {
    unsafe {
        let byte1 = getNextHexNum(parser)
        let byte2 = getNextHexNum(parser)
        let byte3 = getNextHexNum(parser)
        let byte4 = getNextHexNum(parser)
        String.fromUtf8Unchecked([UInt8(UInt32(r'0')), UInt8(UInt32(r'x')), byte1, byte2, byte3, byte4])
    }
}
