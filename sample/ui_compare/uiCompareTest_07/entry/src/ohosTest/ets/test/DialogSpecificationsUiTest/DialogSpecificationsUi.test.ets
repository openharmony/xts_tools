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

export default function DialogSpecificationsUi() {

  describe('DialogSpecificationsUi', () => {
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
     * @tc.number : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_SPECIFICATIONS_UI_0040
     * @tc.name   : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_SPECIFICATIONS_UI_0040
     * @tc.type   : Function
     * @tc.desc   : When a circular button is not set with width and height, and the radius is set through the border-radius property, the default width and height will be the diameter size.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_SPECIFICATIONS_UI_0040', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_SPECIFICATIONS_UI_0040 start.`);
      Settings.createWindow("testability/pages/DialogSpecificationsUi/DialogSpecificationsUi0040")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('DialogSpecificationsUi0040_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      await Button1.click();
      await driver.waitForIdle(500,2000)
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('DialogSpecificationsUi0040_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_SPECIFICATIONS_UI_0040 finish.`);
      done()
    })


    /*
     * @tc.number : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_SPECIFICATIONS_UI_0030
     * @tc.name   : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_SPECIFICATIONS_UI_0030
     * @tc.type   : Function
     * @tc.desc   : When a circular button does not have its width and height set, the width and height will default to the diameter size after setting the radius through the borderRadius property.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_SPECIFICATIONS_UI_0030', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_SPECIFICATIONS_UI_0030 start.`);
      Settings.createWindow("testability/pages/DialogSpecificationsUi/DialogSpecificationsUi0030")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('DialogSpecificationsUi0030_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      await Button1.click();
      await driver.waitForIdle(500,2000)
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('DialogSpecificationsUi0030_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_SPECIFICATIONS_UI_0030 finish.`);
      done()
    })


    /*
     * @tc.number : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_SPECIFICATIONS_UI_0020
     * @tc.name   : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_SPECIFICATIONS_UI_0020
     * @tc.type   : Function
     * @tc.desc   : When using a capsule-shaped button together with the border property, the border({ radius }) does not take effect, and the button's border-radius always remains half of its height.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_SPECIFICATIONS_UI_0020', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_SPECIFICATIONS_UI_0020 start.`);
      Settings.createWindow("testability/pages/DialogSpecificationsUi/DialogSpecificationsUi0020")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('DialogSpecificationsUi0020_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      await Button1.click();
      await driver.waitForIdle(500,2000)
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('DialogSpecificationsUi0020_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_SPECIFICATIONS_UI_0020 finish.`);
      done()
    })


    /*
     * @tc.number : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_SPECIFICATIONS_UI_0050
     * @tc.name   : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_SPECIFICATIONS_UI_0050
     * @tc.type   : Function
     * @tc.desc   : When a circular button does not have its width and height set, the width and height will default to the diameter size after setting the radius through the borderRadius property. Moreover, when multiple directions are set in borderRadius, the parsing order is topleft > topright > bottomleft > bottomright.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_SPECIFICATIONS_UI_0050', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_SPECIFICATIONS_UI_0050 start.`);
      Settings.createWindow("testability/pages/DialogSpecificationsUi/DialogSpecificationsUi0050")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('DialogSpecificationsUi0050_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      await Button1.click();
      await driver.waitForIdle(500,2000)
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('DialogSpecificationsUi0050_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await Button2.click();
      await driver.waitForIdle(500,2000)
      let Button3: Component = await driver.waitForComponent(ON.id('DialogSpecificationsUi0050_003'),1000);
      await Button3.click();
      await driver.waitForIdle(500,2000)
      await Button3.click();
      await driver.waitForIdle(500,2000)
      await Button3.click();
      await driver.waitForIdle(500,2000)
      let Button4: Component = await driver.waitForComponent(ON.id('DialogSpecificationsUi0050_004'),1000);
      await Button4.click();
      await driver.waitForIdle(500,2000)
      await Button4.click();
      await driver.waitForIdle(500,2000)
      await Button4.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_SPECIFICATIONS_UI_0050 finish.`);
      done()
    })


    /*
     * @tc.number : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_SPECIFICATIONS_UI_0060
     * @tc.name   : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_SPECIFICATIONS_UI_0060
     * @tc.type   : Function
     * @tc.desc   : When a circular button does not have its borderRadius set, the smaller value of its width and height is used as the diameter.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_SPECIFICATIONS_UI_0060', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_SPECIFICATIONS_UI_0060 start.`);
      Settings.createWindow("testability/pages/DialogSpecificationsUi/DialogSpecificationsUi0060")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('DialogSpecificationsUi0060_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      await Button1.click();
      await driver.waitForIdle(500,2000)
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('DialogSpecificationsUi0060_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_SPECIFICATIONS_UI_0060 finish.`);
      done()
    })


    /*
     * @tc.number : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_SPECIFICATIONS_UI_0090
     * @tc.name   : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_SPECIFICATIONS_UI_0090
     * @tc.type   : Function
     * @tc.desc   : When a circular button does not set its width, height, or borderRadius, the container's diameter is determined by the smaller value of the content's width and height.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_SPECIFICATIONS_UI_0090', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_SPECIFICATIONS_UI_0090 start.`);
      Settings.createWindow("testability/pages/DialogSpecificationsUi/DialogSpecificationsUi0090")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('DialogSpecificationsUi0090_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      await Button1.click();
      await driver.waitForIdle(500,2000)
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('DialogSpecificationsUi0090_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_SPECIFICATIONS_UI_0090 finish.`);
      done()
    })


    /*
     * @tc.number : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_SPECIFICATIONS_UI_0080
     * @tc.name   : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_SPECIFICATIONS_UI_0080
     * @tc.type   : Function
     * @tc.desc   : When a circular button does not set its width, height, or borderRadius, the diameter for the label usage is the default height.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_SPECIFICATIONS_UI_0080', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_SPECIFICATIONS_UI_0080 start.`);
      Settings.createWindow("testability/pages/DialogSpecificationsUi/DialogSpecificationsUi0080")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('DialogSpecificationsUi0080_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      await Button1.click();
      await driver.waitForIdle(500,2000)
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('DialogSpecificationsUi0080_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_SPECIFICATIONS_UI_0080 finish.`);
      done()
    })


    /*
     * @tc.number : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_SPECIFICATIONS_UI_0120
     * @tc.name   : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_SPECIFICATIONS_UI_0120
     * @tc.type   : Function
     * @tc.desc   : The clip property does not clip child nodes that exceed the area. That is, when the size of the prefix or suffix icon is set larger than the size of the background panel, it can be displayed beyond the boundary.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_SPECIFICATIONS_UI_0120', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_SPECIFICATIONS_UI_0120 start.`);
      Settings.createWindow("testability/pages/DialogSpecificationsUi/DialogSpecificationsUi0120")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('DialogSpecificationsUi0120_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      await Button1.click();
      await driver.waitForIdle(500,2000)
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('DialogSpecificationsUi0120_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_SPECIFICATIONS_UI_0120 finish.`);
      done()
    })



  })
}
