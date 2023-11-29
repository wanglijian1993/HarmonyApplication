import router from '@ohos.router'
import {ALL_PERCENT,FOREACH_OBJECTLINK,FOREACH_PAGE} from '../../constant/CommonConstants'

@Entry
@Component
struct foreachIndex{

  build(){

    Column({space:5}){
      Button($r('app.string.foreach_page'))
        .onClick(()=>{
          router.pushUrl({url:FOREACH_PAGE})
        })

      Button($r('app.string.foreach_objectlink'))
        .onClick(()=>{
          router.pushUrl({url:FOREACH_OBJECTLINK})
        })

    }.height(ALL_PERCENT)
    .width(ALL_PERCENT)
  }

}