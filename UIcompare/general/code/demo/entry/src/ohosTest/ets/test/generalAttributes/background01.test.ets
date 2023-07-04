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

//测试通用属性-ResourceColor
export default function Background01() {

  function sleep(time) {
    return new Promise((resolve) => setTimeout(resolve, time))
  }

  //  create test suite
  describe('Background01', function () {

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
    it('SUB_ACE_TS_COMPONENT_SR000HDEQK_002',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/background/background001",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = "SUB_ACE_TS_COMPONENT_SR000HDEQK_002"
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })
  })
}

export function create() {
throw new Error('Function not implemented.');
}
