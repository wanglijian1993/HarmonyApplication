

@Entry
@Component
struct AnimationPage2{
  @State myWidth: number = 100;
  @State myHeight: number = 50;
  @State flag: boolean = false;
  @State myColor: Color = Color.Blue;

  build(){
    Column({ space: 10 }) {
      Button("text")
        .type(ButtonType.Normal)
        .width(this.myWidth)
        .height(this.myHeight)
          // animation只对其上面的type、width、height属性生效，时长为1000ms，曲线为Ease
        .animation({ duration: 1000, curve: Curve.Ease })
          // animation对下面的backgroundColor、margin属性不生效
        .backgroundColor(this.myColor)
        .margin(20)


      Button("area: click me")
        .fontSize(12)
        .onClick(() => {
          // 改变属性值，配置了属性动画的属性会进行动画过渡
          if (this.flag) {
            this.myWidth = 100;
            this.myHeight = 50;
            this.myColor = Color.Blue;
          } else {
            this.myWidth = 200;
            this.myHeight = 100;
            this.myColor = Color.Pink;
          }
          this.flag = !this.flag;
        })
    }
  }

}