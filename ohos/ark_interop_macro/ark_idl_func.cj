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

import std.ast.{FuncDecl, Token, Tokens, FuncParam, TypeNode, TokenKind, ToTokens}
import std.collection.ArrayList

class IDLFunction {
    let decl_: FuncDecl
    let identifier_: Token
    let params_: ArrayList<FuncParam>
    let retType_: TypeNode
    let isAsync_: Bool

    init(funcDecl: FuncDecl, isAsync: Bool) {
        decl_ = funcDecl
        identifier_ = funcDecl.identifier
        params_ = funcDecl.funcParams
        retType_ = funcDecl.declType
        isAsync_ = isAsync
    }

    private func genIDLOld(): Tokens {
        decl_.toTokens()
    }

    private func genIDLFuncModule(): Tokens {
        let moduleName = Token(TokenKind.IDENTIFIER, identifier_.value + "Module")
        let newInteropIdentifier = IDLUtil.genNewInteropIdentifier(identifier_)
        return quote(
            let $(moduleName) = JSModule.registerModule { context, exports =>
                exports[$(identifier_.value)] = context.function($(newInteropIdentifier)).toJSValue()
            }
        )
    }

    private func genIDLWrapper(): Tokens {
        let newFuncIdentifier = IDLUtil.genNewInteropIdentifier(identifier_)
        let argx = Tokens()
        let callArgs = Tokens()
        let callSrcFunc = Tokens()
        for (i in 0..params_.size) {
            let funcParam = params_[i]
            let newArgName = IDLUtil.genRandomVarName("arg")
            let callinfoName = quote(callInfo[$i])
            argx.append(IDLUtil.jsvalue2Cangjie(funcParam.paramType, newArgName, callinfoName, quote(context))).append(
                Token(NL))
            callArgs.append(IDLUtil.genInputArg(funcParam, newArgName, i != params_.size - 1))
        }

        if (isAsync_) {
            callSrcFunc.append(
                quote(
                let promise = context.promiseCapability()
                spawn {
                    let RET = $(identifier_)($callArgs)
                    context.postJSTask {
                        promise.resolve($(IDLUtil.cangjie2JSValue(retType_, Tokens(), quote(RET), quote(context))))
                    }
                }
                promise.toJSValue()
            )
            )
        } else {
            callSrcFunc.append(
                quote(
                let RET = $(identifier_)($callArgs)
                $(IDLUtil.cangjie2JSValue(retType_, Tokens(), quote(RET), quote(context)))
            )
            )
        }

        return quote(
            public func $(newFuncIdentifier)(context: JSContext, callInfo: JSCallInfo): JSValue {
                $(argx)
                $(callSrcFunc)
            }
        )
    }

    func genIDLFunction(): Tokens {
        return quote(
            $(genIDLOld())
            $(genIDLWrapper())
            $(genIDLFuncModule())
        )
    }
}
