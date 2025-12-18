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

import std.ast.{Visitor, Decl, FuncDecl, RefType, PrimaryCtorDecl, InterfaceDecl, ClassDecl, PropDecl, EnumDecl, Token, Tokens, MacroExpandDecl, PackageHeader, VarDecl, parseProgram, cangjieLex}
import std.collection.{ArrayList, HashSet, HashMap, forEach}
import std.fs.{FileInfo, Path, FSException, File, Directory, OpenMode}
import std.sync.Mutex
import std.io.readToEnd
import std.regex.{Regex, RegexFlag}
import std.env.{getVariable, getHomeDirectory}

let CONTEXT_TYPE_G: Array<String> = ["JSStringEx", "JSArrayEx", "JSHashMapEx"]

// only public
func checkModifierBePublic(decl: Decl) {
    let modifiers = decl.modifiers
    if (modifiers.size == 0 || modifiers.size > 1 || modifiers.get(0).getOrThrow().keyword.kind != PUBLIC) {
        IDLUtil.diagReportTEAndThrow(Tokens(decl.keyword),
            "Modifier only supports `public` modifier within the `Interop` macro scope.")
    }
}

// public [static]
func checkModifierBePublicCanStatic(decl: Decl) {
    let modifiers = decl.modifiers
    var hasPublic = false
    for (mod in modifiers) {
        if (mod.keyword.kind == PUBLIC) {
            hasPublic = true
            continue
        }
        if (mod.keyword.kind != STATIC) {
            IDLUtil.diagReportTEAndThrow(Tokens(mod.keyword),
                "Class members only support the `static` modifier within the `Interop` macro scope.")
        }
    }
    if (!hasPublic) {
        IDLUtil.diagReportTEAndThrow(Tokens(decl.keyword),
            "Class members must have `public` modifier within the `Interop` macro scope.")
    }
}

//no modifier
func checkModifierNone(decl: Decl) {
    let modifiers = decl.modifiers
    if (modifiers.size != 0) {
        IDLUtil.diagReportTEAndThrow(Tokens(modifiers[0].keyword),
            "Interface function members do not support modifiers within the `Interop` macro scope.")
    }
}

// [mut]
func checkModifierCanMut(decl: Decl) {
    let modifiers = decl.modifiers
    for (mod in modifiers) {
        if (mod.keyword.kind != MUT) {
            IDLUtil.diagReportTEAndThrow(Tokens(mod.keyword),
                "Interface property members only support the `mut` modifier within the `Interop` macro scope.")
        }
    }
}

// public [mut]
func checkModifierBePublicCanMut(decl: Decl) {
    let modifiers = decl.modifiers
    for (mod in modifiers) {
        if (mod.keyword.kind == PUBLIC) {
            continue
        }
        if (mod.keyword.kind != MUT) {
            IDLUtil.diagReportTEAndThrow(Tokens(mod.keyword),
                "Class property members only support the `mut` modifier within the `Interop` macro scope.")
        }
    }
}

// no generic
func checkGenericParam(decl: Decl) {
    if (try {
        decl.genericParam
        true
    } catch (_) {
        false
    }) {
        IDLUtil.diagReportTEAndThrow(decl.genericParam.parameters,
            "Generics are not supported within the `Interop` macro scope.")
    }
}

// named param no default values
func checkParamDefault(funcDecl: FuncDecl) {
    for (param in funcDecl.funcParams) {
        if (param.assign != Token()) {
            IDLUtil.diagReportTEAndThrow(Tokens(param.identifier),
                "The function parameter does not support the default value within the `Interop` macro scope.")
        }
    }
}

