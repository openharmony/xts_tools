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

export default function navigationContent01Test() {

  describe('navigationContent01Test', () => {
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
      await Utils.sleep(1000);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_CONTENTEXPANSION_0030
     * @tc.name   : In Stack mode, hide the toolbar and titlebar simultaneously. Extend the content area to the status bar and Aibar.
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_CONTENTEXPANSION_0030', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_CONTENTEXPANSION_0030 start.`);
      Settings.createWindow("testability/pages/navigation_content/navigation01")
      let driver:Driver = Driver.create();
      let button1: Component = await driver.waitForComponent(ON.id('changeHideTitleBar01'), 1000);
      await button1.click();
      let button2: Component = await driver.waitForComponent(ON.id('changeHideToolBar01'), 1000);
      await button2.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_CONTENTEXPANSION_0030 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_CONTENTEXPANSION_0290
     * @tc.name   : Use Modifier to hide the toolbar and titlebar simultaneously. Extend the content area to the status bar and Aibar, and disable safety area extension upper and lower.
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_CONTENTEXPANSION_0290', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_CONTENTEXPANSION_0290 start.`);
      Settings.createWindow("testability/pages/navigation_content/navigation02")
      let driver:Driver = Driver.create();
      let button1: Component = await driver.waitForComponent(ON.id('changeHideTitleBar02'), 1000);
      await button1.click();
      let button2: Component = await driver.waitForComponent(ON.id('changeHideToolBar02'), 1000);
      await button2.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_CONTENTEXPANSION_0290 finish.`);
      done()
    })
  })
}
