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

export default function UIComponentListAndGridListDisplayedColumns() {
  describe('UIComponentListAndGridListDisplayedColumns', () => {
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
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0010
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0010
     * @tc.desc    Set List lanes gutter to non-default 0 with listDirection Axis Vertical and zero column spacing
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0010', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0010';
      let pageName = "UIComponentListAndGridListDisplayedColumns0010";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridListDisplayedColumns/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0020
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0020
     * @tc.desc    Set List lanes gutter to 10px with listDirection Axis Vertical and 10px column spacing
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0020', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0020';
      let pageName = "UIComponentListAndGridListDisplayedColumns0020";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridListDisplayedColumns/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0030
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0030
     * @tc.desc    Set List lanes gutter to 10 with listDirection Axis Vertical and 10px column spacing
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0030', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0030';
      let pageName = "UIComponentListAndGridListDisplayedColumns0030";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridListDisplayedColumns/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0050
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0050
     * @tc.desc    Set List lanes gutter to 10fp with listDirection Axis Vertical and 10px column spacing
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0050', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0050';
      let pageName = "UIComponentListAndGridListDisplayedColumns0050";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridListDisplayedColumns/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0060
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0060
     * @tc.desc    Set List lanes gutter to 10lpx with listDirection Axis Vertical and 10px column spacing
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0060', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0060';
      let pageName = "UIComponentListAndGridListDisplayedColumns0060";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridListDisplayedColumns/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0070
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0070
     * @tc.desc    Set List lanes gutter to '10%' with listDirection Axis Vertical and 10px column spacing
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0070', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0070';
      let pageName = "UIComponentListAndGridListDisplayedColumns0070";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridListDisplayedColumns/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0080
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0080
     * @tc.desc    Set List lanes gutter to $r("app.string.gutter_15") with listDirection Axis Vertical and 10px column spacing
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0080', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0080';
      let pageName = "UIComponentListAndGridListDisplayedColumns0080";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridListDisplayedColumns/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0090
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0090
     * @tc.desc    Set List lanes gutter to -1 with listDirection Axis Vertical and 10px column spacing
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0090', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0090';
      let pageName = "UIComponentListAndGridListDisplayedColumns0090";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridListDisplayedColumns/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0110
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0110
     * @tc.desc    Set List lanes gutter to non-default 0 with listDirection Axis Horizontal and zero column spacing
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0110', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0110';
      let pageName = "UIComponentListAndGridListDisplayedColumns0110";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridListDisplayedColumns/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0120
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0120
     * @tc.desc    Set List lanes gutter to 10px with listDirection Axis Horizontal and 10px column spacing
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0120', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0120';
      let pageName = "UIComponentListAndGridListDisplayedColumns0120";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridListDisplayedColumns/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0140
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0140
     * @tc.desc    Set List lanes gutter to 10vp with listDirection Axis Horizontal and 10px column spacing
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0140', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0140';
      let pageName = "UIComponentListAndGridListDisplayedColumns0140";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridListDisplayedColumns/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0150
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0150
     * @tc.desc    Set List lanes gutter to 10fp with listDirection Axis Horizontal and 10px column spacing
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0150', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0150';
      let pageName = "UIComponentListAndGridListDisplayedColumns0150";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridListDisplayedColumns/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0160
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0160
     * @tc.desc    Set List lanes gutter to 10lpx with listDirection Axis Horizontal and 10px column spacing
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0160', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0160';
      let pageName = "UIComponentListAndGridListDisplayedColumns0160";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridListDisplayedColumns/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0170
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0170
     * @tc.desc    Set List lanes gutter to '10%' with listDirection Axis Horizontal and 10px column spacing
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0170', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0170';
      let pageName = "UIComponentListAndGridListDisplayedColumns0170";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridListDisplayedColumns/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0180
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0180
     * @tc.desc    Set List lanes gutter to $r("app.string.gutter_15") with listDirection Axis Horizontal and 10px column spacing
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0180', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0180';
      let pageName = "UIComponentListAndGridListDisplayedColumns0180";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridListDisplayedColumns/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0190
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0190
     * @tc.desc    Set List lanes gutter to -1 with listDirection Axis Horizontal and 10px column spacing
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0190', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0190';
      let pageName = "UIComponentListAndGridListDisplayedColumns0190";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridListDisplayedColumns/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0200
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0200
     * @tc.desc    Configure List lanes gutter as 10vp with ListItemAlign Start ensuring all settings apply
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0200', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0200';
      let pageName = "UIComponentListAndGridListDisplayedColumns0200";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridListDisplayedColumns/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0230
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0230
     * @tc.desc    Set List lanes gutter to 10vp and space to 20 verifying both take effect
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0230', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0230';
      let pageName = "UIComponentListAndGridListDisplayedColumns0230";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridListDisplayedColumns/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0240
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0240
     * @tc.desc    Set List lanes gutter to 10px and space to 10px verifying both take effect
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0240', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0240';
      let pageName = "UIComponentListAndGridListDisplayedColumns0240";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridListDisplayedColumns/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0250
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0250
     * @tc.desc    Set List lanes gutter to '10%' and space to 20 verifying both take effect
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0250', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0250';
      let pageName = "UIComponentListAndGridListDisplayedColumns0250";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridListDisplayedColumns/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0260
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0260
     * @tc.desc    Set List lanes gutter to 10vp and initialIndex to 8 verifying both take effect
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0260', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0260';
      let pageName = "UIComponentListAndGridListDisplayedColumns0260";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridListDisplayedColumns/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0300
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0300
     * @tc.desc    Set List lanes gutter to 10vp with child size changes confirming all settings apply
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0300', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_DISPLAYEDCOLUMNS_0300';
      let pageName = "UIComponentListAndGridListDisplayedColumns0300";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridListDisplayedColumns/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await button.click();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

  })
}
