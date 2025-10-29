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

import std.ast.*
import std.collection.*
import std.time.*

class IDLInterface {
    private let identifier_: Token
    private let funcs_: ArrayList<FuncDecl>
    private let props_: ArrayList<PropDecl>
    private let hostObjVar_: Tokens = quote(hostObj)
    private let contextVar_: Tokens = quote(context_)

    init(interfaceDecl: InterfaceDecl) {
        identifier_ = interfaceDecl.identifier
        funcs_ = ArrayList<FuncDecl>()
        props_ = ArrayList<PropDecl>()
        for (decl in interfaceDecl.body.decls) {
            match (decl) {
                case funcDecl: FuncDecl => funcs_.add(funcDecl)
                case propDecl: PropDecl => props_.add(propDecl)
                case other => IDLUtil.diagReportTE(Tokens(other.identifier),
                    "Unsupported interface member." +
                        "Interface members support only functions and properties within the `Interop` macro scope.")
            }
        }
    }

    private func genIDLnewInterfaceMem() {
        let body = Tokens()
        for (decl in funcs_) {
            body.append(decl).append(Token(NL))
        }

        for (decl in props_) {
            body.append(decl).append(Token(NL))
        }
        return body
    }

    private func genIDLnewInterfaceFromJSValueFunc() {
        let newProxyIdentifier = IDLUtil.genNewInteropIdentifier(identifier_)
        return quote(
            static func fromJSValue(context: JSContext, input: JSValue): $(identifier_) {
                $(newProxyIdentifier).fromJSValue(context, input)
            }
        )
    }

    private func genIDLnewInterface() {
        let newInterfaceBody = genIDLnewInterfaceMem()
        let fromJSValueFunc = genIDLnewInterfaceFromJSValueFunc()

        return quote(
            public interface $(identifier_) <: JSInteropType<$(identifier_)> {
                $(newInterfaceBody)
                $(fromJSValueFunc)
                static func toArktsType(): String {
                    "interface"
                }
            }
        )
    }

    private func genIDLProxy() {
        let newProxyHead = genIDLProxyHead()
        let newProxyBody = genIDLProxyBody()

        return quote(
            $newProxyHead {
                $newProxyBody
            }
        )
    }

    private func genIDLProxyHead(): Tokens {
        let newProxyIdentifier = IDLUtil.genNewInteropIdentifier(identifier_)

        return quote(
            public class $newProxyIdentifier <: $(identifier_) & JSInteropType<$newProxyIdentifier>
        )
    }

    private func genIDLProxyBody() {
        let newProxyIdentifier = IDLUtil.genNewInteropIdentifier(identifier_)
        let newMembers = genIDLProxyMembers()

        return quote(
            protected let $(contextVar_): JSContext
            protected let $(hostObjVar_): JSObject
            init(context: JSContext, obj: JSObject) {
                this.$(contextVar_) = context
                this.$(hostObjVar_) = obj
            }
            public func toJSValue(context: JSContext): JSValue {
                $(hostObjVar_).toJSValue()
            }
            public static func fromJSValue(context: JSContext, input: JSValue): $(newProxyIdentifier) {
                return $(newProxyIdentifier)(context, input.asObject())
            }
            public static func toArktsType(): String {
                "interface"
            }
            $(newMembers)
        )
    }

    private func genIDLProxyMembers() {
        let body = Tokens()
        for (decl in funcs_) {
            body.append(genIDLProxyFunc(decl)).append(Token(NL))
        }

        for (decl in props_) {
            body.append(genIDLProxyProp(decl)).append(Token(NL))
        }
        return body
    }

    private func genIDLProxyProp(propDecl: PropDecl) {
        let retVar = quote(RET)
        let intputVar = quote(INPUT)
        let srcVar = quote(this.$(hostObjVar_)[$(propDecl.identifier.value)])
        let cangjieExpr = IDLUtil.jsvalue2Cangjie(propDecl.declType, retVar, srcVar, contextVar_)
        let jsValueExpr = IDLUtil.cangjie2JSValue(propDecl.declType, retVar, intputVar, contextVar_)
        if (propDecl.modifiers.size != 0 && propDecl.modifiers[0].keyword.kind == MUT) {
            quote(
                public mut prop $(propDecl.identifier): $(propDecl.declType) {
                    get() {
                        $cangjieExpr
                        $retVar
                    }
                    set($(intputVar)) {
                        $jsValueExpr
                        this.$(hostObjVar_)[$(propDecl.identifier.value)] = $retVar
                    }
                }
            )
        } else {
            quote(
                public prop $(propDecl.identifier): $(propDecl.declType) {
                    get() {
                        $cangjieExpr
                        $retVar
                    }
                }
            )
        }
    }

    private func genIDLProxyFunc(funcDecl: FuncDecl) {
        let params = Tokens()
        let argx = Tokens()
        let jsParams = Tokens()
        for (i in 0..funcDecl.funcParams.size) {
            let funcParam = funcDecl.funcParams[i]
            params.append(funcParam.toTokens())
            let newArgName = IDLUtil.genRandomVarName("arg")
            argx.append(
                IDLUtil.cangjie2JSValue(funcParam.paramType, newArgName, funcParam.identifier.toTokens(), contextVar_))
                .append(Token(NL))
            jsParams.append(IDLUtil.genArgList(newArgName, i != funcDecl.funcParams.size - 1))
        }

        let returnValue = IDLUtil.jsvalue2Cangjie(funcDecl.declType, Tokens(), quote(RET), contextVar_)
        return quote(
            public func $(funcDecl.identifier)($(params)): $(funcDecl.declType) {
                let fn = this.$(hostObjVar_)[$(funcDecl.identifier.value)].asFunction()
                $(argx)
                let RET = fn.call([$(jsParams)])
                $(returnValue)
            }
        )
    }

    func genIDLInterface() {
        return quote(
            $(genIDLnewInterface())
            $(genIDLProxy())
        )
    }
}
