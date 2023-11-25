
import  CommonConstant from '../constant/CommonConstants'


export class DataModel{

   private tasks:Array<string> =CommonConstant.TODO_DATA


   getData():Array<string>{
     return this.tasks
   }

 }
export default new DataModel()