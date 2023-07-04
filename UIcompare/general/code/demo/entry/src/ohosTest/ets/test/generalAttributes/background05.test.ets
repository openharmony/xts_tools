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

//测试通用属性-zIndex
export default function Background05() {

  function sleep(time) {
    return new Promise((resolve) => setTimeout(resolve, time))
  }

  //  create test suite
  describe('Background05', function () {

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
    it('SUB_ACE_TS_COMPONENT_SR000HDEQK_032',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/background/background005",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_COMPONENT_SR000HDEQK_032'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    // create test cases by config.
    it('SUB_ACE_TS_COMPONENT_SR000HDEQK_033',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/background/background006",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_COMPONENT_SR000HDEQK_033'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    // create test cases by config.
    it('SUB_ACE_TS_COMPONENT_SR000HDEQK_047',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/background/background006",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_COMPONENT_SR000HDEQK_047'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_SR000HDEQK_084',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/background/background013",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_COMPONENT_SR000HDEQK_084'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_SR000HDEQK_106',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/background/linearGradient/linearGradient03",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_COMPONENT_SR000HDEQK_106'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_SR000HDEQK_107',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/background/linearGradient/linearGradient04",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_COMPONENT_SR000HDEQK_107'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_SR000HDEQK_108',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/background/linearGradient/linearGradient05",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_COMPONENT_SR000HDEQK_108'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_SR000HDEQK_109',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/background/linearGradient/linearGradient06",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_COMPONENT_SR000HDEQK_109'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_SR000HDEQK_110',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/background/linearGradient/linearGradient07",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_COMPONENT_SR000HDEQK_110'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_SR000HDEQK_111',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/background/linearGradient/linearGradient08",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_COMPONENT_SR000HDEQK_111'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_SR000HDEQK_114',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/background/sweepGradient/sweepGradient09",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_COMPONENT_SR000HDEQK_114'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_SR000HDEQK_115',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/background/sweepGradient/sweepGradient10",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_COMPONENT_SR000HDEQK_115'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_SR000HDEQK_116',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/background/sweepGradient/sweepGradient11",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_COMPONENT_SR000HDEQK_116'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_SR000HDEQK_117',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/background/sweepGradient/sweepGradient12",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_COMPONENT_SR000HDEQK_117'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_SR000HDEQK_118',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/background/sweepGradient/sweepGradient13",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_COMPONENT_SR000HDEQK_118'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_SR000HDEQK_119',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/background/sweepGradient/sweepGradient14",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_COMPONENT_SR000HDEQK_119'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_SR000HDEQK_120',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/background/sweepGradient/sweepGradient15",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_COMPONENT_SR000HDEQK_120'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_SR000HDEQK_121',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/background/sweepGradient/sweepGradient16",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_COMPONENT_SR000HDEQK_121'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_SR000HDEQK_122',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/background/sweepGradient/sweepGradient17",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_COMPONENT_SR000HDEQK_122'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_SR000HDEQK_123',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/background/sweepGradient/sweepGradient18",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_COMPONENT_SR000HDEQK_123'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_SR000HDEQK_124',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/background/sweepGradient/sweepGradient19",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_COMPONENT_SR000HDEQK_124'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_SR000HDEQK_125',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/background/sweepGradient/sweepGradient20",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_COMPONENT_SR000HDEQK_125'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_SR000HDEQK_126',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/background/sweepGradient/sweepGradient21",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_COMPONENT_SR000HDEQK_126'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_SR000HDEQK_127',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/background/sweepGradient/sweepGradient22",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_COMPONENT_SR000HDEQK_127'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_SR000HDEQK_128',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/background/sweepGradient/sweepGradient23",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_COMPONENT_SR000HDEQK_128'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_SR000HDEQK_129',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/background/sweepGradient/sweepGradient24",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_COMPONENT_SR000HDEQK_129'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_SR000HDEQK_130',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/background/sweepGradient/sweepGradient25",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_COMPONENT_SR000HDEQK_130'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_SR000HDEQK_131',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/background/sweepGradient/sweepGradient26",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_COMPONENT_SR000HDEQK_131'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_SR000HDEQK_132',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/background/sweepGradient/sweepGradient27",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_COMPONENT_SR000HDEQK_132'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_SR000HDEQK_133',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/background/sweepGradient/sweepGradient28",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_COMPONENT_SR000HDEQK_133'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_SR000HDEQK_134',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/background/sweepGradient/sweepGradient29",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_COMPONENT_SR000HDEQK_134'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_SR000HDEQK_135',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/background/sweepGradient/sweepGradient30",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_COMPONENT_SR000HDEQK_135'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_SR000HDEQK_136',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/background/sweepGradient/sweepGradient31",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_COMPONENT_SR000HDEQK_136'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_SR000HDEQK_137',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/background/sweepGradient/sweepGradient32",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_COMPONENT_SR000HDEQK_137'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_SR000HDEQK_138',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/background/sweepGradient/sweepGradient33",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_COMPONENT_SR000HDEQK_138'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_SR000HDEQK_139',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/background/sweepGradient/sweepGradient34",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_COMPONENT_SR000HDEQK_139'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_SR000HDEQK_141',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/background/radialGradient/radialGradient01",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_COMPONENT_SR000HDEQK_141'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_SR000HDEQK_142',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/background/radialGradient/radialGradient02",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_COMPONENT_SR000HDEQK_142'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_SR000HDEQK_143',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/background/radialGradient/radialGradient03",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_COMPONENT_SR000HDEQK_143'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_SR000HDEQK_144',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/background/radialGradient/radialGradient04",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_COMPONENT_SR000HDEQK_144'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_SR000HDEQK_145',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/background/radialGradient/radialGradient05",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_COMPONENT_SR000HDEQK_145'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_SR000HDEQK_146',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/background/radialGradient/radialGradient06",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_COMPONENT_SR000HDEQK_146'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_SR000HDEQK_147',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/background/radialGradient/radialGradient07",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_COMPONENT_SR000HDEQK_147'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_SR000HDEQK_148',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/background/radialGradient/radialGradient08",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_COMPONENT_SR000HDEQK_148'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_SR000HDEQK_149',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/background/radialGradient/radialGradient09",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_COMPONENT_SR000HDEQK_149'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_SR000HDEQK_150',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/background/radialGradient/radialGradient10",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_COMPONENT_SR000HDEQK_150'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_SR000HDEQK_151',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/background/radialGradient/radialGradient11",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_COMPONENT_SR000HDEQK_151'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_SR000HDEQK_152',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/background/radialGradient/radialGradient12",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_COMPONENT_SR000HDEQK_152'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_COMPONENT_SR000HDEQK_153',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/background/radialGradient/radialGradient13",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = 'SUB_ACE_TS_COMPONENT_SR000HDEQK_153'
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })
  })
}

export function create() {
throw new Error('Function not implemented.');
}
