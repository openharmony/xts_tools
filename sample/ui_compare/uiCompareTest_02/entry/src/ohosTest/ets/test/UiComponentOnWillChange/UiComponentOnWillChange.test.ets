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
import { Driver, ON,Component ,MouseButton } from '@ohos.UiTest'
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

export default function UiComponentOnWillChange() {

  describe('UiComponentOnWillChange', () => {
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
       * @tc.number  SUB_ACE_UI_COMPONENT_ONWILLCHANGE_0060
       * @tc.name    Replace text, less text for more text
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_ONWILLCHANGE_0060', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ONWILLCHANGE_0060 start.`);
      Settings.createWindow("testability/pages/UiComponentOnWillChange/UiComponentOnWillChange01");
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000);;
      windowSnap.snapShot();
      let button: Component = await driver.waitForComponent(ON.id('UiComponentOnWillChange_01'),1000);
      await button.click();
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ONWILLCHANGE_0060 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_ONWILLCHANGE_0050
       * @tc.name    Replace text, more text for less text
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_ONWILLCHANGE_0050', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ONWILLCHANGE_0050 start.`);
      Settings.createWindow("testability/pages/UiComponentOnWillChange/UiComponentOnWillChange02");
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      let button: Component = await driver.waitForComponent(ON.id('UiComponentOnWillChange02_01'),1000);
      let textarea: Component = await driver.waitForComponent(ON.id('UiComponentOnWillChange02_03'),1000);
      await textarea.click();
      await button.click();
      windowSnap.snapShot();
      await driver.waitForIdle(500,2000);
      await driver.triggerKey(2017);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ONWILLCHANGE_0050 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_ONWILLCHANGE_0030
       * @tc.name    Delete individual characters
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_ONWILLCHANGE_0030', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ONWILLCHANGE_0030 start.`);
      Settings.createWindow("testability/pages/UiComponentOnWillChange/UiComponentOnWillChange03");
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      let button: Component = await driver.waitForComponent(ON.id('UiComponentOnWillChange03_01'),1000);
      await button.click();
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ONWILLCHANGE_0050 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_ONWILLCHANGE_0040
       * @tc.name    add  text
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_ONWILLCHANGE_0040', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ONWILLCHANGE_0040 start.`);
      Settings.createWindow("testability/pages/UiComponentOnWillChange/UiComponentOnWillChange04");
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      let button: Component = await driver.waitForComponent(ON.id('UiComponentOnWillChange04_01'),1000);
      await button.click();
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ONWILLCHANGE_0040 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_ONWILLCHANGE_0020
       * @tc.name    Delete the selected text.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_ONWILLCHANGE_0020', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ONWILLCHANGE_0020 start.`);
      Settings.createWindow("testability/pages/UiComponentOnWillChange/UiComponentOnWillChange05");
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      let button: Component = await driver.waitForComponent(ON.id('UiComponentOnWillChange05_02'),1000);
      let textarea: Component = await driver.waitForComponent(ON.id('UiComponentOnWillChange05_01'),1000);
      await textarea.click();
      await button.click();
      windowSnap.snapShot();
      await Utils.sleep(1000);
      await driver.triggerKey(2071);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ONWILLCHANGE_0020 finish.`);
      done();
    })

    /*
      * @tc.number  SUB_ACE_UI_COMPONENT_ONWILLCHANGE_0170
      * @tc.name    Delete the text,set onWillDelete to true,and onWillChange to true
      * @tc.desc    Function test
      * @tc.size    MediumTest
      * @tc.type    Function
      * @tc.level   0
      */
    it('SUB_ACE_UI_COMPONENT_ONWILLCHANGE_0170', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ONWILLCHANGE_0170 start.`);
      Settings.createWindow("testability/pages/UiComponentOnWillChange/UiComponentOnWillChange06");
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      let textarea: Component = await driver.waitForComponent(ON.id('UiComponentOnWillChange06'),1000);
      await textarea.click();
      await driver.triggerKey(2055);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ONWILLCHANGE_0170 finish.`);
      done();
    })

    /*
      * @tc.number  SUB_ACE_UI_COMPONENT_ONWILLCHANGE_0180
      * @tc.name    Delete the text, set onWillDelete to true, and onWillChange to false
      * @tc.desc    Function test
      * @tc.size    MediumTest
      * @tc.type    Function
      * @tc.level   0
      */
    it('SUB_ACE_UI_COMPONENT_ONWILLCHANGE_0180', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ONWILLCHANGE_0180 start.`);
      Settings.createWindow("testability/pages/UiComponentOnWillChange/UiComponentOnWillChange07");
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      let textarea: Component = await driver.waitForComponent(ON.id('UiComponentOnWillChange07'),1000);
      await textarea.click();
      await driver.triggerKey(2055);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ONWILLCHANGE_0180 finish.`);
      done();
    })

    /*
      * @tc.number  SUB_ACE_UI_COMPONENT_ONWILLCHANGE_0190
      * @tc.name    Delete the text, set onWillDelete to false, and onWillChange to true
      * @tc.desc    Function test
      * @tc.size    MediumTest
      * @tc.type    Function
      * @tc.level   0
      */
    it('SUB_ACE_UI_COMPONENT_ONWILLCHANGE_0190', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ONWILLCHANGE_0190 start.`);
      Settings.createWindow("testability/pages/UiComponentOnWillChange/UiComponentOnWillChange08");
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      let textarea: Component = await driver.waitForComponent(ON.id('UiComponentOnWillChange08'),1000);
      await textarea.click();
      await driver.triggerKey(2055);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ONWILLCHANGE_0190 finish.`);
      done();
    })

    /*
      * @tc.number  SUB_ACE_UI_COMPONENT_ONWILLCHANGE_0110
      * @tc.name    Insert text and set onWillInsert to false
      * @tc.desc    Function test
      * @tc.size    MediumTest
      * @tc.type    Function
      * @tc.level   0
      */
    it('SUB_ACE_UI_COMPONENT_ONWILLCHANGE_0110', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ONWILLCHANGE_0110 start.`);
      Settings.createWindow("testability/pages/UiComponentOnWillChange/UiComponentOnWillChange09");
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      let textarea: Component = await driver.waitForComponent(ON.id('UiComponentOnWillChange09'),1000);
      await textarea.inputText('aaa')
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ONWILLCHANGE_0110 finish.`);
      done();
    })

    /*
      * @tc.number  SUB_ACE_UI_COMPONENT_ONWILLCHANGE_0240
      * @tc.name    Use addText to add text
      * @tc.desc    Function test
      * @tc.size    MediumTest
      * @tc.type    Function
      * @tc.level   0
      */
    it('SUB_ACE_UI_COMPONENT_ONWILLCHANGE_0240', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ONWILLCHANGE_0240 start.`);
      Settings.createWindow("testability/pages/UiComponentOnWillChange/UiComponentOnWillChange10");
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      let button: Component = await driver.waitForComponent(ON.id('UiComponentOnWillChange10'),1000);
      await button.click();
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ONWILLCHANGE_0240 finish.`);
      done();
    })

    /*
      * @tc.number  SUB_ACE_UI_COMPONENT_ONWILLCHANGE_0090
      * @tc.name    Insert text with onWillInsert set to true and onWillChange set to true
      * @tc.desc    Function test
      * @tc.size    MediumTest
      * @tc.type    Function
      * @tc.level   0
      */
    it('SUB_ACE_UI_COMPONENT_ONWILLCHANGE_0090', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ONWILLCHANGE_0090 start.`);
      Settings.createWindow("testability/pages/UiComponentOnWillChange/UiComponentOnWillChange11");
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      let textarea: Component = await driver.waitForComponent(ON.id('UiComponentOnWillChange11'),1000);
      await textarea.inputText('aaa')
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ONWILLCHANGE_0090 finish.`);
      done();
    })

    /*
      * @tc.number  SUB_ACE_UI_COMPONENT_ONWILLCHANGE_0100
      * @tc.name    Insert text with onWillInsert set to true and onWillChange set to false
      * @tc.desc    Function test
      * @tc.size    MediumTest
      * @tc.type    Function
      * @tc.level   0
      */
    it('SUB_ACE_UI_COMPONENT_ONWILLCHANGE_0100', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ONWILLCHANGE_0100 start.`);
      Settings.createWindow("testability/pages/UiComponentOnWillChange/UiComponentOnWillChange12");
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      let textarea: Component = await driver.waitForComponent(ON.id('UiComponentOnWillChange12'),1000);
      await textarea.inputText('aaa')
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ONWILLCHANGE_0100 finish.`);
      done();
    })

  })
}
