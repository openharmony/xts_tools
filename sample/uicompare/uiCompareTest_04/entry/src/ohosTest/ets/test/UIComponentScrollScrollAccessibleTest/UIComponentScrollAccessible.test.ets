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

export default function UIComponentScrollScrollAccessible() {
  describe('UIComponentScrollScrollAccessible', () => {
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
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0290
     * @tc.name    Scroll: Use the scroll controller to scroll and obtain the scroll offset
     * @tc.desc    Component 3 groups
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0290', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0290';
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0290 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollScrollAccessible/UIComponentScrollScrollAccessible001");
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let button1: Component = await driver.findComponent(ON.id('scroll'));
      await button1.click();
      await Utils.sleep(1000);
      let button2: Component = await driver.findComponent(ON.id('getScrollOffSet'));
      await button2.click();
      await Utils.sleep(1000);
      windowSnap.snapShot('UIComponentScrollScrollAccessible0290');
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0290 finish.`);
      done();
    });
  })
}
