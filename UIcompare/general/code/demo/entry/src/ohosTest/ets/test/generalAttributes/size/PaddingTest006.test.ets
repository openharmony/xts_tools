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

export default function PaddingTest006() {
//12
  //测column\flex\list
  let supportView = [
    'Column2','Flex2','List2'

  ]

  //页面配置信息
  // this param is required.
  let pageConfig = {
    testName: 'PaddingTest006', //截图命名的一部分
    pageUrl: 'TestAbility/pages/size/PaddingPage005' //用于设置窗口页面
  }

  //要测试的属性值，遍历生成case
  // this param is required.
  let testValues =[
   {
    describe: 'right_60px',
    setValue: {right:'60px'},
  },{
    describe: 'right_0',
    setValue: {right:'0'},
  },{
    describe: 'right_-60',
    setValue: {right: -60},
  },{
    describe: 'bottom_60px',
    setValue: {bottom:'60px'},
  },{
    describe: 'bottom_0',
    setValue: {bottom:'0'},
  },{
    describe: 'bottom_-60',
    setValue: {bottom: -60},
  }
  ]

  function sleep(time) {
    return new Promise((resolve) => setTimeout(resolve, time))
  }

  //  create test suite
  describe("PaddingTest006", () => {
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