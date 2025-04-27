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

export default function scrollAccessibleTest() {

  describe('scrollAccessibleTest', () => {
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
     * @tc.number : SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0350_597
     * @tc.name   : Testing cachedCount when using rowsTemplate: 1fr 1fr 1fr layout with mirroring effect
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0350_597', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0350_597 start.`);
      Settings.createWindow("testability/pages/scroll_accessible/scroll01")
      await Utils.sleep(1000)
      let driver:Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('scroll_01'));
      await button.click();
      await Utils.sleep(500)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0350_597')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0350_597 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0340_280
     * @tc.name   : Testing cachedCount when using rowsTemplate: 1fr 1fr 1fr layout with mirroring effect
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0340_280', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0340_280 start.`);
      Settings.createWindow("testability/pages/scroll_accessible/scroll02")
      await Utils.sleep(1000)
      let driver:Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('scrollWaterFlow02'));
      let point = await button.getBoundsCenter();
      await button.click()
      await driver.mouseScroll(point,true,2)
      await Utils.sleep(500)
      let button1: Component = await driver.findComponent(ON.id('offSetText02'));
      await button1.click()
      await Utils.sleep(500)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0340_280')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0340_280 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0360_034
     * @tc.name   : Testing cachedCount when using rowsTemplate: 1fr 1fr 1fr layout with mirroring effect
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0360_034', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0360_034 start.`);
      Settings.createWindow("testability/pages/scroll_accessible/scroll05")
      await Utils.sleep(1000)
      let driver:Driver = Driver.create();
      await driver.triggerKey(2049);
      await driver.triggerKey(2049);
      await Utils.sleep(500)
      let button1: Component = await driver.findComponent(ON.id('offSetText05'));
      await button1.click()
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0360_034')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0360_034 finish.`);
      done()
    })
  })
}
