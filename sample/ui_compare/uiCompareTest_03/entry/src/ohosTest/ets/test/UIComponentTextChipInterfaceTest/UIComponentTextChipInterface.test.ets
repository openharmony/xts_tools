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
import Settings from '../model/Settings';
import windowSnap from '../model/snapShot';
import Logger from '../model/Logger';
import Utils from '../model/Utils';


let TAG = 'RunTimeTest';

function sleep(ms: number) {
  return new Promise<string>(resolve => setTimeout(resolve, ms));
}

export default function UIComponentTextChipInterface() {
  describe('UIComponentTextChipInterface', () => {
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
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0010
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0010
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0010', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0010';
      let pageName = 'UIComponentTextChipInterface0010';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await chip.click();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0020
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0020
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0020', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0020';
      let pageName = 'UIComponentTextChipInterface0020';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await chip.click();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0030
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0030
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0030', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0030';
      let pageName = 'UIComponentTextChipInterface0030';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0040
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0040
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0040', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0040';
      let pageName = 'UIComponentTextChipInterface0040';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0050
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0050
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0050', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0050';
      let pageName = 'UIComponentTextChipInterface0050';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0060
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0060
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0060', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0060';
      let pageName = 'UIComponentTextChipInterface0060';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0070
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0070
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0070', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0070';
      let pageName = 'UIComponentTextChipInterface0070';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0080
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0080
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0080', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0080';
      let pageName = 'UIComponentTextChipInterface0080';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      let switchButton: Component = await driver.waitForComponent(ON.text('Switch chip size'), 1000);
      await switchButton.click();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0090
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0090
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0090', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0090';
      let pageName = 'UIComponentTextChipInterface0090';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0100
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0100
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0100', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0100';
      let pageName = 'UIComponentTextChipInterface0100';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0110
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0110
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0110', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0110';
      let pageName = 'UIComponentTextChipInterface0110';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0120
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0120
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0120', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0120';
      let pageName = 'UIComponentTextChipInterface0120';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0130
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0130
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0130', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0130';
      let pageName = 'UIComponentTextChipInterface0130';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0140
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0140
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0140', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0140';
      let pageName = 'UIComponentTextChipInterface0140';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0150
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0150
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0150', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0150';
      let pageName = 'UIComponentTextChipInterface0150';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0160
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0160
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0160', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0160';
      let pageName = 'UIComponentTextChipInterface0160';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0170
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0170
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0170', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0170';
      let pageName = 'UIComponentTextChipInterface0170';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0180
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0180
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0180', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0180';
      let pageName = 'UIComponentTextChipInterface0180';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0190
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0190
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0190', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0190';
      let pageName = 'UIComponentTextChipInterface0190';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0200
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0200
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0200', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0200';
      let pageName = 'UIComponentTextChipInterface0200';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0210
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0210
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0210', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0210';
      let pageName = 'UIComponentTextChipInterface0210';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0220
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0220
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0220', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0220';
      let pageName = 'UIComponentTextChipInterface0220';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0230
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0230
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0230', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0230';
      let pageName = 'UIComponentTextChipInterface0230';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0240
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0240
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0240', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0240';
      let pageName = 'UIComponentTextChipInterface0240';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0250
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0250
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0250', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0250';
      let pageName = 'UIComponentTextChipInterface0250';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0260
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0260
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0260', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0260';
      let pageName = 'UIComponentTextChipInterface0260';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0270
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0270
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0270', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0270';
      let pageName = 'UIComponentTextChipInterface0270';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0280
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0280
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0280', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0280';
      let pageName = 'UIComponentTextChipInterface0280';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0290
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0290
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0290', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0290';
      let pageName = 'UIComponentTextChipInterface0290';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0300
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0300
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0300', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0300';
      let pageName = 'UIComponentTextChipInterface0300';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0310
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0310
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0310', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0310';
      let pageName = 'UIComponentTextChipInterface0310';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0320
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0320
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0320', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0320';
      let pageName = 'UIComponentTextChipInterface0320';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0330
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0330
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0330', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0330';
      let pageName = 'UIComponentTextChipInterface0330';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0340
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0340
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0340', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0340';
      let pageName = 'UIComponentTextChipInterface0340';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0350
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0350
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0350', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0350';
      let pageName = 'UIComponentTextChipInterface0350';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0360
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0360
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0360', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0360';
      let pageName = 'UIComponentTextChipInterface0360';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0370
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0370
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0370', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0370';
      let pageName = 'UIComponentTextChipInterface0370';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0380
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0380
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0380', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0380';
      let pageName = 'UIComponentTextChipInterface0380';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0390
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0390
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0390', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0390';
      let pageName = 'UIComponentTextChipInterface0390';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0400
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0400
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0400', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0400';
      let pageName = 'UIComponentTextChipInterface0400';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0410
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0410
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0410', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0410';
      let pageName = 'UIComponentTextChipInterface0410';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0420
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0420
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0420', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0420';
      let pageName = 'UIComponentTextChipInterface0420';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0430
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0430
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0430', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0430';
      let pageName = 'UIComponentTextChipInterface0430';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0440
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0440
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0440', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0440';
      let pageName = 'UIComponentTextChipInterface0440';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0450
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0450
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0450', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0450';
      let pageName = 'UIComponentTextChipInterface0450';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0460
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0460
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0460', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0460';
      let pageName = 'UIComponentTextChipInterface0460';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0470
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0470
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0470', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0470';
      let pageName = 'UIComponentTextChipInterface0470';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0480
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0480
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0480', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0480';
      let pageName = 'UIComponentTextChipInterface0480';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0490
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0490
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0490', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0490';
      let pageName = 'UIComponentTextChipInterface0490';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0500
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0500
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0500', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0500';
      let pageName = 'UIComponentTextChipInterface0500';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0510
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0510
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0510', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0510';
      let pageName = 'UIComponentTextChipInterface0510';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0520
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0520
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0520', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0520';
      let pageName = 'UIComponentTextChipInterface0520';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0530
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0530
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0530', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0530';
      let pageName = 'UIComponentTextChipInterface0530';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0540
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0540
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0540', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0540';
      let pageName = 'UIComponentTextChipInterface0540';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0550
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0550
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0550', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0550';
      let pageName = 'UIComponentTextChipInterface0550';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0560
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0560
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0560', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0560';
      let pageName = 'UIComponentTextChipInterface0560';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0570
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0570
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0570', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0570';
      let pageName = 'UIComponentTextChipInterface0570';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0580
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0580
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0580', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0580';
      let pageName = 'UIComponentTextChipInterface0580';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0590
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0590
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0590', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0590';
      let pageName = 'UIComponentTextChipInterface0590';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0600
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0600
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0600', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0600';
      let pageName = 'UIComponentTextChipInterface0600';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0610
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0610
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0610', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0610';
      let pageName = 'UIComponentTextChipInterface0610';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0620
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0620
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0620', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0620';
      let pageName = 'UIComponentTextChipInterface0620';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0630
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0630
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0630', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0630';
      let pageName = 'UIComponentTextChipInterface0630';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0640
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0640
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0640', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0640';
      let pageName = 'UIComponentTextChipInterface0640';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0650
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0650
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0650', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0650';
      let pageName = 'UIComponentTextChipInterface0650';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0660
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0660
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0660', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0660';
      let pageName = 'UIComponentTextChipInterface0660';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0670
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0670
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0670', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0670';
      let pageName = 'UIComponentTextChipInterface0670';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0680
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0680
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0680', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0680';
      let pageName = 'UIComponentTextChipInterface0680';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0690
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0690
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0690', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0690';
      let pageName = 'UIComponentTextChipInterface0690';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0700
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0700
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0700', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0700';
      let pageName = 'UIComponentTextChipInterface0700';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0710
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0710
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0710', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0710';
      let pageName = 'UIComponentTextChipInterface0710';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0720
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0720
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0720', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0720';
      let pageName = 'UIComponentTextChipInterface0720';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0730
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0730
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0730', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0730';
      let pageName = 'UIComponentTextChipInterface0730';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0740
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0740
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0740', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0740';
      let pageName = 'UIComponentTextChipInterface0740';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0750
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0750
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0750', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0750';
      let pageName = 'UIComponentTextChipInterface0750';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0760
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0760
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0760', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0760';
      let pageName = 'UIComponentTextChipInterface0760';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0770
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0770
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0770', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0770';
      let pageName = 'UIComponentTextChipInterface0770';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0780
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0780
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0780', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0780';
      let pageName = 'UIComponentTextChipInterface0780';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0790
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0790
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0790', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0790';
      let pageName = 'UIComponentTextChipInterface0790';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0800
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0800
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0800', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0800';
      let pageName = 'UIComponentTextChipInterface0800';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0810
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0810
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0810', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0810';
      let pageName = 'UIComponentTextChipInterface0810';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0820
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0820
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0820', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0820';
      let pageName = 'UIComponentTextChipInterface0820';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0830
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0830
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0830', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0830';
      let pageName = 'UIComponentTextChipInterface0830';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0840
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0840
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0840', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0840';
      let pageName = 'UIComponentTextChipInterface0840';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0850
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0850
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0850', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0850';
      let pageName = 'UIComponentTextChipInterface0850';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0860
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0860
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0860', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0860';
      let pageName = 'UIComponentTextChipInterface0860';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0870
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0870
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0870', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0870';
      let pageName = 'UIComponentTextChipInterface0870';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0880
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0880
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0880', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0880';
      let pageName = 'UIComponentTextChipInterface0880';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0890
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0890
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0890', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0890';
      let pageName = "UIComponentTextChipInterface0890";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0900
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0900
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0900', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0900';
      let pageName = "UIComponentTextChipInterface0900";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0910
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0910
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0910', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0910';
      let pageName = "UIComponentTextChipInterface0910";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0920
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0920
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0920', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0920';
      let pageName = "UIComponentTextChipInterface0920";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0930
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0930
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0930', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0930';
      let pageName = "UIComponentTextChipInterface0930";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0950
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0950
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0950', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0950';
      let pageName = "UIComponentTextChipInterface0950";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0960
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0960
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0960', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0960';
      let pageName = "UIComponentTextChipInterface0960";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      let button: Component = await driver.waitForComponent(ON.id(pageName + '_01'), 1000)
      await driver.waitForIdle(500, 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0970
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0970
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0970', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0970';
      let pageName = "UIComponentTextChipInterface0970";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0980
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0980
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0980', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0980';
      let pageName = "UIComponentTextChipInterface0980";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0990
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0990
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0990', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_0990';
      let pageName = "UIComponentTextChipInterface0990";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1000
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1000
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1000', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1000';
      let pageName = "UIComponentTextChipInterface1000";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1010
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1010
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1010', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1010';
      let pageName = "UIComponentTextChipInterface1010";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1020
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1020
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1020', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1020';
      let pageName = "UIComponentTextChipInterface1020";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1030
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1030
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1030', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1030';
      let pageName = "UIComponentTextChipInterface1030";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1040
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1040
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1040', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1040';
      let pageName = "UIComponentTextChipInterface1040";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1060
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1060
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1060', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1060';
      let pageName = "UIComponentTextChipInterface1060";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1070
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1070
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1070', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1070';
      let pageName = "UIComponentTextChipInterface1070";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1080
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1080
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1080', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1080';
      let pageName = "UIComponentTextChipInterface1080";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1090
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1090
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1090', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1090';
      let pageName = "UIComponentTextChipInterface1090";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1100
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1100
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1100', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1100';
      let pageName = "UIComponentTextChipInterface1100";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1110
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1110
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1110', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1110';
      let pageName = "UIComponentTextChipInterface1110";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1120
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1120
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1120', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1120';
      let pageName = "UIComponentTextChipInterface1120";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1130
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1130
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1130', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1130';
      let pageName = "UIComponentTextChipInterface1130";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1140
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1140
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1140', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1140';
      let pageName = "UIComponentTextChipInterface1140";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1160
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1160
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1160', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1160';
      let pageName = "UIComponentTextChipInterface1160";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1170
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1170
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1170', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1170';
      let pageName = "UIComponentTextChipInterface1170";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1180
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1180
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1180', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1180';
      let pageName = "UIComponentTextChipInterface1180";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1190
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1190
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1190', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1190';
      let pageName = "UIComponentTextChipInterface1190";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1200
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1200
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1200', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1200';
      let pageName = "UIComponentTextChipInterface1200";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1210
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1210
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1210', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1210';
      let pageName = "UIComponentTextChipInterface1210";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1220
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1220
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1220', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1220';
      let pageName = "UIComponentTextChipInterface1220";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1230
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1230
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1230', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1230';
      let pageName = "UIComponentTextChipInterface1230";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1240
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1240
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1240', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1240';
      let pageName = "UIComponentTextChipInterface1240";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1260
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1260
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1260', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1260';
      let pageName = "UIComponentTextChipInterface1260";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1270
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1270
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1270', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1270';
      let pageName = "UIComponentTextChipInterface1270";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1280
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1280
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1280', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1280';
      let pageName = "UIComponentTextChipInterface1280";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1290
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1290
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1290', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1290';
      let pageName = "UIComponentTextChipInterface1290";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1300
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1300
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1300', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1300';
      let pageName = "UIComponentTextChipInterface1300";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1310
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1310
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1310', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1310';
      let pageName = "UIComponentTextChipInterface1310";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1320
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1320
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1320', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1320';
      let pageName = "UIComponentTextChipInterface1320";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1330
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1330
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1330', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1330';
      let pageName = "UIComponentTextChipInterface1330";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1340
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1340
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1340', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1340';
      let pageName = "UIComponentTextChipInterface1340";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1350
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1350
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1350', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1350';
      let pageName = "UIComponentTextChipInterface1350";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1360
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1360
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1360', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1360';
      let pageName = "UIComponentTextChipInterface1360";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1370
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1370
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1370', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1370';
      let pageName = "UIComponentTextChipInterface1370";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1380
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1380
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1380', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1380';
      let pageName = "UIComponentTextChipInterface1380";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1390
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1390
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1390', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1390';
      let pageName = "UIComponentTextChipInterface1390";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1400
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1400
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1400', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1400';
      let pageName = "UIComponentTextChipInterface1400";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1410
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1410
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1410', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1410';
      let pageName = "UIComponentTextChipInterface1410";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1420
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1420
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1420', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1420';
      let pageName = "UIComponentTextChipInterface1420";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1430
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1430
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1430', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1430';
      let pageName = "UIComponentTextChipInterface1430";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1440
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1440
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1440', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1440';
      let pageName = "UIComponentTextChipInterface1440";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1450
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1450
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1450', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1450';
      let pageName = "UIComponentTextChipInterface1450";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1460
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1460
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1460', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1460';
      let pageName = "UIComponentTextChipInterface1460";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1470
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1470
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1470', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1470';
      let pageName = "UIComponentTextChipInterface1470";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1490
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1490
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1490', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1490';
      let pageName = "UIComponentTextChipInterface1490";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1500
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1500
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1500', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1500';
      let pageName = "UIComponentTextChipInterface1500";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1510
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1510
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1510', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1510';
      let pageName = "UIComponentTextChipInterface1510";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      let switchButton: Component = await driver.waitForComponent(ON.text('switch size'), 1000);
      await driver.waitForIdle(500, 1000);
      await switchButton.click();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await switchButton.click();
      await driver.waitForIdle(1000, 2000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1520
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1520
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1520', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1520';
      let pageName = "UIComponentTextChipInterface1520";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1530
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1530
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1530', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1530';
      let pageName = "UIComponentTextChipInterface1530";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1540
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1540
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1540', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_CHIP_INTERFACE_1540';
      let pageName = "UIComponentTextChipInterface1540";
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextChipInterface/' + pageName);
      let driver: Driver = Driver.create();
      let chip: Component = await driver.waitForComponent(ON.text('操作块'), 1000);
      await driver.waitForIdle(500, 1000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

  })
}