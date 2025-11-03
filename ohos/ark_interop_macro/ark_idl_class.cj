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

import std.ast.{Decl, FuncDecl, PrimaryCtorDecl, VarDecl, PropDecl, Token, Tokens, ClassDecl, TypeNode, FuncParam, TokenKind, setItem, getChildMessages, ToTokens}
import std.collection.ArrayList

class IDLClassMemberInvisible {
    private var keyWord: String
    private var hasPublic: Bool = false

    init(decl: Decl) {
        match (decl) {
            case funcDecl: FuncDecl => keyWord = getFuncMemberKey(funcDecl)
            case primaryCtorDecl: PrimaryCtorDecl => keyWord = getCtorMemberKey(primaryCtorDecl)
            case varDecl: VarDecl => keyWord = getVarMemberKey(varDecl)
            case propDecl: PropDecl => keyWord = getPropMemberKey(propDecl)
            case other =>
                IDLUtil.diagReportTE(
                    Tokens(other.identifier),
                    "Unsupported class member." +
                        "Class members support only functions, properties, variables and constructor within the `Interop` macro scope."
                )
                keyWord = ""
        }

        for (modifier in decl.modifiers) {
            if (modifier.keyword.kind == PUBLIC) {
                hasPublic = true
                break
            }
        }
    }

    private static func getFuncMemberKey(funcDecl: FuncDecl) {
        var paramsString = ""
        for (i in 0..funcDecl.funcParams.size) {
            paramsString += funcDecl.funcParams[i].toTokens().toString()
        }
        return funcDecl.identifier.value + paramsString
    }

    private static func getCtorMemberKey(primaryCtorDecl: PrimaryCtorDecl) {
        var paramsString = ""
        for (i in 0..primaryCtorDecl.funcParams.size) {
            paramsString += primaryCtorDecl.funcParams[i].toTokens().toString()
        }
        return primaryCtorDecl.identifier.value + paramsString
    }

    private static func getVarMemberKey(varDecl: VarDecl) {
        return varDecl.toTokens().toString()
    }

    private static func getPropMemberKey(propDecl: PropDecl) {
        return propDecl.toTokens().toString()
    }

    func markMemberInvisible() {
        setItem(keyWord, true)
    }

    func isMemberInvisible(): Bool {
        if (hasPublic == false) {
            return true
        }

        let messages = getChildMessages("Interop")
        for (m in messages) {
            if (m.hasItem(keyWord)) {
                return true
            }
        }

        return false
    }
}

class IDLClass {
    private let identifier_: Token
    private var initFunc_: FuncDecl
    private var primaryCtor_: PrimaryCtorDecl
    private var isPrimaryCtor: Bool
    private let funcs_: ArrayList<FuncDecl>
    private let props_: ArrayList<PropDecl>
    private let vars_: ArrayList<VarDecl>
    private let invisibleDecls: ArrayList<Decl>
    private let constructorName: Token = Token(TokenKind.IDENTIFIER, "jsConstructor")

    init(classDecl: ClassDecl) {
        identifier_ = classDecl.identifier
        initFunc_ = FuncDecl()
        primaryCtor_ = PrimaryCtorDecl()
        isPrimaryCtor = false
        funcs_ = ArrayList<FuncDecl>()
        props_ = ArrayList<PropDecl>()
        vars_ = ArrayList<VarDecl>()
        invisibleDecls = ArrayList<Decl>()
        for (decl in classDecl.body.decls) {
            if (IDLClassMemberInvisible(decl).isMemberInvisible()) {
                invisibleDecls.add(decl)
                continue
            }
            match (decl) {
                case funcDecl: FuncDecl =>
                    if (funcDecl.identifier.value == "init") {
                        initFunc_ = funcDecl
                    } else {
                        funcs_.add(funcDecl)
                    }
                case primaryCtorDecl: PrimaryCtorDecl =>
                    primaryCtor_ = primaryCtorDecl
                    isPrimaryCtor = true
                case propDecl: PropDecl => props_.add(propDecl)
                case varDecl: VarDecl => vars_.add(varDecl)
                case other => IDLUtil.diagReportTE(
                    Tokens(other.identifier),
                    "Unsupported class member." +
                        "Class members support only functions, properties, variables and constructor within the `Interop` macro scope."
                )
            }
        }
    }

    private func genIDLHead(): Tokens {
        quote(public class $(identifier_) <: SharedObject & JSInteropType<$(identifier_)>)
    }

    private func genGetFuncName(identifier: Token) {
        Token(TokenKind.IDENTIFIER, "get_" + identifier.value + "_ArkTS_Interop_Identifier")
    }

    private func genSetFuncName(identifier: Token) {
        Token(TokenKind.IDENTIFIER, "set_" + identifier.value + "_ArkTS_Interop_Identifier")
    }

