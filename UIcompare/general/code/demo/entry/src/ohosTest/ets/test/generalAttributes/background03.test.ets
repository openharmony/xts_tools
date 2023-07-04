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

//测试通用属性-fontColor
export default function Background03() {

  //supportView包含了所有测试组件，根据当前通用数据所适用的组件进行修改,遍历生成case
  // this param is required.
  let supportView = [
    'Row'
  ]

  //页面配置信息
  // this param is required.
  let pageConfig = {
    testName: 'background', //截图命名的一部分
    pageUrl: 'TestAbility/pages/background/background003' //用于设置窗口页面
  }

  //要测试的属性值，遍历生成case
  // this param is required.
  let testValues = [
    {
      describe: 'SUB_ACE_TS_COMPONENT_SR000HDEQK_023', //截图命名的一部分
      setValue: $r("app.media.icon"), //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_SR000HDEQK_024', //截图命名的一部分
      setValue: "pages/images/icon.png", //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_SR000HDEQK_025', //截图命名的一部分
      setValue: "pages/images/icon.svg", //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_SR000HDEQK_026', //截图命名的一部分
      setValue: "pages/images/icon.svg", //要测试的属性值
    },
  ]

  function sleep(time) {
    return new Promise((resolve) => setTimeout(resolve, time))
  }

  //  create test suite
  describe('Background03', function () {

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
    it('SUB_ACE_TS_COMPONENT_SR000HDEQK_023',0,async function (){
      CommonTest.initTest(pageConfig, supportView, testValues)
    })
  })
}

export function create() {
throw new Error('Function not implemented.');
}
