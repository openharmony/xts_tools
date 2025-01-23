@Entry
@Component
struct Page_0600 {
  @State message: string = '我就是_0600';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_0600HelloWorld')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
    }
    .height('100%')
    .width('100%')
  }
}