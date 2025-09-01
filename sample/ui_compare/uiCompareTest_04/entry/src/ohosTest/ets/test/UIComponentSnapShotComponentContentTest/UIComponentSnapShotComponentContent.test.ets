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

export default function UIComponentSnapShotComponentContentTest() {
  describe('UIComponentSnapShotComponentContentTest', () => {
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
     * @tc.number  SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0010
     * @tc.name    SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0010
     * @tc.desc    Interactive Framework Group
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0010', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0010';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentSnapShotComponentContent/UIComponentSnapShotComponentContent001");
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id('click'), 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      let button1: Component = await driver.waitForComponent(ON.id('snapShot'), 1000);
      await button1.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0650
     * @tc.name    SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0650
     * @tc.desc    Interactive Framework Group
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0650', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0650';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentSnapShotComponentContent/UIComponentSnapShotComponentContent002");
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id('click'), 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      let button1: Component = await driver.waitForComponent(ON.id('change'), 1000);
      await button1.click();
      await driver.waitForIdle(500, 1000);
      let button2: Component = await driver.waitForComponent(ON.id('snapShot'), 1000);
      await button2.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0550
     * @tc.name    SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0550
     * @tc.desc    Interactive Framework Group
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0550', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0550';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentSnapShotComponentContent/UIComponentSnapShotComponentContent003");
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id('click'), 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      let button1: Component = await driver.waitForComponent(ON.id('change'), 1000);
      await button1.click();
      await driver.waitForIdle(500, 1000);
      let button2: Component = await driver.waitForComponent(ON.id('snapShot'), 1000);
      await button2.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0450
     * @tc.name    SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0450
     * @tc.desc    Interactive Framework Group
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0450', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0450';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentSnapShotComponentContent/UIComponentSnapShotComponentContent004");
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id('click'), 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      let button1: Component = await driver.waitForComponent(ON.id('change'), 1000);
      await button1.click();
      await driver.waitForIdle(500, 1000);
      let button2: Component = await driver.waitForComponent(ON.id('snapShot'), 1000);
      await button2.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0480
     * @tc.name    SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0480
     * @tc.desc    Interactive Framework Group
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0480', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0480';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentSnapShotComponentContent/UIComponentSnapShotComponentContent005");
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id('click'), 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      let button1: Component = await driver.waitForComponent(ON.id('change'), 1000);
      await button1.click();
      await driver.waitForIdle(500, 1000);
      let button2: Component = await driver.waitForComponent(ON.id('snapShot'), 1000);
      await button2.click();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });
  })
}
