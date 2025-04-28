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

export default function swipeArray01Test() {

  describe('swipeArray01Test', () => {
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
     * @tc.number : SUB_ACE_UI_COMPONENT_SWIPE_ARRAY_INTERFACE_0100
     * @tc.name   : Verify the reference of the string array type and concatenate it.
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SWIPE_ARRAY_INTERFACE_0100', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SWIPE_ARRAY_INTERFACE_0100 start.`);
      Settings.createWindow("testability/pages/swipe_array/swipeArray01")
      await Utils.sleep(1000)
      let driver:Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('scroll600_01'));
      await button.click();
      await Utils.sleep(500)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_SWIPE_ARRAY_INTERFACE_0100')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SWIPE_ARRAY_INTERFACE_0100 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SWIPE_ARRAY_INTERFACE_0200
     * @tc.name   : Verify the reference of the integer array type and concatenate it.
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SWIPE_ARRAY_INTERFACE_0200', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SWIPE_ARRAY_INTERFACE_0200 start.`);
      Settings.createWindow("testability/pages/swipe_array/swipeArray02")
      await Utils.sleep(1000)
      let driver:Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('scroll600_02'));
      await button.click();
      await Utils.sleep(500)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_SWIPE_ARRAY_INTERFACE_0200')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SWIPE_ARRAY_INTERFACE_0200 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SWIPE_ARRAY_INTERFACE_0300
     * @tc.name   : Verify the reference of the pattern type and concatenate it.
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SWIPE_ARRAY_INTERFACE_0300', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SWIPE_ARRAY_INTERFACE_0300 start.`);
      Settings.createWindow("testability/pages/swipe_array/swipeArray03")
      await Utils.sleep(1000)
      let driver:Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('scroll600_03'));
      await button.click();
      await Utils.sleep(500)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_SWIPE_ARRAY_INTERFACE_0300')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SWIPE_ARRAY_INTERFACE_0300 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SWIPE_ARRAY_INTERFACE_0400
     * @tc.name   : Verify the reference of the theme type and concatenate it.
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SWIPE_ARRAY_INTERFACE_0400', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SWIPE_ARRAY_INTERFACE_0400 start.`);
      Settings.createWindow("testability/pages/swipe_array/swipeArray04")
      await Utils.sleep(1000)
      let driver:Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('scroll600_04'));
      await button.click();
      await Utils.sleep(500)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_SWIPE_ARRAY_INTERFACE_0400')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SWIPE_ARRAY_INTERFACE_0400 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SWIPE_ARRAY_INTERFACE_0500
     * @tc.name   : Verify the reference of the boolean type and concatenate it.
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SWIPE_ARRAY_INTERFACE_0500', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SWIPE_ARRAY_INTERFACE_0500 start.`);
      Settings.createWindow("testability/pages/swipe_array/swipeArray05")
      await Utils.sleep(1000)
      let driver:Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('scroll600_05'));
      await button.click();
      await Utils.sleep(500)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_SWIPE_ARRAY_INTERFACE_0500')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SWIPE_ARRAY_INTERFACE_0500 finish.`);
      done()
    })
  })
}
