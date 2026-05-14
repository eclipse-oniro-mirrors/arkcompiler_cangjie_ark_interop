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

macro package ohos.ark_interop_macro

import std.ast.{VarDecl, Token, Tokens, TokenKind, ToTokens}

class IDLVar {
    let decl_: VarDecl
    let identifier_: Token

    init(varDecl: VarDecl) {
        decl_ = varDecl
        identifier_ = varDecl.identifier
    }

    private func genIDLOld(): Tokens {
        decl_.toTokens()
    }

    private func genIDLVarModule(): Tokens {
        let moduleName = Token(TokenKind.IDENTIFIER, identifier_.value + "Module")
        return quote(
            let $(moduleName) = JSModule.registerModule(getLibName()) { context, exports =>
                let getter = context.function { context, callInfo =>
                    $(identifier_).toJSValue(context)
                }
                exports.defineOwnAccessor($(identifier_.value), getter: getter)
            }
        )
    }

    func genIDLVar(): Tokens {
        return quote(
            $(genIDLOld())
            $(genIDLVarModule())
        )
    }
}
