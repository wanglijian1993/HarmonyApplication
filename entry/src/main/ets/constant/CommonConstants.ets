
import { NewsTypeBean } from '../viewmodel/NewsViewModel';


export default  class CommonConstant{
  /**
   * Full width or height.
   */
  static readonly FULL_LENGTH: string = '100%';

  /**
   * Title height.
   */
  static readonly TITLE_WIDTH: string = '80%';

  /**
   * List default width.
   */
  static readonly LIST_DEFAULT_WIDTH: string = '93.3%';

  /**
   * Opacity of default.
   */
  static readonly OPACITY_DEFAULT: number = 1;

  /**
   * Opacity of default.
   */
  static readonly OPACITY_COMPLETED: number = 0.4;

  /**
   * BorderRadius of list item.
   */
  static readonly BORDER_RADIUS: number = 24;

  /**
   * BorderRadius of list item.
   */
  static readonly FONT_WEIGHT: number = 500;

  /**
   * Space of column.
   */
  static readonly COLUMN_SPACE: number = 16;
  /**
   * The second page url.
   */
  static readonly SECOND_URL: string = 'pages/ToDoListPage';

  /**
   * The Login page url.
   */
  static readonly LOGIN_URL: string = 'pages/LoginPage';

  /**
   * default click index.
   */
  static readonly DEFAULT_CLICK_INDEX: number = -1;
  /**
   * The targer manager page url.
   */
  static readonly TARGET_MANAGER_PAGE: string = 'pages/TargetManagerPage';
  /**
   * The Main page url
   */
  static readonly MAIN_URL:string='pages/MainPage';
  /**
   * The second page message.
   */
  static readonly SECOND_MESSAGE: string = 'Second Page';
  /**
   * The width or height of the component is spread across the parent component.
   */
  static readonly FULL_PARENT = '100%';
   /**
    * 满屏宽度
    */
  static readonly FULL_WIDTH='100%'
  /**
   * 首页的column间距
   */
  static readonly INDEX_COLUMN_SPACE=10;
  /**
   * Input length of the account.
   */
  static readonly INPUT_ACCOUNT_LENGTH = 11;
  /**
   *  Left padding of the input box
   */
  static readonly INPUT_PADDING_LEFT = 0;
  /**
   *  Input length of the password.
   */
  static readonly INPUT_PASSWORD_LENGTH = 8;
  /**
   * The width of button
   */
  static readonly BUTTON_WIDTH = '90%';
  /**
   * Delay time of simulated login
   */
  static readonly LOGIN_DELAY_TIME = 2000;
  /**
   * Spacing of other login methods
   */
  static readonly LOGIN_METHODS_SPACE = 44;
  /**
   * Home tab index
   */
  static readonly HOME_TAB_INDEX = 0;

  /**
   * Mine tab index
   */
  static readonly MINE_TAB_INDEX = 1;
  /**
   * Title text of the home page
   */
  static readonly HOME_TITLE = '首页';

  /**
   * Title text of the setting page
   */
  static readonly MINE_TITLE = '我的';
  /**
   * Common Spacing of Components
   */
  static readonly COMMON_SPACE = 12;
  /**
   * The width of setting list
   */
  static readonly SET_LIST_WIDTH = '42%';
  /**
   * Larger font weight.
   */
  static readonly FONT_WEIGHT_LARGE: number = 700;
  /**
   * Radius of bookInfo area.
   */
  static readonly IMAGE_BORDER_RADIUS: number = 12;

  /**
   * Opacity of text.
   */
  static readonly OPACITY: number = 0.4;

  /**
   * Margin left of book item.
   */
  static readonly TARGET_MARGIN_LEFT: string = '5%';
  /**
   * Default progress value.
   */
  static readonly DEFAULT_PROGRESS_VALUE: string = '-';
  /**
   * Width of slider.
   */
  static readonly STROKE_WIDTH: number = 4.8;
  /**
   * Width of the content area.
   */
  static readonly MAIN_BOARD_WIDTH: string = '93.3%';

  /**
   * Radius of bookInfo area.
   */
  static readonly TARGET_BORDER_RADIUS: number = 24;
  /**
   * Full height.
   */
  static readonly FULL_HEIGHT: string = '100%';
  /**
   * Width of checkbox.
   */
  static readonly CHECKBOX_WIDTH: number = 20;

  /**
   * list space.
   */
  static readonly LIST_SPACE: number = 12;

