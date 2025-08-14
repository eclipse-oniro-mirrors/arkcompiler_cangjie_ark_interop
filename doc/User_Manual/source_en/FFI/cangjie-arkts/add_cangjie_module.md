# Adding Cangjie Module

This section explains how to add a Cangjie module to an ArkTS project in DevEco Studio. It primarily covers adding a Cangjie module within the same module and adding a Cangjie static library module, followed by interoperability calls.

## Adding a Cangjie Module Within the Same Module

1. As shown in the figure below, select any file in the ArkTS entry directory, right-click, and choose **New -> Cangjie(Interop)**.

   ![interop-create-new-project](../../figures/interop-create-new-project.png)

2. After clicking the **Cangjie(Interop)** button, the cjpm configuration file `cjpm.toml` and a folder named `cangjie` will be automatically created under the selected ArkTS module. The folder contains template code file `index.cj` and a `types` folder for storing Cangjie interoperability interface declaration files, as shown below:

      ![image-20250222174232257](../../figures/generate-interop-file.png)

      Additionally, the Cangjie dependency will be automatically generated in **entry -> oh-package.json5**:

      ![image-20250222181831627](../../figures/generate-dependency.png)

## Adding a Cangjie Static Library Module

1. Right-click the project name and select **New -> Module** to add a Cangjie static library module.

   ![image-20250415151308119](../../figures/add_static_cangjie_module.png)

2. Select **[Cangjie] Static Library**, click **Next**, and in the pop-up window, change the **Module name** to **cangjielib**.

   ![image-20250415151431836](../../figures/add_static_cangjie_module_2.png)

3. A **cangjielib** folder will then be generated, containing Cangjie source code files and configuration files.

   ![image-20250415152004742](../../figures/add_static_cangjie_module_3.png)

4. In the **cangjielib->src->main->cangjie->index.cj** file, add interoperability code. Take the following code as an example:

   ```cangjie
   // Package name
   package ohos_app_cangjie_cangjielib

   // Import files
   internal import ohos.ark_interop.JSModule
   internal import ohos.ark_interop.JSContext
   internal import ohos.ark_interop.JSCallInfo
   internal import ohos.ark_interop.JSValue

   // Interoperability function
   func sayHelloCJ(runtime: JSContext, callInfo: JSCallInfo): JSValue {
       let result = "cangjie har arkts use "
       runtime.string(result).toJSValue()
   }

   let EXPORT_MODULE = JSModule.registerModule {
       runtime, exports => exports["sayHelloCJ"] = runtime.function(sayHelloCJ).toJSValue()
   }
   ```

5. Under **cangjielib->src->main->cangjie**, create an interoperability folder named **types** and a **libohos_app_cangjie_entry** folder under **types**.

6. Create an **Index.d.ts** file under **types->libohos_app_cangjie_entry** that implements the ArkTS function corresponding to `sayHelloCJ` in the above `index.cj`:

   ```ts
   export declare function sayHelloCJ(s: string): string
   ```

7. Create an **oh-package.json5** file under **types->libohos_app_cangjie_entry** with the following content. In this file, the **name** field should match the package name in the interoperability code. This package name must be consistent with the one configured in **cangjielib->cjpm.toml**. For example, set **name** to `libohos_app_cangjie_cangjielib.so`.

   ```json
   {
     "name": "libohos_app_cangjie_cangjielib.so",
     "types": "./Index.d.ts",
     "version": "1.0.0",
     "description": ""
   }
   ```

8. When using the Cangjie static library module in ArkTS, add the dependency for the above package in the **dependencies** section of **entry/oh-package.json5**:

   ```json
   // ...
     "dependencies": {
       "cangjielib": "file:../cangjielib",
       "libohos_app_cangjie_cangjielib.so": "file:../cangjielib/src/main/cangjie/types/libohos_app_cangjie_entry"
     }
   // ...
   ```

9. Then, in **entry->src->main->ets**, use the function normally. Take the following **Index.ets** as an example:

   ```ts
   // Import Cangjie function
   import { sayHelloCJ } from 'libohos_app_cangjie_cangjielib.so'

   @Entry
   @Component
   struct Index {
     @State message: string = 'Hello World';

     build() {
       RelativeContainer() {
         Text(this.message)
           .fontSize(40)
           .fontWeight(FontWeight.Bold)
           .alignRules({
             center: { anchor: '__container__', align: VerticalAlign.Center },
             middle: { anchor: '__container__', align: HorizontalAlign.Center }
           })
           .onClick(() => {
             // Use Cangjie function
             this.message = sayHelloCJ("Cangjie")
           })
       }
       .height('100%')
       .width('100%')
     }
   }
   ```