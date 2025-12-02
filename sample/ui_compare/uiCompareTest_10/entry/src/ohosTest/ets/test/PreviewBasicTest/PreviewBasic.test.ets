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

export default function PreviewBasic() {

  describe('PreviewBasic', () => {
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
     * @tc.number : SUB_ACE_PREVIEW_BASIC_0010
     * @tc.name   : SUB_ACE_PREVIEW_BASIC_0010
     * @tc.desc   : Preview of the Blank component
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 4
     */

    it('SUB_ACE_PREVIEW_BASIC_0010', Level.LEVEL4, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_PREVIEW_BASIC_0010 start.`);
      Settings.createWindow("testability/pages/PreviewBasic/PreviewBasic0010")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(5000,8000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_PREVIEW_BASIC_0010 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_PREVIEW_BASIC_0030
     * @tc.name   : SUB_ACE_PREVIEW_BASIC_0030
     * @tc.desc   : Preview of the DataPanel component
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 4
     */

    it('SUB_ACE_PREVIEW_BASIC_0030', Level.LEVEL4, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_PREVIEW_BASIC_0030 start.`);
      Settings.createWindow("testability/pages/PreviewBasic/PreviewBasic0030")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(5000,8000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_PREVIEW_BASIC_0030 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_PREVIEW_BASIC_0050
     * @tc.name   : SUB_ACE_PREVIEW_BASIC_0050
     * @tc.desc   : Preview of the Gauge component
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 4
     */

    it('SUB_ACE_PREVIEW_BASIC_0050', Level.LEVEL4, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_PREVIEW_BASIC_0050 start.`);
      Settings.createWindow("testability/pages/PreviewBasic/PreviewBasic0050")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(5000,8000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_PREVIEW_BASIC_0050 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_PREVIEW_BASIC_0090
     * @tc.name   : SUB_ACE_PREVIEW_BASIC_0090
     * @tc.desc   : Preview of the Marquee component
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 4
     */

    it('SUB_ACE_PREVIEW_BASIC_0090', Level.LEVEL4, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_PREVIEW_BASIC_0090 start.`);
      Settings.createWindow("testability/pages/PreviewBasic/PreviewBasic0090")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(5000,8000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_PREVIEW_BASIC_0090 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_PREVIEW_BASIC_0100
     * @tc.name   : SUB_ACE_PREVIEW_BASIC_0100
     * @tc.desc   : Preview of the NavDestination component
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 4
     */

    it('SUB_ACE_PREVIEW_BASIC_0100', Level.LEVEL4, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_PREVIEW_BASIC_0100 start.`);
      Settings.createWindow("testability/pages/PreviewBasic/PreviewBasic0100")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(5000,8000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_PREVIEW_BASIC_0100 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_PREVIEW_BASIC_0120
     * @tc.name   : SUB_ACE_PREVIEW_BASIC_0120
     * @tc.desc   : Preview of the NavRouter component
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 4
     */

    it('SUB_ACE_PREVIEW_BASIC_0120', Level.LEVEL4, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_PREVIEW_BASIC_0120 start.`);
      Settings.createWindow("testability/pages/PreviewBasic/PreviewBasic0120")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(5000,8000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_PREVIEW_BASIC_0120 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_PREVIEW_BASIC_0180
     * @tc.name   : SUB_ACE_PREVIEW_BASIC_0180
     * @tc.desc   : Preview of the Search component
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 4
     */

    it('SUB_ACE_PREVIEW_BASIC_0180', Level.LEVEL4, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_PREVIEW_BASIC_0180 start.`);
      Settings.createWindow("testability/pages/PreviewBasic/PreviewBasic0180")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(5000,8000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_PREVIEW_BASIC_0180 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_PREVIEW_BASIC_0190
     * @tc.name   : SUB_ACE_PREVIEW_BASIC_0190
     * @tc.desc   : Preview of the Slider component
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 4
     */

    it('SUB_ACE_PREVIEW_BASIC_0190', Level.LEVEL4, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_PREVIEW_BASIC_0190 start.`);
      Settings.createWindow("testability/pages/PreviewBasic/PreviewBasic0190")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(5000,8000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_PREVIEW_BASIC_0190 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_PREVIEW_BASIC_0220
     * @tc.name   : SUB_ACE_PREVIEW_BASIC_0220
     * @tc.desc   : Preview of the Stepper component
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 4
     */

    it('SUB_ACE_PREVIEW_BASIC_0220', Level.LEVEL4, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_PREVIEW_BASIC_0220 start.`);
      Settings.createWindow("testability/pages/PreviewBasic/PreviewBasic0220")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(5000,8000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_PREVIEW_BASIC_0220 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_PREVIEW_BASIC_0230
     * @tc.name   : SUB_ACE_PREVIEW_BASIC_0230
     * @tc.desc   : Preview of the TextArea component
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 4
     */

    it('SUB_ACE_PREVIEW_BASIC_0230', Level.LEVEL4, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_PREVIEW_BASIC_0230 start.`);
      Settings.createWindow("testability/pages/PreviewBasic/PreviewBasic0230")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(5000,8000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_PREVIEW_BASIC_0230 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_PREVIEW_BASIC_0240
     * @tc.name   : SUB_ACE_PREVIEW_BASIC_0240
     * @tc.desc   : Preview of the TextClock component
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 4
     */

    it('SUB_ACE_PREVIEW_BASIC_0240', Level.LEVEL4, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_PREVIEW_BASIC_0240 start.`);
      Settings.createWindow("testability/pages/PreviewBasic/PreviewBasic0240")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(5000,8000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_PREVIEW_BASIC_0240 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_PREVIEW_BASIC_0260
     * @tc.name   : SUB_ACE_PREVIEW_BASIC_0260
     * @tc.desc   : Preview of the TextTimer component
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 4
     */

    it('SUB_ACE_PREVIEW_BASIC_0260', Level.LEVEL4, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_PREVIEW_BASIC_0260 start.`);
      Settings.createWindow("testability/pages/PreviewBasic/PreviewBasic0260")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(5000,8000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_PREVIEW_BASIC_0260 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_PREVIEW_BASIC_0280
     * @tc.name   : SUB_ACE_PREVIEW_BASIC_0280
     * @tc.desc   : Preview of the Toggle component
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 4
     */

    it('SUB_ACE_PREVIEW_BASIC_0280', Level.LEVEL4, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_PREVIEW_BASIC_0280 start.`);
      Settings.createWindow("testability/pages/PreviewBasic/PreviewBasic0280")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(5000,8000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_PREVIEW_BASIC_0280 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_PREVIEW_BASIC_0320
     * @tc.name   : SUB_ACE_PREVIEW_BASIC_0320
     * @tc.desc   : The previewer supports Calendar
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 4
     */

    it('SUB_ACE_PREVIEW_BASIC_0320', Level.LEVEL4, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_PREVIEW_BASIC_0320 start.`);
      Settings.createWindow("testability/pages/PreviewBasic/PreviewBasic0320")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(5000,8000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_PREVIEW_BASIC_0320 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_PREVIEW_BASIC_0330
     * @tc.name   : SUB_ACE_PREVIEW_BASIC_0330
     * @tc.desc   : The previewer supports Counter
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 4
     */

    it('SUB_ACE_PREVIEW_BASIC_0330', Level.LEVEL4, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_PREVIEW_BASIC_0330 start.`);
      Settings.createWindow("testability/pages/PreviewBasic/PreviewBasic0330")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(5000,8000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_PREVIEW_BASIC_0330 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_PREVIEW_BASIC_0350
     * @tc.name   : SUB_ACE_PREVIEW_BASIC_0350
     * @tc.desc   : The previewer supports DataPicker
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 4
     */

    it('SUB_ACE_PREVIEW_BASIC_0350', Level.LEVEL4, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_PREVIEW_BASIC_0350 start.`);
      Settings.createWindow("testability/pages/PreviewBasic/PreviewBasic0350")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(5000,8000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_PREVIEW_BASIC_0350 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_PREVIEW_BASIC_0370
     * @tc.name   : SUB_ACE_PREVIEW_BASIC_0370
     * @tc.desc   : The previewer supports Panel
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 4
     */

    it('SUB_ACE_PREVIEW_BASIC_0370', Level.LEVEL4, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_PREVIEW_BASIC_0370 start.`);
      Settings.createWindow("testability/pages/PreviewBasic/PreviewBasic0370")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(5000,8000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_PREVIEW_BASIC_0370 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_PREVIEW_BASIC_0380
     * @tc.name   : SUB_ACE_PREVIEW_BASIC_0380
     * @tc.desc   : The previewer supports PatternLock
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 4
     */

    it('SUB_ACE_PREVIEW_BASIC_0380', Level.LEVEL4, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_PREVIEW_BASIC_0380 start.`);
      Settings.createWindow("testability/pages/PreviewBasic/PreviewBasic0380")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(5000,8000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_PREVIEW_BASIC_0380 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_PREVIEW_BASIC_0400
     * @tc.name   : SUB_ACE_PREVIEW_BASIC_0400
     * @tc.desc   : The previewer supports Refresh
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 4
     */

    it('SUB_ACE_PREVIEW_BASIC_0400', Level.LEVEL4, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_PREVIEW_BASIC_0400 start.`);
      Settings.createWindow("testability/pages/PreviewBasic/PreviewBasic0400")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(5000,8000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_PREVIEW_BASIC_0400 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_PREVIEW_BASIC_0460
     * @tc.name   : SUB_ACE_PREVIEW_BASIC_0460
     * @tc.desc   : The previewer supports image effects
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 4
     */

    it('SUB_ACE_PREVIEW_BASIC_0460', Level.LEVEL4, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_PREVIEW_BASIC_0460 start.`);
      Settings.createWindow("testability/pages/PreviewBasic/PreviewBasic0460")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(5000,8000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_PREVIEW_BASIC_0460 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_PREVIEW_BASIC_0470
     * @tc.name   : SUB_ACE_PREVIEW_BASIC_0470
     * @tc.desc   : The previewer supports Graphics transformation
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 4
     */

    it('SUB_ACE_PREVIEW_BASIC_0470', Level.LEVEL4, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_PREVIEW_BASIC_0470 start.`);
      Settings.createWindow("testability/pages/PreviewBasic/PreviewBasic0470")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(5000,8000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_PREVIEW_BASIC_0470 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_PREVIEW_BASIC_0510
     * @tc.name   : SUB_ACE_PREVIEW_BASIC_0510
     * @tc.desc   : The previewer supports Click control
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 4
     */

    it('SUB_ACE_PREVIEW_BASIC_0510', Level.LEVEL4, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_PREVIEW_BASIC_0510 start.`);
      Settings.createWindow("testability/pages/PreviewBasic/PreviewBasic0510")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(5000,8000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_PREVIEW_BASIC_0510 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_PREVIEW_BASIC_0530
     * @tc.name   : SUB_ACE_PREVIEW_BASIC_0530
     * @tc.desc   : The previewer supports Disable control
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 4
     */

    it('SUB_ACE_PREVIEW_BASIC_0530', Level.LEVEL4, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_PREVIEW_BASIC_0530 start.`);
      Settings.createWindow("testability/pages/PreviewBasic/PreviewBasic0530")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(5000,8000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_PREVIEW_BASIC_0530 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_PREVIEW_BASIC_0540
     * @tc.name   : SUB_ACE_PREVIEW_BASIC_0540
     * @tc.desc   : The previewer supports Background settings
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 4
     */

    it('SUB_ACE_PREVIEW_BASIC_0540', Level.LEVEL4, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_PREVIEW_BASIC_0540 start.`);
      Settings.createWindow("testability/pages/PreviewBasic/PreviewBasic0540")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(5000,8000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_PREVIEW_BASIC_0540 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_PREVIEW_BASIC_0550
     * @tc.name   : SUB_ACE_PREVIEW_BASIC_0550
     * @tc.desc   : The previewer supports Background settings
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 4
     */

    it('SUB_ACE_PREVIEW_BASIC_0550', Level.LEVEL4, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_PREVIEW_BASIC_0550 start.`);
      Settings.createWindow("testability/pages/PreviewBasic/PreviewBasic0550")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(5000,8000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_PREVIEW_BASIC_0550 finish.`);
      done()
    })















  })
}