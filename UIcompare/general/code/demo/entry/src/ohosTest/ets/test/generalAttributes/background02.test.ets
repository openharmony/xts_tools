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
export default function Background02() {

  //supportView包含了所有测试组件，根据当前通用数据所适用的组件进行修改,遍历生成case
  // this param is required.
  let supportView = [
    'Row'
  ]

  //页面配置信息
  // this param is required.
  let pageConfig = {
    testName: 'background', //截图命名的一部分
    pageUrl: 'TestAbility/pages/background/background002' //用于设置窗口页面
  }

  //要测试的属性值，遍历生成case
  // this param is required.
  let testValues = [
    {
      describe: 'SUB_ACE_TS_COMPONENT_SR000HDEQK_003', //截图命名的一部分
      setValue: Color.Black, //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_SR000HDEQK_004', //截图命名的一部分
      setValue: Color.Blue, //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_SR000HDEQK_005', //截图命名的一部分
      setValue: Color.Brown, //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_SR000HDEQK_006', //截图命名的一部分
      setValue: Color.Gray, //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_SR000HDEQK_007', //截图命名的一部分
      setValue: Color.Grey, //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_SR000HDEQK_008', //截图命名的一部分
      setValue: Color.Green, //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_SR000HDEQK_009', //截图命名的一部分
      setValue: Color.Orange, //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_SR000HDEQK_010', //截图命名的一部分
      setValue: Color.Pink, //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_SR000HDEQK_011', //截图命名的一部分
      setValue: Color.Red, //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_SR000HDEQK_012', //截图命名的一部分
      setValue: Color.White, //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_SR000HDEQK_013', //截图命名的一部分
      setValue: Color.Yellow, //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_SR000HDEQK_014', //截图命名的一部分
      setValue: Color.Transparent, //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_SR000HDEQK_015', //截图命名的一部分
      setValue: 0x0000ff, //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_SR000HDEQK_016', //截图命名的一部分
      setValue: 'rgb(0,0,255)', //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_SR000HDEQK_017', //截图命名的一部分
      setValue: 'rgba(0,0,255,1.000)', //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_SR000HDEQK_018', //截图命名的一部分
      setValue: $r("app.color.blue"), //要测试的属性值
    },
    // {
    //   describe: 'SUB_ACE_TS_COMPONENT_SR000HDEQK_019', //截图命名的一部分
    //   setValue: Color.ddd, //要测试的属性值
    // },
    {
      describe: 'SUB_ACE_TS_COMPONENT_SR000HDEQK_020', //截图命名的一部分
      setValue: "dsfsdfsf", //要测试的属性值
    },
    {
      describe: 'SUB_ACE_TS_COMPONENT_SR000HDEQK_021', //截图命名的一部分
      setValue: $r("app.string.module_desc"), //要测试的属性值
    },
  ]

  function sleep(time) {
    return new Promise((resolve) => setTimeout(resolve, time))
  }

  //  create test suite
  describe('Background02', function () {

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
    CommonTest.initTest(pageConfig, supportView, testValues)

  })
}

export function create() {
throw new Error('Function not implemented.');
}
