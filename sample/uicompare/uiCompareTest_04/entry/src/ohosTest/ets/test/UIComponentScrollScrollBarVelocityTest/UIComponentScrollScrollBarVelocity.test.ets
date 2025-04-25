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

export default function UIComponentScrollScrollBarVelocity() {
  describe('UIComponentScrollScrollBarVelocity', () => {
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
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0310
     * @tc.name    In the scroll container, the velocity parameter of calling fling is 1000
     * @tc.desc    Component 3 groups
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0310', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0310 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollScrollBarVelocity/UIComponentScrollScrollBarVelocity001");
      await Utils.sleep(1000);
      let driver:Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('scroll'));
      await button.click();
      await Utils.sleep(1000);
      windowSnap.snapShot('UIComponentScrollScrollBarVelocity0310');
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0310 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0320
     * @tc.name    In the scroll container, the velocity parameter of calling fling is -1000
     * @tc.desc    Component 3 groups
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0320', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0320 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollScrollBarVelocity/UIComponentScrollScrollBarVelocity002");
      await Utils.sleep(1000);
      let driver:Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('scroll'));
      await button.click();
      await Utils.sleep(1000);
      windowSnap.snapShot('UIComponentScrollScrollBarVelocity0320');
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0320 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0330
     * @tc.name    In the scroll container, the velocity parameter of calling fling is 1000.5
     * @tc.desc    Component 3 groups
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0330', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0330 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollScrollBarVelocity/UIComponentScrollScrollBarVelocity003");
      await Utils.sleep(1000);
      let driver:Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('scroll'));
      await button.click();
      await Utils.sleep(1000);
      windowSnap.snapShot('UIComponentScrollScrollBarVelocity0330');
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0330 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0360
     * @tc.name    In the scroll container, the velocity parameter of calling fling is 0
     * @tc.desc    Component 3 groups
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0360', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0360 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollScrollBarVelocity/UIComponentScrollScrollBarVelocity006");
      await Utils.sleep(1000);
      let driver:Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('scroll'));
      await button.click();
      await Utils.sleep(1000);
      windowSnap.snapShot('UIComponentScrollScrollBarVelocity0360');
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0360 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0370
     * @tc.name    In the scroll container, call fling to set limit scrolling
     * @tc.desc    Component 3 groups
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0370', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0370 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollScrollBarVelocity/UIComponentScrollScrollBarVelocity007");
      await Utils.sleep(1000);
      let driver:Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('scroll'));
      await button.click();
      await Utils.sleep(1000);
      windowSnap.snapShot('UIComponentScrollScrollBarVelocity0370');
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0370 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0380
     * @tc.name    In the scroll container, call fling to set limit scrolling
     * @tc.desc    Component 3 groups
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0380', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0380 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollScrollBarVelocity/UIComponentScrollScrollBarVelocity008");
      await Utils.sleep(1000);
      let driver:Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('scroll'));
      await button.click();
      await Utils.sleep(1000);
      windowSnap.snapShot('UIComponentScrollScrollBarVelocity0380');
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0380 finish.`);
      done();
    });
  })
}
