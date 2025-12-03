#!/usr/bin/env node
/*
 * Copyright (c) 2025 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

const fs = require('fs');
const path = require('path');
const ts = require('typescript');

const BUNDLE_REG = /@bundle [a-zA-Z./]+ /;
const EXT_REG = /\.d\.e?ts$/;

/**
 * parse command line args.
 */
function processArgs() {
    const validArgs = ['pkgName', 'outApi', 'outKit', 'sdkRoot'];
    let result = {};
    for (let i = 2, il = process.argv.length; i < il; ++i) {
        const src = process.argv[i];
        if (!/^-[a-zA-Z_]+=[\S\s]+$/.test(src)) {
            throw new Error(`argument form is invalid: ${src}`);
        }
        const index = src.indexOf('=');
        const name = src.substr(1, index - 1);
        if (!validArgs.includes(name)) {
            throw new Error(`invalid argument name: ${name}`);
        }
        const value = src.slice(index + 1);
        if (name === 'sdkRoot') {
            const list = result[name] || (result[name] = []);
            list.push(value);
        } else {
            result[name] = value;
        }
    }
    return result;
}

function processApi(dir, bundleMap) {
    const fileNames = fs.readdirSync(dir);
    for (const fileName of fileNames) {
        const filePath = path.join(dir, fileName);
        if (EXT_REG.test(fileName)) {
            const fileContent = fs.readFileSync(filePath).toString();
            const matches = BUNDLE_REG.exec(fileContent);
            if (!matches) {
                continue;
            }
            if (matches.length !== 1) {
                throw new Error(`matches 1+ bundle at ${filePath}`);
            }
            const [, bundle] = matches[0].split(/[ ]+/);
            const key = fileName.replace(EXT_REG, '');
            if (key in bundleMap) {
                throw new Error(`same file name: ${key}`);
            }
            bundleMap[key] = bundle;
        } else {
            const stat = fs.statSync(filePath);
            if (stat.isDirectory()) {
                processApi(filePath, bundleMap);
            }
        }
    }
}

function processKit(dir, kitMap) {
    const fileNames = fs.readdirSync(dir);
    const filePaths = [];
    for (const fileName of fileNames) {
        if (!EXT_REG.test(fileName)) {
            continue;
        }
        filePaths.push(path.join(dir, fileName).replace(/\\/g, '/'));
    }
    const program = ts.createProgram(filePaths, {});
    for (const source of program.getSourceFiles()) {
        if (!filePaths.includes(source.fileName)) {
            continue;
        }
        const fileName = path.basename(source.fileName).replace(EXT_REG, '');
        kitMap[fileName] = resolveKitMapping(source);
    }
}

function resolveKitMapping(source) {
    const imports = {};
    const exportAlias = {};
    for (const decl of source.statements) {
        if (ts.isImportDeclaration(decl)) {
            const data = parseImportDecl(decl);
            if (data) {
                imports[data[0]] = data[1];
            }
        }
        else if (ts.isExportDeclaration(decl)) {
            console.assert(!decl.name);
            if (!decl.exportClause || !ts.isNamedExports(decl.exportClause)) {
                throw new Error('unknown exports');
            }
            parseAlias(exportAlias, decl.exportClause.elements);
        } else {
            throw new Error(`unknown decl: ${decl.kind}`);
        }
    }

    return normalizeExports(imports, exportAlias);
}

function parseAlias(exportAlias, elements) {
    for (const element of elements) {
        if (element.propertyName) {
            exportAlias[element.name.text] = element.propertyName.text;
        }
    }
}

function parseImportDecl(decl) {
    const spec = decl.moduleSpecifier;
    if (!ts.isStringLiteral(spec)) {
        throw new Error(`unknown module spec: ${spec.kind}`);
    }
    const fileName = spec.text;
    const importClause = decl.importClause;
    if (!importClause) {
        throw new Error('no imports');
    }
    if (importClause.isTypeOnly) {
        return null;
    }
    if (importClause.name) {
        return [fileName, importClause.name.text];
    }
    if (!importClause.namedBindings) {
        throw new Error('no exports found');
    }
    if (!ts.isNamedImports(importClause.namedBindings)) {
        throw new Error(`exports not namedBindings`);
    }
    const mappings = [];
    for (const element of importClause.namedBindings.elements) {
        if (element.isTypeOnly) {
            continue;
        }
        if (element.propertyName) {
            let mapping = {
                from: element.name.text,
                to: element.propertyName.text
            };
            mappings.push(mapping);
        } else {
            mappings.push(element.name.text);
        }
    }
    return [fileName, mappings];
}

