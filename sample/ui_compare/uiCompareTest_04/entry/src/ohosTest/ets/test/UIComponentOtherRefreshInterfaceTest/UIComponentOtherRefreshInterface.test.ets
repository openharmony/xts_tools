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

export default function UIComponentOtherRefreshInterface() {
  describe('UIComponentOtherRefreshInterface', () => {
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
     * @tc.number  SUB_ACE_UI_COMPONENT_OTHER_REFRESH_INTERFACE_0050
     * @tc.name    Set RefreshStatues enumeration value: RefreshStatues.Refresh
     * @tc.desc    Component 3 groups
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_OTHER_REFRESH_INTERFACE_0050', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_OTHER_REFRESH_INTERFACE_0050 start.`);
      Settings.createWindow("testability/pages/UIComponentOtherRefreshInterface/UIComponentOtherRefreshInterface001");
      let driver:Driver = Driver.create();
      let refresh: Component = await driver.waitForComponent(ON.type('Refresh'), 1000);
      let point = await refresh.getBoundsCenter();
      await driver.waitForIdle(500, 1000);
      await driver.mouseScroll({x: point.x, y: point.y}, false, 10);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_OTHER_REFRESH_INTERFACE_0050 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_OTHER_REFRESH_INTERFACE_0240
     * @tc.name    Set the refresh dynamic component to False
     * @tc.desc    Component 3 groups
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_OTHER_REFRESH_INTERFACE_0240', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_OTHER_REFRESH_INTERFACE_0240 start.`);
      Settings.createWindow("testability/pages/UIComponentOtherRefreshInterface/UIComponentOtherRefreshInterface002");
      let driver:Driver = Driver.create();
      let refresh: Component = await driver.waitForComponent(ON.type('Refresh'), 1000);
      let point = await refresh.getBoundsCenter();
      await driver.waitForIdle(500, 1000);
      await driver.mouseScroll({x: point.x, y: point.y}, false, 10);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_OTHER_REFRESH_INTERFACE_0240 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_OTHER_REFRESH_INTERFACE_0250
     * @tc.name    Set the refresh dynamic component to true
     * @tc.desc    Component 3 groups
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_OTHER_REFRESH_INTERFACE_0250', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_OTHER_REFRESH_INTERFACE_0250 start.`);
      Settings.createWindow("testability/pages/UIComponentOtherRefreshInterface/UIComponentOtherRefreshInterface003");
      let driver:Driver = Driver.create();
      let refresh: Component = await driver.waitForComponent(ON.type('Refresh'), 1000);
      let point = await refresh.getBoundsCenter();
      await driver.waitForIdle(500, 1000);
      await driver.mouseScroll({x: point.x, y: point.y}, false, 10);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_OTHER_REFRESH_INTERFACE_0250 finish.`);
      done();
    });
  })
}
