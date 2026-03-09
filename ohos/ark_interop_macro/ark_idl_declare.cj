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

import std.fs.{Path, FSException, exists, Directory, File, OpenMode}
import std.io.{SeekPosition, readToEnd}
import std.sync.Mutex
import std.ast.{PropDecl, InterfaceDecl, FuncDecl, ClassDecl, EnumDecl, TypeNode, Body, VarDecl, PrimaryCtorDecl, FuncParam, FuncType, RefType, Tokens}
import std.collection.{ArrayList, HashMap}
import std.regex.Regex

let TYPE_TABLE_G = HashMap<String, String>(
    [("Int8", "number"), ("Int16", "number"), ("Int32", "number"), ("Int64", "number"), ("UInt8", "number"),
        ("UInt16", "number"), ("UInt32", "number"), ("UInt64", "number"), ("Float16", "number"), ("Float32", "number"),
        ("Float64", "number"), ("String", "string"), ("Bool", "boolean"), ("JSStringEx", "string"), ("Unit", "undefined"),
        ("RetUnit", "void")])
let MTX = Mutex()
let TAB_STR = "    "

func genFuncDeclareFile(funcDecl: FuncDecl, isAsync: Bool) {
    let file = genFile()
    if (file.isEmpty()) {
        return
    }
    let funcDeclare = genFuncDeclare(funcDecl, isAsync)

    funcDeclareWriteIntoApiFile(funcDeclare, file)

    let pkgName = IDLCustomTypeWL.getPkgName(funcDecl.identifier.value)
    let newFile = genFile(currentPkg: pkgName)
    if (!newFile.isEmpty()) {
        funcDeclareWriteIntoIndexFile("export declare function " + funcDeclare, newFile)
    }
}

func genInterfaceDeclareFile(interfaceDecl: InterfaceDecl) {
    let file = genFile()
    if (file.isEmpty()) {
        return
    }
    let interfaceDeclare = genInterfaceDeclare(interfaceDecl)

    ciDeclareWriteIntoApiFile(interfaceDeclare, file)

    let pkgName = IDLCustomTypeWL.getPkgName(interfaceDecl.identifier.value)
    let newFile = genFile(currentPkg: pkgName)
    if (!newFile.isEmpty()) {
        cieDeclareWriteIntoIndexFile(interfaceDeclare, newFile)
    }
}

func getVisibleClassMembers(classDecl: ClassDecl) {
    var visibleClassDecl = ClassDecl()
    visibleClassDecl.identifier = classDecl.identifier

    let decls = classDecl.body.decls
    for (decl in decls) {
        if (!IDLClassMemberInvisible(decl).isMemberInvisible()) {
            visibleClassDecl.body.decls.add(decl)
        }
    }

    return visibleClassDecl
}

func genClassDeclareFile(classDecl: ClassDecl) {
    let file = genFile()
    if (file.isEmpty()) {
        return
    }

    let visibleClassDecl = getVisibleClassMembers(classDecl)
    let classDeclare = genClassDeclare(visibleClassDecl)
    ciDeclareWriteIntoApiFile(classDeclare, file)

    let classInitsDeclare = genClassInitsDeclare(visibleClassDecl)
    funcDeclareWriteIntoApiFile(classInitsDeclare.replace("\n", "\n" + TAB_STR).trimEnd(" "), file)

    let pkgName = IDLCustomTypeWL.getPkgName(classDecl.identifier.value)
    let newFile = genFile(currentPkg: pkgName)
    if (!newFile.isEmpty()) {
        let newClassDeclare = genClassDeclare(visibleClassDecl, withConstructor: true)
        cieDeclareWriteIntoIndexFile(newClassDeclare, newFile)
    }
}

func genEnumDeclareFile(enumDecl: EnumDecl) {
    // No need to write into files under ark_interop_api.
    let pkgName = IDLCustomTypeWL.getPkgName(enumDecl.identifier.value)
    let file = genFile(currentPkg: pkgName)
    if (!file.isEmpty()) {
        let enumDeclare = genEnumDeclare(enumDecl)
        cieDeclareWriteIntoIndexFile(enumDeclare, file)
    }
}

