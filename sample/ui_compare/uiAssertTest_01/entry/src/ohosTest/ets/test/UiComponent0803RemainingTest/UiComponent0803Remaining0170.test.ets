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

export default function UiComponent0803Remaining0170() {
  describe('UiComponent0803Remaining0170', () => {
    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_CAPABILITY_0170
     * @tc.name   : LAYOUT MODIFIER CAPABILITY 0170
     * @tc.desc   : Verify manual/external readiness marker for SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_CAPABILITY_0170: Video组件支持Modifier动态设置analyzerConfig属性.
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_CAPABILITY_0170', Level.LEVEL3, async (done: Function) => {
      await Settings.changeWindow('testability/pages/UiComponent0803Remaining/UiComponent0803Remaining0170')
      let driver = await Driver.create()
      await Utils.sleep(1500)
      let btn = await driver.waitForComponent(ON.id('btn_0170'), 8000)
      if (btn == undefined) {
        expect(false).assertTrue()
        done()
        return
      }
      await btn.click()
      await Utils.sleep(500)
      let result = await driver.waitForComponent(ON.id('assert_result_0170'), 5000)
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
