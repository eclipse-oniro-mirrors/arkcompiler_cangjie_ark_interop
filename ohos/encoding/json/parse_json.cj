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
import std.math.*

const VALUE_TYPE_BOOLEAN: String = "1"
const VALUE_TYPE_INT: String = "5"
const VALUE_TYPE_DOUBLE: String = "8"
const VALUE_TYPE_STRING: String = "9"
const VALUE_TYPE_WANTPARAMS: String = "101"
const VALUE_TYPE_ARRAY: String = "102"
const BOOLEAN_ARRAY_SIGNATURE = "Z"
const DOUBLE_ARRAY_SIGNATURE = "D"
const INT_ARRAY_SIGNATURE = "I"
const STRING_ARRAY_SIGNATURE = "T"

enum BracketKinds {
    | Braces
    | Square
}

func getJsonType(ob: JsonValue): String {
    return match (ob.kind()) {
        case JsonKind.JsBool => VALUE_TYPE_BOOLEAN
        case JsonKind.JsInt => VALUE_TYPE_INT
        case JsonKind.JsFloat => VALUE_TYPE_DOUBLE
        case JsonKind.JsString => VALUE_TYPE_STRING
        case JsonKind.JsObject => VALUE_TYPE_WANTPARAMS
        case JsonKind.JsArray => VALUE_TYPE_ARRAY
        case _ => throw IllegalArgumentException("The type is not supported yet.")
    }
}

func getJsonArrayType(jsonValue: JsonValue): String {
    let arrType = match (jsonValue.kind()) {
        case JsonKind.JsBool => BOOLEAN_ARRAY_SIGNATURE
        case JsonKind.JsInt => INT_ARRAY_SIGNATURE
        case JsonKind.JsFloat => DOUBLE_ARRAY_SIGNATURE
        case JsonKind.JsString => STRING_ARRAY_SIGNATURE
        case _ => throw IllegalArgumentException("The type is not supported yet.")
    }
    return arrType
}

func toJsonString(jsonValue: JsonValue): JsonString {
    return match (jsonValue) {
        case v: JsonBool => JsonString(v.toString())
        case v: JsonInt => JsonString(v.toString())
        case v: JsonFloat => JsonString(v.toString())
        case v: JsonString => v
        case _ => throw IllegalArgumentException("The type is not supported yet.")
    }
}

func checkandGetJsonValue(arrayType: String, jsonValue: JsonValue): String {
    match ((arrayType, jsonValue)) {
        case (BOOLEAN_ARRAY_SIGNATURE, v: JsonBool) => v.toString()
        case (INT_ARRAY_SIGNATURE, v: JsonInt) =>
            let intValue = v.getValue()
            if (Int64(Int32.Min) <= intValue && intValue <= Int64(Int32.Max)) {
                intValue.toString()
            } else {
                Float64(intValue).toString()
            }
        case (DOUBLE_ARRAY_SIGNATURE, v: JsonFloat) => v.toString()
        case (STRING_ARRAY_SIGNATURE, v: JsonString) => v.getValue().toString()
        case (_, _) => throw IllegalArgumentException("The type is not supported yet.")
    }
}

// Array to {102, JsonString}
func arrayToJsonValue(arr: JsonArray): JsonValue {
    let arrayType = getJsonArrayType(arr[0])
    let str = StringBuilder(arrayType)
    str.append(arr.size())
    str.append("{")
    for (i in 0..arr.size() - 1) {
        str.append(checkandGetJsonValue(arrayType, arr[i]))
        str.append(",")
    }
    str.append(checkandGetJsonValue(arrayType, arr[arr.size() - 1]))
    str.append("}")
    return JsonObject(HashMap<String, JsonValue>([(VALUE_TYPE_ARRAY, JsonString(str.toString()))]))
}

func trimQuotation(s: String): String {
    return s[1..s.size - 1]
}

func addQuotation(s: String): String {
    return "\"" + s + "\""
}

func parseStringToJsonArray(s: String): JsonArray {
    let arrType = s[0]
    let arrString = s[3..s.size - 1].split(",") // for example: "T3{X,X,X}", value start from index 3
    match (arrType) {
        // BOOLEAN_ARRAY_SIGNATURE 
        case b'Z' => return JsonArray(Array<JsonValue>(arrString.size, {i => JsonValue.fromStr(arrString[i]).asBool()}))
        // DOUBLE_ARRAY_SIGNATURE
        case b'D' => return JsonArray(Array<JsonValue>(arrString.size, {i => JsonValue.fromStr(arrString[i]).asFloat()}))
        // INT_ARRAY_SIGNATURE
        case b'I' => return JsonArray(Array<JsonValue>(arrString.size, {i => JsonValue.fromStr(arrString[i]).asInt()}))
        // STRING_ARRAY_SIGNATURE
        case b'T' => return JsonArray(
            Array<JsonValue>(arrString.size, {i => JsonValue.fromStr(addQuotation(arrString[i])).asString()}))
        case _ => return JsonArray()
    }
}

