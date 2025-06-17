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

export default function UIComponentScrollPullDown() {
  describe('UIComponentScrollPullDown', () => {
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
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_PULLDOWN_0010
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_PULLDOWN_0010
     * @tc.desc    List top pull-to-follow effect
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_PULLDOWN_0010', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SCROLL_PULLDOWN_0010';
      let pageName = 'UIComponentScrollPullDown0010';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentScrollPullDown/' + pageName);
      let driver: Driver = Driver.create();
      let switchButton: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let scrollComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let scrollCenter = await scrollComponent.getBoundsCenter();
      await driver.swipe(scrollCenter.x, scrollCenter.y + 400, scrollCenter.x, scrollCenter.y - 400, 3000);
      await driver.waitForIdle(500, 2000)
      await windowSnap.snapShot();
      await switchButton.click();
      await scrollComponent.scrollToTop(20000);
      await driver.waitForIdle(500, 500);
      await driver.swipe(scrollCenter.x, scrollCenter.y + 400, scrollCenter.x, scrollCenter.y - 400, 3000);
      await driver.waitForIdle(500, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_PULLDOWN_0020
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_PULLDOWN_0020
     * @tc.desc    List bottom pull-to-follow effect
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_PULLDOWN_0020', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SCROLL_PULLDOWN_0020';
      let pageName = 'UIComponentScrollPullDown0020';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentScrollPullDown/' + pageName);
      let driver: Driver = Driver.create();
      let switchButton: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let scrollComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let scrollCenter = await scrollComponent.getBoundsCenter();
      await scrollComponent.scrollToBottom(20000);
      await driver.waitForIdle(500, 500);
      await driver.swipe(scrollCenter.x, scrollCenter.y - 400, scrollCenter.x, scrollCenter.y + 400, 3000);
      await driver.waitForIdle(500, 2000)
      await windowSnap.snapShot();
      await switchButton.click();
      await scrollComponent.scrollToBottom(20000);
      await driver.waitForIdle(500, 500);
      await driver.swipe(scrollCenter.x, scrollCenter.y - 400, scrollCenter.x, scrollCenter.y + 400, 3000);
      await driver.waitForIdle(500, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_PULLDOWN_0030
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_PULLDOWN_0030
     * @tc.desc    List top pull-to-follow effect
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_PULLDOWN_0030', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SCROLL_PULLDOWN_0030';
      let pageName = 'UIComponentScrollPullDown0030';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentScrollPullDown/' + pageName);
      let driver: Driver = Driver.create();
      let switchButton: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let scrollComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let scrollCenter = await scrollComponent.getBoundsCenter();
      await driver.swipe(scrollCenter.x, scrollCenter.y + 400, scrollCenter.x, scrollCenter.y - 400, 3000);
      await driver.waitForIdle(500, 2000)
      await windowSnap.snapShot(pageName);
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_PULLDOWN_0090
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_PULLDOWN_0090
     * @tc.desc    Scroll bottom pull-to-follow effect
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_PULLDOWN_0090', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SCROLL_PULLDOWN_0090';
      let pageName = 'UIComponentScrollPullDown0090';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentScrollPullDown/' + pageName);
      let driver: Driver = Driver.create();
      let switchButton: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let scrollComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let scrollCenter = await scrollComponent.getBoundsCenter();
      await scrollComponent.scrollToBottom(20000);
      await driver.waitForIdle(500, 500);
      await driver.swipe(scrollCenter.x, scrollCenter.y - 400, scrollCenter.x, scrollCenter.y + 400, 3000);
      await driver.waitForIdle(500, 2000)
      await windowSnap.snapShot();
      await switchButton.click();
      await scrollComponent.scrollToBottom(20000);
      await driver.waitForIdle(500, 500);
      await driver.swipe(scrollCenter.x, scrollCenter.y - 400, scrollCenter.x, scrollCenter.y + 400, 3000);
      await driver.waitForIdle(500, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_PULLDOWN_0100
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_PULLDOWN_0100
     * @tc.desc    Scroll top pull-to-follow effect
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_PULLDOWN_0100', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SCROLL_PULLDOWN_0100';
      let pageName = 'UIComponentScrollPullDown0100';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentScrollPullDown/' + pageName);
      let driver: Driver = Driver.create();
      let switchButton: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let scrollComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let scrollCenter = await scrollComponent.getBoundsCenter();
      await driver.swipe(scrollCenter.x, scrollCenter.y + 400, scrollCenter.x, scrollCenter.y - 400, 3000);
      await driver.waitForIdle(500, 2000)
      await windowSnap.snapShot(pageName);
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_PULLDOWN_0080
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_PULLDOWN_0080
     * @tc.desc    Scroll top pull-to-follow effect
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_PULLDOWN_0080', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SCROLL_PULLDOWN_0080';
      let pageName = 'UIComponentScrollPullDown0080';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentScrollPullDown/' + pageName);
      let driver: Driver = Driver.create();
      let switchButton: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let scrollComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let scrollCenter = await scrollComponent.getBoundsCenter();
      await driver.swipe(scrollCenter.x, scrollCenter.y + 400, scrollCenter.x, scrollCenter.y - 400, 3000);
      await driver.waitForIdle(500, 2000)
      await windowSnap.snapShot();
      await switchButton.click();
      await scrollComponent.scrollToTop(20000);
      await driver.waitForIdle(500, 500);
      await driver.swipe(scrollCenter.x, scrollCenter.y + 400, scrollCenter.x, scrollCenter.y - 400, 3000);
      await driver.waitForIdle(500, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_PULLDOWN_0150
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_PULLDOWN_0150
     * @tc.desc    Grid top pull-to-follow effect
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_PULLDOWN_0150', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SCROLL_PULLDOWN_0150';
      let pageName = 'UIComponentScrollPullDown0150';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentScrollPullDown/' + pageName);
      let driver: Driver = Driver.create();
      let switchButton: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let scrollComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let scrollCenter = await scrollComponent.getBoundsCenter();
      await driver.swipe(scrollCenter.x, scrollCenter.y + 400, scrollCenter.x, scrollCenter.y - 400, 3000);
      await driver.waitForIdle(500, 2000)
      await windowSnap.snapShot();
      await switchButton.click();
      await scrollComponent.scrollToTop(20000);
      await driver.waitForIdle(500, 500);
      await driver.swipe(scrollCenter.x, scrollCenter.y + 400, scrollCenter.x, scrollCenter.y - 400, 3000);
      await driver.waitForIdle(500, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_PULLDOWN_0160
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_PULLDOWN_0160
     * @tc.desc    Grid bottom pull-to-follow effect
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_PULLDOWN_0160', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SCROLL_PULLDOWN_0160';
      let pageName = 'UIComponentScrollPullDown0160';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentScrollPullDown/' + pageName);
      let driver: Driver = Driver.create();
      let switchButton: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let scrollComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let scrollCenter = await scrollComponent.getBoundsCenter();
      await scrollComponent.scrollToBottom(20000);
      await driver.waitForIdle(500, 500);
      await driver.swipe(scrollCenter.x, scrollCenter.y - 400, scrollCenter.x, scrollCenter.y + 400, 3000);
      await driver.waitForIdle(500, 2000)
      await windowSnap.snapShot();
      await switchButton.click();
      await scrollComponent.scrollToBottom(20000);
      await driver.waitForIdle(500, 500);
      await driver.swipe(scrollCenter.x, scrollCenter.y - 400, scrollCenter.x, scrollCenter.y + 400, 3000);
      await driver.waitForIdle(500, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_PULLDOWN_0170
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_PULLDOWN_0170
     * @tc.desc    Grid top pull-to-follow effect
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_PULLDOWN_0170', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SCROLL_PULLDOWN_0170';
      let pageName = 'UIComponentScrollPullDown0170';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentScrollPullDown/' + pageName);
      let driver: Driver = Driver.create();
      let switchButton: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let scrollComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let scrollCenter = await scrollComponent.getBoundsCenter();
      await driver.swipe(scrollCenter.x, scrollCenter.y + 400, scrollCenter.x, scrollCenter.y - 400, 3000);
      await driver.waitForIdle(500, 2000)
      await windowSnap.snapShot(pageName);
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_PULLDOWN_0230
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_PULLDOWN_0230
     * @tc.desc    WaterFlow top pull-to-follow effect
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_PULLDOWN_0230', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SCROLL_PULLDOWN_0230';
      let pageName = 'UIComponentScrollPullDown0230';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentScrollPullDown/' + pageName);
      let driver: Driver = Driver.create();
      let switchButton: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let scrollComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let scrollCenter = await scrollComponent.getBoundsCenter();
      await driver.swipe(scrollCenter.x, scrollCenter.y + 400, scrollCenter.x, scrollCenter.y - 400, 3000);
      await driver.waitForIdle(500, 2000)
      await windowSnap.snapShot();
      await switchButton.click();
      await scrollComponent.scrollToTop(20000);
      await driver.waitForIdle(500, 500);
      await driver.swipe(scrollCenter.x, scrollCenter.y + 400, scrollCenter.x, scrollCenter.y - 400, 3000);
      await driver.waitForIdle(500, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_PULLDOWN_0240
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_PULLDOWN_0240
     * @tc.desc    WaterFlow bottom pull-to-follow effect
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_PULLDOWN_0240', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SCROLL_PULLDOWN_0240';
      let pageName = 'UIComponentScrollPullDown0240';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentScrollPullDown/' + pageName);
      let driver: Driver = Driver.create();
      let switchButton: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let scrollComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let scrollCenter = await scrollComponent.getBoundsCenter();
      await scrollComponent.scrollToBottom(20000);
      await driver.waitForIdle(500, 500);
      await driver.swipe(scrollCenter.x, scrollCenter.y - 400, scrollCenter.x, scrollCenter.y + 400, 3000);
      await driver.waitForIdle(500, 2000)
      await windowSnap.snapShot();
      await switchButton.click();
      await scrollComponent.scrollToBottom(20000);
      await driver.waitForIdle(500, 500);
      await driver.swipe(scrollCenter.x, scrollCenter.y - 400, scrollCenter.x, scrollCenter.y + 400, 3000);
      await driver.waitForIdle(500, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_PULLDOWN_0250
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_PULLDOWN_0250
     * @tc.desc    WaterFlow top pull-to-follow effect
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_PULLDOWN_0250', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SCROLL_PULLDOWN_0250';
      let pageName = 'UIComponentScrollPullDown0250';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentScrollPullDown/' + pageName);
      let driver: Driver = Driver.create();
      let switchButton: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let scrollComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let scrollCenter = await scrollComponent.getBoundsCenter();
      await driver.swipe(scrollCenter.x, scrollCenter.y + 400, scrollCenter.x, scrollCenter.y - 400, 3000);
      await driver.waitForIdle(500, 2000)
      await windowSnap.snapShot(pageName);
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

  })
}