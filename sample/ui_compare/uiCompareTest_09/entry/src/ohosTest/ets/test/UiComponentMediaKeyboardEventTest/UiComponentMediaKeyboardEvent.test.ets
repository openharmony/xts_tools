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

export default function UiComponentMediaKeyboardEventTest() {
  describe('UiComponentMediaKeyboardEventTest', () => {
    let driver: Driver = Driver.create()

    beforeAll(async () => {
      console.info('UiComponentMediaKeyboardEventTest beforeAll')
    })

    beforeEach(async () => {
      console.info('UiComponentMediaKeyboardEventTest beforeEach')
    })

    afterEach(async () => {
      console.info('UiComponentMediaKeyboardEventTest afterEach')
      await driver.delayMs(500)
      if (Settings.windowClass) {
        await Settings.destroyWindow(Settings.windowClass)
      }
    })

    afterAll(async () => {
      console.info('UiComponentMediaKeyboardEventTest afterAll')
    })

    /*
     * @tc.number: SUB_ACE_UI_COMPONENT_MEDIA_KEYBOARD_Event_0010
     * @tc.name: KeyboardEvent0010
     * @tc.desc: Image组件键盘操作事件，Tab获焦，上下键切换
     * @tc.level: Level 3
     * @tc.type: Func
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_KEYBOARD_Event_0010', 0, async (done: Function) => {
      console.info('SUB_ACE_UI_COMPONENT_MEDIA_KEYBOARD_Event_0010 START')
      await Settings.createWindow('testability/pages/UiComponentMediaKeyboardEvent/KeyboardEvent0010')
      await driver.delayMs(1000)

      let title = await driver.findComponent(ON.id('title'))
      expect(title !== null).assertTrue()

      let image1 = await driver.findComponent(ON.id('image1'))
      expect(image1 !== null).assertTrue()

      let image2 = await driver.findComponent(ON.id('image2'))
      expect(image2 !== null).assertTrue()

      let image3 = await driver.findComponent(ON.id('image3'))
      expect(image3 !== null).assertTrue()

      await windowSnap.snapShot()
      await driver.delayMs(500)
      console.info('SUB_ACE_UI_COMPONENT_MEDIA_KEYBOARD_Event_0010 END')
      done()
    })

    /*
     * @tc.number: SUB_ACE_UI_COMPONENT_MEDIA_KEYBOARD_Event_0012
     * @tc.name: KeyboardEvent0012
     * @tc.desc: LoadingProgress组件键盘操作，无获焦边框，通过日志确认获焦
     * @tc.level: Level 3
     * @tc.type: Func
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_KEYBOARD_Event_0012', 0, async (done: Function) => {
      console.info('SUB_ACE_UI_COMPONENT_MEDIA_KEYBOARD_Event_0012 START')
      await Settings.createWindow('testability/pages/UiComponentMediaKeyboardEvent/KeyboardEvent0012')
      await driver.delayMs(1000)

      let title = await driver.findComponent(ON.id('title'))
      expect(title !== null).assertTrue()

      let loadingProgress = await driver.findComponent(ON.id('loadingProgress'))
      expect(loadingProgress !== null).assertTrue()

      let focusStatus = await driver.findComponent(ON.id('focusStatus'))
      expect(focusStatus !== null).assertTrue()

      await windowSnap.snapShot()
      await driver.delayMs(500)
      console.info('SUB_ACE_UI_COMPONENT_MEDIA_KEYBOARD_Event_0012 END')
      done()
    })

    /*
     * @tc.number: SUB_ACE_UI_COMPONENT_MEDIA_KEYBOARD_Event_0013
     * @tc.name: KeyboardEvent0013
     * @tc.desc: 胶囊样式Progress组件键盘获焦测试
     * @tc.level: Level 3
     * @tc.type: Func
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_KEYBOARD_Event_0013', 0, async (done: Function) => {
      console.info('SUB_ACE_UI_COMPONENT_MEDIA_KEYBOARD_Event_0013 START')
      await Settings.createWindow('testability/pages/UiComponentMediaKeyboardEvent/KeyboardEvent0013')
      await driver.delayMs(1000)

      let title = await driver.findComponent(ON.id('title'))
      expect(title !== null).assertTrue()

      let progressCapsule = await driver.findComponent(ON.id('progressCapsule'))
      expect(progressCapsule !== null).assertTrue()

      let progressLinear = await driver.findComponent(ON.id('progressLinear'))
      expect(progressLinear !== null).assertTrue()

      await windowSnap.snapShot()
      await driver.delayMs(500)
      console.info('SUB_ACE_UI_COMPONENT_MEDIA_KEYBOARD_Event_0013 END')
      done()
    })
  })
}


