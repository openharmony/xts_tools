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
import { BusinessError } from '@kit.BasicServicesKit';
import { Point } from '@kit.TestKit';

export default function UIComponentGridEventEnhancementTest() {
  describe('UIComponentGridEventEnhancementTest', () => {
    afterEach(async (done: Function) => {
      if (Settings.windowClass == undefined) {
        return;
      }

      Settings.windowClass.destroyWindow((err: BusinessError) => {
        if (err) {
          Logger.error('TEST', `Failed to destroy the window. Cause : ${JSON.stringify(err)}`)
          return;
        }
        Logger.info('TEST', `Succeeded in destroy the window.`);
      })
      await Utils.sleep(1000);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0050_734
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0050_734
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0050_734', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0050_734';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentGridEventEnhancement/UIComponentGridEventEnhancement001");
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id('scroll'), 1000);
      await button.click();
      let grid: Component = await driver.waitForComponent(ON.id('Grid'), 1000);
      let rect = await grid.getBounds();
      console.info(`${caseName} rect of Grid is ${JSON.stringify(rect)}`);
      await driver.mouseDrag({x: rect.right - 15, y: rect.top + 50}, {x: rect.right - 15, y: rect.top - 30}, 1000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0020_491
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0020_491
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0020_491', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0020_491';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentGridEventEnhancement/UIComponentGridEventEnhancement002");
      let driver: Driver = Driver.create();
      let grid: Component = await driver.waitForComponent(ON.id('Grid'), 1000);
      let point = await grid.getBoundsCenter();
      let point1: Point = { x: point.x, y: point.y + 50 };
      let point2: Point = { x: point.x, y: point.y - 50 };
      await driver.drag(point.x, point.y, point2.x, point2.y);
      await driver.waitForIdle(500, 1000);
      await driver.drag(point.x, point.y, point1.x, point1.y);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0010_754
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0010_754
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0010_754', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0010_754';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentGridEventEnhancement/UIComponentGridEventEnhancement003");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0030_456
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0030_456
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0030_456', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0030_456';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentGridEventEnhancement/UIComponentGridEventEnhancement004");
      let driver: Driver = Driver.create();
      let button1: Component = await driver.waitForComponent(ON.id('down'), 1000);
      await button1.click();
      let button2: Component = await driver.waitForComponent(ON.id('up'), 1000);
      await button2.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0230_067
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0230_067
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0230_067', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0230_067';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentGridEventEnhancement/UIComponentGridEventEnhancement005");
      let driver: Driver = Driver.create();
      let button1: Component = await driver.waitForComponent(ON.id('scroll'), 1000);
      await button1.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0190_649
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0190_649
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0190_649', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0190_649';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentGridEventEnhancement/UIComponentGridEventEnhancement006");
      let driver: Driver = Driver.create();
      let grid: Component = await driver.waitForComponent(ON.id('Grid'), 1000);
      let point: Point = await grid.getBoundsCenter();
      console.info(`${caseName} point of Grid is ${JSON.stringify(point)}`);
      let point1: Point = { x: point.x, y: point.y + 50};
      await driver.drag(point1.x, point1.y, point.x, point.y);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0200_675
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0200_675
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0200_675', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0200_675';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentGridEventEnhancement/UIComponentGridEventEnhancement007");
      let driver: Driver = Driver.create();
      let grid: Component = await driver.waitForComponent(ON.id('Grid'), 1000);
      let rect = await grid.getBounds();
      console.info(`${caseName} rect of Grid is ${JSON.stringify(rect)}`);
      await driver.mouseDrag({x: rect.right - 15, y: rect.top + 20}, {x: rect.right - 15, y: rect.top + 50}, 1000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0220_256
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0220_256
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0220_256', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0220_256';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentGridEventEnhancement/UIComponentGridEventEnhancement008");
      let driver: Driver = Driver.create();
      let button1: Component = await driver.waitForComponent(ON.id('scroll'), 1000);
      await button1.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0280_691
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0280_691
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0280_691', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0280_691';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentGridEventEnhancement/UIComponentGridEventEnhancement009");
      let driver: Driver = Driver.create();
      let button1: Component = await driver.waitForComponent(ON.id('scroll'), 1000);
      await button1.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0250_830
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0250_830
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0250_830', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0250_830';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentGridEventEnhancement/UIComponentGridEventEnhancement010");
      let driver: Driver = Driver.create();
      let grid: Component = await driver.waitForComponent(ON.id('Grid'), 1000);
      let point: Point = await grid.getBoundsCenter();
      console.info(`${caseName} point of Grid is ${JSON.stringify(point)}`);
      let point1: Point = { x: point.x, y: point.y + 50};
      await driver.drag(point1.x, point1.y, point.x, point.y);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0100_270
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0100_270
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0100_270', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0100_270';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentGridEventEnhancement/UIComponentGridEventEnhancement011");
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id('bottom'), 1000);
      await button.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0090_242
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0090_242
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0090_242', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0090_242';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentGridEventEnhancement/UIComponentGridEventEnhancement012");
      let driver: Driver = Driver.create();
      let grid: Component = await driver.waitForComponent(ON.id('Grid'), 1000);
      let rect = await grid.getBounds();
      console.info(`${caseName} rect of Grid is ${JSON.stringify(rect)}`);
      await driver.mouseDrag({x: rect.right - 15, y: rect.top + 10}, {x: rect.right - 15, y: rect.bottom}, 5000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0080_777
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0080_777
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0080_777', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0080_777';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentGridEventEnhancement/UIComponentGridEventEnhancement013");
      let driver: Driver = Driver.create();
      let grid: Component = await driver.waitForComponent(ON.id('Grid'), 1000);
      let rect = await grid.getBounds();
      console.info(`${caseName} rect of Grid is ${JSON.stringify(rect)}`);
      let point = await grid.getBoundsCenter();
      console.info(`${caseName} point of point is ${JSON.stringify(point)}`);
      await driver.drag(point.x, rect.bottom, point.x, rect.top, 10000);
      await driver.drag(point.x, rect.bottom, point.x, rect.top, 10000);
      await driver.drag(point.x, rect.bottom, point.x, rect.top, 10000);
      await driver.drag(point.x, rect.bottom, point.x, point.y, 10000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0170_101
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0170_101
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0170_101', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0170_101';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentGridEventEnhancement/UIComponentGridEventEnhancement014");
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id('scroll'), 1000);
      await button.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0150_981
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0150_981
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0150_981', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0150_981';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentGridEventEnhancement/UIComponentGridEventEnhancement015");
      let driver: Driver = Driver.create();
      let grid: Component = await driver.waitForComponent(ON.id('Grid'), 1000);
      let rect = await grid.getBounds();
      console.info(`${caseName} rect of Grid is ${JSON.stringify(rect)}`);
      await driver.mouseDrag({x: rect.right - 15, y: rect.top + 10}, {x: rect.right - 15, y: rect.top + 20});
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0140_025
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0140_025
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0140_025', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0140_025';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentGridEventEnhancement/UIComponentGridEventEnhancement016");
      let driver: Driver = Driver.create();
      let grid: Component = await driver.waitForComponent(ON.id('Grid'), 1000);
      let point = await grid.getBoundsCenter();
      console.info(`${caseName} point of point is ${JSON.stringify(point)}`);
      await driver.drag(point.x, point.y + 30, point.x, point.y - 10);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0160_071
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0160_071
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0160_071', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0160_071';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentGridEventEnhancement/UIComponentGridEventEnhancement017");
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id('scroll'), 1000);
      await button.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0310_287
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0310_287
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0310_287', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0310_287';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentGridEventEnhancement/UIComponentGridEventEnhancement018");
      let driver: Driver = Driver.create();
      let grid: Component = await driver.waitForComponent(ON.id('Grid'), 1000);
      let rect = await grid.getBounds();
      console.info(`${caseName} rect of Grid is ${JSON.stringify(rect)}`);
      await driver.mouseDrag({x: rect.right - 15, y: rect.top + 10}, {x: rect.right - 15, y: rect.top + 20});
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0290_176
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0290_176
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0290_176', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_EVENTENHANCEMENT_0290_176';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentGridEventEnhancement/UIComponentGridEventEnhancement019");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });
  })
}
