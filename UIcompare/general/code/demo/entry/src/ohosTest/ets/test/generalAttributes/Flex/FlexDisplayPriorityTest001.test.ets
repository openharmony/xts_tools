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

export default function FlexDisplayPriority001() {
//69*2=138
  let supportView = [
    'AlphabetIndexer', 'Blank', 'Button', 'Checkbox', 'CheckboxGroup', 'DataPanel', 'DatePicker',
    'Divider', 'Gauge', 'Image', 'ImageAnimator','Marquee', 'Menu', 'MenuItem','MenuItemGroup',
    'Progress', 'QRCode', 'Radio', 'Rating', 'ScrollBar',
    'Search', 'Select', 'Slider', 'Text', 'TextArea',
    'TextInput','TextPicker', 'TextTimer', 'TimePicker', 'Badge', 'Column', 'ColumnSplit', 'Counter', 'Flex',
    'GridRow', 'Grid', 'List', 'Navigator', 'Panel',
    'RelativeContainer','Row', 'RowSplit', 'Scroll', 'SideBarContainer', 'Stack', 'Swiper', 'Tabs',
    'WaterFlow', 'Video', 'Circle', 'Ellipse', 'Line', 'Polyline', 'Polygon', 'Path', 'Rect', 'Shape',
    'Canvas','XComponent','Toggle1', 'Toggle2','Toggle3','NavRouter','Navigation'
  ]

  //页面配置信息
  // this param is required.
  let pageConfig = {
    testName: 'FlexDisplayPriority001', //截图命名的一部分
    pageUrl: 'TestAbility/pages/flex/FlexDisplayPriorityPage001' //用于设置窗口页面
  }

  //要测试的属性值，遍历生成case
  // this param is required.
  let testValues =[
    {
      describe: '1_2_3_4',
      setValue:  [1, 2, 3, 4]
    },
    {
      describe: '1_0.5',
      setValue:  [1, 0.5, 0.5, 1]
    },
  ]

  function sleep(time) {
    return new Promise((resolve) => setTimeout(resolve, time))
  }

  //  create test suite
  describe("FlexDisplayPriority001", () => {
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