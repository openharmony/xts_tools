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

export default function UIComponentScrollScrollAlwaysEnable() {
  describe('UIComponentScrollScrollAlwaysEnable', () => {
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
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0010
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0010
     * @tc.desc    List dynamically switches listDirection and portrait/landscape orientation, edgeEffect set to Spring
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0010', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0010';
      let pageName = "UIComponentScrollScrollAlwaysEnable0010";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentScrollScrollAlwaysEnable/' + pageName);
      let driver: Driver = Driver.create();
      let button1: Component = await driver.waitForComponent(ON.id(pageName + '_01_1'), 1000);
      let button2: Component = await driver.waitForComponent(ON.id(pageName + '_01_2'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await button1.click();
      await driver.waitForIdle(1000, 2000);
      await button2.click();
      await Utils.sleep(2000);
      await button1.click();
      await driver.waitForIdle(1000, 2000);
      await button2.click();
      await Utils.sleep(2000);
      await targetComponent.scrollToBottom(10000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0020
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0020
     * @tc.desc    List dynamically switches listDirection and portrait/landscape orientation, edgeEffect set to Fade
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0020', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0020';
      let pageName = "UIComponentScrollScrollAlwaysEnable0020";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentScrollScrollAlwaysEnable/' + pageName);
      let driver: Driver = Driver.create();
      let button1: Component = await driver.waitForComponent(ON.id(pageName + '_01_1'), 1000);
      let button2: Component = await driver.waitForComponent(ON.id(pageName + '_01_2'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await button1.click();
      await driver.waitForIdle(1000, 2000);
      await button2.click();
      await Utils.sleep(2000);
      await button1.click();
      await driver.waitForIdle(1000, 2000);
      await button2.click();
      await Utils.sleep(2000);
      await targetComponent.scrollToBottom(10000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0030
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0030
     * @tc.desc    List dynamically switches listDirection and portrait/landscape orientation, edgeEffect set to None
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0030', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0030';
      let pageName = "UIComponentScrollScrollAlwaysEnable0030";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentScrollScrollAlwaysEnable/' + pageName);
      let driver: Driver = Driver.create();
      let button1: Component = await driver.waitForComponent(ON.id(pageName + '_01_1'), 1000);
      let button2: Component = await driver.waitForComponent(ON.id(pageName + '_01_2'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await button1.click();
      await driver.waitForIdle(1000, 2000);
      await button2.click();
      await Utils.sleep(2000);
      await button1.click();
      await driver.waitForIdle(1000, 2000);
      await button2.click();
      await Utils.sleep(2000);
      await targetComponent.scrollToBottom(10000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0040
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0040
     * @tc.desc    List dynamically switches listDirection and portrait/landscape orientation, without setting edgeEffect
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0040', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0040';
      let pageName = "UIComponentScrollScrollAlwaysEnable0040";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentScrollScrollAlwaysEnable/' + pageName);
      let driver: Driver = Driver.create();
      let button1: Component = await driver.waitForComponent(ON.id(pageName + '_01_1'), 1000);
      let button2: Component = await driver.waitForComponent(ON.id(pageName + '_01_2'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await button1.click();
      await driver.waitForIdle(1000, 2000);
      await button2.click();
      await Utils.sleep(2000);
      await button1.click();
      await driver.waitForIdle(1000, 2000);
      await button2.click();
      await Utils.sleep(2000);
      await targetComponent.scrollToBottom(10000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0050
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0050
     * @tc.desc    List content does not fill one screen, dynamically switches listDirection and portrait/landscape orientation, enableScrollInteraction set to true, alwaysEnable set to true
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0050', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0050';
      let pageName = "UIComponentScrollScrollAlwaysEnable0050";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentScrollScrollAlwaysEnable/' + pageName);
      let driver: Driver = Driver.create();
      let button1: Component = await driver.waitForComponent(ON.id(pageName + '_01_1'), 1000);
      let button2: Component = await driver.waitForComponent(ON.id(pageName + '_01_2'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await button1.click();
      await driver.waitForIdle(1000, 2000);
      await button2.click();
      await Utils.sleep(2000);
      await button1.click();
      await driver.waitForIdle(1000, 2000);
      await button2.click();
      await Utils.sleep(2000);
      await targetComponent.scrollToBottom(10000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0060
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0060
     * @tc.desc    List content does not fill one screen, dynamically switches listDirection and portrait/landscape orientation, enableScrollInteraction set to true, alwaysEnable set to false
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0060', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0060';
      let pageName = "UIComponentScrollScrollAlwaysEnable0060";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentScrollScrollAlwaysEnable/' + pageName);
      let driver: Driver = Driver.create();
      let button1: Component = await driver.waitForComponent(ON.id(pageName + '_01_1'), 1000);
      let button2: Component = await driver.waitForComponent(ON.id(pageName + '_01_2'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await button1.click();
      await driver.waitForIdle(1000, 2000);
      await button2.click();
      await Utils.sleep(2000);
      await button1.click();
      await driver.waitForIdle(1000, 2000);
      await button2.click();
      await Utils.sleep(2000);
      await targetComponent.scrollToBottom(10000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0070
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0070
     * @tc.desc    List content does not fill one screen, dynamically switches listDirection and portrait/landscape orientation, enableScrollInteraction set to true, alwaysEnable set to false, make child components exceed one screen by increasing space
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0070', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0070';
      let pageName = "UIComponentScrollScrollAlwaysEnable0070";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentScrollScrollAlwaysEnable/' + pageName);
      let driver: Driver = Driver.create();
      let button1: Component = await driver.waitForComponent(ON.id(pageName + '_01_1'), 1000);
      let button2: Component = await driver.waitForComponent(ON.id(pageName + '_01_2'), 1000);
      let button3: Component = await driver.waitForComponent(ON.id(pageName + '_01_3'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await button1.click();
      await driver.waitForIdle(1000, 2000);
      await button2.click();
      await Utils.sleep(2000);
      await button1.click();
      await driver.waitForIdle(1000, 2000);
      await button2.click();
      await Utils.sleep(2000);
      await targetComponent.scrollToBottom(10000);
      await driver.waitForIdle(1000, 2000);
      await button3.click();
      await driver.waitForIdle(1000, 2000);
      await targetComponent.scrollToBottom(10000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0080
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0080
     * @tc.desc    List content does not fill one screen, dynamically switches listDirection and portrait/landscape orientation, enableScrollInteraction set to true, alwaysEnable set to false, make child components exceed one screen by increasing the number of child components
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0080', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0080';
      let pageName = "UIComponentScrollScrollAlwaysEnable0080";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentScrollScrollAlwaysEnable/' + pageName);
      let driver: Driver = Driver.create();
      let button1: Component = await driver.waitForComponent(ON.id(pageName + '_01_1'), 1000);
      let button2: Component = await driver.waitForComponent(ON.id(pageName + '_01_2'), 1000);
      let button3: Component = await driver.waitForComponent(ON.id(pageName + '_01_3'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await button1.click();
      await driver.waitForIdle(1000, 2000);
      await button2.click();
      await Utils.sleep(2000);
      await button1.click();
      await driver.waitForIdle(1000, 2000);
      await button2.click();
      await Utils.sleep(2000);
      await targetComponent.scrollToBottom(10000);
      await driver.waitForIdle(1000, 2000);
      await button3.click();
      await driver.waitForIdle(1000, 2000);
      await targetComponent.scrollToBottom(10000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0090
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0090
     * @tc.desc    List content does not fill one screen, dynamically switches listDirection and portrait/landscape orientation, enableScrollInteraction set to true, alwaysEnable set to false, make child components exceed one screen by increasing parent component padding and child component margin
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0090', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0090';
      let pageName = "UIComponentScrollScrollAlwaysEnable0090";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentScrollScrollAlwaysEnable/' + pageName);
      let driver: Driver = Driver.create();
      let button1: Component = await driver.waitForComponent(ON.id(pageName + '_01_1'), 1000);
      let button2: Component = await driver.waitForComponent(ON.id(pageName + '_01_2'), 1000);
      let button3: Component = await driver.waitForComponent(ON.id(pageName + '_01_3'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await button1.click();
      await driver.waitForIdle(1000, 2000);
      await button2.click();
      await Utils.sleep(2000);
      await button1.click();
      await driver.waitForIdle(1000, 2000);
      await button2.click();
      await Utils.sleep(2000);
      await targetComponent.scrollToBottom(10000);
      await driver.waitForIdle(1000, 2000);
      await button3.click();
      await driver.waitForIdle(1000, 2000);
      await targetComponent.scrollToBottom(10000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0100
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0100
     * @tc.desc    List content does not fill one screen, dynamically switches listDirection and portrait/landscape orientation, enableScrollInteraction set to true, without setting alwaysEnable
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0100', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0100';
      let pageName = "UIComponentScrollScrollAlwaysEnable0100";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentScrollScrollAlwaysEnable/' + pageName);
      let driver: Driver = Driver.create();
      let button1: Component = await driver.waitForComponent(ON.id(pageName + '_01_1'), 1000);
      let button2: Component = await driver.waitForComponent(ON.id(pageName + '_01_2'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await button1.click();
      await driver.waitForIdle(1000, 2000);
      await button2.click();
      await Utils.sleep(2000);
      await button1.click();
      await driver.waitForIdle(1000, 2000);
      await button2.click();
      await Utils.sleep(2000);
      await targetComponent.scrollToBottom(10000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0110
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0110
     * @tc.desc    List content does not fill one screen, dynamically switches listDirection and portrait/landscape orientation, enableScrollInteraction set to false, dynamically switch alwaysEnable
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0110', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0110';
      let pageName = "UIComponentScrollScrollAlwaysEnable0110";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentScrollScrollAlwaysEnable/' + pageName);
      let driver: Driver = Driver.create();
      let button1: Component = await driver.waitForComponent(ON.id(pageName + '_01_1'), 1000);
      let button2: Component = await driver.waitForComponent(ON.id(pageName + '_01_2'), 1000);
      let button3: Component = await driver.waitForComponent(ON.id(pageName + '_01_3'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await button1.click();
      await driver.waitForIdle(1000, 2000);
      await button2.click();
      await Utils.sleep(2000);
      await button1.click();
      await driver.waitForIdle(1000, 2000);
      await button2.click();
      await Utils.sleep(2000);
      await targetComponent.scrollToBottom(10000);
      await driver.waitForIdle(1000, 2000);
      await button3.click();
      await driver.waitForIdle(1000, 2000);
      await targetComponent.scrollToBottom(10000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0120
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0120
     * @tc.desc    List content just exceeds one screen, dynamically switches listDirection and portrait/landscape orientation, enableScrollInteraction set to true, alwaysEnable set to false, dynamically modify group sticky-to-top and sticky-to-bottom so that child components do not fill one screen when sticky to top or bottom
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0120', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0120';
      let pageName = "UIComponentScrollScrollAlwaysEnable0120";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentScrollScrollAlwaysEnable/' + pageName);
      let driver: Driver = Driver.create();
      let button1: Component = await driver.waitForComponent(ON.id(pageName + '_01_1'), 1000);
      let button2: Component = await driver.waitForComponent(ON.id(pageName + '_01_2'), 1000);
      let button3: Component = await driver.waitForComponent(ON.id(pageName + '_01_3'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await button1.click();
      await driver.waitForIdle(1000, 2000);
      await button2.click();
      await Utils.sleep(2000);
      await button1.click();
      await driver.waitForIdle(1000, 2000);
      await button2.click();
      await Utils.sleep(2000);
      await targetComponent.scrollToBottom(10000);
      await driver.waitForIdle(1000, 2000);
      await button3.click();
      await driver.waitForIdle(1000, 2000);
      await targetComponent.scrollToBottom(10000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0230
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0230
     * @tc.desc    Scroll dynamically switches portrait/landscape orientation, edgeEffect set to Spring
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0230', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0230';
      let pageName = "UIComponentScrollScrollAlwaysEnable0230";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentScrollScrollAlwaysEnable/' + pageName);
      let driver: Driver = Driver.create();
      let button1: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await button1.click();
      await Utils.sleep(2000);
      await button1.click();
      await driver.waitForIdle(1000, 2000);
      await Utils.sleep(2000);
      await targetComponent.scrollToBottom(10000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0240
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0240
     * @tc.desc    Scroll dynamically switches portrait/landscape orientation, edgeEffect set to Fade
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0240', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0240';
      let pageName = "UIComponentScrollScrollAlwaysEnable0240";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentScrollScrollAlwaysEnable/' + pageName);
      let driver: Driver = Driver.create();
      let button1: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await button1.click();
      await Utils.sleep(2000);
      await button1.click();
      await driver.waitForIdle(1000, 2000);
      await Utils.sleep(2000);
      await targetComponent.scrollToBottom(10000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0250
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0250
     * @tc.desc    Scroll dynamically switches portrait/landscape orientation, edgeEffect set to None
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0250', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0250';
      let pageName = "UIComponentScrollScrollAlwaysEnable0250";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentScrollScrollAlwaysEnable/' + pageName);
      let driver: Driver = Driver.create();
      let button1: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await button1.click();
      await Utils.sleep(2000);
      await button1.click();
      await driver.waitForIdle(1000, 2000);
      await Utils.sleep(2000);
      await targetComponent.scrollToBottom(10000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0260
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0260
     * @tc.desc    Scroll dynamically switches portrait/landscape orientation, without setting edgeEffect
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0260', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0260';
      let pageName = "UIComponentScrollScrollAlwaysEnable0260";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentScrollScrollAlwaysEnable/' + pageName);
      let driver: Driver = Driver.create();
      let button1: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await button1.click();
      await Utils.sleep(2000);
      await button1.click();
      await driver.waitForIdle(1000, 2000);
      await Utils.sleep(2000);
      await targetComponent.scrollToBottom(10000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0270
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0270
     * @tc.desc    Scroll content does not fill one screen, dynamically switches portrait/landscape orientation, enableScrollInteraction set to true, alwaysEnable set to true
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0270', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0270';
      let pageName = "UIComponentScrollScrollAlwaysEnable0270";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentScrollScrollAlwaysEnable/' + pageName);
      let driver: Driver = Driver.create();
      let button1: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await button1.click();
      await Utils.sleep(2000);
      await button1.click();
      await driver.waitForIdle(1000, 2000);
      await Utils.sleep(2000);
      await driver.swipe(center.x, center.y, center.x, bounds.top, 6000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0280
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0280
     * @tc.desc    Scroll content does not fill one screen, dynamically switches portrait/landscape orientation, enableScrollInteraction set to true, alwaysEnable set to false
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0280', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0280';
      let pageName = "UIComponentScrollScrollAlwaysEnable0280";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentScrollScrollAlwaysEnable/' + pageName);
      let driver: Driver = Driver.create();
      let button1: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await button1.click();
      await Utils.sleep(2000);
      await button1.click();
      await driver.waitForIdle(1000, 2000);
      await Utils.sleep(2000);
      await driver.swipe(center.x, center.y, center.x, bounds.top, 6000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0290
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0290
     * @tc.desc    Scroll content does not fill one screen, dynamically switches portrait/landscape orientation, enableScrollInteraction set to true, alwaysEnable set to false, make child components exceed one screen by increasing parent component padding and child component margin
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0290', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0290';
      let pageName = "UIComponentScrollScrollAlwaysEnable0290";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentScrollScrollAlwaysEnable/' + pageName);
      let driver: Driver = Driver.create();
      let button1: Component = await driver.waitForComponent(ON.id(pageName + '_01_1'), 1000);
      let button2: Component = await driver.waitForComponent(ON.id(pageName + '_01_2'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await button1.click();
      await Utils.sleep(2000);
      await button1.click();
      await driver.waitForIdle(1000, 2000);
      await Utils.sleep(2000);
      await button2.click();
      await driver.waitForIdle(1000, 2000);
      await driver.swipe(center.x, center.y, center.x, bounds.top, 6000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0300
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0300
     * @tc.desc    Scroll content does not fill one screen, dynamically switches portrait/landscape orientation, enableScrollInteraction set to true, without setting alwaysEnable
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0300', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0300';
      let pageName = "UIComponentScrollScrollAlwaysEnable0300";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentScrollScrollAlwaysEnable/' + pageName);
      let driver: Driver = Driver.create();
      let button1: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await button1.click();
      await Utils.sleep(2000);
      await button1.click();
      await driver.waitForIdle(1000, 2000);
      await Utils.sleep(2000);
      await driver.swipe(center.x, center.y, center.x, bounds.top, 6000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0310
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0310
     * @tc.desc    Scroll content does not fill one screen, dynamically switches portrait/landscape orientation, enableScrollInteraction set to false, dynamically switch alwaysEnable
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0310', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0310';
      let pageName = "UIComponentScrollScrollAlwaysEnable0310";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentScrollScrollAlwaysEnable/' + pageName);
      let driver: Driver = Driver.create();
      let button1: Component = await driver.waitForComponent(ON.id(pageName + '_01_1'), 1000);
      let button2: Component = await driver.waitForComponent(ON.id(pageName + '_01_2`'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await button1.click();
      await Utils.sleep(2000);
      await button1.click();
      await driver.waitForIdle(1000, 2000);
      await Utils.sleep(2000);
      await driver.swipe(center.x, center.y, center.x, bounds.top, 6000);
      await driver.waitForIdle(1000, 2000);
      await button2.click();
      await driver.waitForIdle(1000, 2000);
      await driver.swipe(center.x, center.y, center.x, bounds.top, 6000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0330
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0330
     * @tc.desc    Grid sets alwaysEnable to false; content does not fill one screen; switch from vertical to horizontal; then it exceeds one screen; after sliding Grid to the bottom, switch from horizontal to vertical
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0330', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0330';
      let pageName = "UIComponentScrollScrollAlwaysEnable0330";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentScrollScrollAlwaysEnable/' + pageName);
      let driver: Driver = Driver.create();
      let button1: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await button1.click();
      await Utils.sleep(2000);
      targetComponent = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      center = await targetComponent.getBoundsCenter();
      bounds = await targetComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await driver.swipe(center.x, center.y, center.x, bounds.top, 6000);
      await driver.waitForIdle(1000, 2000);
      await button1.click();
      await driver.waitForIdle(1000, 2000);
      await Utils.sleep(2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0340
     * @tc.name    SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0340
     * @tc.desc    List, Grid, Scroll page scrolling test
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0340', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SCROLL_SCROLL_ALWAYSENABLE_0340';
      let pageName = "UIComponentScrollScrollAlwaysEnable0340";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentScrollScrollAlwaysEnable/' + pageName);
      let driver: Driver = Driver.create();
      let button1: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let list: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let grid: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let scroll: Component = await driver.waitForComponent(ON.id(pageName + '_04'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_05'), 1000);
      let center = await list.getBoundsCenter();
      let bounds = await list.getBounds();
      await driver.waitForIdle(1000, 2000);
      await driver.swipe(bounds.right - 50, center.y, bounds.left + 50, center.y, 10000);
      await driver.waitForIdle(1000, 2000);
      await grid.scrollToBottom(6000);
      await driver.waitForIdle(1000, 2000);
      await scroll.scrollToBottom(6000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

  })
}
