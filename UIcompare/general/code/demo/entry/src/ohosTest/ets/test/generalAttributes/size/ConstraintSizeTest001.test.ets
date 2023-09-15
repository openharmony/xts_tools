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

export default function ConstraintSizeTest001() {
//9*68=612
   //可去掉gridcol
  let supportView = [
    'AlphabetIndexer', 'Blank', 'Button', 'Checkbox', 'CheckboxGroup', 'DataPanel', 'DatePicker',
    'Divider', 'Gauge', 'Image', 'ImageAnimator','Marquee', 'Menu', 'MenuItem','MenuItemGroup',
    'NavRouter', 'Progress', 'QRCode', 'Radio', 'Rating', 'ScrollBar',
    'Search', 'Select', 'Slider', 'Text', 'TextArea',  'TextInput',
    'TextPicker', 'TextTimer', 'TimePicker', 'Toggle1', 'Toggle2','Toggle3','Badge', 'Column', 'ColumnSplit', 'Counter', 'Flex',
    'FlowItem', 'GridRow', 'Grid', 'List', 'ListItem', 'ListItemGroup', 'Navigator', 'Panel',
    'RelativeContainer','Row', 'RowSplit', 'Scroll', 'SideBarContainer', 'Stack', 'Swiper', 'Tabs',
    'TabContent', 'WaterFlow', 'Video', 'Circle', 'Ellipse', 'Line', 'Polyline', 'Polygon', 'Path', 'Rect', 'Shape',
    'Canvas','XComponent','Navigation',
  ]

  //页面配置信息
  // this param is required.
  let pageConfig = {
    testName: 'ConstraintSizeTest001', //截图命名的一部分
    pageUrl: 'TestAbility/pages/size/ConstraintSizePage001' //用于设置窗口页面
  }

  //要测试的属性值，遍历生成case
  // this param is required.
  let testValues =[
  {
    //高度一半
    describe: 'height_half',
    setValue: {minWidth:'50%',maxWidth: 400 ,minHeight:'50%'},
  },
    {
      //宽度一半
      describe: 'width_half',
      setValue: {minWidth: 200 ,maxWidth: '50%'},
    },

    {//最小宽度为负值，宽度350
      describe: 'minWidth_-300',
      setValue: {minWidth:'-300'},
    },
    {//宽度被限制范围
    describe: 'minWidth_100_maxWidth_200',
    setValue: {minWidth:100,maxWidth:200},
  },
    {//高度被限制范围
    describe: 'minHeight_100_maxHeight_200',
    setValue: {minHeight:100,maxHeight:200},
  },
    {//最小限制宽度400
    describe: 'minWidth_400_width_350',
    setValue: {minWidth: 400},
  },
    { //最大限制宽度200
    describe: 'maxWidth_200_width_350',
    setValue: {maxWidth:200},
  },
    { //最小限制高度400
    describe: 'minHeight_400_height_260',
    setValue: {minHeight:400},
  },
    {  //最大限制高度200
    describe: 'maxHeight_200_height_260',
    setValue: {maxHeight:200},
  }

  ]

  function sleep(time) {
    return new Promise((resolve) => setTimeout(resolve, time))
  }

  //  create test suite
  describe("ConstraintSizeTest001", () => {
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