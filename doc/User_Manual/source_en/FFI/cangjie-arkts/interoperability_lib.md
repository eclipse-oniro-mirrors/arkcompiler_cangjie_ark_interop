# Cangjie-ArkTS Interoperability Library

> **Note:**
>
> It is recommended to use the [Declarative Interoperability Macro](./interoperability_macro.md) approach for ArkTS to call Cangjie modules. Only use the "Cangjie-ArkTS Interoperability Library" method when the macro approach cannot meet development requirements.

To develop a Cangjie interoperability module:

1. Create a Cangjie module in an ArkTS project. For details, refer to [Adding a Cangjie Module to an ArkTS Project](./add_cangjie_module.md).

2. Construct code in the generated Cangjie file as shown in the following example:

    ```cangjie
    // Define the package name, which must match the package name in cjpm.toml
    package ohos_app_cangjie_entry
    // Import the interoperability library
    import ohos.ark_interop.*
    // Define the interoperability function. Its parameter type must be (JSContext,JSCallInfo), and return type must be JSValue
    func addNumber(context: JSContext, callInfo: JSCallInfo): JSValue {
        // Get arguments from JSCallInfo
        let arg0: JSValue = callInfo[0]
        let arg1: JSValue = callInfo[1]
        // Convert JSValue to Cangjie types

        let a: Float64 = arg0.toNumber()
        let b: Float64 = arg1.toNumber()

        // Actual Cangjie function behavior
        let value = a + b
        // Convert result to JSValue

        let result: JSValue = context.number(value).toJSValue()

        // Return JSValue
        return result
    }
    // Must register the function to JSModule
    let EXPORT_MODULE = JSModule.registerModule {
        runtime, exports =>
            exports["addNumber"] = runtime.function(addNumber).toJSValue()
    }
    ```

3. In the **cangjie->types->libohos_app_cangjie_entry->Index.d.ts** file, provide the interface declaration for interoperability:

    ```typescript
    // entry/src/main/cangjie/types/libohos_app_cangjie_entry/Index.d.ts
    export declare function addNumber(a: number, b: number): number;
    ```

4. On the ArkTS calling side, the code is as follows:

    ```typescript
    // Import the Cangjie dynamic library. The library name should match the Cangjie package name, which must be consistent with the package name of the interoperability interface
    import { addNumber } from "libohos_app_cangjie_entry.so";

    // Call the Cangjie interface
    let result = addNumber(1, 2);
    console.log(`1 + 2 = ${result}`);
    ```

In the above process, the exported function defined on the Cangjie side uses basic Cangjie types through the interoperability library. For other types, refer to the chapters [Using ArkTS Data in Cangjie](./operating_ArkTS_data.md) and [Operating Cangjie Objects in ArkTS](./operating_cangjie_objects.md).

> **Caution:**
>
> Within the same Cangjie module (the same package and its sub-packages), the following rules must be followed to avoid symbol conflicts:
>
> - Functions, interfaces, and classes registered to JSModule using JSModule.registerModule, JSModule.registerClass, or JSModule.registerFunc must not have duplicate names.
>
>   Incorrect example:
>
>   ```cangjie
>   func addFloat() {}
>   func addInt() {}
>   let EXPORT_MODULE = JSModule.registerModule {
>      runtime, exports =>
>         exports["addNumber"] = runtime.function(addFloat).toJSValue()
>         exports["addNumber"] = runtime.function(addInt).toJSValue() // Overwrites the first registered addNumber function
>   }
>   ```
>
> - Functions, interfaces, and classes registered to JSModule using JSModule.registerModule, JSModule.registerClass, or JSModule.registerFunc must not have the same names as those decorated with `@Interop`.
>
>   Incorrect example:
>
>   ```cangjie
>   @Interop[ArkTS]
>   public func addNumber() : Unit {}
>
>   func addFloat() {}
>   let EXPORT_MODULE = JSModule.registerModule {
>       runtime, exports =>
>       exports["addNumber"] = runtime.function(addFloat).toJSValue() // Overwrites the @Interop-decorated addNumber function
>   }
>   ```