    private func genIDLStaticInit(): Tokens {
        let contextName = quote(context)
        let varsAccessor = Tokens()
        for (varMem in vars_) {
            var setFunc = Tokens()
            if (varMem.keyword.kind == VAR) {
                setFunc = quote(, setter: $(contextName).function($(genSetFuncName(varMem.identifier))))
            }
            varsAccessor.append(
                quote(
                clazz.addAccessor($(varMem.identifier.value),
                    getter: $(contextName).function($(genGetFuncName(varMem.identifier)))$(setFunc))
            )
            )
        }

        let propsAccessor = Tokens()
        for (propMem in props_) {
            var setFunc = Tokens()
            if (IDLUtil.hasMutModifier(propMem)) {
                setFunc = quote(, setter: $(contextName).function($(genSetFuncName(propMem.identifier))))
            }
            propsAccessor.append(
                quote(
                clazz.addAccessor($(propMem.identifier.value),
                    getter: $(contextName).function($(genGetFuncName(propMem.identifier)))$(setFunc))
            )
            )
        }

        let funcsMethod = Tokens()
        for (funcMem in funcs_) {
            funcsMethod.append(
                quote(
                clazz.addMethod($(funcMem.identifier.value),
                    $(contextName).function($(IDLUtil.genNewInteropIdentifier(funcMem.identifier))))
            )
            )
        }
        return quote(
            static init() {
                JSModule.registerClass($(identifier_.value)) { $(contextName) =>
                    let clazz = $(contextName).clazz($(constructorName))
                    $(varsAccessor)
                    $(propsAccessor)
                    $(funcsMethod)
                    return clazz
                }
            }
        )
    }

    private func genIDLConstructor(): Tokens {
        var funcParams: ArrayList<FuncParam>
        var initFuncTokens: Tokens
        if (isPrimaryCtor) {
            funcParams = primaryCtor_.funcParams
            initFuncTokens = primaryCtor_.toTokens()
        } else {
            funcParams = initFunc_.funcParams
            initFuncTokens = initFunc_.toTokens()
        }
        let argx = Tokens()
        let callArgs = Tokens()
        let callSrcFunc = Tokens()
        for (i in 0..funcParams.size) {
            let funcParam = funcParams[i]
            let newArgName = IDLUtil.genRandomVarName("arg")
            let callinfoName = quote(callInfo[$i])
            argx.append(IDLUtil.jsvalue2Cangjie(funcParam.paramType, newArgName, callinfoName, quote(context))).append(
                Token(NL))
            callArgs.append(IDLUtil.genInputArg(funcParam, newArgName, i != funcParams.size - 1))
        }

        return quote(
            $(initFuncTokens)
            public static func $(constructorName)(context: JSContext, callInfo: JSCallInfo): JSValue {
                $(argx)
                let clazz = $(identifier_)($callArgs)
                let thisArg = callInfo.thisArg
                let thisObject = thisArg.asObject()
                let jsExternal = context.external(clazz)
                thisObject.attachCJObject(jsExternal)
                return thisObject.toJSValue()
            }
        )
    }

    private func genClazzTokens(retName: Tokens) {
        return quote(
            let thisArg = callInfo.thisArg
            let thisObject = thisArg.asObject()
            let jsExternal = thisObject.getAttachInfo() ?? throw Exception("class: get external failed.")
            let $(retName) = jsExternal.cast<$(identifier_)>() ?? throw Exception("class: get clazz failed.")
        )
    }

    private func genVarGetFunc(identifier: Token, declType: TypeNode) {
        return quote(
            public static func $(genGetFuncName(identifier))(context: JSContext, callInfo: JSCallInfo): JSValue {
                $(genClazzTokens(quote(clazz)))
                let RET = clazz.$(identifier)
                return $(IDLUtil.cangjie2JSValue(declType, Tokens(), quote(RET), quote(context)))
            }
        )
    }

    private func genVarSetFunc(identifier: Token, declType: TypeNode) {
        return quote(
            public static func $(genSetFuncName(identifier))(context: JSContext, callInfo: JSCallInfo): JSValue {
                $(genClazzTokens(quote(clazz)))
                $(IDLUtil.jsvalue2Cangjie(declType, quote(value), quote(callInfo[0]), quote(context)))
                clazz.$(identifier) = value
                return context.undefined().toJSValue()
            }
        )
    }

    private func genIDLVars(): Tokens {
        let varsOld = Tokens()
        let varGetFunc = Tokens()
        let varSetFunc = Tokens()
        for (i in 0..vars_.size) {
            let varDecl = vars_[i]
            varsOld.append(varDecl).append(Token(NL))
            varGetFunc.append(genVarGetFunc(varDecl.identifier, varDecl.declType))
            if (varDecl.keyword.kind == VAR) {
                varSetFunc.append(genVarSetFunc(varDecl.identifier, varDecl.declType))
            }
        }

        return quote(
            $(varsOld)
            $(varGetFunc)
            $(varSetFunc)
        )
    }

