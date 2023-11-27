import CommonConstants from '../constant/CommonConstants';
@CustomDialog
export default struct AddTargetDialog {
  @State subtaskName: string = '';
  private controller?: CustomDialogController;
  onClickOk?: (value: string) => void;

  build() {
    Column() {
      Text($r('app.string.add_task_dialog'))
        .width(CommonConstants.FULL_WIDTH)
        .fontSize($r('app.float.secondary_title'))
        .fontWeight(CommonConstants.FONT_WEIGHT)
        .fontColor($r('app.color.title_black_color'))
        .textAlign(TextAlign.Start)
      TextInput({ placeholder: $r('app.string.input_target_name')})
        .placeholderColor(Color.Grey)
        .placeholderFont({ size: $r('app.float.list_font')})
        .caretColor(Color.Blue)
        .backgroundColor($r('app.color.input_background'))
        .width(CommonConstants.FULL_WIDTH)
        .height(CommonConstants.DIALOG_INPUT_HEIGHT)
        .margin({ top: CommonConstants.DIALOG_INPUT_MARGIN })
        .fontSize($r('app.float.list_font'))
        .fontColor($r('app.color.title_black_color'))
        .onChange((value: string) => {
          this.subtaskName = value;
        })
      Blank()
      Row() {
        Button($r('app.string.cancel_button'))
          .dialogButtonStyle()
          .onClick(() => {
            this.controller?.close();
          })
        Divider()
          .vertical(true)
        Button($r('app.string.confirm_button'))
          .dialogButtonStyle()
          .onClick(() => {
            if (this.onClickOk !== undefined) {
              this.onClickOk(this.subtaskName);
            }
          })
      }
      .width(CommonConstants.DIALOG_OPERATION_WIDTH)
      .height(CommonConstants.DIALOG_OPERATION_HEIGHT)
      .justifyContent(FlexAlign.SpaceBetween)
    }
    .padding($r('app.float.dialog_padding'))
    .height($r('app.float.dialog_height'))
    .width(CommonConstants.DIALOG_WIDTH)
    .borderRadius(CommonConstants.DIALOG_BORDER_RADIUS)
    .backgroundColor(Color.White)
  }
}


/**
 * Custom button style.
 */
@Extend(Button) function dialogButtonStyle() {
  .fontSize($r('app.float.button_font'))
  .height($r('app.float.dialog_btn_height'))
  .width($r('app.float.dialog_btn_width'))
  .backgroundColor(Color.White)
  .fontColor($r('app.color.main_blue'))
}