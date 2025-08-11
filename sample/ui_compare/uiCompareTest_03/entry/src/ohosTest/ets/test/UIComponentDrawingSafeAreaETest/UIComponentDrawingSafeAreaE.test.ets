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
import { screen, uiAppearance } from '@kit.ArkUI';
import Settings from '../model/Settings';
import windowSnap from '../model/snapShot';
import Logger from '../model/Logger';
import Utils from '../model/Utils';


let TAG = 'RunTimeTest';

function sleep(ms: number) {
  return new Promise<string>(resolve => setTimeout(resolve, ms));
}

export default function UIComponentDrawingSafeAreaE() {
  describe('UIComponentDrawingSafeAreaE', () => {
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
     * @tc.number  SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0010
     * @tc.name    SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0010
     * @tc.desc    Add component set SafeAreaPadding property and dynamically modify upward parameters
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0010', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0010';
      let pageName = "UIComponentDrawingSafeAreaE0010";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentDrawingSafeAreaE/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(500, 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0020
     * @tc.name    SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0020
     * @tc.desc    Add component set SafeAreaPadding property and dynamically modify downward parameters
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0020', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0020';
      let pageName = "UIComponentDrawingSafeAreaE0020";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentDrawingSafeAreaE/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(500, 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0030
     * @tc.name    SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0030
     * @tc.desc    Add component set SafeAreaPadding property and dynamically modify left parameters
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0030', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0030';
      let pageName = "UIComponentDrawingSafeAreaE0030";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentDrawingSafeAreaE/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(500, 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0040
     * @tc.name    SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0040
     * @tc.desc    Add component set SafeAreaPadding property and dynamically modify right parameters
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0040', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0040';
      let pageName = "UIComponentDrawingSafeAreaE0040";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentDrawingSafeAreaE/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(500, 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0050
     * @tc.name    SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0050
     * @tc.desc    Add component configure SafeAreaPadding and dynamically modify all four directional parameters
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0050', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0050';
      let pageName = "UIComponentDrawingSafeAreaE0050";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentDrawingSafeAreaE/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(500, 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0060
     * @tc.name    SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0060
     * @tc.desc    Add Image component set SafeAreaPadding Margin Padding properties and dynamically change SafeAreaPadding
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0060', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0060';
      let pageName = "UIComponentDrawingSafeAreaE0060";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentDrawingSafeAreaE/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(500, 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0070
     * @tc.name    SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0070
     * @tc.desc    Add Image component set SafeAreaPadding Margin properties and dynamically change SafeAreaPadding
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0070', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0070';
      let pageName = "UIComponentDrawingSafeAreaE0070";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentDrawingSafeAreaE/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(500, 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0080
     * @tc.name    SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0080
     * @tc.desc    Add Image component set SafeAreaPadding Padding properties and dynamically change SafeAreaPadding
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0080', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0080';
      let pageName = "UIComponentDrawingSafeAreaE0080";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentDrawingSafeAreaE/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(500, 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0090
     * @tc.name    SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0090
     * @tc.desc    Support SafeAreaPadding in landscape-portrait switching
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0090', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0090';
      let pageName = "UIComponentDrawingSafeAreaE0090";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentDrawingSafeAreaE/' + pageName);
      let driver: Driver = Driver.create();

      let screenClass: screen.Screen | null = null;
      screen.getAllScreens(async (err: BusinessError, data: Array<screen.Screen>) => {
        const errCode: number = err.code;
        if (errCode) {
          Logger.error(`[${TAG}]: Failed to get all screens. Code:${err.code},message is ${err.message}`);
          return;
        }
        Logger.info(`[${TAG}]: Succeeded in getting all screens. Data:` + JSON.stringify(data));
        screenClass = data[0];
        screenClass.setOrientation(screen.Orientation.HORIZONTAL, (err: BusinessError) => {
          const errCode: number = err.code;
          if (errCode) {
            Logger.error(`[${TAG}]: Failed to set the horizontal orientation. Code:${err.code},message is ${err.message}`);
            return;
          }
          Logger.info(`[${TAG}]: Succeeded in setting the horizontal orientation.`);
        });

        let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
        await driver.waitForIdle(2000, 3000);
        await button.click();
        await driver.waitForIdle(2000, 3000);
        await windowSnap.snapShot();

        screenClass.setOrientation(screen.Orientation.VERTICAL, (err: BusinessError) => {
          const errCode: number = err.code;
          if (errCode) {
            Logger.error(`[${TAG}]: Failed to set the vertical orientation. Code:${err.code},message is ${err.message}`);
            return;
          }
          Logger.info(`[${TAG}]: Succeeded in setting the vertical orientation.`);
        });
      });

      await Utils.sleep(5000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0130
     * @tc.name    SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0130
     * @tc.desc    Add Column component nested with Image set SafeAreaPadding Padding Margin properties and dynamically toggle child SafeAreaPadding
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0130', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0130';
      let pageName = "UIComponentDrawingSafeAreaE0130";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentDrawingSafeAreaE/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(500, 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0140
     * @tc.name    SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0140
     * @tc.desc    Add Column component nested with Image set SafeAreaPadding Padding Margin properties and dynamically toggle father SafeAreaPadding
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0140', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0140';
      let pageName = "UIComponentDrawingSafeAreaE0140";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentDrawingSafeAreaE/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(500, 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0150
     * @tc.name    SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0150
     * @tc.desc    Add Column with nested Image set SafeAreaPadding and Padding then dynamically switch child SafeAreaPadding
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0150', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0150';
      let pageName = "UIComponentDrawingSafeAreaE0150";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentDrawingSafeAreaE/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(500, 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0160
     * @tc.name    SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0160
     * @tc.desc    Add Column with nested Image set SafeAreaPadding and Padding then dynamically switch father SafeAreaPadding
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0160', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0160';
      let pageName = "UIComponentDrawingSafeAreaE0160";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentDrawingSafeAreaE/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(500, 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0170
     * @tc.name    SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0170
     * @tc.desc    Add Column with nested Image set SafeAreaPadding and Margin then dynamically switch child SafeAreaPadding
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0170', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0170';
      let pageName = "UIComponentDrawingSafeAreaE0170";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentDrawingSafeAreaE/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(500, 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0180
     * @tc.name    SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0180
     * @tc.desc    Add Column with nested Image set SafeAreaPadding and Margin then dynamically switch father SafeAreaPadding
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0180', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0180';
      let pageName = "UIComponentDrawingSafeAreaE0180";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentDrawingSafeAreaE/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(500, 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0190
     * @tc.name    SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0190
     * @tc.desc    Create Column nested with Row containing TextInput set SafeAreaPadding Padding Margin and dynamically toggle child SafeAreaPadding
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0190', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0190';
      let pageName = "UIComponentDrawingSafeAreaE0190";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentDrawingSafeAreaE/' + pageName);
      let driver: Driver = Driver.create();
      let button1: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let button2: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      await driver.waitForIdle(500, 1000);

      await button1.click();
      await driver.waitForIdle(2000, 3000);
      await driver.triggerKey(2049);
      await driver.waitForIdle(2000, 3000);
      await driver.triggerKey(2049);
      await driver.waitForIdle(2000, 3000);
      await driver.triggerKey(2054);
      await driver.waitForIdle(2000, 3000);
      await driver.triggerKey(2049);
      await driver.waitForIdle(2000, 3000);
      await windowSnap.snapShot(TAG + '_01');
      await driver.triggerKey(2054);
      await driver.waitForIdle(2000, 3000);

      await button2.click();
      await driver.waitForIdle(2000, 3000);
      await driver.triggerKey(2049);
      await driver.waitForIdle(2000, 3000);
      await driver.triggerKey(2049);
      await driver.waitForIdle(2000, 3000);
      await driver.triggerKey(2054);
      await driver.waitForIdle(2000, 3000);
      await driver.triggerKey(2049);
      await driver.waitForIdle(2000, 3000);
      await windowSnap.snapShot(TAG + '_02');
      await driver.triggerKey(2054);
      await driver.waitForIdle(2000, 3000);

      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0200
     * @tc.name    SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0200
     * @tc.desc    Create Column nested with Row containing TextInput set SafeAreaPadding Padding Margin and dynamically toggle father SafeAreaPadding
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0200', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0200';
      let pageName = "UIComponentDrawingSafeAreaE0200";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentDrawingSafeAreaE/' + pageName);
      let driver: Driver = Driver.create();
      let button1: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let button2: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      await driver.waitForIdle(500, 1000);

      await button1.click();
      await driver.waitForIdle(2000, 3000);
      await driver.triggerKey(2049);
      await driver.waitForIdle(2000, 3000);
      await driver.triggerKey(2049);
      await driver.waitForIdle(2000, 3000);
      await driver.triggerKey(2054);
      await driver.waitForIdle(2000, 3000);
      await driver.triggerKey(2049);
      await driver.waitForIdle(2000, 3000);
      await windowSnap.snapShot(TAG + '_01');
      await driver.triggerKey(2054);
      await driver.waitForIdle(2000, 3000);

      await button2.click();
      await driver.waitForIdle(2000, 3000);
      await driver.triggerKey(2049);
      await driver.waitForIdle(2000, 3000);
      await driver.triggerKey(2049);
      await driver.waitForIdle(2000, 3000);
      await driver.triggerKey(2054);
      await driver.waitForIdle(2000, 3000);
      await driver.triggerKey(2049);
      await driver.waitForIdle(2000, 3000);
      await windowSnap.snapShot(TAG + '_02');
      await driver.triggerKey(2054);
      await driver.waitForIdle(2000, 3000);

      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0220
     * @tc.name    SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0220
     * @tc.desc    Column nests Row with distinct backgrounds while dynamically toggling Row's SafeAreaPadding property
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0220', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0220';
      let pageName = "UIComponentDrawingSafeAreaE0220";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentDrawingSafeAreaE/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(500, 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0230
     * @tc.name    SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0230
     * @tc.desc    Column nests Row with varied backgrounds sets padding and dynamically toggles SafeAreaPadding property
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0230', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0230';
      let pageName = "UIComponentDrawingSafeAreaE0230";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentDrawingSafeAreaE/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(500, 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0240
     * @tc.name    SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0240
     * @tc.desc    Column with nested Row and distinct backgrounds sets margin then dynamically switches SafeAreaPadding property
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0240', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0240';
      let pageName = "UIComponentDrawingSafeAreaE0240";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentDrawingSafeAreaE/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(500, 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0250
     * @tc.name    SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0250
     * @tc.desc    Column nests Row with distinct backgrounds while dynamically toggling SafeAreaPadding property
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0250', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0250';
      let pageName = "UIComponentDrawingSafeAreaE0250";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentDrawingSafeAreaE/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(500, 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0260
     * @tc.name    SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0260
     * @tc.desc    Column nests Row with distinct backgrounds sets padding and dynamically toggles SafeAreaPadding property
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0260', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0260';
      let pageName = "UIComponentDrawingSafeAreaE0260";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentDrawingSafeAreaE/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(500, 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0270
     * @tc.name    SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0270
     * @tc.desc    Column nested with Row both set padding and distinct backgrounds while dynamically switching SafeAreaPadding property
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0270', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0270';
      let pageName = "UIComponentDrawingSafeAreaE0270";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentDrawingSafeAreaE/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(500, 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0280
     * @tc.name    SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0280
     * @tc.desc    Three-layer nesting: Column-Row-Image with distinct backgrounds while Row dynamically toggles SafeAreaPadding property
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0280', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0280';
      let pageName = "UIComponentDrawingSafeAreaE0280";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentDrawingSafeAreaE/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(500, 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0290
     * @tc.name    SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0290
     * @tc.desc    Three-layer nested Column-Row-Image with distinct backgrounds sets Row padding and dynamically toggles SafeAreaPadding property
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0290', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0290';
      let pageName = "UIComponentDrawingSafeAreaE0290";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentDrawingSafeAreaE/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(500, 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0300
     * @tc.name    SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0300
     * @tc.desc    Three-layer nested Column-Row-Image with distinct backgrounds while Column dynamically switches SafeAreaPadding property
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0300', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0300';
      let pageName = "UIComponentDrawingSafeAreaE0300";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentDrawingSafeAreaE/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(500, 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0310
     * @tc.name    SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0310
     * @tc.desc    Three-layer nested Column-Row-Image with distinct backgrounds sets Column padding and dynamically toggles SafeAreaPadding property
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0310', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0310';
      let pageName = "UIComponentDrawingSafeAreaE0310";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentDrawingSafeAreaE/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(500, 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0320
     * @tc.name    SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0320
     * @tc.desc    Three-layer nested Column-Row-Image with distinct backgrounds sets both Row and Column padding while dynamically switching SafeAreaPadding property
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0320', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0320';
      let pageName = "UIComponentDrawingSafeAreaE0320";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentDrawingSafeAreaE/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(500, 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0330
     * @tc.name    SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0330
     * @tc.desc    Test SafeAreaPadding property priority for top and left edges
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0330', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0330';
      let pageName = "UIComponentDrawingSafeAreaE0330";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentDrawingSafeAreaE/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(500, 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0340
     * @tc.name    SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0340
     * @tc.desc    Nested Stack-Row components with TextInputs test focus acquisition during dynamic Stack SafeAreaPadding toggling without padding
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0340', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0340';
      let pageName = "UIComponentDrawingSafeAreaE0340";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentDrawingSafeAreaE/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(500, 1000);
      await button.click();
      await driver.waitForIdle(2000, 3000);
      await driver.triggerKey(2049);
      await driver.waitForIdle(2000, 3000);
      await driver.triggerKey(2049);
      await driver.waitForIdle(2000, 3000);
      await driver.triggerKey(2054);
      await driver.waitForIdle(2000, 3000);
      await driver.triggerKey(2049);
      await driver.waitForIdle(2000, 3000);
      await driver.triggerKey(2054);
      await driver.waitForIdle(2000, 3000);
      await driver.triggerKey(2049);
      await driver.waitForIdle(2000, 3000);
      await windowSnap.snapShot();
      await driver.triggerKey(2054);
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0350
     * @tc.name    SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0350
     * @tc.desc    Nested Stack-Row components with TextInputs test focus acquisition during dynamic Row SafeAreaPadding toggling without padding
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0350', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0350';
      let pageName = "UIComponentDrawingSafeAreaE0350";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentDrawingSafeAreaE/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(500, 1000);
      await button.click();
      await driver.waitForIdle(2000, 3000);
      await driver.triggerKey(2049);
      await driver.waitForIdle(2000, 3000);
      await driver.triggerKey(2049);
      await driver.waitForIdle(2000, 3000);
      await driver.triggerKey(2054);
      await driver.waitForIdle(2000, 3000);
      await driver.triggerKey(2049);
      await driver.waitForIdle(2000, 3000);
      await driver.triggerKey(2054);
      await driver.waitForIdle(2000, 3000);
      await driver.triggerKey(2049);
      await driver.waitForIdle(2000, 3000);
      await windowSnap.snapShot();
      await driver.triggerKey(2054);
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0360
     * @tc.name    SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0360
     * @tc.desc    Navigation nested with Column components featuring distinct backgrounds dynamically toggles SafeAreaPadding property
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0360', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0360';
      let pageName = "UIComponentDrawingSafeAreaE0360";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentDrawingSafeAreaE/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(500, 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0370
     * @tc.name    SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0370
     * @tc.desc    Navigation nested with Column components having distinct backgrounds sets padding and dynamically switches SafeAreaPadding property
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0370', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0370';
      let pageName = "UIComponentDrawingSafeAreaE0370";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentDrawingSafeAreaE/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(500, 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0380
     * @tc.name    SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0380
     * @tc.desc    Scroll nested with Column components displaying distinct backgrounds dynamically toggles SafeAreaPadding property
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0380', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0380';
      let pageName = "UIComponentDrawingSafeAreaE0380";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentDrawingSafeAreaE/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(500, 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0390
     * @tc.name    SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0390
     * @tc.desc    Scroll nested with Column components featuring distinct backgrounds sets padding and dynamically switches SafeAreaPadding property
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0390', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0390';
      let pageName = "UIComponentDrawingSafeAreaE0390";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentDrawingSafeAreaE/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(500, 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0400
     * @tc.name    SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0400
     * @tc.desc    Column nests Row with distinct backgrounds dynamically toggles SafeAreaPadding while testing padding parameter
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0400', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0400';
      let pageName = "UIComponentDrawingSafeAreaE0400";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentDrawingSafeAreaE/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(500, 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0410
     * @tc.name    SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0410
     * @tc.desc    Column nests Row with distinct backgrounds dynamically toggles SafeAreaPadding while testing LengthMetrics parameter
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0410', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0410';
      let pageName = "UIComponentDrawingSafeAreaE0410";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentDrawingSafeAreaE/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(500, 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0420
     * @tc.name    SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0420
     * @tc.desc    Column nests Row with distinct backgrounds dynamically toggles SafeAreaPadding while testing LocalizedPadding parameter
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0420', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_DRAWING_SAFEAREAE_0420';
      let pageName = "UIComponentDrawingSafeAreaE0420";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentDrawingSafeAreaE/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(500, 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

  })
}
