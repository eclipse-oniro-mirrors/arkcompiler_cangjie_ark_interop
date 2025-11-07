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

macro package ohos.ark_interop_macro

import std.ast.{Decl, EnumDecl, Token, Tokens, ToTokens}

class IDLEnum {
    let decl_: EnumDecl
    let identifier_: Token
    let ctorIdentifiers_: Array<Token>

    init(enumDecl: EnumDecl) {
        decl_ = enumDecl
        identifier_ = enumDecl.identifier
        ctorIdentifiers_ = Array<Token>(enumDecl.constructors.size) {
            i => enumDecl.constructors[i].identifier
        }
    }

    private func genIDLHead(): Tokens {
        quote(public enum $(identifier_) <: JSInteropType<$(identifier_)>)
    }

    private func genIDLConstructors(): Tokens {
        let ctors = Tokens(ctorIdentifiers_[0])
        for (i in 1..ctorIdentifiers_.size) {
            ctors.append(quote( | $(ctorIdentifiers_[i])))
        }
        return ctors
    }

    private func genIDLInteropType(): Tokens {
        let toEnum = Tokens()
        let fromEnum = Tokens()
        for (i in 0..ctorIdentifiers_.size) {
            toEnum.append(quote(
                case $(i) => $(ctorIdentifiers_[i])))
            fromEnum.append(quote(
                case $(ctorIdentifiers_[i]) => $(i)))
        }
        toEnum.append(quote(
            case _ => throw Exception("enum: invalid number.")))
        return quote(
            public func toJSValue(context: JSContext): JSValue {
                let num = match (this) {$(fromEnum)
                }
                return num.toJSValue(context)
            }

            public static func fromJSValue(context: JSContext, input: JSValue): $(identifier_) {
                let num = Float64.fromJSValue(context, input)
                return match (Int64(num)) {$(toEnum)
                }
            }

            public static func toArktsType(): String {
                "enum"
            }
        )
    }

    func genIDLEnum(): Tokens {
        return quote(
            $(genIDLHead()) {
                $(genIDLConstructors())
                $(genIDLInteropType())
            }
        )
    }
}
