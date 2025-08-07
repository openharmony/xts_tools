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

export default function ActionGestureConfiguration() {

  describe('ActionGestureConfiguration', () => {
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
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_0030
       * @tc.name    LongPressGesture does not set isFingerCountLimited
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_0030', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0030`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration01")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration01'),1000);
      await button01.longClick();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0030 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_0020
       * @tc.name    LongPressGesture does not set fingers
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_0020', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0020`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration02")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration02'),1000);
      await button01.longClick();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0020 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_0010
       * @tc.name    LongPressGesture does not set duration
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_0010', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0010`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration03")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration03'),1000);
      await button01.longClick();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0020 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_0040
       * @tc.name    LongPressGesture does not set repeat
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_0040', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0040`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration04")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration04'),1000);
      await button01.longClick();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0040 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_0870
       * @tc.name    SwipeGesture does not set fingers
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_0870', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0870`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration05")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration05'),1000);
      let point = await button01.getBoundsCenter()
      await driver.swipe(point.x-10,point.y,point.x+10,point.y,10)
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0870 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_0890
       * @tc.name    SwipeGesture does not set speed
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_0890', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0890`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration06")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration06'),1000);
      let point = await button01.getBoundsCenter()
      await driver.swipe(point.x-10,point.y,point.x+10,point.y,10)
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0890 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_0880
       * @tc.name    SwipeGesture does not set isFingerCountLimited
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_0880', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0880`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration07")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration07'),1000);
      let point = await button01.getBoundsCenter()
      await driver.swipe(point.x-10,point.y,point.x+10,point.y,10)
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0880 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_0860
       * @tc.name    SwipeGesture does not set direction
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_0860', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0860`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration08")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration08'),1000);
      let point = await button01.getBoundsCenter()
      await driver.swipe(point.x-10,point.y,point.x+10,point.y,10)
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0860 finish.`);
      done();
    })
  })
}
