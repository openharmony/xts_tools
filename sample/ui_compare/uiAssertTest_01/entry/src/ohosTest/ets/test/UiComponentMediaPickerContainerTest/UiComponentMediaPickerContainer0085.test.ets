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

export default function UiComponentMediaPickerContainer0085() {
  describe('UiComponentMediaPickerContainer0085', () => {
    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_PICKER_CONTAINER_0085
     * @tc.name   : Picker crown operation readiness marker
     * @tc.desc   : Verify Picker crown-operation automation readiness when crown hardware is absent.
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_PICKER_CONTAINER_0085', Level.LEVEL3, async (done: Function) => {
      await Settings.changeWindow('testability/pages/UiComponentMediaPickerContainer/UiComponentMediaPickerContainer0085')
      let driver = await Driver.create()
      await Utils.sleep(1500)
      let btn = await driver.waitForComponent(ON.id('picker_crown_btn'), 8000)
      if (btn == undefined) {
        expect(false).assertTrue()
        done()
        return
      }
      await btn.click()
      await Utils.sleep(500)
      let result = await driver.waitForComponent(ON.id('assert_result_crown_0085'), 5000)
      if (result == undefined) {
        expect(false).assertTrue()
        done()
        return
      }
      let text = await result.getText()
      expect(text).assertEqual('picker_crown_pending_or_skipped')
      done()
    })
  })
}
