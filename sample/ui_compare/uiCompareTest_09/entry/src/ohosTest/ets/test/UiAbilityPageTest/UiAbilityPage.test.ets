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

import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect, Level } from '@ohos/hypium'
import Settings from '../model/Settings'
import windowSnap from '../model/snapShot'
import Logger from '../model/Logger'
import Utils from '../model/Utils'
import { Driver, ON, Component,} from '@kit.TestKit';

export default function UiAbilityPage() {
  describe('UiAbilityPage', () => {
    afterEach(async (done: Function) => {
      if (Settings.windowClass == undefined) {
        return
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

    it('SUB_ACE_UI_ABILITY_PAGE_0010', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_PAGE_0010 start.`);
      Settings.createWindow("testability/pages/UiAbilityPage/UiAbilityPage10")
      let driver:Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_PAGE_0010 finish.`);
      done();
    })

    it('SUB_ACE_UI_ABILITY_PAGE_0020', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_PAGE_0020 start.`);
      Settings.createWindow("testability/pages/UiAbilityPage/UiAbilityPage20")
      let driver:Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_PAGE_0020 finish.`);
      done();
    })

    it('SUB_ACE_UI_ABILITY_PAGE_0030', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_PAGE_0030 start.`);
      Settings.createWindow("testability/pages/UiAbilityPage/UiAbilityPage30")
      let driver:Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_PAGE_0030 finish.`);
      done();
    })

    it('SUB_ACE_UI_ABILITY_PAGE_0040', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_PAGE_0040 start.`);
      Settings.createWindow("testability/pages/UiAbilityPage/UiAbilityPage40")
      let driver:Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_PAGE_0040 finish.`);
      done();
    })

    it('SUB_ACE_UI_ABILITY_PAGE_0050', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_PAGE_0050 start.`);
      Settings.createWindow("testability/pages/UiAbilityPage/UiAbilityPage50")
      let driver:Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_PAGE_0050 finish.`);
      done();
    })

    it('SUB_ACE_UI_ABILITY_PAGE_0060', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_PAGE_0060 start.`);
      Settings.createWindow("testability/pages/UiAbilityPage/UiAbilityPage60")
      let driver:Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_PAGE_0060 finish.`);
      done();
    })

    it('SUB_ACE_UI_ABILITY_PAGE_0070', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_PAGE_0070 start.`);
      Settings.createWindow("testability/pages/UiAbilityPage/UiAbilityPage70")
      let driver:Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_PAGE_0070 finish.`);
      done();
    })

    it('SUB_ACE_UI_ABILITY_PAGE_0080', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_PAGE_0080 start.`);
      Settings.createWindow("testability/pages/UiAbilityPage/UiAbilityPage80")
      let driver:Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_PAGE_0080 finish.`);
      done();
    })

    it('SUB_ACE_UI_ABILITY_PAGE_0090', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_PAGE_0090 start.`);
      Settings.createWindow("testability/pages/UiAbilityPage/UiAbilityPage90")
      let driver:Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_PAGE_0090 finish.`);
      done();
    })

    it('SUB_ACE_UI_ABILITY_PAGE_0110', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_PAGE_0110 start.`);
      Settings.createWindow("testability/pages/UiAbilityPage/UiAbilityPage110")
      let driver:Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_PAGE_0110 finish.`);
      done();
    })

    it('SUB_ACE_UI_ABILITY_PAGE_0120', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_PAGE_0120 start.`);
      Settings.createWindow("testability/pages/UiAbilityPage/UiAbilityPage120")
      let driver:Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_PAGE_0120 finish.`);
      done();
    })

    it('SUB_ACE_UI_ABILITY_PAGE_0130', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_PAGE_0130 start.`);
      Settings.createWindow("testability/pages/UiAbilityPage/UiAbilityPage130")
      let driver:Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_PAGE_0130 finish.`);
      done();
    })

    it('SUB_ACE_UI_ABILITY_PAGE_0140', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_PAGE_0140 start.`);
      Settings.createWindow("testability/pages/UiAbilityPage/UiAbilityPage140")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_PAGE_0140 finish.`);
      done();
    })

    it('SUB_ACE_UI_ABILITY_PAGE_0150', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_PAGE_0150 start.`);
      Settings.createWindow("testability/pages/UiAbilityPage/UiAbilityPage150")
      let driver:Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_PAGE_0150 finish.`);
      done();
    })

    it('SUB_ACE_UI_ABILITY_PAGE_0170', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_PAGE_0170 start.`);
      Settings.createWindow("testability/pages/UiAbilityPage/UiAbilityPage170")
      let driver:Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_PAGE_0170 finish.`);
      done();
    })

    it('SUB_ACE_UI_ABILITY_PAGE_0180', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_PAGE_0180 start.`);
      Settings.createWindow("testability/pages/UiAbilityPage/UiAbilityPage180")
      let driver:Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_PAGE_0180 finish.`);
      done();
    })

    it('SUB_ACE_UI_ABILITY_PAGE_0190', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_PAGE_0190 start.`);
      Settings.createWindow("testability/pages/UiAbilityPage/UiAbilityPage190")
      let driver:Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_PAGE_0190 finish.`);
      done();
    })

    it('SUB_ACE_UI_ABILITY_PAGE_0200', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_PAGE_0200 start.`);
      Settings.createWindow("testability/pages/UiAbilityPage/UiAbilityPage200")
      let driver:Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_PAGE_0200 finish.`);
      done();
    })

    it('SUB_ACE_UI_ABILITY_PAGE_0210', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_PAGE_0210 start.`);
      Settings.createWindow("testability/pages/UiAbilityPage/UiAbilityPage210")
      let driver:Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_PAGE_0210 finish.`);
      done();
    })

    it('SUB_ACE_UI_ABILITY_PAGE_0220', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_PAGE_0220 start.`);
      Settings.createWindow("testability/pages/UiAbilityPage/UiAbilityPage220")
      let driver:Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_PAGE_0220 finish.`);
      done();
    })

    it('SUB_ACE_UI_ABILITY_PAGE_0230', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_PAGE_0230 start.`);
      Settings.createWindow("testability/pages/UiAbilityPage/UiAbilityPage230")
      let driver:Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_PAGE_0230 finish.`);
      done();
    })

    it('SUB_ACE_UI_ABILITY_PAGE_0240', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_PAGE_0240 start.`);
      Settings.createWindow("testability/pages/UiAbilityPage/UiAbilityPage240")
      let driver:Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_PAGE_0240 finish.`);
      done();
    })

    it('SUB_ACE_UI_ABILITY_PAGE_0260', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_PAGE_0260 start.`);
      Settings.createWindow("testability/pages/UiAbilityPage/UiAbilityPage260")
      let driver:Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_PAGE_0260 finish.`);
      done();
    })

    it('SUB_ACE_UI_ABILITY_PAGE_0270', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_PAGE_0270 start.`);
      Settings.createWindow("testability/pages/UiAbilityPage/UiAbilityPage270")
      let driver:Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_ABILITY_PAGE_0270 finish.`);
      done();
    })
  })
}

