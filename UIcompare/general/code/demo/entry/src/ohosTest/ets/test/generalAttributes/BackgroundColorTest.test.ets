/*
 * Copyright (c) 2023 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
import CommonTest from '../common/CommonTest';
import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect } from '@ohos/hypium';

//测试通用属性-backgroundColor
export default function BackgroundColorTest() {

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
    pageUrl: 'TestAbility/pages/BackgroundColorPage' //用于设置窗口页面
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

