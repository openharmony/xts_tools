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

export default function UIComponentListAndGridGridDirLayTest() {
  describe('UIComponentListAndGridGridDirLayTest', () => {
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
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0210_490
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0210_490
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0210_490', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0210_490';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridGridDirLay/UIComponentListAndGridGridDirLay001");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0200_884
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0200_884
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0200_884', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0200_884';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridGridDirLay/UIComponentListAndGridGridDirLay002");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0220_319
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0220_319
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0220_319', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0220_319';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridGridDirLay/UIComponentListAndGridGridDirLay003");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0250_399
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0250_399
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0250_399', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0250_399';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridGridDirLay/UIComponentListAndGridGridDirLay004");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0070_906
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0070_906
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0070_906', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0070_906';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridGridDirLay/UIComponentListAndGridGridDirLay005");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0170_563
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0170_563
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0170_563', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0170_563';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridGridDirLay/UIComponentListAndGridGridDirLay006");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0140_163
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0140_163
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0140_163', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0140_163';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridGridDirLay/UIComponentListAndGridGridDirLay007");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0160_537
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0160_537
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0160_537', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0160_537';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridGridDirLay/UIComponentListAndGridGridDirLay008");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0190_805
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0190_805
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0190_805', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0190_805';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridGridDirLay/UIComponentListAndGridGridDirLay009");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0280_150
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0280_150
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0280_150', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0280_150';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridGridDirLay/UIComponentListAndGridGridDirLay010");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0270_746
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0270_746
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0270_746', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0270_746';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridGridDirLay/UIComponentListAndGridGridDirLay011");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0260_977
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0260_977
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0260_977', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0260_977';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridGridDirLay/UIComponentListAndGridGridDirLay012");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0150_305
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0150_305
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0150_305', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0150_305';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridGridDirLay/UIComponentListAndGridGridDirLay013");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0120_025
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0120_025
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0120_025', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0120_025';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridGridDirLay/UIComponentListAndGridGridDirLay014");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0100_931
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0100_931
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0100_931', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0100_931';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridGridDirLay/UIComponentListAndGridGridDirLay015");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0240_252
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0240_252
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0240_252', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0240_252';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridGridDirLay/UIComponentListAndGridGridDirLay016");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0290_857
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0290_857
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0290_857', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0290_857';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridGridDirLay/UIComponentListAndGridGridDirLay017");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0180_428
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0180_428
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0180_428', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0180_428';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridGridDirLay/UIComponentListAndGridGridDirLay018");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0130_674
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0130_674
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0130_674', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0130_674';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridGridDirLay/UIComponentListAndGridGridDirLay019");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0300_293
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0300_293
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0300_293', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0300_293';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridGridDirLay/UIComponentListAndGridGridDirLay020");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0230_083
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0230_083
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0230_083', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0230_083';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridGridDirLay/UIComponentListAndGridGridDirLay021");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0030_924
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0030_924
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0030_924', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0030_924';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridGridDirLay/UIComponentListAndGridGridDirLay022");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0010_187
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0010_187
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0010_187', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_DIRECTIONLAYOUT_0010_187';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridGridDirLay/UIComponentListAndGridGridDirLay023");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });
  })
}
