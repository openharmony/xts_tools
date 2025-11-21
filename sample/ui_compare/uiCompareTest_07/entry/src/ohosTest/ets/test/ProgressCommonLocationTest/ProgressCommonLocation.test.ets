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

export default function ProgressCommonLocation() {

  describe('ProgressCommonLocation', () => {
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
     * @tc.number : SUB_ACE_UI_PROGRESS_COMMON_LOCATION_0003
     * @tc.name   : SUB_ACE_UI_PROGRESS_COMMON_LOCATION_0003
     * @tc.type   : Function
     * @tc.desc   : For the Eclipse-type Progress, set the direction to Direction.Ltr.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_PROGRESS_COMMON_LOCATION_0003', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_PROGRESS_COMMON_LOCATION_0003 start.`);
      Settings.createWindow("testability/pages/ProgressCommonLocation/ProgressCommonLocation0003")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_PROGRESS_COMMON_LOCATION_0003 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_PROGRESS_COMMON_LOCATION_0002
     * @tc.name   : SUB_ACE_UI_PROGRESS_COMMON_LOCATION_0002
     * @tc.type   : Function
     * @tc.desc   : For the Linear-type Progress, set the direction to Direction.Rtl.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_PROGRESS_COMMON_LOCATION_0002', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_PROGRESS_COMMON_LOCATION_0002 start.`);
      Settings.createWindow("testability/pages/ProgressCommonLocation/ProgressCommonLocation0002")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_PROGRESS_COMMON_LOCATION_0002 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_PROGRESS_COMMON_LOCATION_0006
     * @tc.name   : SUB_ACE_UI_PROGRESS_COMMON_LOCATION_0006
     * @tc.type   : Function
     * @tc.desc   : For the ScaleRing-type Progress, set the direction to Direction.Rtl.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_PROGRESS_COMMON_LOCATION_0006', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_PROGRESS_COMMON_LOCATION_0006 start.`);
      Settings.createWindow("testability/pages/ProgressCommonLocation/ProgressCommonLocation0006")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_PROGRESS_COMMON_LOCATION_0006 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_PROGRESS_COMMON_LOCATION_0007
     * @tc.name   : SUB_ACE_UI_PROGRESS_COMMON_LOCATION_0007
     * @tc.type   : Function
     * @tc.desc   : For the Capsule-type Progress, set the direction to Direction.Ltr.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_PROGRESS_COMMON_LOCATION_0007', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_PROGRESS_COMMON_LOCATION_0007 start.`);
      Settings.createWindow("testability/pages/ProgressCommonLocation/ProgressCommonLocation0007")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_PROGRESS_COMMON_LOCATION_0007 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_PROGRESS_COMMON_LOCATION_0010
     * @tc.name   : SUB_ACE_UI_PROGRESS_COMMON_LOCATION_0010
     * @tc.type   : Function
     * @tc.desc   : For the Ring-type Progress, set the direction to Direction.Rtl.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_PROGRESS_COMMON_LOCATION_0010', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_PROGRESS_COMMON_LOCATION_0010 start.`);
      Settings.createWindow("testability/pages/ProgressCommonLocation/ProgressCommonLocation0010")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_PROGRESS_COMMON_LOCATION_0010 finish.`);
      done()
    })







  })
}
