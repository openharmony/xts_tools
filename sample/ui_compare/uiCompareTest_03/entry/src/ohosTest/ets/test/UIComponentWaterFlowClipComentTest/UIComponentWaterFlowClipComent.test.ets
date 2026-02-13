
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
import { screen, uiAppearance } from '@kit.ArkUI';
import Settings from '../model/Settings';
import windowSnap from '../model/snapShot';
import Logger from '../model/Logger';
import Utils from '../model/Utils';


let TAG = 'RunTimeTest';

function sleep(ms: number) {
  return new Promise<string>(resolve => setTimeout(resolve, ms));
}

export default function UIComponentWaterFlowClipComent() {
  describe('UIComponentWaterFlowClipComent', () => {
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
     * @tc.number  SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0010
     * @tc.name    SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0010
     * @tc.desc    Vertical layout waterflow sets CONTENT_ONLY
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0010', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0010';
      let pageName = "UIComponentWaterFlowClipComent0010";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentWaterFlowClipComent/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0020
     * @tc.name    SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0020
     * @tc.desc    Vertical layout waterflow sets BOUNDARY
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0020', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0020';
      let pageName = "UIComponentWaterFlowClipComent0020";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentWaterFlowClipComent/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0030
     * @tc.name    SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0030
     * @tc.desc    Vertical layout waterflow sets SAFE_AREA
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0030', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0030';
      let pageName = "UIComponentWaterFlowClipComent0030";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentWaterFlowClipComent/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0040
     * @tc.name    SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0040
     * @tc.desc    Vertical layout waterflow sets RectShape custom clipping area
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0040', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0040';
      let pageName = "UIComponentWaterFlowClipComent0040";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentWaterFlowClipComent/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0050
     * @tc.name    SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0050
     * @tc.desc    Waterflow sets RectShape parameter to 0
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0050', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0050';
      let pageName = "UIComponentWaterFlowClipComent0050";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentWaterFlowClipComent/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0060
     * @tc.name    SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0060
     * @tc.desc    Waterflow sets RectShape parameter as negative number
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0060', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0060';
      let pageName = "UIComponentWaterFlowClipComent0060";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentWaterFlowClipComent/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0070
     * @tc.name    SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0070
     * @tc.desc    Waterflow sets RectShape parameter as oversized value
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0070', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0070';
      let pageName = "UIComponentWaterFlowClipComent0070";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentWaterFlowClipComent/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0080
     * @tc.name    SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0080
     * @tc.desc    Waterflow sets custom clipping area with offset displacement
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0080', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0080';
      let pageName = "UIComponentWaterFlowClipComent0080";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentWaterFlowClipComent/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0090
     * @tc.name    SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0090
     * @tc.desc    Horizontal layout waterflow sets clipping effect
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0090', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0090';
      let pageName = "UIComponentWaterFlowClipComent0090";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentWaterFlowClipComent/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0100
     * @tc.name    SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0100
     * @tc.desc    Waterflow sets clipping area, observe effect when switching portrait and landscape
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0100', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0100';
      let pageName = "UIComponentWaterFlowClipComent0100";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentWaterFlowClipComent/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot(TAG + '_01');
      let screenClass: screen.Screen | null = null;
      screen.getAllScreens(async (err: BusinessError, data: Array<screen.Screen>) => {
        const errCode: number = err.code;
        if (errCode) {
          Logger.error(`[${TAG}]: Failed to get all screens. Code:${err.code},message is ${err.message}`);
          return;
        }
        Logger.info(`[${TAG}]: Succeeded in getting all screens. Data:` + JSON.stringify(data));
        screenClass = data[0];
        screenClass.setOrientation(screen.Orientation.HORIZONTAL, (err: BusinessError) => {
          const errCode: number = err.code;
          if (errCode) {
            Logger.error(`[${TAG}]: Failed to set the vertical orientation. Code:${err.code},message is ${err.message}`);
            return;
          }
          Logger.info(`[${TAG}]: Succeeded in setting the vertical orientation.`);
        });
        await Utils.sleep(1000);
        await windowSnap.snapShot(TAG + '_02');
        screenClass.setOrientation(screen.Orientation.VERTICAL, (err: BusinessError) => {
          const errCode: number = err.code;
          if (errCode) {
            Logger.error(`[${TAG}]: Failed to set the vertical orientation. Code:${err.code},message is ${err.message}`);
            return;
          }
          Logger.info(`[${TAG}]: Succeeded in setting the vertical orientation.`);
        });
      })
      await Utils.sleep(5000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0120
     * @tc.name    SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0120
     * @tc.desc    Waterflow sets clipping area, dynamically change column and row spacing
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0120', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0120';
      let pageName = "UIComponentWaterFlowClipComent0120";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentWaterFlowClipComent/' + pageName);
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
     * @tc.number  SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0130
     * @tc.name    SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0130
     * @tc.desc    Waterflow sets clipping area, dynamically change number of columns and rows
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0130', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0130';
      let pageName = "UIComponentWaterFlowClipComent0130";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentWaterFlowClipComent/' + pageName);
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
     * @tc.number  SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0170
     * @tc.name    SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0170
     * @tc.desc    Waterflow sets clipping area, edge fade effect test
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0170', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0170';
      let pageName = "UIComponentWaterFlowClipComent0170";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentWaterFlowClipComent/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await targetComponent.scrollToBottom(8000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0180
     * @tc.name    SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0180
     * @tc.desc    Waterflow sets clipping area, padding dynamic change test
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0180', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0180';
      let pageName = "UIComponentWaterFlowClipComent0180";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentWaterFlowClipComent/' + pageName);
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
     * @tc.number  SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0190
     * @tc.name    SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0190
     * @tc.desc    Waterflow sets clipping area, mirror effect test
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0190', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0190';
      let pageName = "UIComponentWaterFlowClipComent0190";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentWaterFlowClipComent/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0200
     * @tc.name    SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0200
     * @tc.desc    Waterflow sets clipping area, controller jump test
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0200', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0200';
      let pageName = "UIComponentWaterFlowClipComent0200";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentWaterFlowClipComent/' + pageName);
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
     * @tc.number  SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0210
     * @tc.name    SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0210
     * @tc.desc    Waterflow sets clipping area, event callback test
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0210', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0210';
      let pageName = "UIComponentWaterFlowClipComent0210";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentWaterFlowClipComent/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await targetComponent.scrollToBottom(8000);
      await driver.waitForIdle(1000, 2000);
      await logComponent.scrollToBottom(8000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0230
     * @tc.name    SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0230
     * @tc.desc    Waterflow sets clipping area, add and delete item test
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0230', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0230';
      let pageName = "UIComponentWaterFlowClipComent0230";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentWaterFlowClipComent/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await targetComponent.scrollToBottom(8000);
      await driver.waitForIdle(1000, 2000);
      await button.click();
      await driver.waitForIdle(1000, 2000);
      await button.click();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0250
     * @tc.name    SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0250
     * @tc.desc    Waterflow component RectShape custom area set together with clip and clipShape
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0250', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_WATERFLOW_CLIPCOMENT_0250';
      let pageName = "UIComponentWaterFlowClipComent0250";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentWaterFlowClipComent/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

  })
}
