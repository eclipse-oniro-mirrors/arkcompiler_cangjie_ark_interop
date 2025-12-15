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

export declare interface CanFly {
    flies: () => void
}

export declare const enum Season {
    Spring = 0,
    Summer = 1,
    Autumn = 2,
    Winter = 3
}

export declare interface NormalInterface {
    mutableInstanceProperty: number
    ImmutableInstanceProperty: string
    abstractInstanceMemberFunctionWithoutDefaultImplementation: (a: number, b: number) => number
    abstractOverloadedInstanceMemberFunction: (p0: string) => void
    abstractInstanceMemberFunctionWithDefaultImplementation: (p0: Array<string>, p1: Map<string, Array<string>>) => string
    abstractImmutableInstanceMemberPropertyWithDefaultImplementation: Map<string, Map<string, number>> | undefined
    abstractMutableInstanceMemberPropertyWithDefaultImplementation: Array<string> | undefined
}

export declare class ClassThatBothInheritsAnotherClassAndImplementsInterfaces {
}

export declare class ClassThatImplementsInterfaces {
}

export declare class ClassThatInheritsAnotherClass {
}

export declare class NormalClass {
    mutableVariableThatHasNoInitialization: number
    mutableVariableThatHasInitialization: number
    immutableVariableThatHasNoInitialization: string | undefined
    immutableVariableThatHasInitialization: ArrayBuffer
    instanceMemberFunction(): void
    immutableInstanceMemberProperty: number
    mutableInstanceMemberProperty: string
}

export declare class AbnormalClass {
}

export declare class CJNativeClass {
}

export declare class TicketMachine {
    static reset(nextId: number): void
    static nextId(): number
}

export declare class Person {
    name: string
    age: number
    static build(): Person
    static buildFromSeason(season: Season): Person
}

export declare class Node {
    name: string
    childCount: number
    childNodeNameList: Array<string>
    hasAnyDescendants: boolean
    toMap(map: Map<string, Node>): void
    parent: Node
    leftChild: Node
    rightChild: Node
    isRoot: boolean
    hasLeftChild: boolean
    hasRightChild: boolean
}

export declare class ClassWithMultiCtors {
    name: string
}

