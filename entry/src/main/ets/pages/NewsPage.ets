
import TabBar from '../view/TabBar'
import Const from '../constant/CommonConstants'
@Entry
@Component
struct NewsPage {

  build() {
    Column() {
      TabBar()
    }
    .width(Const.FULL_WIDTH)
    .backgroundColor($r('app.color.listColor'))
    .justifyContent(FlexAlign.Center)
  }
}