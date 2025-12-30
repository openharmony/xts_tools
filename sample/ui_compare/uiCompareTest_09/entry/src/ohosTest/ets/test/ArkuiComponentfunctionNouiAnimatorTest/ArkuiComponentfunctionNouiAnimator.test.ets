/**
 * Copyright (c) 2025 Shenzhen Kaihong Digital Industry Development Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import { describe, it, afterEach } from '@ohos/hypium';
import Settings from '../model/Settings';
import windowSnap from '../model/snapShot';
import Logger from '../model/Logger';
import Utils from '../model/Utils';
import { Driver, ON, Component } from '@kit.TestKit';

export default function ArkuiComponentfunctionNouiAnimatorTest() {
  describe('ArkuiComponentfunctionNouiAnimatorTest', () => {
    afterEach(async (done: Function) => {
      if (Settings.windowClass == undefined) {
        return;
      }
      Settings.windowClass.destroyWindow((err) => {
        if (err.code) {
          Logger.error('TEST', `Failed to destroy the window. Cause : ${JSON.stringify(err)}`);
          return;
        }
        Logger.info('TEST', `Succeeded in destroy the window.`);
      });
      await Utils.sleep(1000);
      done();
    });

    it('ARKUI_COMPONENTFUNCTION_NOUI_ANIMATOR_BEGIN_010', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_NOUI_ANIMATOR_BEGIN_010 start.`);
      Settings.createWindow('testability/pages/ArkuiComponentfunctionNouiAnimatorBegin/ArkuiComponentfunctionNouiAnimatorBegin010');
      let driver: Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_NOUI_ANIMATOR_BEGIN_010 finish.`);
      done();
    });

    it('ARKUI_COMPONENTFUNCTION_NOUI_ANIMATOR_DELAY_010', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_NOUI_ANIMATOR_DELAY_010 start.`);
      Settings.createWindow('testability/pages/ArkuiComponentfunctionNouiAnimatorDelay/ArkuiComponentfunctionNouiAnimatorDelay010');
      let driver: Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_NOUI_ANIMATOR_DELAY_010 finish.`);
      done();
    });

    it('ARKUI_COMPONENTFUNCTION_NOUI_ANIMATOR_DIRECTION_010', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_NOUI_ANIMATOR_DIRECTION_010 start.`);
      Settings.createWindow('testability/pages/ArkuiComponentfunctionNouiAnimatorDirection/ArkuiComponentfunctionNouiAnimatorDirection010');
      let driver: Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_NOUI_ANIMATOR_DIRECTION_010 finish.`);
      done();
    });

    it('ARKUI_COMPONENTFUNCTION_NOUI_ANIMATOR_DURATION_010', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_NOUI_ANIMATOR_DURATION_010 start.`);
      Settings.createWindow('testability/pages/ArkuiComponentfunctionNouiAnimatorDuration/ArkuiComponentfunctionNouiAnimatorDuration010');
      let driver: Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_NOUI_ANIMATOR_DURATION_010 finish.`);
      done();
    });

    it('ARKUI_COMPONENTFUNCTION_NOUI_ANIMATOR_EASE_010', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_NOUI_ANIMATOR_EASE_010 start.`);
      Settings.createWindow('testability/pages/ArkuiComponentfunctionNouiAnimatorEase/ArkuiComponentfunctionNouiAnimatorEase010');
      let driver: Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_NOUI_ANIMATOR_EASE_010 finish.`);
      done();
    });

    it('ARKUI_COMPONENTFUNCTION_NOUI_ANIMATOR_EASE_020', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_NOUI_ANIMATOR_EASE_020 start.`);
      Settings.createWindow('testability/pages/ArkuiComponentfunctionNouiAnimatorEase/ArkuiComponentfunctionNouiAnimatorEase020');
      let driver: Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_NOUI_ANIMATOR_EASE_020 finish.`);
      done();
    });

    it('ARKUI_COMPONENTFUNCTION_NOUI_ANIMATOR_END_010', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_NOUI_ANIMATOR_END_010 start.`);
      Settings.createWindow('testability/pages/ArkuiComponentfunctionNouiAnimatorEnd/ArkuiComponentfunctionNouiAnimatorEnd010');
      let driver: Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_NOUI_ANIMATOR_END_010 finish.`);
      done();
    });

    it('ARKUI_COMPONENTFUNCTION_NOUI_ANIMATOR_FILL_010', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_NOUI_ANIMATOR_FILL_010 start.`);
      Settings.createWindow('testability/pages/ArkuiComponentfunctionNouiAnimatorFill/ArkuiComponentfunctionNouiAnimatorFill010');
      let driver: Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_NOUI_ANIMATOR_FILL_010 finish.`);
      done();
    });

    it('ARKUI_COMPONENTFUNCTION_NOUI_ANIMATOR_ITERATIONS_010', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_NOUI_ANIMATOR_ITERATIONS_010 start.`);
      Settings.createWindow('testability/pages/ArkuiComponentfunctionNouiAnimatorIterations/ArkuiComponentfunctionNouiAnimatorIterations010');
      let driver: Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_NOUI_ANIMATOR_ITERATIONS_010 finish.`);
      done();
    });

  });
}
