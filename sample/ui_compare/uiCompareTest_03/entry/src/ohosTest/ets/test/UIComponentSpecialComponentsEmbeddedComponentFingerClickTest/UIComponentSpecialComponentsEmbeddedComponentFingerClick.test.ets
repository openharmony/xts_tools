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
import { BusinessError, commonEventManager, systemParameterEnhance } from '@kit.BasicServicesKit';
import { KeyCode } from '@kit.InputKit';
import screenLock from '@ohos.screenLock';
import { window } from '@kit.ArkUI';
import wifiManager from '@ohos.wifiManager';
import { Driver, ON ,Component, UiWindow, MouseButton } from '@kit.TestKit';
import { screen } from '@kit.ArkUI';
import Settings from '../model/Settings';
import windowSnap from '../model/snapShot';
import Logger from '../model/Logger';
import Utils from '../model/Utils';

let TAG = 'RunTimeTest';
let mpEnable: string = 'Haven\'t getSync.';

function sleep(ms: number) {
  return new Promise<string>(resolve => setTimeout(resolve, ms));
}

export default function UIComponentSpecialComponentsEmbeddedComponentFingerClick() {
  describe('UIComponentSpecialComponentsEmbeddedComponentFingerClick', () => {
    beforeAll(() => {
      try {
        mpEnable = systemParameterEnhance.getSync('persist.sys.abilityms.multi_process_model');
      } catch (err) {
        console.error(`ACTS_NativeStartChildProcess Get system parameter error: ${JSON.stringify(err)}`);
        mpEnable = 'fail';
      }
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
     * @tc.number  SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_EMBEDDEDCOMPONENT_FINGERCLICK_0010
     * @tc.name    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_EMBEDDEDCOMPONENT_FINGERCLICK_0010
     * @tc.desc    Right mouse button click
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_EMBEDDEDCOMPONENT_FINGERCLICK_0010', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_EMBEDDEDCOMPONENT_FINGERCLICK_0010';
      let pageName = 'UIComponentSpecialComponentsEmbeddedComponentFingerClick0010';
      Logger.info(`[${TAG}]`, `Case start.`);
      if (mpEnable === 'true') {
        Settings.createWindow('testability/pages/UIComponentSpecialComponentsEmbeddedComponentFingerClick/' + pageName);
        let driver: Driver = Driver.create();
        await driver.waitForIdle(500, 1000);
        let jumpButton: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
        await jumpButton.click();
        await driver.waitForIdle(500, 1000);
        let embeddedComponent: Component = await driver.findComponent(ON.id('EventTestPage_01'));
        await embeddedComponent.click();
        await driver.waitForIdle(500, 1000);
        await windowSnap.snapShot();
        await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
        done();
      } else {
        Logger.error(`[${TAG}] error, current device does not support UIExtensionAbility, please check: ${mpEnable}`);
        await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
        done();
      }
    })

  })
}