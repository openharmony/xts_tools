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
     * @tc.desc   : When mode is not set in Navigation, it defaults to NavigationMode.Auto
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
     * @tc.desc   : When hideToolBar is not set in Navigation, it defaults to false (toolbar is visible)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0170_861', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0170_861 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigation01")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0170_861 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_SYMBOL_0400_045
     * @tc.name   : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_SYMBOL_0400_045
     * @tc.desc   : Navigation component supports HM Symbol: Pass symbol for title bar/toolbar/back button, with
     * fontSize set to $r(app.integer.integer_30)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_SYMBOL_0400_045', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_SYMBOL_0400_045 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigation02")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_SYMBOL_0400_045 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BASEPROPERTY_0370
     * @tc.name   : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BASEPROPERTY_0370
     * @tc.desc   : Set minContentWidth for Navigation
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
     * @tc.desc   : Enable auto-switch between single/dual-pane modes in Navigation, set backButtonIcon with String type
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BACK_0300_496', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BACK_0300_496 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigation04")
      let driver: Driver = Driver.create();
      Logger.info('TEST', `button1.click begin.`);
      let button1: Component = await driver.waitForComponent(ON.id('nav04ChangeMode'), 1000);
      await button1.click();
      Logger.info('TEST', `button1.click success.`);
      let button2: Component = await driver.waitForComponent(ON.id('nav04ChangeTitleMode'), 1000);
      await button2.click();
      Logger.info('TEST', `button2.click success.`);
      let button3: Component = await driver.waitForComponent(ON.id('nav04PushPageOne'), 1000);
      await button3.click();
      Logger.info('TEST', `button3.click success.`);

      let button4: Component = await driver.waitForComponent(ON.id('nav04ChangeImgPng'), 1000);
      let button5: Component = await driver.waitForComponent(ON.id('nav04ChangeImgJpg'), 1000);
      let button6: Component = await driver.waitForComponent(ON.id('nav04ChangeImgGif'), 1000);
      let button7: Component = await driver.waitForComponent(ON.id('nav04ChangeImgSvg'), 1000);
      let button8: Component = await driver.waitForComponent(ON.id('nav04ChangeImgBmp'), 1000);
      await button4.click();
      Logger.info('TEST', `button4.click success.`);
      windowSnap.snapShot()
      await Utils.sleep(1000)

      await button5.click();
      Logger.info('TEST', `button5.click success.`);
      windowSnap.snapShot()
      await Utils.sleep(1000)

      await button6.click();
      Logger.info('TEST', `button6.click success.`);
      windowSnap.snapShot()
      await Utils.sleep(1000)

      await button7.click();
      Logger.info('TEST', `button7.click success.`);
      windowSnap.snapShot()
      await Utils.sleep(1000)

      await button8.click();
      Logger.info('TEST', `button8.click success.`);
      windowSnap.snapShot()
      await Utils.sleep(1000)

      await Settings.changeWindowOrientation();
      await driver.waitForIdle(500, 2000);
      Logger.info('TEST', `changeWindowOrientation first success. orientation is: ${globalThis.orientation}`);
      if (globalThis.orientation === window.Orientation.LANDSCAPE) {
        windowSnap.snapShot()
        await Utils.sleep(1000)
        await Settings.changeWindowOrientation();
        await driver.waitForIdle(500, 2000);
        Logger.info('TEST', `changeWindowOrientation second success. orientation is: ${globalThis.orientation}`);
        if (globalThis.orientation === window.Orientation.PORTRAIT) {
          Logger.info('TEST', `button9.click begin.`);
          let button9: Component = await driver.waitForComponent(ON.id('nav04ChangeImgPng'), 1000);
          await button9.click();
          Logger.info('TEST', `button9.click success.`);
          windowSnap.snapShot()
          await Utils.sleep(1000)
          let button10: Component = await driver.waitForComponent(ON.id('nav04ChangeImgJpg'), 1000);
          await button10.click();
          windowSnap.snapShot()
          await Utils.sleep(1000)
          let button11: Component = await driver.waitForComponent(ON.id('nav04ChangeImgGif'), 1000);
          await button11.click();
          windowSnap.snapShot()
          await Utils.sleep(1000)
          let button12: Component = await driver.waitForComponent(ON.id('nav04ChangeImgSvg'), 1000);
          await button12.click();
          windowSnap.snapShot()
          await Utils.sleep(1000)
          let button13: Component = await driver.waitForComponent(ON.id('nav04ChangeImgBmp'), 1000);
          await button13.click();
          windowSnap.snapShot()
          await Utils.sleep(1000)
        }
        await driver.waitForIdle(500, 2000);
        windowSnap.snapShot()
        await Utils.sleep(1000)
        Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BACK_0300_496 finish.`);
        done()
      }
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_SYSTEMBARSTYLE_0060_024
     * @tc.name   : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_SYSTEMBARSTYLE_0060_024
     * @tc.desc   : Verify status bar color switching when navigating between two full-screen NavDestinations with
     * systemBarStyle set
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_SYSTEMBARSTYLE_0060_024', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_SYSTEMBARSTYLE_0060_024 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigation05")
      let driver: Driver = Driver.create();
      let button1: Component = await driver.waitForComponent(ON.id('nav05PushPageThree'), 1000);
      await button1.click();
      Logger.info('TEST', `push PageThree success.`);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)

      let button2: Component = await driver.waitForComponent(ON.id('nav05ChangeSystemBarStyle'), 1000);
      await button2.click();
      Logger.info('TEST', `change barColor success.`);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_SYSTEMBARSTYLE_0060_024 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0020_405
     * @tc.name   : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0020_405
     * @tc.desc   : When hideTitleBar is false in NavDestination, the title bar is visible
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0020_405', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0020_405 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigation06")
      let driver: Driver = Driver.create();
      // let button1: Component = await driver.waitForComponent(ON.id('nav06PushPageFour'), 1000);
      // await button1.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0020_405 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0200_811
     * @tc.name   : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0200_811
     * @tc.desc   : When hideBackButton is false in Navigation, the back button is visible
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0200_811', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0200_811 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigation07")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0200_811 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_CONTENTEXPANSION_0030_227
     * @tc.name   : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_CONTENTEXPANSION_0030_227
     * @tc.desc   : In Stack mode, hide both toolbar and title bar → content area extends to status bar and AI Bar
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_CONTENTEXPANSION_0030_227', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_CONTENTEXPANSION_0030_227 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigation08")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_CONTENTEXPANSION_0030_227 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0230_354
     * @tc.name   : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0230_354
     * @tc.desc   : When hideNavBar is false in Navigation, the navigation bar is visible
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0230_354', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0230_354 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigation09")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0230_354 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0730_530
     * @tc.name   : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0730_530
     * @tc.desc   : Set page title with Resource type → successfully configured
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0730_530', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0730_530 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigation10")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0730_530 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0050_299
     * @tc.name   : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0050_299
     * @tc.desc   : Set title as customBuilder type in NavDestination with font size 30 (without explicit width/height)
     * → successfully configured
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0050_299', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0050_299 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigation11")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0050_299 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_SYMBOL_0140_226
     * @tc.name   : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_SYMBOL_0140_226
     * @tc.desc   : Navigation supports HM Symbol: Simultaneously set icon/symbolIcon for title bar, and
     * icon/symbolIcon/activeIcon/activeSymbolIcon for toolbar
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_SYMBOL_0140_226', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_SYMBOL_0140_226 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigation12")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_SYMBOL_0140_226 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0310_250
     * @tc.name   : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0310_250
     * @tc.desc   : Set navBarPosition to NavBarPosition.Start in Navigation → successfully configured
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0310_250', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0310_250 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigation13")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0310_250 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0240_508
     * @tc.name   : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0240_508
     * @tc.desc   : When hideNavBar is true in Navigation, the navigation bar is hidden
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0240_508', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0240_508 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigation14")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0240_508 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0090_618
     * @tc.name   : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0090_618
     * @tc.desc   : Set title as NavigationCustomTitle type with height: MainOnly in NavDestination → successfully
     * configured
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0090_618', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0090_618 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigation15")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0090_618 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0070_571
     * @tc.name   : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0070_571
     * @tc.desc   : Set title as NavigationCommonTitle type in NavDestination → successfully configured
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0070_571', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0070_571 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigation16")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0070_571 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0100_771
     * @tc.name   : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0100_771
     * @tc.desc   : Set title as NavigationCustomTitle type with height: MainWithSub in NavDestination → successfully
     * configured
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0100_771', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0100_771 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigation17")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0100_771 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0510_988
     * @tc.name   : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0510_988
     * @tc.desc   : Set the title of NavDestination to NavigationCustomTitle type with height configured as
     * MainWithSub → successfully configured
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0510_988', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0510_988 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigation18")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0510_988 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0340_021
     * @tc.name   : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0340_021
     * @tc.desc   : The navigation's navBarWidth was successfully set to string type.
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0340_021', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0340_021 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigation19")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0340_021 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0740_522
     * @tc.name   : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0740_522
     * @tc.desc   : The title page title parameter of type string was successfully set to an overly long string.
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0740_522', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0740_522 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigation20")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0740_522 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0360_216
     * @tc.name   : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0360_216
     * @tc.desc   : The title page title parameter of type string was successfully set to an overly long string.
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0360_216', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0360_216 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigation21")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_INTERFACE_0360_216 finish.`);
      done()
    })
  })
}