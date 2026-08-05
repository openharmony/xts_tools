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

export default function UiComponentSuecDarkLight0015() {
  describe('UiComponentSuecDarkLight0015', () => {
    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_ARKUI_DARK_LIGHT_0015
     * @tc.name   : SPECIALCOMPONENTS DARK LIGHT 0015
     * @tc.desc   : Verify automation readiness marker for SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_ARKUI_DARK_LIGHT_0015: 深色模式SUEC触发terminate事件.
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_ARKUI_DARK_LIGHT_0015', Level.LEVEL3, async (done: Function) => {
      await Settings.changeWindow('testability/pages/UiComponentSuecDarkLight/UiComponentSuecDarkLight0015')
      let driver = await Driver.create()
      await Utils.sleep(1500)
      let btn = await driver.waitForComponent(ON.id('btn_0015'), 8000)
      if (btn == undefined) {
        expect(false).assertTrue()
        done()
        return
      }
      await btn.click()
      await Utils.sleep(500)
      let result = await driver.waitForComponent(ON.id('assert_result_0015'), 5000)
      if (result == undefined) {
        expect(false).assertTrue()
        done()
        return
      }
      let text = await result.getText()
      expect(text).assertEqual('assert_ready_pending')
      done()
    })
  })
}
