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

export default function UIComponentPopUpBoxEnter() {
  describe('UIComponentPopUpBoxEnter', () => {
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
     * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_ENTER_0010
     * @tc.name    SUB_ACE_UI_COMPONENT_POPUPBOX_ENTER_0010
     * @tc.desc    Normalize ActionSheet event interactions
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_ENTER_0010', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_POPUPBOX_ENTER_0010';
      let pageName = 'UIComponentPopUpBoxEnter0010';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentPopUpBoxEnter/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let point = await button.getBoundsCenter();
      await driver.waitForIdle(500, 1000);
      await driver.click(point.x, point.y);
      await driver.waitForIdle(3000, 4000);
      await windowSnap.snapShot();
      await driver.click(point.x, point.y);
      await driver.waitForIdle(3000, 4000);
      point = await button.getBoundsCenter();
      await driver.mouseClick(point, MouseButton.MOUSE_BUTTON_LEFT);
      await driver.waitForIdle(3000, 4000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_ENTER_0410
     * @tc.name    SUB_ACE_UI_COMPONENT_POPUPBOX_ENTER_0410
     * @tc.desc    Align promptAction showDialog popups with 30px right shift
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_ENTER_0410', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_POPUPBOX_ENTER_0410';
      let pageName = 'UIComponentPopUpBoxEnter0410';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentPopUpBoxEnter/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(500, 1000);
      await button.click();
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

  })
}