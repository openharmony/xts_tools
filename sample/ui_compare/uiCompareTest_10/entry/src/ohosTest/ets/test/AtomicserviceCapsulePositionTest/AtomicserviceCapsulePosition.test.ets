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


export default function AtomicserviceCapsulePosition() {

  describe('AtomicserviceCapsulePosition', () => {
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
     * @tc.number : SUB_ACE_UI_ABILITY_ATOMICSERVICE_CAPSULE_POSITION_0010
     * @tc.name   : SUB_ACE_UI_ABILITY_ATOMICSERVICE_CAPSULE_POSITION_0010
     * @tc.desc   : The getBarRect API works normally.
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_ABILITY_ATOMICSERVICE_CAPSULE_POSITION_0010', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_ATOMICSERVICE_CAPSULE_POSITION_0010 start.`);
      Settings.createWindow("testability/pages/AtomicserviceCapsulePosition/AtomicserviceCapsulePosition0010")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(5000, 8000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_ATOMICSERVICE_CAPSULE_POSITION_0010 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_ABILITY_ATOMICSERVICE_CAPSULE_POSITION_0020
     * @tc.name   : SUB_ACE_UI_ABILITY_ATOMICSERVICE_CAPSULE_POSITION_0020
     * @tc.desc   : Get the relative position of the capsule: x, y, width, height
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_ABILITY_ATOMICSERVICE_CAPSULE_POSITION_0020', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_ATOMICSERVICE_CAPSULE_POSITION_0020 start.`);
      Settings.createWindow("testability/pages/AtomicserviceCapsulePosition/AtomicserviceCapsulePosition0020")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(5000, 8000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_ATOMICSERVICE_CAPSULE_POSITION_0020 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_ABILITY_ATOMICSERVICE_CAPSULE_POSITION_0030
     * @tc.name   : SUB_ACE_UI_ABILITY_ATOMICSERVICE_CAPSULE_POSITION_0030
     * @tc.desc   : Get the relative position of the capsule: only get x
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_ABILITY_ATOMICSERVICE_CAPSULE_POSITION_0030', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_ATOMICSERVICE_CAPSULE_POSITION_0030 start.`);
      Settings.createWindow("testability/pages/AtomicserviceCapsulePosition/AtomicserviceCapsulePosition0030")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(5000, 8000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_ATOMICSERVICE_CAPSULE_POSITION_0030 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_ABILITY_ATOMICSERVICE_CAPSULE_POSITION_0040
     * @tc.name   : SUB_ACE_UI_ABILITY_ATOMICSERVICE_CAPSULE_POSITION_0040
     * @tc.desc   : Get the relative position of the capsule: only get y
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_ABILITY_ATOMICSERVICE_CAPSULE_POSITION_0040', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_ATOMICSERVICE_CAPSULE_POSITION_0040 start.`);
      Settings.createWindow("testability/pages/AtomicserviceCapsulePosition/AtomicserviceCapsulePosition0040")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(5000, 8000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_ATOMICSERVICE_CAPSULE_POSITION_0040 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_ABILITY_ATOMICSERVICE_CAPSULE_POSITION_0050
     * @tc.name   : SUB_ACE_UI_ABILITY_ATOMICSERVICE_CAPSULE_POSITION_0050
     * @tc.desc   : Get the relative position of the capsule: only get width
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_ABILITY_ATOMICSERVICE_CAPSULE_POSITION_0050', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_ATOMICSERVICE_CAPSULE_POSITION_0050 start.`);
      Settings.createWindow("testability/pages/AtomicserviceCapsulePosition/AtomicserviceCapsulePosition0050")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(5000, 8000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_ATOMICSERVICE_CAPSULE_POSITION_0050 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_ABILITY_ATOMICSERVICE_CAPSULE_POSITION_0060
     * @tc.name   : SUB_ACE_UI_ABILITY_ATOMICSERVICE_CAPSULE_POSITION_0060
     * @tc.desc   : Get the relative position of the capsule: only get height
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_ABILITY_ATOMICSERVICE_CAPSULE_POSITION_0060', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_ATOMICSERVICE_CAPSULE_POSITION_0060 start.`);
      Settings.createWindow("testability/pages/AtomicserviceCapsulePosition/AtomicserviceCapsulePosition0060")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(5000, 8000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_ATOMICSERVICE_CAPSULE_POSITION_0060 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_ABILITY_ATOMICSERVICE_CAPSULE_POSITION_0070
     * @tc.name   : SUB_ACE_UI_ABILITY_ATOMICSERVICE_CAPSULE_POSITION_0070
     * @tc.desc   : Get the relative position of the capsule: only get x and y
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_ABILITY_ATOMICSERVICE_CAPSULE_POSITION_0070', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_ATOMICSERVICE_CAPSULE_POSITION_0070 start.`);
      Settings.createWindow("testability/pages/AtomicserviceCapsulePosition/AtomicserviceCapsulePosition0070")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(5000, 8000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_ATOMICSERVICE_CAPSULE_POSITION_0070 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_ABILITY_ATOMICSERVICE_CAPSULE_POSITION_0080
     * @tc.name   : SUB_ACE_UI_ABILITY_ATOMICSERVICE_CAPSULE_POSITION_0080
     * @tc.desc   : Get the relative position of the capsule: only get width and height
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_ABILITY_ATOMICSERVICE_CAPSULE_POSITION_0080', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_ATOMICSERVICE_CAPSULE_POSITION_0080 start.`);
      Settings.createWindow("testability/pages/AtomicserviceCapsulePosition/AtomicserviceCapsulePosition0080")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(5000, 8000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_ATOMICSERVICE_CAPSULE_POSITION_0080 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_ABILITY_ATOMICSERVICE_CAPSULE_POSITION_0130
     * @tc.name   : SUB_ACE_UI_ABILITY_ATOMICSERVICE_CAPSULE_POSITION_0130
     * @tc.desc   : Continuously get the relative position of the capsule 50 times
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_ABILITY_ATOMICSERVICE_CAPSULE_POSITION_0130', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_ATOMICSERVICE_CAPSULE_POSITION_0130 start.`);
      Settings.createWindow("testability/pages/AtomicserviceCapsulePosition/AtomicserviceCapsulePosition0130")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(5000, 8000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_ATOMICSERVICE_CAPSULE_POSITION_0130 finish.`);
      done()
    })

  })
}