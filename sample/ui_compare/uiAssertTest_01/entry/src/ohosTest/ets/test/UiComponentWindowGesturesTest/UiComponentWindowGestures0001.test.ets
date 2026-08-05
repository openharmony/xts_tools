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

export default function UiComponentWindowGestures0001() {
  describe('UiComponentWindowGestures0001', () => {
    /*
     * @tc.number : SUB_ACE_TOOLCHAIN_ARKUI_SR20250428415694_UI_WINDOW_GESTURES_0001
     * @tc.name   : SR20250428415694 WINDOW GESTURES 0001
     * @tc.desc   : Verify automation readiness marker for SUB_ACE_TOOLCHAIN_ARKUI_SR20250428415694_UI_WINDOW_GESTURES_0001: 日志打印正确.
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_TOOLCHAIN_ARKUI_SR20250428415694_UI_WINDOW_GESTURES_0001', Level.LEVEL3, async (done: Function) => {
      await Settings.changeWindow('testability/pages/UiComponentWindowGestures/UiComponentWindowGestures0001')
      let driver = await Driver.create()
      await Utils.sleep(1500)
      let btn = await driver.waitForComponent(ON.id('btn_0001'), 8000)
      if (btn == undefined) {
        expect(false).assertTrue()
        done()
        return
      }
      await btn.click()
      await Utils.sleep(500)
      let result = await driver.waitForComponent(ON.id('assert_result_0001'), 5000)
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
