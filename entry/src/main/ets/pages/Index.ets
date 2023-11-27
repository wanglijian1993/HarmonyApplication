import router from '@ohos.router'
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

      }.width('100%')

    .height(CommonConstants.FULL_LENGTH)
    .justifyContent(FlexAlign.Start)
  }
}