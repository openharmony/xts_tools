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

export default function OnClickDistanceThreshold() {

  describe('OnClickDistanceThreshold', () => {
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
     * @tc.number : SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0010
     * @tc.name   : SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0010
     * @tc.desc   : ETS - distanceThreshold is 200.5 vp, movement distance greater than 200.5
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */

    it('SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0010', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0010 start.`);
      Settings.createWindow("testability/pages/OnClickDistanceThreshold/OnClickDistanceThreshold0010")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(5000,10000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0010 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0020
     * @tc.name   : SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0020
     * @tc.desc   : ETS - distanceThreshold is 200.5 vp, movement distance less than or equal to 200.5
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */

    it('SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0020', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0020 start.`);
      Settings.createWindow("testability/pages/OnClickDistanceThreshold/OnClickDistanceThreshold0020")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(5000,10000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0020 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0030
     * @tc.name   : SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0030
     * @tc.desc   : ETS - distanceThreshold is 300 vp, movement distance greater than or equal to 300
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */

    it('SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0030', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0030 start.`);
      Settings.createWindow("testability/pages/OnClickDistanceThreshold/OnClickDistanceThreshold0030")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(5000,10000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0030 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0040
     * @tc.name   : SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0040
     * @tc.desc   : ETS - distanceThreshold is 300 vp, movement distance less than 300
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */

    it('SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0040', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0040 start.`);
      Settings.createWindow("testability/pages/OnClickDistanceThreshold/OnClickDistanceThreshold0040")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(5000,10000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0040 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0050
     * @tc.name   : SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0050
     * @tc.desc   : ETS - distanceThreshold is 0 vp, movement distance greater than or equal to 0
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */

    it('SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0050', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0050 start.`);
      Settings.createWindow("testability/pages/OnClickDistanceThreshold/OnClickDistanceThreshold0050")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(5000,10000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0050 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0060
     * @tc.name   : SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0060
     * @tc.desc   : ETS - distanceThreshold is 0 vp, movement distance equals to 0
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */

    it('SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0060', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0060 start.`);
      Settings.createWindow("testability/pages/OnClickDistanceThreshold/OnClickDistanceThreshold0060")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(5000,10000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0060 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0070
     * @tc.name   : SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0070
     * @tc.desc   : ETS - distanceThreshold is -200 vp, click button
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */

    it('SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0070', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0070 start.`);
      Settings.createWindow("testability/pages/OnClickDistanceThreshold/OnClickDistanceThreshold0070")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(5000,10000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0070 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0080
     * @tc.name   : SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0080
     * @tc.desc   : ETS - distanceThreshold is -200 vp, movement distance greater than or equal to -200
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */

    it('SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0080', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0080 start.`);
      Settings.createWindow("testability/pages/OnClickDistanceThreshold/OnClickDistanceThreshold0080")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(5000,10000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0080 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0090
     * @tc.name   : SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0090
     * @tc.desc   : ETS - distanceThreshold is undefined, click button
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */

    it('SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0090', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0090 start.`);
      Settings.createWindow("testability/pages/OnClickDistanceThreshold/OnClickDistanceThreshold0090")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(5000,10000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0090 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0100
     * @tc.name   : SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0100
     * @tc.desc   : ETS - distanceThreshold is undefined, movement distance greater than or equal to certain value
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */

    it('SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0100', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0100 start.`);
      Settings.createWindow("testability/pages/OnClickDistanceThreshold/OnClickDistanceThreshold0100")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(5000,10000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0100 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0110
     * @tc.name   : SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0110
     * @tc.desc   : ETS - distanceThreshold is empty, slide within component area
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */

    it('SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0110', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0110 start.`);
      Settings.createWindow("testability/pages/OnClickDistanceThreshold/OnClickDistanceThreshold0110")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(5000,10000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0110 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0120
     * @tc.name   : SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0120
     * @tc.desc   : ETS - distanceThreshold is empty, slide out of component area
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */

    it('SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0120', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0120 start.`);
      Settings.createWindow("testability/pages/OnClickDistanceThreshold/OnClickDistanceThreshold0120")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(5000,10000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0120 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0130
     * @tc.name   : SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0130
     * @tc.desc   : ETS – distanceThreshold value is less than the component area
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */

    it('SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0130', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0130 start.`);
      Settings.createWindow("testability/pages/OnClickDistanceThreshold/OnClickDistanceThreshold0130")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(5000,10000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0130 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0140
     * @tc.name   : SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0140
     * @tc.desc   : ETS - distanceThreshold value is less than the component area, repeat test 10 times
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */

    it('SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0140', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0140 start.`);
      Settings.createWindow("testability/pages/OnClickDistanceThreshold/OnClickDistanceThreshold0140")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(5000,10000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0140 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0150
     * @tc.name   : SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0150
     * @tc.desc   : ETS - distanceThreshold value is less than the component area, slide from outside into component
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */

    it('SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0150', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0150 start.`);
      Settings.createWindow("testability/pages/OnClickDistanceThreshold/OnClickDistanceThreshold0150")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(5000,10000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0150 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0160
     * @tc.name   : SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0160
     * @tc.desc   : ETS - distanceThreshold value is less than the component area, slide from inside to outside component
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */

    it('SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0160', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0160 start.`);
      Settings.createWindow("testability/pages/OnClickDistanceThreshold/OnClickDistanceThreshold0160")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(5000,10000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0160 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0170
     * @tc.name   : SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0170
     * @tc.desc   : ETS - distanceThreshold value is less than the component area, press and release in component without moving
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */

    it('SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0170', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0170 start.`);
      Settings.createWindow("testability/pages/OnClickDistanceThreshold/OnClickDistanceThreshold0170")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(5000,10000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0170 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0180
     * @tc.name   : SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0180
     * @tc.desc   : ETS - distanceThreshold value is less than the component area, move in component beyond threshold, repeat 10 times
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */

    it('SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0180', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0180 start.`);
      Settings.createWindow("testability/pages/OnClickDistanceThreshold/OnClickDistanceThreshold0180")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(5000,10000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0180 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0190
     * @tc.name   : SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0190
     * @tc.desc   : ETS - distanceThreshold value is less than the component area, slide from outside to inside beyond threshold
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */

    it('SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0190', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0190 start.`);
      Settings.createWindow("testability/pages/OnClickDistanceThreshold/OnClickDistanceThreshold0190")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(5000,10000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0190 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0200
     * @tc.name   : SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0200
     * @tc.desc   : ETS - distanceThreshold value is less than the component area, slide from inside to outside then back inside
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */

    it('SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0200', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0200 start.`);
      Settings.createWindow("testability/pages/OnClickDistanceThreshold/OnClickDistanceThreshold0200")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(5000,10000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0200 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0210
     * @tc.name   : SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0210
     * @tc.desc   : ETS - distanceThreshold value is less than the component area, slide from outside to inside then back outside
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */

    it('SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0210', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0210 start.`);
      Settings.createWindow("testability/pages/OnClickDistanceThreshold/OnClickDistanceThreshold0210")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(5000,10000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ONCLICK_DISTANCETHRESHOLD_0210 finish.`);
      done()
    })


  })
}