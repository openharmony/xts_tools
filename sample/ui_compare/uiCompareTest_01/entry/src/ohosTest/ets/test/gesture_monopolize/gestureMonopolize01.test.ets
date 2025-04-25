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

export default function gestureMonopolize01Test() {

  describe('gestureMonopolize01Test', () => {
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
     * @tc.number : SUB_ACE_ACTION_GESTURE_MONOPOLIZE_0020
     * @tc.name   : button1 component sets the 'monopolize' attribute and binds the touch event. Verify that other components' events respond normally when button1 is not triggered in monopolize mode.
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_ACTION_GESTURE_MONOPOLIZE_0020', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_MONOPOLIZE_0020 start.`);
      Settings.createWindow("testability/pages/gesture_monopolize/monopolize01")
      await Utils.sleep(1000)
      let driver:Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('innerColumn01'));
      await button.click();
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_MONOPOLIZE_0020 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_ACTION_GESTURE_MONOPOLIZE_0110
     * @tc.name   : Set the 'monopolize' attribute for the List component and bind it to a mouse wheel event. Bind the
     * column component to a tap gesture. Verify that the column's tap gesture responds normally when the List
     * component's monopolize state is not triggered.
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_ACTION_GESTURE_MONOPOLIZE_0110', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_MONOPOLIZE_0110 start.`);
      Settings.createWindow("testability/pages/gesture_monopolize/monopolize02")
      await Utils.sleep(1000)
      let driver:Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('List02'));
      await driver.click(600,380)
      let point = await button.getBoundsCenter();
      await button.click()
      await driver.mouseScroll(point,true,2)
      Logger.info('TEST001', `button.getBoundsCenter point is : ${JSON.stringify(point)}`);
      await Utils.sleep(1500)
      windowSnap.snapShot('SUB_ACE_ACTION_GESTURE_MONOPOLIZE_0110')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_MONOPOLIZE_0110 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_ACTION_GESTURE_MONOPOLIZE_0160
     * @tc.name   : column1 component sets the 'monopolize' attribute to false and binds the long-press gesture. column2 binds the tap gesture. Dynamically modify the 'monopolize' value.
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_ACTION_GESTURE_MONOPOLIZE_0160', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_MONOPOLIZE_0160 start.`);
      Settings.createWindow("testability/pages/gesture_monopolize/monopolize03")
      await Utils.sleep(1000)
      let driver:Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('innerColumn03'));
      await button.longClick();
      windowSnap.snapShot('SUB_ACE_ACTION_GESTURE_MONOPOLIZE_0160_01')
      await Utils.sleep(1000)
      let cleanButton: Component = await driver.findComponent(ON.id('clean03'));
      await cleanButton.click();
      let button1: Component = await driver.findComponent(ON.id('changeMonopolizeEvents03'));
      await button1.click();
      await button.longClick();
      await button.click();
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_ACTION_GESTURE_MONOPOLIZE_0160_02')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_MONOPOLIZE_0160 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_ACTION_GESTURE_MONOPOLIZE_0150
     * @tc.name   : column1 component sets the 'monopolize' attribute and binds the long-press gesture. column2 binds the tap gesture. Dynamically modify the 'monopolize' value.
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_ACTION_GESTURE_MONOPOLIZE_0150', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_MONOPOLIZE_0150 start.`);
      Settings.createWindow("testability/pages/gesture_monopolize/monopolize04")
      await Utils.sleep(1000)
      let driver:Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('innerColumn04'));
      await button.longClick();
      windowSnap.snapShot('SUB_ACE_ACTION_GESTURE_MONOPOLIZE_0150_01')
      await Utils.sleep(1000)
      let cleanButton: Component = await driver.findComponent(ON.id('clean04'));
      await cleanButton.click();
      let button1: Component = await driver.findComponent(ON.id('changeMonopolizeEvents04'));
      await button1.click();
      await button.longClick();
      await button.click();
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_ACTION_GESTURE_MONOPOLIZE_0150_02')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_MONOPOLIZE_0150 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_ACTION_GESTURE_RECONSTRUCTION_INTERFACE_0020
     * @tc.name   : Obtaining current window information
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_ACTION_GESTURE_RECONSTRUCTION_INTERFACE_0020', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_RECONSTRUCTION_INTERFACE_0020 start.`);
      Settings.createWindow("testability/pages/gesture_monopolize/monopolize05")
      await Utils.sleep(1000)
      let driver:Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('monopolizeButton05'));
      await button.click();
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_RECONSTRUCTION_INTERFACE_0020 finish.`);
      done()
    })
  })
}