  /**
   * Width of task item.
   */
  static readonly TASK_NAME_WIDTH: string = '30%';
  /**
   * Max of line.
   */
  static readonly MAX_LINES: number = 2;
  /**
   * The smallest value of slider.
   */
  static readonly SLIDER_MIN_VALUE: number = 0;
  /**
   * The maximum value of slider.
   */
  static readonly SLIDER_MAX_VALUE: number = 100;
  /**
   * Step of slider.
   */
  static readonly SLIDER_STEP: number = 1;
  /**
   * Margin top of slider button.
   */
  static readonly SLIDER_INNER_WIDTH: string = '90%';
  /**
   * Width of slider.
   */
  static readonly SLIDER_WIDTH: string = '90%';
  /**
   * Height of slider.
   */
  static readonly SLIDER_HEIGHT: string = '20%';
  /**
   * Radius of list.
   */
  static readonly LIST_RADIUS: number = 24;
  /**
   * Margin top of slider button.
   */
  static readonly SLIDER_BUTTON_MARGIN: string = '4%';
  /**
   * Button width of dialog.
   */
  static readonly DIALOG_OPERATION_WIDTH: string = '70%';
  /**
   * Button height of dialog.
   */
  static readonly DIALOG_OPERATION_HEIGHT: string = '10%';
  /**
   * Width of dialog.
   */
  static readonly DIALOG_WIDTH: string = '90.3%';
  /**
   * Radius of dialog.
   */
  static readonly DIALOG_BORDER_RADIUS: number = 32;
  /**
   * Current month plus one.
   */
  static readonly PLUS_ONE: number = 1;

  /**
   * The fraction or number of seconds is less than 10.
   */
  static readonly TEN: number = 10;
  /**
   * x-axis transition animation.
   */
  static readonly TRANSITION_ANIMATION_X: number = 1;

  /**
   * y-axis transition animation.
   */
  static readonly TRANSITION_ANIMATION_Y: number = 0;
  /**
   * Opacity of not.
   */
  static readonly NO_OPACITY: number = 1;

  /**
   * default SliderChangeMode.
   */
  static readonly DEFAULT_SLIDER_MODE: number = -1;

  /**
   * click SliderChangeMode.
   */
  static readonly CLICK_SLIDER_MODE: number = 3;

  /**
   * Height of list.
   */
  static readonly LIST_HEIGHT: string = '80%';
  /**
   * One task of data.
   */
  static readonly ONE_TASK: number = 1;
  /**
   * Height of list board.
   */
  static readonly LIST_BOARD_HEIGHT: string = '67%';
  /**
   * Button height of dialog.
   */
  static readonly DIALOG_INPUT_HEIGHT: string = '40%';
  /**
   * Input margin of dialog.
   */
  static readonly DIALOG_INPUT_MARGIN: string = '6%';
  /**
   * Bottom toast.
   */
  static readonly TOAST_MARGIN_BOTTOM: number = 64;

  /**
   * Horizontal offset of dialog.
   */
  static readonly DIALOG_OFFSET_X: number = 0;
  /**
   * Toast Duration.
   */
  static readonly TOAST_TIME: number = 3000;
  /**
   * animation duration.
   */
  static readonly DURATION: number = 300;

  static readonly TODO_DATA:Array<string>=[
    "早起锻炼","准备早餐","阅读名著","学习ArkTs","看剧放松"
  ]
  /**
   * The targer manager page url.
   */
  static readonly TARGET_VIDEO_INDEX: string = 'pages/SimpleVideoIndex';

  /**
   * Grid column templates.
   */
  static readonly GRID_COLUMN_TEMPLATES: string = '1fr ';

  /**
   * List offset unit.
   */
  static readonly LIST_OFFSET_UNIT: string = 'px';
  /**
   * The http timeout duration.
   */
  static readonly HTTP_READ_TIMEOUT: number = 10000;
  /**
   * Http request success status code.
   */
  static readonly HTTP_CODE_200: number = 200;
  /**
   * The request success status code.
   */
  static readonly SERVER_CODE_SUCCESS: string = 'success';
  /**
   * The host address of the server.
   */
  static readonly SERVER: string = 'http://192.168.230.27:9588';

