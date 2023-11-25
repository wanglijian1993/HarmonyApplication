import router from '@ohos.router'
import CommonConstants from '../constant/CommonConstants';

const TAG = '[IndexPage]';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Row() {
      Column() {
        Button($r("app.string.todo_list_nick"))
      }.width('100%')
      .onClick(()=>{
        router.push({
          url: CommonConstants.SECOND_URL,
          params: {
            src: CommonConstants.SECOND_MESSAGE
          }
        })
      })
      .width('100%')
    }
    .height('100%')
  }
}