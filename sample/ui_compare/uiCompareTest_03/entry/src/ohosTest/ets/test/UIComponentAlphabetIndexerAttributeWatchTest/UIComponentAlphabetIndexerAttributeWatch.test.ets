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

export default function UIComponentAlphabetIndexerAttributeWatch() {
  describe('UIComponentAlphabetIndexerAttributeWatch', () => {
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
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0010
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0010
     * @tc.desc    Index bar has 30 index items
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0010', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0010';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0010";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await button.click();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0020
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0020
     * @tc.desc    Index bar has 40 index items
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0020', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0020';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0020";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await button.click();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0030
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0030
     * @tc.desc    Index bar has 50 index items
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0030', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0030';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0030";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await button.click();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0040
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0040
     * @tc.desc    List content for index item is empty, click this index item
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0040', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0040';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0040";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await driver.mouseMoveTo({x: indexCenter.x, y: indexBounds.top + 50});
      await driver.waitForIdle(1000, 2000);
      await driver.click(indexCenter.x, indexBounds.top + 50);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0050
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0050
     * @tc.desc    List content for index item is empty, click the next index item
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0050', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0050';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0050";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await driver.mouseMoveTo({x: indexCenter.x, y: indexBounds.top + 75});
      await driver.waitForIdle(1000, 2000);
      await driver.click(indexCenter.x, indexBounds.top + 75);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0060
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0060
     * @tc.desc    Click different index items
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0060', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0060';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0060";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await driver.mouseMoveTo({x: indexCenter.x, y: indexBounds.top + 50});
      await driver.waitForIdle(1000, 2000);
      await driver.click(indexCenter.x, indexBounds.top + 50);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot(TAG + '_01');
      await driver.mouseMoveTo({x: indexCenter.x, y: indexBounds.top + 75});
      await driver.waitForIdle(1000, 2000);
      await driver.click(indexCenter.x, indexBounds.top + 75);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot(TAG + '_02');
      await driver.mouseMoveTo({x: indexCenter.x, y: indexBounds.top + 100});
      await driver.waitForIdle(1000, 2000);
      await driver.click(indexCenter.x, indexBounds.top + 100);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot(TAG + '_03');
      await driver.mouseMoveTo({x: indexCenter.x, y: indexBounds.top + 125});
      await driver.waitForIdle(1000, 2000);
      await driver.click(indexCenter.x, indexBounds.top + 125);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot(TAG + '_04');
      await driver.mouseMoveTo({x: indexCenter.x, y: indexBounds.top + 150});
      await driver.waitForIdle(1000, 2000);
      await driver.click(indexCenter.x, indexBounds.top + 150);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot(TAG + '_05');
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0070
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0070
     * @tc.desc    Popup content for index item has 5 characters
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0070', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0070';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0070";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await driver.mouseMoveTo({x: indexCenter.x, y: indexBounds.top + 50});
      await driver.waitForIdle(1000, 2000);
      await driver.click(indexCenter.x, indexBounds.top + 50);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0080
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0080
     * @tc.desc    Popup content for index item has 10 characters
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0080', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0080';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0080";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await driver.mouseMoveTo({x: indexCenter.x, y: indexBounds.top + 50});
      await driver.waitForIdle(1000, 2000);
      await driver.click(indexCenter.x, indexBounds.top + 50);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0090
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0090
     * @tc.desc    Popup content for index item has 15 characters
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0090', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0090';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0090";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await driver.mouseMoveTo({x: indexCenter.x, y: indexBounds.top + 50});
      await driver.waitForIdle(1000, 2000);
      await driver.click(indexCenter.x, indexBounds.top + 50);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0160
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0160
     * @tc.desc    Index bar initially has no data, load data source after delay
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0160', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0160';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0160";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await Utils.sleep(3000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0170
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0170
     * @tc.desc    Index bar initially has data, add data after delay
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0170', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0170';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0170";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await button.click();
      await Utils.sleep(3000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0180
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0180
     * @tc.desc    Index bar initially has data, delete data after delay
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0180', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0180';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0180";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await button.click();
      await Utils.sleep(3000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0190
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0190
     * @tc.desc    Slide index bar while collapsed
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0190', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0190';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0190";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await driver.swipe(indexCenter.x, indexBounds.top, indexCenter.x, indexBounds.bottom, 3000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0200
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0200
     * @tc.desc    Slide index bar while expanded
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0200', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0200';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0200";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await driver.swipe(indexCenter.x, indexBounds.top, indexCenter.x, indexBounds.bottom, 3000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0210
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0210
     * @tc.desc    Index bar initially has data, add data
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0210', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0210';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0210";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await button.click();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0220
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0220
     * @tc.desc    Focus frame when collapsing index items beyond index 4
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0220', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0220';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0220";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await driver.mouseMoveTo({x: indexCenter.x, y: indexBounds.top + 275});
      await driver.waitForIdle(1000, 2000);
      await driver.click(indexCenter.x, indexBounds.top + 275);
      await driver.waitForIdle(1000, 2000);
      await button.click();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0230
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0230
     * @tc.desc    Focus frame when expanding index items beyond index 4
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0230', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0230';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0230";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await driver.mouseMoveTo({x: indexCenter.x, y: indexBounds.top + 275});
      await driver.waitForIdle(1000, 2000);
      await driver.click(indexCenter.x, indexBounds.top + 275);
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
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0240
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0240
     * @tc.desc    Change index bar data source during or after collapse
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0240', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0240';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0240";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button1: Component = await driver.waitForComponent(ON.id(pageName + '_01_1'), 1000);
      let button2: Component = await driver.waitForComponent(ON.id(pageName + '_01_2'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await button1.click();
      await driver.waitForIdle(1000, 2000);
      await button2.click();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0250
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0250
     * @tc.desc    Change index bar data source during or after expansion
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0250', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0250';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0250";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button1: Component = await driver.waitForComponent(ON.id(pageName + '_01_1'), 1000);
      let button2: Component = await driver.waitForComponent(ON.id(pageName + '_01_2'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await button1.click();
      await driver.waitForIdle(1000, 2000);
      await button2.click();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0260
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0260
     * @tc.desc    Change index bar data source during or after sliding
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0260', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0260';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0260";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await driver.swipe(indexCenter.x, indexBounds.top, indexCenter.x, indexBounds.bottom, 3000);
      await Utils.sleep(1000);
      await button.click();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0270
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0270
     * @tc.desc    Slide index bar with two fingers
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0270', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0270';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0270";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      let pointers: PointerMatrix = PointerMatrix.create(2, 2);
      pointers.setPoint(0, 0, {x: indexCenter.x, y: indexBounds.top});
      pointers.setPoint(0, 1, {x: indexCenter.x, y: indexBounds.bottom});
      pointers.setPoint(1, 0, {x: indexCenter.x + 50, y: indexBounds.top});
      pointers.setPoint(1, 1, {x: indexCenter.x + 50, y: indexBounds.bottom});
      await driver.injectMultiPointerAction(pointers, 3000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0280
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0280
     * @tc.desc    Slide index bar with more than two fingers
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0280', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0280';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0280";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      let pointers: PointerMatrix = PointerMatrix.create(3, 2);
      pointers.setPoint(0, 0, {x: indexCenter.x, y: indexBounds.top});
      pointers.setPoint(0, 1, {x: indexCenter.x, y: indexBounds.bottom});
      pointers.setPoint(1, 0, {x: indexCenter.x + 50, y: indexBounds.top});
      pointers.setPoint(1, 1, {x: indexCenter.x + 50, y: indexBounds.bottom});
      pointers.setPoint(2, 0, {x: indexCenter.x - 50, y: indexBounds.top});
      pointers.setPoint(2, 1, {x: indexCenter.x - 50, y: indexBounds.bottom});
      await driver.injectMultiPointerAction(pointers, 3000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0290
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0290
     * @tc.desc    System setting switched to large font
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0290', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0290';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0290";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await button.click();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(2000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0300
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0300
     * @tc.desc    Switch index items, list content shows animation
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0300', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0300';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0300";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await driver.mouseMoveTo({x: indexCenter.x, y: indexBounds.top + 50});
      await driver.waitForIdle(1000, 2000);
      await driver.click(indexCenter.x, indexBounds.top + 50);
      await Utils.sleep(1000);
      await driver.mouseMoveTo({x: indexCenter.x, y: indexBounds.top + 300});
      await driver.waitForIdle(1000, 2000);
      await driver.click(indexCenter.x, indexBounds.top + 300);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0310
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0310
     * @tc.desc    Index item count not greater than 9, set adaptive collapse mode
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0310', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0310';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0310";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0320
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0320
     * @tc.desc    Index item count greater than 9 and not greater than 13, set adaptive collapse mode
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0320', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0320';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0320";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0330
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0330
     * @tc.desc    Index item count greater than 13, set adaptive collapse mode
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0330', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0330';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0330";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0340
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0340
     * @tc.desc    Do not set AlphabetIndexer popupBackgroundBlurStyle
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0340', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0340';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0340";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await driver.mouseMoveTo({x: indexCenter.x, y: indexBounds.top + 75});
      await driver.waitForIdle(1000, 2000);
      await driver.click(indexCenter.x, indexBounds.top + 75);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0350
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0350
     * @tc.desc    Dynamically set AlphabetIndexer popupBackgroundBlurStyle
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0350', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0350';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0350";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await button.click();
      await driver.waitForIdle(1000, 2000);
      await driver.mouseMoveTo({x: indexCenter.x, y: indexBounds.top + 75});
      await driver.waitForIdle(1000, 2000);
      await driver.click(indexCenter.x, indexBounds.top + 75);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0360
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0360
     * @tc.desc    Index bar has 0 index items
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0360', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0360';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0360";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0370
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0370
     * @tc.desc    Index bar has 1 index item
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0370', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0370';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0370";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0380
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0380
     * @tc.desc    Click index item "*"
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0380', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0380';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0380";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await driver.mouseMoveTo({x: indexCenter.x, y: indexBounds.top + 25});
      await driver.waitForIdle(1000, 2000);
      await driver.click(indexCenter.x, indexBounds.top + 25);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0390
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0390
     * @tc.desc    Slide (or click) index bar and crown simultaneously
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0390', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0390';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0390";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await driver.swipe(indexCenter.x, indexBounds.bottom, indexCenter.x, indexBounds.top, 3000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0400
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0400
     * @tc.desc    Slide or click list content and crown simultaneously
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0400', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0400';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0400";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await driver.swipe(listCenter.x, listBounds.bottom, listCenter.x, listBounds.top, 3000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0410
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0410
     * @tc.desc    Slide (click) index bar and slide (click) list content
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0410', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0410';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0410";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await driver.swipe(indexCenter.x, indexBounds.bottom, indexCenter.x, indexBounds.top, 3000);
      await driver.waitForIdle(1000, 2000);
      await driver.swipe(listCenter.x, listBounds.bottom, listCenter.x, listBounds.top, 3000);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0420
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0420
     * @tc.desc    Property color not set
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0420', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0420';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0420";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0430
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0430
     * @tc.desc    Property color uses number value
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0430', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0430';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0430";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0440
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0440
     * @tc.desc    Property color uses string value
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0440', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0440';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0440";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0450
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0450
     * @tc.desc    Property color uses enum value
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0450', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0450';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0450";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0460
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0460
     * @tc.desc    Property color set to rgb value
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0460', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0460';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0460";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0470
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0470
     * @tc.desc    Property selectedColor not set
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0470', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0470';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0470";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0480
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0480
     * @tc.desc    Property selectedColor uses number value
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0480', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0480';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0480";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0490
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0490
     * @tc.desc    Property selectedColor uses string value
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0490', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0490';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0490";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0500
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0500
     * @tc.desc    Property selectedColor uses enum value
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0500', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0500';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0500";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0510
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0510
     * @tc.desc    Property selectedColor set to rgb value
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0510', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0510';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0510";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0570
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0570
     * @tc.desc    Property selectedBackgroundColor not set
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0570', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0570';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0570";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0580
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0580
     * @tc.desc    Property selectedBackgroundColor uses number value
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0580', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0580';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0580";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0590
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0590
     * @tc.desc    Property selectedBackgroundColor uses string value
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0590', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0590';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0590";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0600
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0600
     * @tc.desc    Property selectedBackgroundColor uses enum value
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0600', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0600';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0600";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0610
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0610
     * @tc.desc    Property selectedBackgroundColor set to rgb value
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0610', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0610';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0610";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0620
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0620
     * @tc.desc    Property popupBackground not set
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0620', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0620';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0620";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0630
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0630
     * @tc.desc    Property popupBackground uses number value
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0630', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0630';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0630";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0640
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0640
     * @tc.desc    Property popupBackground uses string value
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0640', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0640';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0640";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0650
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0650
     * @tc.desc    Property popupBackground uses enum value
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0650', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0650';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0650";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0660
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0660
     * @tc.desc    Property popupBackground set to rgb value
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0660', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0660';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0660";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0670
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0670
     * @tc.desc    Property usePopup set to false
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0670', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0670';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0670";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await driver.mouseMoveTo({x: indexCenter.x, y: indexBounds.top + 75});
      await driver.waitForIdle(1000, 2000);
      await driver.click(indexCenter.x, indexBounds.top + 75);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0680
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0680
     * @tc.desc    Property usePopup set to true
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0680', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0680';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0680";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await driver.mouseMoveTo({x: indexCenter.x, y: indexBounds.top + 75});
      await driver.waitForIdle(1000, 2000);
      await driver.click(indexCenter.x, indexBounds.top + 75);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0690
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0690
     * @tc.desc    Property usePopup not configured
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0690', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0690';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0690";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await driver.mouseMoveTo({x: indexCenter.x, y: indexBounds.top + 75});
      await driver.waitForIdle(1000, 2000);
      await driver.click(indexCenter.x, indexBounds.top + 75);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0700
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0700
     * @tc.desc    Property usePopup configured with non-boolean
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0700', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0700';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0700";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await driver.mouseMoveTo({x: indexCenter.x, y: indexBounds.top + 75});
      await driver.waitForIdle(1000, 2000);
      await driver.click(indexCenter.x, indexBounds.top + 75);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0710
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0710
     * @tc.desc    Verify effect when usePopup is false
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0710', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0710';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0710";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await driver.mouseMoveTo({x: indexCenter.x, y: indexBounds.top + 75});
      await driver.waitForIdle(1000, 2000);
      await driver.click(indexCenter.x, indexBounds.top + 75);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0720
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0720
     * @tc.desc    Verify effect when usePopup is true
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0720', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0720';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0720";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await driver.mouseMoveTo({x: indexCenter.x, y: indexBounds.top + 75});
      await driver.waitForIdle(1000, 2000);
      await driver.click(indexCenter.x, indexBounds.top + 75);
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0730
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0730
     * @tc.desc    Property selectedFont uses invalid value
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0730', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0730';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0730";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0740
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0740
     * @tc.desc    Property selectedFont uses default config
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0740', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0740';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0740";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0750
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0750
     * @tc.desc    Property popupFont uses invalid value
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0750', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0750';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0750";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0760
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0760
     * @tc.desc    Property popupFont uses default config
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0760', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0760';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0760";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0770
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0770
     * @tc.desc    Property font uses invalid value
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0770', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0770';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0770";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0780
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0780
     * @tc.desc    Property font uses default config
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0780', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0780';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0780";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0790
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0790
     * @tc.desc    Verify font property effect
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0790', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0790';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0790";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0800
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0800
     * @tc.desc    Property selected set to 2
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0800', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0800';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0800";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0810
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0810
     * @tc.desc    Property selected set to other invalid values
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0810', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0810';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0810";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0820
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0820
     * @tc.desc    Property selected uses default value
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0820', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0820';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0820";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0830
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0830
     * @tc.desc    Property autoCollapse: character count greater than 13 shows all
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0830', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0830';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0830";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0840
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0840
     * @tc.desc    Property autoCollapse: character count greater than 9 and not greater than 13 adapts
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0840', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0840';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0840";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0850
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0850
     * @tc.desc    Property autoCollapse: character count not greater than 9 shows all
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0850', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0850';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0850";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0860
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0860
     * @tc.desc    Property autoCollapse set to False
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0860', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0860';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0860";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0870
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0870
     * @tc.desc    Property autoCollapse uses default value
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0870', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0870';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0870";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0880
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0880
     * @tc.desc    Set popupBackgroundBlurStyle to BACKGROUND_REGULAR
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0880', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0880';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0880";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await driver.mouseMoveTo({x: indexCenter.x, y: indexBounds.top + 75});
      await driver.waitForIdle(1000, 2000);
      await driver.click(indexCenter.x, indexBounds.top + 75);
      await Utils.sleep(1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0890
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0890
     * @tc.desc    Set popupBackgroundBlurStyle to BACKGROUND_THICK
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0890', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0890';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0890";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await driver.mouseMoveTo({x: indexCenter.x, y: indexBounds.top + 75});
      await driver.waitForIdle(1000, 2000);
      await driver.click(indexCenter.x, indexBounds.top + 75);
      await Utils.sleep(1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0900
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0900
     * @tc.desc    Set popupBackgroundBlurStyle to BACKGROUND_THIN
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0900', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0900';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0900";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await driver.mouseMoveTo({x: indexCenter.x, y: indexBounds.top + 75});
      await driver.waitForIdle(1000, 2000);
      await driver.click(indexCenter.x, indexBounds.top + 75);
      await Utils.sleep(1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0910
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0910
     * @tc.desc    Set popupBackgroundBlurStyle to BACKGROUND_ULTRA_THICK
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0910', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0910';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0910";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await driver.mouseMoveTo({x: indexCenter.x, y: indexBounds.top + 75});
      await driver.waitForIdle(1000, 2000);
      await driver.click(indexCenter.x, indexBounds.top + 75);
      await Utils.sleep(1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0920
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0920
     * @tc.desc    Set popupBackgroundBlurStyle to COMPONENT_REGULAR
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0920', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0920';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0920";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await driver.mouseMoveTo({x: indexCenter.x, y: indexBounds.top + 75});
      await driver.waitForIdle(1000, 2000);
      await driver.click(indexCenter.x, indexBounds.top + 75);
      await Utils.sleep(1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0930
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0930
     * @tc.desc    Set popupBackgroundBlurStyle to COMPONENT_THICK
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0930', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0930';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0930";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await driver.mouseMoveTo({x: indexCenter.x, y: indexBounds.top + 75});
      await driver.waitForIdle(1000, 2000);
      await driver.click(indexCenter.x, indexBounds.top + 75);
      await Utils.sleep(1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0940
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0940
     * @tc.desc    Set popupBackgroundBlurStyle to COMPONENT_THIN
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0940', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0940';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0940";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await driver.mouseMoveTo({x: indexCenter.x, y: indexBounds.top + 75});
      await driver.waitForIdle(1000, 2000);
      await driver.click(indexCenter.x, indexBounds.top + 75);
      await Utils.sleep(1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0950
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0950
     * @tc.desc    Set popupBackgroundBlurStyle to COMPONENT_ULTRA_THICK
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0950', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0950';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0950";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await driver.mouseMoveTo({x: indexCenter.x, y: indexBounds.top + 75});
      await driver.waitForIdle(1000, 2000);
      await driver.click(indexCenter.x, indexBounds.top + 75);
      await Utils.sleep(1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0960
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0960
     * @tc.desc    Set popupBackgroundBlurStyle to COMPONENT_ULTRA_THIN
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0960', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0960';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0960";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await driver.mouseMoveTo({x: indexCenter.x, y: indexBounds.top + 75});
      await driver.waitForIdle(1000, 2000);
      await driver.click(indexCenter.x, indexBounds.top + 75);
      await Utils.sleep(1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0970
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0970
     * @tc.desc    Set popupBackgroundBlurStyle to NONE
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0970', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0970';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0970";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await driver.mouseMoveTo({x: indexCenter.x, y: indexBounds.top + 75});
      await driver.waitForIdle(1000, 2000);
      await driver.click(indexCenter.x, indexBounds.top + 75);
      await Utils.sleep(1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0980
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0980
     * @tc.desc    Set popupBackgroundBlurStyle to null
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0980', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0980';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0980";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await driver.mouseMoveTo({x: indexCenter.x, y: indexBounds.top + 75});
      await driver.waitForIdle(1000, 2000);
      await driver.click(indexCenter.x, indexBounds.top + 75);
      await Utils.sleep(1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0990
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0990
     * @tc.desc    Set popupBackgroundBlurStyle to Regular
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0990', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_0990';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch0990";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await driver.mouseMoveTo({x: indexCenter.x, y: indexBounds.top + 75});
      await driver.waitForIdle(1000, 2000);
      await driver.click(indexCenter.x, indexBounds.top + 75);
      await Utils.sleep(1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1000
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1000
     * @tc.desc    Set popupBackgroundBlurStyle to Thick
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1000', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1000';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch1000";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await driver.mouseMoveTo({x: indexCenter.x, y: indexBounds.top + 75});
      await driver.waitForIdle(1000, 2000);
      await driver.click(indexCenter.x, indexBounds.top + 75);
      await Utils.sleep(1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1010
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1010
     * @tc.desc    Set popupBackgroundBlurStyle to Thin
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1010', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1010';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch1010";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await driver.mouseMoveTo({x: indexCenter.x, y: indexBounds.top + 75});
      await driver.waitForIdle(1000, 2000);
      await driver.click(indexCenter.x, indexBounds.top + 75);
      await Utils.sleep(1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1020
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1020
     * @tc.desc    Set popupBackgroundBlurStyle to undefined
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1020', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1020';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch1020";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1030
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1030
     * @tc.desc    AlphabetIndexer width is string
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1030', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1030';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch1030";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1040
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1040
     * @tc.desc    AlphabetIndexer width is string with long text
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1040', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1040';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch1040";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1050
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1050
     * @tc.desc    AlphabetIndexer width is undefined
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1050', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1050';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch1050";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1060
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1060
     * @tc.desc    AlphabetIndexer width is undefined with long text
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1060', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1060';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch1060";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1070
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1070
     * @tc.desc    AlphabetIndexer width is 'auto auto'
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1070', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1070';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch1070";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1080
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1080
     * @tc.desc    AlphabetIndexer width is 'auto auto' with long text
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1080', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1080';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch1080";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1090
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1090
     * @tc.desc    AlphabetIndexer width is empty string
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1090', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1090';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch1090";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1100
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1100
     * @tc.desc    AlphabetIndexer width is empty string with long text
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1100', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1100';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch1100";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1110
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1110
     * @tc.desc    AlphabetIndexer width is not set
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1110', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1110';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch1110";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1120
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1120
     * @tc.desc    AlphabetIndexer width is not set with long text
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1120', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1120';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch1120";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1130
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1130
     * @tc.desc    AlphabetIndexer width is extremely large value
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1130', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1130';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch1130";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1140
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1140
     * @tc.desc    AlphabetIndexer width is negative value
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1140', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1140';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch1140";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1150
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1150
     * @tc.desc    AlphabetIndexer width is negative value with long text
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1150', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1150';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch1150";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1160
     * @tc.name    SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1160
     * @tc.desc    Event onSelect callback test
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1160', Level.LEVEL3, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_ALPHABETINDEXER_ATTRIBUTE_WATCH_1160';
      let pageName = "UIComponentAlphabetIndexerAttributeWatch1160";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentAlphabetIndexerAttributeWatch/' + pageName);
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000);
      let targetComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02'), 1000);
      let listComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_1'), 1000);
      let indexComponent: Component = await driver.waitForComponent(ON.id(pageName + '_02_2'), 1000);
      let logComponent: Component = await driver.waitForComponent(ON.id(pageName + '_03'), 1000);
      let center = await targetComponent.getBoundsCenter();
      let bounds = await targetComponent.getBounds();
      let listCenter = await listComponent.getBoundsCenter();
      let listBounds = await listComponent.getBounds();
      let indexCenter = await indexComponent.getBoundsCenter();
      let indexBounds = await indexComponent.getBounds();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

  })
}
