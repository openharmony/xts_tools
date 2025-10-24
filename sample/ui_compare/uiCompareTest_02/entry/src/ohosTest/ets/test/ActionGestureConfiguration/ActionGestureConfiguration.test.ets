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
import { Driver, ON,Component ,MouseButton, PointerMatrix } from '@ohos.UiTest'

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

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_1170
       * @tc.name    TapGesture sets count to 2
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_1170', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_1170`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration09")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration09'),1000);
      windowSnap.snapShot();
      await button01.doubleClick();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_1170 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_1200
       * @tc.name    TapGesture sets count to null
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_1200', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_1200`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration10")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration10'),1000);
      windowSnap.snapShot();
      await button01.doubleClick();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_1200 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_1210
       * @tc.name    TapGesture sets count to undefined
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_1210', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_1210`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration11")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration11'),1000);
      windowSnap.snapShot();
      await button01.doubleClick();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_1210 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_1250
       * @tc.name    TapGesture sets fingers to 2.5
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_1250', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_1250`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration12")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration12'),1000);
      windowSnap.snapShot();
      await driver.waitForIdle(500,2000);
      let point =await button01.getBoundsCenter()
      let pointers: PointerMatrix = PointerMatrix.create(2,2);
      pointers.setPoint(0,0,{x:point.x,y:point.y});
      pointers.setPoint(0,1,{x:point.x,y:point.y+1});
      pointers.setPoint(1,0,{x:point.x,y:point.y});
      pointers.setPoint(1,1,{x:point.x,y:point.y+1});
      await driver.injectMultiPointerAction(pointers);
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_1250 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_1240
       * @tc.name    TapGesture sets fingers to 11
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_1240', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_1240`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration13")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration13'),1000);
      windowSnap.snapShot();
      await button01.doubleClick();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_1240 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_1220
       * @tc.name    TapGesture sets fingers to -1
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_1220', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_1220`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration14")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration14'),1000);
      windowSnap.snapShot();
      await button01.doubleClick();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_1220 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_1230
       * @tc.name    TapGesture sets fingers to 1
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_1230', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_1230`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration15")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration15'),1000);
      windowSnap.snapShot();
      await button01.doubleClick();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_1230 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_1280
       * @tc.name    TapGesture sets fingers to undefined
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_1280', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_1280`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration16")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration16'),1000);
      windowSnap.snapShot();
      await button01.doubleClick();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_1280 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_1270
       * @tc.name    TapGesture sets fingers to null
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_1270', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_1270`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration17")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration17'),1000);
      windowSnap.snapShot();
      await button01.doubleClick();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_1270 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_1150
       * @tc.name    TapGesture sets count to -1
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_1150', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_1150`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration18")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration18'),1000);
      windowSnap.snapShot();
      await button01.doubleClick();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_1150 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_1160
       * @tc.name    TapGesture sets count to 1
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_1160', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_1160`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration19")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration19'),1000);
      windowSnap.snapShot();
      await button01.doubleClick();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_1160 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_1300
       * @tc.name    TapGesture sets isFingerCountLimited to true
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_1300', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_1300`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration20")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration20'),1000);
      windowSnap.snapShot();
      await button01.doubleClick();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_1300 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_1310
       * @tc.name    TapGesture sets isFingerCountLimited to undefined
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_1310', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_1310`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration21")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration21'),1000);
      windowSnap.snapShot();
      await button01.doubleClick();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_1310 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_1290
       * @tc.name    TapGesture sets isFingerCountLimited to false
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_1290', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_1290`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration22")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration22'),1000);
      windowSnap.snapShot();
      await button01.doubleClick();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_1290 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_0100
       * @tc.name    LongPressGesture is set to duration of 800
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_0100', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0100`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration23")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration23'),1000);
      windowSnap.snapShot();
      await button01.longClick();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0100 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_0050
       * @tc.name    LongPressGesture is set to duration of -100
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_0050', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0050`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration24")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration24'),1000);
      windowSnap.snapShot();
      await button01.longClick();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0050 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_0060
       * @tc.name    LongPressGesture is set to duration of 0
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_0060', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0060`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration25")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration25'),1000);
      windowSnap.snapShot();
      await button01.longClick();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0060 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_0080
       * @tc.name    LongPressGesture is set to duration of 222.555
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_0080', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0080`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration26")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration26'),1000);
      windowSnap.snapShot();
      await button01.longClick();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0080 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_0070
       * @tc.name    LongPressGesture is set to duration of 200
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_0070', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0070`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration27")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration27'),1000);
      windowSnap.snapShot();
      await button01.longClick();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0070 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_0090
       * @tc.name    LongPressGesture is set to duration of 500
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_0090', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0090`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration28")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration28'),1000);
      windowSnap.snapShot();
      await button01.longClick();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0090 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_0120
       * @tc.name    LongPressGesture is set to fingers of -1
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_0120', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0120`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration29")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration29'),1000);
      windowSnap.snapShot();
      await button01.longClick();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0120 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_0140
       * @tc.name    LongPressGesture is set to fingers of 11
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_0140', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0140`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration30")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration30'),1000);
      windowSnap.snapShot();
      await button01.longClick();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0140 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_0130
       * @tc.name    LongPressGesture is set to fingers of 11
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_0130', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0130`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration31")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration31'),1000);
      windowSnap.snapShot();
      await button01.longClick();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0130 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_0170
       * @tc.name    LongPressGesture is set to fingers of null
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_0170', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0170`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration32")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration32'),1000);
      windowSnap.snapShot();
      await button01.longClick();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0170 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_0180
       * @tc.name    LongPressGesture is set to fingers of undefined
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_0180', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0180`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration33")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration33'),1000);
      windowSnap.snapShot();
      await button01.longClick();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0180 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_0200
       * @tc.name    LongPressGesture is set isFingerCountLimited to true
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_0200', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0200`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration34")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration34'),1000);
      windowSnap.snapShot();
      await button01.longClick();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0200 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_0190
       * @tc.name    LongPressGesture is set isFingerCountLimited to false
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_0190', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0190`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration35")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration35'),1000);
      windowSnap.snapShot();
      await button01.longClick();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0190 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_0210
       * @tc.name    LongPressGesture is set isFingerCountLimited to undefined
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_0210', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0210`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration36")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration36'),1000);
      windowSnap.snapShot();
      await button01.longClick();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0210 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_0230
       * @tc.name    LongPressGesture is set repeated to true
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_0230', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0230`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration37")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration37'),1000);
      windowSnap.snapShot();
      await button01.longClick();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0230 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_0220
       * @tc.name    LongPressGesture is set repeated to false
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_0220', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0220`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration38")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration38'),1000);
      windowSnap.snapShot();
      await button01.longClick();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0220 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_0240
       * @tc.name    LongPressGesture is set repeated to undefined
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_0240', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0240`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration39")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration39'),1000);
      windowSnap.snapShot();
      await button01.longClick();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0240 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_0110
       * @tc.name    LongPressGesture is set duration to undefined
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_0110', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0110`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration40")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration40'),1000);
      windowSnap.snapShot();
      await button01.longClick();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0110 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_0110
       * @tc.name    SwipeGesture is set speed to 300
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_1100', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_1100`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration41")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration41'),1000);
      let point =await button01.getBoundsCenter()
      windowSnap.snapShot();
      await driver.fling({x:point.x-50,y:point.y},{x:point.x+50,y:point.y},5,6000);
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_1100 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_1060
       * @tc.name    SwipeGesture is set speed to 0
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_1060', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_1060`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration42")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration42'),1000);
      let point =await button01.getBoundsCenter()
      windowSnap.snapShot();
      await driver.fling({x:point.x-50,y:point.y},{x:point.x+50,y:point.y},5,6000);
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_1060 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_1050
       * @tc.name    SwipeGesture is set speed to -1
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_1050', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_1050`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration43")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration43'),1000);
      let point =await button01.getBoundsCenter()
      windowSnap.snapShot();
      await driver.fling({x:point.x-50,y:point.y},{x:point.x+50,y:point.y},5,6000);
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_1050 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_1070
       * @tc.name    SwipeGesture is set speed to 100
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_1070', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_1070`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration44")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration44'),1000);
      let point =await button01.getBoundsCenter()
      windowSnap.snapShot();
      await driver.fling({x:point.x-50,y:point.y},{x:point.x+50,y:point.y},5,6000);
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_1070 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_1090
       * @tc.name    SwipeGesture is set speed to 20.55
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_1090', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_1090`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration45")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration45'),1000);
      let point =await button01.getBoundsCenter()
      windowSnap.snapShot();
      await driver.fling({x:point.x-50,y:point.y},{x:point.x+50,y:point.y},5,6000);
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_1090 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_1080
       * @tc.name    SwipeGesture is set speed to 2.5
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_1080', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_1080`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration46")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration46'),1000);
      let point =await button01.getBoundsCenter()
      windowSnap.snapShot();
      await driver.fling({x:point.x-50,y:point.y},{x:point.x+50,y:point.y},5,6000);
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_1080 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_1010
       * @tc.name    SwipeGesture is set fingers to undefined
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_1010', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_1010`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration47")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration47'),1000);
      let point =await button01.getBoundsCenter()
      windowSnap.snapShot();
      await driver.fling({x:point.x-50,y:point.y},{x:point.x+50,y:point.y},5,6000);
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_1010 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_1110
       * @tc.name    SwipeGesture is set speed to undefined
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_1110', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_1110`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration48")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration48'),1000);
      let point =await button01.getBoundsCenter()
      windowSnap.snapShot();
      await driver.fling({x:point.x-50,y:point.y},{x:point.x+50,y:point.y},5,6000);
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_1110 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_1000
       * @tc.name    SwipeGesture is set fingers to null
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_1000', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_1000`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration49")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration49'),1000);
      let point =await button01.getBoundsCenter()
      windowSnap.snapShot();
      await driver.fling({x:point.x-50,y:point.y},{x:point.x+50,y:point.y},5,6000);
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_1000 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_0970
       * @tc.name    SwipeGesture is set fingers to 11
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_0970', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0970`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration50")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration50'),1000);
      let point =await button01.getBoundsCenter()
      windowSnap.snapShot();
      await driver.fling({x:point.x-50,y:point.y},{x:point.x+50,y:point.y},5,6000);
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0970 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_0960
       * @tc.name    SwipeGesture is set fingers to 1
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_0960', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0960`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration51")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration51'),1000);
      let point =await button01.getBoundsCenter()
      windowSnap.snapShot();
      await driver.fling({x:point.x-50,y:point.y},{x:point.x+50,y:point.y},5,6000);
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0960 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_0950
       * @tc.name    SwipeGesture is set fingers to -1
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_0950', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0950`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration52")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration52'),1000);
      let point =await button01.getBoundsCenter()
      windowSnap.snapShot();
      await driver.fling({x:point.x-50,y:point.y},{x:point.x+50,y:point.y},5,6000);
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0950 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_0980
       * @tc.name    SwipeGesture is set fingers to 2.5
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_0980', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0980`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration53")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration53'),1000);
      windowSnap.snapShot();
      await driver.waitForIdle(500,2000);
      let point =await button01.getBoundsCenter()
      let pointers: PointerMatrix = PointerMatrix.create(2,2);
      pointers.setPoint(0,0,{x:point.x,y:point.y});
      pointers.setPoint(0,1,{x:point.x,y:point.y+1});
      pointers.setPoint(1,0,{x:point.x,y:point.y});
      pointers.setPoint(1,1,{x:point.x,y:point.y+1});
      await driver.injectMultiPointerAction(pointers);
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0980 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_0990
       * @tc.name    SwipeGesture is set fingers to 4
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_0990', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0990`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration54")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration54'),1000);
      windowSnap.snapShot();
      await driver.waitForIdle(500,2000);
      let point =await button01.getBoundsCenter()
      let pointers: PointerMatrix = PointerMatrix.create(4,2);
      pointers.setPoint(0,0,{x:point.x,y:point.y});
      pointers.setPoint(0,1,{x:point.x,y:point.y+1});
      pointers.setPoint(1,0,{x:point.x,y:point.y});
      pointers.setPoint(1,1,{x:point.x,y:point.y+1});
      pointers.setPoint(2,0,{x:point.x,y:point.y});
      pointers.setPoint(2,1,{x:point.x,y:point.y+1});
      pointers.setPoint(3,0,{x:point.x,y:point.y});
      pointers.setPoint(3,1,{x:point.x,y:point.y+1});
      await driver.injectMultiPointerAction(pointers);
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0990 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_1040
       * @tc.name    SwipeGesture is set isFingerCountLimited to undefined
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_1040', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_1040`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration55")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration55'),1000);
      let point =await button01.getBoundsCenter()
      windowSnap.snapShot();
      await driver.fling({x:point.x-50,y:point.y},{x:point.x+50,y:point.y},5,6000);
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_1040 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_1030
       * @tc.name    SwipeGesture is set isFingerCountLimited to true
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_1030', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_1030`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration56")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration56'),1000);
      let point =await button01.getBoundsCenter()
      windowSnap.snapShot();
      await driver.fling({x:point.x-50,y:point.y},{x:point.x+50,y:point.y},5,6000);
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_1030 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_1020
       * @tc.name    SwipeGesture is set isFingerCountLimited to false
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_1020', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_1020`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration57")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration57'),1000);
      let point =await button01.getBoundsCenter()
      windowSnap.snapShot();
      await driver.fling({x:point.x-50,y:point.y},{x:point.x+50,y:point.y},5,6000);
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_1020 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_0920
       * @tc.name    SwipeGesture is set direction to None
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_0920', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0920`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration58")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration58'),1000);
      let point =await button01.getBoundsCenter()
      windowSnap.snapShot();
      await driver.fling({x:point.x-50,y:point.y},{x:point.x+50,y:point.y},5,6000);
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0920 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_0900
       * @tc.name    SwipeGesture is set direction to All
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_0900', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0900`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration59")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration59'),1000);
      let point =await button01.getBoundsCenter()
      windowSnap.snapShot();
      await driver.fling({x:point.x-50,y:point.y},{x:point.x+50,y:point.y},5,6000);
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0900 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_0910
       * @tc.name    SwipeGesture is set direction to Horizontal
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_0910', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0910`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration60")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration60'),1000);
      let point =await button01.getBoundsCenter()
      windowSnap.snapShot();
      await driver.fling({x:point.x-50,y:point.y},{x:point.x+50,y:point.y},5,6000);
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0910 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_0940
       * @tc.name    SwipeGesture is set direction to Vertical
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_0940', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0940`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration61")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration61'),1000);
      let point =await button01.getBoundsCenter()
      windowSnap.snapShot();
      await driver.fling({x:point.x,y:point.y-10},{x:point.x,y:point.y},5,6000);
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0940 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_0930
       * @tc.name    SwipeGesture is set direction to undefined
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_0930', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0930`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration62")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration62'),1000);
      let point =await button01.getBoundsCenter()
      windowSnap.snapShot();
      await driver.fling({x:point.x,y:point.y-10},{x:point.x,y:point.y},5,6000);
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0930 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_0280
       * @tc.name    PanGesture is set distance to -10
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_0280', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0280`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration63")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration63'),1000);
      let point =await button01.getBoundsCenter()
      windowSnap.snapShot();
      await driver.drag(point.x,point.y,point.x-100,point.y,1000);
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0280 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_0290
       * @tc.name    PanGesture is set distance to 0
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_0290', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0290`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration64")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration64'),1000);
      let point =await button01.getBoundsCenter()
      windowSnap.snapShot();
      await driver.drag(point.x,point.y,point.x-100,point.y,1000);
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0290 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_0300
       * @tc.name    PanGesture is set distance to 1
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_0300', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0300`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration65")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration65'),1000);
      let point =await button01.getBoundsCenter()
      windowSnap.snapShot();
      await driver.drag(point.x,point.y,point.x-100,point.y,1000);
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0300 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_0310
       * @tc.name    PanGesture is set distance to 120
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_0310', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0310`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration66")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration66'),1000);
      let point =await button01.getBoundsCenter()
      windowSnap.snapShot();
      await driver.drag(point.x+100,point.y,point.x-100,point.y,1000);
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0310 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_0320
       * @tc.name    PanGesture is set distance to 20.5
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_0320', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0320`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration67")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration67'),1000);
      let point =await button01.getBoundsCenter()
      windowSnap.snapShot();
      await driver.drag(point.x+100,point.y,point.x-100,point.y,1000);
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0320 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_ACTION_GESTURE_CONFIGURATION_0330
       * @tc.name    PanGesture is set distance to 5
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_ACTION_GESTURE_CONFIGURATION_0330', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0330`);
      Settings.createWindow("testability/pages/ActionGestureConfiguration/ActionGestureConfiguration68")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('ActionGestureConfiguration68'),1000);
      let point =await button01.getBoundsCenter()
      windowSnap.snapShot();
      await driver.drag(point.x+100,point.y,point.x-100,point.y,1000);
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_CONFIGURATION_0330 finish.`);
      done();
    })

