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

/**
 * JsonNull class used for encapsulate JSON data: null.
 */
protected class JsonNull <: JsonValue {
    protected func kind(): JsonKind {
        return JsNull
    }

    protected func toString(): String {
        return "null"
    }

    protected func toJsonString(): String {
        return toString()
    }
}

/**
 * JsonBool class used for encapsulate JSON data: true or false.
 */
protected class JsonBool <: JsonValue {
    /* Json data of the JsonBool(Bool). */
    private let value: Bool

    protected init(bv: Bool) {
        this.value = bv
    }

    protected func getValue(): Bool {
        return value
    }

    protected func kind(): JsonKind {
        return JsBool
    }

    protected func toString(): String {
        return value.toString()
    }

    protected func toJsonString(): String {
        return toString()
    }
}

/**
 * JsonInt class used for encapsulate JSON data: number(integer).
 */
protected class JsonInt <: JsonValue {
    /* Json data of the JsonInt(Int64). */
    private let value: Int64

    protected init(iv: Int64) {
        this.value = iv
    }

    protected func getValue(): Int64 {
        return value
    }

    protected func kind(): JsonKind {
        return JsInt
    }

    protected func toString(): String {
        return value.toString()
    }

    protected func toJsonString(): String {
        return toString()
    }
}

/**
 * JsonFloat class used for encapsulate JSON data: number(float).
 */
protected class JsonFloat <: JsonValue {
    /* Json data of the JsonFloat(Float64). */
    private let value: Float64

    protected init(fv: Float64) {
        this.value = fv
    }

    protected init(v: Int64) {
        this.value = Float64(v)
    }

    protected func getValue(): Float64 {
        return value
    }

    protected func kind(): JsonKind {
        return JsFloat
    }

    protected func toString(): String {
        return value.toString()
    }

    protected func toJsonString(): String {
        return toString()
    }
}

/**
 * JsonString class used for encapsulate JSON data: string.
 */
protected class JsonString <: JsonValue {
    /* Json data of the JsonString(String). */
    let value: String

    protected init(sv: String) {
        this.value = sv
    }

    protected func getValue(): String {
        return value
    }

    protected func kind(): JsonKind {
        return JsString
    }

    protected func toString(): String {
        let buff = WriteBuffer(value.size + 2)
        jsonWriteWithoutFormat(this, buff)
        return unsafe { String.fromUtf8Unchecked(buff.getAndClear()) }
    }

    protected func toJsonString(): String {
        let buff = WriteBuffer(value.size + 2)
        jsonWriteWithoutFormat(this, buff)
        return unsafe { String.fromUtf8Unchecked(buff.getAndClear()) }
    }
}

/**
 * JsonArray class used for encapsulate JSON data: array.
 */
protected class JsonArray <: JsonValue {
    /* Json data of the JsonArray(ArrayList<JsonValue>). */
    private var items: ArrayList<JsonValue>

    init(capacity: Int64) {
        items = ArrayList<JsonValue>(capacity)
    }

    protected init() {
        items = ArrayList<JsonValue>()
    }

    protected init(list: ArrayList<JsonValue>) {
        items = list
    }

    protected init(list: Array<JsonValue>) {
        items = ArrayList<JsonValue>(list)
    }

    protected func kind(): JsonKind {
        return JsArray
    }

    protected func toJsonString(): String {
        return toJsonString(0)
    }

    @OverflowWrapping
    protected func toJsonString(depth: Int64, bracketInNewLine!: Bool = false, indent!: String = "  "): String {
        if (depth < 0) {
            throw IllegalArgumentException("Depth cannot be negative.")
        }
        if (!indent.isContainOnlySpaceAndTab()) {
            throw IllegalArgumentException("Indent must be an empty string or any combination of spaces and tabs.")
        }
        let buff = WriteBuffer(asumecapacity(this))
        jsonWriteArray(this, buff, depth, bracketInNewLine, indent)
        return unsafe { String.fromUtf8Unchecked(buff.getAndClear()) }
    }

    protected func toString(): String {
        let buff = WriteBuffer(asumecapacity(this))
        jsonWriteWithoutFormat(this, buff)
        return unsafe { String.fromUtf8Unchecked(buff.getAndClear()) }
    }

    protected func size(): Int64 {
        return items.size
    }

    protected func add(jv: JsonValue): JsonArray {
        items.add(jv)
        return this
    }

    protected func get(index: Int64): Option<JsonValue> {
        return items.get(index)
    }

    protected operator func [](index: Int64): JsonValue {
        return match (items.get(index)) {
            case Some(v) => v
            case None => throw JsonException("The index ${index} of JsonArray does not exist.")
        }
    }

    protected func getItems(): ArrayList<JsonValue> {
        return items
    }
}

/**
 * JsonObject class used for encapsulate JSON data: object.
 */
protected class JsonObject <: JsonValue {
    /* Json data of the JsonObject(HashMap<String,JsonValue>). */
    private var fields: HashMap<String, JsonValue>

    protected init() {
        fields = HashMap<String, JsonValue>()
    }

    init(capacity: Int64) {
        fields = HashMap<String, JsonValue>(capacity)
    }

    protected init(map: HashMap<String, JsonValue>) {
        fields = map
    }

    protected func kind(): JsonKind {
        return JsObject
    }

    protected func toJsonString(): String {
        return toJsonString(0)
    }

    protected func toJsonString(depth: Int64, bracketInNewLine!: Bool = false, indent!: String = "  "): String {
        if (depth < 0) {
            throw IllegalArgumentException("Depth cannot be negative.")
        }
        if (!indent.isContainOnlySpaceAndTab()) {
            throw IllegalArgumentException("Indent must be an empty string or any combination of spaces and tabs.")
        }
        let buff = WriteBuffer(asumecapacity(this))
        jsonWriteObject(this, buff, depth, bracketInNewLine, indent)
        return unsafe { String.fromUtf8Unchecked(buff.getAndClear()) }
    }

    protected func toString(): String {
        let buff = WriteBuffer(asumecapacity(this))
        jsonWriteWithoutFormat(this, buff)
        return unsafe { String.fromUtf8Unchecked(buff.getAndClear()) }
    }

    protected func size(): Int64 {
        return fields.size
    }

    protected func containsKey(key: String): Bool {
        return fields.contains(key)
    }

    protected func put(key: String, v: JsonValue): Unit {
        fields.add(key, v)
    }

    protected func get(key: String): Option<JsonValue> {
        return fields.get(key)
    }

    protected operator func [](key: String): JsonValue {
        return match (fields.get(key)) {
            case Some(v) => v
            case None => throw JsonException("The Value of JsonObject does not exist")
        }
    }

    protected func getFields(): HashMap<String, JsonValue> {
        return fields
    }
}

extend String {
    func isContainOnlySpaceAndTab() {
        for (i in this) {
            if (i != UInt8(UInt32(r' ')) && i != UInt8(UInt32(r'\t'))) {
                return false
            }
        }
        return true
    }
}
