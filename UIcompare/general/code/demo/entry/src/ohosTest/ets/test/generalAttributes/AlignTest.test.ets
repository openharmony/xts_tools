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

//测试通用属性 验证交互组件，组件获焦默认情况
// test SUB_ACE_TS_COMPONENT_001
export default function AlignTest() {

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
    testName: 'AlignTest', //截图命名的一部分
    pageUrl: 'TestAbility/pages/AlignPage' //用于设置窗口页面
  }

  //要测试的属性值，遍历生成case
  // this param is required.
  let testValues = [{
                      describe: 'Top', //截图命名的一部分
                      setValue: Alignment.Top, //要测试的属性值 Top
                    }, {
                      describe: 'Center',
                      setValue: Alignment.Center, //Center
                    }, {
                      describe: 'Bottom',
                      setValue: Alignment.Bottom, //Bottom
                    }]


  //  create test suite
  describe('demoTest', function () {
    //    create test cases by config.

    CommonTest.initTest(pageConfig, supportView, testValues)
  })
}