func getFuncRetType(retType: TypeNode) {
    if (retType.toTokens().toString() == "Unit") {
        return RefType(quote(RetUnit))
    } else {
        return retType
    }
}

func genFuncDeclare(funcDecl: FuncDecl, isAsync: Bool) {
    let identifier = funcDecl.identifier
    let params = funcDecl.funcParams
    let retType = getFuncRetType(funcDecl.declType)

    let modDeclare =
        if (IDLUtil.hasStaticModifier(funcDecl)) {
            "static "
        } else {
            ""
        }
    let identifierDeclare = identifier.value
    let paramDeclare = genFuncParamDeclare(params)
    var retDeclare = ""
    if (isAsync) {
        retDeclare = "Promise<" + cjType2ArktsType(retType, "funcArg") + ">"
    } else {
        retDeclare = cjType2ArktsType(retType, "funcArg")
    }

    return modDeclare + identifierDeclare + "(" + paramDeclare + "): " + retDeclare + "\n"
}

func genInterfaceDeclare(interfaceDecl: InterfaceDecl) {
    let identifier = interfaceDecl.identifier
    let body = interfaceDecl.body

    let identifierDeclare = identifier.value
    let bodyDeclare = genInterfaceBodyDeclare(body)

    return "export declare interface " + identifierDeclare + bodyDeclare + "\n"
}

func genPropDeclare(propDecl: PropDecl) {
    let identifier = propDecl.identifier
    let declType = propDecl.declType

    let identifierDeclare = identifier.value
    let retDeclare = cjType2ArktsType(declType, "propArg")

    return identifierDeclare + ": " + retDeclare + "\n"
}

func genFuncDeclareForInterface(funcDecl: FuncDecl) {
    let identifier = funcDecl.identifier
    let params = funcDecl.funcParams
    let retType = getFuncRetType(funcDecl.declType)

    let identifierDeclare = identifier.value
    let paramDeclare = genFuncParamDeclare(params)
    var retDeclare = ""
    retDeclare = cjType2ArktsType(retType, "funcArg")

    return identifierDeclare + ": (" + paramDeclare + ") => " + retDeclare + "\n"
}

func genInterfaceBodyDeclare(body: Body) {
    let decls = body.decls
    var retBody = ""

    for (decl in decls) {
        match (decl) {
            case funcDecl: FuncDecl => retBody += (TAB_STR + genFuncDeclareForInterface(funcDecl))
            case propDecl: PropDecl => retBody += (TAB_STR + genPropDeclare(propDecl))
            case _ => IDLUtil.diagReportTEAndThrow(Tokens(decl.identifier),
                "Unsupported interface member." +
                    "Interface members support only functions and properties within the `Interop` macro scope.")
        }
    }

    return " {\n" + retBody + "}"
}

func genVarDeclare(varDecl: VarDecl) {
    let identifier = varDecl.identifier
    let declType = varDecl.declType

    let identifierDeclare = identifier.value
    let retDeclare = cjType2ArktsType(declType, "varArg")

    return identifierDeclare + ": " + retDeclare + "\n"
}

func genClassBodyDeclare(classDecl: ClassDecl, withConstructor!: Bool) {
    let body = classDecl.body
    let decls = body.decls
    var retBody = ""

    for (decl in decls) {
        match (decl) {
            case funcDecl: FuncDecl =>
                if (funcDecl.identifier.value != "init") {
                    retBody += (TAB_STR + genFuncDeclare(funcDecl, false))
                }
            case propDecl: PropDecl => retBody += (TAB_STR + genPropDeclare(propDecl))
            case varDecl: VarDecl => retBody += (TAB_STR + genVarDeclare(varDecl))
            case primaryCtorDecl: PrimaryCtorDecl => ()
            case other => IDLUtil.diagReportTEAndThrow(
                Tokens(other.identifier),
                "Unsupported class member." +
                    "Class members support only functions, properties, variables and constructor within the `Interop` macro scope."
            )
        }
    }

    if (withConstructor) {
        let classInitsDeclare = genClassInitsDeclare(classDecl, insideClassDecl: true)
        retBody += (TAB_STR + classInitsDeclare.replace("\n", "\n" + TAB_STR).trimEnd(" "))
    }
    return " {\n" + retBody + "}"
}

