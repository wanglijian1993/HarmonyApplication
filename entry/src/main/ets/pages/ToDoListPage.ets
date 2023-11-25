
import CommonConstant from '../constant/CommonConstants';
import ToDoItemList from '../view/ToDoItemList';
import DataModel from '../viewmodel/DataModel';



@Entry
@Component
struct ToDoListPage{

  private totalTasks:Array<string> =[];
  aboutToAppear(){
    this.totalTasks=DataModel.getData()
  }

  aboutToDisappear(){

  }


  build(){
    Column({space:CommonConstant.COLUMN_SPACE}){
      Text($r('app.string.page_title'))
        .fontSize($r('app.float.title_font_size'))
        .fontWeight(FontWeight.Bold)
        .lineHeight($r('app.float.title_font_height'))
        .width(CommonConstant.TITLE_WIDTH)
        .margin({
          top:$r('app.float.title_margin_top'),
          bottom:$r('app.float.title_margin_bottom')
        })
        .textAlign( TextAlign.Start)

        ForEach(this.totalTasks,(item:string)=>{
        ToDoItemList({content:item})
      },(item:string)=>JSON.stringify(item))
    }.width(CommonConstant.FULL_LENGTH)
    .height(CommonConstant.FULL_LENGTH)
    .backgroundColor($r('app.color.page_background'))

  }

}