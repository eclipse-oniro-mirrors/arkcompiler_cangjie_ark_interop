# ImageSpan

A child component of the [Text](./cj-text-input-text.md#text) component, used to display inline images.

## Import Module

```cangjie
import kit.ArkUI.*
```

## Child Components

None

## Creating the Component

### init(ResourceStr)

```cangjie
public init(src: ResourceStr)
```

**Function:** Creates an ImageSpan component.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| src | [ResourceStr](<font color="red" face="bold">please add link</font>) | Yes | - | Image data source, supporting local and network images. <br/>Supported image formats include png, jpg, bmp, svg, gif, and heif. |

### init(PixelMap)

```cangjie
public init(src: PixelMap)
```

**Function:** Creates an ImageSpan component.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| src | [PixelMap](../apis/ImageKit/cj-apis-image.md#class-pixelmap) | Yes | - | Image data source, supporting local and network images. <br>PixelMap format is a pixel map, commonly used in image editing scenarios. <br>Supports Base64 strings. Format: data:image[png\|jpeg\|bmp\|webp\|heif];base64,[base64 data], where [base64 data] is the Base64 string data. |

## Universal Attributes/Events

Universal Attributes: Supports [Size Settings](./cj-universal-attribute-size.md), [Background Settings](./cj-universal-attribute-background.md), [Border Settings](./cj-universal-attribute-border.md).

Universal Events: Only supports [Click Event](./cj-universal-event-click.md#func-onclick).

## Component Attributes

### func colorFilter(ColorFilter)

```cangjie
public func colorFilter(filter: ColorFilter): This
```

**Function:** Sets the color filter effect for the image.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| filter | [ColorFilter](cj-image-video-image#class-colorfilter) | Yes | - | Color filter effect. <br> The first row of the matrix represents the vector value for R (Red), the second row for G (Green), the third row for B (Blue), and the fourth row for A (Alpha), with each row representing different RGBA vector values. <br>When the diagonal values of the matrix are 1 and other values are 0, the original image colors are preserved. SVG-type image sources must have a stroke attribute. <br>Calculation rule: <br>If the input filter matrix is: <br>![iamgespan](figures/spanimageExample1.PNG)<br>Pixel point is [R, G, B, A]<br>Then the filtered color is [R’, G’, B’, A’]<br>![iamgespan](figures/imagespanExample2.jpg) |

### func objectFit(ImageFit)

```cangjie
public func objectFit(value: ImageFit): This
```

**Function:** Sets the scaling type of the image.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| value | [ImageFit](./cj-common-types.md#enum-imagefit) | Yes | - | Scaling type of the image. <br>Initial value: ImageFit.Cover. |

### func verticalAlign(ImageSpanAlignment)

```cangjie
public func verticalAlign(value: ImageSpanAlignment): This
```

**Function:** Sets the alignment of the image relative to the line height.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| value | [ImageSpanAlignment](cj-common-types.md#enum-imagespanalignment) | Yes | - | Alignment of the image relative to the text. <br>Initial value: ImageSpanAlignment.BOTTOM. |

## Component Events

### func onComplete(ImageCompleteCallback)

```cangjie
public func onComplete(callback: ImageCompleteCallback): This
```

**Function:** Triggered when image data is successfully loaded and decoded.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| callback | [ImageCompleteCallback](<font color="red" face="bold">please add link</font>) | Yes | - | Callback function, triggered when image data is successfully loaded and decoded. Parameter: Dimensions of the successfully loaded image. |

### func onError(ImageErrorCallback)

```cangjie
public func onError(callback: ImageErrorCallback): This
```

**Function:** Triggered when image loading fails.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| callback | [ImageErrorCallback](<font color="red" face="bold">please add link</font>) | Yes | - | Callback function, triggered when image loading encounters an error. Parameter: Error information during image loading. |

## Basic Type Definitions

### class ImageLoadResult

```cangjie
public class ImageLoadResult {
    public var width: Float64
    public var height: Float64
    public var componentWidth: Float64
    public var componentHeight: Float64
    public var loadingStatus: Int64
    public var contentWidth: Float64
    public var contentHeight: Float64
    public var contentOffsetX: Float64
    public var contentOffsetY: Float64
}
```

**Function:** Type for successful image loading.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var componentHeight

```cangjie
public var componentHeight: Float64
```

**Function:** Represents the height of the component.

**Type:** Float64

**Read-Write Capability:** Read-Write

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var componentWidth

```cangjie
public var componentWidth: Float64
```

**Function:** Represents the width of the component.

**Type:** Float64

**Read-Write Capability:** Read-Write

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var contentHeight

```cangjie
public var contentHeight: Float64
```

**Function:** Represents the actual drawing height of the image. Valid only when loadingStatus returns 1.

**Type:** Float64

**Read-Write Capability:** Read-Write

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var contentOffsetX

```cangjie
public var contentOffsetX: Float64
```

**Function:** Represents the x-axis offset of the actual drawing content relative to the component itself. Valid only when loadingStatus returns 1.

**Type:** Float64

**Read-Write Capability:** Read-Write

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var contentOffsetY

```cangjie
public var contentOffsetY: Float64
```

**Function:** Represents the y-axis offset of the actual drawing content relative to the component itself. Valid only when loadingStatus returns 1.

**Type:** Float64

**Read-Write Capability:** Read-Write

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var contentWidth

```cangjie
public var contentWidth: Float64
```

**Function:** Represents the actual drawing width of the image. Valid only when loadingStatus returns 1.

**Type:** Float64

**Read-Write Capability:** Read-Write

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var height

```cangjie
public var height: Float64
```

**Function:** Represents the height of the image.

**Type:** Float64

**Read-Write Capability:** Read-Write

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var loadingStatus

```cangjie
public var loadingStatus: Int64
```

**Function:** Represents the status value of successful image loading.

> **Note:**
>
> A status value of 0 indicates successful image data loading. A status value of 1 indicates successful image decoding.

**Type:** Int64

**Read-Write Capability:** Read-Write

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var width

```cangjie
public var width: Float64
```

**Function:** Represents the width of the image.

**Type:** Float64

**Read-Write Capability:** Read-Write

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

## Example Code

### Example 1

This example demonstrates the alignment and scaling effects of ImageSpan through the verticalAlign and objectFit attributes.

<!-- run -->

```cangjie
package ohos_app_cangjie_entry

import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.*

@Entry
@Component
class EntryView {
    func build() {
        Column {
            Flex(FlexParams(direction: FlexDirection.Column, alignItems: ItemAlign.Center, justifyContent: FlexAlign.Center)) {
                Text() {
                    // Load image resource with specified size and layout
                    ImageSpan(@r(app.media.startIcon))
                        .width(150.px)
                        .height(250.px)
                        .objectFit(ImageFit.Contain)
                        .verticalAlign(ImageSpanAlignment.CENTER)
                    // Apply text decoration to the image
                    Span("This is the Span and ImageSpan component")
                        .decoration(decorationType: TextDecorationType.LineThrough, color: Color.Red).fontSize(25)
                    ImageSpan(@r(app.media.startIcon))
                       .width(150.px)
                       .height(50.px)
                        .objectFit(ImageFit.Contain)
                       .verticalAlign(ImageSpanAlignment.TOP)
                    Span("I am Underline-span2")
                        .decoration(decorationType: TextDecorationType.LineThrough, color: Color.Red).fontSize(25)
                    ImageSpan(@r(app.media.startIcon))
                        .width(150.px)
                        .height(250.px)
                        .objectFit(ImageFit.Fill)
                        .verticalAlign(ImageSpanAlignment.BASELINE)
                    Span("I am Underline-span3")
                        .decoration(decorationType: TextDecorationType.LineThrough, color: Color.Red).fontSize(25)
                    ImageSpan(@r(app.media.startIcon))
                        .width(150.px)
                        .height(50.px)
                        .objectFit(ImageFit.Auto)
                        .verticalAlign(ImageSpanAlignment.BOTTOM)
                    Span("I am Underline-span4")
                        .decoration(decorationType: TextDecorationType.LineThrough, color: Color.Red).fontSize(25)
                }.textAlign(TextAlign.Center)
            }
        }
        .height(720)
        .width(360)
        .padding(left:0, right: 0, top: 0)
    }
}
```

![imageSpan](figures/imageSpan.png)

### Example 2

This example demonstrates the effect of setting background styles for text through the textBackgroundStyle attribute.

<!-- run -->

```cangjie
package ohos_app_cangjie_entry

import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.*
``````markdown
@Entry
@Component
class EntryView {
    func build() {
        Column() {
            Text() {
                ImageSpan(@r(app.media.startIcon)) // Recommended to use custom local images
                .width(200.vp)
                .height(200.vp)
                // Align the center of the image with the center of the line
                .verticalAlign(ImageSpanAlignment.CENTER)
                // Set image background color and corner radius
                .textBackgroundStyle(color: Color.Red, radius: BorderRadiuses(topLeft: 0.vp, topRight: 12.vp, bottomLeft: 24.vp, bottomRight: 48.vp))
            }
        }.width(100.percent).alignItems(HorizontalAlign.Center).justifyContent(FlexAlign.Center)
    }
}
```

![imageSpan2](figures/imageSpan2.png)
