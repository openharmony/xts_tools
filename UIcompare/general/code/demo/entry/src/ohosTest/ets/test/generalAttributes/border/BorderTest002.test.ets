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

export default function BorderTest002() {

  let supportView = [
    'AlphabetIndexer', 'Blank', 'Button', 'Checkbox', 'CheckboxGroup', 'DataPanel', 'DatePicker',
    'Divider', 'Gauge', 'Image', 'ImageAnimator','LoadingProgress','Marquee', 'Menu', 'MenuItem',
    'NavRouter', 'Progress', 'QRCode', 'Radio', 'Rating', 'ScrollBar',
    'Search', 'Select',  'Text', 'TextArea', 'TextClock', 'TextInput',
    'TextPicker', 'TextTimer', 'TimePicker', 'Toggle', 'Badge', 'Column', 'ColumnSplit', 'Counter', 'Flex',
    'FlowItem','GridCol', 'GridRow', 'Grid', 'List', 'ListItem', 'ListItemGroup', 'Navigator', 'Panel',
    'Refresh', 'RelativeContainer','Row', 'RowSplit', 'Scroll', 'SideBarContainer', 'Stack', 'Swiper', 'Tabs',
    'TabContent', 'WaterFlow', 'Video', 'Circle', 'Ellipse', 'Line', 'Polyline', 'Polygon', 'Path', 'Rect', 'Shape',
    'Canvas',
    'XComponent',
    // XComponent 通用属性不支持背景设置、透明度设置和图像效果

    'Slider',
  // Slider 支持除触摸热区以外的通用属性设置

  // 'Navigation'
  ]

  //页面配置信息
  // this param is required.
  let pageConfig = {
    testName: 'BorderTest002', //截图命名的一部分
    pageUrl: 'TestAbility/pages/border/BorderPage002' //用于设置窗口页面
  }

  //要测试的属性值，遍历生成case
  // this param is required.
  let testValues =[
    {
      describe: 'source_url',
      setValue:  {
        source: "TestAbility/pages/border/bg.jpg",
        slice: 5,
        width: 10,
        repeat: RepeatMode.Stretch,
        fill: false
      },
    },
    {
      describe: 'source_resource',
      setValue:  {
        source: $r('app.media.bg'),
        slice: 5,
        width: 10,
        repeat: RepeatMode.Stretch,
        fill: false
      },
    },
    {
      describe: 'source_linearGradient',
      setValue:  {
        source:{
          angle: 90,
          direction: GradientDirection.Left,
          colors: [[0xAEE1E1, 0.0], [0xD3E0DC, 0.3], [0xFCD1D1, 1.0]]
        },
        slice: { top: 10, bottom: 10, left: 10, right: 10 },
        width: { top: "80px", bottom: "80px", left: "80px", right: "80px" },
        repeat: RepeatMode.Repeat,
        fill: false
      },
    },
    {
      describe: 'slice_none',
      setValue:  {
        source: "TestAbility/pages/border/bg.jpg",
        width: 10,
        repeat: RepeatMode.Stretch,
        fill: false
      },
    },
    {
      describe: 'slice_20',
      setValue:  {
        source: "TestAbility/pages/border/bg.jpg",
        slice:20,
        width: 10,
        repeat: RepeatMode.Stretch,
        fill: false
      },
    },
    {
      describe: 'slice_0',
      setValue:  {
        source: "TestAbility/pages/border/bg.jpg",
        slice: 0,
        width: 10,
        repeat: RepeatMode.Stretch,
        fill: false
      },
    },
    {
      describe: 'slice_negative2',
      setValue:  {
        source: "TestAbility/pages/border/bg.jpg",
        slice: -2,
        width: 10,
        repeat: RepeatMode.Stretch,
        fill: false
      },
    },
    {
      describe: 'slice_20px',
      setValue:  {
        source: "TestAbility/pages/border/bg.jpg",
        slice: '20px',
        width: 10,
        repeat: RepeatMode.Stretch,
        fill: false
      },
    },
    {
      describe: 'slice_31percent',
      setValue:  {
        source: "TestAbility/pages/border/bg.jpg",
        slice: '31%',
        width: 10,
        repeat: RepeatMode.Stretch,
        fill: false
      },
    },
    {
      describe: 'slice_resource',
      setValue:  {
        source: "TestAbility/pages/border/bg.jpg",
        slice: $r('app.float.float_1'),
        width: 10,
        repeat: RepeatMode.Stretch,
        fill: false
      },
    },
    {
      describe: 'slice_TopAndRight',
      setValue:  {
        source: "TestAbility/pages/border/bg.jpg",
        slice: {top:"30%", bottom:"20px", left:"20%", right:20},
        width: '20px',
        repeat: RepeatMode.Stretch,
        fill: false
      },
    },
    {
      describe: 'width_none',
      setValue:  {
        source: "TestAbility/pages/border/bg.jpg",
        slice: 20,
        repeat: RepeatMode.Stretch,
        fill: false
      },
    },
    {
      describe: 'width_10',
      setValue:  {
        source: "TestAbility/pages/border/bg.jpg",
        slice: 20,
        width: 10,
        repeat: RepeatMode.Stretch,
        fill: false
      },
    },
    {
      describe: 'width_0',
      setValue:  {
        source: "TestAbility/pages/border/bg.jpg",
        slice: 20,
        width: 0,
        repeat: RepeatMode.Stretch,
        fill: false
      },
    },
    {
      describe: 'width_negative10',
      setValue:  {
        source: "TestAbility/pages/border/bg.jpg",
        slice: 20,
        width: -10,
        repeat: RepeatMode.Stretch,
        fill: false
      },
    },
    {
      describe: 'width_30px',
      setValue:  {
        source: "TestAbility/pages/border/bg.jpg",
        slice: '20%',
        width: '30px',
        repeat: RepeatMode.Stretch,
        fill: false
      },
    },
    {
      describe: 'width_10percent',
      setValue:  {
        source: "TestAbility/pages/border/bg.jpg",
        slice: 20,
        width: '10%',
        repeat: RepeatMode.Stretch,
        fill: false
      },
    },
    {
      describe: 'width_resource',
      setValue:  {
        source: "TestAbility/pages/border/bg.jpg",
        slice: 20,
        width: $r('app.float.float_1'),
        repeat: RepeatMode.Stretch,
        fill: false
      },
    },
    {
      describe: 'width_TopAndRight',
      setValue:  {
        source: "TestAbility/pages/border/bg.jpg",
        slice: 20,
        width: {top:"20px", bottom:"20", left:20, right:"10%"},
        repeat: RepeatMode.Stretch,
        fill: false
      },
    },
    {
      describe: 'outset_none',
      setValue:  {
        source: "TestAbility/pages/border/bg.jpg",
        slice: 20,
        width: 10,
        repeat: RepeatMode.Stretch,
        fill: false
      },
    },
    {
      describe: 'outset_10',
      setValue:  {
        source: "TestAbility/pages/border/bg.jpg",
        slice: 20,
        width: 10,
        outset: 10,
        repeat: RepeatMode.Stretch,
        fill: false
      },
    },
    {
      describe: 'outset_0',
      setValue:  {
        source: "TestAbility/pages/border/bg.jpg",
        slice: 20,
        width: 10,
        outset: 0,
        repeat: RepeatMode.Stretch,
        fill: false
      },
    },
    {
      describe: 'outset_negative10',
      setValue:  {
        source: "TestAbility/pages/border/bg.jpg",
        slice: 20,
        width: 10,
        outset: -10,
        repeat: RepeatMode.Stretch,
        fill: false
      },
    },
    {
      describe: 'outset_50px',
      setValue:  {
        source: "TestAbility/pages/border/bg.jpg",
        slice: 20,
        width: 10,
        outset: '50px',
        repeat: RepeatMode.Stretch,
        fill: false
      },
    },
    {
      describe: 'outset_5percent',
      setValue:  {
        source: "TestAbility/pages/border/bg.jpg",
        slice: 20,
        width: 10,
        outset: '5%',
        repeat: RepeatMode.Stretch,
        fill: false
      },
    },
    {
      describe: 'outset_resource',
      setValue:  {
        source: "TestAbility/pages/border/bg.jpg",
        slice: 20,
        width: 10,
        outset: $r('app.float.float_3'),
        repeat: RepeatMode.Stretch,
        fill: false
      },
    },
    {
      describe: 'outset_TopAndRight',
      setValue:  {
        source: "TestAbility/pages/border/bg.jpg",
        slice: 20,
        width: 10,
        outset: {top:"50px", bottom:"10", left: 10, right:"5%"},
        repeat: RepeatMode.Stretch,
        fill: false
      },
    },
  ]

  function sleep(time) {
    return new Promise((resolve) => setTimeout(resolve, time))
  }

  //  create test suite
  describe("BorderTest002", () => {
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

    CommonTest.initTest(pageConfig, supportView, testValues)

  })
}

export function create() {
  throw new Error('Function not implemented.');
}