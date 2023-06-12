import CommonTest from '../common/CommonTest';
import { describe } from '@ohos/hypium';

//测试通用属性-backgroundColor
export default function backgroundColorTest() {

  //supportView包含了所有测试组件，根据当前通用数据所适用的组件进行修改,遍历生成case
  // this param is required.
  let supportView = [
      'AlphabetIndexer', 'Blank', 'Button', 'Checkbox', 'CheckboxGroup', 'DataPanel', 'DatePicker',
    'Divider', 'Gauge', 'Image', 'LoadingProgress', 'Marquee', 'Menu', 'MenuItem', 'MenuItemGroup', 'Navigation',
    'NavRouter', 'NavDestination', 'PatternLock', 'Progress', 'QRCode', 'Radio', 'Rating', 'RichText', 'ScrollBar',
    'Search', 'Select', 'Slider', 'Span', 'Stepper', 'StepperItem', 'Text', 'TextArea', 'TextClock', 'TextInput',
    'TextPicker', 'TextTimer', 'TimePicker', 'Toggle', 'Badge', 'Column', 'ColumnSplit', 'Counter', 'Flex',
    'FlowItem', 'GridCol', 'GridRow', 'Grid', 'GridItem', 'List', 'ListItem', 'ListItemGroup', 'Navigator', 'Panel',
    'Refresh', 'RelativeContainer', 'Row', 'RowSplit', 'Scroll', 'SideBarContainer', 'Stack', 'Swiper', 'Tabs',
    'TabContent', 'WaterFlow', 'Video', 'Circle', 'Ellipse', 'Line', 'Polyline', 'Polygon', 'Path', 'Rect', 'Shape', 'Canvas'
  ]

  //页面配置信息
  // this param is required.
  let pageConfig = {
    testName: 'BackgroundColorTest', //截图命名的一部分
    pageUrl: 'testability/pages/BackgroundColorPage' //用于设置窗口页面
  }

  //要测试的属性值，遍历生成case
  // this param is required.
  let testValues = [{
    describe: 'Color', //截图命名的一部分
    setValue: Color.Green, //要测试的属性值
  }, {
    describe: 'Number',
    setValue: 0xa23535, //酒红色
  }, {
    describe: 'String',
    setValue: 'rgb(255,105,180)', //hot pink
  }, {
    describe: 'Resource',
    setValue: $r('app.color.backgroundColor_color'),
  }]


  //  create test suite
  describe("BackgroundColorTest", () => {
    //    create test cases by config.

    CommonTest.initTest(pageConfig, supportView, testValues)
  })
}

