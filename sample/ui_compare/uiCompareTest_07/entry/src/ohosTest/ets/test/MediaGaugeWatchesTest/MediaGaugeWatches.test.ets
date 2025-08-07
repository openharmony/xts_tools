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

export default function MediaGaugeWatches() {

  describe('MediaGaugeWatches', () => {
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
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_GAUGE_WATCHES_0012
     * @tc.name   : SUB_ACE_UI_COMPONENT_MEDIA_GAUGE_WATCHES_0012
     * @tc.type   : Default stroke width for the arrow in the mobile Gauge component
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_GAUGE_WATCHES_0012', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_GAUGE_WATCHES_0012 start.`);
      Settings.createWindow("testability/pages/MediaGaugeWatches/MediaGaugeWatches0012")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_GAUGE_WATCHES_0012 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_GAUGE_WATCHES_0016
     * @tc.name   : SUB_ACE_UI_COMPONENT_MEDIA_GAUGE_WATCHES_0016
     * @tc.type   : Default multi-color gauge segment spacing specifications for the mobile Gauge component
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_GAUGE_WATCHES_0016', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_GAUGE_WATCHES_0016 start.`);
      Settings.createWindow("testability/pages/MediaGaugeWatches/MediaGaugeWatches0016")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_GAUGE_WATCHES_0016 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_GAUGE_WATCHES_0011
     * @tc.name   : SUB_ACE_UI_COMPONENT_MEDIA_GAUGE_WATCHES_0011
     * @tc.type   : Default border-radius specification for the arrow in the mobile Gauge component
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_GAUGE_WATCHES_0011', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_GAUGE_WATCHES_0011 start.`);
      Settings.createWindow("testability/pages/MediaGaugeWatches/MediaGaugeWatches0011")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_GAUGE_WATCHES_0011 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_GAUGE_WATCHES_0010
     * @tc.name   : SUB_ACE_UI_COMPONENT_MEDIA_GAUGE_WATCHES_0010
     * @tc.type   : Default width and height specifications for the arrow in the mobile Gauge component
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_GAUGE_WATCHES_0010', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_GAUGE_WATCHES_0010 start.`);
      Settings.createWindow("testability/pages/MediaGaugeWatches/MediaGaugeWatches0010")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_GAUGE_WATCHES_0010 finish.`);
      done()
    })


    /*
   * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_GAUGE_WATCHES_0013
   * @tc.name   : SUB_ACE_UI_COMPONENT_MEDIA_GAUGE_WATCHES_0013
   * @tc.type   : Default color specification for the arrow in the mobile Gauge component
   * @tc.size   : MediumTest
   * @tc.level  : 2
   */
    it('SUB_ACE_UI_COMPONENT_MEDIA_GAUGE_WATCHES_0013', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_GAUGE_WATCHES_0013 start.`);
      Settings.createWindow("testability/pages/MediaGaugeWatches/MediaGaugeWatches0013")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_GAUGE_WATCHES_0013 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_GAUGE_WATCHES_0014
     * @tc.name   : SUB_ACE_UI_COMPONENT_MEDIA_GAUGE_WATCHES_0014
     * @tc.type   : Default stroke color specification for the arrow in the mobile Gauge component
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_GAUGE_WATCHES_0014', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_GAUGE_WATCHES_0014 start.`);
      Settings.createWindow("testability/pages/MediaGaugeWatches/MediaGaugeWatches0014")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_GAUGE_WATCHES_0014 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_GAUGE_WATCHES_0015
    * @tc.name   : SUB_ACE_UI_COMPONENT_MEDIA_GAUGE_WATCHES_0015
    * @tc.type   : Default circular stroke width specification for the mobile Gauge component
    * @tc.size   : MediumTest
    * @tc.level  : 2
    */
    it('SUB_ACE_UI_COMPONENT_MEDIA_GAUGE_WATCHES_0015', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_GAUGE_WATCHES_0015 start.`);
      Settings.createWindow("testability/pages/MediaGaugeWatches/MediaGaugeWatches0015")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_GAUGE_WATCHES_0015 finish.`);
      done()
    })




  })
}
