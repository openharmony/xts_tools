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

export default function specialComponentsTest() {

  describe('specialComponentsTest', () => {
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
     * @tc.number : SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UICONTEXT_ADDMENUFOCUS_0290
     * @tc.name   : Close the menu by calling the close method of getContextMenuController.
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UICONTEXT_ADDMENUFOCUS_0290', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UICONTEXT_ADDMENUFOCUS_0290 start.`);
      Settings.createWindow("testability/pages/special_components/menuController")
      await Utils.sleep(1000)
      let driver:Driver = Driver.create();
      let button1: Component = await driver.findComponent(ON.id('getContextClick'));
      await button1.longClick();
      await Utils.sleep(500)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UICONTEXT_ADDMENUFOCUS_0290_01')
      await Utils.sleep(1000)
      let button2: Component = await driver.findComponent(ON.text('onHoverClose'));
      Logger.info('TEST', `button2 is： ${button2}.`);
      let point = await button2.getBoundsCenter();
      await driver.mouseMoveTo({x:point.x, y:point.y})
      await Utils.sleep(500)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UICONTEXT_ADDMENUFOCUS_0290_02')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UICONTEXT_ADDMENUFOCUS_0290 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UICONTEXT_ADDMENUFOCUS_0250
     * @tc.name   : Click on the TextInput component, rotate the screen to landscape mode, the soft keyboard does not
     * fully close, and the textInput remains focused.
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UICONTEXT_ADDMENUFOCUS_0250', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UICONTEXT_ADDMENUFOCUS_0250 start.`);
      Settings.createWindow("testability/pages/special_components/textInput")
      await Utils.sleep(1000)
      let driver:Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('textInput01'));
      await button.click();
      await Utils.sleep(500)
      Settings.changeWindowOrientation()
      await Utils.sleep(500)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UICONTEXT_ADDMENUFOCUS_0250_01')
      Settings.changeWindowOrientation()
      await Utils.sleep(500)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UICONTEXT_ADDMENUFOCUS_0250_02')
      Settings.changeWindowOrientation()
      await Utils.sleep(500)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UICONTEXT_ADDMENUFOCUS_0250_03')
      await Utils.sleep(1000)
      Settings.changeWindowOrientation('end')
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UICONTEXT_ADDMENUFOCUS_0250 finish.`);
      done()
    })
  })
}
