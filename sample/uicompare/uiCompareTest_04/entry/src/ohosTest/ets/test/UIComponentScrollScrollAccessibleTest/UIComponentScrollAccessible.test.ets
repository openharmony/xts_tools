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

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0310
     * @tc.name    Scroll: Slide the scrollbar to obtain the scrolling offset
     * @tc.desc    Component 3 groups
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0310', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0310';
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0310 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollScrollAccessible/UIComponentScrollScrollAccessible002");
      await Utils.sleep(1000);
      let driver:Driver = Driver.create();
      driver.mouseScroll({x:700, y:300}, true, 2, 2072, 20);
      await Utils.sleep(1000);
      let button: Component = await driver.findComponent(ON.id('getScrollOffSet'));
      await button.click();
      await Utils.sleep(1000);
      windowSnap.snapShot('UIComponentScrollScrollAccessible0310');
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0310 finish.`);
      done();
    });

    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0280
    * @tc.name    Scroll: Use the mouse wheel to scroll and obtain the scrolling offset
    * @tc.desc    Component 3 groups
    * @tc.level   0
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0280', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0280';
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0280 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollScrollAccessible/UIComponentScrollScrollAccessible003");
      await Utils.sleep(1000);
      let driver:Driver = Driver.create();
      driver.mouseScroll({x:300, y:300}, true, 2);
      await Utils.sleep(1000);
      let button: Component = await driver.findComponent(ON.id('getScrollOffSet'));
      await button.click();
      await Utils.sleep(1000);
      windowSnap.snapShot('UIComponentScrollScrollAccessible0280');
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0280 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0300
     * @tc.name    Scroll uses keyboard focus to obtain scrolling offset
     * @tc.desc    Component 3 groups
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0300', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0300';
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0300 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollScrollAccessible/UIComponentScrollScrollAccessible004");
      await Utils.sleep(1000);
      let driver:Driver = Driver.create();
      await driver.triggerKey(2049);
      await Utils.sleep(1000);
      await driver.triggerKey(2049);
      await Utils.sleep(1000);
      let button: Component = await driver.findComponent(ON.id('getScrollOffSet'));
      await button.click();
      await Utils.sleep(1000);
      windowSnap.snapShot('UIComponentScrollScrollAccessible0300');
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0300 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0120
     * @tc.name    Slide the scroll bar on the List to obtain the scroll offset
     * @tc.desc    Component 3 groups
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0120', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0120';
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0120 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollScrollAccessible/UIComponentScrollScrollAccessible005");
      await Utils.sleep(1000);
      let driver:Driver = Driver.create();
      driver.mouseScroll({x:700, y:300}, true, 2, 2072, 20);
      await Utils.sleep(1000);
      windowSnap.snapShot('UIComponentScrollScrollAccessible0120');
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0120 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0050
     * @tc.name    List dynamically switches the number of items and obtains the offset
     * @tc.desc    Component 3 groups
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0050', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0050';
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0050 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollScrollAccessible/UIComponentScrollScrollAccessible006");
      await Utils.sleep(1000);
      let driver:Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('change'));
      await button.click();
      await Utils.sleep(1000);
      windowSnap.snapShot('UIComponentScrollScrollAccessible0050');
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0050 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0110
     * @tc.name    List dynamically switches the number of items and obtains the offset
     * @tc.desc    Component 3 groups
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0110', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0110';
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0110 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollScrollAccessible/UIComponentScrollScrollAccessible007");
      await Utils.sleep(1000);
      let driver:Driver = Driver.create();
      await driver.triggerKey(2049);
      await Utils.sleep(1000);
      await driver.triggerKey(2049);
      await Utils.sleep(1000);
      await driver.triggerKey(2049);
      await Utils.sleep(1000);
      await driver.triggerKey(2049);
      await Utils.sleep(1000);
      windowSnap.snapShot('UIComponentScrollScrollAccessible0110');
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0110 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0020
     * @tc.name    List dynamically switches the width and height of items to obtain the offset
     * @tc.desc    Component 3 groups
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0020', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0020';
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0020 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollScrollAccessible/UIComponentScrollScrollAccessible008");
      await Utils.sleep(1000);
      let driver:Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('change'));
      await button.click();
      await Utils.sleep(1000);
      windowSnap.snapShot('UIComponentScrollScrollAccessible0020');
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0020 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0090
     * @tc.name    List: Use the mouse wheel to scroll and obtain the scrolling offset
     * @tc.desc    Component 3 groups
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0090', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0090';
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0090 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollScrollAccessible/UIComponentScrollScrollAccessible009");
      await Utils.sleep(1000);
      let driver:Driver = Driver.create();
      driver.mouseScroll({x:300, y:300}, true, 2);
      await Utils.sleep(1000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0090');
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0090 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0100
     * @tc.name    List: Use the mouse wheel to scroll and obtain the scrolling offset
     * @tc.desc    Component 3 groups
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0100', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0100';
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0100 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollScrollAccessible/UIComponentScrollScrollAccessible010");
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let button1: Component = await driver.findComponent(ON.id('scroll'));
      await button1.click();
      await Utils.sleep(1000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0100');
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ACCESSIBLE_0100 finish.`);
      done();
    });
  })
}
