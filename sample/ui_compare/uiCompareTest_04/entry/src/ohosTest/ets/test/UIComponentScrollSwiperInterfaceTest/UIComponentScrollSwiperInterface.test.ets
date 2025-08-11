/*
 * Copyright (c) 2025 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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
import { Driver, ON, Component, MouseButton } from '@ohos.UiTest'
import { Point } from '@kit.TestKit';

export default function UIComponentScrollSwiperInterfaceTest() {
  describe('UIComponentScrollSwiperInterfaceTest', () => {
    afterEach(async (done: Function) => {
      if (Settings.windowClass == undefined) {
        return;
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
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_1460
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_1460
     * @tc.desc    Ecological Group 1
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_1460', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_1460 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterface/UIComponentScrollSwiperInterface001");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_1460 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2170
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2170
     * @tc.desc    Ecological Group 1
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2170', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2170 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterface/UIComponentScrollSwiperInterface002");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2170 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2800
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2800
     * @tc.desc    Ecological Group 1
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2800', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2800';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterface/UIComponentScrollSwiperInterface003");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_1560
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_1560
     * @tc.desc    Ecological Group 1
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_1560', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_1560 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterface/UIComponentScrollSwiperInterface004");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_1560 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2810
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2810
     * @tc.desc    Ecological Group 1
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2810', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2810 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterface/UIComponentScrollSwiperInterface005");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2810 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_1650
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_1650
     * @tc.desc    Ecological Group 1
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_1650', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_1650 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterface/UIComponentScrollSwiperInterface006");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_1650 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_1640
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_1640
     * @tc.desc    Ecological Group 1
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_1640', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_1640 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterface/UIComponentScrollSwiperInterface007");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_1640 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2850
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2850
     * @tc.desc    Ecological Group 1
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2850', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2850 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterface/UIComponentScrollSwiperInterface008");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2850 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2890
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2890
     * @tc.desc    Ecological Group 1
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2890', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2890 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterface/UIComponentScrollSwiperInterface009");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2890 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2900
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2900
     * @tc.desc    Ecological Group 1
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2900', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2900 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterface/UIComponentScrollSwiperInterface010");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2900 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2830
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2830
     * @tc.desc    Ecological Group 1
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2830', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2830 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterface/UIComponentScrollSwiperInterface011");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2830 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2870
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2870
     * @tc.desc    Ecological Group 1
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2870', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2870 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterface/UIComponentScrollSwiperInterface012");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2870 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2880
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2880
     * @tc.desc    Ecological Group 1
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2880', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2880 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterface/UIComponentScrollSwiperInterface013");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2880 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2820
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2820
     * @tc.desc    Ecological Group 1
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2820', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2820 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterface/UIComponentScrollSwiperInterface014");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2820 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2860
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2860
     * @tc.desc    Ecological Group 1
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2860', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2860 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterface/UIComponentScrollSwiperInterface015");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2860 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2840
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2840
     * @tc.desc    Ecological Group 1
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2840', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2840 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterface/UIComponentScrollSwiperInterface016");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_2840 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_3620
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_3620
     * @tc.desc    Ecological Group 1
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_3620', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_3620';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterface/UIComponentScrollSwiperInterface017");
      let driver: Driver = Driver.create();
      let swipe: Component = await driver.waitForComponent(ON.id('Swipe'), 1000);
      let point = await swipe.getBoundsCenter();
      console.info(`${caseName} point of Swipe is ${JSON.stringify(point)}`);
      let rect = await swipe.getBounds();
      console.info(`${caseName} rect of Swipe is ${JSON.stringify(rect)}`);
      await driver.drag(point.x, rect.bottom - 5, point.x, rect.top, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_1140
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_1140
     * @tc.desc    Ecological Group 1
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_1140', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_1140';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterface/UIComponentScrollSwiperInterface018");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(3000, 3000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_0720
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_0720
     * @tc.desc    Ecological Group 1
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_0720', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_0720';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterface/UIComponentScrollSwiperInterface019");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_0730
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_0730
     * @tc.desc    Ecological Group 1
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_0730', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_0730';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterface/UIComponentScrollSwiperInterface020");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_1590
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_1590
     * @tc.desc    Ecological Group 1
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_1590', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_1590';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterface/UIComponentScrollSwiperInterface021");
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id('time'), 1000);
      await button.click();
      await driver.waitForIdle(5000, 5000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });
  })
}
