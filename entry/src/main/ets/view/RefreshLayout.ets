/**
 * The refresh layout component.
 */
import { CustomRefreshLoadLayoutClass } from '../viewmodel/NewsViewModel';
import CustomRefreshLoadLayout from './CustomRefreshLoadLayout';
@Component
export default struct RefreshLayout {
  @ObjectLink refreshLayoutClass: CustomRefreshLoadLayoutClass;

  build() {
    Column() {
      if (this.refreshLayoutClass.isVisible) {
        CustomRefreshLoadLayout({ customRefreshLoadClass: new CustomRefreshLoadLayoutClass
        (this.refreshLayoutClass.isVisible, this.refreshLayoutClass.imageSrc, this.refreshLayoutClass.textValue,
          this.refreshLayoutClass.heightValue) })
      }
    }
  }
}