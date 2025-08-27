# 系统相册资源使用指导

photoAccessHelper仅提供开发者对收藏夹、视频相册、截屏和录屏相册进行相关操作。

> **说明：**
>
>
> 文档中使用到 `PhotoAccessHelper` 的地方，默认为使用开发准备中获取的对象。如未添加此段代码导致 `PhotoAccessHelper` 未定义的错误，请自行添加。

如无特别说明，文档中涉及的待获取资源均视为已经预置且在数据库中存在相应数据。如按示例代码执行后仍无法获取资源，请确认文件是否已预置，数据库中是否存在该文件的数据。

## 收藏夹

收藏夹属于系统相册，对图片或视频设置收藏时会自动将其加入到收藏夹中，取消收藏则会将其从收藏夹中移除。

### 获取收藏夹对象

通过[getAlbums](../../../../API_Reference/source_zh_cn/apis/MediaLibraryKit/cj-apis-multimedia-photo_accesshelper.md#func-getalbumsalbumtype-albumsubtype-fetchoptions)接口获取收藏夹对象。

**前提条件**

- 获取相册管理模块photoAccessHelper实例。

**开发步骤**

1. 设置获取收藏夹的参数为photoAccessHelper.AlbumType.SYSTEM和photoAccessHelper.AlbumSubtype.FAVORITE。
2. 调用PhotoAccessHelper.getAlbums接口获取收藏夹对象。

<!-- compile -->

```cangjie
import kit.MediaLibraryKit.*
import kit.ArkData.*
import ohos.base.BusinessException

func example() {
  try {
    let context = ctx.getOrThrow()
    let phAccessHelper = getPhotoAccessHelper(context)
    let fetchResult: FetchResult<Album> = phAccessHelper.getAlbums(AlbumType.SYSTEM, AlbumSubtype.FAVORITE)
    let album: Album = fetchResult.getFirstObject()
    AppLog.info('get favorite album successfully, albumUri: ' + album.albumUri)
    fetchResult.close()
  } catch (e: BusinessException) {
    AppLog.error('get favorite album failed with err: ' + e.toString())
  }
}
```

<!-- compile -->

```cangjie
// main_ability.cj
import ohos.base.AppLog
import ohos.ability.AbilityStage
import ohos.ability.LaunchReason

class MainAbility <: UIAbility {
    public init() {
        super()
        registerSelf()
    }

    public override func onCreate(want: Want, launchParam: LaunchParam): Unit {
        AppLog.info("MainAbility OnCreated.${want.abilityName}")
        match (launchParam.launchReason) {
            case LaunchReason.START_ABILITY => AppLog.info("START_ABILITY")
            case _ => ()
        }
    }

    public override func onWindowStageCreate(windowStage: WindowStage): Unit {
        AppLog.info("MainAbility onWindowStageCreate.")
        windowStage.loadContent("EntryView")
        // declared in index.cj
        ctx = this.context
    }
}
```

### 获取收藏夹中的图片和视频

首先 [获取收藏夹对象](#获取收藏夹对象)，然后调用 [getAssets](../../../../API_Reference/source_zh_cn/apis/MediaLibraryKit/cj-apis-multimedia-photo_accesshelper.md#func-getassetsfetchoptions) 接口获取收藏夹中的资源。

**前提条件**

- 获取相册管理模块photoAccessHelper实例。

下面以获取收藏夹中的一张图片为例。

**开发步骤**

1. [获取收藏夹对象](#获取收藏夹对象)。
2. 建立图片检索条件，用于获取图片。
3. 调用Album.getAssets接口获取图片资源。
4. 调用[getFirstObject](../../../../API_Reference/source_zh_cn/apis/MediaLibraryKit/cj-apis-multimedia-photo_accesshelper.md#func-getfirstobject)接口获取第一张图片。

<!-- compile -->

```cangjie
import kit.MediaLibraryKit.*
import kit.ArkData.*
import ohos.base.BusinessException

func example() {
    let context = ctx.getOrThrow()
    let phAccessHelper = getPhotoAccessHelper(context)
    let predicates: DataSharePredicates = DataSharePredicates()
    let fetchOptions: FetchOptions = FetchOptions(
        fetchColumns: [],
        predicates: predicates
    )

  try {
    let albumFetchResult: FetchResult<Album> = phAccessHelper.getAlbums(AlbumType.SYSTEM, AlbumSubtype.FAVORITE)
    let album: Album = albumFetchResult.getFirstObject()
    AppLog.info('get favorite album successfully, albumUri: ' + album.albumUri)

    let photoFetchResult: FetchResult<PhotoAsset> = album.getAssets(fetchOptions)
    let photoAsset: PhotoAsset = photoFetchResult.getFirstObject()
    AppLog.info('favorite album getAssets successfully, photoAsset displayName: ' + photoAsset.displayName)
    photoFetchResult.close()
    albumFetchResult.close()
  } catch (e: BusinessException) {
    AppLog.error('favorite failed with err: ' + e.toString())
  }
}
```

<!-- compile -->

```cangjie
// main_ability.cj
import ohos.base.AppLog
import ohos.ability.AbilityStage
import ohos.ability.LaunchReason

class MainAbility <: UIAbility {
    public init() {
        super()
        registerSelf()
    }

    public override func onCreate(want: Want, launchParam: LaunchParam): Unit {
        AppLog.info("MainAbility OnCreated.${want.abilityName}")
        match (launchParam.launchReason) {
            case LaunchReason.START_ABILITY => AppLog.info("START_ABILITY")
            case _ => ()
        }
    }

    public override func onWindowStageCreate(windowStage: WindowStage): Unit {
        AppLog.info("MainAbility onWindowStageCreate.")
        windowStage.loadContent("EntryView")
        // declared in index.cj
        ctx = this.context
    }
}
```

## 视频相册

视频相册属于系统相册，用户文件中属于视频类型的媒体文件会自动加入到视频相册中。

### 获取视频相册对象

通过[getAlbums](../../../../API_Reference/source_zh_cn/apis/MediaLibraryKit/cj-apis-multimedia-photo_accesshelper.md#func-getalbumsalbumtype-albumsubtype-fetchoptions)接口获取视频相册对象。

**前提条件**

- 获取相册管理模块photoAccessHelper实例。

**开发步骤**

1. 设置获取视频相册的参数为photoAccessHelper.AlbumType.SYSTEM和photoAccessHelper.AlbumSubtype.VIDEO。
2. 调用PhotoAccessHelper.getAlbums接口获取视频相册。

<!-- compile -->

```cangjie
import kit.MediaLibraryKit.*
import kit.ArkData.*
import ohos.base.BusinessException

func example() {
  try {
    let context = ctx.getOrThrow()
    let phAccessHelper = getPhotoAccessHelper(context)
    let fetchResult: FetchResult<Album> = phAccessHelper.getAlbums(AlbumType.SYSTEM, AlbumSubtype.VIDEO)
    let album: Album = fetchResult.getFirstObject()
    AppLog.info('get video album successfully, albumUri: ' + album.albumUri)
    fetchResult.close()
  } catch (e: BusinessException) {
    AppLog.error('get video album failed with err: ' + e.toString())
  }
}
```

<!-- compile -->

```cangjie
// main_ability.cj
import ohos.base.AppLog
import ohos.ability.AbilityStage
import ohos.ability.LaunchReason

class MainAbility <: UIAbility {
    public init() {
        super()
        registerSelf()
    }

    public override func onCreate(want: Want, launchParam: LaunchParam): Unit {
        AppLog.info("MainAbility OnCreated.${want.abilityName}")
        match (launchParam.launchReason) {
            case LaunchReason.START_ABILITY => AppLog.info("START_ABILITY")
            case _ => ()
        }
    }

    public override func onWindowStageCreate(windowStage: WindowStage): Unit {
        AppLog.info("MainAbility onWindowStageCreate.")
        windowStage.loadContent("EntryView")
        // declared in index.cj
        ctx = this.context
    }
}
```

### 获取视频相册中的视频

先[获取视频相册对象](#获取视频相册对象)。然后调用[getAssets](../../../../API_Reference/source_zh_cn/apis/MediaLibraryKit/cj-apis-multimedia-photo_accesshelper.md#func-getassetsfetchoptions)接口获取视频相册对象中的视频资源。

**前提条件**

- 获取相册管理模块photoAccessHelper实例。

下面以获取视频相册中的一个视频为例。

**开发步骤**

1. 先[获取视频相册对象](#获取视频相册对象)。
2. 建立视频检索条件，用于获取视频。
3. 调用Album.getAssets接口获取视频资源。
4. 调用[getFirstObject](../../../../API_Reference/source_zh_cn/apis/MediaLibraryKit/cj-apis-multimedia-photo_accesshelper.md#func-getfirstobject)接口获取第一个视频。

<!-- compile -->

```cangjie
import kit.MediaLibraryKit.*
import kit.ArkData.*
import ohos.base.BusinessException

func example() {
    let context = ctx.getOrThrow()
    let phAccessHelper = getPhotoAccessHelper(context)
    let predicates: DataSharePredicates = DataSharePredicates()
    let fetchOptions: FetchOptions = FetchOptions(
        fetchColumns: [],
        predicates: predicates
    )

  try {
    let albumFetchResult: FetchResult<Album> = phAccessHelper.getAlbums(AlbumType.SYSTEM, AlbumSubtype.VIDEO)
    let album: Album = albumFetchResult.getFirstObject()
    AppLog.info('get video album successfully, albumUri: ' + album.albumUri)

    let videoFetchResult: FetchResult<PhotoAsset> = album.getAssets(fetchOptions)
    let photoAsset: PhotoAsset = videoFetchResult.getFirstObject()
    AppLog.info('video album getAssets successfully, photoAsset displayName: ' + photoAsset.displayName)
    videoFetchResult.close()
    albumFetchResult.close()
  } catch (e: BusinessException) {
    AppLog.error('video failed with err: ' + e.toString())
  }
}
```

<!-- compile -->

```cangjie
// main_ability.cj
import ohos.base.AppLog
import ohos.ability.AbilityStage
import ohos.ability.LaunchReason

class MainAbility <: UIAbility {
    public init() {
        super()
        registerSelf()
    }

    public override func onCreate(want: Want, launchParam: LaunchParam): Unit {
        AppLog.info("MainAbility OnCreated.${want.abilityName}")
        match (launchParam.launchReason) {
            case LaunchReason.START_ABILITY => AppLog.info("START_ABILITY")
            case _ => ()
        }
    }

    public override func onWindowStageCreate(windowStage: WindowStage): Unit {
        AppLog.info("MainAbility onWindowStageCreate.")
        windowStage.loadContent("EntryView")
        // declared in index.cj
        ctx = this.context
    }
}
```
