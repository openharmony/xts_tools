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

export default function CustomDialogInterface() {

  describe('CustomDialogInterface', () => {
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
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1420
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1420
     * @tc.type   : Function
     * @tc.desc   : Custom Dialog Controller for Custom Dialogs, with configuration parameters including builder, alignment, and closeAnimation. The closeAnimation parameter allows you to set the animation curve to EaseOut (an enumeration type) for the custom dialog's closing animation effect.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1420', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1420 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1420")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1420_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1420_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1420 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1410
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1410
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configuration parameters including builder, alignment, and closeAnimation. The custom dialog's closing animation effect, closeAnimation, can be configured with an animation curve, curve, which is of the enumeration type EaseInOut.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1410', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1410 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1410")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1410_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1410_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1410 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1990
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1990
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configuration parameters including builder, alignment, and showInSubWindow. The parameter showInSubWindow determines whether the dialog is displayed in a sub-window and is set to true.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1990', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1990 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1990")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1990_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1990_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1990 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1280
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1280
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configuration parameters including builder, alignment, and closeAnimation. The closing animation effect of the custom dialog, closeAnimation, can be configured with an animation playback mode, playMode, which is set to Normal.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1280', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1280 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1280")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1280_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1280_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1280 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1680
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1680
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configuration parameters including builder, alignment, and openAnimation. For the pop-up animation effect of the custom dialog, openAnimation, the animation duration duration has not been set and defaults to 1000ms.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1680', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1680 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1680")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1680_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1680_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1680 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1700
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1700
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configuration parameters including builder, alignment, and openAnimation. For the pop-up animation effect of the custom dialog, openAnimation, the animation duration duration is set to 2000.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1700', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1700 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1700")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1700_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1700_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1700 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1880
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1880
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configuration parameters including builder, alignment, and openAnimation. For the pop-up animation effect of the custom dialog, openAnimation, the animation curve curve is set to the enumeration type EaseInOut.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1880', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1880 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1880")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1880_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1880_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1880 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1290
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1290
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController, with configuration parameters builder, alignment, and closeAnimation, sets the animation playback mode playMode of the closing animation effect closeAnimation to Reverse.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1290', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1290 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1290")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1290_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1290_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1290 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1740
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1740
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configuration parameters including builder, alignment, and openAnimation. For the pop-up animation effect of the custom dialog, openAnimation, the animation playback mode playMode is set to Alternate.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1740', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1740 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1740")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1740_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1740_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1740 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1390
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1390
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configuration parameters including builder, alignment, and closeAnimation. For the closing animation effect of the custom dialog, closeAnimation, the animation curve curve is set to the enumeration type Ease.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1390', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1390 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1390")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1390_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1390_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1390 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1830
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1830
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configuration parameters including builder, alignment, and openAnimation. For the pop-up animation effect of the custom dialog, openAnimation, the animation playback speed tempo is set to 1.0.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1830', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1830 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1830")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1830_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1830_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1830 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1300
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1300
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configuration parameters including builder, alignment, and closeAnimation. For the closing animation effect of the custom dialog, closeAnimation, the animation playback count iterations is set to -1.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1300', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1300 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1300")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1300_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1300_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1300 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1840
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1840
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configuration parameters including builder, alignment, and openAnimation. For the pop-up animation effect of the custom dialog, openAnimation, the animation playback speed tempo is set to 2.0.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1840', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1840 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1840")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1840_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1840_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1840 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1860
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1860
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configuration parameters including builder, alignment, and openAnimation. For the pop-up animation effect of the custom dialog, openAnimation, the animation curve curve is set to the enumeration type Ease.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1860', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1860 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1860")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1860_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1860_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1860 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1870
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1870
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configuration parameters including builder, alignment, and openAnimation. For the pop-up animation effect of the custom dialog, openAnimation, the animation curve curve is set to the enumeration type EaseIn.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1870', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1870 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1870")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1870_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1870_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1870 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1950
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1950
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configuration parameters including builder, alignment, and openAnimation. For the pop-up animation effect of the custom dialog, openAnimation, the animation curve curve is set to the enumeration type Linear, which is the default value.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1950', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1950 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1950")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1950_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1950_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1950 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1760
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1760
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configuration parameters including builder, alignment, and openAnimation. For the pop-up animation effect of the custom dialog, openAnimation, the animation playback mode playMode is set to Reverse.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1760', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1760 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1760")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1760_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1760_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1760 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1260
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1260
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configuration parameters including builder, alignment, and closeAnimation. For the closing animation effect of the custom dialog, closeAnimation, the animation playback mode playMode is set to AlternateReverse.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1260', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1260 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1260")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1260_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1260_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1260 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1210
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1210
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configuration parameters including builder, alignment, and closeAnimation. For the closing animation effect of the custom dialog, closeAnimation, the animation duration duration has not been set and defaults to 1000ms.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1210', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1210 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1210")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1210_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1210_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1210 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1730
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1730
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configuration parameters including builder, alignment, and openAnimation. For the pop-up animation effect of the custom dialog, openAnimation, the animation playback mode playMode is set to AlternateReverse.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1730', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1730 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1730")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1730_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1730_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1730 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1380
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1380
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configuration parameters including builder, alignment, and closeAnimation. For the closing animation effect of the custom dialog, closeAnimation, the animation curve curve is set to a string type.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1380', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1380 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1380")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1380_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1380_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1380 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1770
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1770
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configuration parameters including builder, alignment, and openAnimation. For the pop-up animation effect of the custom dialog, openAnimation, the animation playback count iterations is set to -1.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1770', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1770 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1770")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1770_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1770_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1770 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1480
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1480
     * @tc.type   : Function
     * @tc.desc   : CustomDialogController, a custom dialog, has configurable parameters including builder, alignment, and closeAnimation. The closeAnimation parameter is used to set the animation effect when the custom dialog is closed. The animation curve is specified by the curve parameter, which is an enumeration type with a default value of Linear.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1480', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1480 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1480")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1480_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1480_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1480 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1900
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1900
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configurable parameters such as builder, alignment, and openAnimation. The animation effect when the custom dialog pops up is set by the openAnimation parameter. The animation curve is specified by the curve parameter, which is an enumeration type with a value of ExtremeDeceleration.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1900', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1900 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1900")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1900_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1900_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1900 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1310
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1310
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configurable parameters including builder, alignment, and closeAnimation. The animation effect when the custom dialog is closed is set by the closeAnimation parameter. The number of times the animation is played is specified by the iterations parameter, which is set to 0.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1310', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1310 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1310")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1310_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1310_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1310 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1430
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1430
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configurable parameters including builder, alignment, and closeAnimation. The animation effect when the custom dialog is closed is set by the closeAnimation parameter. The animation curve for the closeAnimation is specified by the curve parameter, which is an enumeration type with a value of ExtremeDeceleration.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1430', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1430 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1430")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1430_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1430_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1430 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1710
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1710
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configurable parameters including builder, alignment, and openAnimation. The animation effect when the custom dialog pops up is set by the openAnimation parameter. The duration of the openAnimation is specified by the duration parameter, which is set to 500 milliseconds.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1710', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1710 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1710")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1710_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1710_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1710 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1850
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1850
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configurable parameters including builder, alignment, and openAnimation. The animation effect when the custom dialog pops up is set by the openAnimation parameter. The animation curve for the openAnimation is specified by the curve parameter, which is of type string.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1850', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1850 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1850")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1850_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1850_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1850 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1400
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1400
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configurable parameters including builder, alignment, and closeAnimation. The animation effect when the custom dialog is closed is set by the closeAnimation parameter. The animation curve for the closeAnimation is specified by the curve parameter, which is an enumeration type with a value of EaseIn.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1400', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1400 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1400")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1400_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1400_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1400 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1220
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1220
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configurable parameters including builder, alignment, and closeAnimation. The animation effect when the custom dialog is closed is set by the closeAnimation parameter. The delay for the closeAnimation is specified by the delay parameter, which defaults to 0 milliseconds.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1220', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1220 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1220")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1220_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1220_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1220 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1470
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1470
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configurable parameters including builder, alignment, and closeAnimation. The animation effect when the custom dialog is closed is set by the closeAnimation parameter. The animation curve for the closeAnimation is specified by the curve parameter, which is an enumeration type with a value of LinearOutSlowIn.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1470', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1470 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1470")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1470_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1470_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1470 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1330
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1330
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configurable parameters including builder, alignment, and closeAnimation. The animation effect when the custom dialog is closed is set by the closeAnimation parameter. The number of times the closeAnimation is played is specified by the iterations parameter, which defaults to 1.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1330', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1330 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1330")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1330_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1330_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1330 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1230
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1230
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configurable parameters including builder, alignment, and closeAnimation. The animation effect when the custom dialog is closed is set by the closeAnimation parameter with duration set to 2000.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1230', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1230 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1230")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1230_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1230_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1230 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1790
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1790
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configurable parameters including builder, alignment, and openAnimation. The animation effect when the custom dialog opens is set by the openAnimation parameter with iterations set to 3.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1790', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1790 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1790")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1790_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1790_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1790 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1460
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1460
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configurable parameters including builder, alignment, and closeAnimation. The animation effect when the custom dialog is closed is set by the closeAnimation parameter with curve set to Curve.Friction.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1460', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1460 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1460")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1460_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1460_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1460 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1240
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1240
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configurable parameters including builder, alignment, and closeAnimation. The animation effect when the custom dialog is closed is set by the closeAnimation parameter with duration set to 500.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1240', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1240 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1240")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1240_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1240_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1240 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1750
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1750
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configurable parameters including builder, alignment, and openAnimation. The animation effect when the custom dialog opens is set by the openAnimation parameter with playMode set to PlayMode.Normal.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1750', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1750 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1750")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1750_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1750_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1750 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1360
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1360
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configurable parameters including builder, alignment, and closeAnimation. The animation effect when the custom dialog is closed is set by the closeAnimation parameter with tempo set to 1.0.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1360', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1360 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1360")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1360_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1360_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1360 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1690
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1690
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configurable parameters including builder, alignment, and openAnimation. The animation effect when the custom dialog opens is set by the openAnimation parameter with delay set to 0.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1690', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1690 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1690")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1690_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1690_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1690 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1820
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1820
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configurable parameters including builder, alignment, and openAnimation. The animation effect when the custom dialog opens is set by the openAnimation parameter with tempo set to 0.5.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1820', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1820 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1820")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1820_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1820_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1820 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1800
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1800
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configurable parameters including builder, alignment, and openAnimation. The animation effect when the custom dialog opens is set by the openAnimation parameter with iterations set to 1.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1800', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1800 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1800")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1800_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1800_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1800 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1890
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1890
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configurable parameters including builder, alignment, and openAnimation. The animation effect when the custom dialog opens is set by the openAnimation parameter with curve set to Curve.EaseOut.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1890', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1890 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1890")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1890_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1890_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1890 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1350
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1350
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configurable parameters including builder, alignment, and closeAnimation. The animation effect when the custom dialog is closed is set by the closeAnimation parameter with tempo set to 0.5.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1350', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1350 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1350")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1350_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1350_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1350 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1930
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1930
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configurable parameters including builder, alignment, and openAnimation. The animation effect when the custom dialog opens is set by the openAnimation parameter with curve set to Curve.Friction.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1930', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1930 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1930")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1930_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1930_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1930 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1320
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1320
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configurable parameters including builder, alignment, and closeAnimation. The animation effect when the custom dialog is closed is set by the closeAnimation parameter with iterations set to 3.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1320', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1320 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1320")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1320_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1320_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1320 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1940
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1940
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configurable parameters including builder, alignment, and openAnimation. The animation effect when the custom dialog opens is set by the openAnimation parameter with curve set to Curve.LinearOutSlowIn.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1940', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1940 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1940")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1940_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1940_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1940 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1490
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1490
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configurable parameters including builder, alignment, and closeAnimation. The animation effect when the custom dialog is closed is set by the closeAnimation parameter with curve set to Curve.Rhythm.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1490', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1490 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1490")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1490_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1490_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1490 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1270
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1270
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configurable parameters including builder, alignment, and closeAnimation. The animation effect when the custom dialog is closed is set by the closeAnimation parameter with playMode set to PlayMode.Alternate.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1270', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1270 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1270")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1270_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1270_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1270 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1910
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1910
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configurable parameters including builder, alignment, and openAnimation. The animation effect when the custom dialog opens is set by the openAnimation parameter with curve set to Curve.FastOutLinearIn.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1910', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1910 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1910")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1910_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1910_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1910 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1370
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1370
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configurable parameters including builder, alignment, and closeAnimation. The animation effect when the custom dialog is closed is set by the closeAnimation parameter with tempo set to 2.0.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1370', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1370 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1370")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1370_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1370_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1370 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1250
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1250
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configurable parameters including builder, alignment, and closeAnimation. The animation effect when the custom dialog is closed is set by the closeAnimation parameter with onFinish callback.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1250', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1250 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1250")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1250_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1250_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1250 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1340
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1340
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configurable parameters including builder, alignment, and closeAnimation. The animation effect when the custom dialog is closed is set by the closeAnimation parameter with tempo set to 0.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1340', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1340 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1340")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1340_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1340_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1340 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1960
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1960
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configurable parameters including builder, alignment, and openAnimation. The animation effect when the custom dialog opens is set by the openAnimation parameter with curve set to Curve.Rhythm.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1960', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1960 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1960")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1960_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1960_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1960 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1810
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1810
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configurable parameters including builder, alignment, and openAnimation. The animation effect when the custom dialog opens is set by the openAnimation parameter with tempo set to 0.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1810', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1810 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1810")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1810_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1810_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1810 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1450
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1450
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configurable parameters including builder, alignment, and closeAnimation. The animation effect when the custom dialog is closed is set by the closeAnimation parameter with curve set to Curve.FastOutSlowIn.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1450', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1450 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1450")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1450_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1450_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1450 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1980
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1980
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configurable parameters including builder, alignment, and showInSubWindow. The showInSubWindow parameter is set to false.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1980', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1980 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1980")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1980_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1980_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1980 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1720
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1720
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configurable parameters including builder, alignment, and openAnimation. The animation effect when the custom dialog opens is set by the openAnimation parameter with onFinish callback.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1720', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1720 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1720")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1720_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1720_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1720 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1500
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1500
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configurable parameters including builder, alignment, and closeAnimation. The animation effect when the custom dialog is closed is set by the closeAnimation parameter with curve set to Curve.Sharp.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1500', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1500 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1500")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1500_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1500_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1500 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1920
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1920
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configurable parameters including builder, alignment, and openAnimation. The animation effect when the custom dialog opens is set by the openAnimation parameter with curve set to Curve.FastOutSlowIn.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1920', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1920 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1920")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1920_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1920_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1920 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1510
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1510
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configurable parameters including builder, alignment, and closeAnimation. The animation effect when the custom dialog is closed is set by the closeAnimation parameter with curve set to Curve.Smooth.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1510', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1510 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1510")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1510_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1510_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1510 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1440
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1440
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configurable parameters including builder, alignment, and closeAnimation. The animation effect when the custom dialog is closed is set by the closeAnimation parameter with curve set to Curve.FastOutLinearIn.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1440', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1440 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1440")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1440_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1440_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1440 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1780
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1780
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configurable parameters including builder, alignment, and openAnimation. The animation effect when the custom dialog opens is set by the openAnimation parameter with iterations set to 0.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1780', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1780 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1780")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1780_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1780_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1780 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1970
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1970
     * @tc.type   : Function
     * @tc.desc   : The custom dialog CustomDialogController has configurable parameters including builder, alignment, and openAnimation. The animation effect when the custom dialog opens is set by the openAnimation parameter with curve set to Curve.Smooth.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1970', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1970 start.`);
      Settings.createWindow("testability/pages/CustomDialogInterface/CustomDialogInterface1970")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1970_001'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      let Button2: Component = await driver.waitForComponent(ON.id('CustomDialogInterface1970_002'),1000);
      await Button2.click();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CUSTOMDIALOG_INTERFACE_1970 finish.`);
      done()
    })



  })
}
