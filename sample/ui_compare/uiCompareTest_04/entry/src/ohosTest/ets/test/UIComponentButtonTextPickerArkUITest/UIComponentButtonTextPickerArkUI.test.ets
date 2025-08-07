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
import { Driver, ON, Component, MouseButton } from '@ohos.UiTest'
import { Point } from '@kit.TestKit'

export default function UIComponentButtonTextPickerArkUITest() {
  describe('UIComponentButtonTextPickerArkUITest', () => {
    afterEach(async (done: Function) => {
      if (Settings.windowClass == undefined) {
        return;
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
     * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0100
     * @tc.name    SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0100
     * @tc.desc    Component 4 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0100', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0100';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentButtonTextPickerArkUI/UIComponentButtonTextPickerArkUI001");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0090
     * @tc.name    SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0090
     * @tc.desc    Component 4 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0090', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0090';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentButtonTextPickerArkUI/UIComponentButtonTextPickerArkUI002");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0080
     * @tc.name    SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0080
     * @tc.desc    Component 4 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0080', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0080';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentButtonTextPickerArkUI/UIComponentButtonTextPickerArkUI003");
      let driver: Driver = Driver.create();
      let textPicker: Component = await driver.waitForComponent(ON.id('textpicker'), 1000);
      let point = await textPicker.getBoundsCenter();
      console.info(`${caseName} point of TextPicker is ${JSON.stringify(point)}`);
      let point1: Point = {x: point.x, y: point.y + 40};
      let point2: Point = {x: point.x, y: point.y - 40};
      await driver.mouseDrag(point1, point2);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0060
     * @tc.name    SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0060
     * @tc.desc    Component 4 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0060', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0060';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentButtonTextPickerArkUI/UIComponentButtonTextPickerArkUI004");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0050
     * @tc.name    SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0050
     * @tc.desc    Component 4 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0050', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0050';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentButtonTextPickerArkUI/UIComponentButtonTextPickerArkUI005");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0070
     * @tc.name    SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0070
     * @tc.desc    Component 4 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0070', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0070';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentButtonTextPickerArkUI/UIComponentButtonTextPickerArkUI006");
      let driver: Driver = Driver.create();
      let textPicker: Component = await driver.waitForComponent(ON.id('textpicker'), 1000);
      let point = await textPicker.getBoundsCenter();
      console.info(`${caseName} point of TextPicker is ${JSON.stringify(point)}`);
      let point1: Point = {x: point.x, y: point.y + 40};
      let point2: Point = {x: point.x, y: point.y - 40};
      await driver.mouseDrag(point1, point2);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0010
     * @tc.name    SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0010
     * @tc.desc    Component 4 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0010', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0010';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentButtonTextPickerArkUI/UIComponentButtonTextPickerArkUI007");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0130
     * @tc.name    SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0130
     * @tc.desc    Component 4 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0130', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0130';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentButtonTextPickerArkUI/UIComponentButtonTextPickerArkUI008");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0140
     * @tc.name    SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0140
     * @tc.desc    Component 4 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0140', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0140';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentButtonTextPickerArkUI/UIComponentButtonTextPickerArkUI009");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0110
     * @tc.name    SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0110
     * @tc.desc    Component 4 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0110', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0110';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentButtonTextPickerArkUI/UIComponentButtonTextPickerArkUI010");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0120
     * @tc.name    SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0120
     * @tc.desc    Component 4 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0120', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0120';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentButtonTextPickerArkUI/UIComponentButtonTextPickerArkUI011");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0150
     * @tc.name    SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0150
     * @tc.desc    Component 4 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0150', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0150';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentButtonTextPickerArkUI/UIComponentButtonTextPickerArkUI012");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0030
     * @tc.name    SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0030
     * @tc.desc    Component 4 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0030', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0030';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentButtonTextPickerArkUI/UIComponentButtonTextPickerArkUI013");
      let driver: Driver = Driver.create();
      let textPicker: Component = await driver.waitForComponent(ON.id('textpicker'), 1000);
      let point = await textPicker.getBoundsCenter();
      console.info(`${caseName} point of TextPicker is ${JSON.stringify(point)}`);
      let point1: Point = {x: point.x, y: point.y + 100};
      let point2: Point = {x: point.x, y: point.y - 100};
      await driver.mouseDrag(point1, point2);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0160
     * @tc.name    SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0160
     * @tc.desc    Component 4 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0160', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0160';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentButtonTextPickerArkUI/UIComponentButtonTextPickerArkUI014");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0020
     * @tc.name    SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0020
     * @tc.desc    Component 4 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0020', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0020';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentButtonTextPickerArkUI/UIComponentButtonTextPickerArkUI015");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0040
     * @tc.name    SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0040
     * @tc.desc    Component 4 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0040', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0040';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentButtonTextPickerArkUI/UIComponentButtonTextPickerArkUI016");
      let driver: Driver = Driver.create();
      let textPicker: Component = await driver.waitForComponent(ON.id('textpicker'), 1000);
      let point = await textPicker.getBoundsCenter();
      console.info(`${caseName} point of TextPicker is ${JSON.stringify(point)}`);
      let point1: Point = {x: point.x, y: point.y + 100};
      let point2: Point = {x: point.x, y: point.y - 100};
      await driver.mouseDrag(point1, point2);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0580
     * @tc.name    SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0580
     * @tc.desc    Component 4 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0580', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0580';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentButtonTextPickerArkUI/UIComponentButtonTextPickerArkUI017");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0560
     * @tc.name    SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0560
     * @tc.desc    Component 4 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0560', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0560';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentButtonTextPickerArkUI/UIComponentButtonTextPickerArkUI018");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0550
     * @tc.name    SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0550
     * @tc.desc    Component 4 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0550', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0550';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentButtonTextPickerArkUI/UIComponentButtonTextPickerArkUI019");
      let driver: Driver = Driver.create();
      let textPicker: Component = await driver.waitForComponent(ON.id('datapicker'), 1000);
      let point = await textPicker.getBoundsCenter();
      console.info(`${caseName} point of TextPicker is ${JSON.stringify(point)}`);
      let point1: Point = {x: point.x, y: point.y + 100};
      let point2: Point = {x: point.x, y: point.y - 100};
      await driver.mouseDrag(point1, point2);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0570
     * @tc.name    SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0570
     * @tc.desc    Component 4 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0570', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0570';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentButtonTextPickerArkUI/UIComponentButtonTextPickerArkUI020");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0600
     * @tc.name    SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0600
     * @tc.desc    Component 4 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0600', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0600';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentButtonTextPickerArkUI/UIComponentButtonTextPickerArkUI021");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0590
     * @tc.name    SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0590
     * @tc.desc    Component 4 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0590', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0590';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentButtonTextPickerArkUI/UIComponentButtonTextPickerArkUI022");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0510
     * @tc.name    SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0510
     * @tc.desc    Component 4 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0510', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0510';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentButtonTextPickerArkUI/UIComponentButtonTextPickerArkUI023");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0630
     * @tc.name    SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0630
     * @tc.desc    Component 4 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0630', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0630';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentButtonTextPickerArkUI/UIComponentButtonTextPickerArkUI024");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0640
     * @tc.name    SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0640
     * @tc.desc    Component 4 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0640', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0640';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentButtonTextPickerArkUI/UIComponentButtonTextPickerArkUI025");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0610
     * @tc.name    SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0610
     * @tc.desc    Component 4 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0610', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0610';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentButtonTextPickerArkUI/UIComponentButtonTextPickerArkUI026");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0650
     * @tc.name    SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0650
     * @tc.desc    Component 4 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0650', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0650';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentButtonTextPickerArkUI/UIComponentButtonTextPickerArkUI027");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0660
     * @tc.name    SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0660
     * @tc.desc    Component 4 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0660', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0660';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentButtonTextPickerArkUI/UIComponentButtonTextPickerArkUI028");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0530
     * @tc.name    SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0530
     * @tc.desc    Component 4 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0530', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0530';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentButtonTextPickerArkUI/UIComponentButtonTextPickerArkUI029");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0620
     * @tc.name    SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0620
     * @tc.desc    Component 4 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0620', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0620';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentButtonTextPickerArkUI/UIComponentButtonTextPickerArkUI030");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0520
     * @tc.name    SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0520
     * @tc.desc    Component 4 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0520', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0520';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentButtonTextPickerArkUI/UIComponentButtonTextPickerArkUI031");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0540
     * @tc.name    SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0540
     * @tc.desc    Component 4 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0540', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0540';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentButtonTextPickerArkUI/UIComponentButtonTextPickerArkUI032");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1080
     * @tc.name    SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1080
     * @tc.desc    Component 4 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1080', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1080';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentButtonTextPickerArkUI/UIComponentButtonTextPickerArkUI033");
      let driver: Driver = Driver.create();
      let select: Component = await driver.waitForComponent(ON.id('select'), 1000);
      await select.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1050
     * @tc.name    SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1050
     * @tc.desc    Component 4 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1050', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1050';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentButtonTextPickerArkUI/UIComponentButtonTextPickerArkUI034");
      let driver: Driver = Driver.create();
      let select: Component = await driver.waitForComponent(ON.id('select'), 1000);
      await select.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1060
     * @tc.name    SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1060
     * @tc.desc    Component 4 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1060', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1060';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentButtonTextPickerArkUI/UIComponentButtonTextPickerArkUI035");
      let driver: Driver = Driver.create();
      let select: Component = await driver.waitForComponent(ON.id('select'), 1000);
      await select.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1100
     * @tc.name    SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1100
     * @tc.desc    Component 4 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1100', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1100';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentButtonTextPickerArkUI/UIComponentButtonTextPickerArkUI036");
      let driver: Driver = Driver.create();
      let select: Component = await driver.waitForComponent(ON.id('select'), 1000);
      await select.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1070
     * @tc.name    SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1070
     * @tc.desc    Component 4 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1070', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1070';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentButtonTextPickerArkUI/UIComponentButtonTextPickerArkUI037");
      let driver: Driver = Driver.create();
      let select: Component = await driver.waitForComponent(ON.id('select'), 1000);
      await select.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1090
     * @tc.name    SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1090
     * @tc.desc    Component 4 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1090', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1090';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentButtonTextPickerArkUI/UIComponentButtonTextPickerArkUI038");
      let driver: Driver = Driver.create();
      let select: Component = await driver.waitForComponent(ON.id('select'), 1000);
      await select.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1130
     * @tc.name    SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1130
     * @tc.desc    Component 4 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1130', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1130';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentButtonTextPickerArkUI/UIComponentButtonTextPickerArkUI039");
      let driver: Driver = Driver.create();
      let select: Component = await driver.waitForComponent(ON.id('select'), 1000);
      await select.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1110
     * @tc.name    SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1110
     * @tc.desc    Component 4 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1110', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1110';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentButtonTextPickerArkUI/UIComponentButtonTextPickerArkUI040");
      let driver: Driver = Driver.create();
      let select: Component = await driver.waitForComponent(ON.id('select'), 1000);
      await select.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1150
     * @tc.name    SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1150
     * @tc.desc    Component 4 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1150', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1150';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentButtonTextPickerArkUI/UIComponentButtonTextPickerArkUI041");
      let driver: Driver = Driver.create();
      let select: Component = await driver.waitForComponent(ON.id('select'), 1000);
      await select.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1120
     * @tc.name    SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1120
     * @tc.desc    Component 4 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1120', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1120';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentButtonTextPickerArkUI/UIComponentButtonTextPickerArkUI042");
      let driver: Driver = Driver.create();
      let select: Component = await driver.waitForComponent(ON.id('select'), 1000);
      await select.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1140
     * @tc.name    SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1140
     * @tc.desc    Component 4 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1140', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1140';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentButtonTextPickerArkUI/UIComponentButtonTextPickerArkUI043");
      let driver: Driver = Driver.create();
      let select: Component = await driver.waitForComponent(ON.id('select'), 1000);
      await select.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1010
     * @tc.name    SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1010
     * @tc.desc    Component 4 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1010', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1010';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentButtonTextPickerArkUI/UIComponentButtonTextPickerArkUI044");
      let driver: Driver = Driver.create();
      let select: Component = await driver.waitForComponent(ON.id('select'), 1000);
      await select.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1030
     * @tc.name    SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1030
     * @tc.desc    Component 4 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1030', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1030';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentButtonTextPickerArkUI/UIComponentButtonTextPickerArkUI045");
      let driver: Driver = Driver.create();
      let select: Component = await driver.waitForComponent(ON.id('select'), 1000);
      await select.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1160
     * @tc.name    SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1160
     * @tc.desc    Component 4 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1160', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1160';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentButtonTextPickerArkUI/UIComponentButtonTextPickerArkUI046");
      let driver: Driver = Driver.create();
      let select: Component = await driver.waitForComponent(ON.id('select'), 1000);
      await select.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1020
     * @tc.name    SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1020
     * @tc.desc    Component 4 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1020', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1020';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentButtonTextPickerArkUI/UIComponentButtonTextPickerArkUI047");
      let driver: Driver = Driver.create();
      let select: Component = await driver.waitForComponent(ON.id('select'), 1000);
      await select.click();
      await driver.waitForIdle(500, 2000);
      let point = await select.getBoundsCenter();
      console.info(`${caseName} point of Select is ${JSON.stringify(point)}`);
      await driver.mouseClick({x: point.x, y: point.y + 70}, MouseButton.MOUSE_BUTTON_LEFT);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1040
     * @tc.name    SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1040
     * @tc.desc    Component 4 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1040', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_1040';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentButtonTextPickerArkUI/UIComponentButtonTextPickerArkUI048");
      let driver: Driver = Driver.create();
      let select: Component = await driver.waitForComponent(ON.id('select'), 1000);
      await select.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0170
     * @tc.name    SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0170
     * @tc.desc    Component 4 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0170', Level.LEVEL3, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_ARKUI_0170';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentButtonTextPickerArkUI/UIComponentButtonTextPickerArkUI049");
      let driver: Driver = Driver.create();
      let textPicker: Component = await driver.waitForComponent(ON.id('textpicker'), 1000);
      let point = await textPicker.getBoundsCenter();
      console.info(`${caseName} point of TextPicker is ${JSON.stringify(point)}`);
      let point1: Point = {x: point.x, y: point.y + 40};
      let point2: Point = {x: point.x, y: point.y - 40};
      await driver.mouseDrag(point1, point2);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });
  })
}
