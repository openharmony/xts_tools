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

import { describe, afterEach, it, Level } from '@ohos/hypium'
import Settings from '../model/Settings'
import windowSnap from '../model/snapShot'
import Logger from '../model/Logger'
import Utils from '../model/Utils'
import { Driver, ON, Component } from '@kit.TestKit';

export default function FocusPBHeightWidthTest() {

  describe('FocusPBHeightWidthTest', () => {
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
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0380
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0380
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter image set to PixelMap
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0380', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0380 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0380");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0380'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0380 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0390
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0390
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter image set to Resource
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0390', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0390 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0390");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0390'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0390 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0400
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0400
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter image set to string path
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0400', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0400 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0400");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0400'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0400 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0410
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0410
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter image set to DrawableDescriptor
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0410', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0410 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0410");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0410'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0410 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0420
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0420
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter image set to rectangle image for adaptive width and height
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0420', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0420 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0420");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0420'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0420 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0430
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0430
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter width set to 50px
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0430', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0430 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0430");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0430'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0430 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0440
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0440
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter width set to 0px for adaptive width
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0440', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0440 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0440");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0440'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0440 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0450
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0450
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter width set to -50px for adaptive width
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0450', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0450 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0450");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0450'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0450 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0460
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0460
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter width set to 50vp
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0460', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0460 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0460");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0460'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0460 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0470
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0470
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter width not set for default adaptive width
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0470', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0470 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0470");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0470'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0470 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0480
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0480
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter width set to -50vp for adaptive width
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0480', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0480 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0480");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0480'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0480 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0490
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0490
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter width set to 50fp
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0490', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0490 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0490");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0490'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0490 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0500
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0500
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter width set to 0fp for adaptive width
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0500', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0500 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0500");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0500'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0500 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0510
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0510
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter width set to -50fp for adaptive width
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0510', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0510 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0510");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0510'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0510 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0520
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0520
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter width set to 50lpx
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0520', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0520 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0520");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0520'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0520 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0530
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0530
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter width set to 0lpx for adaptive width
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0530', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0530 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0530");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0530'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0530 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0540
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0540
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter width set to -50lpx for adaptive width
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0540', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0540 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0540");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0540'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0540 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0550
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0550
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter width set to 80%
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0550', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0550 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0550");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0550'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0550 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0560
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0560
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter width set to 0 for adaptive width
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0560', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0560 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0560");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0560'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0560 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0570
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0570
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter width set to -50% for adaptive width
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0570', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0570 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0570");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0570'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0570 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0580
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0580
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter width set to Resource type 50px
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0580', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0580 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0580");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0580'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0580 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0590
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0590
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter width set to Resource type 0px for adaptive width
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0590', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0590 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0590");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0590'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0590 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0600
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0600
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter width set to Resource type -50px for adaptive width
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0600', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0600 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0600");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0600'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0600 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0610
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0610
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter width set to Resource type 50vp
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0610', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0610 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0610");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0610'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0610 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0620
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0620
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter width set to Resource type 0vp for adaptive width
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0620', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0620 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0620");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0620'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0620 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0630
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0630
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter width set to Resource type -50vp for adaptive width
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0630', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0630 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0630");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0630'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0630 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0640
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0640
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter width set to Resource type 50fp
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0640', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0640 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0640");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0640'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0640 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0650
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0650
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter width set to Resource type 0fp for adaptive width
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0650', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0650 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0650");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0650'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0650 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0660
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0660
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter width set to Resource type -50fp for adaptive width
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0660', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0660 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0660");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0660'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0660 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0670
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0670
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter width set to Resource type 50lpx
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0670', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0670 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0670");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0670'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0670 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0680
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0680
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter width set to Resource type 0lpx for adaptive width
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0680', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0680 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0680");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0680'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0680 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0690
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0690
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter width set to Resource type -50lpx for adaptive width
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0690', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0690 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0690");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0690'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0690 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0700
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0700
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter width set to Resource type 80%
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0700', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0700 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0700");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0700'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0700 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0710
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0710
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter width set to Resource type 0 for adaptive width
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0710', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0710 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0710");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0710'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0710 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0720
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0720
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter width set to Resource type -50% for adaptive width
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0720', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0720 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0720");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0720'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0720 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0730
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0730
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter height set to 50px
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0730', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0730 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0730");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0730'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0730 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0740
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0740
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter height set to 0px for adaptive height
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0740', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0740 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0740");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0740'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0740 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0750
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0750
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter height set to -50px for adaptive height
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0750', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0750 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0750");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0750'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0750 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0760
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0760
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter height set to 50vp
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0760', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0760 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0760");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0760'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0760 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0770
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0770
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter height set to 0vp for adaptive height
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0770', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0770 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0770");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0770'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0770 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0780
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0780
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter height set to -50vp for adaptive height
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0780', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0780 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0780");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0780'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0780 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0790
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0790
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter height set to 50fp
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0790', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0790 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0790");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0790'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0790 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0800
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0800
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter height set to 0fp for adaptive height
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0800', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0800 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0800");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0800'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0800 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0810
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0810
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter height set to -50fp for adaptive height
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0810', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0810 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0810");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0810'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0810 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0820
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0820
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter height set to 50lpx
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0820', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0820 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0820");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0820'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0820 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0830
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0830
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter height set to 0lpx for adaptive height
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0830', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0830 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0830");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0830'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0830 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0840
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0840
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter height set to -50lpx for adaptive height
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0840', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0840 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0840");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0840'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0840 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0850
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0850
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter height set to 80%
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0850', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0850 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0850");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0850'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0850 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0860
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0860
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter height set to 0 for adaptive height
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0860', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0860 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0860");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0860'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0860 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0870
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0870
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter height set to -50% for adaptive height
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0870', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0870 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0870");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0870'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0870 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0880
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0880
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter height set to Resource type of 50px
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0880', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0880 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0880");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0880'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0880 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0890
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0890
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter height set to Resource type of 0px for adaptive height
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0890', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0890 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0890");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0890'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0890 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0900
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0900
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter height set to Resource type of -50px for adaptive height
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0900', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0900 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0900");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0900'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0900 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0910
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0910
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter height set to Resource type of 50vp
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0910', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0910 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0910");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0910'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0910 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0920
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0920
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter height set to Resource type of 0vp for adaptive height
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0920', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0920 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0920");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0920'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0920 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0930
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0930
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter height set to Resource type of -50vp for adaptive height
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0930', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0930 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0930");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0930'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0930 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0940
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0940
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter height set to Resource type of 50fp
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0940', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0940 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0940");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0940'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0940 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0950
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0950
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter height set to Resource type of 0fp for adaptive height
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0950', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0950 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0950");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0950'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0950 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0960
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0960
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter height set to Resource type of -50fp for adaptive height
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0960', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0960 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0960");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0960'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0960 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0970
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0970
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter height set to Resource type of 50lpx
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0970', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0970 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0970");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0970'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0970 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0980
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0980
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter height set to Resource type of 0lpx for adaptive height
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0980', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0980 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0980");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0980'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0980 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0990
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0990
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter height set to Resource type of -50lpx for adaptive height
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0990', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0990 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth0990");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton0990'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_0990 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1000
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1000
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter height set to Resource type of 80%
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1000', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1000 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1000");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1000'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1000 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1010
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1010
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter height set to Resource type of 0 for adaptive height
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1010', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1010 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1010");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1010'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1010 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1020
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1020
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter height set to Resource type of -50% for adaptive height
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1020', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1020 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1020");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1020'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1020 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1030
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1030
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter fillColor set to Color.Red
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1030', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1030 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1030");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1030'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1030 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1040
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1040
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter fillColor set to number (0xFF0000)
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1040', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1040 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1040");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1040'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1040 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1050
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1050
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter fillColor set to rgba string
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1050', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1050 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1050");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1050'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1050 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1060
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1060
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter fillColor set to Resource type of Color.Red
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1060', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1060 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1060");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1060'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1060 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1070
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1070
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter fillColor set to Resource type of number (0xFFFFFF)
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1070', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1070 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1070");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1070'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1070 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1080
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1080
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter fillColor set to Resource type of rgba string
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1080', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1080 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1080");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1080'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1080 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1090
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1090
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter borderRadius set to length type 10
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1090', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1090 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1090");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1090'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1090 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1100
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1100
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter borderRadius set to length type 0
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1100', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1100 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1100");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1100'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1100 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1110
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1110
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter borderRadius set to length type -10
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1110', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1110 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1110");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1110'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1110 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1120
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1120
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter borderRadius set to length type 10%
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1120', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1120 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1120");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1120'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1120 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1130
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1130
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter borderRadius topLeft set to length type 10
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1130', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1130 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1130");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1130'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1130 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1140
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1140
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter borderRadius topLeft set to length type 0
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1140', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1140 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1140");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1140'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1140 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1150
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1150
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter borderRadius topLeft set to length type -10
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1150', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1150 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1150");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1150'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1150 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1160
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1160
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter borderRadius topLeft set to length type 10%
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1160', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1160 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1160");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1160'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1160 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1170
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1170
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter borderRadius topRight set to length type 10
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1170', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1170 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1170");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1170'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1170 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1180
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1180
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter borderRadius topRight set to length type 0
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1180', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1180 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1180");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1180'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1180 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1190
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1190
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter borderRadius topRight set to length type -10
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1190', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1190 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1190");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1190'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1190 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1200
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1200
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter borderRadius topRight set to length type 10%
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1200', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1200 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1200");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1200'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1200 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1210
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1210
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter borderRadius bottomLeft set to length type 10
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1210', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1210 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1210");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1210'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1210 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1220
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1220
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter borderRadius bottomLeft set to length type 0
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1220', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1220 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1220");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1220'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1220 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1230
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1230
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter borderRadius bottomLeft set to length type -10
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1230', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1230 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1230");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1230'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1230 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1240
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1240
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter borderRadius bottomLeft set to length type 10%
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1240', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1240 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1240");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1240'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1240 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1250
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1250
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter borderRadius bottomRight set to length type 10
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1250', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1250 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1250");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1250'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1250 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1260
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1260
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter borderRadius bottomRight set to length type 0
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1260', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1260 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1260");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1260'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1260 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1270
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1270
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter borderRadius bottomRight set to length type -10
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1270', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1270 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1270");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1270'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1270 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1280
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1280
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter borderRadius bottomRight set to length type 10%
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1280', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1280 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1280");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1280'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1280 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1290
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1290
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with icon parameter borderRadius not set
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1290', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1290 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1290");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1290'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1290 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1300
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1300
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with title parameter text set to Chinese
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1300', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1300 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1300");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1300'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1300 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1310
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1310
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with title parameter text set to English
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1310', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1310 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1310");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1310'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1310 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1320
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1320
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with title parameter text set to special characters
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1320', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1320 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1320");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1320'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1320 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1330
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1330
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with title parameter text set to very long text
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1330', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1330 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1330");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1330'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1330 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1340
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1340
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with title parameter fontSize set to number type 50
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1340', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1340 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1340");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1340'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1340 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1350
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1350
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with title parameter fontSize set to number type 0
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1350', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1350 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1350");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1350'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1350 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1360
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1360
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with title parameter fontSize set to number type -50
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1360', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1360 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1360");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1360'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1360 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1370
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1370
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with title parameter fontSize set to string type 50
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1370', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1370 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1370");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1370'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1370 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1380
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1380
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with title parameter fontSize set to string type 0
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1380', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1380 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1380");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1380'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1380 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1390
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1390
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with title parameter fontSize set to string type -50
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1390', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1390 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1390");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1390'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1390 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1400
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1400
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with title parameter fontSize set to Resource type number 50
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1400', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1400 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1400");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1400'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1400 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1410
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1410
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with title parameter fontSize set to Resource type number 0
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1410', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1410 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1410");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1410'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1410 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1420
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1420
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with title parameter fontSize set to Resource type number -50
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1420', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1420 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1420");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1420'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1420 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1430
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1430
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with title parameter fontSize set to Resource type string 50
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1430', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1430 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1430");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1430'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1430 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1440
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1440
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with title parameter fontSize set to Resource type string 0
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1440', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1440 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1440");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1440'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1440 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1450
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1450
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with title parameter fontSize set to Resource type string -50
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1450', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1450 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1450");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1450'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1450 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1460
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1460
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with title parameter fontColor set to string type rgba
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1460', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1460 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1460");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1460'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1460 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1470
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1470
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with title parameter fontColor set to Color.Red
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1470', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1470 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1470");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1470'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1470 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1480
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1480
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with title parameter fontColor set to number type 0xFFFFFF
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1480', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1480 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1480");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1480'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1480 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1490
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1490
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with title parameter fontColor set to Resource type Color.Red
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1490', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1490 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1490");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1490'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1490 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1500
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1500
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with title parameter fontColor set to Resource type number 0xFFFFFF
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1500', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1500 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1500");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1500'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1500 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1510
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1510
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with title parameter fontColor set to Resource type rgba string
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1510', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1510 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1510");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1510'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1510 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1520
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1520
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with title parameter fontWeight set to number type 50
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1520', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1520 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1520");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1520'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1520 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1530
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1530
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with title parameter fontWeight set to number type 0
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1530', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1530 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1530");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1530'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1530 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1540
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1540
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with title parameter fontWeight set to number type -50
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1540', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1540 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1540");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1540'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1540 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1550
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1550
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with title parameter fontWeight set to FontWeight.Lighter
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1550', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1550 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1550");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1550'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1550 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1560
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1560
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with title parameter fontWeight set to FontWeight.Normal
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1560', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1560 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1560");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1560'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1560 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1570
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1570
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with title parameter fontWeight set to FontWeight.Regular
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1570', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1570 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1570");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1570'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1570 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1580
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1580
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with title parameter fontWeight set to FontWeight.Medium
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1580', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1580 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1580");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1580'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1580 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1590
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1590
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with title parameter fontWeight set to FontWeight.Bold
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1590', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1590 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1590");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1590'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1590 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1600
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1600
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with title parameter fontWeight set to FontWeight.Bolder
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1600', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1600 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1600");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1600'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1600 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1610
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1610
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with title parameter fontWeight set to string type 50
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1610', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1610 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1610");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1610'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1610 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1620
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1620
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with title parameter fontWeight set to string type 0
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1620', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1620 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1620");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1620'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1620 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1630
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1630
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with title parameter fontWeight set to string type -50
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1630', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1630 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1630");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1630'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1630 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1640
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1640
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with message parameter text set to Chinese text
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1640', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1640 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1640");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1640'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1640 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1650
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1650
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with message parameter text set to English text
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1650', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1650 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1650");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1650'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1650 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1660
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1660
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with message parameter text set to special characters
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1660', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1660 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1660");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1660'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1660 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1670
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1670
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with message parameter text set to very long text
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1670', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1670 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1670");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1670'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1670 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1680
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1680
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with message parameter fontSize set to number type 50
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1680', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1680 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1680");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1680'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1680 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1690
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1690
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with message parameter fontSize set to number type 0
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1690', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1690 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1690");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1690'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1690 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1700
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1700
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with message parameter fontSize set to number type -50
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1700', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1700 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1700");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1700'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1700 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1710
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1710
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with message parameter fontSize set to string type 50
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1710', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1710 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1710");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1710'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1710 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1720
    * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1720
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Advanced component Popup - Call d.ts file to directly construct popup template with message parameter fontSize set to string type 0
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1720', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1720 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_PBHeightWidth/PopupHeightWidth1720");
      } catch (e) {
        Logger.error('TEST', `Failed to create window: ${e}`);
        done();
        return;
      }
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let button: Component = await driver.waitForComponent(ON.id('showPopupButton1720'), 1000);
      await button.click();
      await driver.waitForIdle(2000, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_POPUP_HEIGHTWIDTH_1720 finish.`);
      done()
    })


