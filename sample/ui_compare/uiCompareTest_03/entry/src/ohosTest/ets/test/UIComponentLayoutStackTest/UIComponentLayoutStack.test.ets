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
import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect } from '@ohos/hypium';
import { BusinessError } from '@kit.BasicServicesKit';
import { KeyCode } from '@kit.InputKit';
import { Driver, ON ,Component } from '@kit.TestKit';
import Settings from '../model/Settings';
import windowSnap from '../model/snapShot';
import Logger from '../model/Logger';
import Utils from '../model/Utils';


let TAG = 'RunTimeTest';

function sleep(ms: number) {
  return new Promise<string>(resolve => setTimeout(resolve, ms));
}

export default function UIComponentLayoutStack() {
  describe('UIComponentLayoutStack', () => {
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
          Logger.error(`[${TAG}]`, `Failed to destroy the window. Cause : ${JSON.stringify(err)}`)
          return;
        }
        Logger.info(`[${TAG}]`, `Succeeded in destroy the window.`);
      })
      await Utils.sleep(1000);
      done();
    })

    afterAll(() => {

    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_014
     * @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_014
     * @tc.desc    Add a Stack component with default alignContent value, setting both width and height parameters to 200
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_014', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LAYOUT_STACK_014';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentLayoutStack/UIComponentLayoutStack014');
      const driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      let button: Component = await driver.waitForComponent(ON.id('UIComponentLayoutStack014_001'), 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_015
     * @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_015
     * @tc.desc    Add a Stack component with default alignContent value, setting both width and height parameters to 200.5
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_015', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LAYOUT_STACK_015';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentLayoutStack/UIComponentLayoutStack015');
      const driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      let button: Component = await driver.waitForComponent(ON.id('UIComponentLayoutStack015_001'), 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_016
     * @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_016
     * @tc.desc    Add a Stack component with default alignContent value, setting both width and height parameters to 199.5
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_016', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LAYOUT_STACK_016';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentLayoutStack/UIComponentLayoutStack016');
      const driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      let button: Component = await driver.waitForComponent(ON.id('UIComponentLayoutStack016_001'), 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_017
     * @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_017
     * @tc.desc    Add a Stack component with default alignContent value, setting both width and height parameters to -10
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_017', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LAYOUT_STACK_017';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentLayoutStack/UIComponentLayoutStack017');
      const driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      let button: Component = await driver.waitForComponent(ON.id('UIComponentLayoutStack017_001'), 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_018
     * @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_018
     * @tc.desc    Add a Stack component with default alignContent value, setting both width and height parameters to "pp"
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_018', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LAYOUT_STACK_018';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentLayoutStack/UIComponentLayoutStack018');
      const driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      let button: Component = await driver.waitForComponent(ON.id('UIComponentLayoutStack018_001'), 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_019
     * @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_019
     * @tc.desc    Add stack, alignContent is the default value, width and height use resource references, assigned to 200
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_019', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LAYOUT_STACK_019';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentLayoutStack/UIComponentLayoutStack019');
      const driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      let button: Component = await driver.waitForComponent(ON.id('UIComponentLayoutStack019_001'), 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_020
     * @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_020
     * @tc.desc    Add a Stack component with default alignContent value, setting both width and height parameters to "80%"
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_020', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LAYOUT_STACK_020';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentLayoutStack/UIComponentLayoutStack020');
      const driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      let button: Component = await driver.waitForComponent(ON.id('UIComponentLayoutStack020_001'), 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_021
     * @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_021
     * @tc.desc    Add a Stack component with default alignContent value, setting both width and height parameters to 200
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_021', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LAYOUT_STACK_021';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentLayoutStack/UIComponentLayoutStack021');
      const driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      let button: Component = await driver.waitForComponent(ON.id('UIComponentLayoutStack021_001'), 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_022
     * @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_022
     * @tc.desc    Add a Stack component with default alignContent value, setting both width and height parameters to 200
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_022', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LAYOUT_STACK_022';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentLayoutStack/UIComponentLayoutStack022');
      const driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      let button: Component = await driver.waitForComponent(ON.id('UIComponentLayoutStack022_001'), 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_023
     * @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_023
     * @tc.desc    Add a Stack component with default alignContent value, setting both width and height parameters to 200
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_023', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LAYOUT_STACK_023';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentLayoutStack/UIComponentLayoutStack023');
      const driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      let button: Component = await driver.waitForComponent(ON.id('UIComponentLayoutStack023_001'), 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_024
     * @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_024
     * @tc.desc    Add a Stack component with default alignContent value, setting both width and height parameters to 200
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_024', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LAYOUT_STACK_024';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentLayoutStack/UIComponentLayoutStack024');
      const driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      let button: Component = await driver.waitForComponent(ON.id('UIComponentLayoutStack024_001'), 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_040
     * @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_040
     * @tc.desc    Add a Stack component with default alignContent value, setting both width and height parameters to 200
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_040', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LAYOUT_STACK_040';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentLayoutStack/UIComponentLayoutStack040');
      const driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_060
     * @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_060
     * @tc.desc    Create a Stack component and add a scale property with parameters "0.5,0.5,0.5,0.5"
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_060', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LAYOUT_STACK_060';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentLayoutStack/UIComponentLayoutStack060');
      const driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      let button: Component = await driver.waitForComponent(ON.id('UIComponentLayoutStack060_001'), 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_061
     * @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_061
     * @tc.desc    Create a Stack component with the rotate property set to "0.5,0.5,0.0,0,0,1,300,0"
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_061', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LAYOUT_STACK_061';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentLayoutStack/UIComponentLayoutStack061');
      const driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      let button: Component = await driver.waitForComponent(ON.id('UIComponentLayoutStack061_001'), 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_062
     * @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_062
     * @tc.desc    Create a Stack component and add a brightness property with parameters "10"
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_062', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LAYOUT_STACK_062';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentLayoutStack/UIComponentLayoutStack062');
      const driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      let button: Component = await driver.waitForComponent(ON.id('UIComponentLayoutStack062_001'), 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_063
     * @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_063
     * @tc.desc    Create a Stack component and add a saturate property with parameters "10"
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_063', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LAYOUT_STACK_063';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentLayoutStack/UIComponentLayoutStack063');
      const driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      let button: Component = await driver.waitForComponent(ON.id('UIComponentLayoutStack063_001'), 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_073
     * @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_073
     * @tc.desc    Create a Stack component and add an onClick event handler: () => console.log("touch event")
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_073', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LAYOUT_STACK_073';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentLayoutStack/UIComponentLayoutStack073');
      const driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      let button: Component = await driver.waitForComponent(ON.id('UIComponentLayoutStack073_003'), 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_074
     * @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_074
     * @tc.desc    Create a Stack component and set the margin property with parameters {10, 20, 30, 40}
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_074', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LAYOUT_STACK_074';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentLayoutStack/UIComponentLayoutStack074');
      const driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      let button: Component = await driver.waitForComponent(ON.id('UIComponentLayoutStack074_001'), 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_075
     * @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_075
     * @tc.desc    Create a Stack component and set the margin property with parameters { 9.5, 20.4, 29.9, 40.1}
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_075', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LAYOUT_STACK_075';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentLayoutStack/UIComponentLayoutStack075');
      const driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      let button: Component = await driver.waitForComponent(ON.id('UIComponentLayoutStack075_001'), 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_076
     * @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_076
     * @tc.desc    Create a Stack component and set the margin property with parameters {10}
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_076', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LAYOUT_STACK_076';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentLayoutStack/UIComponentLayoutStack076');
      const driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      let button: Component = await driver.waitForComponent(ON.id('UIComponentLayoutStack076_001'), 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_077
     * @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_077
     * @tc.desc    Create a Stack component and set the margin property with parameters { 10, 20, 30}
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_077', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LAYOUT_STACK_077';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentLayoutStack/UIComponentLayoutStack077');
      const driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      let button: Component = await driver.waitForComponent(ON.id('UIComponentLayoutStack077_001'), 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_078
     * @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_078
     * @tc.desc    Create a Stack component and set the margin property with parameters { 10, 20, 30, 40, 50}
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_078', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LAYOUT_STACK_078';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentLayoutStack/UIComponentLayoutStack078');
      const driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      let button: Component = await driver.waitForComponent(ON.id('UIComponentLayoutStack078_001'), 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_079
     * @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_079
     * @tc.desc    Create a Stack component and set the margin property with parameters { 10, 20, 30, 40, 50}
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_079', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LAYOUT_STACK_079';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentLayoutStack/UIComponentLayoutStack079');
      const driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      let button: Component = await driver.waitForComponent(ON.id('UIComponentLayoutStack079_001'), 1000);
      await button.click();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_080
     * @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_080
     * @tc.desc    Create a Stack component and set its align property to 'top-start'
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_080', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LAYOUT_STACK_080';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentLayoutStack/UIComponentLayoutStack080');
      const driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_081
     * @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_081
     * @tc.desc    Create a Stack component and set its align property to 'top'
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_081', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LAYOUT_STACK_081';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentLayoutStack/UIComponentLayoutStack081');
      const driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_082
     * @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_082
     * @tc.desc    Create a Stack component and set its align property to 'top-end'
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_082', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LAYOUT_STACK_082';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentLayoutStack/UIComponentLayoutStack082');
      const driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_083
     * @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_083
     * @tc.desc    Create a Stack component and set its align property to 'start'
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_083', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LAYOUT_STACK_083';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentLayoutStack/UIComponentLayoutStack083');
      const driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_084
     * @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_084
     * @tc.desc    Create a Stack component and set its align property to 'center'
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_084', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LAYOUT_STACK_084';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentLayoutStack/UIComponentLayoutStack084');
      const driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_085
     * @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_085
     * @tc.desc    Create a Stack component and set its align property to 'end'
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_085', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LAYOUT_STACK_085';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentLayoutStack/UIComponentLayoutStack085');
      const driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_086
     * @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_086
     * @tc.desc    Create a Stack component and set its align property to 'bottom-start'
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_086', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LAYOUT_STACK_086';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentLayoutStack/UIComponentLayoutStack086');
      const driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_087
     * @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_087
     * @tc.desc    Create a Stack component and set its align property to 'bottom'
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_087', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LAYOUT_STACK_087';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentLayoutStack/UIComponentLayoutStack087');
      const driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_088
     * @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_088
     * @tc.desc    Create a Stack component and set its align property to 'bottom-end'
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_088', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_LAYOUT_STACK_088';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentLayoutStack/UIComponentLayoutStack088');
      const driver = Driver.create();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

  })
}