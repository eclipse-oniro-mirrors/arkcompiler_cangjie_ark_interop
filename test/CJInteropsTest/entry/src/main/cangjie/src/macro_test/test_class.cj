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

package entry.macro_test

import ohos.ark_interop_macro.*
import ohos.ark_interop.*

// error: Only function declarations are allowed to be applied with `Interop Async` macro.
//@Interop[ArkTS, Async]
//public class ClassWithInteropAsync {
//
//}

@Interop[ArkTS]
public class CJNativeClass {
    public init() {}
}

let _ = JSModule.registerFunc("test02") {
    jsContext, jsCallInfo =>
    let obj = jsCallInfo[0].asObject()
    jsContext.boolean(true).toJSValue()
}

private var ticketCounter: Int64 = 0

@Interop[ArkTS]
public class TicketMachine {
    public init() {}

    public static func reset(nextId: Int64): Unit {
        ticketCounter = if (nextId > 0) {
            nextId
        } else {
            0
        }
    }

    public static func nextId(): Int64 {
        ticketCounter += 1
        return ticketCounter
    }
}

@Interop[ArkTS]
public class Person {
    public var name: String = ""
    public var age: Int32 = 0

    public init() {}

    public static func build(): Person {
        return Person()
    }

    public static func buildFromSeason(season: Season): Person {
        let person = Person()
        match (season) {
            case Season.Spring =>
                person.name = "breeze"
                person.age = 1
            case Season.Summer =>
                person.name = "sun"
                person.age = 2
            case Season.Autumn =>
                person.name = "harvest"
                person.age = 3
            case Season.Winter =>
                person.name = "ember"
                person.age = 4
        }
        return person
    }
}

@Interop[ArkTS]
public class AbnormalClass {
    public init() {
    }
    // 静态成员属性被禁止
    //    public static prop staticMemberProperty: Int64 {
    //        get() {
    //            114514
    //        }
    //    }
    //    public mut static prop staticMemberProperty: Int64 {
    //        get() {
    //            114514
    //        }
    //        set(v) {}
    //    }
    // 成员变量必须拥有类型注解，否则宏展开报错
    //    public var mutableVairableThatHasInitializationButNoTypeAnnotation = stringValue
    //    public let immutableVariableThatHasInitializationButNoTypeAnnotation = stringValue
}

@Interop[ArkTS]
public class NormalClass {
    public init(mutableVariableThatHasNoInitialization: Int64) {
        this.mutableVariableThatHasNoInitialization = mutableVariableThatHasNoInitialization
        this.immutableVariableThatHasNoInitialization = JSStringEx(stringValue)
    }
    public var mutableVariableThatHasNoInitialization: Int64
    public var mutableVariableThatHasInitialization: Float64 = float64Value
    public let immutableVariableThatHasNoInitialization: Option<JSStringEx>
    public let immutableVariableThatHasInitialization: Array<Byte> = [1u8, 2, 3, 4]
    public func instanceMemberFunction(): Unit {
    }
    public prop immutableInstanceMemberProperty: Int64 {
        get() {
            int64Value
        }
    }
    public mut prop mutableInstanceMemberProperty: String {
        get() {
            stringValue
        }
        set(v) {
        }
    }
}

open class ParentClass {}

@Interop[ArkTS]
public class ClassThatInheritsAnotherClass <: ParentClass {
    public init() {}
}

@Interop[ArkTS]
public class ClassThatImplementsInterfaces {
    public init() {}
}

@Interop[ArkTS]
public class ClassThatBothInheritsAnotherClassAndImplementsInterfaces {
    public init() {}
}

@Interop[ArkTS]
public class ClassWithMultiCtors {
    public var name: String = "default"

    public init() {
        this.name = "empty"
    }

    public init(a: Int64) {
        this.name = "Int64"
    }

    public ClassWithMultiCtors(a: String) {
        this.name = "String"
    }

    public init(a: Int64, b: Int64) {
        this.name = "2Int64"
    }

    public init(a: String, b: String) {
        this.name = "2String"
    }
}

@Interop[ArkTS]
public func f(p: JSArrayEx<String>, p1: JSArrayEx<JSStringEx>, p2: JSHashMapEx<String, JSStringEx>): Unit {
    let a = JSArrayEx<Int64>()
}
