/**
 * Copyright (c) 2023 Shenzhen Kaihong Digital Industry Development Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
import CommonTest from '../../common/CommonTest';
import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect } from '@ohos/hypium';
import Settings from '../../model/Settings'
import Logger from '../../model/Logger'

export default function ResponseRegionTest007() {

  //supportView包含了所有测试组件，根据当前通用数据所适用的组件进行修改,遍历生成case
  // this param is required.
  let supportView = [
    'AlphabetIndexer', 'Blank', 'Button', 'Checkbox', 'CheckboxGroup', 'DataPanel', 'DatePicker',
    'Divider', 'Gauge', 'Image', 'ImageAnimator','Marquee', 'Menu', 'MenuItem','MenuItemGroup',
    'Progress', 'QRCode', 'Radio', 'Rating', 'ScrollBar',
    'Search', 'Select', 'Slider', 'Text', 'TextArea',  'TextInput',
    'TextPicker', 'TextTimer', 'TimePicker', 'Badge', 'Column', 'ColumnSplit', 'Counter', 'Flex',
    'FlowItem','GridCol', 'GridRow', 'Grid', 'List', 'ListItem', 'ListItemGroup', 'Navigator', 'Panel',
    'RelativeContainer','Row', 'RowSplit', 'Scroll', 'SideBarContainer', 'Stack', 'Swiper', 'Tabs',
    'TabContent', 'WaterFlow', 'Video', 'Circle', 'Ellipse', 'Line', 'Polyline', 'Polygon', 'Path', 'Rect', 'Shape',
    'Canvas','XComponent','Navigation','Toggle1', 'Toggle2','Toggle3','NavRouter'
  ]

  //页面配置信息
  // this param is required.
  let pageConfig = {
    testName: 'ResponseRegionTest007', //截图命名的一部分
    pageUrl: 'TestAbility/pages/ResponseRegion/ResponseRegionPage007' //用于设置窗口页面
  }

  //要测试的属性值，遍历生成case
  // this param is required.
  let testValues = [
    {
      //.width(120)
      //     .height(200)
      //({ x: 1.0, y: 1.0, width: 300, height: 300 })
      describe: 'print_text1', //组件下方不会有text显示
      setValue: { x: 350, y: 350},//280
    },
    {
      describe: 'print_text2', //组件下方出现text，位置显示具体点击位置
      setValue: { x: 350, y: 875},//700
    }
  ]

  function sleep(time) {
    return new Promise((resolve) => setTimeout(resolve, time))
  }

  //  create test suite
  describe("ResponseRegionTest007", () => {
    beforeAll(async function () {
      console.info('beforeAll in1');
    })
    //    create test cases by config.
    afterEach(async function (done) {
      if (Settings.windowClass == null) {
        return
      }

      Settings.windowClass.destroyWindow((err) => {
        if (err.code) {
          Logger.error('TEST', `Failed to destroy the window. Cause : ${JSON.stringify(err)}`)
          return;
        }
        Logger.info('TEST', `Succeeded in destroy the window.`);
      })
      await sleep(1000);
      done()
    })

    CommonTest.initTest_response(pageConfig, supportView, testValues)

  })
}

export function create() {
  throw new Error('Function not implemented.');
}