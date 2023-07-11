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
import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect } from '@ohos/hypium';
import Settings from '../../model/Settings'
import windowSnap from '../../model/snapShot'
import Logger from '../../model/Logger'
import { AttrsManager } from '../../model/AttrsManager';
// @ts-ignore
import inputEventClient from '@ohos.multimodalInput.inputEventClient';
import {KeyCode} from '@ohos.multimodalInput.keyCode';

//测试通用属性-focusable
export default function FocusTest03() {
  
  //页面配置信息
  // this param is required.
  let pageConfig = {
    testName: 'FocusTest03', //截图命名的一部分
    pageUrl: 'TestAbility/pages/focusable/FocusPage001' //用于设置窗口页面
  }
  
  function sleep(time) {
    return new Promise((resolve) => setTimeout(resolve, time))
  }

  //  create test suite
  describe('FocusTest03', function () {

    let keyEvent = {
      isPressed: true,
      keyCode: KeyCode.KEYCODE_TAB,
      keyDownDuration: 0,
      isIntercepted: false
    }

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
    
    it('SUB_ACE_TS_COMPONENT_002',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/focusable/FocusPage002",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = "SUB_ACE_TS_COMPONENT_002"
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_007',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/focusable/FocusPage005",
      }
      // 如果需要改变_generalAttr 调用
      // let testValue = true
      Settings.createWindow(config.uri)
      await sleep(1000)
      let res1 = inputEventClient.injectEvent({KeyEvent: keyEvent});
      let picName1 = "SUB_ACE_TS_COMPONENT_00701"
      windowSnap.snapShot(globalThis.context, picName1)
      // await sleep(1000)  确认一下这里需不需要等待时间
      let res2 = inputEventClient.injectEvent({KeyEvent: keyEvent});
      let picName2 = "SUB_ACE_TS_COMPONENT_00702"
      windowSnap.snapShot(globalThis.context, picName2)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_008',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/focusable/FocusPage006",
      }
      // 如果需要改变_generalAttr 调用
      // let testValue = true
      // AttrsManager.change(caseTag, testValue);
      Settings.createWindow(config.uri)
      await sleep(1000)
      let res1 = inputEventClient.injectEvent({KeyEvent: keyEvent});
      let picName1 = "SUB_ACE_TS_COMPONENT_00801"
      windowSnap.snapShot(globalThis.context, picName1)
      let res2 = inputEventClient.injectEvent({KeyEvent: keyEvent});
      let picName2 = "SUB_ACE_TS_COMPONENT_00802"
      windowSnap.snapShot(globalThis.context, picName2)
      let res3 = inputEventClient.injectEvent({KeyEvent: keyEvent});
      let picName3 = "SUB_ACE_TS_COMPONENT_00803"
      windowSnap.snapShot(globalThis.context, picName3)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_009',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/focusable/FocusPage007",
      }
      // 如果需要改变_generalAttr 调用
      // let testValue = true
      // AttrsManager.change(caseTag, testValue);
      Settings.createWindow(config.uri)
      await sleep(1000)
      let res1 = inputEventClient.injectEvent({KeyEvent: keyEvent});
      let picName1 = "SUB_ACE_TS_COMPONENT_00901"
      windowSnap.snapShot(globalThis.context, picName1)
      let res2 = inputEventClient.injectEvent({KeyEvent: keyEvent});
      let picName2 = "SUB_ACE_TS_COMPONENT_00902"
      windowSnap.snapShot(globalThis.context, picName2)
      let res3 = inputEventClient.injectEvent({KeyEvent: keyEvent});
      let picName3 = "SUB_ACE_TS_COMPONENT_00903"
      windowSnap.snapShot(globalThis.context, picName3)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_010',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/focusable/FocusPage008",
      }
      // 如果需要改变_generalAttr 调用
      // let testValue = true
      // AttrsManager.change(caseTag, testValue);
      Settings.createWindow(config.uri)
      await sleep(1000)
      let res1 = inputEventClient.injectEvent({KeyEvent: keyEvent});
      let picName1 = "SUB_ACE_TS_COMPONENT_01001"
      await sleep(1000)
      windowSnap.snapShot(globalThis.context, picName1)
      let res2 = inputEventClient.injectEvent({KeyEvent: keyEvent});
      let picName2 = "SUB_ACE_TS_COMPONENT_01002"
      await sleep(1000)
      windowSnap.snapShot(globalThis.context, picName2)
      let res3 = inputEventClient.injectEvent({KeyEvent: keyEvent});
      let picName3 = "SUB_ACE_TS_COMPONENT_01003"
      await sleep(1000)
      windowSnap.snapShot(globalThis.context, picName3)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_012',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/focusable/FocusPage010",
      }
      // 如果需要改变_generalAttr 调用
      // let testValue = true
      // AttrsManager.change(caseTag, testValue);
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = "SUB_ACE_TS_COMPONENT_012"
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_013',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/focusable/FocusPage011",
      }
      // 如果需要改变_generalAttr 调用
      // let testValue = true
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = "SUB_ACE_TS_COMPONENT_013"
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_014',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/focusable/FocusPage012",
      }
      // 如果需要改变_generalAttr 调用
      // let testValue = true
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = "SUB_ACE_TS_COMPONENT_014"
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_015',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/focusable/FocusPage013",
      }
      // 如果需要改变_generalAttr 调用
      // let testValue = true
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = "SUB_ACE_TS_COMPONENT_015"
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_017',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/focusable/FocusPage014",
      }
      // 如果需要改变_generalAttr 调用
      // let testValue = true
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = "SUB_ACE_TS_COMPONENT_017"
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_018',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/focusable/FocusPage015",
      }
      // 如果需要改变_generalAttr 调用
      // let testValue = true
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = "SUB_ACE_TS_COMPONENT_018"
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_019',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/focusable/FocusPage015",
      }
      let testValues1 = [
        {
          describe: 'SUB_ACE_TS_COMPONENT_019', //截图命名的一部分
          setValue: true, //要测试的属性值
        }
      ]
      Settings.createWindow(config.uri)
      await sleep(1000)
      let caseTag1 = pageConfig.testName + "_" + "SUB_ACE_TS_COMPONENT_019"
      AttrsManager.change(caseTag1, testValues1);
      let picName = "SUB_ACE_TS_COMPONENT_019"
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_020',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/focusable/FocusPage016",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = "SUB_ACE_TS_COMPONENT_020"
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_022',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/focusable/FocusPage017",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = "SUB_ACE_TS_COMPONENT_022"
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_024',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/focusable/FocusPage018",
      }
      Settings.createWindow(config.uri)
      await sleep(2000)
      let res1 = inputEventClient.injectEvent({KeyEvent: keyEvent});
      sendEventByKey('RequestFocus',10,'');
      await sleep(1000)
      let picName1 = "SUB_ACE_TS_COMPONENT_02401"
      windowSnap.snapShot(globalThis.context, picName1)
      await sleep(1000)
      let res2 = inputEventClient.injectEvent({KeyEvent: keyEvent});
      sendEventByKey('RequestFocus',10,'');
      await sleep(1000)
      let picName2 = "SUB_ACE_TS_COMPONENT_02402"
      windowSnap.snapShot(globalThis.context, picName2)
      let res3 = inputEventClient.injectEvent({KeyEvent: keyEvent});
      sendEventByKey('RequestFocus',10,'');
      await sleep(1000)
      let picName3 = "SUB_ACE_TS_COMPONENT_02403"
      windowSnap.snapShot(globalThis.context, picName3)
      await sleep(2000)
      done();
    })

  })
}

export function create() {
throw new Error('Function not implemented.');
}
