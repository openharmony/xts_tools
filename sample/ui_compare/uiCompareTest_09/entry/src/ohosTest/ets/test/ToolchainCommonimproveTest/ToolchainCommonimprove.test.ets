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

export default function ToolchainCommonimproveTest() {
  describe('ToolchainCommonimproveTest', () => {
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

    it('SUB_ACE_TOOLCHAIN_COMMONIMPROVE_0030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_TOOLCHAIN_COMMONIMPROVE_0030 start.`);
      Settings.createWindow('testability/pages/ToolchainCommonimprove/ToolchainCommonimprove0030');
      let driver: Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_TOOLCHAIN_COMMONIMPROVE_0030 finish.`);
      done();
    });

    it('SUB_ACE_TOOLCHAIN_COMMONIMPROVE_0040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_TOOLCHAIN_COMMONIMPROVE_0040 start.`);
      Settings.createWindow('testability/pages/ToolchainCommonimprove/ToolchainCommonimprove0040');
      let driver: Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_TOOLCHAIN_COMMONIMPROVE_0040 finish.`);
      done();
    });

    it('SUB_ACE_TOOLCHAIN_COMMONIMPROVE_0050', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_TOOLCHAIN_COMMONIMPROVE_0050 start.`);
      Settings.createWindow('testability/pages/ToolchainCommonimprove/ToolchainCommonimprove0050');
      let driver: Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_TOOLCHAIN_COMMONIMPROVE_0050 finish.`);
      done();
    });

  });
}
