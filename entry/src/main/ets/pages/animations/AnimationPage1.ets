@Entry
@Component
struct AnimationPage1{
  @State myWidth: number = 100;
  @State myHeight: number = 50;
  // 标志位，true和false分别对应一组myWidth、myHeight值
  @State flag: boolean = false;

  build(){

    Column({ space: 10 }) {
      Button("text")
        .type(ButtonType.Normal)
        .width(this.myWidth)
        .height(this.myHeight)
        .margin(20)
      Button("area: click me")
        .fontSize(12)
        .margin(20)
        .onClick(() => {
          animateTo({ duration: 1000, curve: Curve.Ease }, () => {
            // 动画闭包中根据标志位改变控制第一个Button宽高的状态变量，使第一个Button做宽高动画
            if (this.flag) {
              this.myWidth = 100;
              this.myHeight = 50;
            } else {
              this.myWidth = 200;
              this.myHeight = 100;
            }
            this.flag = !this.flag;
          });
        })
    }
    .width("100%")
    .height("100%")
  }
}