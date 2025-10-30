# Cangjie - ArkTS Interoperability(Beta Feature)

## Introduction

Cangjie-ArkTS interoperability is used to provide cross-language interoperability capabilities between Cangjie and ArkTS, including Cangjie interoperability library interfaces and interoperability macro interfaces. It aims to provide developers with cross-language interoperability solutions that balance development efficiency and runtime efficiency, offer a concise interoperability development paradigm, and reduce cross-language communication overhead. At the same time, this repository also provides public capability interfaces, including JSON serialization and deserialization interfaces, C language interoperability utility class interfaces, general exception interfaces, cross-language callback interfaces, and also provides public documentation, including Cangjie API reference, application development guide, and Cangjie programming language user manual. Currently, the interfaces open in this repository only support standard devices.

## System Architecture

The overall architecture is shown in the following diagram:

![cangjie interop API](./figures/cangjie-interop_eng.png)

Interface Layer:

- Interoperability Library (ark_interop): Developers can achieve cross-language parameter passing, function calls, and other capabilities by calling the APIs provided by the interoperability library.
    - JSRuntime: Used to represent an ArkTS runtime instance. Each ArkTS runtime corresponds to one JSRuntime instance, which provides methods to create JSRuntime and obtain the execution context JSContext associated with that JSRuntime;
    - JSContext: Used to represent the execution context associated with a JSRuntime. This execution context saves global objects and provides methods for module loading, JSValue access, etc.;
    - JSModule: Used to represent an ArkTS module. Through the methods it provides, loaded ArkTS modules can be converted to JSObject to enable access to data and methods in that module; new modules can also be created and methods registered to that module for exporting Cangjie logic for ArkTS side calls;
    - JSCallInfo: Used to represent call information when ArkTS calls Cangjie methods, mainly used to obtain the number of parameters and parameter list;
    - JSValue: Used to represent an ArkTS object. In Cangjie-ArkTS interoperability, it is used to encapsulate and pass ArkTS data objects. When you need to get values from JSValue on the Cangjie side, you need to use the methods provided in JSValue to convert them to specific type instances, such as JSNumber, JSString, JSBoolean, etc.; conversely, when you need to pass data from Cangjie side to ArkTS, you can use the methods provided by JSContext to encapsulate a Cangjie object into a JSValue instance;
- Interoperability Macro (ark_interop_macro): Developers use interoperability macros to annotate Cangjie interfaces that need to be called by ArkTS code, which can automatically generate interoperability "glue" code and ArkTS interface declarations.
- Interoperability Helper Functions (ark_interop_helper): Developers use helper functions provided by interoperability to write Cangjie-ArkTS interoperability code more conveniently.
- General Exception Interface: Provides a general exception class BusinessException.
- Cross-language Callback Interface: Provides utility classes for cross-language function callback parameters.

Framework Layer:

