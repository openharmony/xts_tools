
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

export default function UIComponentPopupBoxModalTransitionHover() {
  describe('UIComponentPopupBoxModalTransitionHover', () => {
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
     * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_MODALTRANSITION_HOVER_0020
     * @tc.name    SUB_ACE_UI_COMPONENT_POPUPBOX_MODALTRANSITION_HOVER_0020
     * @tc.desc    Check semi-modal center popup style consistency with non-hover state when enableHoverMode is unset
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_MODALTRANSITION_HOVER_0020', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_POPUPBOX_MODALTRANSITION_HOVER_0020';
      let pageName = "UIComponentPopupBoxModalTransitionHover0020";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentPopupBoxModalTransitionHover/' + pageName);
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
     * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_MODALTRANSITION_HOVER_0030
     * @tc.name    SUB_ACE_UI_COMPONENT_POPUPBOX_MODALTRANSITION_HOVER_0030
     * @tc.desc    Verify semi-modal center popup style matches non-hover state when enableHoverMode is false
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_MODALTRANSITION_HOVER_0030', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_POPUPBOX_MODALTRANSITION_HOVER_0030';
      let pageName = "UIComponentPopupBoxModalTransitionHover0030";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentPopupBoxModalTransitionHover/' + pageName);
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
     * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_MODALTRANSITION_HOVER_0040
     * @tc.name    SUB_ACE_UI_COMPONENT_POPUPBOX_MODALTRANSITION_HOVER_0040
     * @tc.desc    Verify semi-modal bottom popup style matches non-hover state when enableHoverMode is false
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_MODALTRANSITION_HOVER_0040', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_POPUPBOX_MODALTRANSITION_HOVER_0040';
      let pageName = "UIComponentPopupBoxModalTransitionHover0040";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentPopupBoxModalTransitionHover/' + pageName);
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
     * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_MODALTRANSITION_HOVER_0050
     * @tc.name    SUB_ACE_UI_COMPONENT_POPUPBOX_MODALTRANSITION_HOVER_0050
     * @tc.desc    Test semi-modal center popup style consistency with non-hover state when enableHoverMode false but hoverModeArea set to TOP_SCREEN
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_MODALTRANSITION_HOVER_0050', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_POPUPBOX_MODALTRANSITION_HOVER_0050';
      let pageName = "UIComponentPopupBoxModalTransitionHover0050";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentPopupBoxModalTransitionHover/' + pageName);
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
     * @tc.number  SUB_ACE_UI_COMPONENT_POPUPBOX_MODALTRANSITION_HOVER_0060
     * @tc.name    SUB_ACE_UI_COMPONENT_POPUPBOX_MODALTRANSITION_HOVER_0060
     * @tc.desc    Test semi-modal center popup style consistency with non-hover state when enableHoverMode false but hoverModeArea set to BOTTOM_SCREEN
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_MODALTRANSITION_HOVER_0060', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_POPUPBOX_MODALTRANSITION_HOVER_0060';
      let pageName = "UIComponentPopupBoxModalTransitionHover0060";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentPopupBoxModalTransitionHover/' + pageName);
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
