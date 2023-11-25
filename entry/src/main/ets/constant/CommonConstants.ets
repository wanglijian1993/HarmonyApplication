


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
   * The second page message.
   */
  static readonly SECOND_MESSAGE: string = 'Second Page';

  static readonly TODO_DATA:Array<string>=[
    "早起锻炼","准备早餐","阅读名著","学习ArkTs","看剧放松"
  ]

}