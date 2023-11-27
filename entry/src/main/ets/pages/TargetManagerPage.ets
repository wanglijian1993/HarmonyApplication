
import promptAction from '@ohos.promptAction';
import CommonConstants from '../constant/CommonConstants'
import getCurrentTime from '../utils/DateUtil';
import AddTargetDialog from '../view/AddTargetDialog';
import TargetInformation from '../view/TargetInformation'
import TargetList from '../view/TargetList';
import DataModel,{TaskItemBean} from '../viewmodel/DataModel';
@Entry
@Component
struct TargetManagerPage{
  @State targetData: Array<TaskItemBean> = DataModel.getTaskItemBeanData();
  @State totalTasksNumber: number = 0;
  @State completedTasksNumber: number = 0;
  @State latestUpdateDate: string = CommonConstants.DEFAULT_PROGRESS_VALUE;
  @Provide @Watch('onProgressChanged') overAllProgressChanged: boolean = false;
  dialogController: CustomDialogController = new CustomDialogController({
    builder: AddTargetDialog({
      onClickOk: (value: string): void => this.saveTask(value)
    }),
    alignment: DialogAlignment.Bottom,
    offset: {
      dx: CommonConstants.DIALOG_OFFSET_X,
      dy: $r('app.float.dialog_offset_y')
    },
    customStyle: true,
    autoCancel: false
  });
  /**
   * Listening targetData.
   */
  onProgressChanged() {
    this.totalTasksNumber = this.targetData.length;
    this.completedTasksNumber = this.targetData.filter((item: TaskItemBean) => {
      return item.progressValue === CommonConstants.SLIDER_MAX_VALUE;
    }).length;
    this.latestUpdateDate = getCurrentTime();
  }
   @Builder
   titleBar(){
     Text($r('app.string.title'))
       .width(CommonConstants.TITLE_WIDTH)
       .height($r('app.float.title_height'))
       .fontSize($r('app.float.title_font'))
       .fontWeight(CommonConstants.FONT_WEIGHT_LARGE)
       .textAlign(TextAlign.Start)
       .margin({
         top: $r('app.float.title_margin'),
         bottom: $r('app.float.title_margin')
       })
   }

  build(){
    Column(){
       this.titleBar()
      TargetInformation({
        latestUpdateDate: this.latestUpdateDate,
        totalTasksNumber: this.totalTasksNumber,
        completedTasksNumber: this.completedTasksNumber
      })
      TargetList({
        targetData: $targetData,
        onAddClick: (): void => this.dialogController.open()
      }).height(CommonConstants.LIST_BOARD_HEIGHT)

    }.width(CommonConstants.FULL_WIDTH)
    .height(CommonConstants.FULL_WIDTH)
    .backgroundColor($r('app.color.index_background'))
  }
  /**
   * Save the progress value and update time after you click OK in the dialog box.
   *
   * @param taskName Latest Progress Value.
   */
  saveTask(taskName: string) {
    if (taskName === '') {
      promptAction.showToast({
        message: $r('app.string.cannot_input_empty'),
        duration: CommonConstants.TOAST_TIME,
        bottom: CommonConstants.TOAST_MARGIN_BOTTOM
      });
      return;
    }
    DataModel.addData(new TaskItemBean(taskName, 0, getCurrentTime()));
    this.targetData = DataModel.getTaskItemBeanData();
    this.overAllProgressChanged = !this.overAllProgressChanged;
    this.dialogController.close();
  }
}