/**
 * Copyright (c) 2025 Shenzhen Kaihong Digital Industry Development Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import { describe, it, afterEach } from '@ohos/hypium';
import Settings from '../model/Settings';
import windowSnap from '../model/snapShot';
import Logger from '../model/Logger';
import Utils from '../model/Utils';
import { Driver, ON, Component } from '@kit.TestKit';

export default function UiComponentTextRicheditorStringurlTest() {
  describe('UiComponentTextRicheditorStringurlTest', () => {
    afterEach(async (done: Function) => {
      if (Settings.windowClass == undefined) {
        return;
      }
      Settings.windowClass.destroyWindow((err) => {
        if (err.code) {
          Logger.error('TEST', `Failed to destroy the window. Cause : ${JSON.stringify(err)}`);
          return;
        }
        Logger.info('TEST', `Succeeded in destroy the window.`);
      });
      await Utils.sleep(1000);
      done();
    });

    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringURL_00020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringURL_00020 start.`);
      Settings.createWindow('testability/pages/UiComponentTextRicheditorStringurl/UiComponentTextRicheditorStringurl00020');
      let driver: Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringURL_00020 finish.`);
      done();
    });

    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringURL_0003', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringURL_0003 start.`);
      Settings.createWindow('testability/pages/UiComponentTextRicheditorStringurl/UiComponentTextRicheditorStringurl0003');
      let driver: Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringURL_0003 finish.`);
      done();
    });

    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringURL_0004', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringURL_0004 start.`);
      Settings.createWindow('testability/pages/UiComponentTextRicheditorStringurl/UiComponentTextRicheditorStringurl0004');
      let driver: Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringURL_0004 finish.`);
      done();
    });

    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringURL_0005', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringURL_0005 start.`);
      Settings.createWindow('testability/pages/UiComponentTextRicheditorStringurl/UiComponentTextRicheditorStringurl0005');
      let driver: Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringURL_0005 finish.`);
      done();
    });

    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringURL_0009', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringURL_0009 start.`);
      Settings.createWindow('testability/pages/UiComponentTextRicheditorStringurl/UiComponentTextRicheditorStringurl0009');
      let driver: Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringURL_0009 finish.`);
      done();
    });

    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringURL_0010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringURL_0010 start.`);
      Settings.createWindow('testability/pages/UiComponentTextRicheditorStringurl/UiComponentTextRicheditorStringurl0010');
      let driver: Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringURL_0010 finish.`);
      done();
    });

    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringURL_0012', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringURL_0012 start.`);
      Settings.createWindow('testability/pages/UiComponentTextRicheditorStringurl/UiComponentTextRicheditorStringurl0012');
      let driver: Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringURL_0012 finish.`);
      done();
    });

    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringURL_0013', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringURL_0013 start.`);
      Settings.createWindow('testability/pages/UiComponentTextRicheditorStringurl/UiComponentTextRicheditorStringurl0013');
      let driver: Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringURL_0013 finish.`);
      done();
    });

    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringURL_0014', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringURL_0014 start.`);
      Settings.createWindow('testability/pages/UiComponentTextRicheditorStringurl/UiComponentTextRicheditorStringurl0014');
      let driver: Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringURL_0014 finish.`);
      done();
    });

    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringURL_0015', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringURL_0015 start.`);
      Settings.createWindow('testability/pages/UiComponentTextRicheditorStringurl/UiComponentTextRicheditorStringurl0015');
      let driver: Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringURL_0015 finish.`);
      done();
    });

    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringURL_0016', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringURL_0016 start.`);
      Settings.createWindow('testability/pages/UiComponentTextRicheditorStringurl/UiComponentTextRicheditorStringurl0016');
      let driver: Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringURL_0016 finish.`);
      done();
    });

    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringURL_0017', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringURL_0017 start.`);
      Settings.createWindow('testability/pages/UiComponentTextRicheditorStringurl/UiComponentTextRicheditorStringurl0017');
      let driver: Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringURL_0017 finish.`);
      done();
    });

    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringURL_0018', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringURL_0018 start.`);
      Settings.createWindow('testability/pages/UiComponentTextRicheditorStringurl/UiComponentTextRicheditorStringurl0018');
      let driver: Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringURL_0018 finish.`);
      done();
    });

    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringURL_0019', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringURL_0019 start.`);
      Settings.createWindow('testability/pages/UiComponentTextRicheditorStringurl/UiComponentTextRicheditorStringurl0019');
      let driver: Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringURL_0019 finish.`);
      done();
    });

  });
}
