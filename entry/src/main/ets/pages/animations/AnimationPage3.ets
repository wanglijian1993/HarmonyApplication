@Entry
@Component
struct AnimationPage3{
  @State flag: boolean = true;
  @State show: string = 'show';

  build() {
    Column() {
      Button(this.show).width(80).height(30).margin(30)
        .onClick(() => {
          if (this.flag) {
            this.show = 'hide';
          } else {
            this.show = 'show';
          }
          animateTo({duration:1000},() =>{
            // 点击Button控制Image的显示和消失
            this.flag = !this.flag;
          })

        })
      if (this.flag) {
        Image($r('app.media.video_list0')).width(200).height(200)
          .transition({type:TransitionType.Insert,translate:{x:200,y:-200}})
          .transition({type:TransitionType.Delete,opacity:0,scale:{x:0,y:0}})

      }
    }.height('100%').width('100%')
  }

}