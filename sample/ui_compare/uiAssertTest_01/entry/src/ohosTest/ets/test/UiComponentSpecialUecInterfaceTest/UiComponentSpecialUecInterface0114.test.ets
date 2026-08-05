/**
 * Copyright (c) 2026 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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

import { describe, it, expect, Level } from '@ohos/hypium'
import Settings from '../model/Settings'
import Utils from '../model/Utils'
import { Driver, ON } from '@kit.TestKit'

export default function UiComponentSpecialUecInterface0114() {
  describe('UiComponentSpecialUecInterface0114', () => {
    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UIEXTENSIONCOMPONENT_ARKUI_0114
     * @tc.name   : SPECIALCOMPONENTS UIEXTENSIONCOMPONENT 0114
     * @tc.desc   : Verify manual/external readiness marker for SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UIEXTENSIONCOMPONENT_ARKUI_0114: 美团三方应用测试场景.
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UIEXTENSIONCOMPONENT_ARKUI_0114', Level.LEVEL3, async (done: Function) => {
      await Settings.changeWindow('testability/pages/UiComponentSpecialUecInterface/UiComponentSpecialUecInterface0114')
      let driver = await Driver.create()
      await Utils.sleep(1500)
      let btn = await driver.waitForComponent(ON.id('btn_0114'), 8000)
      if (btn == undefined) {
        expect(false).assertTrue()
        done()
        return
      }
      await btn.click()
      await Utils.sleep(500)
      let result = await driver.waitForComponent(ON.id('assert_result_0114'), 5000)
      if (result == undefined) {
        expect(false).assertTrue()
        done()
        return
      }
      let text = await result.getText()
      expect(text).assertEqual('manual_case_pending')
      done()
    })
  })
}
