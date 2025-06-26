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
import { Driver, ON, Component, On } from '@kit.TestKit';

export default function MediaTextpickerDisabletsa() {

  describe('MediaTextpickerDisabletsa', () => {
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
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_TEXTPICKER_DISABLETSA_0011
     * @tc.name   : SUB_ACE_UI_COMPONENT_MEDIA_TEXTPICKER_DISABLETSA_0011
     * @tc.desc   : The TextPicker component sets disableTextStyleAnimation to true, and sets the color of the defaultTextStyle property, the size, weight, minFontSize, maxFontSize, and overflow parameter outliers of -1, 0, 1, 99999, 10px, 100%, empty string, undefined, null combination, display the effect by default
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 1
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_TEXTPICKER_DISABLETSA_0011', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_TEXTPICKER_DISABLETSA_0011 start.`);
      Settings.createWindow("testability/pages/MediaTextpickerDisabletsa/MediaTextpickerDisabletsa")
      windowSnap.screenShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_TEXTPICKER_COLUMNWIDTHS_0015 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_TEXTPICKER_ONENTERSELECTEDAREA_MTBF_0010
     * @tc.name   : SUB_ACE_UI_COMPONENT_MEDIA_TEXTPICKER_ONENTERSELECTEDAREA_MTBF_0010
     * @tc.desc   : The TextPicker component quickly and frequently slides to validate the onEnterSelectedArea event call
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 1
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_TEXTPICKER_ONENTERSELECTEDAREA_MTBF_0010', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_TEXTPICKER_ONENTERSELECTEDAREA_MTBF_0010 start.`);
      Settings.createWindow("testability/pages/MediaTextpickerDisabletsa/MediaTextpickerOnenterselectedareaMtbf01")
      let driver:Driver = Driver.create();
      let component:Component = await driver.waitForComponent(ON.id('MediaTextpickerDisabletsa01'),1000);
      await component.scrollToTop()
      await driver.waitForIdle(500,2000)
      await component.scrollToBottom();
      await driver.waitForIdle(500,2000)
      windowSnap.screenShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_TEXTPICKER_ONENTERSELECTEDAREA_MTBF_0010 finish.`);
      done();
    })

    /*
 * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_TEXTPICKER_ONENTERSELECTEDAREA_MTBF_0020
 * @tc.name   : SUB_ACE_UI_COMPONENT_MEDIA_TEXTPICKER_ONENTERSELECTEDAREA_MTBF_0020
 * @tc.desc   : The TextPickerDialog component quickly and frequently slides to verify that the onEnterSelectedArea event is called
 * @tc.type   : Function
 * @tc.size   : MediumTest
 * @tc.level  : 1
 */
    it('SUB_ACE_UI_COMPONENT_MEDIA_TEXTPICKER_ONENTERSELECTEDAREA_MTBF_0020', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_TEXTPICKER_ONENTERSELECTEDAREA_MTBF_0020 start.`);
      Settings.createWindow("testability/pages/MediaTextpickerDisabletsa/MediaTextpickerOnenterselectedareaMtbf02")
      let driver:Driver = Driver.create();
      let component:Component = await driver.waitForComponent(ON.id('MediaTextpickerDisabletsa01'),1000);
      await component.click()
      await driver.waitForIdle(500,2000)
      await driver.fling({x:350,y:650},{x:350,y:150},5,600)
      await driver.waitForIdle(500,2000)
      windowSnap.screenShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_TEXTPICKER_ONENTERSELECTEDAREA_MTBF_0010 finish.`);
      done();
    })

  })
}
