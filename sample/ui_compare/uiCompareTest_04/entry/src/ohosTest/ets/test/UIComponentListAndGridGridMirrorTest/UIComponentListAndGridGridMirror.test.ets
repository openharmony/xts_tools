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

export default function UIComponentListAndGridGridMirrorTest() {
  describe('UIComponentListAndGridGridMirrorTest', () => {
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
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_MIRROR_0100
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_MIRROR_0100
     * @tc.desc    Component 3 groups
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_MIRROR_0100', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_MIRROR_0100 start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridGridMirror/UIComponentListAndGridGridMirror001");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_MIRROR_0100 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_MIRROR_0380
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_MIRROR_0380
     * @tc.desc    Component 3 groups
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_MIRROR_0380', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_MIRROR_0100 start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridGridMirror/UIComponentListAndGridGridMirror002");
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id('change'), 1000);
      await button.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_MIRROR_0380 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_MIRROR_0440
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_MIRROR_0440
     * @tc.desc    Component 3 groups
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_MIRROR_0440', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_MIRROR_0440 start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridGridMirror/UIComponentListAndGridGridMirror003");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_MIRROR_0440 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_MIRROR_0450
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_MIRROR_0450
     * @tc.desc    Component 3 groups
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_MIRROR_0450', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_MIRROR_0450 start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridGridMirror/UIComponentListAndGridGridMirror004");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_MIRROR_0450 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_MIRROR_0430
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_MIRROR_0430
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_MIRROR_0430', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_MIRROR_0430 start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridGridMirror/UIComponentListAndGridGridMirror005");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_MIRROR_0430 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_MIRROR_0420
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_MIRROR_0420
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_MIRROR_0420', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_MIRROR_0420 start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridGridMirror/UIComponentListAndGridGridMirror006");
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id('change'), 1000);
      await button.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_MIRROR_0420 finish.`);
      done();
    });
  })
}
