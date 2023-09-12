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

export default function AlignRulesTest() {
//69*18=1242
  //可去blank,FlowItem, 'ListItem', 'ListItemGroup',gridcol,tabcontent
  let supportView = [
    'AlphabetIndexer',  'Button', 'Checkbox', 'CheckboxGroup', 'DataPanel', 'DatePicker',
    'Divider', 'Gauge', 'Image', 'ImageAnimator','Marquee', 'Menu', 'MenuItem','MenuItemGroup',
    'NavRouter', 'Progress', 'QRCode', 'Radio', 'Rating', 'ScrollBar',
    'Search', 'Select', 'Slider', 'Text', 'TextArea',  'TextInput',
    'TextPicker', 'TextTimer', 'TimePicker', 'Toggle1', 'Toggle2','Toggle3','Badge', 'Column', 'ColumnSplit', 'Counter', 'Flex',
     'GridRow', 'Grid', 'List', 'Navigator', 'Panel',
    'RelativeContainer','Row', 'RowSplit', 'Scroll', 'SideBarContainer', 'Stack', 'Swiper', 'Tabs',
     'WaterFlow', 'Video', 'Circle', 'Ellipse', 'Line', 'Polyline', 'Polygon', 'Path', 'Rect', 'Shape',
    'Canvas','XComponent','Navigation',
  ]

  //页面配置信息
  // this param is required.
  let pageConfig = {
    testName: 'AlignRulesTest', //截图命名的一部分
    pageUrl: "TestAbility/pages/loc/AlignRulesPage001" //用于设置窗口页面
  }

  //要测试的属性值，遍历生成case
  // this param is required.
  let testValues = [
    {
    describe: 'left_HorizontalAlign_Start',
    setValue: {
      left: {anchor: "__container__", align: HorizontalAlign.Start},
    },
  },  {
    describe: 'left_HorizontalAlign_Center',
    setValue: {
      left: {anchor: "__container__", align: HorizontalAlign.Center},
    },
  }, {
    describe: 'left_HorizontalAlign_End',
    setValue: {
      left: {anchor: "__container__", align: HorizontalAlign.End},
    },
  }, {
    describe: 'right_HorizontalAlign_Start',
    setValue: {
      right: {anchor: "__container__", align: HorizontalAlign.Start},
    },
  },{
    describe: 'right_HorizontalAlign_Center',
    setValue: {
      right: {anchor: "__container__", align: HorizontalAlign.Center},
    },
  },{
    describe: 'right_HorizontalAlign_End',
    setValue: {
      right: {anchor: "__container__", align: HorizontalAlign.End},
    },
  }, {
    describe: 'middle_HorizontalAlign_Start',
    setValue: {
      middle: {anchor: "__container__", align: HorizontalAlign.Start},
    },
  },{
    describe: 'middle_HorizontalAlign_Center',
    setValue: {
      middle: {anchor: "__container__", align: HorizontalAlign.Center},
    },
  },{
    describe: 'middle_HorizontalAlign_End',
    setValue: {
      middle: {anchor: "__container__", align: HorizontalAlign.End},
    },
  },{
    describe: 'top_VerticalAlign_Top',
    setValue: {
      top: {anchor: "__container__", align: VerticalAlign.Top},
    },
  },{
    describe: 'top_VerticalAlign_Center',
    setValue: {
      top: {anchor: "__container__", align: VerticalAlign.Center},
    },
  },{
    describe: 'top_VerticalAlign_Bottom',
    setValue: {
      top: {anchor: "__container__", align: VerticalAlign.Bottom},
    },
  },
  {
    describe: 'bottom_VerticalAlign_Top',
    setValue: {
      bottom: {anchor: "__container__", align: VerticalAlign.Top},
    },
  },
  {
    describe: 'bottom_VerticalAlign_Center',
    setValue: {
      bottom: {anchor: "__container__", align: VerticalAlign.Center},
    },
  },
    {
    describe: 'bottom_VerticalAlign_Bottom',
    setValue: {
      bottom: {anchor: "__container__", align: VerticalAlign.Bottom},
    },
  },
  {
    describe: 'center_VerticalAlign_Top',
    setValue: {
      center: {anchor: "__container__", align: VerticalAlign.Top},
    },
  }, {
    describe: 'center_VerticalAlign_Center',
    setValue: {
      center: {anchor: "__container__", align: VerticalAlign.Center},
    },
  }, {
    describe: 'center_VerticalAlign_Bottom',
    setValue: {
      center: {anchor: "__container__", align: VerticalAlign.Bottom},
    },
  }
  ]

  function sleep(time) {
    return new Promise((resolve) => setTimeout(resolve, time))
  }

  //  create test suite
  describe("AlignRulesTest", () => {
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