func checkTypesNoContext(funcDecl: FuncDecl) {
    for (param in funcDecl.funcParams) {
        match (param.paramType) {
            case p: RefType =>
                if (CONTEXT_TYPE_G.contains(p.identifier.value)) {
                    IDLUtil.diagReportTEAndThrow(
                        Tokens(param.identifier),
                        "Asynchronous functions do not support JSStringEx, JSArrayEx and JSHashMapEx types within the `Interop Async` macro scope."
                    )
                }
            case _ => ()
        }
    }

    match (funcDecl.declType) {
        case p: RefType =>
            if (CONTEXT_TYPE_G.contains(p.identifier.value)) {
                IDLUtil.diagReportTEAndThrow(
                    Tokens(funcDecl.identifier),
                    "Asynchronous functions do not support JSStringEx, JSArrayEx and JSHashMapEx types within the `Interop Async` macro scope."
                )
            }
        case _ => ()
    }
}

// named param no default values
func checkParamDefaultPrimaryCtor(primaryCtorDecl: PrimaryCtorDecl) {
    for (param in primaryCtorDecl.funcParams) {
        if (param.assign != Token()) {
            IDLUtil.diagReportTEAndThrow(Tokens(param.identifier),
                "The function parameter does not support the default value within the `Interop` macro scope.")
        }
    }
}

// retType be
func checkRetType(funcDecl: FuncDecl) {
    if (try {
        funcDecl.declType
        false
    } catch (_) {
        true
    }) {
        IDLUtil.diagReportTEAndThrow(Tokens(funcDecl.identifier),
            "The return type of the function cannot be omitted within the `Interop` macro scope.")
    }
}

// no super type
func checkSuperType(interfaceDecl: InterfaceDecl) {
    if (interfaceDecl.superTypes.size != 0) {
        IDLUtil.diagReportTEAndThrow(Tokens(interfaceDecl.identifier),
            "Superinterface is not supported within the `Interop` macro scope.")
    }
}

// no operator
func checkOperator(funcDecl: FuncDecl) {
    if (funcDecl.overloadOp.size != 0) {
        IDLUtil.diagReportTEAndThrow(Tokens(funcDecl.identifier),
            "Operator overloaded function is not supported within the `Interop` macro scope.")
    }
}

// no static init
func checkStaticInit(classDecl: ClassDecl) {
    let decls = classDecl.body.decls
    for (decl in decls) {
        match (decl) {
            case funcDecl: FuncDecl => for (mod in funcDecl.modifiers) {
                if (mod.keyword.kind == STATIC && funcDecl.identifier.value == "init") {
                    IDLUtil.diagReportTEAndThrow(Tokens(mod.keyword) + Tokens(funcDecl.identifier),
                        "Static initializer is not supported within the `Interop` macro scope.")
                }
            }
            case _ => ()
        }
    }
}

// at least one init
func checkClassInitFuncNum(classDecl: ClassDecl) {
    let decls = classDecl.body.decls
    for (decl in decls) {
        if (IDLClassMemberInvisible(decl).isMemberInvisible()) {
            continue
        }
        match (decl) {
            case funcDecl: FuncDecl =>
                if (funcDecl.identifier.value == "init") {
                    return
                }
            case primary: PrimaryCtorDecl =>
                return
            case _ => ()
        }
    }

    IDLUtil.diagReportTEAndThrow(Tokens(classDecl.identifier),
        "At least one constructor is required in a class within the `Interop` macro scope.")
}

// no duplicate func name
func checkClassFuncDup(funcNameSet: HashSet<String>, funcDecl: FuncDecl) {
    if (funcNameSet.contains(funcDecl.identifier.value)) {
        IDLUtil.diagReportTEAndThrow(Tokens(funcDecl.identifier),
            "The function name cannot be duplicate in a class within the `Interop` macro scope.")
    }
}

func checkInterfaceProp(propDecl: PropDecl) {
    checkModifierCanMut(propDecl)
}

func checkInterfaceFunc(funcDecl: FuncDecl) {
    checkOperator(funcDecl)
    checkModifierNone(funcDecl)
    checkRetType(funcDecl)
}