protected func jsonObjectWrapper(jsObj: JsonObject): JsonObject {
    let map = jsObj.getFields()
    let newMap = HashMap<String, JsonValue>()
    for ((k, v) in map) {
        let valueType = getJsonType(v)
        if (valueType == VALUE_TYPE_WANTPARAMS) {
            let jo = (v as JsonObject).getOrThrow()
            newMap.add(k, JsonObject(HashMap<String, JsonValue>([(VALUE_TYPE_WANTPARAMS, jsonObjectWrapper(jo))])))
        } else if (valueType == VALUE_TYPE_ARRAY) {
            let jArray = (v as JsonArray).getOrThrow()
            if (jArray.size() == 0) {
                continue
            }
            newMap.add(k, arrayToJsonValue(jArray))
        } else if (valueType == VALUE_TYPE_INT) {
            let intValue = (v as JsonInt).getOrThrow().getValue()
            if (Int64(Int32.Min) <= intValue && intValue <= Int64(Int32.Max)) {
                newMap.add(k, JsonObject(HashMap<String, JsonValue>([(valueType, toJsonString(v))])))
            } else {
                newMap.add(k,
                    JsonObject(
                        HashMap<String, JsonValue>([(VALUE_TYPE_DOUBLE, JsonString(Float64(intValue).toString()))])))
            }
        } else {
            newMap.add(k, JsonObject(HashMap<String, JsonValue>([(valueType, toJsonString(v))])))
        }
    }
    return JsonObject(newMap)
}

func addSlashesInString(jsString: String, brakinds: BracketKinds): String {
    let quoString = match (brakinds) {
        case Braces => "\"9\":\"{"
        case Square => "\"9\":\"["
    }
    let leftBraByte = match (brakinds) {
        case Braces => b'{'
        case Square => b'['
    }
    let rightBraByte = match (brakinds) {
        case Braces => b'}'
        case Square => b']'
    }
    let count = jsString.count(quoString)
    if (count == 0) {
        return jsString
    }
    let arrayNew = Array<String>(count, repeat: "")
    let arrayOld = Array<String>(count, repeat: "")
    var index = 0
    for (c in 0..count) {
        let start = jsString.indexOf(quoString, index)
        index = (start ?? 0) + quoString.size
        var leftBra = 0
        for (i in index..jsString.size) {
            if (jsString[i] == rightBraByte) {
                if (leftBra != 0) {
                    leftBra--
                    continue
                }
                let old = jsString[index..i]
                let new = old.replace("\"", "\\\"")
                arrayNew[c] = new
                arrayOld[c] = old
                break
            }
            if (jsString[i] == leftBraByte) {
                leftBra++
            }
        }
    }
    var new = ""
    var temp = jsString
    for (c in 0..count) {
        new = temp.replace(arrayOld[c], arrayNew[c])
        temp = new
    }
    return new
}

protected func jsonStringUnWrapper(jsString: String): JsonObject {
    if (jsString == "") {
        return JsonObject()
    }
    let stringSlashesB = addSlashesInString(jsString, Braces)
    let stringSlashesS = addSlashesInString(stringSlashesB, Square)
    let jsObj = JsonValue.fromStr(stringSlashesS).asObject()
    let map = jsObj.getFields()
    let newMap = HashMap<String, JsonValue>()

    for ((k, v) in map) {
        let valueMap = v.asObject().getFields()
        for ((jsType, value) in valueMap) {
            match (jsType) {
                // VALUE_TYPE_BOOLEAN
                case "1" => newMap.add(k, JsonValue.fromStr(trimQuotation(value.toString())).asBool())
                // VALUE_TYPE_INT
                case "5" => newMap.add(k, JsonValue.fromStr(trimQuotation(value.toString())).asInt())
                // VALUE_TYPE_DOUBLE
                case "8" => newMap.add(k, JsonValue.fromStr(trimQuotation(value.toString())).asFloat())
                // VALUE_TYPE_STRING
                case "9" => newMap.add(k, JsonValue.fromStr(value.toString()).asString())
                // VALUE_TYPE_WANTPARAMS
                case "101" => newMap.add(k, jsonStringUnWrapper(value.toString()))
                // VALUE_TYPE_ARRAY
                case "102" => newMap.add(k, parseStringToJsonArray(trimQuotation(value.toString())))
                case _ =>
                    continue
            }
        }
    }
    return JsonObject(newMap)
}

protected func jsStringToJsObject(str: String): JsonObject {
    if (str == "") {
        return JsonObject()
    }
    try {
        return JsonValue.fromStr(str).asObject()
    } catch (e: Exception) {
        throw IllegalArgumentException("invalid json string")
    }
}
