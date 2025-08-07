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
import { Driver, ON, Component } from '@ohos.UiTest'

export default function UIComponentGridAlignItemsTest() {
  describe('UIComponentGridAlignItemsTest', () => {
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
     * @tc.number  SUB_ACE_UI_COMPONENT_GRID_ALIGNLTEMS_0010
     * @tc.name    SUB_ACE_UI_COMPONENT_GRID_ALIGNLTEMS_0010
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_GRID_ALIGNLTEMS_0010', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_GRID_ALIGNLTEMS_0010 start.`);
      Settings.createWindow("testability/pages/UIComponentGridAlignItems/UIComponentGridAlignItems001");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_GRID_ALIGNLTEMS_0010 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_GRID_ALIGNLTEMS_0060
     * @tc.name    SUB_ACE_UI_COMPONENT_GRID_ALIGNLTEMS_0060
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_GRID_ALIGNLTEMS_0060', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_GRID_ALIGNLTEMS_0060 start.`);
      Settings.createWindow("testability/pages/UIComponentGridAlignItems/UIComponentGridAlignItems002");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_GRID_ALIGNLTEMS_0060 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_GRID_ALIGNLTEMS_0020
     * @tc.name    SUB_ACE_UI_COMPONENT_GRID_ALIGNLTEMS_0020
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_GRID_ALIGNLTEMS_0020', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_GRID_ALIGNLTEMS_0020 start.`);
      Settings.createWindow("testability/pages/UIComponentGridAlignItems/UIComponentGridAlignItems003");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_GRID_ALIGNLTEMS_0020 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_GRID_ALIGNLTEMS_0300
     * @tc.name    SUB_ACE_UI_COMPONENT_GRID_ALIGNLTEMS_0300
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_GRID_ALIGNLTEMS_0300', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_GRID_ALIGNLTEMS_0300';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentGridAlignItems/UIComponentGridAlignItems004");
      let driver: Driver = Driver.create();
      let grid: Component = await driver.waitForComponent(ON.type('Grid'), 1000);
      let rect = await grid.getBounds();
      console.info(`${caseName} rect of Grid is ${JSON.stringify(rect)}`);
      await driver.mouseDrag({x: rect.right - 15, y: rect.top + 10}, {x: rect.right - 15, y: rect.top + 100}, 1000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });
  })
}
