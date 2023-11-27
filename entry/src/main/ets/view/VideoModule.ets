
import router from '@ohos.router';
import { MARGIN_FONT_SIZE,STRING_PERCENT,VIDEOPLAY_PAGE,NET } from '../constant/CommonConstants';
import { HorizontalVideoItem } from '../viewmodel/HorizontalVideoItem';
import { HORIZONTAL_VIDEOS } from '../viewmodel/VideoData';
@Component
export struct VideoModule{
  private moduleName: string = '';

  build(){

    Column(){
      Flex({ direction: FlexDirection.Row }) {
        Text(this.moduleName)
          .fontSize(MARGIN_FONT_SIZE.THIRD_MARGIN)
          .fontWeight(FontWeight.Bolder)
      }
      .margin({
        left: STRING_PERCENT.INDEX_SWIPER_LEFT_RIGHT_MARGIN,
        bottom: MARGIN_FONT_SIZE.FIRST_MARGIN,
        top: MARGIN_FONT_SIZE.FIRST_MARGIN
      })
      List({ space: MARGIN_FONT_SIZE.FIRST_MARGIN }) {
        ForEach(HORIZONTAL_VIDEOS, (item: HorizontalVideoItem) => {
          ListItem() {
            HorizontalItem({
              imageSrc: item.image,
              source: NET,
              videoName: item.name
            })
          }
        }, (item: HorizontalVideoItem) => JSON.stringify(item))
      }
      .listDirection(Axis.Horizontal)
    }

  }

}

@Component
struct HorizontalItem {
  private imageSrc: Resource = $r('app.string.empty');
  private source: string = '';
  private videoName: string = '';

  build() {
    Column() {
      Image(this.imageSrc)
        .width(MARGIN_FONT_SIZE.SEVENTH_MARGIN)
        .height(MARGIN_FONT_SIZE.SIXTH_MARGIN)
        .onClick(() => {
          router.pushUrl({
            url: VIDEOPLAY_PAGE,
            params: { source: this.source }
          });
        })
      Text(this.videoName)
        .margin({
          top: MARGIN_FONT_SIZE.FIRST_MARGIN,
          bottom: MARGIN_FONT_SIZE.FIRST_MARGIN
        })
        .textAlign(TextAlign.Center)
        .fontSize(MARGIN_FONT_SIZE.SECOND_MARGIN)
    }
    .justifyContent(FlexAlign.Center)
  }
}