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

export default function ComponentNavModifier() {

  describe('ComponentNavModifier', () => {
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
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0070
     * @tc.name   : navigation组件hideBackButton设置为true
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 1
     */
    it('SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0070', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0070 start.`);
      Settings.createWindow("testability/pages/ComponentNavModifier/ComponentNavModifier0070")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(1000,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0070 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0090
     * @tc.name   : navigation组件hideTitleBar设置为true
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 1
     */
    it('SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0090', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0090 start.`);
      Settings.createWindow("testability/pages/ComponentNavModifier/ComponentNavModifier0090")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(1000,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0090 finish.`);
      done()
    })

    /*
 * @tc.number : SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0120
 * @tc.name   : navigation组件hideToolBar设置为false
 * @tc.type   : Function
 * @tc.size   : MediumTest
 * @tc.level  : 1
 */
    it('SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0120', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0120 start.`);
      Settings.createWindow("testability/pages/ComponentNavModifier/ComponentNavModifier0120")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(1000,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0120 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0230
     * @tc.name   : navigation组件hideNavBar设置为true
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 1
     */
    it('SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0230', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0230 start.`);
      Settings.createWindow("testability/pages/ComponentNavModifier/ComponentNavModifier0230")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(1000,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0230 finish.`);
      done()
    })
  })
}
