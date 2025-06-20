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

import { hilog } from '@kit.PerformanceAnalysisKit';
import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect, Level } from '@ohos/hypium';
import { BusinessError, commonEventManager } from '@kit.BasicServicesKit';
import { KeyCode } from '@kit.InputKit';
import screenLock from '@ohos.screenLock';
import { window } from '@kit.ArkUI';
import wifiManager from '@ohos.wifiManager';
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

export default function UIComponentScrollClipContent() {
  describe('UIComponentScrollClipContent', () => {
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
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_CLIPCONTENT_0010
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_CLIPCONTENT_0010
     * @tc.desc    Switch Scroll_clipContent's ContentClipMode enum values
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_CLIPCONTENT_0010', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SCROLL_CLIPCONTENT_0010';
      let pageName = 'UIComponentScrollClipContent0010';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentScrollClipContent/' + pageName);
      let driver: Driver = Driver.create();
      let switchButton: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await windowSnap.snapShot();
      await switchButton.click();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await switchButton.click();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await switchButton.click();
      await driver.waitForIdle(500, 1000);
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_CLIPCONTENT_0020
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_CLIPCONTENT_0020
     * @tc.desc    Set Scroll_safeAreaPadding with valid Padding value
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_CLIPCONTENT_0020', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SCROLL_CLIPCONTENT_0020';
      let pageName = 'UIComponentScrollClipContent0020';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentScrollClipContent/' + pageName);
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_CLIPCONTENT_0030
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_CLIPCONTENT_0030
     * @tc.desc    Set Scroll_safeAreaPadding with invalid Padding value
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_CLIPCONTENT_0030', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SCROLL_CLIPCONTENT_0030';
      let pageName = 'UIComponentScrollClipContent0030';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentScrollClipContent/' + pageName);
      let driver: Driver = Driver.create();
      let switchButton: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await windowSnap.snapShot();
      await switchButton.click();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_CLIPCONTENT_0040
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_CLIPCONTENT_0040
     * @tc.desc    Set Scroll_safeAreaPadding with valid LengthMetrics value
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_CLIPCONTENT_0040', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SCROLL_CLIPCONTENT_0040';
      let pageName = 'UIComponentScrollClipContent0040';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentScrollClipContent/' + pageName);
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_CLIPCONTENT_0050
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_CLIPCONTENT_0050
     * @tc.desc    Set Scroll_safeAreaPadding with invalid LengthMetrics value
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_CLIPCONTENT_0050', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SCROLL_CLIPCONTENT_0050';
      let pageName = 'UIComponentScrollClipContent0050';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentScrollClipContent/' + pageName);
      let driver: Driver = Driver.create();
      let switchButton: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await windowSnap.snapShot();
      await switchButton.click();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await switchButton.click();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await switchButton.click();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await switchButton.click();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await switchButton.click();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_CLIPCONTENT_0060
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_CLIPCONTENT_0060
     * @tc.desc    Set Scroll_safeAreaPadding with valid LocalizedPadding value
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_CLIPCONTENT_0060', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SCROLL_CLIPCONTENT_0060';
      let pageName = 'UIComponentScrollClipContent0060';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentScrollClipContent/' + pageName);
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_CLIPCONTENT_0070
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_CLIPCONTENT_0070
     * @tc.desc    Set Scroll_safeAreaPadding with invalid LocalizedPadding value
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_CLIPCONTENT_0070', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SCROLL_CLIPCONTENT_0070';
      let pageName = 'UIComponentScrollClipContent0070';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentScrollClipContent/' + pageName);
      let driver: Driver = Driver.create();
      let switchButton: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await windowSnap.snapShot();
      await switchButton.click();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_CLIPCONTENT_0080
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_CLIPCONTENT_0080
     * @tc.desc    Set Scroll_clipContent with valid RectShape value
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_CLIPCONTENT_0080', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SCROLL_CLIPCONTENT_0080';
      let pageName = 'UIComponentScrollClipContent0080';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentScrollClipContent/' + pageName);
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_CLIPCONTENT_0090
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_CLIPCONTENT_0090
     * @tc.desc    Set Scroll_clipContent with invalid RectShape value
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_CLIPCONTENT_0090', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SCROLL_CLIPCONTENT_0090';
      let pageName = 'UIComponentScrollClipContent0090';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentScrollClipContent/' + pageName);
      let driver: Driver = Driver.create();
      let switchButton: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await windowSnap.snapShot();
      await switchButton.click();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

  })
}