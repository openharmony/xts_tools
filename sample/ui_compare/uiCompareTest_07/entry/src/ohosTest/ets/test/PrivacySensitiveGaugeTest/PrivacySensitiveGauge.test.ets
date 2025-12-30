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

export default function PrivacySensitiveGauge() {

  describe('PrivacySensitiveGauge', () => {
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
     * @tc.number : SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0040
     * @tc.name   : SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0040
     * @tc.type   : Function
     * @tc.desc   : Setting an abnormal value in the Gauge container under privacy-sensitive conditions
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0040', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0040 start.`);
      Settings.createWindow("testability/pages/PrivacySensitiveGauge/PrivacySensitiveGauge0040")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('PrivacySensitiveGauge0040_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('PrivacySensitiveGauge0040_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      let Button3: Component = await driver.waitForComponent(ON.id('PrivacySensitiveGauge0040_003'),1000);
      await Button3.click();
      await driver.waitForIdle(500,2000)
      let Button4: Component = await driver.waitForComponent(ON.id('PrivacySensitiveGauge0040_004'),1000);
      await Button4.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0040 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0100
     * @tc.name   : SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0100
     * @tc.type   : Function
     * @tc.desc   : Dynamically toggle colors in the Gauge container under privacy-sensitive mode to check for any visual changes.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0100', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0100 start.`);
      Settings.createWindow("testability/pages/PrivacySensitiveGauge/PrivacySensitiveGauge0100")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('PrivacySensitiveGauge0100_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0100 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0170
     * @tc.name   : SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0170
     * @tc.type   : Function
     * @tc.desc   : Set the description content as an image in the Gauge container under privacy-sensitive mode.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0170', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0170 start.`);
      Settings.createWindow("testability/pages/PrivacySensitiveGauge/PrivacySensitiveGauge0170")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0170 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0160
     * @tc.name   : SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0160
     * @tc.type   : Function
     * @tc.desc   : Set the description content as text in the Gauge container under privacy-sensitive mode.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0160', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0160 start.`);
      Settings.createWindow("testability/pages/PrivacySensitiveGauge/PrivacySensitiveGauge0160")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0160 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0060
     * @tc.name   : SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0060
     * @tc.type   : Function
     * @tc.desc   : Dynamically update the startAngle of the gauge chart inside the Gauge container.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0060', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0060 start.`);
      Settings.createWindow("testability/pages/PrivacySensitiveGauge/PrivacySensitiveGauge0060")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('PrivacySensitiveGauge0060_001'),1000);
      await Button1.click();
      await driver.waitForIdle(1000,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0060 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0110
     * @tc.name   : SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0110
     * @tc.type   : Function
     * @tc.desc   : Dynamically switch the color type of the gauge chart in the Gauge container under privacy-sensitive mode and observe whether any visual change occurs.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0110', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0110 start.`);
      Settings.createWindow("testability/pages/PrivacySensitiveGauge/PrivacySensitiveGauge0110")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('PrivacySensitiveGauge0110_001'),1000);
      await Button1.click();
      await driver.waitForIdle(1000,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0110 finish.`);
      done()
    })



    /*
     * @tc.number : SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0150
     * @tc.name   : SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0150
     * @tc.type   : Function
     * @tc.desc   : Set the strokeWidth of the ring-shaped gauge chart within the Gauge container to an abnormal value under privacy-sensitive mode.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0150', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0150 start.`);
      Settings.createWindow("testability/pages/PrivacySensitiveGauge/PrivacySensitiveGauge0150")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('PrivacySensitiveGauge0150_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('PrivacySensitiveGauge0150_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      let Button3: Component = await driver.waitForComponent(ON.id('PrivacySensitiveGauge0150_003'),1000);
      await Button3.click();
      await driver.waitForIdle(500,2000)
      let Button4: Component = await driver.waitForComponent(ON.id('PrivacySensitiveGauge0150_004'),1000);
      await Button4.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0150 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0030
     * @tc.name   : SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0030
     * @tc.type   : Function
     * @tc.desc   : Set privacySensitive to undefined in the Gauge container.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0030', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0030 start.`);
      Settings.createWindow("testability/pages/PrivacySensitiveGauge/PrivacySensitiveGauge0030")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0030 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0190
     * @tc.name   : SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0190
     * @tc.type   : Function
     * @tc.desc   : Dynamically toggle the shadow radius style in the Gauge container under privacy-sensitive mode.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0190', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0190 start.`);
      Settings.createWindow("testability/pages/PrivacySensitiveGauge/PrivacySensitiveGauge0190")
      let driver: Driver = Driver.create();
      let Button1: Component = await driver.waitForComponent(ON.id('PrivacySensitiveGauge0190_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0190 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0070
     * @tc.name   : SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0070
     * @tc.type   : Function
     * @tc.desc   : Set an abnormal value for startAngle in the Gauge container under privacy-sensitive mode.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0070', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0070 start.`);
      Settings.createWindow("testability/pages/PrivacySensitiveGauge/PrivacySensitiveGauge0070")
      let driver: Driver = Driver.create();
      let Button1: Component = await driver.waitForComponent(ON.id('PrivacySensitiveGauge0070_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('PrivacySensitiveGauge0070_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      let Button3: Component = await driver.waitForComponent(ON.id('PrivacySensitiveGauge0070_003'),1000);
      await Button3.click();
      await driver.waitForIdle(500,2000)
      let Button4: Component = await driver.waitForComponent(ON.id('PrivacySensitiveGauge0070_004'),1000);
      await Button4.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0070 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0050
     * @tc.name   : SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0050
     * @tc.type   : Function
     * @tc.desc   : Dynamically update the value of the gauge chart within the Gauge container.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0050', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0050 start.`);
      Settings.createWindow("testability/pages/PrivacySensitiveGauge/PrivacySensitiveGauge0050")
      let driver: Driver = Driver.create();
      let Button1: Component = await driver.waitForComponent(ON.id('PrivacySensitiveGauge0050_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0050 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0080
     * @tc.name   : SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0080
     * @tc.type   : Function
     * @tc.desc   : Dynamically update the endAngle of the gauge chart inside the Gauge container.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0080', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0080 start.`);
      Settings.createWindow("testability/pages/PrivacySensitiveGauge/PrivacySensitiveGauge0080")
      let driver: Driver = Driver.create();
      let Button1: Component = await driver.waitForComponent(ON.id('PrivacySensitiveGauge0080_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0080 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0120
     * @tc.name   : SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0120
     * @tc.type   : Function
     * @tc.desc   : Set the color to a single-tone ring using ResourceColor in the Gauge container under privacy-sensitive mode.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0120', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0120 start.`);
      Settings.createWindow("testability/pages/PrivacySensitiveGauge/PrivacySensitiveGauge0120")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0120 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0090
     * @tc.name   : SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0090
     * @tc.type   : Function
     * @tc.desc   : Set an abnormal value for endAngle in the Gauge container under privacy-sensitive mode.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0090', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0090 start.`);
      Settings.createWindow("testability/pages/PrivacySensitiveGauge/PrivacySensitiveGauge0090")
      let driver: Driver = Driver.create();
      let Button1: Component = await driver.waitForComponent(ON.id('PrivacySensitiveGauge0090_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('PrivacySensitiveGauge0090_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      let Button3: Component = await driver.waitForComponent(ON.id('PrivacySensitiveGauge0090_003'),1000);
      await Button3.click();
      await driver.waitForIdle(500,2000)
      let Button4: Component = await driver.waitForComponent(ON.id('PrivacySensitiveGauge0090_004'),1000);
      await Button4.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0090 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0130
     * @tc.name   : SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0130
     * @tc.type   : Function
     * @tc.desc   : Set the color to a gradient ring using LinearGradient in the Gauge container under privacy-sensitive mode.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0130', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0130 start.`);
      Settings.createWindow("testability/pages/PrivacySensitiveGauge/PrivacySensitiveGauge0130")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0130 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0200
    * @tc.name   : SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0200
    * @tc.type   : Function
    * @tc.desc   : Set an abnormal value for the shadow style's offsetX in the Gauge container under privacy-sensitive mode.
    * @tc.size   : MediumTest
    * @tc.level  : 2
    */
    it('SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0200', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0200 start.`);
      Settings.createWindow("testability/pages/PrivacySensitiveGauge/PrivacySensitiveGauge0200")
      let driver: Driver = Driver.create();
      let Button1: Component = await driver.waitForComponent(ON.id('PrivacySensitiveGauge0200_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('PrivacySensitiveGauge0200_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      let Button3: Component = await driver.waitForComponent(ON.id('PrivacySensitiveGauge0200_003'),1000);
      await Button3.click();
      await driver.waitForIdle(500,2000)
      let Button4: Component = await driver.waitForComponent(ON.id('PrivacySensitiveGauge0200_004'),1000);
      await Button4.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0200 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0180
    * @tc.name   : SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0180
    * @tc.type   : Function
    * @tc.desc   : In the Gauge container, setting the shadow style radius to an abnormal value under privacy mode.
    * @tc.size   : MediumTest
    * @tc.level  : 2
    */
    it('SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0180', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0180 start.`);
      Settings.createWindow("testability/pages/PrivacySensitiveGauge/PrivacySensitiveGauge0180")
      let driver: Driver = Driver.create();
      let Button1: Component = await driver.waitForComponent(ON.id('PrivacySensitiveGauge0180_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('PrivacySensitiveGauge0180_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      let Button3: Component = await driver.waitForComponent(ON.id('PrivacySensitiveGauge0180_003'),1000);
      await Button3.click();
      await driver.waitForIdle(500,2000)
      let Button4: Component = await driver.waitForComponent(ON.id('PrivacySensitiveGauge0180_004'),1000);
      await Button4.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0180 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0230
     * @tc.name   : SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0230
     * @tc.type   : Function
     * @tc.desc   : Dynamically switching the shadow style offsetY in the Gauge container under privacy mode.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0230', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0230 start.`);
      Settings.createWindow("testability/pages/PrivacySensitiveGauge/PrivacySensitiveGauge0230")
      let driver: Driver = Driver.create();
      let Button1: Component = await driver.waitForComponent(ON.id('PrivacySensitiveGauge0230_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0230 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0140
     * @tc.name   : SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0140
     * @tc.type   : Function
     * @tc.desc   : Dynamically set the ring thickness of the circular gauge chart within the Gauge container under privacy mode.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0140', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0140 start.`);
      Settings.createWindow("testability/pages/PrivacySensitiveGauge/PrivacySensitiveGauge0140")
      let driver: Driver = Driver.create();
      let Button1: Component = await driver.waitForComponent(ON.id('PrivacySensitiveGauge0140_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0140 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0220
    * @tc.name   : SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0220
    * @tc.type   : Function
    * @tc.desc   : Set the offsetY of the shadow style to an abnormal value inside the Gauge container while in privacy mode.
    * @tc.size   : MediumTest
    * @tc.level  : 2
    */
    it('SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0220', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0220 start.`);
      Settings.createWindow("testability/pages/PrivacySensitiveGauge/PrivacySensitiveGauge0220")
      let driver: Driver = Driver.create();
      let Button1: Component = await driver.waitForComponent(ON.id('PrivacySensitiveGauge0220_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('PrivacySensitiveGauge0220_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      let Button3: Component = await driver.waitForComponent(ON.id('PrivacySensitiveGauge0220_003'),1000);
      await Button3.click();
      await driver.waitForIdle(500,2000)
      let Button4: Component = await driver.waitForComponent(ON.id('PrivacySensitiveGauge0220_004'),1000);
      await Button4.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0220 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0210
     * @tc.name   : SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0210
     * @tc.type   : Function
    * @tc.desc   : Set the offsetY of the shadow style to an abnormal value inside the Gauge container while in privacy mode.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0210', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0210 start.`);
      Settings.createWindow("testability/pages/PrivacySensitiveGauge/PrivacySensitiveGauge0210")
      let driver: Driver = Driver.create();
      let Button1: Component = await driver.waitForComponent(ON.id('PrivacySensitiveGauge0210_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0210 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0260
    * @tc.name   : SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0260
    * @tc.type   : Function
    * @tc.desc   : Set the pointer-to-ring-outer-edge spacing (space) inside the Gauge container while in privacy mode.
    * @tc.size   : MediumTest
    * @tc.level  : 2
    */
    it('SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0260', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0260 start.`);
      Settings.createWindow("testability/pages/PrivacySensitiveGauge/PrivacySensitiveGauge0260")
      let driver: Driver = Driver.create();
      let Button1: Component = await driver.waitForComponent(ON.id('PrivacySensitiveGauge0260_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('PrivacySensitiveGauge0260_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      let Button3: Component = await driver.waitForComponent(ON.id('PrivacySensitiveGauge0260_003'),1000);
      await Button3.click();
      await driver.waitForIdle(500,2000)
      let Button4: Component = await driver.waitForComponent(ON.id('PrivacySensitiveGauge0260_004'),1000);
      await Button4.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0260 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0240
     * @tc.name   : SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0240
     * @tc.type   : Function
     * @tc.desc   : Set the pointer style icon in the Gauge container while in privacy mode.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0240', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0240 start.`);
      Settings.createWindow("testability/pages/PrivacySensitiveGauge/PrivacySensitiveGauge0240")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0240 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0250
     * @tc.name   : SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0250
     * @tc.type   : Function
     * @tc.desc   : Dynamically set the pointer style icon in the Gauge container under privacy mode.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0250', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0250 start.`);
      Settings.createWindow("testability/pages/PrivacySensitiveGauge/PrivacySensitiveGauge0250")
      let driver: Driver = Driver.create();
      let Button1: Component = await driver.waitForComponent(ON.id('PrivacySensitiveGauge0250_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0250 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0270
     * @tc.name   : SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0270
     * @tc.type   : Function
     * @tc.desc   : Dynamically set the pointer-to-ring-outer-edge spacing (space) in the Gauge container under privacy mode.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0270', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0270 start.`);
      Settings.createWindow("testability/pages/PrivacySensitiveGauge/PrivacySensitiveGauge0270")
      let driver: Driver = Driver.create();
      let Button1: Component = await driver.waitForComponent(ON.id('PrivacySensitiveGauge0270_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0270 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0020
     * @tc.name   : SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0020
     * @tc.type   : Function
     * @tc.desc   : Set privacySensitive to null in the Gauge container.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0020', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0020 start.`);
      Settings.createWindow("testability/pages/PrivacySensitiveGauge/PrivacySensitiveGauge0020")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0020 finish.`);
      done()
    })


  })
}