func genClassDeclare(pubClassDecl: ClassDecl, withConstructor!: Bool = false) {
    let identifier = pubClassDecl.identifier

    let identifierDeclare = identifier.value
    let bodyDeclare = genClassBodyDeclare(pubClassDecl, withConstructor: withConstructor)

    return "export declare class " + identifierDeclare + bodyDeclare + "\n"
}

func genClassInitsDeclare(pubClassDecl: ClassDecl, insideClassDecl!: Bool = false) {
    let classId = pubClassDecl.identifier.value
    var head = if (insideClassDecl) {
        "constructor("
    } else {
        classId + ": { new ("
    }
    var tail = if (insideClassDecl) {
        (")" + "\n")
    } else {
        ("): " + classId + " }" + "\n")
    }

    var retInits = ""
    let decls = pubClassDecl.body.decls
    var synonymous = false
    for (decl in decls) {
        var retInit = ""
        match (decl) {
            case funcDecl: FuncDecl =>
                if (funcDecl.identifier.value == "init") {
                    retInit = head + genFuncParamDeclare(funcDecl.funcParams) + tail
                }
            case primaryCtorDecl: PrimaryCtorDecl =>
                retInit = head + genFuncParamDeclare(primaryCtorDecl.funcParams) + tail
            case _ => ()
        }
        if (!retInit.isEmpty() && retInits.contains(retInit)) {
            synonymous = true
            IDLUtil.diagReportTE(
                Tokens(decl.identifier),
                "Constructor synonymous with a previous one. " +
                    "Please use static functions instead."
            )
        } else {
            retInits += retInit
        }
    }
    if (synonymous) {
        throw Exception(classId + " has synonymous constructors.")
    }
    return retInits
}

/*
  Generate like:
  {
      ENUM_A = 0,
      ENUM_B = 1,
      ENUM_C = 2
  }
*/
func genEnumBodyDeclare(enumDecl: EnumDecl) {
    let ctors = enumDecl.constructors
    var retBody = ""

    for (i in 0..ctors.size) {
        let ctor = ctors[i]
        let identifierDeclare = ctor.identifier.value
        if (i == 0) {
            retBody += (TAB_STR + identifierDeclare + " = 0")
        } else {
            retBody += (",\n" + TAB_STR + identifierDeclare + " = " + i.toString())
        }
    }

    return " {\n" + retBody + "\n}"
}

func genEnumDeclare(enumDecl: EnumDecl) {
    let identifier = enumDecl.identifier

    let identifierDeclare = identifier.value
    let bodyDeclare = genEnumBodyDeclare(enumDecl)

    return "export declare const enum " + identifierDeclare + bodyDeclare + "\n"
}

func genFile(currentPkg!: String = "") {
    let relativePath: String = getCangjieSrcPath()
    if (relativePath.isEmpty()) {
        return ""
    }

    // Check if the currentPkg belongs to the current module.
    if (!currentPkg.isEmpty() && IDLCustomTypeWL.combinedPkgName != "" && !currentPkg.startsWith(IDLCustomTypeWL.combinedPkgName)) {
        return ""
    }

    let (dirName, soName, fileName): (String, String, String) = if (currentPkg.isEmpty()) {
        ("ark_interop_api", "libark_interop_api.so", "ark_interop_api.d.ts")
    } else {
        ("types/lib${currentPkg.replace(".", "_")}", "lib${currentPkg}.so", "Index.d.ts")
    }

    let libidlPath: Path = Path("${relativePath}/${dirName}")
    let filePath: Path = libidlPath.join("${fileName}")
    let jsonPath: Path = libidlPath.join("oh-package.json5")
    synchronized(MTX) {
        if (!exists(libidlPath)) {
            Directory.create(libidlPath, recursive: true)
        }

        if (!exists(jsonPath)) {
            let jsonContext = "{\n  \"name\": \"${soName}\",\n  \"types\": \"./${fileName}\",\n  " +
                "\"version\": \"1.0.0\",\n  \"description\": \"\"\n}"
            File.create(jsonPath).write(jsonContext.toArray())
        }

        if (!exists(filePath)) {
            File.create(filePath)
        }
    }
    filePath.toString()
}