func checkInterfaceMembers(interfaceDecl: InterfaceDecl) {
    let decls = interfaceDecl.body.decls
    for (decl in decls) {
        match (decl) {
            case propDecl: PropDecl => checkInterfaceProp(propDecl)
            case funcDecl: FuncDecl => checkInterfaceFunc(funcDecl)
            case other => IDLUtil.diagReportTEAndThrow(Tokens(other.identifier),
                "Unsupported interface member." +
                    "Interface members support only functions and properties within the `Interop` macro scope.")
        }
    }
}

// check constructor
func checkClassInitFunc(funcDecl: FuncDecl) {
    checkModifierBePublic(funcDecl)
    checkParamDefault(funcDecl)
}

// check parameter, operator func and member func
func checkClassFunc(funcDecl: FuncDecl) {
    checkOperator(funcDecl)
    checkModifierBePublicCanStatic(funcDecl)
    checkParamDefault(funcDecl)
    checkRetType(funcDecl)
}

// check class fields
func checkClassVar(varDecl: VarDecl) {
    checkModifierBePublic(varDecl)
}

// check main constructor
func checkClassPrimaryCtor(primaryCtorDecl: PrimaryCtorDecl) {
    checkModifierBePublic(primaryCtorDecl)
    checkParamDefaultPrimaryCtor(primaryCtorDecl)
}

// check class attributes
func checkClassProp(propDecl: PropDecl) {
    checkModifierBePublicCanMut(propDecl)
}

// check class members
func checkClassMembers(classDecl: ClassDecl) {
    checkClassInitFuncNum(classDecl)
    checkStaticInit(classDecl)

    var funcNameSet = HashSet<String>()
    let decls = classDecl.body.decls
    for (decl in decls) {
        if (IDLClassMemberInvisible(decl).isMemberInvisible()) {
            continue
        }
        match (decl) {
            case funcDecl: FuncDecl =>
                if (funcDecl.identifier.value == "init") {
                    checkClassInitFunc(funcDecl)
                } else {
                    checkClassFunc(funcDecl)
                    checkClassFuncDup(funcNameSet, funcDecl)
                    funcNameSet.add(funcDecl.identifier.value)
                }
            case primaryCtorDecl: PrimaryCtorDecl => checkClassPrimaryCtor(primaryCtorDecl)
            case varDecl: VarDecl => checkClassVar(varDecl)
            case propDecl: PropDecl => checkClassProp(propDecl)
            case other => IDLUtil.diagReportTEAndThrow(
                Tokens(other.identifier),
                "Unsupported class member." +
                    "Class members support only functions, properties, variables and constructor within the `Interop` macro scope."
            )
        }
    }
}

func checkEnumConstructors(enumDecl: EnumDecl) {
    for (ctor in enumDecl.constructors) {
        if (ctor.typeArguments.size > 0) {
            IDLUtil.diagReportTEAndThrow(Tokens(ctor.identifier),
                "Enum parameterized constructors are not supported within the `Interop` macro scope.")
        }
    }
}

/*
    modifiers          | type parameters | named parameters                     | return value
    only can be public | not supported   | supported, cannot have default value | cannot be defaulted
 */
func checkFunc(funcDecl: FuncDecl, isAsync: Bool) {
    checkModifierBePublic(funcDecl)
    checkGenericParam(funcDecl)
    checkParamDefault(funcDecl)
    checkRetType(funcDecl)
    if (isAsync) {
        checkTypesNoContext(funcDecl)
    }
}

/*
    modifiers          | type paramenters | inherited from other interface |
    only can be public | not supported    | not supported                  |

    member function                  | operator function | member attributes
    supported, require none-modifiers| not supported     | supported, only support mut modifier
 */
func checkInterface(interfaceDecl: InterfaceDecl) {
    checkModifierBePublic(interfaceDecl)
    checkGenericParam(interfaceDecl)
    checkSuperType(interfaceDecl)
    checkInterfaceMembers(interfaceDecl)
}

