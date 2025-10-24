/*
 * Copyright (c) 2024 Shenzhen Kaihong Digital Industry Development Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
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
import { Driver, ON,Component ,MouseButton, UiWindow } from '@ohos.UiTest'
/*
 * SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0010:设置文本颜色
 *
 * Settings.createWindow(config.url)：
 *  创建窗口，更改窗口基本配置，更改方式详见model/Settings createWindow方法
 *
 * windowSnap.snapShot(globalThis.context)：
 *  窗口截屏&图片文件保存，存储在设备端
 *  存储文件固定，单挑用例执行后覆盖，用于自动化UI对比
 *  支持调试更改文件名为时间戳格式，更改model/snapShot createAndGetFile方法 注释L35，放开L32，L33
 *
 * Logger日志使用方法：
 *  import Logger form './model/Logger'
 *  Logger.info(TAG,`config = ${config}, err = ${JSON.stringify(exception)}`)
 * */

export default function UiComponentPopupBoxSpecificationsPageDisplay() {

  describe('UiComponentPopupBoxSpecificationsPageDisplay', () => {
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
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0710
       * @tc.name    Verify that when CustomDialogController sets LevelMode to EMBEDDED and ImmersiveMode to abnormal values, and levelUniqueId is set to a normal value, the dialog node that pops up is at the top layer 01 of the current page.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0710', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0710 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay01")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay01_03'),1000);
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay01_04'),1000);
      await button01.click()
      await button02.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button03: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay01_01'),1000);
      await button03.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      let button04: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay_NextPage'),1000);
      await button04.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0710 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0690
       * @tc.name    Verify that when CustomDialogController sets LevelMode to EMBEDDED and ImmersiveMode to EXTEND, and levelUniqueId is set to a normal value, the dialog node that pops up is at the top layer 03 of the current page.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0690', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0690 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay02")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay02_03'),1000);
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay02_04'),1000);
      await button01.click()
      await button02.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button03: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay02_01'),1000);
      await button03.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      let button04: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay_NextPage'),1000);
      await button04.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0690 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0810
       * @tc.name    Verify that when CustomDialogController sets LevelMode to OVERLAY and ImmersiveMode to EXTEND, the dialog node that pops up is at the global window top layer 03.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0810', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0810 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay03")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay03_03'),1000);
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay03_04'),1000);
      await button01.click()
      await button02.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button03: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay03_01'),1000);
      await button03.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await driver.mouseClick({x:200,y:200},MouseButton.MOUSE_BUTTON_LEFT)
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0810 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0780
       * @tc.name    Verify that when CustomDialogController sets LevelMode to OVERLAY and ImmersiveMode to DEFAULT, the dialog node that pops up is at the global window top layer 04.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0780', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0780 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay04")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay04_03'),1000);
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay04_04'),1000);
      await button01.click()
      await button02.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button03: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay04_01'),1000);
      await button03.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await driver.mouseClick({x:200,y:200},MouseButton.MOUSE_BUTTON_LEFT)
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0780 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0820
       * @tc.name    Verify that when CustomDialogController sets LevelMode to OVERLAY and ImmersiveMode to abnormal values, the dialog node that pops up is at the global window top layer 05.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0820', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0820 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay05")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay05_03'),1000);
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay05_04'),1000);
      await button01.click()
      await button02.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button03: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay05_01'),1000);
      await button03.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await driver.mouseClick({x:200,y:200},MouseButton.MOUSE_BUTTON_LEFT)
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0820 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0680
       * @tc.name    Verify that when CustomDialogController sets LevelMode to EMBEDDED and ImmersiveMode to EXTEND, and levelUniqueId is set to a normal value, the dialog node that pops up is at the top layer 02 of the current page.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0680', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0680 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay06")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay06_03'),1000);
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay06_04'),1000);
      await button01.click()
      await button02.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button03: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay06_01'),1000);
      await button03.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await driver.mouseClick({x:200,y:1230},MouseButton.MOUSE_BUTTON_LEFT)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0680 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0750
       * @tc.name    Verify that when CustomDialogController sets LevelMode to EMBEDDED and ImmersiveMode to abnormal values, and levelUniqueId is set to a normal value, the dialog node that pops up is at the current page top layer 07.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0750', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0750 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay07")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay07_03'),1000);
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay07_04'),1000);
      await button01.click()
      await button02.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button03: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay07_01'),1000);
      await button03.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await driver.mouseClick({x:200,y:1230},MouseButton.MOUSE_BUTTON_LEFT)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0750 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0800
       * @tc.name    Verify that when CustomDialogController sets LevelMode to OVERLAY and ImmersiveMode to EXTEND, the dialog node that pops up is at the global window top layer 08.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0800', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0800 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay08")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay08_03'),1000);
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay08_04'),1000);
      await button01.click()
      await button02.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button03: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay08_01'),1000);
      await button03.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await driver.mouseClick({x:200,y:1230},MouseButton.MOUSE_BUTTON_LEFT)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0800 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0770
       * @tc.name    Verify that when CustomDialogController sets LevelMode to OVERLAY and ImmersiveMode to DEFAULT, the dialog node that pops up is at the global window top layer 09.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0770', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0770 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay09")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay09_03'),1000);
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay09_04'),1000);
      await button01.click()
      await button02.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button03: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay09_01'),1000);
      await button03.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await driver.mouseClick({x:200,y:1230},MouseButton.MOUSE_BUTTON_LEFT)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0770 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0870
       * @tc.name    Verify that when CustomDialogController sets LevelMode to abnormal values and ImmersiveMode to DEFAULT, the dialog node that pops up is at the global window top layer 10.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0870', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0870 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay10")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay10_03'),1000);
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay10_04'),1000);
      await button01.click()
      await button02.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button03: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay10_01'),1000);
      await button03.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await driver.mouseClick({x:200,y:1230},MouseButton.MOUSE_BUTTON_LEFT)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0870 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0890
       * @tc.name    Verify that when CustomDialogController sets LevelMode to abnormal values and ImmersiveMode to EXTEND, the dialog node that pops up is at the global window top layer 11.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0890', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0890 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay11")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay11_03'),1000);
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay11_04'),1000);
      await button01.click()
      await button02.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button03: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay11_01'),1000);
      await button03.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await driver.mouseClick({x:200,y:1230},MouseButton.MOUSE_BUTTON_LEFT)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0890 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0910
       * @tc.name    Verify that when CustomDialogController sets LevelMode to abnormal values and ImmersiveMode to abnormal values, the dialog node that pops up is at the global window top layer 12.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0910', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0910 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay12")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay12_03'),1000);
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay12_04'),1000);
      await button01.click()
      await button02.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button03: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay12_01'),1000);
      await button03.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await driver.mouseClick({x:200,y:1230},MouseButton.MOUSE_BUTTON_LEFT)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0910 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1510
       * @tc.name    Verify that when ShowActionSheet sets LevelMode to abnormal values and ImmersiveMode to DEFAULT, the dialog node that pops up is at the global window top layer 13.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1510', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1510 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay13")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay13_02'),1000);
      await button01.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay13_01'),1000);
      await button02.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await driver.mouseClick({x:200,y:1230},MouseButton.MOUSE_BUTTON_LEFT)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1510 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1550
       * @tc.name    Verify that when ShowActionSheet sets LevelMode to abnormal values and ImmersiveMode to abnormal values, the dialog node that pops up is at the global window top layer 14.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1550', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1550 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay14")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay14_02'),1000);
      await button01.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay14_01'),1000);
      await button02.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await driver.mouseClick({x:200,y:1230},MouseButton.MOUSE_BUTTON_LEFT)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1550 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1530
       * @tc.name    Verify that when ShowActionSheet sets LevelMode to abnormal values and ImmersiveMode to EXTEND, the dialog node that pops up is at the global window top layer 15.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1530', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1530 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay15")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay15_02'),1000);
      await button01.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay15_01'),1000);
      await button02.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await driver.mouseClick({x:200,y:1230},MouseButton.MOUSE_BUTTON_LEFT)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1530 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1340
       * @tc.name    Verify that when ShowActionSheet sets LevelMode to EMBEDDED, ImmersiveMode to DEFAULT, and levelUniqueId to a normal value, the dialog node that pops up is at the global window top layer 16.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1340', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1340 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay16")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay16_02'),1000);
      await button01.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay16_01'),1000);
      await button02.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      let button03: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay_NextPage'),1000);
      await button03.click();
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1340 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1390
       * @tc.name    Verify that when ShowActionSheet sets LevelMode to EMBEDDED, ImmersiveMode to EXTEND, and levelUniqueId to a normal value, the dialog node that pops up is at the global window top layer 17.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1390', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1390 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay17")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay17_02'),1000);
      await button01.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay17_01'),1000);
      await button02.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      let button03: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay_NextPage'),1000);
      await button03.click();
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1390 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1430
       * @tc.name    Verify that when ShowActionSheet sets LevelMode to EMBEDDED, ImmersiveMode to abnormal values, and levelUniqueId to a normal value, the dialog node that pops up is at the global window top layer 18.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1430', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1430 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay18")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay18_02'),1000);
      await button01.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay18_01'),1000);
      await button02.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      let button03: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay_NextPage'),1000);
      await button03.click();
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1430 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0280
       * @tc.name    Verify that when AlertDialog sets LevelMode to EMBEDDED, ImmersiveMode to DEFAULT, and levelUniqueId to a normal value, the dialog node that pops up is at the current page top layer 19.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0280', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0280 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay19")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay19_02'),1000);
      await button01.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0280 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0310
       * @tc.name    Verify that when AlertDialog sets LevelMode to EMBEDDED, ImmersiveMode to EXTEND, and levelUniqueId to an abnormal value, the dialog node that pops up is at the global window top layer 20.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0310', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0310 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay20")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay20_02'),1000);
      await button01.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0310 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0290
       * @tc.name    Verify that when AlertDialog sets LevelMode to EMBEDDED, ImmersiveMode to DEFAULT, and levelUniqueId to a normal value, the dialog node that pops up is at the current page top layer 21.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0290', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0290 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay21")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay21_02'),1000);
      await button01.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay21_01'),1000);
      await button02.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      let button03: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay_NextPage'),1000);
      await button03.click();
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0290 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0340
       * @tc.name    Verify that when AlertDialog sets LevelMode to EMBEDDED, ImmersiveMode to EXTEND, and levelUniqueId to a normal value, the dialog node that pops up is at the current page top layer 22.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0340', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0340 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay22")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay22_02'),1000);
      await button01.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay22_01'),1000);
      await button02.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      let button03: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay_NextPage'),1000);
      await button03.click();
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0340 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0380
       * @tc.name    Verify that when AlertDialog sets LevelMode to EMBEDDED, ImmersiveMode to abnormal values, and levelUniqueId to a normal value, the dialog node that pops up is at the current page top layer 23.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0380', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0380 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay23")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay23_02'),1000);
      await button01.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay23_01'),1000);
      await button02.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      let button03: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay_NextPage'),1000);
      await button03.click();
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0380 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2600
       * @tc.name    Verify that when uiContext_presentCustomDialog sets LevelMode to EMBEDDED, ImmersiveMode to DEFAULT, and levelUniqueId to a normal value, the dialog node that pops up is at the current page top layer 24.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2600', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2600 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay24")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay24_02'),1000);
      await button01.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay24_01'),1000);
      await button02.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      let button03: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay_NextPage'),1000);
      await button03.click();
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2600 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2660
       * @tc.name    Verify that when uiContext_presentCustomDialog sets LevelMode to EMBEDDED, ImmersiveMode to EXTEND, and levelUniqueId to a normal value, the dialog node that pops up is at the current page top layer 25.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2660', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2660 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay25")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay25_02'),1000);
      await button01.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay25_01'),1000);
      await button02.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await driver.mouseClick({x:200,y:1230},MouseButton.MOUSE_BUTTON_LEFT)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2660 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2640
       * @tc.name    Verify that when uiContext_presentCustomDialog sets LevelMode to EMBEDDED, ImmersiveMode to EXTEND, and levelUniqueId to an abnormal value, the dialog node that pops up is at the global window top layer 26.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2640', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2640 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay26")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay26_02'),1000);
      await button01.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay26_01'),1000);
      await button02.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      let button03: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay_NextPage'),1000);
      await button03.click();
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2640 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2670
       * @tc.name    Verify that when uiContext_presentCustomDialog sets LevelMode to EMBEDDED, ImmersiveMode to EXTEND, and levelUniqueId to a normal value, the dialog node that pops up is at the current page top layer 27.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2670', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2670 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay27")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay27_02'),1000);
      await button01.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay27_01'),1000);
      await button02.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      let button03: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay_NextPage'),1000);
      await button03.click();
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2670 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2680
       * @tc.name    Verify that when uiContext_presentCustomDialog sets LevelMode to EMBEDDED, ImmersiveMode to an abnormal value, and levelUniqueId to an abnormal value, the dialog node that pops up is at the global window top layer 28.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2680', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2680 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay28")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay28_02'),1000);
      await button01.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay28_01'),1000);
      await button02.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      let button03: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay_NextPage'),1000);
      await button03.click();
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2680 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2690
       * @tc.name    Verify that when uiContext_presentCustomDialog sets LevelMode to EMBEDDED, ImmersiveMode to an abnormal value, and levelUniqueId to a normal value, the dialog node that pops up is at the current page top layer 29.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2690', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2690 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay29")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay29_02'),1000);
      await button01.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay29_01'),1000);
      await button02.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      let button03: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay_NextPage'),1000);
      await button03.click();
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2690 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2730
       * @tc.name    Verify that when uiContext_presentCustomDialog sets LevelMode to EMBEDDED, ImmersiveMode to an abnormal value, and levelUniqueId to a normal value, the dialog node that pops up is at the current page top layer 30.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2730', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2730 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay30")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay30_02'),1000);
      await button01.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay30_01'),1000);
      await button02.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await driver.mouseClick({x:200,y:1230},MouseButton.MOUSE_BUTTON_LEFT)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2730 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1860
       * @tc.name    Verify that when uiContext_openCustomDialogWithController sets LevelMode to EMBEDDED, ImmersiveMode to DEFAULT, and levelUniqueId to a normal value, the dialog node that pops up is at the current page top layer 31.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1860', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1860 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay31")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay31_02'),1000);
      await button01.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay31_01'),1000);
      await button02.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      let button03: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay_NextPage'),1000);
      await button03.click();
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1860 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1850
       * @tc.name    Verify that when uiContext_openCustomDialogWithController sets LevelMode to EMBEDDED, ImmersiveMode to DEFAULT, and levelUniqueId to a normal value, the dialog node that pops up is at the current page top layer 32.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1850', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1850 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay32")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay32_02'),1000);
      await button01.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay32_01'),1000);
      await button02.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await driver.mouseClick({x:200,y:1230},MouseButton.MOUSE_BUTTON_LEFT)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1850 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1920
       * @tc.name    Verify that when uiContext_openCustomDialogWithController sets LevelMode to EMBEDDED, ImmersiveMode to EXTEND, and levelUniqueId to a normal value, the dialog node that pops up is at the current page top layer 33.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1920', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1920 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay33")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay33_02'),1000);
      await button01.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay33_01'),1000);
      await button02.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await driver.mouseClick({x:200,y:1230},MouseButton.MOUSE_BUTTON_LEFT)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1920 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1930
       * @tc.name    Verify that when uiContext_openCustomDialogWithController sets LevelMode to EMBEDDED, ImmersiveMode to EXTEND, and levelUniqueId to a normal value, the dialog node that pops up is at the current page top layer 34.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1930', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1930 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay34")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay34_02'),1000);
      await button01.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay34_01'),1000);
      await button02.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      let button03: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay_NextPage'),1000);
      await button03.click();
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1930 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1950
       * @tc.name    Verify that when uiContext_openCustomDialogWithController sets LevelMode to EMBEDDED, ImmersiveMode to an abnormal value, and levelUniqueId to a normal value, the dialog node that pops up is at the current page top layer 35.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1950', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1950 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay35")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay35_02'),1000);
      await button01.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay35_01'),1000);
      await button02.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      let button03: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay_NextPage'),1000);
      await button03.click();
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1950 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1990
       * @tc.name    Verify that when uiContext_openCustomDialogWithController sets LevelMode to EMBEDDED, ImmersiveMode to an abnormal value, and levelUniqueId to a normal value, the dialog node that pops up is at the current page top layer 36.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1990', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1990 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay36")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay36_02'),1000);
      await button01.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay36_01'),1000);
      await button02.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await driver.mouseClick({x:200,y:1230},MouseButton.MOUSE_BUTTON_LEFT)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1990 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2220
       * @tc.name    Verify that when uiContext_openCustomDialog sets LevelMode to EMBEDDED, ImmersiveMode to DEFAULT, and levelUniqueId to a normal value, the dialog node that pops up is at the current page top layer 37.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2220', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2220 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay37")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay37_04'),1000);
      await button01.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay37_01'),1000);
      await button02.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await driver.mouseClick({x:200,y:1230},MouseButton.MOUSE_BUTTON_LEFT)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2220 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2230
       * @tc.name    Verify that when uiContext_openCustomDialog sets LevelMode to EMBEDDED, ImmersiveMode to DEFAULT, and levelUniqueId to a normal value, the dialog node that pops up is at the current page top layer 38.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2230', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2230 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay38")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay38_04'),1000);
      await button01.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay38_01'),1000);
      await button02.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      let button03: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay_NextPage'),1000);
      await button03.click();
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2230 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2300
       * @tc.name    Verify that when uiContext_openCustomDialog sets LevelMode to EMBEDDED, ImmersiveMode to EXTEND, and levelUniqueId to a normal value, the dialog node that pops up is at the current page top layer 39.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2300', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2300 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay39")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay39_04'),1000);
      await button01.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay39_01'),1000);
      await button02.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await driver.mouseClick({x:200,y:1230},MouseButton.MOUSE_BUTTON_LEFT)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2300 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2280
       * @tc.name    Verify that when uiContext_openCustomDialog sets LevelMode to EMBEDDED, ImmersiveMode to EXTEND, and levelUniqueId to a normal value, the dialog node that pops up is at the global window top layer 40.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2280', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2280 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay40")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay40_04'),1000);
      await button01.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay40_01'),1000);
      await button02.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await driver.mouseClick({x:200,y:1230},MouseButton.MOUSE_BUTTON_LEFT)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2280 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2320
       * @tc.name    Verify that when uiContext_openCustomDialog sets LevelMode to EMBEDDED, ImmersiveMode to an abnormal value, and levelUniqueId to a normal value, the dialog node that pops up is at the current page top layer 41.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2320', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2320 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay41")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay41_04'),1000);
      await button01.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay41_01'),1000);
      await button02.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await driver.mouseClick({x:200,y:1230},MouseButton.MOUSE_BUTTON_LEFT)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2320 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2360
       * @tc.name    Verify that when uiContext_openCustomDialog sets LevelMode to EMBEDDED, ImmersiveMode to an abnormal value, and levelUniqueId to a normal value, the dialog node that pops up is at the current page top layer 42.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2360', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2360 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay42")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay42_04'),1000);
      await button01.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay42_01'),1000);
      await button02.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await driver.mouseClick({x:200,y:1230},MouseButton.MOUSE_BUTTON_LEFT)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2360 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2470
       * @tc.name    Verify that when uiContext_openCustomDialog sets LevelMode to an abnormal value and ImmersiveMode to DEFAULT, the dialog node that pops up is at the global window top layer 43.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2470', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2470 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay43")
      let driver:Driver=Driver.create();
      let button00: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay43_03'),1000);
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay43_04'),1000);
      await button00.click()
      await driver.waitForIdle(500,2000)
      await button01.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay43_01'),1000);
      await button02.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await driver.mouseClick({x:200,y:200},MouseButton.MOUSE_BUTTON_LEFT)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2470 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2420
       * @tc.name    Verify that when uiContext_openCustomDialog sets LevelMode to OverLay and ImmersiveMode to EXTEND, the dialog node that pops up is at the global window top layer 44.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2420', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2420 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay44")
      let driver:Driver=Driver.create();
      let button00: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay44_03'),1000);
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay44_04'),1000);
      await button00.click()
      await driver.waitForIdle(500,2000)
      await button01.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay44_01'),1000);
      await button02.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await driver.mouseClick({x:200,y:200},MouseButton.MOUSE_BUTTON_LEFT)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2420 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2430
       * @tc.name    Verify that when uiContext_openCustomDialog sets LevelMode to OverLay and ImmersiveMode to an abnormal value, the dialog node that pops up is at the global window top layer 45.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2430', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2430 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay45")
      let driver:Driver=Driver.create();
      let button00: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay45_03'),1000);
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay45_04'),1000);
      await button00.click()
      await driver.waitForIdle(500,2000)
      await button01.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay45_01'),1000);
      await button02.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await driver.mouseClick({x:200,y:200},MouseButton.MOUSE_BUTTON_LEFT)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2430 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2540
       * @tc.name    Verify that when uiContext_openCustomDialog sets LevelMode to an abnormal value and ImmersiveMode to an abnormal value, the dialog node that pops up is at the global window top layer 46.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2540', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2540 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay46")
      let driver:Driver=Driver.create();
      let button00: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay46_03'),1000);
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay46_04'),1000);
      await button00.click()
      await driver.waitForIdle(500,2000)
      await button01.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay46_01'),1000);
      await button02.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await driver.mouseClick({x:200,y:200},MouseButton.MOUSE_BUTTON_LEFT)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2540 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2520
       * @tc.name    Verify that when uiContext_openCustomDialog sets LevelMode to an abnormal value and ImmersiveMode to EXTEND, (router)the dialog node that pops up is at the global window top layer 47.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2520', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2520 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay47")
      let driver:Driver=Driver.create();
      let button00: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay47_03'),1000);
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay47_04'),1000);
      await button00.click()
      await driver.waitForIdle(500,2000)
      await button01.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay47_01'),1000);
      await button02.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await driver.mouseClick({x:200,y:200},MouseButton.MOUSE_BUTTON_LEFT)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2520 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2390
       * @tc.name    Verify that when uiContext_openCustomDialog sets LevelMode to OverLay and ImmersiveMode to DEFAULT, the dialog node that pops up is at the global window top layer 48.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2390', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2390 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay48")
      let driver:Driver=Driver.create();
      let button00: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay48_03'),1000);
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay48_04'),1000);
      await button00.click()
      await driver.waitForIdle(500,2000)
      await button01.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay48_01'),1000);
      await button02.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await driver.mouseClick({x:200,y:200},MouseButton.MOUSE_BUTTON_LEFT)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_2390 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1080
       * @tc.name    Verify that when prompt_openCustomDialog sets LevelMode to EMBEDDED, ImmersiveMode to an abnormal value, and levelUniqueId to a normal value, the dialog node that pops up is at the current page top layer 49.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1080', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1080 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay49")
      let driver:Driver=Driver.create();
      let button00: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay49_03'),1000);
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay49_04'),1000);
      await button00.click()
      await driver.waitForIdle(500,2000)
      await button01.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay49_01'),1000);
      await button02.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      let button03: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay_NextPage'),1000);
      await button03.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1080 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1050
       * @tc.name    Verify that when prompt_openCustomDialog sets LevelMode to EMBEDDED, ImmersiveMode to EXTEND, and levelUniqueId to a normal value, the dialog node that pops up is at the current page top layer 50.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1050', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1050 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay50")
      let driver:Driver=Driver.create();
      let button00: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay50_03'),1000);
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay50_04'),1000);
      await button00.click()
      await driver.waitForIdle(500,2000)
      await button01.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay50_01'),1000);
      await button02.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await driver.mouseClick({x:200,y:1230},MouseButton.MOUSE_BUTTON_LEFT)
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1050 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1060
       * @tc.name    Verify that when prompt_openCustomDialog sets LevelMode to EMBEDDED, ImmersiveMode to EXTEND, and levelUniqueId to a normal value, the dialog node that pops up is at the current page top layer 51.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1060', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1060 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay51")
      let driver:Driver=Driver.create();
      let button00: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay51_03'),1000);
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay51_04'),1000);
      await button00.click()
      await driver.waitForIdle(500,2000)
      await button01.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay51_01'),1000);
      await button02.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await driver.mouseClick({x:200,y:1230},MouseButton.MOUSE_BUTTON_LEFT)
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1060 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1120
       * @tc.name    Verify that when prompt_openCustomDialog sets LevelMode to EMBEDDED, ImmersiveMode to an abnormal value, and levelUniqueId to a normal value, the dialog node that pops up is at the current page top layer 52.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1120', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1120 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay52")
      let driver:Driver=Driver.create();
      let button00: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay52_03'),1000);
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay52_04'),1000);
      await button00.click()
      await driver.waitForIdle(500,2000)
      await button01.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay52_01'),1000);
      await button02.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await driver.mouseClick({x:200,y:1230},MouseButton.MOUSE_BUTTON_LEFT)
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1120 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0980
       * @tc.name    Verify that when prompt_openCustomDialog sets LevelMode to EMBEDDED, ImmersiveMode to DEFAULT, and levelUniqueId to a normal value, the dialog node that pops up is at the current page top layer 53.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0980', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0980 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay53")
      let driver:Driver=Driver.create();
      let button00: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay53_03'),1000);
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay53_04'),1000);
      await button00.click()
      await driver.waitForIdle(500,2000)
      await button01.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay53_01'),1000);
      await button02.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await driver.mouseClick({x:200,y:1230},MouseButton.MOUSE_BUTTON_LEFT)
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0980 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0990
       * @tc.name    Verify that when prompt_openCustomDialog sets LevelMode to EMBEDDED, ImmersiveMode to DEFAULT, and levelUniqueId to a normal value, the dialog node that pops up is at the current page top layer 54.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0990', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0990 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay54")
      let driver:Driver=Driver.create();
      let button00: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay54_03'),1000);
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay54_04'),1000);
      await button00.click()
      await driver.waitForIdle(500,2000)
      await button01.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay54_01'),1000);
      await button02.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      let button03: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay_NextPage'),1000);
      await button03.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0990 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0040
       * @tc.name    Verify that when ShowActionSheet sets LevelMode to EMBEDDED, ImmersiveMode to DEFAULT, and levelUniqueId to a normal value, the dialog node that pops up is at the current page top layer 55.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0040', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0040 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay55")
      let driver:Driver=Driver.create();
      let button00: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay55_02'),1000);
      await button00.click()
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay55_01'),1000);
      await button01.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await driver.mouseClick({x:200,y:1230},MouseButton.MOUSE_BUTTON_LEFT)
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0040 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0090
       * @tc.name    Verify that when ShowActionSheet sets LevelMode to EMBEDDED, ImmersiveMode to EXTEND, and levelUniqueId to a normal value, the dialog node that pops up is at the current page top layer 56.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0090', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0090 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay56")
      let driver:Driver=Driver.create();
      let button00: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay56_02'),1000);
      await button00.click()
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay56_01'),1000);
      await button01.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await driver.mouseClick({x:200,y:1230},MouseButton.MOUSE_BUTTON_LEFT)
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0090 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0130
       * @tc.name    Verify that when ShowActionSheet sets LevelMode to EMBEDDED, ImmersiveMode to an abnormal value, and levelUniqueId to a normal value, the dialog node that pops up is at the current page top layer 57.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0130', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0130 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay57")
      let driver:Driver=Driver.create();
      let button00: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay57_02'),1000);
      await button00.click()
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay57_01'),1000);
      await button01.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await driver.mouseClick({x:200,y:1230},MouseButton.MOUSE_BUTTON_LEFT)
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0130 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0600
       * @tc.name    Verify that when CustomDialogController sets LevelMode to EMBEDDED, ImmersiveMode to DEFAULT, and levelUniqueId to a normal value, the dialog node that pops up is at the current page top layer 58.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0600', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0600 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay58")
      let driver:Driver=Driver.create();
      let button00: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay58_03'),1000);
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay58_04'),1000);
      await button00.click()
      await driver.waitForIdle(500,2000)
      await button01.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay58_01'),1000);
      await button02.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await driver.mouseClick({x:200,y:1230},MouseButton.MOUSE_BUTTON_LEFT)
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0600 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0610
       * @tc.name    Verify that when CustomDialogController sets LevelMode to EMBEDDED, ImmersiveMode to DEFAULT, and levelUniqueId to a normal value, the dialog node that pops up is at the current page top layer 59.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0610', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0610 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay59")
      let driver:Driver=Driver.create();
      let button00: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay59_03'),1000);
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay59_04'),1000);
      await button00.click()
      await driver.waitForIdle(500,2000)
      await button01.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay59_01'),1000);
      await button02.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      let button03: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay_NextPage'),1000);
      await button03.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_0610 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1590
       * @tc.name    Verify that when showDialog sets LevelMode to EMBEDDED, ImmersiveMode to DEFAULT, and levelUniqueId to a normal value, the dialog node that pops up is at the page top layer 60.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1590', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1590 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay60")
      let driver:Driver=Driver.create();
      let button00: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay60_01'),1000);
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay60_02'),1000);
      await button00.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      await button01.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      await driver.mouseClick({x:200,y:1230},MouseButton.MOUSE_BUTTON_LEFT)
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1590 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1640
       * @tc.name    Verify that when showDialog sets LevelMode to EMBEDDED, ImmersiveMode to EXTEND, and levelUniqueId to a normal value, the dialog node that pops up is at the page top layer 61.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1640', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1640 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay61")
      let driver:Driver=Driver.create();
      let button00: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay61_01'),1000);
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay61_02'),1000);
      await button00.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      await button01.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      await driver.mouseClick({x:200,y:1230},MouseButton.MOUSE_BUTTON_LEFT)
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1640 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1680
       * @tc.name    Verify that when showDialog sets LevelMode to EMBEDDED, ImmersiveMode to abnormal value, and levelUniqueId to a normal value, the dialog node that pops up is at the page top layer 62.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1680', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1680 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupBoxSpecificationsPageDisplay/UiComponentPopupBoxSpecificationsPageDisplay62")
      let driver:Driver=Driver.create();
      let button00: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay62_01'),1000);
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentPopupBoxSpecificationsPageDisplay62_02'),1000);
      await button00.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      await button01.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      await driver.mouseClick({x:200,y:1230},MouseButton.MOUSE_BUTTON_LEFT)
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_PAGEDISPLAY_1680 finish.`);
      done()
    })
  })
}
