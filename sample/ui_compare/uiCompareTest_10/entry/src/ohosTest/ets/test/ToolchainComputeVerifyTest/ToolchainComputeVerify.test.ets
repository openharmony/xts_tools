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

import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect, Level } from '@ohos/hypium'
import Settings from '../model/Settings'
import windowSnap from '../model/snapShot'
import Logger from '../model/Logger'
import Utils from '../model/Utils'
import { Driver, ON, Component } from '@kit.TestKit';

export default function ToolchainComputeVerify() {

  describe('ToolchainComputeVerify', () => {
    afterEach(async (done: Function) => {
      if (Settings.windowClass == undefined) {
        return
      }

      Settings.windowClass.destroyWindow((err) => {
        if (err.code) {
          Logger.error('TEST', `Failed to destroy the window. Cause : ${JSON.stringify(err)}`)
          return;
        }
        Logger.info('TEST', `Succeeded in destroy the window.`);
      })
      await Utils.sleep(1000);
      done()
    })

    /*
     * @tc.number : SUB_ACE_TOOLCHAIN_COMPUTE_VERIFY_0010
     * @tc.name   : SUB_ACE_TOOLCHAIN_COMPUTE_VERIFY_0010
     * @tc.desc   : Use @Computed to decorate the getter method first, then decorate the setter method.
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */

    it('SUB_ACE_TOOLCHAIN_COMPUTE_VERIFY_0010', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_TOOLCHAIN_COMPUTE_VERIFY_0010 start.`);
      
      try {
        Settings.createWindow("testability/pages/ToolchainComputeVerify/ToolchainComputeVerify0010")
        let driver: Driver = Driver.create();
        await driver.waitForIdle(1000, 2000)
        
        Logger.info('TEST', 'Page loaded, taking screenshot');
        windowSnap.snapShot()
        await Utils.sleep(500)
        
        Logger.info('TEST', 'Test completed successfully');
      } catch (error) {
        Logger.error('TEST', `Error during test: ${error}`);
      }
      
      Logger.info('TEST', `SUB_ACE_TOOLCHAIN_COMPUTE_VERIFY_0010 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_TOOLCHAIN_COMPUTE_VERIFY_0020
     * @tc.name   : SUB_ACE_TOOLCHAIN_COMPUTE_VERIFY_0020
     * @tc.desc   : Use @Computed together with two-way binding !!.
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */

    it('SUB_ACE_TOOLCHAIN_COMPUTE_VERIFY_0020', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_TOOLCHAIN_COMPUTE_VERIFY_0020 start.`);
      
      try {
        Settings.createWindow("testability/pages/ToolchainComputeVerify/ToolchainComputeVerify0020")
        let driver: Driver = Driver.create();
        await driver.waitForIdle(1000, 2000)
        
        Logger.info('TEST', 'Page loaded, taking screenshot');
        windowSnap.snapShot()
        await Utils.sleep(500)
        
        Logger.info('TEST', 'Test completed successfully');
      } catch (error) {
        Logger.error('TEST', `Error during test: ${error}`);
      }
      
      Logger.info('TEST', `SUB_ACE_TOOLCHAIN_COMPUTE_VERIFY_0020 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_TOOLCHAIN_COMPUTE_VERIFY_0030
     * @tc.name   : SUB_ACE_TOOLCHAIN_COMPUTE_VERIFY_0030
     * @tc.desc   : Use @Computed to decorate the getter method first, then decorate the setter method, and use it together with two-way binding !!.
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */

    it('SUB_ACE_TOOLCHAIN_COMPUTE_VERIFY_0030', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_TOOLCHAIN_COMPUTE_VERIFY_0030 start.`);
      
      try {
        Settings.createWindow("testability/pages/ToolchainComputeVerify/ToolchainComputeVerify0030")
        let driver: Driver = Driver.create();
        await driver.waitForIdle(1000, 2000)
        
        Logger.info('TEST', 'Page loaded, taking screenshot');
        windowSnap.snapShot()
        await Utils.sleep(500)
        
        Logger.info('TEST', 'Test completed successfully');
      } catch (error) {
        Logger.error('TEST', `Error during test: ${error}`);
      }
      
      Logger.info('TEST', `SUB_ACE_TOOLCHAIN_COMPUTE_VERIFY_0030 finish.`);
      done()
    })

  })
}