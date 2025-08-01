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

export default function UIComponentListChildMainSizeTest() {
  describe('UIComponentListChildMainSizeTest', () => {
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
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CHILDMAINSIZE_0160
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CHILDMAINSIZE_0160
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CHILDMAINSIZE_0160', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CHILDMAINSIZE_0160';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentListChildMainSize/UIComponentListChildMainSize001");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CHILDMAINSIZE_0680
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CHILDMAINSIZE_0680
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CHILDMAINSIZE_0680', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CHILDMAINSIZE_0680';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentListChildMainSize/UIComponentListChildMainSize002");
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id('getItemRect'), 1000);
      await button.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CHILDMAINSIZE_0560
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CHILDMAINSIZE_0560
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CHILDMAINSIZE_0560', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CHILDMAINSIZE_0560';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentListChildMainSize/UIComponentListChildMainSize003");
      let driver: Driver = Driver.create();
      let button1: Component = await driver.waitForComponent(ON.id('splice(0)'), 1000);
      await button1.click();
      let button2: Component = await driver.waitForComponent(ON.id('splice(2)'), 1000);
      await button2.click();
      let button3: Component = await driver.waitForComponent(ON.id('splice(3)'), 1000);
      await button3.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CHILDMAINSIZE_0620
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CHILDMAINSIZE_0620
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CHILDMAINSIZE_0620', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CHILDMAINSIZE_0620';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentListChildMainSize/UIComponentListChildMainSize004");
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id('update'), 1000);
      await button.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CHILDMAINSIZE_0580
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CHILDMAINSIZE_0580
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CHILDMAINSIZE_0580', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CHILDMAINSIZE_0580';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentListChildMainSize/UIComponentListChildMainSize005");
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id('update'), 1000);
      await button.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });
  })
}
