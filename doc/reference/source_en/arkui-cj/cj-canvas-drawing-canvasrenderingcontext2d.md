# CanvasRenderingContext2D

Use RenderingContext to draw on Canvas components, with drawable objects including rectangles, text, images, etc.

> **NOTE**
>
> - The drawing interfaces described in this document are stored in the command queue of the associated Canvas component when called. These commands are only dequeued and executed when the current frame enters the rendering phase and the associated Canvas component is visible. Therefore, when the Canvas component is invisible, frequent calls to drawing interfaces should be avoided to prevent command accumulation in the queue, thereby mitigating excessive memory usage.
> - When the width or height of the Canvas component exceeds 8000px, CPU rendering is used, which may cause significant performance degradation.

## Import Module

```cangjie
import kit.ArkUI.*
```

## class CanvasRenderingContext2D

```cangjie
public class CanvasRenderingContext2D {
    public init(settings: RenderingContextSettings)
}
```

**Description:** Represents the type used for drawing with RenderingContext on Canvas components, supporting drawable objects such as rectangles, text, images, etc.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### prop direction

```cangjie
public mut prop direction: Option<CanvasDirection>
```

**Description:** Text drawing direction.

**Type:** [Option\<CanvasDirection>](./cj-common-types.md#enum-canvasdirection)

**Read/Write:** Readable and Writable

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### prop filter

```cangjie
public mut prop filter: Option<String>
```

**Description:** Provides filter effects such as blur and grayscale.

**Type:** Option<String>

**Read/Write:** Readable and Writable

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### prop globalAlpha

```cangjie
public mut prop globalAlpha: Option<Float64>
```

**Description:** Transparency.

**Type:** Option\<Float64>

**Read/Write:** Readable and Writable

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### prop globalCompositeOperation

```cangjie
public mut prop globalCompositeOperation: Option<GlobalCompositeOperation>
```

**Description:** The compositing operation type applied when drawing new shapes.

**Type:** Option\<GlobalCompositeOperation>

**Read/Write:** Readable and Writable

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### prop height

```cangjie
public prop height: Float64
```

**Description:** Default value is 0, bound to the height of the specified canvas.

**Type:** Float64

**Read/Write:** Read-only

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### prop imageSmoothingEnabled

```cangjie
public mut prop imageSmoothingEnabled: Option<Bool>
```

**Description:** Specifies whether to smooth images.

**Type:** Option\<Bool>

**Read/Write:** Readable and Writable

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### prop imageSmoothingQuality

```cangjie
public mut prop imageSmoothingQuality: Option<ImageSmoothingQuality>
```

**Description:** Current image smoothing level.

**Type:** Option\<ImageSmoothingQuality>

**Read/Write:** Readable and Writable

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### prop lineCap

```cangjie
public mut prop lineCap: Option<LineCapStyle>
```

**Description:** Line segment endpoint property.

**Type:** Option\<LineCapStyle>

**Read/Write:** Readable and Writable

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### prop lineDashOffset

```cangjie
public mut prop lineDashOffset: Option<Float64>
```

**Description:** Dashed line offset property.

**Type:** Option\<Float64>

**Read/Write:** Readable and Writable

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### prop lineJoin

```cangjie
public mut prop lineJoin: Option<LineJoinStyle>
```

**Description:** Line segment joint property.

**Type:** Option\<LineJoinStyle>

**Read/Write:** Readable and Writable

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### prop lineWidth

```cangjie
public mut prop lineWidth: Option<Float64>
```

**Description:** Line thickness property.

**Type:** Option\<Float64>

**Read/Write:** Readable and Writable

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### prop miterLimit

```cangjie
public mut prop miterLimit: Option<Float64>
```

**Description:** The value of this parameter cannot be 0 or negative.

**Type:** Option\<Float64>

**Read/Write:** Readable and Writable

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### prop shadowBlur

```cangjie
public mut prop shadowBlur: Option<Float64>
```

**Description:** Shadow blur radius.

**Type:** Option\<Float64>

**Read/Write:** Readable and Writable

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### prop shadowColor

```cangjie
public mut prop shadowColor: Option<ResourceColor>
```

**Description:** Shadow color.

**Type:** Option\<ResourceColor>

**Read/Write:** Readable and Writable

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### prop shadowOffsetX

```cangjie
public mut prop shadowOffsetX: Option<Float64>
```

**Description:** Horizontal offset distance of the shadow.

**Type:** Option\<Float64>

**Read/Write:** Readable and Writable

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### prop shadowOffsetY

```cangjie
public mut prop shadowOffsetY: Option<Float64>
```

**Description:** Vertical offset distance of the shadow.

**Type:** Option\<Float64>

**Read/Write:** Readable and Writable

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### prop textAlign

```cangjie
public mut prop textAlign: Option<CanvasTextAlign>
```

**Description:** Text alignment mode.

**Type:** Option\<CanvasTextAlign>

**Read/Write:** Readable and Writable

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### prop textBaseline

```cangjie
public mut prop textBaseline: Option<CanvasTextBaseline>
```

**Description:** Text baseline.

**Type:** Option\<CanvasTextBaseline>

**Read/Write:** Readable and Writable

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### prop width

```cangjie
public prop width: Float64
```

**Description:** Default value is 0, bound to the width of the specified canvas.

**Type:** Float64

**Read/Write:** Read-only

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### init(RenderingContextSettings)

```cangjie
public init(settings: RenderingContextSettings)
```

**Description:** Constructs a CanvasRenderingContext2D object.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Name | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| settings | [RenderingContextSettings](./cj-canvas-drawing-canvas.md#class-renderingcontextsettings) | Yes | - | Parameters used to configure the CanvasRenderingContext2D object. |

### func arc(Float64, Float64, Float64, Float64, Float64, Bool)

```cangjie
public func arc(
    x: Float64,
    y: Float64,
    radius: Float64,
    startAngle: Float64,
    endAngle: Float64,
    counterclockwise!: Bool = false
): Unit
```

**Description:** Draws an arc path.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Name | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| x | Float64 | Yes | - | The x-coordinate of the arc's center.<br>Default unit: vp. |
| y | Float64 | Yes | - | The y-coordinate of the arc's center.<br>Default unit: vp. |
| radius | Float64 | Yes | - | The radius of the arc.<br>Default unit: vp. |
| startAngle | Float64 | Yes | - | The starting angle of the arc.<br>Unit: radians. |
| endAngle | Float64 | Yes | - | The ending angle of the arc.<br>Unit: radians. |
| counterclockwise | Bool | No | false | **Named parameter.** Whether to draw the arc counterclockwise.<br>true: Draw the arc counterclockwise.<br>false: Draw the arc clockwise. |

### func arcTo(Float64, Float64, Float64, Float64, Float64)

```cangjie
public func arcTo(x1: Float64, y1: Float64, x2: Float64, y2: Float64, radius: Float64): Unit
```

**Description:** Creates an arc path based on the points the arc passes through and the arc radius.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Name | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| x1 | Float64 | Yes | - | The x-coordinate of the first point the arc passes through.<br>Default unit: vp. |
| y1 | Float64 | Yes | - | The y-coordinate of the first point the arc passes through.<br>Default unit: vp. |
| x2 | Float64 | Yes | - | The x-coordinate of the second point the arc passes through.<br>Default unit: vp. |
| y2 | Float64 | Yes | - | The y-coordinate of the second point the arc passes through.<br>Default unit: vp. |
| radius | Float64 | Yes | - | The radius of the arc.<br>Default unit: vp. |### func beginPath()

```cangjie
public func beginPath(): Unit
```

**Description:** Creates a new drawing path.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### func bezierCurveTo(Float64, Float64, Float64, Float64, Float64, Float64)

```cangjie
public func bezierCurveTo(cp1x: Float64, cp1y: Float64, cp2x: Float64, cp2y: Float64, x: Float64, y: Float64): Unit
```

**Description:** Creates a cubic Bézier curve path.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type    | Required | Default | Description |
|:----------|:--------|:---------|:--------|:------------|
| cp1x      | Float64 | Yes      | -       | The x-coordinate of the first Bézier control point.<br>Default unit: vp. |
| cp1y      | Float64 | Yes      | -       | The y-coordinate of the first Bézier control point.<br>Default unit: vp. |
| cp2x      | Float64 | Yes      | -       | The x-coordinate of the second Bézier control point.<br>Default unit: vp. |
| cp2y      | Float64 | Yes      | -       | The y-coordinate of the second Bézier control point.<br>Default unit: vp. |
| x         | Float64 | Yes      | -       | The x-coordinate of the end point.<br>Default unit: vp. |
| y         | Float64 | Yes      | -       | The y-coordinate of the end point.<br>Default unit: vp. |

### func clearRect(Float64, Float64, Float64, Float64)

```cangjie
public func clearRect(x: Float64, y: Float64, width: Float64, height: Float64): Unit
```

**Description:** Clears the drawing content of a rectangular area.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type    | Required | Default | Description |
|:----------|:--------|:---------|:--------|:------------|
| x         | Float64 | Yes      | -       | The x-coordinate of the top-left corner of the rectangle.<br>Default unit: vp. |
| y         | Float64 | Yes      | -       | The y-coordinate of the top-left corner of the rectangle.<br>Default unit: vp. |
| width     | Float64 | Yes      | -       | The width of the rectangle.<br>Default unit: vp. |
| height    | Float64 | Yes      | -       | The height of the rectangle.<br>Default unit: vp. |

### func clip(CanvasFillRule)

```cangjie
public func clip(fillRule!: CanvasFillRule = CanvasFillRule.NonZero): Unit
```

**Description:** Sets the current path as the clipping path.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type                              | Required | Default               | Description |
|:----------|:----------------------------------|:---------|:----------------------|:------------|
| fillRule  | [CanvasFillRule](./cj-common-types.md#enum-canvasfillrule) | No       | CanvasFillRule.NonZero | Specifies the rule for clipping objects.<br/>Options: nonzero, evenodd.<br>Default: nonzero. |

### func clip(Path2D, CanvasFillRule)

```cangjie
public func clip(path: Path2D, fillRule!: CanvasFillRule = CanvasFillRule.NonZero): Unit
```

**Description:** Sets the current path as the clipping path.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type                              | Required | Default               | Description |
|:----------|:----------------------------------|:---------|:----------------------|:------------|
| path      | [Path2D](./cj-canvas-drawing-path2d.md#class-path2d) | Yes      | -                     | The Path2D clipping path. |
| fillRule  | [CanvasFillRule](./cj-common-types.md#enum-canvasfillrule) | No       | CanvasFillRule.nonzero | **Named parameter.** Specifies the rule for clipping objects.<br/>Options: nonzero, evenodd. |

### func closePath()

```cangjie
public func closePath(): Unit
```

**Description:** Closes the current path to form a closed path.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### func createConicGradient(Float64, Float64, Float64)

```cangjie
public func createConicGradient(startAngle: Float64, x: Float64, y: Float64): CanvasGradient
```

**Description:** Creates a conic gradient.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type    | Required | Default | Description |
|:----------|:--------|:---------|:--------|:------------|
| startAngle | Float64 | Yes      | -       | The starting angle of the gradient. Measured from the horizontal right side of the center, moving clockwise.<br>Unit: radians. |
| x         | Float64 | Yes      | -       | The x-coordinate of the center of the conic gradient.<br>Default unit: vp. |
| y         | Float64 | Yes      | -       | The y-coordinate of the center of the conic gradient.<br>Default unit: vp. |

**Return Value:**

| Type                              | Description |
|:----------------------------------|:------------|
| [CanvasGradient](cj-canvas-drawing-canvas.md#class-canvasgradient) | A new CanvasGradient object for creating gradient effects on the canvas. |

### func createImageData(Float64, Float64)

```cangjie
public func createImageData(sw: Float64, sh: Float64): ImageData
```

**Description:** Creates a new, blank ImageData object with the specified dimensions. Refer to [ImageData](./cj-canvas-drawing-imagedata.md#class-imagedata). This interface involves memory copying and is high-latency; avoid frequent use.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type    | Required | Default | Description |
|:----------|:--------|:---------|:--------|:------------|
| sw        | Float64 | Yes      | -       | The width of the ImageData.<br>Default unit: vp. |
| sh        | Float64 | Yes      | -       | The height of the ImageData.<br>Default unit: vp. |

**Return Value:**

| Type                              | Description |
|:----------------------------------|:------------|
| [ImageData](./cj-canvas-drawing-imagedata.md#class-imagedata) | A new ImageData object. |

### func createImageData(ImageData)

```cangjie
public func createImageData(imageData: ImageData): ImageData
```

**Description:** Creates a new ImageData object with the same width and height as an existing ImageData object (without copying image data). Refer to [ImageData](./cj-canvas-drawing-imagedata.md#class-imagedata). This interface involves memory copying and is high-latency; avoid frequent use. For an example of `createImageData`, see [putImageData](#func-putimagedataimagedata-float64-float64-float64-float64-float64-float64).

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type                              | Required | Default | Description |
|:----------|:----------------------------------|:---------|:--------|:------------|
| imageData | [ImageData](./cj-canvas-drawing-imagedata.md#class-imagedata) | Yes      | -       | An existing ImageData object. |

**Return Value:**

| Type                              | Description |
|:----------------------------------|:------------|
| [ImageData](./cj-canvas-drawing-imagedata.md#class-imagedata) | A new ImageData object. |

### func createLinearGradient(Float64, Float64, Float64, Float64)

```cangjie
public func createLinearGradient(x0: Float64, y0: Float64, x1: Float64, y1: Float64): CanvasGradient
```

**Description:** Creates a linear gradient.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type    | Required | Default | Description |
|:----------|:--------|:---------|:--------|:------------|
| x0        | Float64 | Yes      | -       | The x-coordinate of the start point.<br>Default unit: vp. |
| y0        | Float64 | Yes      | -       | The y-coordinate of the start point.<br>Default unit: vp. |
| x1        | Float64 | Yes      | -       | The x-coordinate of the end point.<br>Default unit: vp. |
| y1        | Float64 | Yes      | -       | The y-coordinate of the end point.<br>Default unit: vp. |

**Return Value:**

| Type                              | Description |
|:----------------------------------|:------------|
| [CanvasGradient](cj-canvas-drawing-canvas.md#class-canvasgradient) | A gradient object. Release after use. See [CanvasGradient](cj-canvas-drawing-canvas.md#class-canvasgradient). |

### func createPattern(ImageBitmap, Repetition)

```cangjie
public func createPattern(image: ImageBitmap, repetition: Repetition): CanvasPattern
```

**Description:** Creates a pattern for image filling by specifying an image and repetition method.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type                              | Required | Default | Description |
|:----------|:----------------------------------|:---------|:--------|:------------|
| image     | [ImageBitmap](./cj-canvas-drawing-imagebitmap.md#class-imagebitmap) | Yes      | -       | The image source object. Refer to the ImageBitmap object. |
| repetition | [Repetition](./cj-common-types.md#enum-repetition) | Yes      | -       | Specifies how the image is repeated:<br>- `repeat`: Repeats the image along both x and y axes.<br>- `repeat-x`: Repeats the image along the x-axis.<br>- `repeat-y`: Repeats the image along the y-axis.<br>- `no-repeat`: Does not repeat the image.<br>- `clamp`: Uses edge colors for areas outside the original bounds.<br>- `mirror`: Repeats and flips the image along both x and y axes. |

**Return Value:**

| Type                              | Description |
|:----------------------------------|:------------|
| [CanvasPattern](./cj-canvas-drawing-canvaspattern.md#class-canvaspattern) | A pattern object created by specifying an image and repetition method. |

### func createRadialGradient(Float64, Float64, Float64, Float64, Float64, Float64)

```cangjie
public func createRadialGradient(x0: Float64, y0: Float64, r0: Float64, x1: Float64, y1: Float64, r1: Float64): CanvasGradient
```

**Description:** Creates a radial gradient.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type    | Required | Default | Description |
|:----------|:--------|:---------|:--------|:------------|
| x0        | Float64 | Yes      | -       | The x-coordinate of the start circle.<br>Default unit: vp. |
| y0        | Float64 | Yes      | -       | The y-coordinate of the start circle.<br>Default unit: vp. |
| r0        | Float64 | Yes      | -       | The radius of the start circle. Must be non-negative and finite.<br>Default unit: vp. |
| x1        | Float64 | Yes      | -       | The x-coordinate of the end circle.<br>Default unit: vp. |
| y1        | Float64 | Yes      | -       | The y-coordinate of the end circle.<br>Default unit: vp. |
| r1        | Float64 | Yes      | -       | The radius of the end circle. Must be non-negative and finite.<br>Default unit: vp. |

**Return Value:**

| Type                              | Description |
|:----------------------------------|:------------|
| [CanvasGradient](cj-canvas-drawing-canvas.md#class-canvasgradient) | A gradient object. Release after use. See [CanvasGradient](cj-canvas-drawing-canvas.md#class-canvasgradient). |

### func drawImage(ImageBitmap, Float64, Float64)

```cangjie
public func drawImage(image: ImageBitmap, dx: Float64, dy: Float64): Unit
```

**Description:** Draws an image.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type                              | Required | Default | Description |
|:----------|:----------------------------------|:---------|:--------|:------------|
| image     | [ImageBitmap](./cj-canvas-drawing-imagebitmap.md#class-imagebitmap) | Yes      | -       | The image resource. Refer to [ImageBitmap](./cj-canvas-drawing-imagebitmap.md#class-imagebitmap). |
| dx        | Float64 | Yes      | -       | The x-coordinate of the top-left corner of the drawing area.<br>Default unit: vp. |
| dy        | Float64 | Yes      | -       | The y-coordinate of the top-left corner of the drawing area.<br>Default unit: vp. |

### func drawImage(ImageBitmap, Float64, Float64, Float64, Float64)

```cangjie
public func drawImage(image: ImageBitmap, dx: Float64, dy: Float64, dWidth: Float64, dHeight: Float64): Unit
```

**Description:** Draws an image.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type                              | Required | Default | Description |
|:----------|:----------------------------------|:---------|:--------|:------------|
| image     | [ImageBitmap](./cj-canvas-drawing-imagebitmap.md#class-imagebitmap) | Yes      | -       | The image resource. Refer to [ImageBitmap](./cj-canvas-drawing-imagebitmap.md#class-imagebitmap). |
| dx        | Float64 | Yes      | -       | The x-coordinate of the top-left corner of the drawing area.<br>Default unit: vp. |
| dy        | Float64 | Yes      | -       | The y-coordinate of the top-left corner of the drawing area.<br>Default unit: vp. |
| dWidth    | Float64 | Yes      | -       | The width of the drawing area. If the width differs from the cropped image width, the image width is stretched or compressed to match.<br>Default unit: vp. |
| dHeight   | Float64 | Yes      | -       | The height of the drawing area. If the height differs from the cropped image height, the image height is stretched or compressed to match.<br>Default unit: vp. |

### func drawImage(ImageBitmap, Float64, Float64, Float64, Float64, Float64, Float64, Float64, Float64)

```cangjie
public func drawImage(
    image: ImageBitmap,
    sx: Float64,
    sy: Float64,
    sWidth: Float64,
    sHeight: Float64,
    dx: Float64,
    dy: Float64,
    dWidth: Float64,
    dHeight: Float64
): Unit
```

**Description:** Draws an image.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type                              | Required | Default | Description |
|:----------|:----------------------------------|:---------|:--------|:------------|
| image     | [ImageBitmap](./cj-canvas-drawing-imagebitmap.md#class-imagebitmap) | Yes      | -       | The image resource. Refer to [ImageBitmap](./cj-canvas-drawing-imagebitmap.md#class-imagebitmap). |
| sx        | Float64 | Yes      | -       | The x-coordinate for cropping the source image from its top-left corner.<br>Unit: px. |
| sy        | Float64 | Yes      | -       | The y-coordinate for cropping the source image from its top-left corner.<br>Unit: px. |
| sWidth    | Float64 | Yes      | -       | The width to crop from the source image.<br>Unit: px. |
| sHeight   | Float64 | Yes      | -       | The height to crop from the source image.<br>Unit: px. |
| dx        | Float64 | Yes      | -       | The x-coordinate of the top-left corner of the drawing area.<br>Default unit: vp. |
| dy        | Float64 | Yes      | -       | The y-coordinate of the top-left corner of the drawing area.<br>Default unit: vp. |
| dWidth    | Float64 | Yes      | -       | The width of the drawing area. If the width differs from the cropped image width, the image width is stretched or compressed to match.<br>Default unit: vp. |
| dHeight   | Float64 | Yes      | -       | The height of the drawing area. If the height differs from the cropped image height, the image height is stretched or compressed to match.<br>Default unit: vp. |

### func drawImage(PixelMap, Float64, Float64)

```cangjie
public func drawImage(pixelMap: PixelMap, dx: Float64, dy: Float64): Unit
```

**Description:** Draws an image.

**### func ellipse(Float64, Float64, Float64, Float64, Float64, Float64, Float64, Bool)

```cangjie
public func ellipse(
    x: Float64,
    y: Float64,
    radiusX: Float64,
    radiusY: Float64,
    rotation: Float64,
    startAngle: Float64,
    endAngle: Float64,
    counterclockwise!: Bool = false
): Unit
```

**Function:** Draws an ellipse within the specified rectangular area.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| x | Float64 | Yes | - | The x-coordinate of the ellipse's center, in vp. |
| y | Float64 | Yes | - | The y-coordinate of the ellipse's center, in vp. |
| radiusX | Float64 | Yes | - | The radius of the ellipse along the x-axis, in vp. |
| radiusY | Float64 | Yes | - | The radius of the ellipse along the y-axis, in vp. |
| rotation | Float64 | Yes | - | The rotation angle of the ellipse, in radians. |
| startAngle | Float64 | Yes | - | The starting angle of the ellipse drawing, in radians. |
| endAngle | Float64 | Yes | - | The ending angle of the ellipse drawing, in radians. |
| anticlockwise | Bool | No | false | **Named parameter.** Whether to draw the ellipse counterclockwise.<br/>true: Draw counterclockwise.<br/>false: Draw clockwise. |

### func fill(CanvasFillRule)

```cangjie
public func fill(fillRule!: CanvasFillRule = CanvasFillRule.NonZero): Unit
```

**Function:** Fills a closed path.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| fillRule | [CanvasFillRule](./cj-common-types.md#enum-canvasfillrule) | No | CanvasFillRule.NonZero | Specifies the rule for clipping objects.<br/>Options: nonzero, evenodd.<br>Default: nonzero. |

### func fill(Path2D, CanvasFillRule)

```cangjie
public func fill(path: Path2D, fillRule!: CanvasFillRule = CanvasFillRule.NonZero): Unit
```

**Function:** Fills a closed path.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| path | [Path2D](./cj-canvas-drawing-path2d.md#class-path2d) | Yes | - | The Path2D clipping path. |
| fillRule | [CanvasFillRule](./cj-common-types.md#enum-canvasfillrule) | No | CanvasFillRule.NonZero | **Named parameter.** Specifies the rule for clipping objects.<br/>Options: nonzero, evenodd. |

### func fillRect(Float64, Float64, Float64, Float64)

```cangjie
public func fillRect(x: Float64, y: Float64, width: Float64, height: Float64): Unit
```

**Function:** Fills a rectangle.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| x | Float64 | Yes | - | The x-coordinate of the rectangle's top-left corner, in vp. |
| y | Float64 | Yes | - | The y-coordinate of the rectangle's top-left corner, in vp. |
| width | Float64 | Yes | - | The width of the rectangle, in vp. |
| height | Float64 | Yes | - | The height of the rectangle, in vp. |

### func fillStyle(ResourceColor)

```cangjie
public func fillStyle(color: ResourceColor): Unit
```

**Function:** Specifies the fill color for drawing.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| color | [ResourceColor](../BasicServicesKit/cj-apis-base.md#interface-resourcecolor) | Yes | - | The color used to fill the area. |

### func fillStyle(CanvasGradient)

```cangjie
public func fillStyle(gradient: CanvasGradient): Unit
```

**Function:** Specifies the fill color for drawing.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| gradient | [CanvasGradient](cj-canvas-drawing-canvas.md#class-canvasgradient) | Yes | - | The gradient object created using the createLinearGradient method. |

### func fillStyle(CanvasPattern)

```cangjie
public func fillStyle(pattern: CanvasPattern): Unit
```

**Function:** Specifies the fill color for drawing.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| pattern | [CanvasPattern](./cj-canvas-drawing-canvaspattern.md#class-canvaspattern) | Yes | - | The template object created by specifying an image and repetition method for image filling. |

### func fillText(String, Float64, Float64, Option\<Float64>)

```cangjie
public func fillText(text: String, x: Float64, y: Float64, maxWidth!: Option<Float64> = Option.None): Unit
```

**Function:** Draws filled text.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| text | String | Yes | - | The text content to be drawn. |
| x | Float64 | Yes | - | The x-coordinate of the text's bottom-left corner, in vp. |
| y | Float64 | Yes | - | The y-coordinate of the text's bottom-left corner, in vp. |
| maxWidth | Option<Float64> | No | Option.None | The maximum allowed width of the text, in vp.<br>Default: No width limit. |

### func font(FontStyle, FontWeight, Length, String)

```cangjie
public func font(
    style!: FontStyle = FontStyle.Normal,
    weight!: FontWeight = FontWeight.Normal,
    size!: Length = 14.px,
    family!: String = "sans-serif"
): Unit
```

**Function:** Sets the font style for text drawing.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| style | [FontStyle](./cj-common-types.md#enum-fontstyle) | No | FontStyle.Normal | **Named parameter.** Specifies the font style. |
| weight | [FontWeight](./cj-common-types.md#enum-fontweight) | No | FontWeight.Normal | **Named parameter.** Specifies the font weight. |
| size | [Length](../BasicServicesKit/cj-apis-base.md#interface-length) | No | 14.px | **Named parameter.** Specifies the font size and line height. |
| family | String | No | "sans-serif" | **Named parameter.** Specifies the font family. |

### func getImageData(Float64, Float64, Float64, Float64)

```cangjie
public func getImageData(sx: Float64, sy: Float64, sw: Float64, sh: Float64): ImageData
```

**Function:** Creates an ImageData object from the pixels in the specified area of the current canvas. This operation involves memory copying and is time-consuming; avoid frequent use.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| sx | Float64 | Yes | - | The x-coordinate of the top-left corner of the area to output, in vp. |
| sy | Float64 | Yes | - | The y-coordinate of the top-left corner of the area to output, in vp. |
| sw | Float64 | Yes | - | The width of the area to output, in vp. |
| sh | Float64 | Yes | - | The height of the area to output, in vp. |

**Return Value:**

| Type | Description |
|:----|:----|
| [ImageData](./cj-canvas-drawing-imagedata.md#class-imagedata) | A new ImageData object. |

### func getLineDash()

```cangjie
public func getLineDash(): Array<Float64>
```

**Function:** Gets the current canvas's dashed line style.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Return Value:**

| Type | Description |
|:----|:----|
| Array\<Float64> | Returns an array describing how line segments alternate and their spacing lengths, in vp. |

### func getPixelMap(Float64, Float64, Float64, Float64)

```cangjie
public func getPixelMap(left: Float64, top: Float64, width: Float64, height: Float64): PixelMap
```

**Function:** Creates a [PixelMap](../ImageKit/cj-apis-image.md#class-pixelmap) object from the pixels in the specified area of the current canvas.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| left | Float64 | Yes | - | The x-coordinate of the top-left corner of the area to output, in vp. |
| top | Float64 | Yes | - | The y-coordinate of the top-left corner of the area to output, in vp. |
| width | Float64 | Yes | - | The width of the area to output, in vp. |
| height | Float64 | Yes | - | The height of the area to output, in vp. |

**Return Value:**

| Type | Description |
|:----|:----|
| [PixelMap](../ImageKit/cj-apis-image.md#class-pixelmap) | A new [PixelMap](../ImageKit/cj-apis-image.md#class-pixelmap) object. |

### func getTransform()

```cangjie
public func getTransform(): Matrix2D
```

**Function:** Gets the current transformation matrix applied to the context.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Return Value:**

| Type | Description |
|:----|:----|
| [Matrix2D](./cj-canvas-drawing-matrix2d.md#class-matrix2d) | The matrix object. |

### func lineTo(Float64, Float64)

```cangjie
public func lineTo(x: Float64, y: Float64): Unit
```

**Function:** Connects the current point to the specified point with a path.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| x | Float64 | Yes | - | The x-coordinate of the specified point, in vp. |
| y | Float64 | Yes | - | The y-coordinate of the specified point, in vp. |

### func measureText(String)

```cangjie
public func measureText(text: String): TextMetrics
```

**Function:** Returns a text measurement object that provides the width of the specified text. The width may vary across devices.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| text | String | Yes | - | The text to be measured. |

**Return Value:**

| Type | Description |
|:----|:----|
| [TextMetrics](cj-canvas-drawing-canvas.md#class-textmetrics) | The dimensions of the text. |

### func moveTo(Float64, Float64)

```cangjie
public func moveTo(x: Float64, y: Float64): Unit
```

**Function:** Moves the path from the current point to the specified point.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| x | Float64 | Yes | - | The x-coordinate of the specified point, in vp. |
| y | Float64 | Yes | - | The y-coordinate of the specified point, in vp. |

### func putImageData(ImageData, Length, Length)

```cangjie
public func putImageData(imageData: ImageData, dx: Length, dy: Length): Unit
```

**Function:** Fills a new rectangular area using [ImageData](./cj-canvas-drawing-imagedata.md#class-imagedata).

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| imageData | [ImageData](./cj-canvas-drawing-imagedata.md#class-imagedata) | Yes | - | The ImageData object containing pixel values. |
| dx | [Length](../BasicServicesKit/cj-apis-base.md#interface-length) | Yes | - | The x-axis offset of the fill area, in vp. |
| dy | [Length](../BasicServicesKit/cj-apis-base.md#interface-length) | Yes | - | The y-axis offset of the fill area, in vp. |

### func putImageData(ImageData, Float64, Float64, Float64, Float64, Float64, Float64)

```cangjie
public func putImageData(
    imageData: ImageData,
    dx: Float64,
    dy: Float64,
    dirtyX: Float64,
    dirtyY: Float64,
    dirtyWidth: Float64,
    dirtyHeight: Float64
): Unit
```

**Function:** Fills a new rectangular area using [ImageData](./cj-canvas-drawing-imagedata.md#class-imagedata).

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| imageData | [ImageData](./cj-canvas-drawing-imagedata.md#class-imagedata) | Yes | - | The ImageData object containing pixel values. |
| dx | Float64 | Yes | - | The x-axis offset of the fill area, in vp. |
| dy | Float64 | Yes | - | The y-axis offset of the fill area, in vp. |
| dirtyX | Float64 | Yes | - | The x-axis offset of the source image data's clipping rectangle from the top-left corner of the source image, in vp. |
| dirtyY | Float64 | Yes | - | The y-axis offset of the source image data's clipping rectangle from the top-left corner of the source image, in vp. |
| dirtyWidth | Float64 | Yes | - | The width of the source image data's clipping rectangle, in vp. |
| dirtyHeight | Float64 | Yes | - | The height of the source image data's clipping rectangle, in vp. |

### func quadraticCurveTo(Float64, Float64, Float64, Float64)

```cangjie
public func quadraticCurveTo(cpx: Float64, cpy: Float64, x: Float64, y: Float64): Unit
```

**Function:** Creates a quadratic Bézier curve path.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| cpx | Float64 | Yes | - | The x-coordinate of the Bézier parameter, in vp. |
| cpy | Float64 | Yes | - | The y-coordinate of the Bézier parameter, in vp. |
| x | Float64 | Yes | - | The x-coordinate of the path's endpoint, in vp. |
| y | Float64 | Yes | - | The y-coordinate of the path's endpoint, in vp. |### func rect(Float64, Float64, Float64, Float64)

```cangjie
public func rect(x: Float64, y: Float64, width: Float64, height: Float64): Unit
```

**Function:** Creates a rectangular path.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type    | Required | Default | Description |
|:----------|:--------|:---------|:--------|:------------|
| x         | Float64 | Yes      | -       | Specifies the x-coordinate of the top-left corner of the rectangle.<br>Default unit: vp. |
| y         | Float64 | Yes      | -       | Specifies the y-coordinate of the top-left corner of the rectangle.<br>Default unit: vp. |
| width     | Float64 | Yes      | -       | Specifies the width of the rectangle.<br>Default unit: vp. |
| height    | Float64 | Yes      | -       | Specifies the height of the rectangle.<br>Default unit: vp. |

### func reset()

```cangjie
public func reset(): Unit
```

**Function:** Resets the CanvasRenderingContext2D to its default state, clearing the background buffer, drawing state stack, drawing path, and styles.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### func resetTransform()

```cangjie
public func resetTransform(): Unit
```

**Function:** Resets the current matrix using the identity matrix.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### func restore()

```cangjie
public func restore(): Unit
```

**Function:** Restores the saved drawing context.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### func restoreLayer()

```cangjie
public func restoreLayer(): Unit
```

**Function:** Restores the image transformation and clipping state to the state before `saveLayer` and draws the layer onto the canvas.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### func rotate(Float64)

```cangjie
public func rotate(angle: Float64): Unit
```

**Function:** Rotates the current coordinate axis clockwise.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type    | Required | Default | Description |
|:----------|:--------|:---------|:--------|:------------|
| angle     | Float64 | Yes      | -       | Sets the radian value for clockwise rotation. Use `Float64.PI / 180` to convert degrees to radians.<br>Unit: radians. |

### func save()

```cangjie
public func save(): Unit
```

**Function:** Pushes the current state onto the stack, saving the entire state of the canvas. Typically called when the drawing state needs to be preserved.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### func saveLayer()

```cangjie
public func saveLayer(): Unit
```

**Function:** Creates a new layer.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### func scale(Float64, Float64)

```cangjie
public func scale(x: Float64, y: Float64): Unit
```

**Function:** Sets the scaling transformation properties of the canvas. Subsequent drawing operations will be scaled according to the specified scaling factors.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type    | Required | Default | Description |
|:----------|:--------|:---------|:--------|:------------|
| x         | Float64 | Yes      | -       | Sets the horizontal scaling factor.<br>Default unit: vp. |
| y         | Float64 | Yes      | -       | Sets the vertical scaling factor.<br>Default unit: vp. |

### func setLineDash(Array\<Float64>)

```cangjie
public func setLineDash(segments: Array<Float64>): Unit
```

**Function:** Sets the dashed line style for the canvas.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type          | Required | Default | Description |
|:----------|:--------------|:---------|:--------|:------------|
| segments   | Array\<Float64> | Yes      | -       | An array describing the alternating line segments and spacing lengths.<br>Default unit: vp. |

### func setPixelMap(Option\<PixelMap>)

```cangjie
public func setPixelMap(pixelMap: Option<PixelMap>): Unit
```

**Function:** Draws the provided [PixelMap](../ImageKit/cj-apis-image.md#class-pixelmap) object onto the canvas. Example usage is the same as [getPixelMap](#func-getpixelmapfloat64-float64-float64-float64).

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type            | Required | Default | Description |
|:----------|:----------------|:---------|:--------|:------------|
| pixelMap  | Option<PixelMap> | Yes      | -       | A PixelMap object containing pixel values.<br>Initial value: None. |

### func setTransform(Float64, Float64, Float64, Float64, Float64, Float64)

```cangjie
public func setTransform(
    scaleX: Float64,
    skewX: Float64,
    skewY: Float64,
    scaleY: Float64,
    translateX: Float64,
    translateY: Float64
): Unit
```

**Function:** Corresponds to a transformation matrix. To transform a shape, set the relevant parameters of this matrix, then multiply the coordinates of each vertex by this matrix to obtain the new vertex coordinates. The `setTransform()` method resets the existing transformation matrix and creates a new one.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter  | Type    | Required | Default | Description |
|:-----------|:--------|:---------|:--------|:------------|
| scaleX     | Float64 | Yes      | -       | Specifies the horizontal scaling factor. |
| skewX      | Float64 | Yes      | -       | Specifies the horizontal skew factor. |
| skewY      | Float64 | Yes      | -       | Specifies the vertical skew factor. |
| scaleY     | Float64 | Yes      | -       | Specifies the vertical scaling factor. |
| translateX | Float64 | Yes      | -       | Specifies the horizontal translation value.<br>Default unit: vp. |
| translateY | Float64 | Yes      | -       | Specifies the vertical translation value.<br>Default unit: vp. |

### func setTransform(Option\<Matrix2D>)

```cangjie
public func setTransform(matrix: Option<Matrix2D>): Unit
```

**Function:** Resets the existing transformation matrix and creates a new one using the provided Matrix2D object as a template.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type            | Required | Default | Description |
|:----------|:----------------|:---------|:--------|:------------|
| matrix    | Option<Matrix2D> | Yes      | -       | The transformation matrix. |

### func stroke()

```cangjie
public func stroke(): Unit
```

**Function:** Performs a stroke operation.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### func stroke(Path2D)

```cangjie
public func stroke(path2D: Path2D): Unit
```

**Function:** Performs a stroke operation.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type                          | Required | Default | Description |
|:----------|:------------------------------|:---------|:--------|:------------|
| path2D    | [Path2D](./cj-canvas-drawing-path2d.md#class-path2d) | Yes      | -       | The Path2D to be stroked. |

### func strokeRect(Float64, Float64, Float64, Float64)

```cangjie
public func strokeRect(x: Float64, y: Float64, width: Float64, height: Float64): Unit
```

**Function:** Draws a rectangle with a stroke, without filling the interior.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type    | Required | Default | Description |
|:----------|:--------|:---------|:--------|:------------|
| x         | Float64 | Yes      | -       | Specifies the x-coordinate of the top-left corner of the rectangle.<br>Default unit: vp. |
| y         | Float64 | Yes      | -       | Specifies the y-coordinate of the top-left corner of the rectangle.<br>Default unit: vp. |
| width     | Float64 | Yes      | -       | Specifies the width of the rectangle.<br>Default unit: vp. |
| height    | Float64 | Yes      | -       | Specifies the height of the rectangle.<br>Default unit: vp. |

### func strokeStyle(ResourceColor)

```cangjie
public func strokeStyle(color: ResourceColor): Unit
```

**Function:** Sets the stroke color.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type                                      | Required | Default | Description |
|:----------|:------------------------------------------|:---------|:--------|:------------|
| color     | [ResourceColor](../BasicServicesKit/cj-apis-base.md#interface-resourcecolor) | Yes      | -       | Specifies the color for the stroke. |

### func strokeStyle(CanvasGradient)

```cangjie
public func strokeStyle(gradient: CanvasGradient): Unit
```

**Function:** Sets the stroke color.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type                                      | Required | Default | Description |
|:----------|:------------------------------------------|:---------|:--------|:------------|
| gradient  | [CanvasGradient](cj-canvas-drawing-canvas.md#class-canvasgradient) | Yes      | -       | Specifies the gradient object, created using the `createLinearGradient` method. |

### func strokeStyle(CanvasPattern)

```cangjie
public func strokeStyle(pattern: CanvasPattern): Unit
```

**Function:** Sets the color for drawing lines.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type                                      | Required | Default | Description |
|:----------|:------------------------------------------|:---------|:--------|:------------|
| pattern   | [CanvasPattern](./cj-canvas-drawing-canvaspattern.md#class-canvaspattern) | Yes      | -       | Specifies the image and repetition mode for creating a pattern fill, created using the `createPattern` method. |

### func strokeText(String, Float64, Float64, Option\<Float64>)

```cangjie
public func strokeText(text: String, x: Float64, y: Float64, maxWidth!: Option<Float64> = Option.None): Unit
```

**Function:** Draws stroked text.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type          | Required | Default     | Description |
|:----------|:--------------|:---------|:------------|:------------|
| text      | String        | Yes      | -           | The text content to be drawn. |
| x         | Float64       | Yes      | -           | The x-coordinate of the bottom-left corner of the text.<br>Default unit: vp. |
| y         | Float64       | Yes      | -           | The y-coordinate of the bottom-left corner of the text.<br>Default unit: vp. |
| maxWidth  | Float64       | No       | Option.None | The maximum width of the text.<br>Default unit: vp. |

### func toDataURL(ImageType, Float64)

```cangjie
public func toDataURL(imageType!: ImageType = ImageType.Png, quality!: Float64 = 0.92): String
```

**Function:** Generates a URL containing the displayed image. This operation involves memory copying and is time-consuming; avoid frequent use.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type                          | Required | Default      | Description |
|:----------|:------------------------------|:---------|:-------------|:------------|
| imageType | [ImageType](./cj-common-types.md#enum-imagetype) | No       | ImageType.Png | **Named parameter.** Specifies the image format. |
| quality   | Float64                       | No       | 0.92         | **Named parameter.** For image formats `image/jpeg` or `image/webp`, specifies the image quality from 0 to 1. If out of range, the default value 0.92 is used. |

**Return Value:**

| Type   | Description |
|:-------|:------------|
| String | The URL of the generated image. |

### func transferFromImageBitmap(ImageBitmap)

```cangjie
public func transferFromImageBitmap(bitmap: ImageBitmap): Unit
```

**Function:** Displays the given ImageBitmap object.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type                                      | Required | Default | Description |
|:----------|:------------------------------------------|:---------|:--------|:------------|
| bitmap    | [ImageBitmap](./cj-canvas-drawing-imagebitmap.md#class-imagebitmap) | Yes      | -       | The ImageBitmap object to be displayed. |

### func transform(Float64, Float64, Float64, Float64, Float64, Float64)

```cangjie
public func transform(
    scaleX: Float64,
    skewX: Float64,
    skewY: Float64,
    scaleY: Float64,
    translateX: Float64,
    translateY: Float64
): Unit
```

**Function:** The `transform` method corresponds to a transformation matrix. To transform a shape, set the relevant parameters of this matrix, then multiply the coordinates of each vertex by this matrix to obtain the new vertex coordinates. Matrix transformations can be stacked.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter  | Type    | Required | Default | Description |
|:-----------|:--------|:---------|:--------|:------------|
| scaleX     | Float64 | Yes      | -       | Specifies the horizontal scaling factor. |
| skewX      | Float64 | Yes      | -       | Specifies the horizontal skew factor. |
| skewY      | Float64 | Yes      | -       | Specifies the vertical skew factor. |
| scaleY     | Float64 | Yes      | -       | Specifies the vertical scaling factor. |
| translateX | Float64 | Yes      | -       | Specifies the horizontal translation value.<br>Default unit: vp. |
| translateY | Float64 | Yes      | -       | Specifies the vertical translation value.<br>Default unit: vp. |

### func translate(Float64, Float64)

```cangjie
public func translate(x: Float64, y: Float64): Unit
```

**Function:** Moves the origin of the current coordinate system.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type    | Required | Default | Description |
|:----------|:--------|:---------|:--------|:------------|
| x         | Float64 | Yes      | -       | Specifies the horizontal translation value.<br>Default unit: vp. |
| y         | Float64 | Yes      | -       | Specifies the vertical translation value.<br>Default unit: vp. |## Sample Code

<!-- run -->

```cangjie

package ohos_app_cangjie_entry
import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*

@Entry
@Component
class EntryView {
    private let settings: RenderingContextSettings = RenderingContextSettings(antialias: true)
    private let context: CanvasRenderingContext2D = CanvasRenderingContext2D(this.settings)
    @State var message: String = ""
    func build() {
            Flex(direction: FlexDirection.Column, alignItems: ItemAlign.Center, justifyContent: FlexAlign.Center)  {
                Canvas(this.context)
                    .width(100.percent)
                    .height(100.percent)
                    .backgroundColor(0xffff00)
                    .onReady({=>
                        this.context.fillRect(10.0, 10.0, 50.0, 50.0)
                        this.context.translate(70.0, 70.0)
                        this.context.fillRect(10.0, 10.0, 50.0, 50.0)
                        })
            }.width(100.percent).height(100.percent)
    }
}

```