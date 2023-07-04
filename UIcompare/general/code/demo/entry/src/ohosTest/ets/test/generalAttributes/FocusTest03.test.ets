/**
 * Copyright (c) 2022 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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
import CommonTest from '../common/CommonTest';
import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect } from '@ohos/hypium';
import Settings from '../model/Settings'
import windowSnap from '../model/snapShot'
import Logger from '../model/Logger'
import { AttrsManager } from '../model/AttrsManager';
// @ts-ignore

//测试通用属性-focusable
export default function FocusTest03() {

  //supportView包含了所有测试组件，根据当前通用数据所适用的组件进行修改,遍历生成case
  // this param is required.
  let supportView = [
    'Blank','DataPanel','Divider','FormComponent','Gauge','LoadingProgress','Marquee','Navigation',
    'NavRouter','NavDestination','PatternLock','PluginComponent','Progress','QRCode','RemoteWindow',
    'RichText','ScrollBar','Span','TextClock','TextTimer','XComponent',
    'AbilityComponent','Badge','Refresh',
    'Circle','Ellipse','Line','Polyline','Polygon','Path','Rect','Shape',
    'Canvas'
  ]

  //页面配置信息
  // this param is required.
  let pageConfig = {
    testName: 'FocusTest03', //截图命名的一部分
    pageUrl: 'TestAbility/pages/focusable/FocusPage004' //用于设置窗口页面
  }

  //要测试的属性值，遍历生成case
  // this param is required.
  let testValues = [
    {
      describe: 'SUB_ACE_TS_COMPONENT_005', //截图命名的一部分
      setValue: true, //要测试的属性值
    }
  ]

  //  create test suite
  describe('FocusTest03', function () {

    beforeAll(async function () {
      console.info('beforeAll in1');
    })

    CommonTest.initTest(pageConfig, supportView, testValues)

  })
}

export function create() {
throw new Error('Function not implemented.');
}
