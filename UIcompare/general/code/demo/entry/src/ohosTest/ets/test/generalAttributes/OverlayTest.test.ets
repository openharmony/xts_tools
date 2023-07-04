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

//测试通用属性-Overlay
export default function OverlayText() {

  function sleep(time) {
    return new Promise((resolve) => setTimeout(resolve, time))
  }

  //  create test suite
  describe('OverlayText', function () {

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
    it('SUB_ACE_TS_OVERLAY_001',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/overlay/overlay001",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_OVERLAY_001'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_OVERLAY_002',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/overlay/overlay002",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_OVERLAY_002'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_OVERLAY_003',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/overlay/overlay003",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_OVERLAY_003'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_OVERLAY_004',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/overlay/overlay004",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_OVERLAY_004'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_OVERLAY_006',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/overlay/overlay006",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_OVERLAY_006'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_OVERLAY_007',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/overlay/overlay007",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_OVERLAY_007'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_OVERLAY_008',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/overlay/overlay008",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_OVERLAY_008'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_OVERLAY_009',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/overlay/overlay009",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_OVERLAY_009'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_OVERLAY_010',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/overlay/overlay010",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_OVERLAY_010'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_OVERLAY_011',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/overlay/overlay011",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_OVERLAY_011'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_OVERLAY_012',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/overlay/overlay012",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_OVERLAY_012'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_OVERLAY_013',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/overlay/overlay013",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_OVERLAY_013'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_OVERLAY_014',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/overlay/overlay014",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_OVERLAY_014'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_OVERLAY_015',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/overlay/overlay015",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_OVERLAY_015'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_OVERLAY_016',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/overlay/overlay016",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_OVERLAY_016'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_OVERLAY_017',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/overlay/overlay017",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_OVERLAY_017'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_OVERLAY_018',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/overlay/overlay018",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_OVERLAY_018'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })
  })
}

export function create() {
throw new Error('Function not implemented.');
}
