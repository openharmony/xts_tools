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
import Utils from '../../model/Utils'
import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect } from '@ohos/hypium';
import Settings from '../../model/Settings'
import windowSnap from '../../model/snapShot'
import Logger from '../../model/Logger'
import { AttrsManager } from '../../model/AttrsManager';
import {
  UiComponent,
  UiDriver,
  Component,
  Driver,
  UiWindow,
  ON,
  BY,
  MatchPattern,
  DisplayRotation,
  ResizeDirection,
  WindowMode,
  PointerMatrix
} from '@ohos.UiTest';

export default function BorderTest003() {
//8*69=552
  let supportView = [
    'AlphabetIndexer', 'Blank', 'Button', 'Checkbox', 'CheckboxGroup', 'DataPanel', 'DatePicker',
    'Divider', 'Gauge', 'Image', 'ImageAnimator','Marquee', 'Menu', 'MenuItem','MenuItemGroup',
    'NavRouter', 'Progress', 'QRCode', 'Radio', 'Rating', 'ScrollBar',
    'Search', 'Select', 'Slider', 'Text', 'TextArea',  'TextInput',
    'TextPicker', 'TextTimer', 'TimePicker', 'Toggle1', 'Toggle2','Toggle3','Badge', 'Column', 'ColumnSplit', 'Counter', 'Flex',
    'FlowItem','GridCol', 'GridRow', 'Grid', 'List', 'ListItem', 'ListItemGroup', 'Navigator', 'Panel',
    'RelativeContainer','Row', 'RowSplit', 'Scroll', 'SideBarContainer', 'Stack', 'Swiper', 'Tabs',
    'TabContent', 'WaterFlow', 'Video', 'Circle', 'Ellipse', 'Line', 'Polyline', 'Polygon', 'Path', 'Rect', 'Shape',
    'Canvas','XComponent','Navigation',
  ]

  //页面配置信息
  // this param is required.
  let pageConfig = {
    testName: 'BorderTest003', //截图命名的一部分
    pageUrl: 'TestAbility/pages/border/BorderPage003' //用于设置窗口页面
  }

  //要测试的属性值，遍历生成case
  // this param is required.
  let testValues =[
    {
      describe: 'repeat_repeat',
      setValue:  {
        source: $r('app.media.img_1'),
        slice: {top:"50%", bottom:"10%", left:"10%", right:"40%"},
        width: {top:"80px", bottom:"80px", left:"80px", right:"80px"},
        repeat: RepeatMode.Repeat,
        fill: false
      }
    },
    {
      describe: 'repeat_stretch',
      setValue:  {
        source: $r('app.media.img_1'),
        slice: {top:"50%", bottom:"10%", left:"10%", right:"40%"},
        width: {top:"80px", bottom:"80px", left:"80px", right:"80px"},
        repeat: RepeatMode.Stretch,
        fill: false
      },
    },
    {
      describe: 'repeat_round',
      setValue:  {
        source: $r('app.media.img_1'),
        slice: {top:"50%", bottom:"10%", left:"10%", right:"40%"},
        width: {top:"80px", bottom:"80px", left:"80px", right:"80px"},
        repeat: RepeatMode.Round,
        fill: false
      },
    },
    {
      describe: 'repeat_space',
      setValue:  {
        source: $r('app.media.img_1'),
        slice: {top:"50%", bottom:"10%", left:"10%", right:"40%"},
        width: {top:"80px", bottom:"80px", left:"80px", right:"80px"},
        repeat: RepeatMode.Space,
        fill: false
      },
    },
    {
      describe: 'repeat_none',
      setValue:  {
        source: $r('app.media.img_1'),
        slice: {top:"50%", bottom:"10%", left:"10%", right:"40%"},
        width: {top:"80px", bottom:"80px", left:"80px", right:"80px"},
        // repeat: RepeatMode.Repeat,
        fill: false
      },
    },
    {
      describe: 'fill_true',
      setValue:  {
        source: "TestAbility/pages/border/bg.jpg",
        slice: {top:"30%", bottom:"20px", left:"20%", right:20},
        width: {top:"20px", bottom:"20px", left:"20px", right:"20px"},
        repeat: RepeatMode.Stretch,
        fill: true
      },
    },
    {
      describe: 'fill_false',
      setValue:  {
        source: "TestAbility/pages/border/bg.jpg",
        slice: {top:"30%", bottom:"20px", left:"20%", right:20},
        width: {top:"20px", bottom:"20px", left:"20px", right:"20px"},
        repeat: RepeatMode.Stretch,
        fill: false
      },
    },
    {
      describe: 'fill_none',
      setValue:  {
        source: "TestAbility/pages/border/bg.jpg",
        slice: {top:"30%", bottom:"20px", left:"20%", right:20},
        width: {top:"20px", bottom:"20px", left:"20px", right:"20px"},
        repeat: RepeatMode.Stretch,
        // fill: false
      },
    },

  ]

  function sleep(time) {
    return new Promise((resolve) => setTimeout(resolve, time))
  }

  //  create test suite
  describe("BorderTest003", () => {
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

    CommonTest.initTest1(pageConfig, supportView, testValues)

  })
}

export function create() {
  throw new Error('Function not implemented.');
}