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
import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect } from '@ohos/hypium';
import Settings from '../model/Settings'
import windowSnap from '../model/snapShot'
import Logger from '../model/Logger'
import {KeyCode} from '@ohos.multimodalInput.keyCode';

//测试通用属性-matrix
export default function MatrixTest() {

  //页面配置信息
  // this param is required.
  let pageConfig = {
    testName: 'FocusTest', //截图命名的一部分
    pageUrl: 'TestAbility/pages/matrix/matrix001' //用于设置窗口页面
  }

  //要测试的属性值，遍历生成case
  // this param is required.
  let testValues = [
    {
      describe: 'FocusTest', //截图命名的一部分
      setValue: 151, //要测试的属性值
    }
  ]

  function sleep(time) {
    return new Promise((resolve) => setTimeout(resolve, time))
  }

  //  create test suite
  describe('MatrixTest', function () {

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

    // create test cases by config.
    it('SUB_ACE_TS_MATRIX4TRANSIT_001',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/matrix/matrix001",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      sendEventByKey('Matrix001',10,'');
      await sleep(1000)
      let picName = 'SUB_ACE_TS_MATRIX4TRANSIT_001'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_MATRIX4TRANSIT_002',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/matrix/matrix002",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      sendEventByKey('Matrix002',10,'');
      await sleep(1000)
      let picName = 'SUB_ACE_TS_MATRIX4TRANSIT_002'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_MATRIX4TRANSIT_003',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/matrix/matrix003",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_MATRIX4TRANSIT_003'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_MATRIX4TRANSIT_004',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/matrix/matrix004",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      sendEventByKey('Matrix004',10,'');
      await sleep(1000)
      let picName = 'SUB_ACE_TS_MATRIX4TRANSIT_004'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_MATRIX4TRANSIT_005',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/matrix/matrix005",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_MATRIX4TRANSIT_005'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_MATRIX4TRANSIT_006',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/matrix/matrix006",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      sendEventByKey('Matrix006',10,'');
      await sleep(1000)
      let picName = 'SUB_ACE_TS_MATRIX4TRANSIT_006'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_MATRIX4TRANSIT_007',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/matrix/matrix007",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      sendEventByKey('Matrix007',10,'');
      await sleep(1000)
      let picName = 'SUB_ACE_TS_MATRIX4TRANSIT_007'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_MATRIX4TRANSIT_008',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/matrix/matrix008",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      sendEventByKey('Matrix008',10,'');
      await sleep(1000)
      let picName = 'SUB_ACE_TS_MATRIX4TRANSIT_008'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_MATRIX4TRANSIT_009',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/matrix/matrix009",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      sendEventByKey('Matrix009',10,'');
      await sleep(1000)
      let picName = 'SUB_ACE_TS_MATRIX4TRANSIT_009'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_MATRIX4TRANSIT_010',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/matrix/matrix010",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      sendEventByKey('Matrix010',10,'');
      await sleep(1000)
      let picName = 'SUB_ACE_TS_MATRIX4TRANSIT_010'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_MATRIX4TRANSIT_011',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/matrix/matrix011",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      sendEventByKey('Matrix011',10,'');
      await sleep(1000)
      let picName = 'SUB_ACE_TS_MATRIX4TRANSIT_011'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_MATRIX4TRANSIT_012',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/matrix/matrix012",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      sendEventByKey('matrix012',10,'');
      await sleep(1000)
      let picName = 'SUB_ACE_TS_MATRIX4TRANSIT_012'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_MATRIX4TRANSIT_013',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/matrix/matrix013",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      sendEventByKey('matrix013',10,'');
      await sleep(1000)
      let picName = 'SUB_ACE_TS_MATRIX4TRANSIT_013'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_MATRIX4TRANSIT_014',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/matrix/matrix014",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      sendEventByKey('matrix014',10,'');
      await sleep(1000)
      let picName = 'SUB_ACE_TS_MATRIX4TRANSIT_014'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_MATRIX4TRANSIT_015',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/matrix/matrix015",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      sendEventByKey('matrix015',10,'');
      await sleep(1000)
      let picName = 'SUB_ACE_TS_MATRIX4TRANSIT_015'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_MATRIX4TRANSIT_016',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/matrix/matrix016",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      sendEventByKey('matrix016',10,'');
      await sleep(1000)
      let picName = 'SUB_ACE_TS_MATRIX4TRANSIT_016'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })


  })
}

export function create() {
throw new Error('Function not implemented.');
}
