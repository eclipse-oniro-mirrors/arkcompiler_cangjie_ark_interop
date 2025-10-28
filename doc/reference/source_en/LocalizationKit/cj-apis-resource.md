# ohos.resource

This module describes resource types.

## Import Module

```cangjie
import kit.LocalizationKit.*
```

## Usage Instructions

API sample code usage instructions:

- If the first line of sample code contains a "// index.cj" comment, it indicates the sample can be compiled and run in the "index.cj" file of the Cangjie template project.
- If the sample requires obtaining the [Context](../AbilityKit/cj-apis-app-ability-ui_ability.md#class-context) application context, it needs to be configured in the "main_ability.cj" file of the Cangjie template project.

For the above sample projects and configuration templates, please refer to [Cangjie Sample Code Instructions](../cj-development-intro.md#Cangjie-Sample-Code-Instructions).

## class AppResource

```cangjie
public class AppResource <: Length & ResourceColor & ResourceStr {
    public var bundleName: String
    public var moduleName: String
    public var id: UInt32
    public var params:?Array<Any>
    public var resType:?Int32
    public init(
        bundleName: String,
        moduleName: String,
        id: UInt32,
        params!: ?Array<Any> = None,
        resType!: ?Int32 = None
    )
}
```

**Function:** Represents a resource type.

**System Capability:** SystemCapability.Global.ResourceManager

**Since:** 21

**Parent Types:**

- Length
- ResourceColor
- ResourceStr

### var bundleName

```cangjie
public var bundleName: String
```

**Function:** The package name of the application.

**Type:** String

**System Capability:** SystemCapability.Global.ResourceManager

**Since:** 21

### var id

```cangjie
public var id: UInt32
```

**Function:** Resource ID.

**Type:** UInt32

**System Capability:** SystemCapability.Global.ResourceManager

**Since:** 21

### var moduleName

```cangjie
public var moduleName: String
```

**Function:** The module name of the application.

**Type:** String

**System Capability:** SystemCapability.Global.ResourceManager

**Since:** 21

### var params

```cangjie
public var params:?Array<Any>
```

**Function:** Additional resource parameters (optional).

**Type:** ?Array\<Any>

**System Capability:** SystemCapability.Global.ResourceManager

**Since:** 21

### var resType

```cangjie
public var resType:?Int32
```

**Function:** The type of resource (optional).

**Type:** ?Int32

**System Capability:** SystemCapability.Global.ResourceManager

**Since:** 21

### init(String, String, UInt32, ?Array\<Any>, ?Int32)

```cangjie
public init(
    bundleName: String,
    moduleName: String,
    id: UInt32,
    params!: ?Array<Any> = None,
    resType!: ?Int32 = None
)
```

**Function:** Constructs a resource type object.

**System Capability:** SystemCapability.Global.ResourceManager

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| bundleName | String | Yes | - | The package name of the application. |
| moduleName | String | Yes | - | The module name of the application. |
| id | UInt32 | Yes | - | Resource ID. |
| params | ?Array\<Any> | No | None | **Named parameter.** Additional resource parameters. |
| resType | ?Int32 | No | None | **Named parameter.** The type of resource. |