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
import { uiAppearance } from '@kit.ArkUI';
import { Driver, ON, Component } from '@kit.TestKit';
import { BusinessError } from '@kit.BasicServicesKit'

export default function ButtonMaxAndMinTest() {
  describe('ButtonMaxAndMinTest', () => {
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
      await Utils.sleep(1000);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0010
     * @tc.name   : Button minFontScale和maxFontScale测试 - minFontScale为0.5，maxFontScale为3.2
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0010', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0010 start.`);
      // 打开适老化开关到最大（3.2倍）
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);

      Settings.createWindow("testability/pages/button/buttonMaxAndMin01")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 点击change size按钮切换不同的字体缩放比例
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_01'), 1000);
      
      // 切换到1.75倍
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0010_175')
      await Utils.sleep(1000);

      // 切换到2.0倍
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0010_200')
      await Utils.sleep(1000);

      // 切换到3.2倍
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0010_320')
      await Utils.sleep(1000);

      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0010 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0020
     * @tc.name   : Button minFontScale和maxFontScale测试 - minFontScale为0.7，maxFontScale为3.2
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0020', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0020 start.`);
      // 打开适老化开关到最大（3.2倍）
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);

      Settings.createWindow("testability/pages/button/buttonMaxAndMin02")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 点击change size按钮切换不同的字体缩放比例
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_02'), 1000);
      
      // 切换到1.75倍
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0020_175')
      await Utils.sleep(1000);

      // 切换到2.0倍
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0020_200')
      await Utils.sleep(1000);

      // 切换到3.2倍
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0020_320')
      await Utils.sleep(1000);

      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0020 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0030
     * @tc.name   : Button minFontScale和maxFontScale测试 - minFontScale为1.5，maxFontScale为3.2
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0030', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0030 start.`);
      // 打开适老化开关到最大（3.2倍）
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);

      Settings.createWindow("testability/pages/button/buttonMaxAndMin03")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 点击change size按钮切换不同的字体缩放比例
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_03'), 1000);
      
      // 切换到1.75倍
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0030_175')
      await Utils.sleep(1000);

      // 切换到2.0倍
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0030_200')
      await Utils.sleep(1000);

      // 切换到3.2倍
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0030_320')
      await Utils.sleep(1000);

      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0030 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0040
     * @tc.name   : Button minFontScale和maxFontScale测试 - minFontScale为-1，maxFontScale为3.2
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0040', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0040 start.`);
      // 打开适老化开关到最大（3.2倍）
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);

      Settings.createWindow("testability/pages/button/buttonMaxAndMin04")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 点击change size按钮切换不同的字体缩放比例
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_04'), 1000);
      
      // 切换到1.75倍
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0040_175')
      await Utils.sleep(1000);

      // 切换到2.0倍
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0040_200')
      await Utils.sleep(1000);

      // 切换到3.2倍
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0040_320')
      await Utils.sleep(1000);

      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0040 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0050
     * @tc.name   : Button minFontScale和maxFontScale测试 - minFontScale为undefined，maxFontScale为3.2
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0050', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0050 start.`);
      // 打开适老化开关到最大（3.2倍）
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);

      Settings.createWindow("testability/pages/button/buttonMaxAndMin05")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 点击change size按钮切换不同的字体缩放比例
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_05'), 1000);
      
      // 切换到1.75倍
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0050_175')
      await Utils.sleep(1000);

      // 切换到2.0倍
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0050_200')
      await Utils.sleep(1000);

      // 切换到3.2倍
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0050_320')
      await Utils.sleep(1000);

      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0050 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0060
     * @tc.name   : Button minFontScale和maxFontScale测试 - minFontScale为null，maxFontScale为3.2
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0060', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0060 start.`);
      // 打开适老化开关到最大（3.2倍）
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);

      Settings.createWindow("testability/pages/button/buttonMaxAndMin06")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 点击change size按钮切换不同的字体缩放比例
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_06'), 1000);
      
      // 切换到1.75倍
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0060_175')
      await Utils.sleep(1000);

      // 切换到2.0倍
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0060_200')
      await Utils.sleep(1000);

      // 切换到3.2倍
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0060_320')
      await Utils.sleep(1000);

      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0060 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0070
     * @tc.name   : Button minFontScale和maxFontScale测试 - minFontScale为0，maxFontScale为3.2
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0070', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0070 start.`);
      // 打开适老化开关到最大（3.2倍）
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);

      Settings.createWindow("testability/pages/button/buttonMaxAndMin07")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 点击change size按钮切换不同的字体缩放比例
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_07'), 1000);
      
      // 切换到1.75倍
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0070_175')
      await Utils.sleep(1000);

      // 切换到2.0倍
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0070_200')
      await Utils.sleep(1000);

      // 切换到3.2倍
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0070_320')
      await Utils.sleep(1000);

      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0070 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0080
     * @tc.name   : Button minFontScale和maxFontScale测试 - minFontScale为1，maxFontScale为3.2
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0080', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0080 start.`);
      // 打开适老化开关到最大（3.2倍）
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);

      Settings.createWindow("testability/pages/button/buttonMaxAndMin08")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 点击change size按钮切换不同的字体缩放比例
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_08'), 1000);
      
      // 切换到1.75倍
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0080_175')
      await Utils.sleep(1000);

      // 切换到2.0倍
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0080_200')
      await Utils.sleep(1000);

      // 切换到3.2倍
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0080_320')
      await Utils.sleep(1000);

      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0080 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0090
     * @tc.name   : Button minFontScale和maxFontScale测试 - minFontScale为20，maxFontScale为3.2
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0090', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0090 start.`);
      // 打开适老化开关到最大（3.2倍）
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);

      Settings.createWindow("testability/pages/button/buttonMaxAndMin09")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 点击change size按钮切换不同的字体缩放比例
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_09'), 1000);
      
      // 切换到1.75倍
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0090_175')
      await Utils.sleep(1000);

      // 切换到2.0倍
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0090_200')
      await Utils.sleep(1000);

      // 切换到3.2倍
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0090_320')
      await Utils.sleep(1000);

      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0090 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0100
     * @tc.name   : Button minFontScale和maxFontScale测试 - 不设置minFontScale，maxFontScale为3.2
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0100', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0100 start.`);
      // 打开适老化开关到最大（3.2倍）
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);

      Settings.createWindow("testability/pages/button/buttonMaxAndMin10")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 点击change size按钮切换不同的字体缩放比例
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_10'), 1000);
      
      // 切换到1.75倍
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0100_175')
      await Utils.sleep(1000);

      // 切换到2.0倍
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0100_200')
      await Utils.sleep(1000);

      // 切换到3.2倍
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0100_320')
      await Utils.sleep(1000);

      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0100 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0110
     * @tc.name   : Button minFontScale和maxFontScale测试 - minFontScale为0.5，maxFontScale为1.5
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0110', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0110 start.`);
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);
      Settings.createWindow("testability/pages/button/buttonMaxAndMin11")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_11'), 1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0110_175')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0110_200')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0110_320')
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0110 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0120
     * @tc.name   : Button minFontScale和maxFontScale测试 - minFontScale为0.5，maxFontScale为1.75
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0120', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0120 start.`);
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);
      Settings.createWindow("testability/pages/button/buttonMaxAndMin12")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_12'), 1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0120_175')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0120_200')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0120_320')
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0120 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0130
     * @tc.name   : Button minFontScale和maxFontScale测试 - minFontScale为0.5，maxFontScale为2
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0130', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0130 start.`);
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);
      Settings.createWindow("testability/pages/button/buttonMaxAndMin13")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_13'), 1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0130_175')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0130_200')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0130_320')
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0130 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0140
     * @tc.name   : Button minFontScale和maxFontScale测试 - minFontScale为0.5，maxFontScale为-1
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0140', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0140 start.`);
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);
      Settings.createWindow("testability/pages/button/buttonMaxAndMin14")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_14'), 1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0140_175')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0140_200')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0140_320')
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0140 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0150
     * @tc.name   : Button minFontScale和maxFontScale测试 - minFontScale为0.5，maxFontScale为0
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0150', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0150 start.`);
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);
      Settings.createWindow("testability/pages/button/buttonMaxAndMin15")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_15'), 1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0150_175')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0150_200')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0150_320')
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0150 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0160
     * @tc.name   : Button minFontScale和maxFontScale测试 - minFontScale为0.5，maxFontScale为undefined
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0160', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0160 start.`);
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);
      Settings.createWindow("testability/pages/button/buttonMaxAndMin16")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_16'), 1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0160_175')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0160_200')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0160_320')
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0160 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0170
     * @tc.name   : Button minFontScale和maxFontScale测试 - minFontScale为0.5，maxFontScale为null
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0170', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0170 start.`);
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);
      Settings.createWindow("testability/pages/button/buttonMaxAndMin17")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_17'), 1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0170_175')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0170_200')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0170_320')
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0170 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0180
     * @tc.name   : Button minFontScale和maxFontScale测试 - minFontScale为0.5，maxFontScale为1
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0180', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0180 start.`);
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);
      Settings.createWindow("testability/pages/button/buttonMaxAndMin18")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_18'), 1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0180_175')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0180_200')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0180_320')
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0180 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0190
     * @tc.name   : Button minFontScale和maxFontScale测试 - minFontScale为0.5，maxFontScale为20
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0190', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0190 start.`);
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);
      Settings.createWindow("testability/pages/button/buttonMaxAndMin19")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_19'), 1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0190_175')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0190_200')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0190_320')
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0190 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0200
     * @tc.name   : Button minFontScale和maxFontScale测试 - 不设置minFontScale，maxFontScale为3.2
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0200', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0200 start.`);
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);
      Settings.createWindow("testability/pages/button/buttonMaxAndMin20")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_20'), 1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0200_175')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0200_200')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0200_320')
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0200 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0210
     * @tc.name   : Button minFontScale和maxFontScale测试 - 打开适老化开关，minFontScale为0.5，maxFontScale为3.2
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0210', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0210 start.`);
      await uiAppearance.setFontScale(1.75);
      await Utils.sleep(500);
      Settings.createWindow("testability/pages/button/buttonMaxAndMin21")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_21'), 1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0210_175')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0210_200')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0210_320')
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0210 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0220
     * @tc.name   : Button minFontScale和maxFontScale测试 - 打开适老化开关到最大，最大只能放大到2倍
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0220', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0220 start.`);
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);
      Settings.createWindow("testability/pages/button/buttonMaxAndMin22")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_22'), 1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0220_175')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0220_200')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0220_320')
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0220 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0230
     * @tc.name   : Button minFontScale和maxFontScale测试 - minFontScale为1，maxFontScale为1
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0230', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0230 start.`);
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);
      Settings.createWindow("testability/pages/button/buttonMaxAndMin23")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_23'), 1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0230_175')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0230_200')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0230_320')
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0230 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0240
     * @tc.name   : Button minFontScale和maxFontScale测试 - minFontScale为0.5，maxFontScale为3.2
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0240', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0240 start.`);
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);
      Settings.createWindow("testability/pages/button/buttonMaxAndMin24")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_24'), 1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0240_175')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0240_200')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0240_320')
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0240 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0250
     * @tc.name   : Button minFontScale和maxFontScale测试 - minFontScale为0.7，maxFontScale为3.2
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0250', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0250 start.`);
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);
      Settings.createWindow("testability/pages/button/buttonMaxAndMin25")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_25'), 1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0250_175')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0250_200')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0250_320')
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0250 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0260
     * @tc.name   : Button minFontScale和maxFontScale测试 - minFontScale为1.5，maxFontScale为3.2
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0260', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0260 start.`);
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);
      Settings.createWindow("testability/pages/button/buttonMaxAndMin26")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_26'), 1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0260_175')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0260_200')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0260_320')
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0260 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0270
     * @tc.name   : Button minFontScale和maxFontScale测试 - minFontScale为-1，maxFontScale为3.2
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0270', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0270 start.`);
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);
      Settings.createWindow("testability/pages/button/buttonMaxAndMin27")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_27'), 1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0270_175')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0270_200')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0270_320')
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0270 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0280
     * @tc.name   : Button minFontScale和maxFontScale测试 - minFontScale为undefined，maxFontScale为3.2
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0280', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0280 start.`);
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);
      Settings.createWindow("testability/pages/button/buttonMaxAndMin28")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_28'), 1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0280_175')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0280_200')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0280_320')
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0280 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0290
     * @tc.name   : Button minFontScale和maxFontScale测试 - minFontScale为null，maxFontScale为3.2
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0290', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0290 start.`);
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);
      Settings.createWindow("testability/pages/button/buttonMaxAndMin29")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_29'), 1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0290_175')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0290_200')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0290_320')
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0290 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0300
     * @tc.name   : Button minFontScale和maxFontScale测试 - minFontScale为0，maxFontScale为3.2
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0300', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0300 start.`);
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);
      Settings.createWindow("testability/pages/button/buttonMaxAndMin30")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_30'), 1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0300_175')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0300_200')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0300_320')
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0300 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0310
     * @tc.name   : Button minFontScale和maxFontScale测试 - minFontScale为1，maxFontScale为3.2
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0310', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0310 start.`);
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);
      Settings.createWindow("testability/pages/button/buttonMaxAndMin31")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_31'), 1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0310_175')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0310_200')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0310_320')
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0310 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0320
     * @tc.name   : Button minFontScale和maxFontScale测试 - minFontScale为20，maxFontScale为3.2
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0320', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0320 start.`);
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);
      Settings.createWindow("testability/pages/button/buttonMaxAndMin32")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_32'), 1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0320_175')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0320_200')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0320_320')
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0320 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0330
     * @tc.name   : Button minFontScale和maxFontScale测试 - 不设置minFontScale，maxFontScale为3.2
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0330', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0330 start.`);
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);
      Settings.createWindow("testability/pages/button/buttonMaxAndMin33")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_33'), 1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0330_175')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0330_200')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0330_320')
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0330 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0340
     * @tc.name   : Button minFontScale和maxFontScale测试 - minFontScale为0.5，maxFontScale为1.5
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0340', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0340 start.`);
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);
      Settings.createWindow("testability/pages/button/buttonMaxAndMin34")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_34'), 1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0340_175')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0340_200')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0340_320')
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0340 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0350
     * @tc.name   : Button minFontScale和maxFontScale测试 - minFontScale为0.5，maxFontScale为1.75
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0350', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0350 start.`);
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);
      Settings.createWindow("testability/pages/button/buttonMaxAndMin35")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_35'), 1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0350_175')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0350_200')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0350_320')
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0350 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0360
     * @tc.name   : Button minFontScale和maxFontScale测试 - minFontScale为0.5，maxFontScale为2
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0360', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0360 start.`);
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);
      Settings.createWindow("testability/pages/button/buttonMaxAndMin36")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_36'), 1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0360_175')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0360_200')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0360_320')
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0360 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0370
     * @tc.name   : Button minFontScale和maxFontScale测试 - minFontScale为0.5，maxFontScale为-1
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0370', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0370 start.`);
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);
      Settings.createWindow("testability/pages/button/buttonMaxAndMin37")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_37'), 1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0370_175')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0370_200')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0370_320')
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0370 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0380
     * @tc.name   : Button minFontScale和maxFontScale测试 - minFontScale为0.5，maxFontScale为0
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0380', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0380 start.`);
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);
      Settings.createWindow("testability/pages/button/buttonMaxAndMin38")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_38'), 1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0380_175')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0380_200')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0380_320')
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0380 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0390
     * @tc.name   : Button minFontScale和maxFontScale测试 - minFontScale为0.5，maxFontScale为undefined
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0390', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0390 start.`);
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);
      Settings.createWindow("testability/pages/button/buttonMaxAndMin39")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_39'), 1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0390_175')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0390_200')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0390_320')
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0390 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0400
     * @tc.name   : Button minFontScale和maxFontScale测试 - minFontScale为0.5，maxFontScale为null
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0400', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0400 start.`);
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);
      Settings.createWindow("testability/pages/button/buttonMaxAndMin40")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_40'), 1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0400_175')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0400_200')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0400_320')
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0400 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0410
     * @tc.name   : Button minFontScale和maxFontScale测试 - minFontScale为0.5，maxFontScale为1
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0410', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0410 start.`);
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);
      Settings.createWindow("testability/pages/button/buttonMaxAndMin41")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_41'), 1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0410_175')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0410_200')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0410_320')
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0410 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0420
     * @tc.name   : Button minFontScale和maxFontScale测试 - minFontScale为0.5，maxFontScale为20
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0420', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0420 start.`);
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);
      Settings.createWindow("testability/pages/button/buttonMaxAndMin42")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_42'), 1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0420_175')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0420_200')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0420_320')
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0420 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0430
     * @tc.name   : Button minFontScale和maxFontScale测试 - 不设置minFontScale，maxFontScale为3.2
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0430', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0430 start.`);
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);
      Settings.createWindow("testability/pages/button/buttonMaxAndMin43")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_43'), 1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0430_175')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0430_200')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0430_320')
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0430 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0440
     * @tc.name   : Button minFontScale和maxFontScale测试 - minFontScale为0.5，maxFontScale为3.2
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0440', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0440 start.`);
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);
      Settings.createWindow("testability/pages/button/buttonMaxAndMin44")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_44'), 1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0440_175')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0440_200')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0440_320')
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0440 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0450
     * @tc.name   : Button minFontScale和maxFontScale测试 - minFontScale为0.7，maxFontScale为3.2
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0450', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0450 start.`);
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);
      Settings.createWindow("testability/pages/button/buttonMaxAndMin45")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_45'), 1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0450_175')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0450_200')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0450_320')
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0450 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0460
     * @tc.name   : Button minFontScale和maxFontScale测试 - minFontScale为1.5，maxFontScale为3.2
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0460', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0460 start.`);
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);
      Settings.createWindow("testability/pages/button/buttonMaxAndMin46")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_46'), 1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0460_175')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0460_200')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0460_320')
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0460 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0470
     * @tc.name   : Button minFontScale和maxFontScale测试 - minFontScale为-1，maxFontScale为3.2
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0470', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0470 start.`);
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);
      Settings.createWindow("testability/pages/button/buttonMaxAndMin47")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_47'), 1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0470_175')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0470_200')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0470_320')
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0470 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0480
     * @tc.name   : Button minFontScale和maxFontScale测试 - minFontScale为undefined，maxFontScale为3.2
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0480', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0480 start.`);
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);
      Settings.createWindow("testability/pages/button/buttonMaxAndMin48")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_48'), 1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0480_175')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0480_200')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0480_320')
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0480 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0490
     * @tc.name   : Button minFontScale和maxFontScale测试 - minFontScale为null，maxFontScale为3.2
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0490', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0490 start.`);
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);
      Settings.createWindow("testability/pages/button/buttonMaxAndMin49")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_49'), 1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0490_175')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0490_200')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0490_320')
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0490 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0500
     * @tc.name   : Button minFontScale和maxFontScale测试 - minFontScale为0，maxFontScale为3.2
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0500', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0500 start.`);
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);
      Settings.createWindow("testability/pages/button/buttonMaxAndMin50")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_50'), 1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0500_175')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0500_200')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0500_320')
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0500 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0510
     * @tc.name   : Button minFontScale和maxFontScale测试 - minFontScale为1，maxFontScale为3.2
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0510', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0510 start.`);
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);
      Settings.createWindow("testability/pages/button/buttonMaxAndMin51")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_51'), 1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0510_175')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0510_200')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0510_320')
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0510 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0520
     * @tc.name   : Button minFontScale和maxFontScale测试 - minFontScale为20，maxFontScale为3.2
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0520', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0520 start.`);
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);
      Settings.createWindow("testability/pages/button/buttonMaxAndMin52")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_52'), 1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0520_175')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0520_200')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0520_320')
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0520 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0530
     * @tc.name   : Button minFontScale和maxFontScale测试 - 不设置minFontScale，maxFontScale为3.2
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0530', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0530 start.`);
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);
      Settings.createWindow("testability/pages/button/buttonMaxAndMin53")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_53'), 1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0530_175')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0530_200')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0530_320')
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0530 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0540
     * @tc.name   : Button minFontScale和maxFontScale测试 - minFontScale为0.5，maxFontScale为1.5
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0540', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0540 start.`);
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);
      Settings.createWindow("testability/pages/button/buttonMaxAndMin54")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_54'), 1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0540_175')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0540_200')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0540_320')
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0540 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0550
     * @tc.name   : Button minFontScale和maxFontScale测试 - minFontScale为0.5，maxFontScale为1.75
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0550', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0550 start.`);
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);
      Settings.createWindow("testability/pages/button/buttonMaxAndMin55")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_55'), 1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0550_175')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0550_200')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0550_320')
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0550 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0560
     * @tc.name   : Button minFontScale和maxFontScale测试 - minFontScale为0.5，maxFontScale为2
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0560', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0560 start.`);
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);
      Settings.createWindow("testability/pages/button/buttonMaxAndMin56")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_56'), 1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0560_175')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0560_200')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0560_320')
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0560 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0570
     * @tc.name   : Button minFontScale和maxFontScale测试 - minFontScale为0.5，maxFontScale为-1
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0570', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0570 start.`);
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);
      Settings.createWindow("testability/pages/button/buttonMaxAndMin57")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_57'), 1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0570_175')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0570_200')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0570_320')
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0570 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0580
     * @tc.name   : Button minFontScale和maxFontScale测试 - minFontScale为0.5，maxFontScale为0
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0580', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0580 start.`);
      await uiAppearance.setFontScale(3.2);
      await Utils.sleep(500);
      Settings.createWindow("testability/pages/button/buttonMaxAndMin58")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      let changeSizeButton: Component = await driver.waitForComponent(ON.id('changeSizeButton_58'), 1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0580_175')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0580_200')
      await Utils.sleep(1000);
      await changeSizeButton.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0580_320')
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_MAXANDMIN_0580 finish.`);
      done()
    })
  })
}

