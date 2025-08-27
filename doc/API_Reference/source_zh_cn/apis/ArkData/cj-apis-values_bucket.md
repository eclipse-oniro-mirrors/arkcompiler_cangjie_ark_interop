# ohos.data.values_bucket

数据集(ValuesBucket) 是开发者向数据库插入的数据集合，数据集以键值对的形式进行传输。

## 导入模块

```cangjie
import kit.ArkData.*
```

## enum ValueType

```cangjie
public enum ValueType {
    | Integer(Int64)
    | Double(Float64)
    | StringValue(String)
    | Boolean(Bool)
}
```

**功能：** 该类型用于表示数据库允许的数据字段类型。

**系统能力：** SystemCapability.DistributedDataManager.DataShare.Core

**起始版本：** 21

### Boolean(Bool)

```cangjie
Boolean(Bool)
```

**功能：** 表示字段类型为布尔值。

**系统能力：** SystemCapability.DistributedDataManager.DataShare.Core

**起始版本：** 21

### Double(Float64)

```cangjie
Double(Float64)
```

**功能：** 表示字段类型为浮点数。

**系统能力：** SystemCapability.DistributedDataManager.DataShare.Core

**起始版本：** 21

### Integer(Int64)

```cangjie
Integer(Int64)
```

**功能：** 表示字段类型为整型数。

**系统能力：** SystemCapability.DistributedDataManager.DataShare.Core

**起始版本：** 21

### StringValue(String)

```cangjie
StringValue(String)
```

**功能：** 表示字段类型为字符串。

**系统能力：** SystemCapability.DistributedDataManager.DataShare.Core

**起始版本：** 21
