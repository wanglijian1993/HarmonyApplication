
import Const from '../constant/CommonConstants'
import { CustomRefreshLoadLayoutClass } from '../viewmodel/NewsViewModel';


/**
 * Custom layout to show refresh or load.
 */
@Component
export default struct CustomLayout {
  @ObjectLink customRefreshLoadClass: CustomRefreshLoadLayoutClass;

  build() {
    Row() {
      Image(this.customRefreshLoadClass.imageSrc)
        .width(Const.RefreshLayout_IMAGE_WIDTH)
        .height(Const.RefreshLayout_IMAGE_HEIGHT)

      Text(this.customRefreshLoadClass.textValue)
        .margin({
          left: Const.RefreshLayout_TEXT_MARGIN_LEFT,
          bottom: Const.RefreshLayout_TEXT_MARGIN_BOTTOM
        })
        .fontSize(Const.RefreshLayout_TEXT_FONT_SIZE)
        .textAlign(TextAlign.Center)
    }
    .clip(true)
    .width(Const.FULL_WIDTH)
    .justifyContent(FlexAlign.Center)
    .height(this.customRefreshLoadClass.heightValue)
  }
}