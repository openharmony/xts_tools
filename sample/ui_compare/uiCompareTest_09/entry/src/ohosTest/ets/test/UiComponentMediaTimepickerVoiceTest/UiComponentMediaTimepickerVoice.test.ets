/*
 * Copyright (c) 2025 Shenzhen Kaihong Digital Industry Development Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect } from '@ohos/hypium'
import { Driver, ON } from '@ohos.UiTest'
import Settings from '../model/Settings'
import windowSnap from '../model/snapShot'

export default function UiComponentMediaTimepickerVoiceTest() {
  describe('UiComponentMediaTimepickerVoiceTest', () => {
    let driver: Driver = Driver.create()

    beforeAll(async () => {
      console.info('UiComponentMediaTimepickerVoiceTest beforeAll')
    })

    beforeEach(async () => {
      console.info('UiComponentMediaTimepickerVoiceTest beforeEach')
    })

    afterEach(async () => {
      console.info('UiComponentMediaTimepickerVoiceTest afterEach')
      await driver.delayMs(500)
      if (Settings.windowClass) {
        await Settings.destroyWindow(Settings.windowClass)
      }
    })

    afterAll(async () => {
      console.info('UiComponentMediaTimepickerVoiceTest afterAll')
    })

    /*
     * @tc.number: SUB_ACE_UI_COMPONENT_MEDIA_TIMEPICKER_VOICE_0014
     * @tc.name: TimepickerVoice0014
     * @tc.desc: TimePickerDialog设置enableHapticFeedback属性为string时编译报错
     * @tc.level: Level 3
     * @tc.type: Func
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_TIMEPICKER_VOICE_0014', 0, async (done: Function) => {
      console.info('SUB_ACE_UI_COMPONENT_MEDIA_TIMEPICKER_VOICE_0014 START')
      await Settings.createWindow('testability/pages/UiComponentMediaTimepickerVoice/TimepickerVoice0014')
      await driver.delayMs(1000)

      let title = await driver.findComponent(ON.id('title'))
      expect(title !== null).assertTrue()

      let openDialogBtn = await driver.findComponent(ON.id('openDialogBtn'))
      expect(openDialogBtn !== null).assertTrue()
      await openDialogBtn.click()
      await driver.delayMs(1500)

      await driver.pressBack()
      await driver.delayMs(500)

      await windowSnap.snapShot()
      await driver.delayMs(500)
      console.info('SUB_ACE_UI_COMPONENT_MEDIA_TIMEPICKER_VOICE_0014 END')
      done()
    })

    /*
     * @tc.number: SUB_ACE_UI_COMPONENT_MEDIA_TIMEPICKER_VOICE_0019
     * @tc.name: TimepickerVoice0019
     * @tc.desc: 手指快速抛划场景TimePickerDialog设置enableHapticFeedback属性为true
     * @tc.level: Level 3
     * @tc.type: Func
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_TIMEPICKER_VOICE_0019', 0, async (done: Function) => {
      console.info('SUB_ACE_UI_COMPONENT_MEDIA_TIMEPICKER_VOICE_0019 START')
      await Settings.createWindow('testability/pages/UiComponentMediaTimepickerVoice/TimepickerVoice0019')
      await driver.delayMs(1000)

      let title = await driver.findComponent(ON.id('title'))
      expect(title !== null).assertTrue()

      let openDialogBtn = await driver.findComponent(ON.id('openDialogBtn'))
      expect(openDialogBtn !== null).assertTrue()
      await openDialogBtn.click()
      await driver.delayMs(1500)

      await driver.pressBack()
      await driver.delayMs(500)

      await windowSnap.snapShot()
      await driver.delayMs(500)
      console.info('SUB_ACE_UI_COMPONENT_MEDIA_TIMEPICKER_VOICE_0019 END')
      done()
    })

    /*
     * @tc.number: SUB_ACE_UI_COMPONENT_MEDIA_TIMEPICKER_VOICE_0021
     * @tc.name: TimepickerVoice0021
     * @tc.desc: 播放音乐场景TimePickerDialog设置enableHapticFeedback属性为true
     * @tc.level: Level 3
     * @tc.type: Func
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_TIMEPICKER_VOICE_0021', 0, async (done: Function) => {
      console.info('SUB_ACE_UI_COMPONENT_MEDIA_TIMEPICKER_VOICE_0021 START')
      await Settings.createWindow('testability/pages/UiComponentMediaTimepickerVoice/TimepickerVoice0021')
      await driver.delayMs(1000)

      let title = await driver.findComponent(ON.id('title'))
      expect(title !== null).assertTrue()

      let musicBtn = await driver.findComponent(ON.id('musicBtn'))
      expect(musicBtn !== null).assertTrue()
      await musicBtn.click()
      await driver.delayMs(500)

      let openDialogBtn = await driver.findComponent(ON.id('openDialogBtn'))
      expect(openDialogBtn !== null).assertTrue()
      await openDialogBtn.click()
      await driver.delayMs(1500)

      await driver.pressBack()
      await driver.delayMs(500)

      await windowSnap.snapShot()
      await driver.delayMs(500)
      console.info('SUB_ACE_UI_COMPONENT_MEDIA_TIMEPICKER_VOICE_0021 END')
      done()
    })

    /*
     * @tc.number: SUB_ACE_UI_COMPONENT_MEDIA_TIMEPICKER_VOICE_0022
     * @tc.name: TimepickerVoice0022
     * @tc.desc: 多指滑动场景TimePickerDialog设置enableHapticFeedback属性为true
     * @tc.level: Level 3
     * @tc.type: Func
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_TIMEPICKER_VOICE_0022', 0, async (done: Function) => {
      console.info('SUB_ACE_UI_COMPONENT_MEDIA_TIMEPICKER_VOICE_0022 START')
      await Settings.createWindow('testability/pages/UiComponentMediaTimepickerVoice/TimepickerVoice0022')
      await driver.delayMs(1000)

      let title = await driver.findComponent(ON.id('title'))
      expect(title !== null).assertTrue()

      let openDialogBtn = await driver.findComponent(ON.id('openDialogBtn'))
      expect(openDialogBtn !== null).assertTrue()
      await openDialogBtn.click()
      await driver.delayMs(1500)

      await driver.pressBack()
      await driver.delayMs(500)

      await windowSnap.snapShot()
      await driver.delayMs(500)
      console.info('SUB_ACE_UI_COMPONENT_MEDIA_TIMEPICKER_VOICE_0022 END')
      done()
    })

    /*
     * @tc.number: SUB_ACE_UI_COMPONENT_MEDIA_TIMEPICKER_VOICE_0023
     * @tc.name: TimepickerVoice0023
     * @tc.desc: 手机静音场景TimePickerDialog设置enableHapticFeedback属性为true
     * @tc.level: Level 3
     * @tc.type: Func
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_TIMEPICKER_VOICE_0023', 0, async (done: Function) => {
      console.info('SUB_ACE_UI_COMPONENT_MEDIA_TIMEPICKER_VOICE_0023 START')
      await Settings.createWindow('testability/pages/UiComponentMediaTimepickerVoice/TimepickerVoice0023')
      await driver.delayMs(1000)

      let title = await driver.findComponent(ON.id('title'))
      expect(title !== null).assertTrue()

      let openDialogBtn = await driver.findComponent(ON.id('openDialogBtn'))
      expect(openDialogBtn !== null).assertTrue()
      await openDialogBtn.click()
      await driver.delayMs(1500)

      await driver.pressBack()
      await driver.delayMs(500)

      await windowSnap.snapShot()
      await driver.delayMs(500)
      console.info('SUB_ACE_UI_COMPONENT_MEDIA_TIMEPICKER_VOICE_0023 END')
      done()
    })
  })
}


