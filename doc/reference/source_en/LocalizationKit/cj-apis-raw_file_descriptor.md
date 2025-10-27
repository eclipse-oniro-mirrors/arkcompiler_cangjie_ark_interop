# ohos.raw_file_descriptor

This module represents the descriptor information of a rawfile.

## Import Module

```cangjie
import kit.LocalizationKit.*
```

## Usage Instructions

API sample code usage instructions:

- If the first line of sample code contains a "// index.cj" comment, it indicates the sample can be compiled and run in the "index.cj" file of the Cangjie template project.
- If the sample requires obtaining the [Context](../AbilityKit/cj-apis-app-ability-ui_ability.md#class-context) application context, it needs to be configured in the "main_ability.cj" file of the Cangjie template project.

For the above sample projects and configuration templates, please refer to [Cangjie Sample Code Instructions](../cj-development-intro.md#仓颉示例代码说明).

## Usage Instructions

API sample code usage instructions:

- If the first line of sample code contains a "// index.cj" comment, it indicates the sample can be compiled and run in the "index.cj" file of the Cangjie template project.
- If the sample requires obtaining the [Context](../AbilityKit/cj-apis-app-ability-ui_ability.md#class-context) application context, it needs to be configured in the "main_ability.cj" file of the Cangjie template project.

For the above sample projects and configuration templates, please refer to [Cangjie Sample Code Instructions](../cj-development-intro.md#仓颉示例代码说明).

## class RawFileDescriptor

```cangjie
public class RawFileDescriptor {
    public var fd: Int32
    public var offset: Int64
    public var length: Int64
}
```

**Description:** Represents the descriptor information of a rawfile.

**System Capability:** SystemCapability.Global.ResourceManager

**Since:** 21

### var fd

```cangjie
public var fd: Int32
```

**Description:** File descriptor of the HAP where the rawfile is located.

**Type:** Int32

**System Capability:** SystemCapability.Global.ResourceManager

**Since:** 21

### var length

```cangjie
public var length: Int64
```

**Description:** File length of the rawfile.

**Type:** Int64

**System Capability:** SystemCapability.Global.ResourceManager

**Since:** 21

### var offset

```cangjie
public var offset: Int64
```

**Description:** Starting offset of the rawfile.

**Type:** Int64

**System Capability:** SystemCapability.Global.ResourceManager

**Since:** 21