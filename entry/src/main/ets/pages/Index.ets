import router from '@ohos.router'
import {NEWS_PAGES, RENDER_PAGES,ANIMATION_PAGES} from '../constant/CommonConstants';
import CommonConstants from '../constant/CommonConstants';

const TAG = '[IndexPage]';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
      Column({space:CommonConstants.INDEX_COLUMN_SPACE}) {
        Button($r("app.string.todo_list_nick"))
          .onClick(()=>{
            router.pushUrl({
              url: CommonConstants.SECOND_URL,
              params: {
                src: CommonConstants.SECOND_MESSAGE
              }
            })
          })
        Button($r("app.string.login_main_page")).onClick(()=>{
          router.pushUrl({
            url:CommonConstants.LOGIN_URL
          })
        })
      Button($r("app.string.target_manager_page")).onClick(()=>{
          router.pushUrl({
            url:CommonConstants.TARGET_MANAGER_PAGE
          })
        })

        Button($r("app.string.video_play")).onClick(()=>{
          router.pushUrl({
            url:CommonConstants.TARGET_VIDEO_INDEX
          })
        })

        Button($r("app.string.render_control")).onClick(()=>{
          router.pushUrl({
            url:RENDER_PAGES
          })
        })
        Button($r("app.string.news_pages")).onClick(()=>{
          router.pushUrl({
            url:NEWS_PAGES
          })
        })
        Button($r("app.string.animations_ages")).onClick(()=>{
          router.pushUrl({
            url:ANIMATION_PAGES
          })
        })
      }.width('100%')

    .height(CommonConstants.FULL_LENGTH)
    .justifyContent(FlexAlign.Start)
  }
}