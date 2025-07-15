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
import { BusinessError } from '@kit.BasicServicesKit'

export default function RouterPushTest() {

  describe('RouterPushTest', () => {
    afterEach(async (done: Function) => {
      if (Settings.windowClass == undefined) {
        return
      }

      Settings.windowClass.destroyWindow((err:BusinessError) => {
        if (err.code) {
          Logger.error('TEST', `Failed to destroy the window. Cause : ${JSON.stringify(err)}`)
          return;
        }
        Logger.info('TEST', `Succeeded in destroy the window.`);
      })
      let driver: Driver = Driver.create();
      await Settings.changeWindowOrientation('end')
      await driver.waitForIdle(500,2000);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0070
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0070
     * @tc.desc   : Manual click verification of router push jump interruption and continuation function (pushurl method)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0070', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0070 start.`);
      Settings.createWindow("testability/pages/router_push/pageA")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button1'), 1000);
      await buttonA.click();
      windowSnap.snapShot('SUB_ACE_FOCUS_DYNAMIC_EFFECT_017_01')
      await Utils.sleep(1000)
      let buttonB: Component = await driver.waitForComponent(ON.id('PageB_Button1'), 1000);
      await buttonB.click();
      windowSnap.snapShot('SUB_ACE_FOCUS_DYNAMIC_EFFECT_017_02')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_FOCUS_DYNAMIC_EFFECT_017 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0010
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0010
     * @tc.desc   : Verification of normal router push jump function (pushurl method)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0010', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0010 start.`);
      Settings.createWindow("testability/pages/router_push/pageA")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button1'), 1000);
      await buttonA.click();
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0010 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0270
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0270
     * @tc.desc   : Interruption and continuation effect verification of router combined stack in landscape/portrait scenarios (back+back)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0270', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0270 start.`);
      Settings.createWindow("testability/pages/router_push/pageA")
      let driver: Driver = Driver.create();

      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button1'), 1000);
      await buttonA.click();
      await driver.waitForIdle(500,2000);

      let buttonB1: Component = await driver.waitForComponent(ON.id('PageB_Button1'), 1000);
      await buttonB1.click();
      await driver.waitForIdle(500,2000);

      let buttonC1: Component = await driver.waitForComponent(ON.id('PageC_Button1'), 1000);
      await buttonC1.click();

      let buttonB2: Component = await driver.waitForComponent(ON.id('PageB_Button2'), 1000);
      await buttonB2.click();

      await driver.waitForIdle(500,2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0270_01')
      await Settings.changeWindowOrientation()
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0270_02')
      await Utils.sleep(800)
      await Settings.changeWindowOrientation('end')
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0270 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0190
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0190
     * @tc.desc   : Interruption and continuation function verification of router combined stack (one onclick triggers one push and one back)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0190', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0190 start.`);
      Settings.createWindow("testability/pages/router_push/pageA")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button2'), 1000);
      await buttonA.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0270_01')
      await Utils.sleep(500)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0270 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0560
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0560
     * @tc.desc   : Click verification of custom animation router back jump interruption and continuation function (back to specified page method)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0560', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0560 start.`);
      Settings.createWindow("testability/pages/router_push/pageA")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button1'), 1000);
      await buttonA.click();
      await driver.waitForIdle(500,2000);

      let buttonB1: Component = await driver.waitForComponent(ON.id('PageB_Button1'), 1000);
      await buttonB1.click();
      await driver.waitForIdle(500,2000);

      let buttonC1: Component = await driver.waitForComponent(ON.id('PageC_Button1'), 1000);
      await buttonC1.click();
      let buttonB2: Component = await driver.waitForComponent(ON.id('PageB_Button2'), 1000);
      await buttonB2.click();
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0560')
      await Utils.sleep(500)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0560 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0200
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0200
     * @tc.desc   : Click verification of router combined stack interruption and continuation function (back+push)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0200', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0200 start.`);
      Settings.createWindow("testability/pages/router_push/pageA")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button1'), 1000);
      await buttonA.click();
      await driver.waitForIdle(500,2000);

      let buttonB1: Component = await driver.waitForComponent(ON.id('PageB_Button2'), 1000);
      await buttonB1.click();
      let buttonA1: Component = await driver.waitForComponent(ON.id('PageA_Button1'), 1000);
      await buttonA1.click();
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0200')

      await Utils.sleep(500)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0200 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0290
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0290
     * @tc.desc   : Verification of normal router push jump function with system animation disabled (pushNamedRoute method)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0290', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0290 start.`);
      Settings.createWindow("testability/pages/router_push/pageA")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button3'), 1000);
      await buttonA.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0290')
      await Utils.sleep(500)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0290 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0570
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0570
     * @tc.desc   : Verification of custom animation router back jump interruption and continuation function (one onclick triggers two back to specified page operations)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0570', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0570 start.`);
      Settings.createWindow("testability/pages/router_push/pageA")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button4'), 1000);
      await buttonA.click();
      await driver.waitForIdle(500,2000);
      let buttonC: Component = await driver.waitForComponent(ON.id('PageC_Button2'), 1000);
      await buttonC.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0570')
      await Utils.sleep(500)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0570 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0170
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0170
     * @tc.desc   : Click verification of router combined stack interruption and continuation function (push+back)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0170', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0170 start.`);
      Settings.createWindow("testability/pages/router_push/pageA")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button5'), 1000);
      await buttonA.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0170')
      await Utils.sleep(500)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0170 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0740
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0740
     * @tc.desc   : Router push and back effects in 32-page stack
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0740', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0740 start.`);
      Settings.createWindow("testability/pages/router_push/pageA")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button6'), 1000);
      await buttonA.click();
      await driver.waitForIdle(500,2000);
      let buttonB: Component = await driver.waitForComponent(ON.id('PageB_Button3'), 1000);
      await buttonB.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0740')
      await Utils.sleep(500)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0740 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0250
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0250
     * @tc.desc   : Interruption and continuation effect verification of router combined stack in landscape/portrait scenarios (push+back)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0250', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0250 start.`);
      Settings.createWindow("testability/pages/router_push/pageA")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button7'), 1000);
      await buttonA.click();
      Settings.changeWindowOrientation()
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0250')
      Settings.changeWindowOrientation('end')
      await Utils.sleep(500)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0250 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0340
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0340
     * @tc.desc   : Verification of router push jump interruption and continuation function with system animation disabled (one onclick triggers two pushurl)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0340', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0340 start.`);
      Settings.createWindow("testability/pages/router_push/pageA")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button9'), 1000);
      await buttonA.click();
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0340')
      await Utils.sleep(500)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0340 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0650
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0650
     * @tc.desc   : Custom animation normal router back in landscape/portrait scenarios
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0650', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0650 start.`);
      Settings.createWindow("testability/pages/router_push/pageA")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button8'), 1000);
      await buttonA.click();
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0650')
      Settings.changeWindowOrientation('end')
      await Utils.sleep(500)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0650 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0550
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0550
     * @tc.desc   : Click verification of custom animation router back jump interruption and continuation function (back to previous page method)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0550', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0550 start.`);
      Settings.createWindow("testability/pages/router_push/pageA")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button1'), 1000);
      await buttonA.click();
      let buttonB: Component = await driver.waitForComponent(ON.id('PageB_Button1'), 1000);
      await buttonB.click();
      let buttonC: Component = await driver.waitForComponent(ON.id('PageC_Button3'), 1000);
      await buttonC.click();
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0550')
      await Utils.sleep(500)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0550 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0080
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0080
     * @tc.desc   : Verification of router push jump interruption and continuation function (one onclick triggers two pushurl)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0080', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0080 start.`);
      Settings.createWindow("testability/pages/router_push/pageA")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button9'), 1000);
      await buttonA.click();
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0080')
      await Utils.sleep(500)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0080 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0230
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0230
     * @tc.desc   : Normal router back in landscape/portrait scenarios
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0230', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0230 start.`);
      Settings.createWindow("testability/pages/router_push/pageA")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button1'), 1000);
      await buttonA.click();
      let buttonB: Component = await driver.waitForComponent(ON.id('PageB_Button4'), 1000);
      await buttonB.click();
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0230')
      await Settings.changeWindowOrientation('end')
      await Utils.sleep(500)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0230 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0770
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0770
     * @tc.desc   : Continuous push
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0770', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0770 start.`);
      Settings.createWindow("testability/pages/router_push/pageA")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button10'), 1000);
      await buttonA.click();
      await Utils.sleep(1500)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0770')
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0770 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0380
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0380
     * @tc.desc   : Verification of router combined stack interruption and continuation function with system animation
     * disabled (one onclick triggers one push and one back)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0380', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0380 start.`);
      Settings.createWindow("testability/pages/router_push/pageA2")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button2_1'), 1000);
      await buttonA.click();
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0380')
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0380 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0470
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0470
     * @tc.desc   : Verification of custom animation normal combined jump function (push+back)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0470', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0470 start.`);
      Settings.createWindow("testability/pages/router_push/pageA4")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button4_1'), 1000);
      await buttonA.click();
      await driver.waitForIdle(500,2000);
      let buttonB: Component = await driver.waitForComponent(ON.id('PageB_Button4_1'), 1000);
      await buttonB.click();
      await Utils.sleep(1500)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0470')
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0470 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0660
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0660
     * @tc.desc   : Interruption and continuation effect verification of custom animation router combined stack
     * in landscape/portrait scenarios (push+push)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0660', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0660 start.`);
      Settings.createWindow("testability/pages/router_push/pageA4")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button4_1'), 1000);
      await buttonA.click();
      let buttonB: Component = await driver.waitForComponent(ON.id('PageB_Button4_2'), 1000);
      await buttonB.click();
      await Utils.sleep(600)
      Settings.changeWindowOrientation()
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0660')
      Settings.changeWindowOrientation('end')
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0660 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0090
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0090
     * @tc.desc   : Manual click verification of router push jump interruption and continuation function
     * (pushNamedRoute method)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0090', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0090 start.`);
      Settings.createWindow("testability/pages/router_push/pageA3")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button3_2'), 1000);
      await buttonA.click();
      let buttonB: Component = await driver.waitForComponent(ON.id('PageB_Button3_3'), 1000);
      await buttonB.click();
      await Utils.sleep(400)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0090')
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0090 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0040
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0040
     * @tc.desc   : Verification of normal router back jump function (back to specified page method)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0040', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0040 start.`);
      Settings.createWindow("testability/pages/router_push/pageA3")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button3_2'), 1000);
      await buttonA.click();
      let buttonB: Component = await driver.waitForComponent(ON.id('PageB_Button3_1'), 1000);
      await buttonB.click();
      await Utils.sleep(400)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0040')
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0040 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0060
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0060
     * @tc.desc   : Verification of normal combined jump function (back+push)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0060', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0060 start.`);
      Settings.createWindow("testability/pages/router_push/pageA")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button1'), 1000);
      await buttonA.click();
      let buttonB: Component = await driver.waitForComponent(ON.id('PageB_Button3'), 1000);
      await buttonB.click();
      let buttonA2: Component = await driver.waitForComponent(ON.id('PageA_Button1'), 1000);
      await buttonA2.click();
      await Utils.sleep(400)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0060')
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0060 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0520
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0520
     * @tc.desc   : Verification of custom animation router push jump interruption and continuation function (one
     * onclick triggers two pushNamedRoute)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0520', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0520 start.`);
      Settings.createWindow("testability/pages/router_push/pageA3")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button3_3'), 1000);
      await buttonA.click();
      await Utils.sleep(400)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0520')
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0520 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0210
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0210
     * @tc.desc   : Verification of router combined stack interruption and continuation function (one onclick triggers
     * one back and one push)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0210', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0210 start.`);
      Settings.createWindow("testability/pages/router_push/pageA")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button1'), 1000);
      await buttonA.click();
      await Utils.sleep(600)
      let buttonB: Component = await driver.waitForComponent(ON.id('PageB_Button5'), 1000);
      await buttonB.click();
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0210')
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0210 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0760
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0760
     * @tc.desc   : Interruption and continuation effect of back then push transition in 32-page stack
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0760', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0760 start.`);
      Settings.createWindow("testability/pages/router_push/pageA")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button11'), 1000);
      await buttonA.click();
      await Utils.sleep(2500)
      let buttonB: Component = await driver.waitForComponent(ON.id('PageB_Button1'), 1000);
      await buttonB.click();
      await Utils.sleep(1000)
      let buttonC: Component = await driver.waitForComponent(ON.id('PageC_Button4'), 1000);
      await buttonC.click();
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0760')
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0760 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0680
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0680
     * @tc.desc   : Interruption and continuation effect verification of custom animation router combined stack in
     * landscape/portrait scenarios (back+push)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0680', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0680 start.`);
      Settings.createWindow("testability/pages/router_push/pageA4")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button4_1'), 1000);
      await buttonA.click();
      let buttonB: Component = await driver.waitForComponent(ON.id('PageB_Button4_1'), 1000);
      await buttonB.click();
      let buttonA2: Component = await driver.waitForComponent(ON.id('PageA_Button4_1'), 1000);
      await buttonA2.click();
      Settings.changeWindowOrientation()
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0680')
      Settings.changeWindowOrientation('end')
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0680 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0390
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0390
     * @tc.desc   : Verification of router combined stack interruption and continuation function with system animation
     * disabled (one onclick triggers one back and one push)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0390', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0390 start.`);
      Settings.createWindow("testability/pages/router_push/pageA2")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000);
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button2_3'), 1000);
      await buttonA.click();
      await driver.waitForIdle(500,2000);
      let buttonB: Component = await driver.waitForComponent(ON.id('PageB_Button2_3'), 1000);
      await buttonB.click();
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0390')
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0390 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0590
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0590
     * @tc.desc   : Click verification of custom animation router combined stack interruption and continuation
     * function (push+back)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0590', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0590 start.`);
      Settings.createWindow("testability/pages/router_push/pageA4")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button4_1'), 1000);
      await buttonA.click();
      await Utils.sleep(1000)
      let buttonB: Component = await driver.waitForComponent(ON.id('PageB_Button4_1'), 1000);
      await buttonB.click();
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0590')
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0590 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0730
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0730
     * @tc.desc   : Verification of custom animation router back transition interruption and continuation effect in
     * small window mode
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0730', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0730 start.`);
      Settings.createWindow("testability/pages/router_push/pageA4")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button4_1'), 1000);
      await buttonA.click();
      let buttonB: Component = await driver.waitForComponent(ON.id('PageB_Button4_2'), 1000);
      await buttonB.click();
      let buttonC: Component = await driver.waitForComponent(ON.id('PageC_Button4_2'), 1000);
      await buttonC.click();
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0730')
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0730 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0670
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0670
     * @tc.desc   : Interruption and continuation effect verification of custom animation router combined stack in
     * landscape/portrait scenarios (push+back)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0670', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0670 start.`);
      Settings.createWindow("testability/pages/router_push/pageA4")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button4_1'), 1000);
      await buttonA.click();
      let buttonB: Component = await driver.waitForComponent(ON.id('PageB_Button4_1'), 1000);
      await buttonB.click();
      Settings.changeWindowOrientation()
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0670')
      Settings.changeWindowOrientation('end')
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0670 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0460
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0460
     * @tc.desc   : Verification of custom animation normal router back jump function (back to specified page method)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0460', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0460 start.`);
      Settings.createWindow("testability/pages/router_push/pageA5")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button5_1'), 1000);
      await buttonA.click();
      let buttonB: Component = await driver.waitForComponent(ON.id('PageB_Button5_1'), 1000);
      await buttonB.click();
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0460')
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0460 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0430
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0430
     * @tc.desc   : Verification of custom animation normal router push jump function (pushurl method)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0430', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0430 start.`);
      Settings.createWindow("testability/pages/router_push/pageA4")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button4_1'), 1000);
      await buttonA.click();
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0430')
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0430 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0410
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0410
     * @tc.desc   : Verification of router back transition effect with system animation disabled in parallel
     * worlds scenario
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0410', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0410 start.`);
      Settings.createWindow("testability/pages/router_push/pageA2")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button2_3'), 1000);
      await buttonA.click();
      let buttonB: Component = await driver.waitForComponent(ON.id('PageB_Button2_4'), 1000);
      await buttonB.click();
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0410')
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0410 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0420
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0420
     * @tc.desc   : Verification of router back transition effect with system animation disabled in small window mode
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0420', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0420 start.`);
      Settings.createWindow("testability/pages/router_push/pageA2")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button2_3'), 1000);
      await buttonA.click();
      let buttonB: Component = await driver.waitForComponent(ON.id('PageB_Button2_1'), 1000);
      await buttonB.click();
      let buttonC: Component = await driver.waitForComponent(ON.id('PageC_Button2_3'), 1000);
      await buttonC.click();
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0420')
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0420 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0400
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0400
     * @tc.desc   : Verification of router push transition effect with system animation disabled in parallel worlds
     * scenario
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0400', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0400 start.`);
      Settings.createWindow("testability/pages/router_push/pageA2")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button2_3'), 1000);
      await buttonA.click();
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0400')
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0400 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0490
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0490
     * @tc.desc   : Manual click verification of custom animation router push jump interruption and continuation
     * function (pushurl method)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0490', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0490 start.`);
      Settings.createWindow("testability/pages/router_push/pageA4")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button4_2'), 1000);
      await buttonA.click();
      let buttonB: Component = await driver.waitForComponent(ON.id('PageB_Button4_2'), 1000);
      await buttonB.click();
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0490')
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0490 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0440
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0440
     * @tc.desc   : Verification of custom animation normal router push jump function (pushNamedRoute method)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0440', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0440 start.`);
      Settings.createWindow("testability/pages/router_push/pageA3")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button3_2'), 1000);
      await buttonA.click();
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0440')
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0440 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0580
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0580
     * @tc.desc   : Verification of custom animation router back jump interruption and continuation function (one
     * onclick triggers two back to previous page operations)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0580', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0580 start.`);
      Settings.createWindow("testability/pages/router_push/pageA4")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button4_1'), 1000);
      await buttonA.click();

      let buttonB: Component = await driver.waitForComponent(ON.id('PageB_Button4_2'), 1000);
      await buttonB.click();

      let buttonC: Component = await driver.waitForComponent(ON.id('PageC_Button4_3'), 1000);
      await buttonC.click();

      await driver.waitForIdle(500,2000);

      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0580')
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0580 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0630
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0630
     * @tc.desc   : Verification of custom animation router combined stack interruption and continuation function (one
     * onclick triggers one back and one push)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0630', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0630 start.`);
      Settings.createWindow("testability/pages/router_push/pageA4")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button4_1'), 1000);
      await buttonA.click();

      let buttonB: Component = await driver.waitForComponent(ON.id('PageB_Button4_3'), 1000);
      await buttonB.click();

      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0630')
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0630 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0640
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0640
     * @tc.desc   : Custom animation normal router push in landscape/portrait scenarios
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0640', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0640 start.`);
      Settings.createWindow("testability/pages/router_push/pageA4")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button4_1'), 1000);
      await buttonA.click();
      Settings.changeWindowOrientation()
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0640')
      Settings.changeWindowOrientation('end')
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0640 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0280
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0280
     * @tc.desc   : Verification of normal router push jump function with system animation disabled (pushurl method)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0280', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0280 start.`);
      Settings.createWindow("testability/pages/router_push/pageA2")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button2_2'), 1000);
      await buttonA.click();
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0280')
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0280 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0610
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0610
     * @tc.desc   : Verification of custom animation router combined stack interruption and continuation function (one
     * onclick triggers one push and one back)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0610', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0610 start.`);
      Settings.createWindow("testability/pages/router_push/pageA4")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button4_3'), 1000);
      await buttonA.click();
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0610')
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0610 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0620
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0620
     * @tc.desc   : Click verification of custom animation router combined stack interruption and continuation
     * function (back+push)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0620', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0620 start.`);
      Settings.createWindow("testability/pages/router_push/pageA4")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button4_1'), 1000);
      await buttonA.click();
      let buttonB: Component = await driver.waitForComponent(ON.id('PageB_Button4_1'), 1000);
      await buttonB.click();
      let buttonA2: Component = await driver.waitForComponent(ON.id('PageA_Button4_1'), 1000);
      await buttonA2.click();
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0620')
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0620 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0500
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0500
     * @tc.desc   : Verification of custom animation router push jump interruption and continuation function (one
     * onclick triggers two pushurl)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0500', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0500 start.`);
      Settings.createWindow("testability/pages/router_push/pageA4")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button4_4'), 1000);
      await buttonA.click();
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0500')
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0500 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0510
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0510
     * @tc.desc   : Manual click verification of custom animation router push jump interruption and continuation
     * function (pushNamedRoute method)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0510', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0510 start.`);
      Settings.createWindow("testability/pages/router_push/pageA3")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button3_2'), 1000);
      await buttonA.click();
      let buttonB: Component = await driver.waitForComponent(ON.id('PageB_Button3_3'), 1000);
      await buttonB.click();
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0510')
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0510 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0260
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0260
     * @tc.desc   : Interruption and continuation effect verification of router combined stack in landscape/portrait
     * scenarios (back+push)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0260', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0260 start.`);
      Settings.createWindow("testability/pages/router_push/pageA")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button1'), 1000);
      await buttonA.click();
      let buttonB: Component = await driver.waitForComponent(ON.id('PageB_Button3'), 1000);
      await buttonB.click();
      let buttonA2: Component = await driver.waitForComponent(ON.id('PageA_Button1'), 1000);
      await buttonA2.click();
      Settings.changeWindowOrientation()
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0260')
      Settings.changeWindowOrientation('end')
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0260 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0370
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0370
     * @tc.desc   : Verification of router back jump interruption and continuation function with system animation
     * disabled (one onclick triggers two back to previous page operations)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0370', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0370 start.`);
      Settings.createWindow("testability/pages/router_push/pageA2")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button2_3'), 1000);
      await buttonA.click();
      let buttonB: Component = await driver.waitForComponent(ON.id('PageB_Button2_1'), 1000);
      await buttonB.click();
      let buttonC: Component = await driver.waitForComponent(ON.id('PageC_Button2_4'), 1000);
      await buttonC.click();
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0370')
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0370 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0220
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0220
     * @tc.desc   : Normal router push in landscape/portrait scenarios
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0220', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0220 start.`);
      Settings.createWindow("testability/pages/router_push/pageA")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button1'), 1000);
      await buttonA.click();
      Settings.changeWindowOrientation()
      await Utils.sleep(800)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0220')
      await Utils.sleep(800)
      Settings.changeWindowOrientation('end')
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0220 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0350
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0350
     * @tc.desc   : Normal router push in landscape/portrait scenarios
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0350', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0350 start.`);
      Settings.createWindow("testability/pages/router_push/pageA6")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button6_1'), 1000);
      await buttonA.click();
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0350')
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0350 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0300
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0300
     * @tc.desc   : Verification of normal router back jump function with system animation disabled (back to previous
     * page method)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0300', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0300 start.`);
      Settings.createWindow("testability/pages/router_push/pageA6")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button6_2'), 1000);
      await buttonA.click();
      let buttonB: Component = await driver.waitForComponent(ON.id('PageB_Button6_1'), 1000);
      await buttonB.click();
      await Utils.sleep(800)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0300')
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0300 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0310
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0310
     * @tc.desc   : Verification of normal router back jump function with system animation disabled (back to specified
     * page method)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0310', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0310 start.`);
      Settings.createWindow("testability/pages/router_push/pageA6")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button6_2'), 1000);
      await buttonA.click();
      let buttonB: Component = await driver.waitForComponent(ON.id('PageB_Button6_2'), 1000);
      await buttonB.click();
      await Utils.sleep(800)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0310')
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0310 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0690
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0690
     * @tc.desc   : Interruption and continuation effect verification of custom animation router combined stack in
     * landscape/portrait scenarios (back+back)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0690', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0690 start.`);
      Settings.createWindow("testability/pages/router_push/pageA4")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button4_1'), 1000);
      await buttonA.click();
      let buttonB: Component = await driver.waitForComponent(ON.id('PageB_Button4_2'), 1000);
      await buttonB.click();
      await driver.waitForIdle(500,2000);
      let buttonC: Component = await driver.waitForComponent(ON.id('PageC_Button4_1'), 1000);
      await buttonC.click();
      Settings.changeWindowOrientation()
      await Utils.sleep(800)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0690')
      await Utils.sleep(800)
      Settings.changeWindowOrientation('end')
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0690 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0360
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0360
     * @tc.desc   : Verification of router back jump interruption and continuation function with system animation
     * disabled (one onclick triggers two back to specified page operations)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0360', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0360 start.`);
      Settings.createWindow("testability/pages/router_push/pageA2")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button2_2'), 1000);
      await buttonA.click();
      await driver.waitForIdle(500,2000);
      let buttonA1: Component = await driver.waitForComponent(ON.id('PageC_Button2_4'), 1000);
      await buttonA1.click();
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0360')
      await Utils.sleep(800)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0360 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0030
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0030
     * @tc.desc   : Verification of normal router back jump function (back to previous page method)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0030', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0030 start.`);
      Settings.createWindow("testability/pages/router_push/pageA")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button12'), 1000);
      await buttonA.click();
      await driver.waitForIdle(500,2000);
      let buttonB: Component = await driver.waitForComponent(ON.id('PageB_Button3'), 1000);
      await buttonB.click();
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0030')
      await Utils.sleep(800)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0030 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0050
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0050
     * @tc.desc   : Verification of normal combined jump function (push+back)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0050', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0050 start.`);
      Settings.createWindow("testability/pages/router_push/pageA")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button1'), 1000);
      await buttonA.click();
      await driver.waitForIdle(500,2000);
      let buttonB: Component = await driver.waitForComponent(ON.id('PageB_Button3'), 1000);
      await buttonB.click();
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0050')
      await Utils.sleep(800)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0050 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0150
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0150
     * @tc.desc   : Verification of router back jump interruption and continuation function (one onclick triggers two
     * back to specified page operations)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0150', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0150 start.`);
      Settings.createWindow("testability/pages/router_push/pageA")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button4'), 1000);
      await buttonA.click();
      await driver.waitForIdle(500,2000);
      let buttonC: Component = await driver.waitForComponent(ON.id('PageC_Button2'), 1000);
      await buttonC.click();
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0150')
      await Utils.sleep(800)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0150 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0330
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0330
     * @tc.desc   : Verification of normal combined jump function with system animation disabled (back+push)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0330', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0330 start.`);
      Settings.createWindow("testability/pages/router_push/pageA2")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button2_3'), 1000);
      await buttonA.click();
      await driver.waitForIdle(500,2000);
      let buttonB: Component = await driver.waitForComponent(ON.id('PageB_Button2_4'), 1000);
      await buttonB.click();
      await driver.waitForIdle(500,2000);
      let buttonA2: Component = await driver.waitForComponent(ON.id('PageA_Button2_3'), 1000);
      await buttonA2.click();
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0330')
      await Utils.sleep(800)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0330 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0100
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0100
     * @tc.desc   : Verification of router push jump interruption and continuation function (one onclick triggers two pushNamedRoute)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0100', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0100 start.`);
      Settings.createWindow("testability/pages/router_push/pageA")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button13'), 1000);
      await buttonA.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0100')
      await Utils.sleep(800)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0100 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0480
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0480
     * @tc.desc   : Verification of normal combined navigation functionality (back + push) for custom animated router
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0480', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0480 start.`);
      Settings.createWindow("testability/pages/router_push/pageA4")
      let driver: Driver = Driver.create();
      let buttonA1: Component = await driver.waitForComponent(ON.id('PageA_Button4_1'), 1000);
      await buttonA1.click();
      await driver.waitForIdle(500,2000);
      let buttonB: Component = await driver.waitForComponent(ON.id('PageB_Button4_1'), 1000);
      await buttonB.click();
      await driver.waitForIdle(500,2000);
      let buttonA2: Component = await driver.waitForComponent(ON.id('PageA_Button4_1'), 1000);
      await buttonA2.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot()
      await Utils.sleep(800)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0480 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0780
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0780
     * @tc.desc   : Perform continuous back operations
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0780', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0780 start.`);
      Settings.createWindow("testability/pages/router_push/pages1_32/page01")
      let driver: Driver = Driver.create();
      let buttonInit: Component = await driver.waitForComponent(ON.id('Push_Pages'), 1000);
      await buttonInit.click();
      await driver.waitForIdle(500,2000);
      for (let i = 0; i < 31; i++) {
        let str:string = `${32-i}`
        if (32-i < 10) {
          str = '0' + str
        }
        let buttonId:string = 'Page' + str + '_Back';
        Logger.info('TEST', `buttonId is: ${buttonId}.`);
        let button: Component = await driver.waitForComponent(ON.id(buttonId), 1000);
        await button.click();
      }
      windowSnap.snapShot()
      await Utils.sleep(800)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0780 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0240
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0240
     * @tc.desc   : Validate the effect of interrupted and resumed navigation stack under screen orientation
     * changes (push + push)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0240', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0240 start.`);
      Settings.createWindow("testability/pages/router_push/pageA")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button1'), 1000);
      await buttonA.click();
      let buttonB: Component = await driver.waitForComponent(ON.id('PageB_Button1'), 1000);
      await buttonB.click();
      await Settings.changeWindowOrientation()
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot()
      await Utils.sleep(800)
      await Settings.changeWindowOrientation('end')
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0240 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0320
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0320
     * @tc.desc   : Verification of normal combined navigation functionality (push + back) with system animations disabled
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0320', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0320 start.`);
      Settings.createWindow("testability/pages/router_push/pageA2")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button2_3'), 1000);
      await buttonA.click();
      let buttonB: Component = await driver.waitForComponent(ON.id('PageB_Button2_5'), 1000);
      await buttonB.click();
      windowSnap.snapShot()
      await Utils.sleep(800)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0320 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0130
     * @tc.name   : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0130
     * @tc.desc   : Click verification of router back navigation interruption and resumption functionality (via back last page)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0130', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0130 start.`);
      Settings.createWindow("testability/pages/router_push/pageA")
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.waitForComponent(ON.id('PageA_Button1'), 1000);
      await buttonA.click();
      let buttonB: Component = await driver.waitForComponent(ON.id('PageB_Button1'), 1000);
      await buttonB.click();
      let buttonC: Component = await driver.waitForComponent(ON.id('PageC_Button6'), 1000);
      await buttonC.click();
      windowSnap.snapShot()
      await Utils.sleep(800)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0130 finish.`);
      done()
    })
  })
}
