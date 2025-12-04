import testsuite from "../../../ohosTest/ets/test/List.test";

interface CJLib {
  testCJ(src: string): string
}

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
            testsuite()
        })
    }
    .height('100%')
    .width('100%')
  }
}
