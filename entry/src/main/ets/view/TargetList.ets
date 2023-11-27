
import CommonConstants from '../constant/CommonConstants'
import DataModel,{ TaskItemBean } from '../viewmodel/DataModel';
import TargetListItem from './TargetListItem';
@Component
export default struct TargetList{
  @State isEditMode: boolean = false
  @Link targetData: Array<TaskItemBean>
  @State selectAll: boolean = false
  @State selectArray: Array<boolean> = []
  @State clickIndex: number = CommonConstants.DEFAULT_CLICK_INDEX;
  @Consume overAllProgressChanged: boolean;
  onAddClick?: () => void;

  build(){

     Column(){
       Row(){
         Text($r('app.string.sub_goals'))
           .fontSize($r('app.float.secondary_title'))
           .fontWeight(CommonConstants.FONT_WEIGHT_LARGE)
           .fontColor($r('app.color.title_black_color'))
         Blank()
        if(this.targetData.length>0){
          if(this.isEditMode){
            Text($r('app.string.cancel_button'))
              .operateTextStyle($r('app.color.main_blue'))
              .margin({ left: $r('app.float.operate_button_margin') })
              .onClick(() => {
                this.selectAll = false;
                this.isEditMode = false;
                this.selectAllOrCancel(false);
              })
            Text($r('app.string.select_all_button'))
              .operateTextStyle($r('app.color.main_blue'))
              .margin({
                left: $r('app.float.operate_button_margin')
              })
            Checkbox()
              .select(this.isSelectAll())
              .selectedColor($r('app.color.main_blue'))
              .width(CommonConstants.CHECKBOX_WIDTH)
              .onClick(() => {
                this.selectAll = !this.selectAll;
                this.selectAllOrCancel(this.selectAll);
              })
          }else {
            Text($r('app.string.edit_button'))
              .operateTextStyle($r('app.color.main_blue'))
              .onClick(() => {
                this.isEditMode = true;
                this.selectAllOrCancel(false);
              })
          }
        }
       }.width(CommonConstants.FULL_WIDTH)
       .height($r('app.float.history_line_height'))
       .padding({
         left: $r('app.float.list_padding'),
         right: $r('app.float.list_padding_right')
       })
       List({ space: CommonConstants.LIST_SPACE }) {
         ForEach(this.targetData, (item: TaskItemBean, index: number | undefined) => {
           ListItem() {
             TargetListItem({
               taskItem: item,
               index: index,
               selectArr: $selectArray,
               isEditMode: this.isEditMode,
               clickIndex: $clickIndex
             })
           }
         }, (item: TaskItemBean) => JSON.stringify(item))
       }     .edgeEffect(EdgeEffect.None)
       .margin({ top: $r('app.float.list_margin_top') })
       .width(CommonConstants.FULL_WIDTH)
       .height(CommonConstants.LIST_HEIGHT)
       Blank()
       if (this.isEditMode) {
         Button($r('app.string.delete_button'))
           .opacity(this.isSelectRows() ? CommonConstants.NO_OPACITY : CommonConstants.OPACITY)
           .enabled(this.isSelectRows() ? true : false)
           .operateButtonStyle($r('app.color.main_red'))
           .onClick(() => {
             this.deleteSelected();
             this.selectAllOrCancel(false);
             this.selectAll = false;
           })
       } else {
         Button($r('app.string.add_task'))
           .operateButtonStyle($r('app.color.main_blue'))
           .onClick(() => {
             if (this.onAddClick !== undefined) {
               this.onAddClick()
             }
           })
       }
     }
     .width(CommonConstants.MAIN_BOARD_WIDTH)
     .height(CommonConstants.FULL_HEIGHT)
     .padding({ top: $r('app.float.operate_row_margin') })



   }
  /**
   * Select or deselect all.
   *
   * @param selectStatus true: Select all. Otherwise, deselect all.
   */
  selectAllOrCancel(selectStatus: boolean) {
    let newSelectArray: Array<boolean> = [];
    this.targetData.forEach(() => {
      newSelectArray.push(selectStatus);
    });
    this.selectArray = newSelectArray;
  }
  /**
   * Check whether there are selected rows.
   */
  isSelectRows(): boolean {
    return this.selectArray.filter((selected: boolean) => selected === true).length !== 0;
  }
  /**
   * Delete the selected item and exit the editing mode.
   */
  deleteSelected() {
    DataModel.deleteData(this.selectArray);
    this.targetData = DataModel.getTaskItemBeanData();
    this.overAllProgressChanged = !this.overAllProgressChanged;
    this.isEditMode = false;
  }
  /**
   * Whether to select all.
   */
  isSelectAll(): boolean {
    if (this.selectArray.length === 0) {
      return false;
    }
    let deSelectCount: Length = this.selectArray.filter((selected: boolean) => selected === false).length;
    if (deSelectCount === 0) {
      this.selectAll = true;
      return true;
    }
    this.selectAll = false;
    return false;
  }
}

/**
 * Custom text button style.
 */
@Extend(Text)
function operateTextStyle(color: Resource) {
  .fontSize($r('app.float.text_button_font'))
  .fontColor(color)
  .lineHeight($r('app.float.text_line_height'))
  .fontWeight(CommonConstants.FONT_WEIGHT)
}

/**
 * Custom button style.
 */
@Extend(Button) function operateButtonStyle(color: Resource) {
  .width($r('app.float.button_width'))
  .height($r('app.float.button_height'))
  .fontSize($r('app.float.button_font'))
  .fontWeight(CommonConstants.FONT_WEIGHT)
  .fontColor(color)
  .backgroundColor($r('app.color.button_background'))
}