- Module Loading: Provides the ability to load Cangjie modules on the ArkTS side. For detailed loading methods, please refer to [Loading Cangjie Modules in ArkTS](https://gitcode.com/openharmony-sig/arkcompiler_cangjie_ark_interop/blob/master/doc/cj-user-manual/source_en/FFI/cangjie-arkts/arkts_import_cangjie.md).
- Runtime Management: Provides the ability to create ArkTS runtime.
- Cross-language Function Calls: In the Cangjie calling ArkTS scenario, ArkTS functions are called through C language interoperability with ArkTS runtime interfaces; in the ArkTS calling Cangjie scenario, Cangjie functions are registered to ArkTS runtime through interoperability interfaces, and then ArkTS runtime calls Cangjie functions through C language interoperability.
- Cross-language Type Conversion: The interoperability library mainly provides the following main types: JSUndefined, JSNull, JSBoolean, JSNumber, JSString, JSObject, JSArray, JSFunction, JSBigInt, etc., and provides interfaces to achieve mutual conversion between ArkTS types and Cangjie types. For the mapped Cangjie types, please refer to [Type Mapping](https://gitcode.com/openharmony-sig/arkcompiler_cangjie_ark_interop/blob/master/doc/cj-user-manual/source_en/FFI/cangjie-arkts/interoperability_macro.md#%E7%B1%BB%E5%9E%8B%E6%98%A0%E5%B0%84).
- Cross-language Exception Handling: In the Cangjie calling ArkTS scenario, when exceptions occur in ArkTS code but are not caught, the exception will be converted to a Cangjie exception and propagated to the Cangjie side; in the ArkTS calling Cangjie scenario, when exceptions occur in Cangjie code but are not caught, the exception will be converted to a JS exception and propagated to the ArkTS side.
- Cross-language Reference Management: Provides a safe reference mechanism. On the Cangjie side, Cangjie objects are used to map ArkTS runtime objects, ensuring that these ArkTS objects will not be garbage collected during cross-language calls.
- Cross-language Thread Coordination: Since Cangjie provides user-mode threads and the runtime schedules Cangjie threads to execute on system threads, Cangjie does not bind to specific system threads for execution by default. However, Cangjie-ArkTS interoperability logic requires running on the system thread bound to the ArkTS runtime, so the interoperability library provides interfaces to switch to ArkTS thread execution.

Dependent component introduction in the architecture diagram:
- ability_runtime: Provides the ability to load dynamic libraries. The interoperability depends on this component to implement the ability to load Cangjie modules on the ArkTS side.
- napi: Provides the ability to call ArkTS virtual machine interfaces. The interoperability functionality is completed by calling the interfaces provided by napi through C language interoperability.

## Directory

```text
arkcompiler/cangjie_ark_interop
├── ohos
|   ├── ark_interop        # Cangjie interoperability library
|   ├── ark_interop_helper # Cangjie interoperability library helper tools
|   ├── ark_interop_macro  # Cangjie interoperability library macro
|   ├── business_exception # Cangjie public capabilities, providing exception classes
|   ├── callback_invoke    # Cangjie public capabilities, providing callback utility classes
|   ├── encoding           # Cangjie public capabilities, providing JSON library
|   ├── ffi                # Cangjie public capabilities, providing C language interoperability library
|   ├── labels             # Cangjie public capabilities, providing api level labels
|   ├── utf16string        # UTF16 string processing class provided by Cangjie interoperability library
├── figures                # Images required for this README
└── test                   # Cangjie interoperability test cases
```

## Usage Scenarios

In OpenHarmony application development, there is a demand for hybrid development using Cangjie and ArkTS, such as the following scenarios:

- Scenario 1: When developing with ArkTS, calling code modules developed in Cangjie through cross-language interoperability to leverage Cangjie's high performance and high concurrency advantages, improving application performance experience;

For detailed examples, please refer to: [ArkTS Calling Cangjie](https://gitcode.com/openharmony-sig/arkcompiler_cangjie_ark_interop/blob/master/doc/cj-user-manual/source_en/FFI/cangjie-arkts/method_of_ArkTS_calling_cangjie.md)

- Scenario 2: When developing with Cangjie, calling ArkTS libraries through cross-language interoperability to reuse the rich ArkTS library ecosystem;

For detailed examples, please refer to: [Using ArkTS Modules in Cangjie Applications](https://gitcode.com/openharmony-sig/arkcompiler_cangjie_ark_interop/blob/master/doc/cj-user-manual/source_en/FFI/cangjie-arkts/using_arkts_module.md)

At the same time, to address the development complexity brought by interoperability, Cangjie provides the declarative interoperability macro ark_interop_macro, which allows developers to use the macro "@Interop[ArkTS]" to annotate functions or types in Cangjie code that need to be exported for ArkTS use. During the compilation stage, it automatically generates interoperability "glue layer" code and ArkTS interface declarations, reducing the complexity of developers writing interoperability code manually. For detailed examples, please refer to: [Cangjie-ArkTS Declarative Interoperability Macro](https://gitcode.com/openharmony-sig/arkcompiler_cangjie_ark_interop/blob/master/doc/cj-user-manual/source_en/FFI/cangjie-arkts/interoperability_macro.md).

For interoperability related APIs, please see [API Documentation](https://gitcode.com/openharmony-sig/arkcompiler_cangjie_ark_interop/blob/master/doc/reference/source_en/arkinterop/cj-apis-ark_interop.md), and for related guidance, please see [User manual](https://gitcode.com/openharmony-sig/arkcompiler_cangjie_ark_interop/blob/master/doc/cj-user-manual/source_en/FFI/cangjie-arkts/cangjie_arkts_overview.md)

## Constraints

None

## Code Contribution

Developers are welcome to contribute code, documentation, etc. For specific contribution processes and methods, please refer to [Code Contribution](https://gitcode.com/openharmony/docs/blob/master/en/contribute/code-contribution.md).

## Related Repositories

[arkui_napi](https://gitcode.com/openharmony/arkui_napi)

[ability_runtime](https://gitcode.com/openharmony/ability_ability_runtime)
