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

export default function UiComponentMediaMinorLanguage0051() {
  describe('UiComponentMediaMinorLanguage0051', () => {
    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_MINOR_LANGUAGE_0051
     * @tc.name   : Toggle minor language keep-app marker
     * @tc.desc   : Verify Toggle minor-language keep-app readiness marker without changing system locale.
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_MINOR_LANGUAGE_0051', Level.LEVEL3, async (done: Function) => {
      await Settings.changeWindow('testability/pages/UiComponentMediaMinorLanguage/UiComponentMediaMinorLanguage0051')
      let driver = await Driver.create()
      await Utils.sleep(1500)
      let btn = await driver.waitForComponent(ON.id('lang_toggle_btn_0051'), 8000)
      if (btn == undefined) {
        expect(false).assertTrue()
        done()
        return
      }
      await btn.click()
      await Utils.sleep(500)
      let result = await driver.waitForComponent(ON.id('assert_result_lang_0051'), 5000)
      if (result == undefined) {
        expect(false).assertTrue()
        done()
        return
      }
      let text = await result.getText()
      expect(text).assertEqual('minor_language_manual_pending')
      done()
    })
  })
}
