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
import { Driver, ON, Component, On } from '@ohos.UiTest'
import { Point } from '@kit.TestKit'

export default function StatusManagerV2IfElseAnimateToTest() {
  describe('StatusManagerV2IfElseAnimateToTest', () => {
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
     * @tc.number  SUB_ACE_STATUSMANAGERV2_IFELSE_ANIMATETO_0010
     * @tc.name    SUB_ACE_STATUSMANAGERV2_IFELSE_ANIMATETO_0010
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_STATUSMANAGERV2_IFELSE_ANIMATETO_0010', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_STATUSMANAGERV2_IFELSE_ANIMATETO_0010 start.`);
      Settings.createWindow("testability/pages/StatusManagerV2IfElseAnimateTo/StatusManagerV2IfElseAnimateTo001");
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id('changeData'), 3000);
      await button.click();
      await driver.waitForIdle(1000, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_STATUSMANAGERV2_IFELSE_ANIMATETO_0010 finish.`);
      done();
    });
    
    /*
     * @tc.number  SUB_ACE_STATUSMANAGERV2_IFELSE_ANIMATETO_0020
     * @tc.name    SUB_ACE_STATUSMANAGERV2_IFELSE_ANIMATETO_0020
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_STATUSMANAGERV2_IFELSE_ANIMATETO_0020', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_STATUSMANAGERV2_IFELSE_ANIMATETO_0020 start.`);
      Settings.createWindow("testability/pages/StatusManagerV2IfElseAnimateTo/StatusManagerV2IfElseAnimateTo002");
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id('changeData'), 1000);
      await button.click();
      await driver.waitForIdle(3000, 3000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_STATUSMANAGERV2_IFELSE_ANIMATETO_0020 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_STATUSMANAGERV2_IFELSE_ANIMATETO_0040
     * @tc.name    SUB_ACE_STATUSMANAGERV2_IFELSE_ANIMATETO_0040
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_STATUSMANAGERV2_IFELSE_ANIMATETO_0040', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_STATUSMANAGERV2_IFELSE_ANIMATETO_0040 start.`);
      Settings.createWindow("testability/pages/StatusManagerV2IfElseAnimateTo/StatusManagerV2IfElseAnimateTo003");
      let driver: Driver = Driver.create();
      let button1: Component = await driver.waitForComponent(ON.id('changeData1'), 1000);
      await button1.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      let button2: Component = await driver.waitForComponent(ON.id('pushUrl'), 1000);
      await button2.click();
      let button3: Component = await driver.waitForComponent(ON.id('changeData2'), 1000);
      await button3.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_STATUSMANAGERV2_IFELSE_ANIMATETO_0040 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_STATUSMANAGERV2_IFELSE_ANIMATETO_0050
     * @tc.name    SUB_ACE_STATUSMANAGERV2_IFELSE_ANIMATETO_0050
     * @tc.desc    Component 3 groups
     * @tc.level   3
     */
    it('SUB_ACE_STATUSMANAGERV2_IFELSE_ANIMATETO_0050', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_STATUSMANAGERV2_IFELSE_ANIMATETO_0050 start.`);
      Settings.createWindow("testability/pages/StatusManagerV2IfElseAnimateTo/StatusManagerV2IfElseAnimateTo005");
      let driver: Driver = Driver.create();
      let button1: Component = await driver.waitForComponent(ON.id('changeData1'), 1000);
      await button1.click();
      await driver.waitForIdle(500, 2000);
      await button1.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      let button2: Component = await driver.waitForComponent(ON.id('pushUrl'), 1000);
      await button2.click();
      let button3: Component = await driver.waitForComponent(ON.id('changeData2'), 1000);
      await button3.click();
      await driver.waitForIdle(500, 2000);
      await button3.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_STATUSMANAGERV2_IFELSE_ANIMATETO_0050 finish.`);
      done();
    });
  })
}
