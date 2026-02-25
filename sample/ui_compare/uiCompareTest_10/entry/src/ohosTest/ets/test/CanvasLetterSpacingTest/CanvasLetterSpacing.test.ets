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


export default function CanvasLetterSpacing() {

  describe('CanvasLetterSpacing', () => {
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
     * @tc.number : SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0010
     * @tc.name   : SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0010
     * @tc.desc   : Initialize without specifying LengthMetricsUnit, and set letterSpacing="10".
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 4
     */
    it('SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0010', Level.LEVEL4, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0010 start.`);
      Settings.createWindow("testability/pages/CanvasLetterSpacing/CanvasLetterSpacing0010")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(5000, 8000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0010 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0020
     * @tc.name   : SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0020
     * @tc.desc   : Initialize without specifying LengthMetricsUnit, and set letterSpacing="10px".
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 4
     */
    it('SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0020', Level.LEVEL4, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0020 start.`);
      Settings.createWindow("testability/pages/CanvasLetterSpacing/CanvasLetterSpacing0020")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(5000, 8000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0020 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0030
     * @tc.name   : SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0030
     * @tc.desc   : Initialize without specifying LengthMetricsUnit, and set letterSpacing="10vp".
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 4
     */
    it('SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0030', Level.LEVEL4, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0030 start.`);
      Settings.createWindow("testability/pages/CanvasLetterSpacing/CanvasLetterSpacing0030")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(5000, 8000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0030 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0040
     * @tc.name   : SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0040
     * @tc.desc   : Initialize without specifying LengthMetricsUnit, and set letterSpacing="10fp".
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 4
     */
    it('SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0040', Level.LEVEL4, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0040 start.`);
      Settings.createWindow("testability/pages/CanvasLetterSpacing/CanvasLetterSpacing0040")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(5000, 8000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0040 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0050
     * @tc.name   : SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0050
     * @tc.desc   : Initialize without specifying LengthMetricsUnit, and set letterSpacing="80%".
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 4
     */
    it('SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0050', Level.LEVEL4, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0050 start.`);
      Settings.createWindow("testability/pages/CanvasLetterSpacing/CanvasLetterSpacing0050")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(5000, 8000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0050 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0060
     * @tc.name   : SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0060
     * @tc.desc   : Initialize without specifying LengthMetricsUnit, and set letterSpacing="10lpx".
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 4
     */
    it('SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0060', Level.LEVEL4, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0060 start.`);
      Settings.createWindow("testability/pages/CanvasLetterSpacing/CanvasLetterSpacing0060")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(5000, 8000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0060 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0070
     * @tc.name   : SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0070
     * @tc.desc   : Use LengthMetricsUnit, set unit to new LengthMetrics(5, LengthUnit.PX).
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 4
     */
    it('SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0070', Level.LEVEL4, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0070 start.`);
      Settings.createWindow("testability/pages/CanvasLetterSpacing/CanvasLetterSpacing0070")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(5000, 8000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0070 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0080
     * @tc.name   : SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0080
     * @tc.desc   : Use LengthMetricsUnit, set unit to new LengthMetrics(5, LengthUnit.VP).
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 4
     */
    it('SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0080', Level.LEVEL4, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0080 start.`);
      Settings.createWindow("testability/pages/CanvasLetterSpacing/CanvasLetterSpacing0080")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(5000, 8000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0080 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0090
     * @tc.name   : SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0090
     * @tc.desc   : Use LengthMetricsUnit, set unit to new LengthMetrics(5, LengthUnit.FP).
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 4
     */
    it('SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0090', Level.LEVEL4, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0090 start.`);
      Settings.createWindow("testability/pages/CanvasLetterSpacing/CanvasLetterSpacing0090")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(5000, 8000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0090 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0100
     * @tc.name   : SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0100
     * @tc.desc   : Use LengthMetricsUnit, set unit to new LengthMetrics(0.5, LengthUnit.PERCENT).
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 4
     */
    it('SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0100', Level.LEVEL4, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0100 start.`);
      Settings.createWindow("testability/pages/CanvasLetterSpacing/CanvasLetterSpacing0100")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(5000, 8000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0100 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0110
     * @tc.name   : SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0110
     * @tc.desc   : Use LengthMetricsUnit, set unit to new LengthMetrics(5, LengthUnit.LPX).
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 4
     */
    it('SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0110', Level.LEVEL4, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0110 start.`);
      Settings.createWindow("testability/pages/CanvasLetterSpacing/CanvasLetterSpacing0110")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(5000, 8000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0110 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0120
     * @tc.name   : SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0120
     * @tc.desc   : Set letterSpacing after text length is greater than fillText maximum width.
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 4
     */
    it('SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0120', Level.LEVEL4, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0120 start.`);
      Settings.createWindow("testability/pages/CanvasLetterSpacing/CanvasLetterSpacing0120")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(5000, 8000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0120 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0130
     * @tc.name   : SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0130
     * @tc.desc   : Set letterSpacing after text length fillText maximum width are both greater than Canvas width.
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 4
     */
    it('SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0130', Level.LEVEL4, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0130 start.`);
      Settings.createWindow("testability/pages/CanvasLetterSpacing/CanvasLetterSpacing0130")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(5000, 8000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0130 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0140
     * @tc.name   : SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0140
     * @tc.desc   : Set spacing to negative number.
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 4
     */
    it('SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0140', Level.LEVEL4, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0140 start.`);
      Settings.createWindow("testability/pages/CanvasLetterSpacing/CanvasLetterSpacing0140")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(5000, 8000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0140 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0150
     * @tc.name   : SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0150
     * @tc.desc   : Use abnormal string "aaa".
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 4
     */
    it('SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0150', Level.LEVEL4, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0150 start.`);
      Settings.createWindow("testability/pages/CanvasLetterSpacing/CanvasLetterSpacing0150")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(5000, 8000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0150 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0160
     * @tc.name   : SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0160
     * @tc.desc   : Initialize specifying LengthMetricsUnit as PX, without specifying unit letterSpacing="10".
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 4
     */
    it('SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0160', Level.LEVEL4, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0160 start.`);
      Settings.createWindow("testability/pages/CanvasLetterSpacing/CanvasLetterSpacing0160")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(5000, 8000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0160 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0170
     * @tc.name   : SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0170
     * @tc.desc   : Initialize specifying LengthMetricsUnit as PX, specifying unit letterSpacing="10vp".
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 4
     */
    it('SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0170', Level.LEVEL4, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0170 start.`);
      Settings.createWindow("testability/pages/CanvasLetterSpacing/CanvasLetterSpacing0170")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(5000, 8000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0170 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0180
     * @tc.name   : SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0180
     * @tc.desc   : Initialize specifying LengthMetricsUnit as VP, without specifying unit letterSpacing="10".
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 4
     */
    it('SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0180', Level.LEVEL4, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0180 start.`);
      Settings.createWindow("testability/pages/CanvasLetterSpacing/CanvasLetterSpacing0180")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(5000, 8000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0180 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0190
     * @tc.name   : SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0190
     * @tc.desc   : Initialize specifying LengthMetricsUnit as VP, specifying unit letterSpacing="10vp".
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 4
     */
    it('SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0190', Level.LEVEL4, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0190 start.`);
      Settings.createWindow("testability/pages/CanvasLetterSpacing/CanvasLetterSpacing0190")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(5000, 8000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0190 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0200
     * @tc.name   : SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0200
     * @tc.desc   : Continuously set two letterSpacing properties, one valid value and one invalid value.
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 4
     */
    it('SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0200', Level.LEVEL4, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0200 start.`);
      Settings.createWindow("testability/pages/CanvasLetterSpacing/CanvasLetterSpacing0200")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(5000, 8000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_LETTERSPACING_0200 finish.`);
      done()
    })

  })
}