/*
    modifiers          | type paramenters | inherited from other class            | inherited from other interface            |
    can only be public | not supported    | supported, but not expand super class | supported, but not expand super interface |

    modifiers of member                 | static constructor | constructors | member variables         | operator function | member attibutes |
    can only be public or public static | not supported      | supported    | supported except generic | not supported     | supported        |
 */
func checkClass(classDecl: ClassDecl) {
    checkModifierBePublic(classDecl)
    checkGenericParam(classDecl)
    checkClassMembers(classDecl)
}

/*
    modifiers          | type paramenters | inherited from other class            | inherited from other interface            |
    only can be public | not supported    | supported, but not expand super class | supported, but not expand super interface |

    | constructors                    | member functions | operator functions | member properties |
    | only parameterless constructors | not supported    | not supported      | not supported     |
 */
func checkEnum(enumDecl: EnumDecl) {
    checkModifierBePublic(enumDecl)
    checkGenericParam(enumDecl)
    checkEnumConstructors(enumDecl)
}

func getCangjieSrcPath(): String {
    if (getHomeDirectory().fileName == "cangjie") {
        return "./"
    }
    return getVariable("CJ_BUILD_INTEROP_PATH") ?? ""
}

// If root pacakge is not combined, then decls will be generated into seperate .d.ts (per package)
// Otherwise, decls will be generated into one .d.ts
func getOutputPkg(pkgName: String): String {
    if (IDLCustomTypeWL.combinedPkgName == "") {
        return pkgName
    } else {
        if (pkgName.startsWith(IDLCustomTypeWL.combinedPkgName + ".")) {
            return IDLCustomTypeWL.combinedPkgName
        } else {
            return pkgName
        }
    }
}

class PackageNameCollector <: Visitor {
    var outputPkg: String = ""
    var packageNameMap = HashMap<String, String>()
    public override func visit(packageHeader: PackageHeader): Unit {
        var currentPkg: String = ""
        for (i in packageHeader.prefixPaths) {
            currentPkg += i.value
            currentPkg += "."
        }
        currentPkg += packageHeader.packageIdentifier.value
        outputPkg = getOutputPkg(currentPkg)
    }
    public override func visit(macroExpandDecl: MacroExpandDecl): Unit {
        if (macroExpandDecl.fullIdentifier.value != "Interop") {
            return
        }
        let kind = IDLUtil.parseInteropKind(macroExpandDecl.macroAttrs)
        match (kind) {
            case InteropKind.InteropArkTS => packageNameMap.add(macroExpandDecl.macroInputDecl.identifier.value,
                outputPkg)
            case InteropKind.InteropAsyncFunc => packageNameMap.add(macroExpandDecl.macroInputDecl.identifier.value,
                outputPkg)
            case InteropKind.InteropInvisible => ()
            case InteropKind.InteropOther => ()
        }
        return
    }
}

//user-defined type whitelist
class IDLCustomTypeWL {
    private static let MTX = Mutex()
    private static var whitelistSet = HashSet<String>()
    private static var packageNameMap = HashMap<String, String>()
    private static var packagesSet = HashSet<String>()
    private static var isCreated = false
    private static var isRead = false
    static var combinedPkgName = ""

    private static func getFileList(path: String): ArrayList<FileInfo> {
        let files = ArrayList<FileInfo>()
        Directory.walk(path) {
            info =>
            if (info.isRegular()) {
                files.add(info)
            } else if (info.isDirectory()) {
                files.add(all: getFileList(info.path.toString()))
            }
            true
        }
        return files
    }

    static func collectPkgInfo(fileTokens: Tokens): Unit {
        let source = parseProgram(fileTokens)
        let visitor = PackageNameCollector()
        source.traverse(visitor)
        packageNameMap.add(all: visitor.packageNameMap)
        packagesSet.add(visitor.outputPkg)
    }

