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
      windowSnap.snapShot();
      let button: Component = await driver.waitForComponent(ON.id('normal'), 1000);
      await button.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
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
      windowSnap.snapShot();
      let button1: Component = await driver.waitForComponent(ON.id('setting'), 1000);
      await button1.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
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
      windowSnap.snapShot();
      let button1: Component = await driver.waitForComponent(ON.id('normal'), 1000);
      await button1.click();
      await driver.waitForIdle(500, 2000);
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
      windowSnap.snapShot();
      let button1: Component = await driver.waitForComponent(ON.id('setting'), 1000);
      await button1.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
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
  })
}
