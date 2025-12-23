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
import { Driver, ON ,Component, UiWindow, MouseButton } from '@kit.TestKit';
import { uiAppearance } from '@kit.ArkUI';
import Settings from '../model/Settings';
import windowSnap from '../model/snapShot';
import Logger from '../model/Logger';
import Utils from '../model/Utils';


let TAG = 'RunTimeTest';

function sleep(ms: number) {
  return new Promise<string>(resolve => setTimeout(resolve, ms));
}

export default function UIComponentListAndGridListMouse() {
  describe('UIComponentListAndGridListMouse', () => {
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

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_MOUSE_0010
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_MOUSE_0010
     * @tc.desc    Observe box selection in ListItem under ListItemGroup
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_MOUSE_0010', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_MOUSE_0010';
      let pageName = "UIComponentListAndGridListMouse0010";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridListMouse/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let list: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let center = await list.getBoundsCenter();
      let bounds = await list.getBounds();
      await driver.waitForIdle(1000, 2000);
      await driver.mouseDrag({x: center.x, y: center.y}, {x: bounds.left, y: bounds.top}, 1000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_MOUSE_0020
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_MOUSE_0020
     * @tc.desc    Monitor mouse box selection for ListItemGroup header and footer
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_MOUSE_0020', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_MOUSE_0020';
      let pageName = "UIComponentListAndGridListMouse0020";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridListMouse/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let list: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let center = await list.getBoundsCenter();
      let bounds = await list.getBounds();
      await driver.waitForIdle(1000, 2000);
      await driver.mouseDrag({x: center.x, y: center.y}, {x: bounds.left, y: bounds.top}, 1000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_MOUSE_0040
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_MOUSE_0040
     * @tc.desc    Observe ListItem selected state polymorphic styles
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_MOUSE_0040', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_MOUSE_0040';
      let pageName = "UIComponentListAndGridListMouse0040";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridListMouse/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let list: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let item1: Component = await driver.waitForComponent(ON.id(pageName + '_02_1_1'), 1000);
      let center = await list.getBoundsCenter();
      let bounds = await list.getBounds();
      let item1center = await item1.getBoundsCenter();
      await driver.waitForIdle(1000, 2000);
      await driver.mouseClick({x: item1center.x, y: item1center.y}, MouseButton.MOUSE_BUTTON_LEFT);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_MOUSE_0050
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_MOUSE_0050
     * @tc.desc    Enable mouse drag selection after clicking ListItem in List
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_MOUSE_0050', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_MOUSE_0050';
      let pageName = "UIComponentListAndGridListMouse0050";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridListMouse/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let list: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let center = await list.getBoundsCenter();
      let bounds = await list.getBounds();
      await driver.waitForIdle(1000, 2000);
      await driver.mouseDrag({x: center.x, y: center.y}, {x: bounds.left, y: bounds.top}, 1000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_MOUSE_0070
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_MOUSE_0070
     * @tc.desc    Observe mouse box selection during dynamic List column changes
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_MOUSE_0070', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_MOUSE_0070';
      let pageName = "UIComponentListAndGridListMouse0070";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridListMouse/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let list: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let center = await list.getBoundsCenter();
      let bounds = await list.getBounds();
      await driver.waitForIdle(1000, 2000);
      await button.click();
      await driver.waitForIdle(1000, 2000);
      await driver.mouseDrag({x: center.x, y: center.y}, {x: bounds.left, y: bounds.top}, 1000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_MOUSE_0080
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_MOUSE_0080
     * @tc.desc    Observe List box selection rendering effects
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_MOUSE_0080', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_MOUSE_0080';
      let pageName = "UIComponentListAndGridListMouse0080";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridListMouse/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let list: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let center = await list.getBoundsCenter();
      let bounds = await list.getBounds();
      await driver.waitForIdle(1000, 2000);
      await driver.mouseDrag({x: center.x, y: center.y}, {x: bounds.left, y: bounds.top}, 1000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_MOUSE_0090
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_MOUSE_0090
     * @tc.desc    Configure List for lazy loading with mouse drag selection
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_MOUSE_0090', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_MOUSE_0090';
      let pageName = "UIComponentListAndGridListMouse0090";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridListMouse/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let list: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await list.getBoundsCenter();
      let bounds = await list.getBounds();
      await driver.waitForIdle(1000, 2000);
      await driver.mouseDrag({x: center.x, y: center.y}, {x: bounds.left, y: bounds.bottom}, 1000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_MOUSE_0110
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_MOUSE_0110
     * @tc.desc    Continue scrolling when mouse drag selection reaches boundaries after adding ListItemGroup
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_MOUSE_0110', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_MOUSE_0110';
      let pageName = "UIComponentListAndGridListMouse0110";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridListMouse/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let list: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let center = await list.getBoundsCenter();
      let bounds = await list.getBounds();
      await driver.waitForIdle(1000, 2000);
      await driver.mouseDrag({x: center.x, y: center.y}, {x: bounds.left - 50, y: bounds.bottom + 100}, 1000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_MOUSE_0120
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_MOUSE_0120
     * @tc.desc    Observe effects when disabling box selection in parent List component
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_MOUSE_0120', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_MOUSE_0120';
      let pageName = "UIComponentListAndGridListMouse0120";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridListMouse/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let list: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let center = await list.getBoundsCenter();
      let bounds = await list.getBounds();
      await driver.waitForIdle(1000, 2000);
      await driver.mouseDrag({x: center.x, y: center.y}, {x: bounds.left, y: bounds.top}, 1000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_MOUSE_0130
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_MOUSE_0130
     * @tc.desc    Test mouse box selection on disabled components
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_MOUSE_0130', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_MOUSE_0130';
      let pageName = "UIComponentListAndGridListMouse0130";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridListMouse/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let list: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let center = await list.getBoundsCenter();
      let bounds = await list.getBounds();
      await driver.waitForIdle(1000, 2000);
      await driver.mouseDrag({x: center.x, y: center.y}, {x: bounds.left, y: bounds.top}, 1000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_MOUSE_0150
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_MOUSE_0150
     * @tc.desc    Observe box selection when components at mouse press position are non-draggable
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_MOUSE_0150', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_MOUSE_0150';
      let pageName = "UIComponentListAndGridListMouse0150";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridListMouse/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let list: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let item1: Component = await driver.waitForComponent(ON.id(pageName + '_02_1_1'), 1000);
      let item1Center = await item1.getBoundsCenter();
      let center = await list.getBoundsCenter();
      let bounds = await list.getBounds();
      await driver.waitForIdle(1000, 2000);
      await driver.mouseDrag({x: item1Center.x, y: item1Center.y}, {x: bounds.left, y: bounds.bottom}, 1000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGR0ID_LIST_MOUSE_0160
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_MOUSE_0160
     * @tc.desc    Monitor initial box selection position during arbitrary mouse movement after press
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_MOUSE_0160', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_MOUSE_0160';
      let pageName = "UIComponentListAndGridListMouse0160";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridListMouse/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let list: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let center = await list.getBoundsCenter();
      let bounds = await list.getBounds();
      await driver.waitForIdle(1000, 2000);
      await driver.mouseDrag({x: center.x, y: center.y}, {x: bounds.left, y: bounds.top}, 1000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

  })
}
