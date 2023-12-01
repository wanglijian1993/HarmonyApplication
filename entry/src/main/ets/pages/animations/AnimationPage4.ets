


@Entry
@Component
struct AnimationPage4{
  @State numbers: string[] = ["1", "2", "3", "4", "5"]
  startNumber: number = 6;
  build(){
    Column({ space: 10 }) {
      Column() {
        ForEach(this.numbers, (item) => {
          // ForEach下的直接组件需配置transition效果
          Text(item)
            .width(240)
            .height(60)
            .fontSize(18)
            .borderWidth(1)
            .backgroundColor(Color.Orange)
            .textAlign(TextAlign.Center)
            .transition({ type: TransitionType.All, translate: { x: 200 }, scale: { x: 0, y: 0 } })
        }, item => item)
      }
      .margin(10)
      .justifyContent(FlexAlign.Start)
      .alignItems(HorizontalAlign.Center)
      .width("90%")
      .height("70%")

      Button('向头部添加元素')
        .fontSize(16)
        .width(160)
        .onClick(() => {
          animateTo({ duration: 1000 }, () => {
            // 往数组头部插入一个元素，导致ForEach在头部增加对应的组件
            this.numbers.unshift(this.startNumber.toString());
            this.startNumber++;
          })
        })
      Button('向尾部添加元素')
        .width(160)
        .fontSize(16)
        .onClick(() => {
          animateTo({ duration: 1000 }, () => {
            // 往数组尾部插入一个元素，导致ForEach在尾部增加对应的组件
            this.numbers.push(this.startNumber.toString());
            this.startNumber++;
          })
        })
      Button('删除头部元素')
        .width(160)
        .fontSize(16)
        .onClick(() => {
          animateTo({ duration: 1000 }, () => {
            // 删除数组的头部元素，导致ForEach删除头部的组件
            this.numbers.shift();
          })
        })
      Button('删除尾部元素')
        .width(160)
        .fontSize(16)
        .onClick(() => {
          animateTo({ duration: 1000 }, () => {
            // 删除数组的尾部元素，导致ForEach删除尾部的组件
            this.numbers.pop();
          })
        })
    }
    .width('100%')
    .height('100%')

  }

}