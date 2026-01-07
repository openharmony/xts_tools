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

export default function UiComponentNavNavdestinationSuitableforagingTest() {
  describe('UiComponentNavNavdestinationSuitableforagingTest', () => {
    let driver: Driver = Driver.create()

    beforeAll(async () => {
      console.info('UiComponentNavNavdestinationSuitableforagingTest beforeAll')
    })

    beforeEach(async () => {
      console.info('UiComponentNavNavdestinationSuitableforagingTest beforeEach')
    })

    afterEach(async () => {
      console.info('UiComponentNavNavdestinationSuitableforagingTest afterEach')
      await driver.delayMs(500)
      if (Settings.windowClass) {
        await Settings.destroyWindow(Settings.windowClass)
      }
    })

    afterAll(async () => {
      console.info('UiComponentNavNavdestinationSuitableforagingTest afterAll')
    })

    /*
     * @tc.number: SUB_ACE_UI_COMPONENT_NAV_NAVDESTINATION_SUITABLEFORAGING_0030
     * @tc.name: NavdestinationSuitableforaging0030
     * @tc.desc: NavDestination适老化适配超长文本场景
     * @tc.level: Level 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVDESTINATION_SUITABLEFORAGING_0030', 0, async (done: Function) => {
      console.info('SUB_ACE_UI_COMPONENT_NAV_NAVDESTINATION_SUITABLEFORAGING_0030 START')
      await Settings.createWindow('testability/pages/UiComponentNavNavdestinationSuitableforaging/NavdestinationSuitableforaging0030')
      await driver.delayMs(1000)

      let title = await driver.findComponent(ON.id('title'))
      expect(title !== null).assertTrue()

      let menuBtn = await driver.findComponent(ON.id('menuBtn'))
      expect(menuBtn !== null).assertTrue()
      await menuBtn.click()
      await driver.delayMs(500)

      await windowSnap.snapShot()
      await driver.delayMs(500)
      console.info('SUB_ACE_UI_COMPONENT_NAV_NAVDESTINATION_SUITABLEFORAGING_0030 END')
      done()
    })

    /*
     * @tc.number: SUB_ACE_UI_COMPONENT_NAV_NAVDESTINATION_SUITABLEFORAGING_0060
     * @tc.name: NavdestinationSuitableforaging0060
     * @tc.desc: NavDestination适老化适配左右滑动场景
     * @tc.level: Level 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVDESTINATION_SUITABLEFORAGING_0060', 0, async (done: Function) => {
      console.info('SUB_ACE_UI_COMPONENT_NAV_NAVDESTINATION_SUITABLEFORAGING_0060 START')
      await Settings.createWindow('testability/pages/UiComponentNavNavdestinationSuitableforaging/NavdestinationSuitableforaging0060')
      await driver.delayMs(1000)

      let title = await driver.findComponent(ON.id('title'))
      expect(title !== null).assertTrue()

      let navigationArea = await driver.findComponent(ON.id('navigationArea'))
      expect(navigationArea !== null).assertTrue()

      await windowSnap.snapShot()
      await driver.delayMs(500)
      console.info('SUB_ACE_UI_COMPONENT_NAV_NAVDESTINATION_SUITABLEFORAGING_0060 END')
      done()
    })

    /*
     * @tc.number: SUB_ACE_UI_COMPONENT_NAV_NAVDESTINATION_SUITABLEFORAGING_0090
     * @tc.name: NavdestinationSuitableforaging0090
     * @tc.desc: NavDestination适老化适配锁屏与热启动场景
     * @tc.level: Level 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVDESTINATION_SUITABLEFORAGING_0090', 0, async (done: Function) => {
      console.info('SUB_ACE_UI_COMPONENT_NAV_NAVDESTINATION_SUITABLEFORAGING_0090 START')
      await Settings.createWindow('testability/pages/UiComponentNavNavdestinationSuitableforaging/NavdestinationSuitableforaging0090')
      await driver.delayMs(1000)

      let title = await driver.findComponent(ON.id('title'))
      expect(title !== null).assertTrue()

      let menuBtn = await driver.findComponent(ON.id('menuBtn'))
      expect(menuBtn !== null).assertTrue()
      await menuBtn.click()
      await driver.delayMs(500)

      await windowSnap.snapShot()
      await driver.delayMs(500)
      console.info('SUB_ACE_UI_COMPONENT_NAV_NAVDESTINATION_SUITABLEFORAGING_0090 END')
      done()
    })
  })
}

