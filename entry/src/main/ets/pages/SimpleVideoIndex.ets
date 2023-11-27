
import { MARGIN_FONT_SIZE,LIST } from '../constant/CommonConstants'
import { SwiperVideo } from '../view/IndexSwiper'
import { VideoModule } from '../view/VideoModule'
@Entry
@Component
struct SimpleVideoIndex{
  
  build(){
    Column({space:MARGIN_FONT_SIZE.FOURTH_MARGIN}){
      SwiperVideo()
      List() {
        ForEach(LIST, (item: string) => {
          ListItem() {
            VideoModule({ moduleName: item })
              .margin({ top: MARGIN_FONT_SIZE.FIRST_MARGIN })
          }
        }, (item: string) => JSON.stringify(item))
      }
      .listDirection(Axis.Vertical)
      .margin({ top: MARGIN_FONT_SIZE.THIRD_MARGIN })
    }
  }

}