    static func createWL(): Unit {
        isSoCombined()
        synchronized(MTX) {
            if (isCreated) {
                return
            }
            let list: ArrayList<FileInfo> = ArrayList<FileInfo>()
            let relativePath: String = getCangjieSrcPath()
            let fileInfoList = if (!relativePath.isEmpty()) {
                getFileList(relativePath)
            } else {
                let path = getVariable("CJ_LSP_INTEROP_PATH") ?? ""
                path.split(";") |> forEach {
                    it: String => list.add(all: getFileList(it))
                }
                list
            }

            for (info in fileInfoList) {
                let fileName = info.path.fileName
                if (!Regex(#"\.cj$"#, []).matches(fileName)) {
                    continue
                }

                let file = File(info.path, OpenMode.Read)
                let fileContent = String.fromUtf8(readToEnd(file))
                let fileTokens = try {
                    cangjieLex(fileContent)
                } catch (e: IllegalMemoryException | IllegalArgumentException) {
                    return
                }

                collectPkgInfo(fileTokens)

                var tokenStr: String = ""
                for (i in 0..fileTokens.size) {
                    if (fileTokens[i].kind == NL) {
                        continue
                    }
                    tokenStr += (fileTokens[i].value + "\n")
                }

                let classMDArr = Regex(##"^@\s*Interop\s*\[\s*ArkTS\s*\]\s*public\s*(class|interface|enum)\s*(\w+)$"##,
                    [MultiLine]).findAll(tokenStr, group: true)
                for (md in classMDArr) {
                    whitelistSet.add(md.matchString(2))
                }
            }

            isCreated = true
            writeDebugFile(whitelistSet)
            writeDependenciesFile()
        }
    }

    // Read cjpm.toml to check if root package is combined.
    // If true, save root package name to `combinedPkgName`.
    static func isSoCombined(): Unit {
        synchronized(MTX) {
            if (isRead) {
                return
            }
            let relativePath: String = getCangjieSrcPath()
            if (relativePath.isEmpty()) {
                return
            }

            let filePath = "./cjpm.toml"
            let file = File(filePath, OpenMode.Read)
            let fileContent = String.fromUtf8(readToEnd(file))
            let classMDArr = Regex(##"(\[|\.)combined\]\s*(\w+)\s*=\s*\"dynamic\""##, [MultiLine]).findAll(fileContent, group: true)
            for (md in classMDArr) {
                combinedPkgName = md.matchString(2)
            }
            isRead = true
        }
    }

    static func getPkgName(declName: String): String {
        return packageNameMap.get(declName) ?? ""
    }

    static func isWhitelisted(id: String): Bool {
        return whitelistSet.contains(id)
    }

    private static func writeDebugFile(set: HashSet<String>): Unit {
        let relativePath: String = getCangjieSrcPath()
        if (relativePath.isEmpty()) {
            return
        }

        var message: String = ""
        for (s in set) {
            message += (s + "\n")
        }

        let filePath: Path = Path(relativePath).join("IDL_Custom_Type_Whitelist~")

        let file = try {
            File(filePath, OpenMode.ReadWrite)
        } catch (e: FSException | IllegalArgumentException) {
            return
        }

        file.write(message.toArray())
        file.close()
    }

    // Generate file for IDE to insert dependencies
    private static func writeDependenciesFile(): Unit {
        let relativePath: String = getCangjieSrcPath()
        if (relativePath.isEmpty()) {
            return
        }

        var message: String = ""
        for (pkg in packagesSet) {
            message += "lib${pkg}.so,types/lib${pkg.replace(".", "_")}\n"
        }

        let filePath: Path = Path(relativePath).join("IDL_Dependencies_List~")
        let file = try {
            File(filePath, OpenMode.Write)
        } catch (e: FSException | IllegalArgumentException) {
            return
        }
        file.write(message.toArray())
        file.close()
    }
}
