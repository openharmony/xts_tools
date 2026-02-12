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

import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect, Level } from '@ohos/hypium';
import { BusinessError, commonEventManager } from '@kit.BasicServicesKit';
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

export default function UIComponentScrollScrollbarInteraction() {
  describe('UIComponentScrollScrollbarInteraction', () => {
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
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_INTERACTION_0410
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_INTERACTION_0410
     * @tc.desc    Bind the scroller controller to control component scrolling, observe scrollbar changes
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_INTERACTION_0410', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_INTERACTION_0410';
      let pageName = "UIComponentScrollScrollbarInteraction0410";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentScrollScrollbarInteraction/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await button.click();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_INTERACTION_0420
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_INTERACTION_0420
     * @tc.desc    Portrait layout component cannot scroll, switch to landscape to be scrollable, observe scrollbar changes
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_INTERACTION_0420', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_INTERACTION_0420';
      let pageName = "UIComponentScrollScrollbarInteraction0420";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentScrollScrollbarInteraction/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot(TAG + '_01');
      await driver.waitForIdle(1000, 2000);
      await button.click();
      await Utils.sleep(2000);
      await windowSnap.snapShot(TAG + '_02');
      await button.click();
      await Utils.sleep(2000);
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_INTERACTION_0440
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_INTERACTION_0440
     * @tc.desc    Scrollable component List binds external scrollbar, slide the component to observe scrollbar changes
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_INTERACTION_0440', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_INTERACTION_0440';
      let pageName = "UIComponentScrollScrollbarInteraction0440";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentScrollScrollbarInteraction/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await targetComponent.scrollToBottom(10000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_INTERACTION_0450
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_INTERACTION_0450
     * @tc.desc    Scrollable component Grid binds external scrollbar, slide the component to observe scrollbar changes
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_INTERACTION_0450', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_INTERACTION_0450';
      let pageName = "UIComponentScrollScrollbarInteraction0450";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentScrollScrollbarInteraction/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await targetComponent.scrollToBottom(10000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_INTERACTION_0460
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_INTERACTION_0460
     * @tc.desc    Scrollable component waterflow binds external scrollbar, slide the component to observe scrollbar changes
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_INTERACTION_0460', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_INTERACTION_0460';
      let pageName = "UIComponentScrollScrollbarInteraction0460";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentScrollScrollbarInteraction/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await targetComponent.scrollToBottom(10000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

  })
}