export declare interface CustomLib {
    Node: { new (nodeName: string, leftChild: Node | undefined, rightChild: Node | undefined): Node }
    overloadedFunction_00(): number
    createJSArrayExOfInt64(): Array<number>
    createJSArrayExOfNormalClass(): Array<NormalClass>
    checkJSArrayExOfNormalInterface(a: Array<NormalInterface>): void
    createJSArrayExOfNormalInterface(): Array<NormalInterface>
    CJNativeClass: { new (): CJNativeClass }
    TicketMachine: typeof TicketMachine
    Person: typeof Person
    AbnormalClass: { new (): AbnormalClass }
    NormalClass: { new (mutableVariableThatHasNoInitialization: number): NormalClass }
    ClassThatInheritsAnotherClass: { new (): ClassThatInheritsAnotherClass }
    ClassThatImplementsInterfaces: { new (): ClassThatImplementsInterfaces }
    ClassThatBothInheritsAnotherClassAndImplementsInterfaces: { new (): ClassThatBothInheritsAnotherClassAndImplementsInterfaces }
    ClassWithMultiCtors: {
        new (): ClassWithMultiCtors;
        new (a: number): ClassWithMultiCtors;
        new (a: string): ClassWithMultiCtors;
        new (a: number, b: number): ClassWithMultiCtors;
        new (a: string, b: string): ClassWithMultiCtors;
    }
    f(p: Array<string>, p1: Array<string>, p2: Map<string, string>): void
    test(p0: Map<string, number>): void
    checkObjectThatImplementsNormalInterface(obj: NormalInterface): void
    createJSHashMapExWithKeyBeingOfString(): Map<string, number>
    returnTypeBeingPromiseOfVoid(): Promise<void>
    returnTypeBeingPromiseOfArrayBuffer(): Promise<ArrayBuffer>
    returnTypeBeingPromiseOfOptionalArrayBuffer(): Promise<ArrayBuffer | undefined>
    returnTypeBeingPromiseOfOptionalBool(): Promise<boolean | undefined>
    returnTypeBeingPromiseOfOptionalInt64(): Promise<number | undefined>
    returnTypeBeingPromiseOfFunction_00(): Promise<() => void>
    returnTypeBeingPromiseOfFunction_01(): Promise<(funcArg0: ArrayBuffer | undefined) => ArrayBuffer | undefined>
    checkJSStringEx(s: string): void
    createJSStringEx(): string
    oneParamWithOneNamedParameter(p0: undefined): void
    twoParamsWithTwoNamedParameters(p0: boolean, p1: number): void
    twoParamsWithOneNamedParameter(p0: number, p1: ArrayBuffer): void
    paramBeingOfNestedOptionType_00(p0: ArrayBuffer | undefined): void
    paramBeingOfOptionalInt64(p0: number | undefined): void
    paramBeingOfOptionalArrayBuffer(p0: ArrayBuffer | undefined): void
    paramBeingOfOptionalUnit(p0: undefined | undefined): void
    paramBeingOfOptionalBool(p0: boolean | undefined): void
    paramBeingOfOptionalFloat64(p0: number | undefined): void
    returnTypeBeingOfOptionalInt64(): number | undefined
    returnTypeBeingOfOptionalArrayBuffer(): ArrayBuffer | undefined
    returnTypeBeingOfOptionalBool(): boolean | undefined
    createOptionalNormalClass(): NormalClass | undefined
    createOptionalNormalInterface(a: NormalInterface): NormalInterface | undefined
    zeroParams(): void
    oneParam(p: undefined): void
    twoParams(p0: number, p1: boolean): number
    complexParam_00(p0: (funcArg0: (funcArgfuncArg0: (funcArgfuncArgfuncArg0: (funcArgfuncArgfuncArgfuncArg0: (funcArgfuncArgfuncArgfuncArgfuncArg0: undefined) => boolean) => number) => number) => number | undefined) => ArrayBuffer): void
    complexParam_01(p0: (funcArg0: (funcArgfuncArg0: (funcArgfuncArgfuncArg0: (funcArgfuncArgfuncArgfuncArg0: (funcArgfuncArgfuncArgfuncArgfuncArg0: undefined, funcArgfuncArgfuncArgfuncArgfuncArg1: boolean) => boolean, funcArgfuncArgfuncArgfuncArg1: number) => number, funcArgfuncArgfuncArg1: number) => number, funcArgfuncArg1: ArrayBuffer) => number | undefined, funcArg1: undefined) => void): void
    paramsOfAllKindsOfPrimitiveTypes(p0: undefined, p1: number, p2: number, p3: number, p4: number, p5: number, p6: number, p7: number, p8: number, p9: number, p10: number, p11: number): void
    useQuestionMarkSyntacticSugarInFunctionBody(): void
    returnTypeUnit_00(): void
    returnTypeUnit_01(): void
    returnTypeUnit_02(): void
    returnTypeUnit_03(): void
    returnTypeUnit_04(): void
    returnTypeInt64_00(): number
    returnTypeUInt64_00(): number
    returnTypeFloat64_00(): number
    returnTypeBool_00(): boolean
    returnTypeBool_01(): boolean
    returnTypeOption_00(): undefined | undefined
    returnTypeOption_01(): number | undefined
    returnTypeOption_02(): number | undefined
    returnTypeArrayBuffer_00(): ArrayBuffer
    returnTypeArrayBuffer_01(): ArrayBuffer
    returnTypeArrayBuffer_02(): ArrayBuffer
    returnTypeBeingFunctionType_00(): () => void
    returnTypeBeingFunctionType_01(): (funcArg0: (funcArgfuncArg0: (funcArgfuncArgfuncArg0: (funcArgfuncArgfuncArgfuncArg0: (funcArgfuncArgfuncArgfuncArgfuncArg0: undefined) => boolean) => number) => number) => number | undefined) => ArrayBuffer
    cookBird(bird: CanFly): string
    getDefaultSeason(): Season
    rotateSeason(current: Season): Season
    isHotSeason(current: Season): boolean
    seasonFromOrdinal(index: number): Season | undefined
}
