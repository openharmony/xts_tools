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

export default function FocusFrameNodeTest() {

  describe('FocusFrameNodeTest', () => {
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
    * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0011
    * @tc.name   : SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0011
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 2
    * @tc.desc   : The content characters of the QRCode created by FrameNode are normally more than 512.
    */
    it('SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0011', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0011  start.`);
      Settings.createWindow("testability/pages/focus_FrameNode/MediaFrameNode0011")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0011 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0012
    * @tc.name   : SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0012
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 2
    * @tc.desc   : The content characters of the QRCode created by FrameNode are abnormal.
    */
    it('SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0012', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0012  start.`);
      Settings.createWindow("testability/pages/focus_FrameNode/MediaFrameNode0012")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0012 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0013
    * @tc.name   : SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0013
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 2
    * @tc.desc   : FrameNode creates a QRCode and sets the QRCode color as an enumeration.
    */
    it('SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0013', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0013  start.`);
      Settings.createWindow("testability/pages/focus_FrameNode/MediaFrameNode0013")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0013 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0014
    * @tc.name   : SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0014
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 2
    * @tc.desc   : FrameNode creates a QRCode and sets the QRCode color in RGB type.
    */
    it('SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0014', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0014  start.`);
      Settings.createWindow("testability/pages/focus_FrameNode/MediaFrameNode0014")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0014 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0015
    * @tc.name   : SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0015
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 2
    * @tc.desc   : FrameNode creates a QRCode without setting the QRCode color.
    */
    it('SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0015', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0015  start.`);
      Settings.createWindow("testability/pages/focus_FrameNode/MediaFrameNode0015")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0015 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0016
    * @tc.name   : SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0016
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 2
    * @tc.desc   : FrameNode creates a QRCode and sets the QRCode backgroundColor as an enumeration.
    */
    it('SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0016', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0016  start.`);
      Settings.createWindow("testability/pages/focus_FrameNode/MediaFrameNode0016")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0016 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0017
    * @tc.name   : SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0017
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 2
    * @tc.desc   : FrameNode creates a QRCode and sets the QRCode backgroundColor in RGB type.
    */
    it('SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0017', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0017  start.`);
      Settings.createWindow("testability/pages/focus_FrameNode/MediaFrameNode0017")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0017 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0019
    * @tc.name   : SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0019
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 2
    * @tc.desc   : FrameNode creates a QRCode and sets the QRCode transparency to abnormal values
    */
    it('SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0019', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0019  start.`);
      Settings.createWindow("testability/pages/focus_FrameNode/MediaFrameNode0019")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0019 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0020
    * @tc.name   : SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0020
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 2
    * @tc.desc   : FrameNode creates a QRCode and sets the QRCode transparency to a normal value.
    */
    it('SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0020', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0020  start.`);
      Settings.createWindow("testability/pages/focus_FrameNode/MediaFrameNode0020")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0020 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0022
    * @tc.name   : SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0022
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 2
    * @tc.desc   : FrameNode creates BadgeParamWithString to create a text box sub-component.
    */
    it('SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0022', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0022  start.`);
      Settings.createWindow("testability/pages/focus_FrameNode/MediaFrameNode0022")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0022 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0024
    * @tc.name   : SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0024
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 2
    * @tc.desc   : FrameNode creates BadgeParamWithNumber to create a text box sub-component.
    */
    it('SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0024', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0024  start.`);
      Settings.createWindow("testability/pages/focus_FrameNode/MediaFrameNode0024")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0024 finish.`);
      done()
    })



    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0028
    * @tc.name   : SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0028
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 2
    * @tc.desc   : FrameNode creates a TextTimer card display.
    */
    it('SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0028', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0028  start.`);
      Settings.createWindow("testability/pages/focus_FrameNode/MediaFrameNode0028")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0028 finish.`);
      done()
    })


  })
}