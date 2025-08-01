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
import { Driver, ON, Component } from '@kit.TestKit';

export default function SpecialcomponentsUicontext() {

  describe('SpecialcomponentsUicontext', () => {
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
     * @tc.number : SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UICONTEXT_COMPONENTSNAPSHOT_0050
     * @tc.name   : SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UICONTEXT_COMPONENTSNAPSHOT_0050
     * @tc.desc   : Use get(id,callback) to get a screenshot of the List component, and the component is out of the screen
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UICONTEXT_COMPONENTSNAPSHOT_0050', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UICONTEXT_COMPONENTSNAPSHOT_0050 start.`);
      Settings.createWindow("testability/pages/SpecialcomponentsUicontext/SpecialcomponentsUicontext50")
      let driver:Driver = Driver.create();
      // 通过ID定位（推荐）
      let component = await driver.waitForComponent(ON.id('button'), 1000);  // 显式等待组件出现[6](@ref)
      await component.click();
      await driver.waitForIdle(500,2000);
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UICONTEXT_COMPONENTSNAPSHOT_0050 finish.`);
      done();
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UICONTEXT_COMPONENTSNAPSHOT_00290
     * @tc.name   : SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UICONTEXT_COMPONENTSNAPSHOT_00290
     * @tc.desc   : Use get(id) to get a screenshot of the Text component, and set the visibility property of the component
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UICONTEXT_COMPONENTSNAPSHOT_00290', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UICONTEXT_COMPONENTSNAPSHOT_00290 start.`);
      Settings.createWindow("testability/pages/SpecialcomponentsUicontext/SpecialcomponentsUicontext290")
      let driver:Driver = Driver.create();
      // 通过ID定位（推荐）
      let component = await driver.waitForComponent(ON.id('button'), 1000);  // 显式等待组件出现[6](@ref)
      await component.click();
      await driver.waitForIdle(500,2000);
      component = await driver.waitForComponent(ON.id('button_1'), 1000);  // 显式等待组件出现[6](@ref)
      await component.click();
      await driver.waitForIdle(500,2000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UICONTEXT_COMPONENTSNAPSHOT_0290 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UICONTEXT_COMPONENTSNAPSHOT_00420
     * @tc.name   : SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UICONTEXT_COMPONENTSNAPSHOT_00420
     * @tc.desc   : Use get(id) to get a screenshot of the Text component, and set the visibility property of the component
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UICONTEXT_COMPONENTSNAPSHOT_00420', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UICONTEXT_COMPONENTSNAPSHOT_00420 start.`);
      Settings.createWindow("testability/pages/SpecialcomponentsUicontext/SpecialcomponentsUicontext420")
      let driver:Driver = Driver.create();
      // 通过ID定位（推荐）
      let component = await driver.waitForComponent(ON.id('button'), 1000);  // 显式等待组件出现[6](@ref)
      await component.click();
      await driver.waitForIdle(500,2000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UICONTEXT_COMPONENTSNAPSHOT_00420 finish.`);
      done();
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UICONTEXT_COMPONENTSNAPSHOT_00700
     * @tc.name   : SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UICONTEXT_COMPONENTSNAPSHOT_00700
     * @tc.desc   : click to generate UI snapshot
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UICONTEXT_COMPONENTSNAPSHOT_00700', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UICONTEXT_COMPONENTSNAPSHOT_00700 start.`);
      Settings.createWindow("testability/pages/SpecialcomponentsUicontext/SpecialcomponentsUicontext420")
      let driver:Driver = Driver.create();
      // 通过ID定位（推荐）
      let component = await driver.waitForComponent(ON.id('button'), 1000);  // 显式等待组件出现[6](@ref)
      // 循环点击50次
      for (let i = 0; i < 50; i++) {
        await component.click();
        await driver.delayMs(10); // 每次点击间隔100ms防止过快触发防抖
      }
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UICONTEXT_COMPONENTSNAPSHOT_00700 finish.`);
      done();
    })
  })
}
