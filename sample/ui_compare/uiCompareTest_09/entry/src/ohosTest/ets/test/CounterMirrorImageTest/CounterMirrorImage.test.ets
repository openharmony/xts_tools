/**
 * Copyright (c) 2025 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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

import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect, Level } from '@ohos/hypium'
import Settings from '../model/Settings'
import windowSnap from '../model/snapShot'
import Logger from '../model/Logger'
import Utils from '../model/Utils'
import { Driver, ON, Component } from '@kit.TestKit';

export default function CounterMirrorImage() {

  describe('CounterMirrorImage', () => {
    afterEach(async (done: Function) => {
      if (Settings.windowClass == undefined) {
        return
      }

      Settings.windowClass.destroyWindow((err) => {
        if (err.code) {
          Logger.error('TEST', `Failed to destroy the window. Cause : ${JSON.stringify(err)}`)
          return;
        }
        Logger.info('TEST', `Succeeded in destroy the window.`);
      })
      await Utils.sleep(1000);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_ARKUI_COUNTER-MIRROR-IMAGE_0030
     * @tc.name   : SUB_ACE_UI_ARKUI_COUNTER-MIRROR-IMAGE_0030
     * @tc.desc   : Counter is placed on the mirror page in Chinese mode, and the direction is set to LTR
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 1
     */
    it('SUB_ACE_UI_ARKUI_COUNTER_MIRROR_IMAGE_0030', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ARKUI_COUNTER_MIRROR_IMAGE_0030 start.`);
      Settings.createWindow("testability/pages/CounterMirrorImage/CounterMirrorImage30")
      let driver:Driver = Driver.create();
      // 通过ID定位（推荐）
      let component = await driver.waitForComponent(ON.id('Counter_01'), 1000);  // 显式等待组件出现[6](@ref)
      await component.click();
      let button_1 = await driver.waitForComponent(ON.id('Button_01'),1000);
      await button_1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.screenShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_ARKUI_COUNTER_MIRROR_IMAGE_0030 finish.`);
      done();
    })

  })
}
