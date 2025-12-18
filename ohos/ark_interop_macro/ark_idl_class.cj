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
import std.collection.{ArrayList, HashMap}
import std.sort.sort

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
                IDLUtil.diagReportTEAndThrow(
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
        if (!hasPublic) {
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
    // Save normal and main constructor declares in original order.
    private let constructors_: ArrayList<Decl>
    private let funcs_: ArrayList<FuncDecl>
    private let props_: ArrayList<PropDecl>
    private let vars_: ArrayList<VarDecl>
    private let invisibleDecls: ArrayList<Decl>
    private let constructorName: Token = Token(TokenKind.IDENTIFIER, "jsConstructor")
    private let constructorHelperName: Token = Token(TokenKind.IDENTIFIER, "jsConstructorHelper")

    init(classDecl: ClassDecl) {
        identifier_ = classDecl.identifier
        constructors_ = ArrayList<Decl>()
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
                        constructors_.add(funcDecl)
                    } else {
                        funcs_.add(funcDecl)
                    }
                case primaryCtorDecl: PrimaryCtorDecl =>
                    constructors_.add(primaryCtorDecl)
                case propDecl: PropDecl => props_.add(propDecl)
                case varDecl: VarDecl => vars_.add(varDecl)
                case other => IDLUtil.diagReportTEAndThrow(
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
            if (IDLUtil.hasStaticModifier(funcMem)) {
                funcsMethod.append(
                    quote(
                        clazz.toJSValue().asObject()[$(funcMem.identifier.value)] = context.function($(IDLUtil.genNewInteropIdentifier(funcMem.identifier))).toJSValue()
                    )
                )
            } else {
                funcsMethod.append(
                    quote(
                    clazz.addMethod($(funcMem.identifier.value),
                        $(contextName).function($(IDLUtil.genNewInteropIdentifier(funcMem.identifier))))
                    )
                )
            }
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

    private func genIDLConstructors(): Tokens {
        var funcParamsMap = HashMap<Int64, ArrayList<ArrayList<FuncParam>>>()
        var initFuncTokens = Tokens()
        for (ctor in constructors_) {
            let funcParams = match (ctor) {
                case primaryCtorDecl: PrimaryCtorDecl =>
                    initFuncTokens.append(primaryCtorDecl.toTokens())
                    primaryCtorDecl.funcParams
                case funcDecl: FuncDecl =>
                    initFuncTokens.append(funcDecl.toTokens())
                    funcDecl.funcParams
                case _ => throw Exception("macro: unreachable.")
            }
            if (funcParamsMap.contains(funcParams.size)) {
                funcParamsMap[funcParams.size].add(funcParams)
            } else {
                funcParamsMap[funcParams.size] = ArrayList<ArrayList<FuncParam>>([funcParams])
            }
        }

        let construct = Tokens()
        let paramNums = funcParamsMap.keys().toArray()
        sort(paramNums)
        for (paramNum in paramNums) {
            if (paramNum == 0) {
                construct.append(quote(case $paramNum => $(identifier_)()
                ))
                continue
            }
            construct.append(quote(case $paramNum =>))
            for (funcParams in funcParamsMap[paramNum]) {
                let paramDecls = Tokens()
                let fromJSValues = Tokens()
                let callArgs = Tokens()
                for (i in 0..funcParams.size) {
                    let funcParam = funcParams[i]
                    let paramType = funcParam.paramType
                    let newArgName = IDLUtil.genRandomVarName("arg")
                    paramDecls.append(quote(var $(newArgName): Option<$(paramType)> = None)).append(Token(NL))
                    fromJSValues.append(IDLUtil.jsvalue2Cangjie1(paramType, newArgName, quote(callInfo[$i]), quote(context)))
                        .append(Token(NL))
                    callArgs.append(IDLUtil.genInputArg(funcParam, quote($(newArgName).getOrThrow()), i != funcParams.size - 1))
                }
                construct.append(quote(
                    $(paramDecls)if \(try {
                            $(fromJSValues)true
                        } catch (_) { false }
                    \) { return $(identifier_)($callArgs) }
                ))
            }
            construct.append(Token(NL)).append(quote(throw Exception("class: construct failed."))).append(Token(NL)).append(Token(NL))
        }
        construct.append(quote(case _ => throw Exception("class: construct failed.")))

        return quote(
            $(initFuncTokens)
            static func $(constructorHelperName)(context: JSContext, callInfo: JSCallInfo): $(identifier_) {
                match (callInfo.count) {
                    $(construct)
                }
            }

            public static func $(constructorName)(context: JSContext, callInfo: JSCallInfo): JSValue {
                let object = $(constructorHelperName)(context, callInfo)

                let thisArg = callInfo.thisArg
                let thisObject = thisArg.asObject()
                let jsExternal = context.external(object)
                thisObject.attachCJObject(jsExternal)
                return thisObject.toJSValue()
            }
        )
    }

    private func genObjectTokens() {
        return quote(
            let thisArg = callInfo.thisArg
            let thisObject = thisArg.asObject()
            let jsExternal = thisObject.getAttachInfo() ?? throw Exception("class: get external failed.")
            let object = jsExternal.cast<$(identifier_)>() ?? throw Exception("class: get $(identifier_) failed.")
        )
    }

    private func genVarGetFunc(identifier: Token, declType: TypeNode) {
        return quote(
            public static func $(genGetFuncName(identifier))(context: JSContext, callInfo: JSCallInfo): JSValue {
                $(genObjectTokens())
                let RET = object.$(identifier)
                return $(IDLUtil.cangjie2JSValue(declType, Tokens(), quote(RET), quote(context)))
            }
        )
    }

    private func genVarSetFunc(identifier: Token, declType: TypeNode) {
        return quote(
            public static func $(genSetFuncName(identifier))(context: JSContext, callInfo: JSCallInfo): JSValue {
                $(genObjectTokens())
                $(IDLUtil.jsvalue2Cangjie(declType, quote(value), quote(callInfo[0]), quote(context)))
                object.$(identifier) = value
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

        if (IDLUtil.hasStaticModifier(funcDecl)) {
            return quote(
                public static func $(newFuncIdentifier)(context: JSContext, callInfo: JSCallInfo): JSValue {
                    $(argx)
                    let RET = $(identifier)($callArgs)
                    return $(IDLUtil.cangjie2JSValue(funcDecl.declType, Tokens(), quote(RET), quote(context)))
                }
            )
        } else {
            return quote(
                public static func $(newFuncIdentifier)(context: JSContext, callInfo: JSCallInfo): JSValue {
                    $(genObjectTokens())
                    $(argx)
                    let RET = object.$(identifier)($callArgs)
                    return $(IDLUtil.cangjie2JSValue(funcDecl.declType, Tokens(), quote(RET), quote(context)))
                }
            )
        }
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
                let obj = jsExt.cast<$(identifier_)>() ?? throw Exception("class: get $(identifier_) failed.")
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
                $(genIDLConstructors())
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
