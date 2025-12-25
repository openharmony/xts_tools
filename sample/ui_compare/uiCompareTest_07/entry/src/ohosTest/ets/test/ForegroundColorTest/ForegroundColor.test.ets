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

export default function ForegroundColor() {

  describe('ForegroundColor', () => {
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
     * @tc.number : SUB_ACE_UI_PROGRESS_COMMON_FOREGROUNDCOLOR_0018
     * @tc.name   : SUB_ACE_UI_PROGRESS_COMMON_FOREGROUNDCOLOR_0018
     * @tc.type   : Function
     * @tc.desc   : The capsule style sets the content, fontColor, and foregroundColor to different colors. The foregroundColor is in HEX format, and the text foreground color takes effect.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_PROGRESS_COMMON_FOREGROUNDCOLOR_0018', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_PROGRESS_COMMON_FOREGROUNDCOLOR_0018 start.`);
      Settings.createWindow("testability/pages/ForegroundColor/ForegroundColor0018")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_PROGRESS_COMMON_FOREGROUNDCOLOR_0018 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_PROGRESS_COMMON_FOREGROUNDCOLOR_0022
     * @tc.name   : SUB_ACE_UI_PROGRESS_COMMON_FOREGROUNDCOLOR_0022
     * @tc.type   : Function
     * @tc.desc   : The capsule style sets different colors for content, fontColor, and foregroundColor (using ColoringStrategy.AVERAGE), and the text foreground color takes effect.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_PROGRESS_COMMON_FOREGROUNDCOLOR_0022', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_PROGRESS_COMMON_FOREGROUNDCOLOR_0022 start.`);
      Settings.createWindow("testability/pages/ForegroundColor/ForegroundColor0022")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_PROGRESS_COMMON_FOREGROUNDCOLOR_0022 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_PROGRESS_COMMON_FOREGROUNDCOLOR_0012
     * @tc.name   : SUB_ACE_UI_PROGRESS_COMMON_FOREGROUNDCOLOR_0012
     * @tc.type   : Function
     * @tc.desc   : The capsule style does not set the content, and showDefaultPercentage is set to true. The fontColor and foregroundColor are the same color, and the color of the percentage takes effect.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_PROGRESS_COMMON_FOREGROUNDCOLOR_0012', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_PROGRESS_COMMON_FOREGROUNDCOLOR_0012 start.`);
      Settings.createWindow("testability/pages/ForegroundColor/ForegroundColor0012")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_PROGRESS_COMMON_FOREGROUNDCOLOR_0012 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_PROGRESS_COMMON_FOREGROUNDCOLOR_0010
     * @tc.name   : SUB_ACE_UI_PROGRESS_COMMON_FOREGROUNDCOLOR_0010
     * @tc.type   : Function
     * @tc.desc   : For the styles of Linear, Ring, Eclipse, and ScaleRing, text cannot be entered in the style value, and setting the foreground color will not take effect.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_PROGRESS_COMMON_FOREGROUNDCOLOR_0010', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_PROGRESS_COMMON_FOREGROUNDCOLOR_0010 start.`);
      Settings.createWindow("testability/pages/ForegroundColor/ForegroundColor0010")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_PROGRESS_COMMON_FOREGROUNDCOLOR_0010 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_PROGRESS_COMMON_FOREGROUNDCOLOR_0011
     * @tc.name   : SUB_ACE_UI_PROGRESS_COMMON_FOREGROUNDCOLOR_0011
     * @tc.type   : Function
     * @tc.desc   : For the Capsule style, if content is not set and showDefaultPercentage is set to true, only setting the foregroundColor will make the foreground color of the displayed percentage take effect.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_PROGRESS_COMMON_FOREGROUNDCOLOR_0011', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_PROGRESS_COMMON_FOREGROUNDCOLOR_0011 start.`);
      Settings.createWindow("testability/pages/ForegroundColor/ForegroundColor0011")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_PROGRESS_COMMON_FOREGROUNDCOLOR_0011 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_PROGRESS_COMMON_FOREGROUNDCOLOR_0015
     * @tc.name   : SUB_ACE_UI_PROGRESS_COMMON_FOREGROUNDCOLOR_0015
     * @tc.type   : Function
     * @tc.desc   : For the Capsule style, when content is set and fontColor is the same as foregroundColor, the foreground color set for the text takes effect.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_PROGRESS_COMMON_FOREGROUNDCOLOR_0015', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_PROGRESS_COMMON_FOREGROUNDCOLOR_0015 start.`);
      Settings.createWindow("testability/pages/ForegroundColor/ForegroundColor0015")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_PROGRESS_COMMON_FOREGROUNDCOLOR_0015 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_PROGRESS_COMMON_FOREGROUNDCOLOR_0014
     * @tc.name   : SUB_ACE_UI_PROGRESS_COMMON_FOREGROUNDCOLOR_0014
     * @tc.type   : Function
     * @tc.desc   : For the Capsule style, when content is set and only foregroundColor is specified, the foreground color set for the text takes effect.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_PROGRESS_COMMON_FOREGROUNDCOLOR_0014', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_PROGRESS_COMMON_FOREGROUNDCOLOR_0014 start.`);
      Settings.createWindow("testability/pages/ForegroundColor/ForegroundColor0014")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_PROGRESS_COMMON_FOREGROUNDCOLOR_0014 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_PROGRESS_COMMON_FOREGROUNDCOLOR_0016
     * @tc.name   : SUB_ACE_UI_PROGRESS_COMMON_FOREGROUNDCOLOR_0016
     * @tc.type   : Function
     * @tc.desc   : For the Capsule style, when content is set and fontColor is different from foregroundColor, the foreground color set for the text takes effect.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_PROGRESS_COMMON_FOREGROUNDCOLOR_0016', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_PROGRESS_COMMON_FOREGROUNDCOLOR_0016 start.`);
      Settings.createWindow("testability/pages/ForegroundColor/ForegroundColor0016")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_PROGRESS_COMMON_FOREGROUNDCOLOR_0016 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_PROGRESS_COMMON_FOREGROUNDCOLOR_0019
     * @tc.name   : SUB_ACE_UI_PROGRESS_COMMON_FOREGROUNDCOLOR_0019
     * @tc.type   : Function
     * @tc.desc   : For the Capsule style, when content is set and fontColor is different from foregroundColor, with foregroundColor specified in RGB format, the foreground color set for the text takes effect.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_PROGRESS_COMMON_FOREGROUNDCOLOR_0019', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_PROGRESS_COMMON_FOREGROUNDCOLOR_0019 start.`);
      Settings.createWindow("testability/pages/ForegroundColor/ForegroundColor0019")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_PROGRESS_COMMON_FOREGROUNDCOLOR_0019 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_PROGRESS_COMMON_FOREGROUNDCOLOR_0020
     * @tc.name   : SUB_ACE_UI_PROGRESS_COMMON_FOREGROUNDCOLOR_0020
     * @tc.type   : Function
     * @tc.desc   : For the Capsule style, when content is set and fontColor is different from foregroundColor, with foregroundColor specified in RGBA format, the foreground color set for the text takes effect.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_PROGRESS_COMMON_FOREGROUNDCOLOR_0020', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_PROGRESS_COMMON_FOREGROUNDCOLOR_0020 start.`);
      Settings.createWindow("testability/pages/ForegroundColor/ForegroundColor0020")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_PROGRESS_COMMON_FOREGROUNDCOLOR_0020 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_PROGRESS_COMMON_FOREGROUNDCOLOR_0023
     * @tc.name   : SUB_ACE_UI_PROGRESS_COMMON_FOREGROUNDCOLOR_0023
     * @tc.type   : Function
     * @tc.desc   : For the Capsule style, when content is set and fontColor is different from foregroundColor, with foregroundColor specified as ColoringStrategy.PRIMARY, the foreground color set for the text takes effect.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_PROGRESS_COMMON_FOREGROUNDCOLOR_0023', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_PROGRESS_COMMON_FOREGROUNDCOLOR_0023 start.`);
      Settings.createWindow("testability/pages/ForegroundColor/ForegroundColor0023")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_PROGRESS_COMMON_FOREGROUNDCOLOR_0023 finish.`);
      done()
    })




  })
}