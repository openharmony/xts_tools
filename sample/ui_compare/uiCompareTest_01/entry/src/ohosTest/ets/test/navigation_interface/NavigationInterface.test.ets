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
import { window } from '@kit.ArkUI'

export default function NavigationInterfaceTest() {

  describe('NavigationInterfaceTest', () => {
    afterEach(async (done: Function) => {
      if (Settings.windowClass == undefined) {
        return
      }

      Settings.windowClass.destroyWindow((err: BusinessError) => {
        if (err.code) {
          Logger.error('TEST', `Failed to destroy the window. Cause : ${JSON.stringify(err)}`)
          return;
        }
        Logger.info('TEST', `Succeeded in destroy the window.`);
      })
      let driver: Driver = Driver.create();
      await Settings.changeWindowOrientation('end')
      await driver.waitForIdle(500, 2000);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0290_177
     * @tc.name   : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0290_177
     * @tc.desc   : Manual click verification of router push jump interruption and continuation function (pushurl method)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0290_177', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0290_177 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigation01")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0290_177 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0170_861
     * @tc.name   : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0170_861
     * @tc.desc   : Manual click verification of router push jump interruption and continuation function (pushurl method)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0170_861', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0170_861 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigation02")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0170_861 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BASEPROPERTY_0370
     * @tc.name   : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BASEPROPERTY_0370
     * @tc.desc   : Manual click verification of router push jump interruption and continuation function (pushurl method)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BASEPROPERTY_0370', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BASEPROPERTY_0370 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigation03")
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id('nav03ChangeMinContentWidth'), 1000);
      await button.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BASEPROPERTY_0370 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BACK_0300_496
     * @tc.name   : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BACK_0300_496
     * @tc.desc   : Manual click verification of router push jump interruption and continuation function (pushurl method)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BACK_0300_496', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BACK_0300_496 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigation04")
      let driver: Driver = Driver.create();
      let button1: Component = await driver.waitForComponent(ON.id('nav04ChangeMode'), 1000);
      await button1.click();
      let button2: Component = await driver.waitForComponent(ON.id('nav04ChangeTitleMode'), 1000);
      await button2.click();
      let button3: Component = await driver.waitForComponent(ON.id('nav04PushPageOne'), 1000);
      await button3.click();

      let button4: Component = await driver.waitForComponent(ON.id('ChangeImgPng'), 1000);
      let button5: Component = await driver.waitForComponent(ON.id('ChangeImgJpg'), 1000);
      let button6: Component = await driver.waitForComponent(ON.id('ChangeImgGif'), 1000);
      let button7: Component = await driver.waitForComponent(ON.id('ChangeImgSvg'), 1000);
      let button8: Component = await driver.waitForComponent(ON.id('ChangeImgBmp'), 1000);
      await button4.click();
      windowSnap.snapShot()
      await Utils.sleep(1000)
      await button5.click();
      windowSnap.snapShot()
      await Utils.sleep(1000)
      await button6.click();
      windowSnap.snapShot()
      await Utils.sleep(1000)
      await button7.click();
      windowSnap.snapShot()
      await Utils.sleep(1000)
      await button8.click();
      windowSnap.snapShot()
      await Utils.sleep(1000)

      Settings.changeWindowOrientation();
      if (globalThis.orientation === window.Orientation.LANDSCAPE) {
        windowSnap.snapShot()
        await Utils.sleep(1000)
        Settings.changeWindowOrientation();
      } else if (globalThis.orientation === window.Orientation.PORTRAIT) {
        await button4.click();
        windowSnap.snapShot()
        await Utils.sleep(1000)
        await button5.click();
        windowSnap.snapShot()
        await Utils.sleep(1000)
        await button6.click();
        windowSnap.snapShot()
        await Utils.sleep(1000)
        await button7.click();
        windowSnap.snapShot()
        await Utils.sleep(1000)
        await button8.click();
        windowSnap.snapShot()
        await Utils.sleep(1000)
      }

      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BACK_0300_496 finish.`);
      done()
    })
  })
}