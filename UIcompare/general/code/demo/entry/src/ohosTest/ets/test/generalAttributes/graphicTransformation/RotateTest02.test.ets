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
// @ts-ignore

//测试通用属性-Rotate
export default function RotateTest02() {

  //supportView包含了所有测试组件，根据当前通用数据所适用的组件进行修改,遍历生成case
  // this param is required.
  let supportView = [
    'AlphabetIndexer', 'Blank', 'Button', 'Checkbox', 'CheckboxGroup', 'DataPanel', 'DatePicker',
    'Divider', 'Gauge', 'Image', 'ImageAnimator','Marquee', 'Menu', 'MenuItem', 'Navigation',
    'NavRouter', 'Progress', 'QRCode', 'Radio', 'Rating', 'ScrollBar',
    'Search', 'Select', 'Slider', 'Text', 'TextArea', 'TextInput',
    'TextPicker', 'TextTimer', 'TimePicker', 'Toggle', 'Badge', 'Column', 'ColumnSplit', 'Counter', 'Flex',
    'FlowItem','GridCol', 'GridRow', 'Grid', 'List', 'ListItem', 'ListItemGroup', 'Navigator', 'Panel',
    'RelativeContainer','Row', 'RowSplit', 'Scroll', 'SideBarContainer', 'Stack', 'Swiper', 'Tabs',
    'TabContent', 'WaterFlow', 'Video', 'Circle', 'Ellipse', 'Line', 'Polyline', 'Polygon', 'Path', 'Rect', 'Shape',
    'Canvas','XComponent'
  ]

  //页面配置信息
  // this param is required.
  let pageConfig = {
    testName: 'RotateTest02', //截图命名的一部分
    pageUrl: 'TestAbility/pages/graphicTransformation/rotate002' //用于设置窗口页面
  }

  //要测试的属性值，遍历生成case
  // this param is required.
  let testValues = [
    {
      describe: 'SUB_ACE_TS_COMPONENT_003', //截图命名的一部分
      setValue: { x: 0, y: 0, z: 0, angle: 0, centerX: "50%", centerY: "50%"}, //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_007', //截图命名的一部分
      setValue: {angle: -90}, //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_008', //截图命名的一部分
      setValue: {angle: 90}, //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_011', //截图命名的一部分
      setValue: {x:1,y:1,z:0,angle:45}, //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_012', //截图命名的一部分
      setValue: {x:1,y:0,z:0,angle:45}, //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_013', //截图命名的一部分
      setValue: {x:0,y:1,z:0,angle:45}, //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_014', //截图命名的一部分
      setValue: {x:0,y:0,z:1,angle:45}, //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_015', //截图命名的一部分
      setValue: {angle:90,centerX:"0%",centerY:"0%"}, //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_016', //截图命名的一部分
      setValue: {angle:90,centerX:"20px"}, //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_018', //截图命名的一部分
      setValue: {angle:"dfsf"}, //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_019', //截图命名的一部分
      setValue: {angle:90,centerX:"dfd",centerY:"gj"}, //要测试的属性值
    }


  ]

  function sleep(time) {
    return new Promise((resolve) => setTimeout(resolve, time))
  }

  //  create test suite
  describe('RotateTest02', function () {

    beforeAll(async function () {
      console.info('beforeAll in1');
    })

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

    // create test cases by config.
    CommonTest.initTest(pageConfig, supportView, testValues)
  })
}

export function create() {
throw new Error('Function not implemented.');
}
