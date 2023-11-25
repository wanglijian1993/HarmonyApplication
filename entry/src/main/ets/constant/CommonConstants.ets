


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
  static readonly TODO_DATA:Array<string>=[
    "早起锻炼","准备早餐","阅读名著","学习ArkTs","看剧放松"
  ]

}