func funcDeclareWriteIntoApiFile(funcDeclare: String, filePath: String) {
    synchronized(MTX) {
        let file = try {
            File(filePath, OpenMode.ReadWrite)
        } catch (e: FSException | IllegalArgumentException) {
            return
        }
        let content = String.fromUtf8(readToEnd(file))

        if (content.contains(funcDeclare)) {
            return
        }

        if (content.contains("interface CustomLib")) {
            file.seek(SeekPosition.End(-2))
            file.write((TAB_STR + funcDeclare).toArray())
            file.write("}\n".toArray())
        } else {
            file.write("export declare interface CustomLib {\n".toArray())
            file.write((TAB_STR + funcDeclare).toArray())
            file.write("}\n".toArray())
        }
        file.close()
    }
}

func funcDeclareWriteIntoIndexFile(funcDecl: String, filePath: String) {
    synchronized(MTX) {
        let file = try {
            File(filePath, OpenMode.ReadWrite)
        } catch (e: FSException | IllegalArgumentException) {
            return
        }
        var content = String.fromUtf8(readToEnd(file))

        if (content.contains(funcDecl)) {
            return
        }

        // Get the front part of funcDecl, e.g. "export declare function xxx".
        let front = funcDecl.split("(")[0]
        let re = Regex(front + "\\([\\s\\S]*?\\): [\\s\\S]*?\\n")
        if (re.matches(content)) {
            content = re.replaceAll(content, funcDecl)
        } else {
            content = content + "\n" + funcDecl
        }

        file.setLength(0)
        file.seek(SeekPosition.Begin(0))
        file.write(content.toArray())
        file.close()
    }
}

func ciDeclareWriteIntoApiFile(ciDeclare: String, filePath: String) {
    synchronized(MTX) {
        let file = try {
            File(filePath, OpenMode.ReadWrite)
        } catch (e: FSException | IllegalArgumentException) {
            return
        }
        let content = String.fromUtf8(readToEnd(file))

        if (content.contains(ciDeclare)) {
            return
        }

        file.seek(SeekPosition.Begin(0))
        file.write((ciDeclare + "\n" + content).toArray())
        file.close()
    }
}

// Used for class/interface/enum declare.
func cieDeclareWriteIntoIndexFile(cieDeclare: String, filePath: String) {
    synchronized(MTX) {
        let file = try {
            File(filePath, OpenMode.ReadWrite)
        } catch (e: FSException | IllegalArgumentException) {
            return
        }
        var content = String.fromUtf8(readToEnd(file))

        if (content.contains(cieDeclare)) {
            return
        }

        // Get the first line of cieDeclare, e.g. "export declare interface XXX {".
        let firstLine = cieDeclare.split("\n")[0]
        let re = Regex(firstLine + "[\\s\\S]*?\\n}\\n")
        if (re.matches(content)) {
            content = re.replaceAll(content, cieDeclare)
        } else {
            content = "\n" + cieDeclare + content
        }

        file.setLength(0)
        file.seek(SeekPosition.Begin(0))
        file.write(content.toArray())
        file.close()
    }
}

