# 通过键值型数据库实现数据持久化

## 场景介绍

键值型数据库存储键值对形式的数据，当需要存储的数据没有复杂的关系模型，比如存储商品名称及对应价格、员工工号及今日是否已出勤等，由于数据复杂度低，更容易兼容不同数据库版本和设备类型，因此推荐使用键值型数据库持久化此类数据。

## 约束限制

- 设备协同数据库，针对每条记录，Key的长度≤896 Byte，Value的长度&lt;4 MB。
- 单版本数据库，针对每条记录，Key的长度≤1 KB，Value的长度&lt;4 MB。
- 每个应用程序最多支持同时打开16个键值型分布式数据库。
- 键值型数据库事件回调方法中不允许进行阻塞操作，例如修改UI组件。

## 接口说明

以下是键值型数据库持久化功能的相关接口，大部分为异步接口。异步接口均有callback和Promise两种返回形式，下表均以callback形式为例，更多接口及使用方式请参见[分布式键值数据库](../../../reference/source_zh_cn/ArkData/cj-apis-distributed_kv_store.md)。

| 接口名称 | 描述 |
| -------- | -------- |
| createKVManager(config: KVManagerConfig): KVManager | 创建一个KVManager对象实例，用于管理数据库对象。 |
| getSingleKVStore(storeId: String, options: KVOptions): SingleKVStore | 指定options和storeId，创建并获取单版本分布式键值数据库。 |
| getDeviceKVStore(storeId: String, options: KVOptions): DeviceKVStore | 指定Options和storeId，创建并获取多设备协同数据库。|
| put(key: String, value: KVValueType): Unit | 添加指定类型的键值对到数据库。 |
| get(key: String): KVValueType | 获取指定键的值。 |
| delete(key: String): Unit | 从数据库中删除指定键值的数据。 |
| closeKVStore(appId: String, storeId: String): Unit | 通过storeId的值关闭指定的分布式键值数据库。 |
| deleteKVStore(appId: String, storeId: String): Unit | 通过storeId的值删除指定的分布式键值数据库。 |

## 开发步骤

1. 若要使用键值型数据库，首先要获取一个KVManager实例，用于管理数据库对象。示例代码如下所示：

    <!-- compile -->

    ```cangjie
    // main_ability.cj
    import kit.ArkData.{ DistributedKVStore, KVManagerConfig }
    import kit.PerformanceAnalysisKit.Hilog
    import kit.AbilityKit.{UIAbility, AbilityStage, Want, LaunchParam, LaunchReason, UIAbilityContext}
    import ohos.business_exception.BusinessException
    import ohos.data.distributed_kv_store.KVManager

    var kvManager: Option<KVManager> = Option<KVManager>.None
    var globalAbilityContext: Option<UIAbilityContext> = Option<UIAbilityContext>.None

    class MainAbility <: UIAbility {
        public init() {
            super()
            registerSelf()
        }

        public override func onCreate(want: Want, launchParam: LaunchParam): Unit {
            // 获取context
            globalAbilityContext = this.context

            let kvManagerConfig = KVManagerConfig(globalAbilityContext.getOrThrow, "com.example.datamanagertest")
            try {
                // 创建KVManager实例
                kvManager = DistributedKVStore.createKVManager(kvManagerConfig)
                // 继续创建获取数据库
                // ...
            } catch (e: BusinessException) {
                Hilog.error(0, "ErrorCode: ${e.code}", e.message)
            }
            match (launchParam.launchReason) {
                case LaunchReason.START_ABILITY => Hilog.info(0, "cangjie", "START_ABILITY")
                case _ => ()
            }
        }
        // ...
    }
    ```

2. 创建并获取键值数据库。示例代码如下所示：

    <!-- compile -->

    ```cangjie
    // xxx.cj
    import kit.ArkData.*
    import ohos.business_exception.BusinessException
    import ohos.data.distributed_kv_store.SingleKVStore

    var kvStore: Option<SingleKVStore> = Option<SingleKVStore>.None

    try {
        let options = KVOptions(
            KVSecurityLevel.S1,
            createIfMissing: true,
            encrypt: false,
            backup: false,
            autoSync: false
        )
        kvStore = kvManager.getOrThrow().getKVStore("storeId", options)
    } catch (e: BusinessException) {
        Hilog.error(0, "ErrorCode: ${e.code}", e.message)
    }
    ```

3. 调用put()方法向键值数据库中插入数据。示例代码如下所示：

    <!-- compile -->

    ```cangjie
    // xxx.cj
    import ohos.data.distributed_kv_store.ValueType as KVValueType

    const KEY_TEST_STRING_ELEMENT: String = "key_test_string"
    const VALUE_TEST_STRING_ELEMENT: String = "value_test_string"

    try {
        kvStore.getOrThrow().put(KEY_TEST_STRING_ELEMENT, KVValueType.StringValue(VALUE_TEST_STRING_ELEMENT))
    } catch (e: BusinessException) {
        Hilog.error(0, "ErrorCode: ${e.code}", e.message)
    }
    ```

    > **说明：**
    >
    > 当Key值存在时，put()方法会修改其值，否则新增一条数据。

4. 调用get()方法获取指定键的值。示例代码如下所示：

    <!-- compile -->

    ```cangjie
    // xxx.cj
    try {
        let singleKVStore = kvStore.getOrThrow()
        singleKVStore.put(KEY_TEST_STRING_ELEMENT, KVValueType.StringValue(VALUE_TEST_STRING_ELEMENT))
        Hilog.info(0, "cangjie", "Succeeded in putting data.")
        let value = singleKVStore.get(KEY_TEST_STRING_ELEMENT)
        match (value) {
            case StringValue(v) => Hilog.info(0, "cangjie", "The obtained value is a String")
            case _ => Hilog.info(0, "cangjie", "The obtained value is not a string.")
        }
    } catch (e: BusinessException) {
        Hilog.error(0, "ErrorCode: ${e.code}", e.message)
    }
   ```

5. 调用delete()方法删除指定键值的数据。示例代码如下所示：

    <!-- compile -->

    ```cangjie
    // xxx.cj
    try {
        let singleKVStore = kvStore.getOrThrow()
        singleKVStore.put(KEY_TEST_STRING_ELEMENT, KVValueType.StringValue(VALUE_TEST_STRING_ELEMENT))
        singleKVStore.delete(KEY_TEST_STRING_ELEMENT)
        Hilog.info(0, "cangjie", "delete data success.")
    } catch (e: BusinessException) {
        Hilog.error(0, "ErrorCode: ${e.code}", e.message)
    }
    ```

6. 通过storeId的值关闭指定的分布式键值数据库。示例代码如下所示：

    <!-- compile -->

    ```cangjie
    // xxx.cj
    try {
        kvManager.getOrThrow().closeKVStore("com.example.datamanagertest", "storeId")
        Hilog.info(0, "cangjie", "closeKVStore success.")
    } catch (e: BusinessException) {
        Hilog.error(0, "ErrorCode: ${e.code}", e.message)
    }
    ```

7. 通过storeId的值删除指定的分布式键值数据库。示例代码如下所示：

    <!-- compile -->

    ```cangjie
    // xxx.cj
    try {
        kvManager.getOrThrow().deleteKVStore("com.example.datamanagertest", "storeId")
        Hilog.info(0, "cangjie", "deleteKVStore success.")
    } catch (e: BusinessException) {
        Hilog.error(0, "ErrorCode: ${e.code}", e.message)
    }
    ```
