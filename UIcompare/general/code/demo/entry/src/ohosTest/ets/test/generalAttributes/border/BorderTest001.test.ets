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

export default function BorderTest001() {

  let supportView = [
    'AlphabetIndexer', 'Blank', 'Button', 'Checkbox', 'CheckboxGroup', 'DataPanel', 'DatePicker',
    'Divider', 'Gauge', 'Image', 'ImageAnimator','Marquee', 'Menu', 'MenuItem','MenuItemGroup','Navigation',
    'NavRouter', 'Progress', 'QRCode', 'Radio', 'Rating', 'ScrollBar',
    'Search', 'Select', 'Slider', 'Text', 'TextArea',  'TextInput',
    'TextPicker', 'TextTimer', 'TimePicker', 'Toggle1', 'Toggle2','Toggle3','Badge', 'Column', 'ColumnSplit', 'Counter', 'Flex',
    'FlowItem','GridCol', 'GridRow', 'Grid', 'List', 'ListItem', 'ListItemGroup', 'Navigator', 'Panel',
    'RelativeContainer','Row', 'RowSplit', 'Scroll', 'SideBarContainer', 'Stack', 'Swiper', 'Tabs',
    'TabContent', 'WaterFlow', 'Video', 'Circle', 'Ellipse', 'Line', 'Polyline', 'Polygon', 'Path', 'Rect', 'Shape',
    'Canvas','XComponent'
  ]

  //页面配置信息
  // this param is required.
  let pageConfig = {
    testName: 'BorderTest001', //截图命名的一部分
    pageUrl: 'TestAbility/pages/border/BorderPage001' //用于设置窗口页面
  }

  //要测试的属性值，遍历生成case
  // this param is required.
  let testValues =[
    {
      describe: 'width_none',
      setValue:  {
        color: 0xAFEEEE,
        radius: 0,
        style:BorderStyle.Solid
      },
    },
    {
      describe: 'width_10',
      setValue:  {
        width: 10,
        color: 0xAFEEEE,
        radius: 0,
        style:BorderStyle.Solid
      },
    },
    {
      describe: 'width_80',
      setValue:  {
        width: 80,
        color: 0xAFEEEE,
        radius: 0,
        style:BorderStyle.Solid
      },
    },
    {
      describe: 'EdgeWidth',
      setValue:  {
        width: { left: '5lpx', right: '10lpx', top: '20lpx', bottom: '30lpx' },
        color: 0xAFEEEE,
        radius: 0,
        style:BorderStyle.Solid
      },
    },
    {
      describe: 'width_negative10',
      setValue:  {
        width: -10,
        color: 0xAFEEEE,
        radius: 0,
        style:BorderStyle.Solid
      },
    },
    {
      describe: 'width_10px',
      setValue:  {
        width: '10px',
        color: 0xAFEEEE,
        radius: 0,
        style:BorderStyle.Solid
      },
    },
    {
      describe: 'width_negative10px',
      setValue:  {
        width: '-10px',
        color: 0xAFEEEE,
        radius: 0,
        style:BorderStyle.Solid
      },
    },
    {
      describe: 'width_20percent',
      setValue: {
        width: '20%',
        color: 0xAFEEEE,
        radius: 0,
        style: BorderStyle.Solid
      },
    },
    {
      describe: 'width_resource',
      setValue: {
        width: $r('app.float.border_width'),
        color: 0xAFEEEE,
        radius: 0,
        style:BorderStyle.Solid
      }
    },
    {
      describe: 'width_padding',
      setValue: {
        width: 600,
        color: 0xAFEEEE,
        radius: 0,
        style:BorderStyle.Solid
      }
    },
    {
      describe: 'color_none',
      setValue: {
        width: 10,
        radius: 0,
        style:BorderStyle.Solid
      }
    },
    {
      describe: 'color_resource',
      setValue:  {
        width: 10,
        radius: 0,
        color: $r('app.color.green'),
        style:BorderStyle.Solid
      },
    },
    {
      describe: 'EdgeColor',
      setValue:  {
        width: 10,
        radius: 0,
        color:  { left: '#e3bbbb', right: Color.Black, top: Color.Red, bottom: Color.Green },
        style: BorderStyle.Solid
      },
    },
    {
      describe: 'radius_none',
      setValue:  {
        width: 10,
        color: 0xAFEEEE,
        style: BorderStyle.Solid
      },
    },
    {
      describe: 'radius_10',
      setValue:  {
        width: 10,
        radius: 10,
        color: 0xAFEEEE,
        style: BorderStyle.Solid
      },
    },
    {
      describe: 'radius_BorderRadius',
      setValue:  {
        width: 10,
        color: 0xAFEEEE,
        radius: {topLeft:30,topRight:10,bottomLeft:70,bottomRight:0},
        style:BorderStyle.Solid
      },
    },
    {
      describe: 'radius_100',
      setValue:  {
        width: 10,
        color: 0xAFEEEE,
        radius: 100,
        style:BorderStyle.Solid
      },
    },
    {
      describe: 'radius_percent',
      setValue:  {
        width: 10,
        color: 0xAFEEEE,
        radius: '20%',
        style:BorderStyle.Solid
      },
    },
    {
      describe: 'radius_90px',
      setValue:  {
        width: 10,
        color: 0xAFEEEE,
        radius: '90px',
        style:BorderStyle.Solid
      },
    },
    {
      describe: 'style_none',
      setValue:  {
        width: 10,
        color: 0xAFEEEE,
        radius: 0
      },
    },
    {
      describe: 'style_dotted',
      setValue:  {
        width: 10,
        color: 0xAFEEEE,
        radius: 0,
        style:BorderStyle.Dotted
      },
    },
    {
      describe: 'style_dashed',
      setValue:  {
        width: 10,
        color: 0xAFEEEE,
        radius: 0,
        style:BorderStyle.Dashed
      },
    },
    {
      describe: 'style_solid',
      setValue:  {
        width: 10,
        color: 0xAFEEEE,
        radius: 0,
        style:BorderStyle.Solid
      },
    }

  ]

  function sleep(time) {
    return new Promise((resolve) => setTimeout(resolve, time))
  }

  //  create test suite
  describe("BorderTest001", () => {
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