    private func getFuncWrapper(funcDecl: FuncDecl): Tokens {
        let params = funcDecl.funcParams
        let identifier = funcDecl.identifier
        let newFuncIdentifier = IDLUtil.genNewInteropIdentifier(identifier)
        let argx = Tokens()
        let callArgs = Tokens()
        let callSrcFunc = Tokens()
        for (i in 0..params.size) {
            let funcParam = params[i]
            let newArgName = IDLUtil.genRandomVarName("arg")
            let callinfoName = quote(callInfo[$i])
            argx.append(IDLUtil.jsvalue2Cangjie(funcParam.paramType, newArgName, callinfoName, quote(context))).append(
                Token(NL))
            callArgs.append(IDLUtil.genInputArg(funcParam, newArgName, i != params.size - 1))
        }

        return quote(
            public static func $(newFuncIdentifier)(context: JSContext, callInfo: JSCallInfo): JSValue {
                $(genClazzTokens(quote(clazz)))
                $(argx)
                let RET = clazz.$(identifier)($callArgs)
                $(IDLUtil.cangjie2JSValue(funcDecl.declType, Tokens(), quote(RET), quote(context)))
            }
        )
    }

    private func genIDLFuncs(): Tokens {
        let funcOld = Tokens()
        let funcInterop = Tokens()
        for (i in 0..funcs_.size) {
            let funcDecl = funcs_[i]
            funcOld.append(funcDecl).append(Token(NL))
            funcInterop.append(getFuncWrapper(funcDecl))
        }

        return quote(
            $(funcOld)
            $(funcInterop)
        )
    }

    private func genIDLProps(): Tokens {
        let propsOld = Tokens()
        let propGetFunc = Tokens()
        let propSetFunc = Tokens()
        for (i in 0..props_.size) {
            let propDecl = props_[i]
            propsOld.append(propDecl).append(Token(NL))
            propGetFunc.append(genVarGetFunc(propDecl.identifier, propDecl.declType))
            if (IDLUtil.hasMutModifier(propDecl)) {
                propSetFunc.append(genVarSetFunc(propDecl.identifier, propDecl.declType))
            }
        }

        return quote(
            $(propsOld)
            $(propGetFunc)
            $(propSetFunc)
        )
    }

    private func genIDLToJSValue(): Tokens {
        let contextName = quote(context)
        let objName = quote(obj)
        let varsAccessor = Tokens()
        for (varMem in vars_) {
            var setFunc = Tokens()
            if (varMem.keyword.kind == VAR) {
                setFunc = quote(, setter: $(contextName).function($(genSetFuncName(varMem.identifier))))
            }
            varsAccessor.append(
                quote(
                $(objName).defineOwnAccessor($(varMem.identifier.value),
                    getter: $(contextName).function($(genGetFuncName(varMem.identifier)))$(setFunc))
            )
            )
        }

        let propsAccessor = Tokens()
        for (propMem in props_) {
            var setFunc = Tokens()
            if (IDLUtil.hasMutModifier(propMem)) {
                setFunc = quote(, setter: $(contextName).function($(genSetFuncName(propMem.identifier))))
            }
            propsAccessor.append(
                quote(
                $(objName).defineOwnAccessor($(propMem.identifier.value),
                    getter: $(contextName).function($(genGetFuncName(propMem.identifier)))$(setFunc))
            )
            )
        }

        let funcsMethod = Tokens()
        for (funcMem in funcs_) {
            funcsMethod.append(
                quote(
                $(objName)[$(funcMem.identifier.value)] =
                    $(contextName).function($(IDLUtil.genNewInteropIdentifier(funcMem.identifier))).toJSValue()
            )
            )
        }

        return quote(
            public func toJSValue(context: JSContext): JSValue {
                let ext = context.external(this)
                let $(objName) = context.object()
                $(varsAccessor)
                $(propsAccessor)
                $(funcsMethod)
                $(objName).attachCJObject(ext)
                $(objName).toJSValue()
            }
        )
    }

    private func genIDLFromJSValue(): Tokens {
        return quote(
            public static func fromJSValue(context: JSContext, input: JSValue) {
                let jsObj = input.asObject()
                let jsExt = jsObj.getAttachInfo() ?? throw Exception("class: get external failed.")
                let obj = jsExt.cast<$(identifier_)>() ?? throw Exception("class: get clazz failed.")
                return obj
            }
            public static func toArktsType(): String {
                "class"
            }
        )
    }

    private func genIDLInvisibleDecls(): Tokens {
        let decls = Tokens()

        for (decl in invisibleDecls) {
            decls.append(decl)
        }

        decls
    }

    func genIDLClass(): Tokens {
        return quote(
            $(genIDLHead()) {
                $(genIDLStaticInit())
                $(genIDLConstructor())
                $(genIDLVars())
                $(genIDLFuncs())
                $(genIDLProps())
                $(genIDLToJSValue())
                $(genIDLFromJSValue())
                $(genIDLInvisibleDecls())
            }
        )
    }
}
