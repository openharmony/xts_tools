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

//测试通用属性-scale
export default function MaskTest01() {

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
    testName: 'MaskTest01', //截图命名的一部分
    pageUrl: 'TestAbility/pages/shapeCutting/mask001' //用于设置窗口页面
  }

  //要测试的属性值，遍历生成case
  // this param is required.
  let testValues = [
    {
      describe: 'SUB_ACE_TS_COMPONENT_028', //截图命名的一部分
      setValue: new Circle({width:"400px",height:"280px"}), //要测试的属性值
    },
    // {
    //   describe: 'SUB_ACE_TS_COMPONENT_029', //截图命名的一部分
    //   setValue: new Circle({width:"400px",height:"280px"}).fill(), //要测试的属性值
    // },
    {
      describe: 'SUB_ACE_TS_COMPONENT_030', //截图命名的一部分
      setValue: new Circle(), //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_031', //截图命名的一部分
      setValue: new Circle({width:"300px"}), //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_032', //截图命名的一部分
      setValue: new Circle({width:"280px",height:"280px"}), //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_033', //截图命名的一部分
      setValue: new Circle({width:"400px",height:"280px"}), //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_034', //截图命名的一部分
      setValue: new Ellipse({width:"300px"}), //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_035', //截图命名的一部分
      setValue: new Ellipse({width:"400px",height:"280px"}), //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_036', //截图命名的一部分
      setValue: new Ellipse({width:"400px"}), //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_037', //截图命名的一部分
      setValue: new Ellipse({width:"400px",height:"280px"}), //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_038', //截图命名的一部分
      // @ts-ignore
      setValue: new Ellipse({commands:"M100 0 L200 240 L0 240 Z"}), //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_039', //截图命名的一部分
      // @ts-ignore
      setValue: new Ellipse({width:"400px",height:"280px",commands:"M100 0 L200 240 L0 240 Z"}), //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_040', //截图命名的一部分
      // @ts-ignore
      setValue: new Ellipse({commands:"M100 0 L200 240 L0 240"}), //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_041', //截图命名的一部分
      setValue: new Rect({width:"400px"}), //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_042', //截图命名的一部分
      setValue: new Rect({radius:20}), //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_043', //截图命名的一部分
      setValue: new Rect({width:"400px",height:"280px"}), //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_044', //截图命名的一部分
      // @ts-ignore
      setValue: new Rect({width:"400px",height:"280px",radiusWidth:"50px",rafiudHeight:"100px"}), //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_045', //截图命名的一部分
      setValue: new Rect({width:"400px",height:"280px",radius:20}), //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_046', //截图命名的一部分
      setValue: new Rect({width:"400px",height:"280px",radius:[[40,40],[20,20],[40,40],[20,20]]}), //要测试的属性值
    },

  ]

  function sleep(time) {
    return new Promise((resolve) => setTimeout(resolve, time))
  }

  //  create test suite
  describe('MaskTest01', function () {

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