  /**
   * Get the news type.
   */
  static readonly GET_NEWS_TYPE: string = 'news/getNewsType';
  /**
   * The off set coefficient.
   */
  static readonly Y_OFF_SET_COEFFICIENT: number = 0.1;
  /**
   * The delay time.
   */
  static readonly DELAY_TIME: number = 1000;
  /**
   * Get the news list.
   */
  static readonly GET_NEWS_LIST: string = 'news/getNewsList';
  /**
   * The page size.
   */
  static readonly PAGE_SIZE: number = 4;
  static readonly TabBars_DEFAULT_NEWS_TYPES: Array<NewsTypeBean> = [
    { id: 0, name: '全部' },
    { id: 1, name: '国内' },
    { id: 2, name: '国际' },
    { id: 3, name: '娱乐' },
    { id: 4, name: '军事' },
    { id: 5, name: '体育' },
    { id: 6, name: '科技' },
    { id: 7, name: '财经' }
  ];
  /**
   * The RefreshLayout constants.
   */
  static readonly RefreshLayout_MARGIN_LEFT: string = '40%';
  static readonly RefreshLayout_TEXT_MARGIN_BOTTOM: number = 1;
  static readonly RefreshLayout_TEXT_MARGIN_LEFT: number = 7;
  static readonly RefreshLayout_TEXT_FONT_SIZE: number = 17;
  static readonly RefreshLayout_IMAGE_WIDTH: number = 18;
  static readonly RefreshLayout_IMAGE_HEIGHT: number = 18;
  /**
   * The TabBars constants.
   */
  static readonly TabBars_UN_SELECT_TEXT_FONT_SIZE: number = 18;
  static readonly TabBars_SELECT_TEXT_FONT_SIZE: number = 24;
  static readonly TabBars_UN_SELECT_TEXT_FONT_WEIGHT: number = 400;
  static readonly TabBars_SELECT_TEXT_FONT_WEIGHT: number = 700;
  static readonly TabBars_BAR_HEIGHT: string = '7.2%';
  static readonly TabBars_HORIZONTAL_PADDING: string  = '2.2%';
  static readonly TabBars_BAR_WIDTH: string = '100%';

  /**
   * The NewsGrid constants.
   */
  static readonly NewsGrid_MARGIN_LEFT: string = '3.5%';
  static readonly NewsGrid_MARGIN_RIGHT: string = '3.5%';
  static readonly NewsGrid_MARGIN_TOP: string = '5.1%';
  static readonly NewsGrid_WIDTH: string = '93%';
  static readonly NewsGrid_HEIGHT: string = '31.5%';
  static readonly NewsGrid_ASPECT_RATIO: number = 4;
  static readonly NewsGrid_COLUMNS_GAP: number = 5;
  static readonly NewsGrid_ROWS_TEMPLATE: string = '1fr';
  static readonly NewsGrid_IMAGE_BORDER_RADIUS: number = 8;

  /**
   * The NewsTitle constants.
   */
  static readonly NewsTitle_TEXT_FONT_SIZE: number = 20;
  static readonly NewsTitle_TEXT_FONT_WEIGHT: number = 500;
  static readonly NewsTitle_TEXT_MARGIN_LEFT: string = '2.4%';
  static readonly NewsTitle_TEXT_WIDTH: string = '78.6%';
  static readonly NewsTitle_IMAGE_MARGIN_LEFT: string = '3.5%';
  static readonly NewsTitle_IMAGE_WIDTH: string = '11.9%';
  /**
   * The refresh and load height.
   */
  static readonly CUSTOM_LAYOUT_HEIGHT: number = 70;
  /**
   * The animation delay time.
   */
  static readonly DELAY_ANIMATION_DURATION: number = 300;
  /**
   * The animation duration.
   */
  static readonly ANIMATION_DURATION: number = 2000;
  /**
   * The RefreshConstant constants.
   */
  static readonly RefreshConstant_DELAY_PULL_DOWN_REFRESH: number = 50;
  static readonly RefreshConstant_CLOSE_PULL_DOWN_REFRESH_TIME: number = 150;
  static readonly RefreshConstant_DELAY_SHRINK_ANIMATION_TIME: number = 500;
  /*
  * The NewsListConstant constants.
  */
  static readonly NewsListConstant_LIST_DIVIDER_STROKE_WIDTH: number = 0.5;
  static readonly NewsListConstant_GET_TAB_DATA_TYPE_ONE: number = 1;
  static readonly NewsListConstant_ITEM_BORDER_RADIUS: number = 16;
  static readonly NewsListConstant_NONE_IMAGE_SIZE: number = 120;
  static readonly NewsListConstant_NONE_TEXT_opacity: number = 0.6;
  static readonly NewsListConstant_NONE_TEXT_size: number = 16;
  static readonly NewsListConstant_NONE_TEXT_margin: number = 12;
  // static readonly NewsListConstant_ITEM_MARGIN_TOP: string = '1.5%';
  static readonly NewsListConstant_LIST_MARGIN_LEFT: string = '3.3%';
  static readonly NewsListConstant_LIST_MARGIN_RIGHT: string = '3.3%';
  // static readonly NewsListConstant_ITEM_HEIGHT: string = '32%';
  static readonly NewsListConstant_LIST_WIDTH: string =  '93.3%';
  /**
   * The NewsContent constants.
   */
  static readonly NewsContent_WIDTH: string = '93%';
  static readonly NewsContent_HEIGHT: string = '16.8%';
  static readonly NewsContent_MARGIN_LEFT: string = '3.5%';
  static readonly NewsContent_MARGIN_TOP: string = '3.4%';
  static readonly NewsContent_MAX_LINES: number = 2;
  static readonly NewsContent_FONT_SIZE: number = 15;
  /**
   * The NewsSource constants.
   */
  static readonly NewsSource_MAX_LINES: number = 1;
  static readonly NewsSource_FONT_SIZE: number = 12;
  static readonly NewsSource_MARGIN_LEFT: string = '3.5%';
  static readonly NewsSource_MARGIN_TOP: string = '3.4%';
  static readonly NewsSource_HEIGHT: string = '7.2%';
  static readonly NewsSource_WIDTH: string = '93%';
  /**
   * The NoMoreLayout constants.
   */
  static readonly NoMoreLayoutConstant_NORMAL_PADDING: number = 8;
  static readonly NoMoreLayoutConstant_TITLE_FONT: string = '16fp';
}

