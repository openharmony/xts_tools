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

import { afterEach, describe, it, Level } from '@ohos/hypium'
import Settings from '../model/Settings'
import windowSnap from '../model/snapShot'
import Logger from '../model/Logger'
import Utils from '../model/Utils'
import { Component, Driver, ON } from '@kit.TestKit'


export default function ComponentNavNavigation() {

  describe('ComponentNavNavigation', () => {
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
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_001
     * @tc.name   : Stack模式非自定义标题，标题Full模式不包含副标题，使用中文
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 1
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_001', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_001 start.`);
      Settings.createWindow("testability/pages/ComponentNavNavigation/ComponentNavNavigation001")
      let driver:Driver = Driver.create();
      let Button1: Component = await driver.waitForComponent(ON.id('ComponentNavNavigation001_002'),1000);
      await Utils.sleep(1000)
      await Button1.click();
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_001 finish.`);
      done()
    })


    /*
 * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_0541
 * @tc.name   : navdestination页面静态设置标题栏为红色颜色
 * @tc.type   : Function
 * @tc.size   : MediumTest
 * @tc.level  : 1
 */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_0541', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_0541 start.`);
      Settings.createWindow("testability/pages/ComponentNavNavigation/ComponentNavNavigation0541_001")
      let driver:Driver = Driver.create();
      let Button1: Component = await driver.waitForComponent(ON.id('ComponentNavNavigation0541_001'),1000);
      await Button1.click();
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_0541 finish.`);
      done()
    })
  })
}