func genFuncParamDeclare(funcParams: ArrayList<FuncParam>): String {
    var ret = ""
    for (i in 0..funcParams.size) {
        ret += (funcParams[i].identifier.value + ": " + cjType2ArktsType(funcParams[i].paramType, "funcArg"))

        if (i != funcParams.size - 1) {
            ret += ", "
        }
    }
    ret
}

/*
    PrimitiveType: basic type, Bool, Unit
    FuncType: function type
    RefType： Option<T>, class, interface, Array<T>, HashMap<K, V>，JSArrayEx<T>, JSStringEx，String，JSHashMapEx<K, V>,
              type alias(type MyType = Int8)
    QualifiedType: T.a in var a : T.a
    limitation：
    T.a not supported
    Option<T>：T supports all types above except Option<T> and func.
    JSArrayEx<T>、JSHashMapEx<K, V>： T、V support all types above except func
    Array<T>: only support Array<Byte>
    HashMap<K, V>: not supported
 */
func cjType2ArktsType(typeNode: TypeNode, nameBase: String): String {
    try {
        TYPE_TABLE_G[typeNode.toTokens().toString()]
    } catch (_: Exception) {
        match (typeNode) {
            case p: FuncType => funcType2Arkts(p, nameBase)
            case p: RefType => refType2Arkts(p)
            case _ =>
                IDLUtil.diagReportTEAndThrow(
                    Tokens(),
                    "Ark Interop: Mismatched Types. " +
                        "Only supports conversion of primitive, function and reference types within the `Interop` macro scope."
                )
                ""
        }
    }
}

func funcType2Arkts(funcType: FuncType, nameBase: String): String {
    let paramTypes = funcType.types
    let returnType = getFuncRetType(funcType.returnType)
    var paramStr = ""

    for (i in 0..paramTypes.size) {
        let paramType = paramTypes[i]
        paramStr += (nameBase + i.toString() + ": " + cjType2ArktsType(paramType, nameBase + "funcArg"))
        if (i != paramTypes.size - 1) {
            paramStr += ", "
        }
    }

    return "(" + paramStr + ") => " + cjType2ArktsType(returnType, nameBase + "funcArg")
}

func refType2Arkts(refType: RefType): String {
    match (refType.identifier.value) {
        case "Option" =>
            if (refType.typeArguments.size == 0) {
                IDLUtil.diagReportTEAndThrow(Tokens(refType.identifier),
                    "Option type format error. There are no type arguments.")
                return ""
            }
            let typeNode = refType.typeArguments[0]
            match (typeNode) {
                case p: RefType =>
                    if (p.identifier.value == "Option") {
                        IDLUtil.diagReportTEAndThrow(
                            Tokens(refType.identifier),
                            "The T of the Option type does not support the Option type within the `Interop` macro scope."
                        )
                    }
                case p: FuncType => IDLUtil.diagReportTEAndThrow(Tokens(refType.identifier),
                    "The T of the Option type does not support the function type within the `Interop` macro scope.")
                case _ => ()
            }
            cjType2ArktsType(refType.typeArguments[0], "") + " | undefined"
        // generic
        case "JSArrayEx" => "Array<" + cjType2ArktsType(refType.typeArguments[0], "") + ">"
        case "JSHashMapEx" => "Map<string, " + cjType2ArktsType(refType.typeArguments[1], "") + ">"
        case "Array" =>
            if (refType.typeArguments[0].toTokens().toString() == "Byte") {
                "ArrayBuffer"
            } else {
                IDLUtil.diagReportTEAndThrow(Tokens(refType.identifier),
                    "The T of the Array type only support Byte type within the `Interop` macro scope.")
                ""
            }
        // class/interface/enum
        case _ =>
            if (!IDLCustomTypeWL.isWhitelisted(refType.identifier.value)) {
                IDLUtil.diagReportTEAndThrow(
                    Tokens(refType.identifier),
                    "Unsupported user-defined type. " +
                        "Ensure user-defined type is exposed by `Interop` macros before using within the `Interop` macro scope."
                )
            }
            refType.identifier.value
    }
}
