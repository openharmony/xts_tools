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

export default function ShadowTest001() {

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
    // 'XComponent',
    // XComponent 通用属性不支持背景设置、透明度设置和图像效果

    'Slider',
  // Slider 支持除触摸热区以外的通用属性设置

  // 'Navigation'
  ]

  //页面配置信息
  // this param is required.
  let pageConfig = {
    testName: 'ShadowTest001', //截图命名的一部分
    pageUrl: 'TestAbility/pages/ImageEffect/ShadowPage001' //用于设置窗口页面
  }

  //要测试的属性值，遍历生成case
  // this param is required.
  let testValues =[
    {
      describe: 'radius_negative10',
      setValue:  { radius: -10, color: Color.Green, offsetX: 20, offsetY: 30 },
    },
    {
      describe: 'radius_0',
      setValue:  { radius: 0, color: Color.Green, offsetX: 20, offsetY: 30 },
    },
    {
      describe: 'radius_10',
      setValue:  { radius: 10, color: Color.Green, offsetX: 20, offsetY: 30 },
    },
    {
      describe: 'radius_resource',
      setValue:  { radius: $r("app.float.font_1"), color: Color.Green, offsetX: 20, offsetY: 30 },
    },
    {
      describe: 'color_black',
      setValue:  { radius: 10, color: Color.Black, offsetX: 20, offsetY: 30 },
    },
    {
      describe: 'color_0x0000FF',
      setValue:  { radius: 10, color:  0x0000FF, offsetX: 20, offsetY: 30 },
    },
    {
      describe: 'color_rgb(0,255,0)',
      setValue:  { radius: 10, color: 'rgb(0,255,0)', offsetX: 20, offsetY: 30 },
    },
    {
      describe: 'color_resource',
      setValue:  { radius: 10, color: $r("app.color.pink"), offsetX: 20, offsetY: 30 },
    },
    {
      describe: 'offsetX_negative50',
      setValue:  { radius: 10, color: Color.Pink, offsetX: -50, offsetY: 50 },
    },
    {
      describe: 'offsetXY_50',
      setValue:  { radius: 10, color: Color.Pink, offsetX: 50, offsetY: 50 },
    },
    {
      describe: 'offsetXY_resource',
      setValue:  { radius: 10, color: Color.Pink, offsetX: $r('app.float.float_2'), offsetY: $r('app.float.float_2') },
    },
    {
      describe: 'offsetY_negative50',
      setValue:  { radius: 10, color: Color.Pink, offsetX: 50, offsetY: -50 },
    },

  ]

  function sleep(time) {
    return new Promise((resolve) => setTimeout(resolve, time))
  }

  //  create test suite
  describe("ShadowTest001", () => {
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