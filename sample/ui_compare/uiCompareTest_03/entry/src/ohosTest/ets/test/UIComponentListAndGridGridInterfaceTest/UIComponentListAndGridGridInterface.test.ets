
/**
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

import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect, Level } from '@ohos/hypium';
import { BusinessError, commonEventManager } from '@kit.BasicServicesKit';
import { Driver, ON ,Component, UiWindow } from '@kit.TestKit';
import { uiAppearance } from '@kit.ArkUI';
import Settings from '../model/Settings';
import windowSnap from '../model/snapShot';
import Logger from '../model/Logger';
import Utils from '../model/Utils';


let TAG = 'RunTimeTest';

function sleep(ms: number) {
  return new Promise<string>(resolve => setTimeout(resolve, ms));
}

export default function UIComponentListAndGridGridInterface() {
  describe('UIComponentListAndGridGridInterface', () => {
    beforeAll(() => {

    })
    beforeEach(() => {

    })

    afterEach(async (done: Function) => {
      if (Settings.windowClass == undefined) {
        return
      }
      Settings.windowClass.destroyWindow((err) => {
        if (err.code) {
          Logger.error(`[${TAG}_afterEach]`, `Failed to destroy the window. Cause : ${JSON.stringify(err)}`);
          return;
        }
        Logger.info(`[${TAG}_afterEach]`, `Succeeded in destroy the window.`);
      })
      await Utils.sleep(1000);
      done();
    })

    afterAll(() => {

    })

    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_FADINGEDGE_0180', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_FADINGEDGE_0180';
      let pageName = "UIComponentListAndGridGridFadingEdge0180";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridGridFadingEdge/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let grid: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      let center = await grid.getBoundsCenter();
      let bounds = await grid.getBounds();
      await driver.swipe(center.x, center.y, center.x, bounds.top - 100, 1000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_FADINGEDGE_0120', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_FADINGEDGE_0120';
      let pageName = "UIComponentListAndGridGridFadingEdge0120";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridGridFadingEdge/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let grid: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await button.click();
      await driver.waitForIdle(1000, 2000);
      await grid.scrollToBottom(2000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_INTERFACE_0040_950
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_INTERFACE_0040_950
     * @tc.desc    Disable Grid animation support
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_INTERFACE_0040_950', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_INTERFACE_0040_950';
      let pageName = "UIComponentListAndGridGridInterface0040_950";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridGridInterface/' + pageName);
      let driver: Driver = Driver.create();
      let grid: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await grid.getBoundsCenter();
      let bounds = await grid.getBounds();
      await driver.waitForIdle(1000, 2000);
      await driver.mouseMoveTo(center);
      await driver.drag(center.x, center.y, bounds.right - 10, center.y);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_INTERFACE_0050_157
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_INTERFACE_0050_157
     * @tc.desc    Enable Grid animation support
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_INTERFACE_0050_157', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_INTERFACE_0050_157';
      let pageName = "UIComponentListAndGridGridInterface0050_157";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridGridInterface/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let grid: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await grid.getBoundsCenter();
      let bounds = await grid.getBounds();
      await driver.waitForIdle(1000, 2000);
      await driver.mouseMoveTo(center);
      await driver.drag(center.x, center.y, bounds.right - 10, center.y);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })  

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_INTERFACE_0060_056
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_INTERFACE_0060_056
     * @tc.desc    Test Grid gesture swiping
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_INTERFACE_0060_056', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_INTERFACE_0060_056';
      let pageName = "UIComponentListAndGridGridInterface0060_056";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridGridInterface/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let grid: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await grid.getBoundsCenter();
      let bounds = await grid.getBounds();
      await driver.waitForIdle(1000, 2000);
      await driver.swipe(center.x, center.y, bounds.right - 10, center.y, 1000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })   

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_INTERFACE_0070_428
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_INTERFACE_0070_428
     * @tc.desc    Set Grid scrollbar to hidden state
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_INTERFACE_0070_428', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_INTERFACE_0070_428';
      let pageName = "UIComponentListAndGridGridInterface0070_428";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridGridInterface/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let grid: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await grid.getBoundsCenter();
      let bounds = await grid.getBounds();
      await driver.waitForIdle(1000, 2000);
      await grid.scrollToBottom(2000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })   

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_INTERFACE_0080_641
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_INTERFACE_0080_641
     * @tc.desc    Set Grid scrollbar to always-visible state
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_INTERFACE_0080_641', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_INTERFACE_0080_641';
      let pageName = "UIComponentListAndGridGridInterface0080_641";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridGridInterface/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let grid: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await grid.getBoundsCenter();
      let bounds = await grid.getBounds();
      await driver.waitForIdle(1000, 2000);
      await grid.scrollToBottom(2000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })   

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_INTERFACE_0090_099
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_INTERFACE_0090_099
     * @tc.desc    Set Grid scrollbar to on-demand display state
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_INTERFACE_0090_099', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_INTERFACE_0090_099';
      let pageName = "UIComponentListAndGridGridInterface0090_099";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridGridInterface/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let grid: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await grid.getBoundsCenter();
      let bounds = await grid.getBounds();
      await driver.waitForIdle(1000, 2000);
      await grid.scrollToBottom(2000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(3000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })   

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_INTERFACE_0290_148
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_INTERFACE_0290_148
     * @tc.desc    Test Grid friction coefficient setting
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_INTERFACE_0290_148', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_INTERFACE_0290_148';
      let pageName = "UIComponentListAndGridGridInterface0290_148";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridGridInterface/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let grid: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await grid.getBoundsCenter();
      let bounds = await grid.getBounds();
      await driver.waitForIdle(1000, 2000);
      await grid.scrollToBottom(2000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })   

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_INTERFACE_0300_519
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_INTERFACE_0300_519
     * @tc.desc    Set Grid edge spring effect to Spring mode
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_INTERFACE_0300_519', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_INTERFACE_0300_519';
      let pageName = "UIComponentListAndGridGridInterface0300_519";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridGridInterface/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let grid: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await grid.getBoundsCenter();
      let bounds = await grid.getBounds();
      await driver.waitForIdle(1000, 2000);
      await grid.scrollToBottom(2000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })   

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_INTERFACE_0310_394
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_INTERFACE_0310_394
     * @tc.desc    Set Grid edge shadow effect to Fade mode
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_INTERFACE_0310_394', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_INTERFACE_0310_394';
      let pageName = "UIComponentListAndGridGridInterface0310_394";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridGridInterface/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let grid: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await grid.getBoundsCenter();
      let bounds = await grid.getBounds();
      await driver.waitForIdle(1000, 2000);
      await grid.scrollToBottom(2000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })   

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_INTERFACE_0320_627
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_INTERFACE_0320_627
     * @tc.desc    Set Grid edge effect to None
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_INTERFACE_0320_627', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_INTERFACE_0320_627';
      let pageName = "UIComponentListAndGridGridInterface0320_627";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridGridInterface/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let grid: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await grid.getBoundsCenter();
      let bounds = await grid.getBounds();
      await driver.waitForIdle(1000, 2000);
      await grid.scrollToBottom(2000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })   

  })
}
