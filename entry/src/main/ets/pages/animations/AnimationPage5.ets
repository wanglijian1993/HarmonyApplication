
import curves from '@ohos.curves';

@Entry
@Component
struct AnimationPage5{
  @State translateX: number = 0;

  private jumpWithSpeed(speed: number) {
    this.translateX = -1;
    /**
     * 速度只是放大了振荡的效果，但系统能否产生振荡的效果，取决于弹簧振子本身的物理参数，
     * 即质量、刚度、阻力三个参数。刚度越小、阻力越大，springCurve的“弹性”越弱，振荡效果越弱。
     * 随着刚度减小或阻尼变大，达到过阻尼状态后，无论速度为多大，都不会有在终点值附近振荡的效果。
     */
    animateTo({ duration: 2000, curve: curves.springCurve(speed*5, 3, 2, 1) }, () => {
      // 以指定初速度进行x方向的平移的弹簧动画
      this.translateX = 0;
    })
  }
  build(){
    Column() {
      Button("button")
        .fontSize(14)
        .width(100)
        .height(50)
        .margin(30)
        .translate({ x: this.translateX })
      Row({space:50}) {
        Button("jump 50").fontSize(14)
          .onClick(() => {
            // 以初速度50的弹簧曲线进行平移
            this.jumpWithSpeed(50);
          })
        Button("jump 200").fontSize(14)
          .onClick(() => {
            // 以初速度200的弹簧曲线进行平移
            this.jumpWithSpeed(200);
          })
      }.margin(30)
    }.height('100%').width('100%')
  }

}