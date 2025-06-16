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

export default function FocusTextUITest() {

  describe('FocusTextUITest', () => {
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
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0140
     * @tc.name   : Text#TextTest#TextTest_141
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 1
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0140', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0140  start.`);
      Settings.createWindow("testability/pages/focus_TextUI/FocusTextUI0140")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(2000,3000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0140 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0160
    * @tc.name   : Text#TextTest#TextTest_016
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 1
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0160', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0160  start.`);
      Settings.createWindow("testability/pages/focus_TextUI/FocusTextUI0160")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(2000,3000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0160 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0260
     * @tc.name   : Text#TextTest#TextTest_026
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 1
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0260', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0260  start.`);
      Settings.createWindow("testability/pages/focus_TextUI/FocusTextUI0260")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000);
      let buttonA: Component = await driver.waitForComponent(ON.id('textComponent0260'), 1000);
      await buttonA.click();
      await driver.waitForIdle(2000,3000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0260 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0310
     * @tc.name   : Text#TextTest#TextTest_031
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 1
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0310', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0310  start.`);
      Settings.createWindow("testability/pages/focus_TextUI/FocusTextUI0310")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000);
      let buttonA: Component = await driver.waitForComponent(ON.id('changeColorBtn0310'), 1000);
      await buttonA.click();
      await driver.waitForIdle(2000,3000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0310 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0330
     * @tc.name   : Text#TextTest#TextTest_033
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 1
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0330', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0330  start.`);
      Settings.createWindow("testability/pages/focus_TextUI/FocusTextUI0330")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000);
      let buttonA: Component = await driver.waitForComponent(ON.id('colorBtn0330'), 1000);
      await buttonA.click();
      await driver.waitForIdle(2000,3000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0330 finish.`);
      done()
    })

    /*
         * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0340
         * @tc.name   : Text#TextTest#TextTest_034
         * @tc.type   : Function
         * @tc.size   : MediumTest
         * @tc.level  : 1
         */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0340', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0340  start.`);
      Settings.createWindow("testability/pages/focus_TextUI/FocusTextUI0340")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000);
      let buttonA: Component = await driver.waitForComponent(ON.id('colorBtn0340'), 1000);
      await buttonA.click();
      await driver.waitForIdle(2000,3000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0340 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0410
     * @tc.name   : Text#TextTest#TextTest_041
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 1
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0410', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0410  start.`);
      Settings.createWindow("testability/pages/focus_TextUI/FocusTextUI0410")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000);
      let buttonA: Component = await driver.waitForComponent(ON.id('Bold0410'), 1000);
      await buttonA.click();
      let buttonB: Component = await driver.waitForComponent(ON.id('Medium0410'), 1000);
      await buttonB.click();
      let buttonC: Component = await driver.waitForComponent(ON.id('Normal0410'), 1000);
      await buttonC.click();
      await driver.waitForIdle(2000,3000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0410 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0460
     * @tc.name   : Text#TextTest#TextTest_046
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 1
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0460', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0460  start.`);
      Settings.createWindow("testability/pages/focus_TextUI/FocusTextUI0460")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000);
      let buttonA: Component = await driver.waitForComponent(ON.id('zeroSize0460'), 1000);
      await buttonA.click();
      await driver.waitForIdle(2000,3000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0460 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0540
     * @tc.name   : Text#TextTest#TextTest_054
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 1
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0540', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0540  start.`);
      Settings.createWindow("testability/pages/focus_TextUI/FocusTextUI0540")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000);
      let buttonA: Component = await driver.waitForComponent(ON.id('zeroSize0540'), 1000);
      await buttonA.click();
      await driver.waitForIdle(2000,3000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0540 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0550
     * @tc.name   : Text#TextTest#TextTest_055
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 1
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0550', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0550  start.`);
      Settings.createWindow("testability/pages/focus_TextUI/FocusTextUI0550")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000);
      let buttonC: Component = await driver.waitForComponent(ON.id('Size0550'), 1000);
      await buttonC.click();
      await driver.waitForIdle(2000,3000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0550 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0770
     * @tc.name   : Text#TextTest#TextTest_077
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 1
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0770', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0770  start.`);
      Settings.createWindow("testability/pages/focus_TextUI/FocusTextUI0770")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000);
      let buttonA: Component = await driver.waitForComponent(ON.id('paramBtn0770'), 1000);
      await buttonA.click();
      await driver.waitForIdle(2000,3000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0770 finish.`);
      done()
    })

    /*
         * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0780
         * @tc.name   : Text#TextTest#TextTest_078
         * @tc.type   : Function
         * @tc.size   : MediumTest
         * @tc.level  : 1
         */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0780', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0780  start.`);
      Settings.createWindow("testability/pages/focus_TextUI/FocusTextUI0780")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000);
      let buttonA: Component = await driver.waitForComponent(ON.id('paramBtn0780'), 1000);
      await buttonA.click();
      await driver.waitForIdle(2000,3000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0780 finish.`);
      done()
    })

    /*
         * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0860
         * @tc.name   : Text#TextTest#TextTest_086
         * @tc.type   : Function
         * @tc.size   : MediumTest
         * @tc.level  : 1
         */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0860', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0860  start.`);
      Settings.createWindow("testability/pages/focus_TextUI/FocusTextUI0860")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000);
      let buttonA: Component = await driver.waitForComponent(ON.id('paramBtn0860'), 1000);
      await buttonA.click();
      await driver.waitForIdle(2000,3000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0860 finish.`);
      done()
    })

    /*
         * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0950
         * @tc.name   : Text#TextTest#TextTest_095
         * @tc.type   : Function
         * @tc.size   : MediumTest
         * @tc.level  : 1
         */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0950', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0950  start.`);
      Settings.createWindow("testability/pages/focus_TextUI/FocusTextUI0950")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000);
      let buttonA: Component = await driver.waitForComponent(ON.id('changeColorBtn0950'), 1000);
      await buttonA.click();
      await driver.waitForIdle(2000,3000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0950 finish.`);
      done()
    })

    /*
         * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0980
         * @tc.name   : Text#TextTest#TextTest_098
         * @tc.type   : Function
         * @tc.size   : MediumTest
         * @tc.level  : 1
         */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0980', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0980  start.`);
      Settings.createWindow("testability/pages/focus_TextUI/FocusTextUI0980")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000);
      let buttonA: Component = await driver.waitForComponent(ON.id('testText0980'), 1000);
      await buttonA.click();
      await driver.waitForIdle(2000,3000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_0980 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_1110
     * @tc.name   : Text#TextTest#TextTest_111
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 1
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_1110', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_1110  start.`);
      Settings.createWindow("testability/pages/focus_TextUI/FocusTextUI1110")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000);
      let buttonA: Component = await driver.waitForComponent(ON.id('changeResBtn1110'), 1000);
      await buttonA.click();
      await driver.waitForIdle(2000,3000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_1110 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_1120
     * @tc.name   : Text#TextTest#TextTest_112
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 1
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_1120', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_1120  start.`);
      Settings.createWindow("testability/pages/focus_TextUI/FocusTextUI1120")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000);
      let buttonA: Component = await driver.waitForComponent(ON.id('paramBtn1120'), 1000);
      await buttonA.click();
      await driver.waitForIdle(2000,3000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_1120 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_1210
     * @tc.name   : Text#TextTest#TextTest_121
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 1
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_1210', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_1210  start.`);
      Settings.createWindow("testability/pages/focus_TextUI/FocusTextUI1210")
       let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000);
      let buttonA: Component = await driver.waitForComponent(ON.id('paramBtn1210'), 1000);
       await buttonA.click();
      await driver.waitForIdle(2000,3000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_1210 finish.`);
      done()
    })

  })
}
