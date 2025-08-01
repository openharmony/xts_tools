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

export default function TextRicheditorStopBackPress() {

  describe('TextRicheditorStopBackPress', () => {
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

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_StopBackPress_00003
       * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_StopBackPress_00003
       * @tc.desc    The RichEditor control supports developers to configure not to intercept onBackPressed edited text selection tests
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_StopBackPress_00003', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_StopBackPress_00003 start.`);
      Settings.createWindow("testability/pages/TextRicheditorStopBackPress/TextRicheditorStopBackPress03")
      let driver:Driver = Driver.create();
      // 通过ID定位（推荐）
      let component = await driver.waitForComponent(ON.id('TextRicheditorSearch_01'), 1000);  // 显式等待组件出现[6](@ref)
      await driver.click(30,120);
      await driver.waitForIdle(500,2000);
      await driver.drag(30,120,200,120,600);
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      await driver.triggerKey(2)
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_StopBackPress_00003 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_StopBackPress_00001
       * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_StopBackPress_00001
       * @tc.desc    The RichEditor control allows developers to configure not to intercept onBackPressed text input tests
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_StopBackPress_00001', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_StopBackPress_00001 start.`);
      Settings.createWindow("testability/pages/TextRicheditorStopBackPress/TextRicheditorStopBackPress03")
      let driver:Driver = Driver.create();
      // 通过ID定位（推荐）
      let component = await driver.waitForComponent(ON.id('TextRicheditorSearch_01'), 1000);  // 显式等待组件出现[6](@ref)
      await driver.click(30,120);
      await driver.waitForIdle(500,2000);
      await component.inputText("hello")
      await driver.waitForIdle(500,2000);
      await driver.triggerKey(2)
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_StopBackPress_00001 finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_StopBackPress_00002
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_StopBackPress_00002
     * @tc.desc    The RichEditor control allows developers to configure not to intercept onBackPressed text input tests
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_StopBackPress_00002', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_StopBackPress_00002 start.`);
      Settings.createWindow("testability/pages/TextRicheditorStopBackPress/TextRicheditorStopBackPress03")
      let driver:Driver = Driver.create();
      // 通过ID定位（推荐）
      let component = await driver.waitForComponent(ON.id('TextRicheditorSearch_01'), 1000);  // 显式等待组件出现[6](@ref)
      await driver.longClick(30, 80);
      await driver.waitForIdle(500,2000);
      await driver.drag(30,120,200,120,600);
      await driver.waitForIdle(500,2000);
      await driver.triggerKey(2)
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_StopBackPress_00001 finish.`);
      done();
    })
  })
}
