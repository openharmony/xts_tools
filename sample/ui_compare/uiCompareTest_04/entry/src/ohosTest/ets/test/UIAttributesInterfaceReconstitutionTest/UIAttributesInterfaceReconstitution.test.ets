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

export default function UIAttributesInterfaceReconstitutionTest() {
  describe('UIAttributesInterfaceReconstitutionTest', () => {
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
     * @tc.number  SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0060
     * @tc.name    SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0060
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0060', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0060';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIAttributesInterfaceReconstitution/UIAttributesInterfaceReconstitution001");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0060_01');
      let button: Component = await driver.waitForComponent(ON.id('setting'), 1000);
      await button.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0060_02');
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0040
     * @tc.name    SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0040
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0040', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0040';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIAttributesInterfaceReconstitution/UIAttributesInterfaceReconstitution002");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0040_03');
      let button: Component = await driver.waitForComponent(ON.id('setting'), 1000);
      await button.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0040_04');
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0080
     * @tc.name    SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0080
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0080', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0080';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIAttributesInterfaceReconstitution/UIAttributesInterfaceReconstitution003");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0080_05');
      let button: Component = await driver.waitForComponent(ON.id('setting'), 1000);
      await button.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0080_06');
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0010
     * @tc.name    SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0010
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0010', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0010';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIAttributesInterfaceReconstitution/UIAttributesInterfaceReconstitution004");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0010_07');
      let button: Component = await driver.waitForComponent(ON.id('setting'), 1000);
      await button.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0010_08');
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0050
     * @tc.name    SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0050
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0050', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0050';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIAttributesInterfaceReconstitution/UIAttributesInterfaceReconstitution005");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0050_09');
      let button: Component = await driver.waitForComponent(ON.id('setting'), 1000);
      await button.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0050_10');
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0070
     * @tc.name    SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0070
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0070', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0070';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIAttributesInterfaceReconstitution/UIAttributesInterfaceReconstitution006");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0070_11');
      let button: Component = await driver.waitForComponent(ON.id('setting'), 1000);
      await button.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0070_12');
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0090
     * @tc.name    SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0090
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0090', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0090';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIAttributesInterfaceReconstitution/UIAttributesInterfaceReconstitution007");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0090_13');
      let button1: Component = await driver.waitForComponent(ON.id('normal'), 1000);
      await button1.click();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0090_14');
      let button2: Component = await driver.waitForComponent(ON.id('abnormal'), 1000);
      await button2.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0090_15');
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0030
     * @tc.name    SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0030
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0030', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0030';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIAttributesInterfaceReconstitution/UIAttributesInterfaceReconstitution008");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0030_16');
      let button: Component = await driver.waitForComponent(ON.id('setting'), 1000);
      await button.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0030_17');
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0020
     * @tc.name    SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0020
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0020', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0020';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIAttributesInterfaceReconstitution/UIAttributesInterfaceReconstitution009");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0020_18');
      let button: Component = await driver.waitForComponent(ON.id('setting'), 1000);
      await button.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0020_19');
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0100
     * @tc.name    SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0100
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0100', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0100';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIAttributesInterfaceReconstitution/UIAttributesInterfaceReconstitution010");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0100_20');
      let button: Component = await driver.waitForComponent(ON.id('normal'), 1000);
      await button.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0100_21');
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0160
     * @tc.name    SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0160
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0160', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0160';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIAttributesInterfaceReconstitution/UIAttributesInterfaceReconstitution011");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0160_22');
      let button1: Component = await driver.waitForComponent(ON.id('setting'), 1000);
      await button1.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0160_23');
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0140
     * @tc.name    SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0140
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0140', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0140';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIAttributesInterfaceReconstitution/UIAttributesInterfaceReconstitution012");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0140_24');
      let button: Component = await driver.waitForComponent(ON.id('setting'), 1000);
      await button.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0140_25');
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0130
     * @tc.name    SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0130
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0130', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0130';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIAttributesInterfaceReconstitution/UIAttributesInterfaceReconstitution013");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0130_26');
      let button1: Component = await driver.waitForComponent(ON.id('normal'), 1000);
      await button1.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0130_27');
      let button2: Component = await driver.waitForComponent(ON.id('abnormal'), 1000);
      await button2.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0130_28');
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0120
     * @tc.name    SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0120
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0120', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0120';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIAttributesInterfaceReconstitution/UIAttributesInterfaceReconstitution014");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0120_29');
      let button: Component = await driver.waitForComponent(ON.id('setting'), 1000);
      await button.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0120_30');
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0150
     * @tc.name    SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0150
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0150', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0150';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIAttributesInterfaceReconstitution/UIAttributesInterfaceReconstitution015");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0150_31');
      let button1: Component = await driver.waitForComponent(ON.id('setting'), 1000);
      await button1.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0150_32');
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0110
     * @tc.name    SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0110
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0110', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0110';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIAttributesInterfaceReconstitution/UIAttributesInterfaceReconstitution016");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0110_33');
      let button: Component = await driver.waitForComponent(ON.id('setting'), 1000);
      await button.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0110_34');
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0560
     * @tc.name    SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0560
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0560', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0560';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIAttributesInterfaceReconstitution/UIAttributesInterfaceReconstitution017");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0560_35');
      let button: Component = await driver.waitForComponent(ON.id('setting'), 1000);
      await button.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0560_36');
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0580
     * @tc.name    SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0580
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0580', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0580';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIAttributesInterfaceReconstitution/UIAttributesInterfaceReconstitution019");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0580_37');
      let button: Component = await driver.waitForComponent(ON.id('setting'), 1000);
      await button.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0580_38');
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0550
     * @tc.name    SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0550
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0550', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0550';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIAttributesInterfaceReconstitution/UIAttributesInterfaceReconstitution020");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0550_39');
      let button: Component = await driver.waitForComponent(ON.id('setting'), 1000);
      await button.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0550_40');
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0570
     * @tc.name    SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0570
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0570', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0570';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIAttributesInterfaceReconstitution/UIAttributesInterfaceReconstitution021");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0570_41');
      let button: Component = await driver.waitForComponent(ON.id('setting'), 1000);
      await button.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0570_42');
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0590
     * @tc.name    SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0590
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0590', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0590';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIAttributesInterfaceReconstitution/UIAttributesInterfaceReconstitution022");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0590_43');
      let button: Component = await driver.waitForComponent(ON.id('setting'), 1000);
      await button.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0590_44');
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0600
     * @tc.name    SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0600
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0600', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0600';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIAttributesInterfaceReconstitution/UIAttributesInterfaceReconstitution023");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0600_45');
      let button: Component = await driver.waitForComponent(ON.id('setting'), 1000);
      await button.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0600_46');
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0660
     * @tc.name    SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0660
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0660', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0660';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIAttributesInterfaceReconstitution/UIAttributesInterfaceReconstitution026");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0660_47');
      let button: Component = await driver.waitForComponent(ON.id('setting'), 1000);
      await button.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0660_48');
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0610
     * @tc.name    SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0610
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0610', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0610';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIAttributesInterfaceReconstitution/UIAttributesInterfaceReconstitution027");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0610_49');
      let button: Component = await driver.waitForComponent(ON.id('setting'), 1000);
      await button.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0610_50');
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0650
     * @tc.name    SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0650
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0650', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0650';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIAttributesInterfaceReconstitution/UIAttributesInterfaceReconstitution028");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      let button: Component = await driver.waitForComponent(ON.id('setting'), 1000);
      await button.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0630
     * @tc.name    SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0630
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0630', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0630';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIAttributesInterfaceReconstitution/UIAttributesInterfaceReconstitution029");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      let button: Component = await driver.waitForComponent(ON.id('setting'), 1000);
      await button.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0640
     * @tc.name    SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0640
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0640', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0640';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIAttributesInterfaceReconstitution/UIAttributesInterfaceReconstitution030");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      let button: Component = await driver.waitForComponent(ON.id('setting'), 1000);
      await button.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0620
     * @tc.name    SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0620
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0620', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0620';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIAttributesInterfaceReconstitution/UIAttributesInterfaceReconstitution031");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      let button: Component = await driver.waitForComponent(ON.id('setting'), 1000);
      await button.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0170
     * @tc.name    SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0170
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0170', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0170';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIAttributesInterfaceReconstitution/UIAttributesInterfaceReconstitution032");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      let button: Component = await driver.waitForComponent(ON.id('setting'), 1000);
      await button.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0190
     * @tc.name    SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0190
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0190', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0190';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIAttributesInterfaceReconstitution/UIAttributesInterfaceReconstitution033");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      let button: Component = await driver.waitForComponent(ON.id('setting'), 2000);
      await button.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0180
     * @tc.name    SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0180
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0180', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0180';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIAttributesInterfaceReconstitution/UIAttributesInterfaceReconstitution034");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      let button: Component = await driver.waitForComponent(ON.id('setting'), 1000);
      await button.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0210
     * @tc.name    SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0210
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0210', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0210';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIAttributesInterfaceReconstitution/UIAttributesInterfaceReconstitution035");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      let button: Component = await driver.waitForComponent(ON.id('setting'), 1000);
      await button.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0200
     * @tc.name    SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0200
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0200', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0200';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIAttributesInterfaceReconstitution/UIAttributesInterfaceReconstitution036");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      let button: Component = await driver.waitForComponent(ON.id('setting'), 1000);
      await button.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0220
     * @tc.name    SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0220
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0220', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0220';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIAttributesInterfaceReconstitution/UIAttributesInterfaceReconstitution037");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      let button: Component = await driver.waitForComponent(ON.id('setting'), 1000);
      await button.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0230
     * @tc.name    SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0230
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0230', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0230';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIAttributesInterfaceReconstitution/UIAttributesInterfaceReconstitution038");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      let button1: Component = await driver.waitForComponent(ON.id('normal'), 1000);
      await button1.click();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      let button2: Component = await driver.waitForComponent(ON.id('abnormal'), 1000);
      await button2.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0240
     * @tc.name    SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0240
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0240', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0240';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIAttributesInterfaceReconstitution/UIAttributesInterfaceReconstitution039");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      let button1: Component = await driver.waitForComponent(ON.id('normal'), 1000);
      await button1.click();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      let button2: Component = await driver.waitForComponent(ON.id('abnormal'), 1000);
      await button2.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0250
     * @tc.name    SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0250
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0250', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0250';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIAttributesInterfaceReconstitution/UIAttributesInterfaceReconstitution040");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      let button1: Component = await driver.waitForComponent(ON.id('normal'), 1000);
      await button1.click();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      let button2: Component = await driver.waitForComponent(ON.id('abnormal'), 1000);
      await button2.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0260
     * @tc.name    SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0260
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0260', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0260';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIAttributesInterfaceReconstitution/UIAttributesInterfaceReconstitution041");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      let button1: Component = await driver.waitForComponent(ON.id('normal'), 1000);
      await button1.click();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      let button2: Component = await driver.waitForComponent(ON.id('abnormal'), 1000);
      await button2.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0270
     * @tc.name    SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0270
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0270', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0270';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIAttributesInterfaceReconstitution/UIAttributesInterfaceReconstitution042");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      let button1: Component = await driver.waitForComponent(ON.id('normal'), 1000);
      await button1.click();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      let button2: Component = await driver.waitForComponent(ON.id('abnormal'), 1000);
      await button2.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0280
     * @tc.name    SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0280
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0280', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0280';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIAttributesInterfaceReconstitution/UIAttributesInterfaceReconstitution043");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      let button1: Component = await driver.waitForComponent(ON.id('normal'), 1000);
      await button1.click();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      let button2: Component = await driver.waitForComponent(ON.id('abnormal'), 1000);
      await button2.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0290
     * @tc.name    SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0290
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0290', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0290';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIAttributesInterfaceReconstitution/UIAttributesInterfaceReconstitution044");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      let button1: Component = await driver.waitForComponent(ON.id('normal'), 1000);
      await button1.click();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      let button2: Component = await driver.waitForComponent(ON.id('abnormal'), 1000);
      await button2.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0300
     * @tc.name    SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0300
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0300', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0300';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIAttributesInterfaceReconstitution/UIAttributesInterfaceReconstitution045");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      let button1: Component = await driver.waitForComponent(ON.id('normal'), 1000);
      await button1.click();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      let button2: Component = await driver.waitForComponent(ON.id('abnormal'), 1000);
      await button2.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0310
     * @tc.name    SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0310
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0310', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0310';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIAttributesInterfaceReconstitution/UIAttributesInterfaceReconstitution046");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      let button1: Component = await driver.waitForComponent(ON.id('normal'), 1000);
      await button1.click();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      let button2: Component = await driver.waitForComponent(ON.id('abnormal'), 1000);
      await button2.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0320
     * @tc.name    SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0320
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0320', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0320';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIAttributesInterfaceReconstitution/UIAttributesInterfaceReconstitution047");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      let button1: Component = await driver.waitForComponent(ON.id('normal'), 1000);
      await button1.click();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      let button2: Component = await driver.waitForComponent(ON.id('abnormal'), 1000);
      await button2.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0330
     * @tc.name    SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0330
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0330', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0330';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIAttributesInterfaceReconstitution/UIAttributesInterfaceReconstitution048");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      let button1: Component = await driver.waitForComponent(ON.id('normal'), 1000);
      await button1.click();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      let button2: Component = await driver.waitForComponent(ON.id('abnormal'), 1000);
      await button2.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0340
     * @tc.name    SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0340
     * @tc.level   0
     */
    it('SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0340', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_ATTRIBUTES__INTERFACE_RECONSTITUTION_0340';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIAttributesInterfaceReconstitution/UIAttributesInterfaceReconstitution049");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      let button1: Component = await driver.waitForComponent(ON.id('normal'), 1000);
      await button1.click();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      let button2: Component = await driver.waitForComponent(ON.id('abnormal'), 1000);
      await button2.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });
  })
}
