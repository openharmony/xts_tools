/*
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
import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect, Level } from '@ohos/hypium'
import Settings from '../model/Settings'
import windowSnap from '../model/snapShot'
import Logger from '../model/Logger'
import Utils from '../model/Utils'
import { Driver, ON, Component } from '@ohos.UiTest'

export default function StatusManagerV2LazyForEachBetterTest() {
  describe('StatusManagerV2LazyForEachBetterTest', () => {
    afterEach(async (done: Function) => {
      if (Settings.windowClass == undefined) {
        return;
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
     * @tc.number  SUB_ACE_STATUSMANAGERV2_LAZYFOREACH_BETTER_0010
     * @tc.name    SUB_ACE_STATUSMANAGERV2_LAZYFOREACH_BETTER_0010
     * @tc.desc    Ecological Group 1
     * @tc.level   0
     */
    it('SUB_ACE_STATUSMANAGERV2_LAZYFOREACH_BETTER_0010', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_STATUSMANAGERV2_LAZYFOREACH_BETTER_0010 start.`);
      Settings.createWindow("testability/pages/StatusManagerV2LazyForEachBetter/StatusManagerV2LazyForEachBetter001");
      let driver:Driver = Driver.create();
      let list: Component = await driver.waitForComponent(ON.type('List'), 1000);
      let point = await list.getBoundsCenter();
      await driver.mouseScroll(point, true, 20);
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      let button: Component = await driver.waitForComponent(ON.id('reusable'), 1000);
      await button.click();
      let list1: Component = await driver.waitForComponent(ON.type('List'), 1000);
      let point1 = await list1.getBoundsCenter();
      await driver.mouseScroll(point1, true, 20);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_STATUSMANAGERV2_LAZYFOREACH_BETTER_0010 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_STATUSMANAGERV2_LAZYFOREACH_BETTER_0030
     * @tc.name    SUB_ACE_STATUSMANAGERV2_LAZYFOREACH_BETTER_0030
     * @tc.desc    Ecological Group 1
     * @tc.level   0
     */
    it('SUB_ACE_STATUSMANAGERV2_LAZYFOREACH_BETTER_0030', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_STATUSMANAGERV2_LAZYFOREACH_BETTER_0030 start.`);
      Settings.createWindow("testability/pages/StatusManagerV2LazyForEachBetter/StatusManagerV2LazyForEachBetter003");
      let driver:Driver = Driver.create();
      let list: Component = await driver.waitForComponent(ON.type('List'), 1000);
      let point = await list.getBoundsCenter();
      await driver.mouseScroll(point, true, 20);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      let button: Component = await driver.waitForComponent(ON.id('reusable'), 1000);
      await button.click();
      let list1: Component = await driver.waitForComponent(ON.type('List'), 1000);
      let point1 = await list1.getBoundsCenter();
      await driver.mouseScroll(point1, true, 50);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_STATUSMANAGERV2_LAZYFOREACH_BETTER_0030 finish.`);
      done();
    });
  })
}
