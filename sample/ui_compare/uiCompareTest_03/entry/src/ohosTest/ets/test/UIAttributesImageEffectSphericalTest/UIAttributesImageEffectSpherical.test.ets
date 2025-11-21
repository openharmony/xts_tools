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

export default function UIAttributesImageEffectSpherical() {
  describe('UIAttributesImageEffectSpherical', () => {
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
     * @tc.number  SUB_ACE_UI_ATTRIBUTES_IMAGEEFFECT_SPHERICAL_0010
     * @tc.name    SUB_ACE_UI_ATTRIBUTES_IMAGEEFFECT_SPHERICAL_0010
     * @tc.desc    Create TextInput component with sphericalEffect set to -1
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES_IMAGEEFFECT_SPHERICAL_0010', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_ATTRIBUTES_IMAGEEFFECT_SPHERICAL_0010';
      let pageName = 'UIAttributesImageEffectSpherical0010';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIAttributesImageEffectSpherical/' + pageName);
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES_IMAGEEFFECT_SPHERICAL_0020
     * @tc.name    SUB_ACE_UI_ATTRIBUTES_IMAGEEFFECT_SPHERICAL_0020
     * @tc.desc    Create TextInput component with sphericalEffect set to 0
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES_IMAGEEFFECT_SPHERICAL_0020', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_ATTRIBUTES_IMAGEEFFECT_SPHERICAL_0020';
      let pageName = 'UIAttributesImageEffectSpherical0020';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIAttributesImageEffectSpherical/' + pageName);
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES_IMAGEEFFECT_SPHERICAL_0030
     * @tc.name    SUB_ACE_UI_ATTRIBUTES_IMAGEEFFECT_SPHERICAL_0030
     * @tc.desc    Create TextInput component with sphericalEffect set to 0.2
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES_IMAGEEFFECT_SPHERICAL_0030', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_ATTRIBUTES_IMAGEEFFECT_SPHERICAL_0030';
      let pageName = 'UIAttributesImageEffectSpherical0030';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIAttributesImageEffectSpherical/' + pageName);
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES_IMAGEEFFECT_SPHERICAL_0040
     * @tc.name    SUB_ACE_UI_ATTRIBUTES_IMAGEEFFECT_SPHERICAL_0040
     * @tc.desc    Create TextInput component with sphericalEffect set to 0.5
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES_IMAGEEFFECT_SPHERICAL_0040', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_ATTRIBUTES_IMAGEEFFECT_SPHERICAL_0040';
      let pageName = 'UIAttributesImageEffectSpherical0040';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIAttributesImageEffectSpherical/' + pageName);
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES_IMAGEEFFECT_SPHERICAL_0050
     * @tc.name    SUB_ACE_UI_ATTRIBUTES_IMAGEEFFECT_SPHERICAL_0050
     * @tc.desc    Create TextInput component with sphericalEffect set to 1
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES_IMAGEEFFECT_SPHERICAL_0050', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_ATTRIBUTES_IMAGEEFFECT_SPHERICAL_0050';
      let pageName = 'UIAttributesImageEffectSpherical0050';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIAttributesImageEffectSpherical/' + pageName);
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES_IMAGEEFFECT_SPHERICAL_0060
     * @tc.name    SUB_ACE_UI_ATTRIBUTES_IMAGEEFFECT_SPHERICAL_0060
     * @tc.desc    Create TextInput component with sphericalEffect set to 2
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES_IMAGEEFFECT_SPHERICAL_0060', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_ATTRIBUTES_IMAGEEFFECT_SPHERICAL_0060';
      let pageName = 'UIAttributesImageEffectSpherical0060';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIAttributesImageEffectSpherical/' + pageName);
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES_IMAGEEFFECT_SPHERICAL_0070
     * @tc.name    SUB_ACE_UI_ATTRIBUTES_IMAGEEFFECT_SPHERICAL_0070
     * @tc.desc    Create TextInput component with sphericalEffect set to undefined
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES_IMAGEEFFECT_SPHERICAL_0070', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_ATTRIBUTES_IMAGEEFFECT_SPHERICAL_0070';
      let pageName = 'UIAttributesImageEffectSpherical0070';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIAttributesImageEffectSpherical/' + pageName);
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES_IMAGEEFFECT_SPHERICAL_0080
     * @tc.name    SUB_ACE_UI_ATTRIBUTES_IMAGEEFFECT_SPHERICAL_0080
     * @tc.desc    Create Image component with sphericalEffect set to 1
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES_IMAGEEFFECT_SPHERICAL_0080', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_ATTRIBUTES_IMAGEEFFECT_SPHERICAL_0080';
      let pageName = 'UIAttributesImageEffectSpherical0080';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIAttributesImageEffectSpherical/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(500, 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES_IMAGEEFFECT_SPHERICAL_0090
     * @tc.name    SUB_ACE_UI_ATTRIBUTES_IMAGEEFFECT_SPHERICAL_0090
     * @tc.desc    Create Image component with syncLoad true and sphericalEffect set to 1
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES_IMAGEEFFECT_SPHERICAL_0090', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_ATTRIBUTES_IMAGEEFFECT_SPHERICAL_0090';
      let pageName = 'UIAttributesImageEffectSpherical0090';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIAttributesImageEffectSpherical/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(500, 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES_IMAGEEFFECT_SPHERICAL_0100
     * @tc.name    SUB_ACE_UI_ATTRIBUTES_IMAGEEFFECT_SPHERICAL_0100
     * @tc.desc    Create Column component with backgroundImage and sphericalEffect set to 1
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES_IMAGEEFFECT_SPHERICAL_0100', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_ATTRIBUTES_IMAGEEFFECT_SPHERICAL_0100';
      let pageName = 'UIAttributesImageEffectSpherical0100';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIAttributesImageEffectSpherical/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      await driver.waitForIdle(500, 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES_IMAGEEFFECT_SPHERICAL_0110
     * @tc.name    SUB_ACE_UI_ATTRIBUTES_IMAGEEFFECT_SPHERICAL_0110
     * @tc.desc    Create Column component with shadow and sphericalEffect set to 1
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES_IMAGEEFFECT_SPHERICAL_0110', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_ATTRIBUTES_IMAGEEFFECT_SPHERICAL_0110';
      let pageName = 'UIAttributesImageEffectSpherical0110';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIAttributesImageEffectSpherical/' + pageName);
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