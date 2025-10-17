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
import { Driver, ON ,Component, UiWindow, PointerMatrix } from '@kit.TestKit';
import { uiAppearance } from '@kit.ArkUI';
import Settings from '../model/Settings';
import windowSnap from '../model/snapShot';
import Logger from '../model/Logger';
import Utils from '../model/Utils';


let TAG = 'RunTimeTest';

function sleep(ms: number) {
  return new Promise<string>(resolve => setTimeout(resolve, ms));
}

export default function UIComponentListAndGridWaterFlowFadingEdge() {
  describe('UIComponentListAndGridWaterFlowFadingEdge', () => {
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
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0030
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0030
     * @tc.desc    Test for waterflow component with fadingEdge property as undefined
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0030', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0030';
      let pageName = "UIComponentListAndGridWaterFlowFadingEdge0030";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridWaterFlowFadingEdge/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let waterFlow: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let center = await waterFlow.getBoundsCenter();
      let bounds = await waterFlow.getBounds();
      await driver.waitForIdle(1000, 2000);
      await waterFlow.scrollToBottom(4000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0040
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0040
     * @tc.desc    Test for waterflow component with fadingEdge property as null
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0040', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0040';
      let pageName = "UIComponentListAndGridWaterFlowFadingEdge0040";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridWaterFlowFadingEdge/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let waterFlow: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let center = await waterFlow.getBoundsCenter();
      let bounds = await waterFlow.getBounds();
      await driver.waitForIdle(1000, 2000);
      await waterFlow.scrollToBottom(4000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0060
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0060
     * @tc.desc    Test: waterflow component fading distance set to 0vp
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0060', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0060';
      let pageName = "UIComponentListAndGridWaterFlowFadingEdge0060";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridWaterFlowFadingEdge/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let waterFlow: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let center = await waterFlow.getBoundsCenter();
      let bounds = await waterFlow.getBounds();
      await driver.waitForIdle(1000, 2000);
      await waterFlow.scrollToBottom(4000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0070
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0070
     * @tc.desc    Test: waterflow component fading distance set to -1
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0070', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0070';
      let pageName = "UIComponentListAndGridWaterFlowFadingEdge0070";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridWaterFlowFadingEdge/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let waterFlow: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let center = await waterFlow.getBoundsCenter();
      let bounds = await waterFlow.getBounds();
      await driver.waitForIdle(1000, 2000);
      await waterFlow.scrollToBottom(4000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0080
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0080
     * @tc.desc    Test: waterflow component fading distance exceeds component height
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0080', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0080';
      let pageName = "UIComponentListAndGridWaterFlowFadingEdge0080";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridWaterFlowFadingEdge/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let waterFlow: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let center = await waterFlow.getBoundsCenter();
      let bounds = await waterFlow.getBounds();
      await driver.waitForIdle(1000, 2000);
      await waterFlow.scrollToBottom(4000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0090
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0090
     * @tc.desc    Test: dynamically change waterflow component fading distance
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0090', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0090';
      let pageName = "UIComponentListAndGridWaterFlowFadingEdge0090";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridWaterFlowFadingEdge/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let waterFlow: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let center = await waterFlow.getBoundsCenter();
      let bounds = await waterFlow.getBounds();
      await driver.waitForIdle(1000, 2000);
      await button.click();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot(TAG + '_01');
      await driver.waitForIdle(1000, 2000);
      await button.click();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot(TAG + '_02');
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0100
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0100
     * @tc.desc    Test: edge effect and fading effect
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0100', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0100';
      let pageName = "UIComponentListAndGridWaterFlowFadingEdge0100";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridWaterFlowFadingEdge/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let waterFlow: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let center = await waterFlow.getBoundsCenter();
      let bounds = await waterFlow.getBounds();
      await driver.waitForIdle(1000, 2000);
      await waterFlow.scrollToBottom(4000);
      await driver.waitForIdle(1000, 2000);
      await driver.swipe(center.x, center.y, center.x, bounds.top + 10, 2000)
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0110
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0110
     * @tc.desc    Test: waterflow dynamically changes number of columns
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0110', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0110';
      let pageName = "UIComponentListAndGridWaterFlowFadingEdge0110";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridWaterFlowFadingEdge/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let waterFlow: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let center = await waterFlow.getBoundsCenter();
      let bounds = await waterFlow.getBounds();
      await driver.waitForIdle(1000, 2000);
      await button.click();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot(TAG + '_01');
      await driver.waitForIdle(1000, 2000);
      await button.click();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot(TAG + '_02');
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0120
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0120
     * @tc.desc    Test: dynamic layoutDirection for waterflow, fading effect
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0120', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0120';
      let pageName = "UIComponentListAndGridWaterFlowFadingEdge0120";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridWaterFlowFadingEdge/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let waterFlow: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let center = await waterFlow.getBoundsCenter();
      let bounds = await waterFlow.getBounds();
      await driver.waitForIdle(1000, 2000);
      await button.click();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot(TAG + '_01');
      await driver.waitForIdle(1000, 2000);
      await button.click();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot(TAG + '_02');
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0130
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0130
     * @tc.desc    Test: dynamically change number of child components in waterflow, fading effect
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0130', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0130';
      let pageName = "UIComponentListAndGridWaterFlowFadingEdge0130";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridWaterFlowFadingEdge/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let waterFlow: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let center = await waterFlow.getBoundsCenter();
      let bounds = await waterFlow.getBounds();
      await driver.waitForIdle(1000, 2000);
      await button.click();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot(TAG + '_01');
      await driver.waitForIdle(1000, 2000);
      await button.click();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot(TAG + '_02');
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0140
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0140
     * @tc.desc    Test: fading effect under waterflow mirror effect
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0140', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0140';
      let pageName = "UIComponentListAndGridWaterFlowFadingEdge0140";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridWaterFlowFadingEdge/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let waterFlow: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let center = await waterFlow.getBoundsCenter();
      let bounds = await waterFlow.getBounds();
      await driver.waitForIdle(1000, 2000);
      await waterFlow.scrollToBottom(4000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0150
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0150
     * @tc.desc    Test: fading effect under moving window layout
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0150', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0150';
      let pageName = "UIComponentListAndGridWaterFlowFadingEdge0150";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridWaterFlowFadingEdge/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let waterFlow: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let center = await waterFlow.getBoundsCenter();
      let bounds = await waterFlow.getBounds();
      await driver.waitForIdle(1000, 2000);
      await waterFlow.scrollToBottom(4000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0160
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0160
     * @tc.desc    Grouped waterflow fading effect test
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0160', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0160';
      let pageName = "UIComponentListAndGridWaterFlowFadingEdge0160";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridWaterFlowFadingEdge/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let waterFlow: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let center = await waterFlow.getBoundsCenter();
      let bounds = await waterFlow.getBounds();
      await driver.waitForIdle(1000, 2000);
      await waterFlow.scrollToBottom(4000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0170
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0170
     * @tc.desc    Waterflow with pinch-to-change columns, fading effect test
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0170', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0170';
      let pageName = "UIComponentListAndGridWaterFlowFadingEdge0170";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridWaterFlowFadingEdge/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let waterFlow: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let center = await waterFlow.getBoundsCenter();
      let bounds = await waterFlow.getBounds();
      await driver.waitForIdle(1000, 2000);
      let pointers: PointerMatrix = PointerMatrix.create(2, 2);
      pointers.setPoint(0, 0, {x: center.x - 20, y: center.y - 20});
      pointers.setPoint(0, 1, {x: bounds.left + 20, y: bounds.top + 20});
      pointers.setPoint(1, 0, {x: center.x + 20, y: center.y + 20});
      pointers.setPoint(1, 1, {x: bounds.right - 20, y: bounds.bottom - 20});
      await driver.injectMultiPointerAction(pointers, 1000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0180
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0180
     * @tc.desc    List nested waterflow, fading effect test
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0180', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0180';
      let pageName = "UIComponentListAndGridWaterFlowFadingEdge0180";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridWaterFlowFadingEdge/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let waterFlow: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let center = await waterFlow.getBoundsCenter();
      let bounds = await waterFlow.getBounds();
      await driver.waitForIdle(1000, 2000);
      await waterFlow.scrollToBottom(4000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0190
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0190
     * @tc.desc    Tabs nested waterflow, fading effect test
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0190', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0190';
      let pageName = "UIComponentListAndGridWaterFlowFadingEdge0190";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridWaterFlowFadingEdge/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let waterFlow: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let center = await waterFlow.getBoundsCenter();
      let bounds = await waterFlow.getBounds();
      await driver.waitForIdle(1000, 2000);
      await waterFlow.scrollToBottom(4000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0200
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0200
     * @tc.desc    Refresh nested waterflow, fading effect test
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0200', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0200';
      let pageName = "UIComponentListAndGridWaterFlowFadingEdge0200";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridWaterFlowFadingEdge/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let waterFlow: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let center = await waterFlow.getBoundsCenter();
      let bounds = await waterFlow.getBounds();
      await driver.waitForIdle(1000, 2000);
      await waterFlow.scrollToBottom(4000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0210
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0210
     * @tc.desc    Scroll nested waterflow, fading effect test
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0210', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0210';
      let pageName = "UIComponentListAndGridWaterFlowFadingEdge0210";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridWaterFlowFadingEdge/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let waterFlow: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let center = await waterFlow.getBoundsCenter();
      let bounds = await waterFlow.getBounds();
      await driver.waitForIdle(1000, 2000);
      await waterFlow.scrollToBottom(4000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0220
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0220
     * @tc.desc    Waterflow controller jump, fading effect test
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0220', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0220';
      let pageName = "UIComponentListAndGridWaterFlowFadingEdge0220";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridWaterFlowFadingEdge/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let waterFlow: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let center = await waterFlow.getBoundsCenter();
      let bounds = await waterFlow.getBounds();
      await driver.waitForIdle(1000, 2000);
      await button.click();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0230
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0230
     * @tc.desc    Waterflow without height set, adapts to children, fading effect test
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0230', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0230';
      let pageName = "UIComponentListAndGridWaterFlowFadingEdge0230";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridWaterFlowFadingEdge/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let waterFlow: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let center = await waterFlow.getBoundsCenter();
      let bounds = await waterFlow.getBounds();
      await driver.waitForIdle(1000, 2000);
      await waterFlow.scrollToBottom(4000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0240
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0240
     * @tc.desc    Waterflow top has a FlowItem with height 0, fading effect test
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0240', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0240';
      let pageName = "UIComponentListAndGridWaterFlowFadingEdge0240";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridWaterFlowFadingEdge/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let waterFlow: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let center = await waterFlow.getBoundsCenter();
      let bounds = await waterFlow.getBounds();
      await driver.waitForIdle(1000, 2000);
      await waterFlow.scrollToBottom(4000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0250
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0250
     * @tc.desc    Waterflow bottom has a FlowItem with height 0, fading effect test
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0250', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0250';
      let pageName = "UIComponentListAndGridWaterFlowFadingEdge0250";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridWaterFlowFadingEdge/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let waterFlow: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let center = await waterFlow.getBoundsCenter();
      let bounds = await waterFlow.getBounds();
      await driver.waitForIdle(1000, 2000);
      await waterFlow.scrollToBottom(4000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0260
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0260
     * @tc.desc    Control visibility of waterflow footer, fading effect test
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0260', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_FADINGEDGE_0260';
      let pageName = "UIComponentListAndGridWaterFlowFadingEdge0260";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentListAndGridWaterFlowFadingEdge/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let waterFlow: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let center = await waterFlow.getBoundsCenter();
      let bounds = await waterFlow.getBounds();
      await driver.waitForIdle(1000, 2000);
      await waterFlow.scrollToBottom(4000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

  })
}
