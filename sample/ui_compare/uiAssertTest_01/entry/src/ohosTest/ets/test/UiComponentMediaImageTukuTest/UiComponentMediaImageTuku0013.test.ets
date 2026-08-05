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

export default function UiComponentMediaImageTuku0013() {
  describe('UiComponentMediaImageTuku0013', () => {
    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_TUKU_0013
     * @tc.name   : Third-party/media image marker: 图库大屏横屏多任务切换
     * @tc.desc   : Verify readiness marker for SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_TUKU_0013 without external app/device.
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_TUKU_0013', Level.LEVEL3, async (done: Function) => {
      await Settings.changeWindow('testability/pages/UiComponentMediaImageTuku/UiComponentMediaImageTuku0013')
      let driver = await Driver.create()
      await Utils.sleep(1500)
      let btn = await driver.waitForComponent(ON.id('app_img_btn_0013'), 8000)
      if (btn == undefined) {
        expect(false).assertTrue()
        done()
        return
      }
      await btn.click()
      await Utils.sleep(500)
      let result = await driver.waitForComponent(ON.id('assert_result_app_0013'), 5000)
      if (result == undefined) {
        expect(false).assertTrue()
        done()
        return
      }
      let text = await result.getText()
      expect(text).assertEqual('third_party_app_image_manual')
      done()
    })
  })
}
