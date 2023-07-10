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
import windowSnap from '../../model/snapShot'
import Logger from '../../model/Logger'
import { AttrsManager } from '../../model/AttrsManager';

//测试通用属性-clip
export default function ClipTest02() {

  //supportView包含了所有测试组件，根据当前通用数据所适用的组件进行修改,遍历生成case
  // this param is required.
  let supportView = [
    'AlphabetIndexer', 'Blank', 'Button', 'Checkbox', 'CheckboxGroup', 'DataPanel', 'DatePicker',
    'Divider', 'Gauge', 'Image', 'ImageAnimator','LoadingProgress','Marquee', 'Menu', 'MenuItem', 'Navigation',
    'NavRouter', 'Progress', 'QRCode', 'Radio', 'Rating', 'ScrollBar',
    'Search', 'Select', 'Slider', 'Text', 'TextArea', 'TextClock', 'TextInput',
    'TextPicker', 'TextTimer', 'TimePicker', 'Toggle', 'Badge', 'Column', 'ColumnSplit', 'Counter', 'Flex',
    'FlowItem','GridCol', 'GridRow', 'Grid', 'List', 'ListItem', 'ListItemGroup', 'Navigator', 'Panel',
    'Refresh', 'RelativeContainer','Row', 'RowSplit', 'Scroll', 'SideBarContainer', 'Stack', 'Swiper', 'Tabs',
    'TabContent', 'WaterFlow', 'Video', 'Circle', 'Ellipse', 'Line', 'Polyline', 'Polygon', 'Path', 'Rect', 'Shape',
    'Canvas','XComponent'
  ]

  //页面配置信息
  // this param is required.
  let pageConfig = {
    testName: 'ClipTest02', //截图命名的一部分
    pageUrl: 'TestAbility/pages/shapeCutting/clip002' //用于设置窗口页面
  }

  //要测试的属性值，遍历生成case
  // this param is required.
  let testValues = [
    {
      describe: 'SUB_ACE_TS_COMPONENT_004', //截图命名的一部分
      setValue: true, //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_005', //截图命名的一部分
      setValue: false, //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_006', //截图命名的一部分
      setValue: new Circle(), //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_007', //截图命名的一部分
      setValue: new Circle({width:"300px"}), //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_008', //截图命名的一部分
      setValue: new Circle({width:"280px",height:"280px"}), //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_009', //截图命名的一部分
      setValue: new Circle({width:"400px",height:"280px"}), //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_010', //截图命名的一部分
      setValue: new Ellipse(), //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_011', //截图命名的一部分
      setValue: new Ellipse({width:"300px"}), //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_012', //截图命名的一部分
      setValue: new Ellipse({width:"400px",height:"280px"}), //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_013', //截图命名的一部分
      setValue: new Path(), //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_014', //截图命名的一部分
      setValue: new Path({width:"400px"}), //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_015', //截图命名的一部分
      setValue: new Path({width:"400px",height:"280px"}), //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_016', //截图命名的一部分
      setValue: new Path({commands:"M100 0 L200 240 L0 240 Z"}), //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_017', //截图命名的一部分
      setValue: new Path({width:"400px",height:"280px",commands:"M100 0 L200 240 L0 240 Z"}), //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_018', //截图命名的一部分
      setValue: new Path({commands:"M100 0 L200 240 L0 240"}), //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_019', //截图命名的一部分
      setValue: new Rect(), //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_020', //截图命名的一部分
      setValue: new Rect({width:"400px"}), //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_021', //截图命名的一部分
      setValue: new Rect({radius:20}), //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_022', //截图命名的一部分
      setValue: new Rect({width:"400px",height:"280px"}), //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_023', //截图命名的一部分
      setValue: new Rect({width:"400px",height:"280px",radiusWidth:"50px",radiusHeight:"100px"}), //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_024', //截图命名的一部分
      setValue: new Rect({width:"400px",height:"280px",radius:20}), //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_025', //截图命名的一部分
      setValue: new Rect({width:"400px",height:"280px",radius:[[40,40],[20,20],[40,40],[20,20]]}), //要测试的属性值
    },
  ]

  function sleep(time) {
    return new Promise((resolve) => setTimeout(resolve, time))
  }

  //  create test suite
  describe('ClipTest02', function () {

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
