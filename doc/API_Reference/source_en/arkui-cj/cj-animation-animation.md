# Property Animation

When certain common properties of a component change, property animation can be used to achieve smooth transition effects, enhancing the user experience. Supported properties include [width](./cj-universal-attribute-size.md#func-widthlength), [height](./cj-universal-attribute-size.md#func-heightlength), [backgroundColor](cj-universal-attribute-background.md#func-backgroundcolorresourcecolor), [opacity](cj-universal-attribute-opacity.md#func-opacityfloat64), [scale](./cj-universal-attribute-transform.md#func-scalefloat32-float32-float32-length-length), [rotate](./cj-universal-attribute-transform.md#func-rotatefloat32-float32-float32-float64-length-length), [translate](./cj-universal-attribute-transform.md#func-translatelength-length-length), etc. For layout animations that change width and height, the content directly transitions to the final state (e.g., text, [Canvas](./cj-canvas-drawing-canvas.md) content). To make content follow width and height changes, use the [renderFit](./cj-universal-attribute-renderfit.md) property configuration.

## Import Module

```cangjie
import kit.ArkUI.*
```

## func animationEnd()

```cangjie
public func animationEnd(): This
```

**Function:** Ends the animation.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since Version:** 21

## func animationStart(AnimateParam)

```cangjie
public func animationStart(value: AnimateParam): This
```

**Function:** Starts the animation.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since Version:** 21

**Parameters:**

| Parameter | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| value | [AnimateParam](#) | Yes | - | Animation parameters. |

## Example Code

This example demonstrates component property animation using `animation`.

<!-- run -->

```cangjie
package ohos_app_cangjie_entry
import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*

let animateOpt1 = AnimateParam(
    duration: 1200,
    curve: Curve.EaseOut,
    delay: 500,
    iterations: 3,
    playMode: PlayMode.Normal,
    onFinish: {
        => AppLog.info("onfinish")
    },
    expectedFrameRateRange: ExpectedFrameRateRange(
        min: 20,
        max: 120,
        expected: 90
    )
)
let animateOpt2 = AnimateParam(
    duration: 1200,
    curve: Curve.Friction,
    delay: 500,
    iterations: -1, // Setting -1 means the animation loops infinitely
    playMode: PlayMode.Alternate,
    onFinish: {
        => AppLog.info("onfinish")
    },
    expectedFrameRateRange: ExpectedFrameRateRange(
        min: 20,
        max: 120,
        expected: 90
    )
)

@Entry
@Component
class EntryView {
    @State var widthSize: Length = 250.vp
    @State var heightSize: Length = 100.vp
    @State var rotateAngle: Float32 = 0.0
    @State var flag: Bool = true
    func build() {
        Column() {
            Button("change size")
                .animationStart(animateOpt1)
                .onClick {
                    =>
                    if (this.flag) {
                        this.widthSize = 150.vp
                        this.heightSize = 60.vp
                    } else {
                        this.widthSize = 250.vp
                        this.heightSize = 100.vp
                    }
                    this.flag = !this.flag
                }
                .margin(30)
                .animationEnd()
                .width(this.widthSize)
                .height(this.heightSize)
            Button('change rotate angle')
                .animationStart(animateOpt2)
                .onClick {
                    => this.rotateAngle = 90.0
                }
                .margin(50)
                .rotate(this.rotateAngle)
                .animationEnd()
        }
        .width(100.percent)
        .margin(top: 20)
    }
}
```

![animate](figures/animate.gif)