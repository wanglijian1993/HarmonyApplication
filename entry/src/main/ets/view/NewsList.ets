import NewsModel from '../viewmodel/NewsModel';
import NewsViewModel,{NewsData,CustomRefreshLoadLayoutClass} from '../viewmodel/NewsViewModel';
import Const,{PageState} from '../constant/CommonConstants';
import promptAction from '@ohos.promptAction';
import CustomRefreshLoadLayout from './CustomRefreshLoadLayout';
import { listTouchEvent } from '../constant/utils/listTouchEvent';
import RefreshLayout from './RefreshLayout';
import LoadMoreLayout from './LoadMoreLayout';
import NewsItem from './NewsItem';
import CommonConstant from '../constant/CommonConstants';
import NoMoreLayout from './NoMoreLayout';

@Component
export default struct NewsList {

  @State newsModel: NewsModel = new NewsModel();
  @Watch('changeCategory') @Link currentIndex: number;

  changeCategory() {
    this.newsModel.currentPage = 1;
    NewsViewModel.getNewsList(this.newsModel.currentPage, this.newsModel.pageSize, Const.GET_NEWS_LIST)
      .then((data: NewsData[]) => {
        this.newsModel.pageState = PageState.Success;
        if (data.length === this.newsModel.pageSize) {
          this.newsModel.currentPage++;
          this.newsModel.hasMore = true;
        } else {
          this.newsModel.hasMore = false;
        }
        this.newsModel.newsData = data;
      })
      .catch((err: string | Resource) => {
        promptAction.showToast({
          message: err,
          duration: Const.ANIMATION_DURATION
        });
        this.newsModel.pageState = PageState.Fail;
      });
  }
  aboutToAppear() {
    // Request news data.
    this.changeCategory();
  }
  build(){
    Column() {
      if (this.newsModel.pageState === PageState.Success) {
        this.ListLayout()
      } else if (this.newsModel.pageState === PageState.Loading) {
        this.LoadingLayout()
      } else {
        this.FailLayout()
      }
    }
    .width(Const.FULL_WIDTH)
    .height(Const.FULL_HEIGHT)
    .justifyContent(FlexAlign.Center)
    .onTouch((event: TouchEvent | undefined) => {
      if (event) {
        if (this.newsModel.pageState === PageState.Success) {
          listTouchEvent(this.newsModel, event);
        }
      }
    })
  }
  @Builder LoadingLayout() {
    CustomRefreshLoadLayout({ customRefreshLoadClass: new CustomRefreshLoadLayoutClass(true,
      $r('app.media.ic_pull_up_load'), $r('app.string.pull_up_load_text'), this.newsModel.pullDownRefreshHeight) })
  }

  @Builder ListLayout() {
    List() {
      ListItem() {
        RefreshLayout({
          refreshLayoutClass: new CustomRefreshLoadLayoutClass(this.newsModel.isVisiblePullDown, this.newsModel.pullDownRefreshImage,
            this.newsModel.pullDownRefreshText, this.newsModel.pullDownRefreshHeight)
        })
      }

      ForEach(this.newsModel.newsData, (item: NewsData) => {
        ListItem() {
          NewsItem({ newsData: item })
        }
        .height($r('app.float.news_list_height'))
        .backgroundColor($r('app.color.white'))
        .margin({ top: $r('app.float.news_list_margin_top') })
        .borderRadius(Const.NewsListConstant_ITEM_BORDER_RADIUS)
      }, (item: NewsData, index?: number) => JSON.stringify(item) + index)

      ListItem() {
        if (this.newsModel.hasMore) {
          LoadMoreLayout({
            loadMoreLayoutClass: new CustomRefreshLoadLayoutClass(this.newsModel.isVisiblePullUpLoad, this.newsModel.pullUpLoadImage,
              this.newsModel.pullUpLoadText, this.newsModel.pullUpLoadHeight)
          })
        } else {
          NoMoreLayout()
        }
      }
    }
    .width(Const.NewsListConstant_LIST_WIDTH)
    .height(Const.FULL_HEIGHT)
    .margin({ left: Const.NewsListConstant_LIST_MARGIN_LEFT, right: Const.NewsListConstant_LIST_MARGIN_RIGHT })
    .backgroundColor($r('app.color.listColor'))
    .divider({
      color: $r('app.color.dividerColor'),
      strokeWidth: Const.NewsListConstant_LIST_DIVIDER_STROKE_WIDTH,
      endMargin: Const.NewsListConstant_LIST_MARGIN_RIGHT
    })
    // Remove the rebound effect.
    .edgeEffect(EdgeEffect.None)
    .offset({ x: 0, y: `${this.newsModel.offsetY}${CommonConstant.LIST_OFFSET_UNIT}` })
    .onScrollIndex((start: number, end: number) => {
      // Listen to the first index of the current list.
      this.newsModel.startIndex = start;
      this.newsModel.endIndex = end;
    })
  }

  @Builder FailLayout() {
    Image($r('app.media.none'))
      .height(Const.NewsListConstant_NONE_IMAGE_SIZE)
      .width(Const.NewsListConstant_NONE_IMAGE_SIZE)
    Text($r('app.string.page_none_msg'))
      .opacity(Const.NewsListConstant_NONE_TEXT_opacity)
      .fontSize(Const.NewsListConstant_NONE_TEXT_size)
      .fontColor($r('app.color.fontColor_text3'))
      .margin({ top: Const.NewsListConstant_NONE_TEXT_margin })
  }
}