/**
 * route for second page
 */
export const SECOND_PAGE: string = 'pages/SimpleVideoPlay';
/**
 * margin or font size
 */
export const enum MARGIN_FONT_SIZE {
  FIRST_MARGIN = 12,
  SECOND_MARGIN = 16,
  THIRD_MARGIN = 18,
  FOURTH_MARGIN = 24,
  FIFTH_MARGIN = 50,
  SIXTH_MARGIN = 94,
  SEVENTH_MARGIN = 132

}

/**
 * route for second page
 */
export const VIDEOPLAY_PAGE: string = 'pages/SimpleVideoPlay';
/**
 * module list
 */
export const LIST: string[] = ['最近播放', '为你推荐'];
/**
 * video net address
 */
export const NET: string = '网络视频地址*****';
/**
 * component with or height percent
 */
export const enum STRING_PERCENT {
  SLIDER_WITH = '46.7%',
  NINETY_PERCENT = '88%',
  INDEX_COMPONENT_WITH_PERCENT = '93.3%',
  INDEX_SWIPER_HEIGHT_PERCENT = '24.1%',
  INDEX_MODULE_HEIGHT_PERCENT = '22.8%',
  INDEX_SWIPER_LEFT_RIGHT_MARGIN = '3.3%'
}

/**
 * common font weight
 */
export const COMMON_NUM_FONT_WEIGHT: number = 500;
/**
 * full percent
 */
export const ALL_PERCENT: string = '100%';
/**
 * Attribute Styles in a Stack Layout
 */
export const enum STACK_STYLE {
  IMAGE_Z_INDEX = 2,
  PROGRESS_VALUE = 0,
  PROGRESS_TOTAL = 100,
  PROGRESS_STROKE_WIDTH = 15,
  PROGRESS_SCALE_COUNT = 15,
  PROGRESS_SCALE_WIDTH = 5,
  PROGRESS_Z_INDEX = 1,
  PROGRESS_WIDTH = 80,
  PROGRESS_STEP = 10,
  MILLI_SECONDS = 100
}

/**
 * the minute of one hour
 */
export const COMMON_NUM_MINUTE: number = 60;
/**
 * toast duration
 */
export const COMMON_NUM_DURATION: number = 5000;

/**
 * init time of string
 */
export const START_TIME: string = '00:00';

/**
 * toast message
 */
export const MESSAGE: string = '请检查网络';
/**
 * the divide of single and double
 */
export const COMMON_NUM_DOUBLE: number = 10;

/**
 * video net address
 */
export const ZERO_STR: string = '0';

/**
 * time split
 */
export const SPLIT: string = ':';
/**
 * slider small track thick ness
 */
export const SMALL_TRACK_THICK_NESS: number = 2;
/**
 * default opacity
 */
export const DEFAULT_OPACITY: number = Number.parseFloat('0.2');
/**
 * slider big track thick ness
 */
export const BIG_TRACK_THICK_NESS: number = 4;

/**
 * Image Size
 */
export const IMAGE_SIZE: number = 24;
/**
 * The request content type enum.
 */
export const enum ContentType {
  JSON = 'application/json'
}
/**
 * The refresh state enum.
 */
export const enum RefreshState {
  DropDown = 0,
  Release = 1,
  Refreshing = 2,
  Success = 3,
  Fail = 4
}

/**
 * The newsList state enum.
 */
export const enum PageState {
  Loading = 0,
  Success = 1,
  Fail = 2
}
export const RENDER_PAGES='pages/foreach/ForeachIndex'
export const FOREACH_PAGE='pages/foreach/ForeachPage'
export const FOREACH_OBJECTLINK='pages/foreach/ForeachObjectLink'
export const FOREACH_LAZYFOREACH='pages/foreach/LazyForeach'
export const NEWS_PAGES='pages/NewsPage'
export const ANIMATION_PAGES='pages/animations/AnimationPage'
