
import curves from '@ohos.curves';
@Entry
@Component
struct SpringMotionTest{
   @State positionX: number = 100;
   @State positionY: number = 100;
   diameter: number = 50;
   build() {
     Column() {
       Row() {
         Circle({ width: this.diameter, height: this.diameter })
           .fill(Color.Blue)
           .position({ x: this.positionX, y: this.positionY })
           .onTouch((event: TouchEvent) => {
             if (event.type === TouchType.Move) {
               // 跟手过程，使用responsiveSpringMotion曲线
               animateTo({ curve: curves.responsiveSpringMotion() }, () => {
                 // 减去半径，以使球的中心运动到手指位置
                 this.positionX = event.touches[0].screenX - this.diameter / 2;
                 this.positionY = event.touches[0].screenY - this.diameter / 2;
                 console.info(`move, animateTo x:${this.positionX}, y:${this.positionY}`);
               })
             } else if (event.type === TouchType.Up) {
               // 离手时，使用springMotion曲线
               animateTo({ curve: curves.springMotion() }, () => {
                 this.positionX = 100;
                 this.positionY = 100;
                 console.info(`touchUp, animateTo x:100, y:100`);
               })
             }
           })
       }
       .width("100%").height("80%")
       .clip(true) // 如果球超出父组件范围，使球不可见
       .backgroundColor(Color.Orange)

       Flex({ direction: FlexDirection.Row, alignItems: ItemAlign.Start, justifyContent: FlexAlign.Center }) {
         Text("拖动小球").fontSize(16)
       }
       .width("100%")

       Row() {
         Text('点击位置: [x: ' + Math.round(this.positionX) + ', y:' + Math.round(this.positionY) + ']').fontSize(16)
       }
       .padding(10)
       .width("100%")
     }.height('100%').width('100%')
   }
 }