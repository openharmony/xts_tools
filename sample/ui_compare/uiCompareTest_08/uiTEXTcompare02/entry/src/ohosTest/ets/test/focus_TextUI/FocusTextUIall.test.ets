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

    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_1230', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_1230  start.`);
      Settings.createWindow("testability/pages/focus_TextUI/FocusTextUI1230")
       let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000);
      let buttonA: Component = await driver.waitForComponent(ON.id('paramBtn1230'), 1000);
       await buttonA.click();
      await driver.waitForIdle(2000,3000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_1230 finish.`);
      done()
    })



    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_1380
    * @tc.name   : Text#TextTest#TextTest_138
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 1
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_1380', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_1380  start.`);
      Settings.createWindow("testability/pages/focus_TextUI/FocusTextUI1380")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_1410
     * @tc.name   : Text#TextTest#TextTest_141
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 1
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_1410', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_1410  start.`);
      Settings.createWindow("testability/pages/focus_TextUI/FocusTextUI1410")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000);
      let buttonA: Component = await driver.waitForComponent(ON.id('testBtn1410'), 1000);
      await buttonA.click();
      await buttonA.click();
      await driver.waitForIdle(2000,3000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      await buttonA.click();
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_1410 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_1430
     * @tc.name   : Text#TextTest#TextTest_143
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 1
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_1430', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_1430  start.`);
      Settings.createWindow("testability/pages/focus_TextUI/FocusTextUI1430")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000);
      let buttonA: Component = await driver.waitForComponent(ON.id('testBtn1430'), 1000);
      await buttonA.click();
      await buttonA.click();
      await driver.waitForIdle(2000,3000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_1430 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_1460
     * @tc.name   : Text#TextTest#TextTest_146
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 1
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_1460', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_1460  start.`);
      Settings.createWindow("testability/pages/focus_TextUI/FocusTextUI1460")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000);
      let buttonA: Component = await driver.waitForComponent(ON.id('CaseBtn1460'), 1000);
      await buttonA.click();
      await driver.waitForIdle(2000,3000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_1460 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_1640
     * @tc.name   : Text#TextTest#TextTest_164
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 1
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_1640', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_1640  start.`);
      Settings.createWindow("testability/pages/focus_TextUI/FocusTextUI1640")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000);
      let buttonA: Component = await driver.waitForComponent(ON.id('textShadow1640'), 1000);
      await buttonA.click();
      await driver.waitForIdle(2000,3000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_1640 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_1660
     * @tc.name   : Text#TextTest#TextTest_166
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 1
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_1660', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_1660  start.`);
      Settings.createWindow("testability/pages/focus_TextUI/FocusTextUI1660")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000);
      let buttonA: Component = await driver.waitForComponent(ON.id('textShadow1660'), 1000);
      await buttonA.click();
      await driver.waitForIdle(2000,3000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_1660 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_1750
     * @tc.name   : Text#TextTest#TextTest_175
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 1
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_1750', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_1750  start.`);
      Settings.createWindow("testability/pages/focus_TextUI/FocusTextUI1750")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000);
      let buttonA: Component = await driver.waitForComponent(ON.id('configBtn1750'), 1000);
      await buttonA.click();
      await driver.waitForIdle(2000,3000);
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_1750 finish.`);
      done()
    })

    /*
         * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_1780
         * @tc.name   : Text#TextTest#TextTest_178
         * @tc.type   : Function
         * @tc.size   : MediumTest
         * @tc.level  : 1
         */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_1780', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_1780  start.`);
      Settings.createWindow("testability/pages/focus_TextUI/FocusTextUI1780")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000);
      let buttonA: Component = await driver.waitForComponent(ON.id('configBtn1780'), 1000);
      await buttonA.click();
      await driver.waitForIdle(2000,3000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_1780 finish.`);
      done()
    })

    /*
        * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_1940
        * @tc.name   : Text#TextTest#TextTest_194
        * @tc.type   : Function
        * @tc.size   : MediumTest
        * @tc.level  : 1
        */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_1940', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_1940  start.`);
      Settings.createWindow("testability/pages/focus_TextUI/FocusTextUI1940")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000);
      let buttonA: Component = await driver.waitForComponent(ON.id('Bold1940'), 1000);
      await buttonA.click();
      let buttonB: Component = await driver.waitForComponent(ON.id('Medium1940'), 1000);
      await buttonB.click();
      await driver.waitForIdle(2000,3000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_1940 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_2020
    * @tc.name   : Text#TextTest#TextTest_202
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 1
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_2020', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_2020  start.`);
      Settings.createWindow("testability/pages/focus_TextUI/FocusTextUI2020")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000);
      let buttonA: Component = await driver.waitForComponent(ON.id('Normal2020'), 1000);
      await buttonA.click();
      let buttonB: Component = await driver.waitForComponent(ON.id('Bold2020'), 1000);
      await buttonB.click();
      let buttonC: Component = await driver.waitForComponent(ON.id('Medium2020'), 1000);
      await buttonC.click();
      await driver.waitForIdle(2000,3000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_UI_2020 finish.`);
      done()
    })
  })
}
