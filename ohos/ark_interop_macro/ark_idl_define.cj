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

import std.ast.{Tokens, ClassDecl, InterfaceDecl, FuncDecl, EnumDecl, VarDecl, Decl, parseDecl, assertParentContext}
import std.collection.ArrayList

public macro Interop(attrTokens: Tokens, input: Tokens): Tokens {
    //create whitelist
    IDLCustomTypeWL.createWL()

    let kind = IDLUtil.parseInteropKind(attrTokens)
    match (kind) {
        case InteropKind.InteropArkTS => handleArkTS(input)
        case InteropKind.InteropAsyncFunc => handleAsyncFunc(input)
        case InteropKind.InteropInvisible => handleInvisible(input)
        case InteropKind.InteropOther => input
    }
}

func handleVar(varDecl: VarDecl): Tokens {
    checkVar(varDecl)
    genVarDeclareFile(varDecl)
    genPackageHelperFile(varDecl.identifier.value)
    IDLVar(varDecl).genIDLVar()
}

func handleArkTS(input: Tokens): Tokens {
    let decl = parseDecl(input)
    IDLCustomTypeWL.checkDuplicate(decl)
    match (decl) {
        case classDecl: ClassDecl => handleClass(classDecl)
        case interfaceDecl: InterfaceDecl => handleInterface(interfaceDecl)
        case funcDecl: FuncDecl => handleFunc(funcDecl, false)
        case enumDecl: EnumDecl => handleEnum(enumDecl)
        case varDecl: VarDecl => handleVar(varDecl)
        case _ =>
            IDLUtil.diagReportTEAndThrow(
                input,
                "Only user-defined `class`, `interface`, `enum` types, function and variable declarations are allowed to be applied with `Interop` macro."
            )
            input
    }
}

func handleFunc(funcDecl: FuncDecl, isAsync: Bool): Tokens {
    checkFunc(funcDecl, isAsync)
    genFuncDeclareFile(funcDecl, isAsync)
    genPackageHelperFile(funcDecl.identifier.value)
    IDLFunction(funcDecl, isAsync).genIDLFunction()
}

func handleInterface(interfaceDecl: InterfaceDecl): Tokens {
    checkInterface(interfaceDecl)
    genInterfaceDeclareFile(interfaceDecl)
    IDLInterface(interfaceDecl).genIDLInterface()
}

func handleClass(classDecl: ClassDecl): Tokens {
    checkClass(classDecl)
    genClassDeclareFile(classDecl)
    genPackageHelperFile(classDecl.identifier.value)
    IDLClass(classDecl).genIDLClass()
}

/*
  1. Check enum legality.
  2. Generate enum declare file.
  3. Generate enum IDL code.
*/
func handleEnum(enumDecl: EnumDecl): Tokens {
    checkEnum(enumDecl)
    genEnumDeclareFile(enumDecl)
    IDLEnum(enumDecl).genIDLEnum()
}

func handleInvisible(input: Tokens): Tokens {
    assertParentContext("Interop")

    let classMembersList = ArrayList<String>(["var", "let", "prop", "func", "init"])
    var isPrimCtor: Bool = true
    for (i in 0..input.size) {
        if (input[i].value == "(") {
            break
        }
        if (classMembersList.contains(input[i].value)) {
            isPrimCtor = false
            break
        }
    }

    var decl: Decl
    if (isPrimCtor) {
        decl = parseDecl(input, astKind: "PrimaryCtorDecl")
    } else {
        decl = parseDecl(input)
    }
    IDLClassMemberInvisible(decl).markMemberInvisible()

    return input
}

func handleAsyncFunc(input: Tokens): Tokens {
    let decl = parseDecl(input)
    IDLCustomTypeWL.checkDuplicate(decl)
    match (decl) {
        case funcDecl: FuncDecl => handleFunc(funcDecl, true)
        case _ =>
            IDLUtil.diagReportTEAndThrow(input,
                "Only function declarations are allowed to be applied with `Interop Async` macro.")
            input
    }
}
