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

import std.ast.{Expr, Tokens, Token, FuncType, TypeNode, TokenKind, parseExprFragment, parseExpr, FuncParam, Decl, diagReport, DiagReportLevel, ToTokens}
import std.time.DateTime

enum InteropKind {
    InteropArkTS | InteropAsyncFunc | InteropInvisible | InteropOther
}

class IDLUtil {
    static func parseInteropKind(attrTokens: Tokens): InteropKind {
        var e: Expr
        var p: Int64

        if (attrTokens.size == 1) {
            e = parseExpr(attrTokens)
            if (e.toTokens().toString() != "ArkTS") {
                diagReportTE(attrTokens, "Only `ArkTS` interop macro is supported.")
                return InteropKind.InteropOther
            }
            return InteropKind.InteropArkTS
        } else if (attrTokens.size == 3) {
            (e, p) = parseExprFragment(attrTokens)
            if (e.toTokens().toString() != "ArkTS" || attrTokens[p].kind != TokenKind.COMMA) {
                diagReportTE(attrTokens,
                    "Incorrect attributed macros format. Please write in the format of " +
                        "`@Interop[ArkTS]` or `@Interop[ArkTS, Async]` or `@Interop[ArkTS, Invisible]`.")
                return InteropKind.InteropOther
            }
            (e, p) = parseExprFragment(attrTokens, startFrom: p + 1)
            if (e.toTokens().toString() == "Async") {
                return InteropKind.InteropAsyncFunc
            } else if (e.toTokens().toString() == "Invisible") {
                return InteropKind.InteropInvisible
            } else {
                diagReportTE(attrTokens,
                    "Incorrect attributed macros format. Please write in the format of " +
                        "`@Interop[ArkTS]` or `@Interop[ArkTS, Async]` or `@Interop[ArkTS, Invisible]`.")
                return InteropKind.InteropOther
            }
        } else {
            diagReportTE(attrTokens,
                "Incorrect attributed macros format. Please write in the format of " +
                    "`@Interop[ArkTS]` or `@Interop[ArkTS, Async]` or `@Interop[ArkTS, Invisible]`.")
        }
        return InteropKind.InteropOther
    }

    static func genNewInteropIdentifier(funcIdentifier: Token) {
        return Token(TokenKind.IDENTIFIER, funcIdentifier.value + "_ArkTS_Interop_Identifier")
    }

    static func genRandomVarName(prefix: String): Tokens {
        return Token(TokenKind.IDENTIFIER, prefix + DateTime.now().toUnixTimeStamp().toNanoseconds().toString())
            .toTokens()
    }

    static func genJSValueTypeLambda(funcType: FuncType, callback: Tokens, context: Tokens): Tokens {
        let paramTypes = funcType.types
        let returnType = funcType.returnType
        var convertArgs = Tokens()
        var callArgs = Tokens()

        let newContextName = genRandomVarName("context")
        let newCallInfoName = genRandomVarName("callInfo")
        let lambdaArgs = quote($newContextName: JSContext, $newCallInfoName: JSCallInfo)

        for (i in 0..paramTypes.size) {
            let paramType = paramTypes[i]
            let newLambdaArgName = genRandomVarName("callArg")
            let callInfoArg = quote($newCallInfoName[$i])

            convertArgs.append(jsvalue2Cangjie(paramType, newLambdaArgName, callInfoArg, newContextName)).append(
                Token(NL))

            callArgs.append(newLambdaArgName)
            if (i != paramTypes.size - 1) {
                callArgs.append(Token(COMMA))
            }
        }

        let retName = genRandomVarName("RET")
        let callbackSen = quote(let $retName = $callback($callArgs))
        let convertRet = quote($(cangjie2JSValue(returnType, Tokens(), retName, newContextName)))

        return quote($context.function({$lambdaArgs =>
            $(convertArgs)
            $(callbackSen)
            $(convertRet)
        }).toJSValue())
    }

    static func genFuncTypeLambda(funcType: FuncType, callback: Tokens, context: Tokens): Tokens {
        let paramTypes = funcType.types
        let returnType = funcType.returnType
        var inputArgs = Tokens()
        var convertArgs = Tokens()
        var callArgs = Tokens()

        for (i in 0..paramTypes.size) {
            let paramType = paramTypes[i]
            let newLambdaArgName = genRandomVarName("callArg")
            inputArgs.append(quote($newLambdaArgName: $paramType))
            if (i != paramTypes.size - 1) {
                inputArgs.append(Token(COMMA))
            }

            let newArgName = genRandomVarName("argFunc")
            convertArgs.append(cangjie2JSValue(paramType, newArgName, newLambdaArgName, context)).append(Token(NL))
            callArgs.append(newArgName)
            if (i != paramTypes.size - 1) {
                callArgs.append(Token(COMMA))
            }
        }

        let retName = genRandomVarName("RET")
        let callbackSen = quote(let $retName = $callback.call([$callArgs]))

        let convertRet = quote($(jsvalue2Cangjie(returnType, Tokens(), retName, context)))

        return quote({$inputArgs =>
            $(convertArgs)
            $(callbackSen)
            $(convertRet)
        })
    }

    static func cangjie2JSValue(paramType: TypeNode, desVarName: Tokens, srcVarName: Tokens, context: Tokens) {
        var desSen = Tokens()
        if (desVarName.size != 0) {
            desSen = quote(let $desVarName =)
        }
        match (paramType) {
            case p: FuncType => return quote($(desSen)$(genJSValueTypeLambda(p, srcVarName, context)))
            case _: TypeNode => return quote($(desSen)$(srcVarName).toJSValue($context))
        }
    }

    static func jsvalue2Cangjie(paramType: TypeNode, desVarName: Tokens, srcVarName: Tokens, context: Tokens) {
        var desSen = Tokens()
        if (desVarName.size != 0) {
            desSen = quote(let $desVarName =)
        }
        match (paramType) {
            case p: FuncType =>
                let argCallbackName = genRandomVarName("argCallback")
                return quote(let $argCallbackName = $srcVarName.asFunction($context)
                            $(desSen)$(genFuncTypeLambda(p, argCallbackName, context)))
            case p: TypeNode => return quote($(desSen)$p.fromJSValue($context, $srcVarName))
        }
    }

    static func genInputArg(funcParam: FuncParam, newArgName: Tokens, notLast: Bool): Tokens {
        var notName = Tokens()
        if (funcParam.not != Token()) {
            notName = quote($(funcParam.identifier):)
        }
        var comma = Tokens()
        if (notLast) {
            comma.append(Token(COMMA))
        }

        return quote($(notName)$(newArgName)$(comma))
    }

    static func genArgList(newArgName: Tokens, notLast: Bool): Tokens {
        var comma = Tokens()
        if (notLast) {
            comma.append(Token(COMMA))
        }

        return quote($(newArgName)$(comma))
    }

    static func hasMutModifier(decl: Decl) {
        var ret = false
        let modifiers = decl.modifiers
        for (mod in modifiers) {
            if (mod.keyword.kind == MUT) {
                ret = true
                break
            }
        }
        ret
    }

    static func diagReportTE(tokens: Tokens, message: String) {
        diagReport(DiagReportLevel.ERROR, tokens, message, "")
        throw Exception(message)
    }
}
