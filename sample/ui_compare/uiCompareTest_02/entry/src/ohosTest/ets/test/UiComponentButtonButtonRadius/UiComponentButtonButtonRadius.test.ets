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

export default function UiComponentButtonButtonRadius() {

  describe('UiComponentButtonButtonRadius', () => {
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
       * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_BUTTON_RADIUS_0410
       * @tc.name    Verify that the general attribute Type is set to default,controlSize is set to normal,and the borderRadius is manually set to 30px
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_BUTTON_BUTTON_RADIUS_0410', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_BUTTON_RADIUS_0410 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonButtonRadius/UiComponentButtonButtonRadius01")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentButtonButtonRadius01_01'),1000);
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentButtonButtonRadius01_02'),1000);
      await button01.click()
      windowSnap.snapShot()
      await driver.waitForIdle(500,2000)
      await button02.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_BUTTON_RADIUS_0410 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_BUTTON_RADIUS_0400
       * @tc.name    Verify that the general attribute Type is set to default,controlSize is set to normal,and the borderRadius is manually set to 30%
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_BUTTON_BUTTON_RADIUS_0400', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_BUTTON_RADIUS_0400 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonButtonRadius/UiComponentButtonButtonRadius02")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentButtonButtonRadius02_01'),1000);
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentButtonButtonRadius02_02'),1000);
      await button01.click()
      windowSnap.snapShot()
      await driver.waitForIdle(500,2000)
      await button02.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_BUTTON_RADIUS_0400 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_BUTTON_RADIUS_0360
       * @tc.name    Verify that the general attribute Type is set to default,controlSize is set to normal,and the borderRadius is manually set to 10vp
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_BUTTON_BUTTON_RADIUS_0360', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_BUTTON_RADIUS_0360 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonButtonRadius/UiComponentButtonButtonRadius03")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentButtonButtonRadius03_01'),1000);
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentButtonButtonRadius03_02'),1000);
      await button01.click()
      windowSnap.snapShot()
      await driver.waitForIdle(500,2000)
      await button02.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_BUTTON_RADIUS_0360 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_BUTTON_RADIUS_0010
       * @tc.name    Verify that buttonStyle is set to a different value and it works properly
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_BUTTON_BUTTON_RADIUS_0010', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_BUTTON_RADIUS_0010 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonButtonRadius/UiComponentButtonButtonRadius04")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentButtonButtonRadius04_01'),1000);
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentButtonButtonRadius04_02'),1000);
      await button01.click()
      windowSnap.snapShot()
      await driver.waitForIdle(500,2000)
      await button02.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_BUTTON_RADIUS_0010 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_BUTTON_RADIUS_0240
       * @tc.name    Verify that the default style of the calendarPickerDialog button is capsule and displayed correctly in api18
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_BUTTON_BUTTON_RADIUS_0240', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_BUTTON_RADIUS_0240 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonButtonRadius/UiComponentButtonButtonRadius05")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentButtonButtonRadius05_02'),1000);
      windowSnap.snapShot()
      await driver.waitForIdle(500,2000)
      await button01.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_BUTTON_RADIUS_0240 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_BUTTON_RADIUS_0270
       * @tc.name    Verify that in the api18 environment, the default style of the buttons of timePickerDialog is ROUNDED_RECTANGLE and displayed normally
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_BUTTON_BUTTON_RADIUS_0270', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_BUTTON_RADIUS_0270 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonButtonRadius/UiComponentButtonButtonRadius06")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentButtonButtonRadius06_01'),1000);
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentButtonButtonRadius06_02'),1000);
      windowSnap.snapShot()
      await driver.waitForIdle(500,2000)
      await button02.click()
      windowSnap.snapShot()
      await driver.mouseClick({x:200,y:900},MouseButton.MOUSE_BUTTON_LEFT)
      await driver.waitForIdle(500,2000)
      await button01.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_BUTTON_RADIUS_0270 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_BUTTON_RADIUS_0260
       * @tc.name    Verify that in the api18 environment, the default style of the buttons of TextPickerDialog is ROUNDED_RECTANGLE and displayed normally
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_BUTTON_BUTTON_RADIUS_0260', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_BUTTON_RADIUS_0260 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonButtonRadius/UiComponentButtonButtonRadius08")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentButtonButtonRadius08_01'),1000);
      windowSnap.snapShot()
      await driver.waitForIdle(500,2000)
      await button01.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_BUTTON_RADIUS_0260 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_BUTTON_RADIUS_0220
       * @tc.name    Verify that in the API 18 environment, the default style of the button of bindpopup is ROUNDED_RECTANGLE and displayed normally
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_BUTTON_BUTTON_RADIUS_0220', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_BUTTON_RADIUS_0220 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonButtonRadius/UiComponentButtonButtonRadius09")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentButtonButtonRadius09_01'),1000);
      windowSnap.snapShot()
      await driver.waitForIdle(500,2000)
      await button01.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_BUTTON_RADIUS_0220 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_BUTTON_RADIUS_0230
       * @tc.name    Verify that in the API 18 environment, the default style of the button is ROUNDED_RECTANGLE and displayed normally
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_BUTTON_BUTTON_RADIUS_0230', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_BUTTON_RADIUS_0230 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonButtonRadius/UiComponentButtonButtonRadius10")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_BUTTON_RADIUS_0230 finish.`);
      done()
    })

  })
}