function normalizeExports(imports, exportAlias) {
    const result = {};
    for (const fileName in imports) {
        const sub = imports[fileName];
        if (typeof sub === 'string') {
            result[fileName] = exportAlias[sub] || sub;
        } else {
            result[fileName] = normalizeSublist(exportAlias, sub);
        }
    }
    return result;
}

function normalizeSublist(exportAlias, sub) {
    const list = [];
    for (const item of sub) {
        if (typeof item === 'string') {
            if (item in exportAlias) {
                list.push({from: item, to: exportAlias[item]});
            } else {
                list.push(item);
            }
        } else {
            if (item.to in exportAlias) {
                list.push({from: item.from, to: exportAlias[item.to]});
            } else {
                list.push(item);
            }
        }
    }
    return list;
}

function kitToCangjie(cjPkg, kitMap) {
    let result = 'package ' + cjPkg + '\n\n';
    result += 'import std.collection.*\n\n';
    result += 'enum Decl {\n';
    result += '    | Name(String)\n';
    result += '    | Mapping(String, String)\n';
    result += '}\n\n';
    result += 'enum ImportClause {\n';
    result += '    | Package(String)\n';
    result += '    | Decls(Array<Decl>)\n';
    result += '}\n\n';
    result += 'type KitConfig = HashMap<String, ImportClause>\n';
    result += 'type KitConfigs = HashMap<String, KitConfig>\n\n';
    result += 'let kitConfigs = HashMap<String, KitConfig>(\n';
    for (const kitName in kitMap) {
        const kitConfig = kitMap[kitName];
        result += `    ("${kitName}", KitConfig(\n`;
        for (const apiName in kitConfig) {
            const decls = kitConfig[apiName];
            result += `        ("${apiName}", `;
            if (typeof decls === 'string') {
                result += `Package("${decls}")),\n`;
                continue;
            }
            result += 'Decls([\n';
            for (let i = 0, il = decls.length; i < il; ++i) {
                const element = decls[i];
                result += typeof element === 'string'
                    ? `            Name("${element}")`
                    : `            Mapping("${element.from}", "${element.to}")`;
                result += i < il - 1
                    ? ',\n'
                    : '\n';
            }
            result += '        ])),\n';
        }
        result += '    )),\n';
    }
    result += ')\n';
    return result;
}

function apiToCangjie(cjPkg, bundleMap) {
    let result = 'package ' + cjPkg + '\n\n';
    result += 'import std.collection.*\n\n';
    result += 'let bundleMap = HashMap<String, String>(\n';
    for (const apiName in bundleMap) {
        result += `    ("${apiName}", "${bundleMap[apiName]}"),\n`;
    }
    result += ')\n';
    return result;
}

function main() {
    const {pkgName, outApi, outKit, sdkRoot} = processArgs();
    const bundleMap = {};
    const kitMap = {};
    const apiRoots = [];
    const kitRoots = [];
    for (const dir of sdkRoot) {
        if (!fs.existsSync(dir)) {
            continue;
        }
        const apiDir = path.join(dir, 'api');
        const kitDir = path.join(dir, 'kits');
        if (fs.existsSync(apiDir)) {
            apiRoots.push(apiDir);
        }
        if (fs.existsSync(kitDir)) {
            kitRoots.push(kitDir);
        }
    }
    for (const dir of apiRoots) {
        processApi(dir, bundleMap);
    }
    for (const dir of kitRoots) {
        processKit(dir, kitMap);
    }

    const apiContent = apiToCangjie(pkgName, bundleMap);
    fs.writeFileSync(outApi, apiContent);
    const kitContent = kitToCangjie(pkgName, kitMap);
    fs.writeFileSync(outKit, kitContent);
}

main();