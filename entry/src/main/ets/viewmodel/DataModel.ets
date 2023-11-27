
import CommonConstants from '../constant/CommonConstants';
import  CommonConstant from '../constant/CommonConstants'
import Logger from '../utils/Logger';
const TAG = '[DataModel]';

export class DataModel{

   private tasks:Array<string> =CommonConstant.TODO_DATA
  /**
   * Saved data.
   */
  private targetData: Array<TaskItemBean> = [];

   getData():Array<string>{
     return this.tasks
   }

  /**
   * Get the latest data.
   */
  getTaskItemBeanData(): Array<TaskItemBean> {
    return this.targetData;
  }
  /**
   * Update data based on index and progress values and update date.
   *
   * @param index of update item.
   * @param updateValue of update item.
   * @param updateDate of update item.
   */
  updateProgress(index: number, updateValue: number, updateDate: string): boolean {
    if (!this.targetData[index]) {
      return false;
    }
    this.targetData[index].progressValue = updateValue;
    this.targetData[index].updateDate = updateDate;
    return true;
  }
  /**
   * Delete the selected data.
   *
   * @param selectArr: An array indicating whether historical data is selected.
   */
  deleteData(selectArr: Array<boolean>) {
    if (!selectArr) {
      Logger.error(TAG, 'Failed to delete data because selectArr is ' + selectArr);
    }
    let dataLen = this.targetData.length - CommonConstants.ONE_TASK;
    for (let i = dataLen; i >= 0; i--) {
      if (selectArr[i]) {
        this.targetData.splice(i, CommonConstants.ONE_TASK);
      }
    }
  }
  /**
   * Add data to targetData.
   *
   * @param Data of the RecordItemBean type to be added.
   */
  addData(data: TaskItemBean) {
    if (!data) {
      Logger.error(TAG, 'addData error because data is: ' + data);
      return;
    }
    this.targetData.push(data);
  }
 }
/**
* Task item entity class.
*/
export class TaskItemBean {
  /**
   * Progress value of task item.
   */
  taskName: string;

  /**
   * Update time of task item.
   */
  updateDate: string;

  /**
   * progress value of task item.
   */
  progressValue: number;



  /**
   * Construction method.
   *
   * @param progressValue progress value.
   * @param updateDate update time.
   */
  constructor(taskName: string, progressValue: number, updateDate: string) {
    this.taskName = taskName;
    this.progressValue = progressValue;
    this.updateDate = updateDate;
  }
}

export default new DataModel()