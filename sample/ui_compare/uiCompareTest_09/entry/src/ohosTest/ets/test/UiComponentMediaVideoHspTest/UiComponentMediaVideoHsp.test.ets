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

export default function UiComponentMediaVideoHspTest() {
  describe('UiComponentMediaVideoHspTest', () => {
    let driver: Driver = Driver.create()

    beforeAll(async () => {
      console.info('UiComponentMediaVideoHspTest beforeAll')
    })

    beforeEach(async () => {
      console.info('UiComponentMediaVideoHspTest beforeEach')
    })

    afterEach(async () => {
      console.info('UiComponentMediaVideoHspTest afterEach')
      await driver.delayMs(500)
      if (Settings.windowClass) {
        await Settings.destroyWindow(Settings.windowClass)
      }
    })

    afterAll(async () => {
      console.info('UiComponentMediaVideoHspTest afterAll')
    })

    /*
     * @tc.number: SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_HSP_0010
     * @tc.name: VideoHsp0010
     * @tc.desc: hap引用自身hap视频资源进行视频播放
     * @tc.level: Level 3
     * @tc.type: Func
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_HSP_0010', 0, async (done: Function) => {
      console.info('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_HSP_0010 START')
      await Settings.createWindow('testability/pages/UiComponentMediaVideoHsp/VideoHsp0010')
      await driver.delayMs(1000)

      let title = await driver.findComponent(ON.id('title'))
      expect(title !== null).assertTrue()

      let video = await driver.findComponent(ON.id('video'))
      expect(video !== null).assertTrue()

      let playBtn = await driver.findComponent(ON.id('playBtn'))
      expect(playBtn !== null).assertTrue()
      await playBtn.click()
      await driver.delayMs(2000)

      let pauseBtn = await driver.findComponent(ON.id('pauseBtn'))
      await pauseBtn.click()
      await driver.delayMs(500)

      await windowSnap.snapShot()
      await driver.delayMs(500)
      console.info('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_HSP_0010 END')
      done()
    })

    /*
     * @tc.number: SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_HSP_0040
     * @tc.name: VideoHsp0040
     * @tc.desc: hap引用hsp视频页面进行视频播放，替换hsp包后正常播放
     * @tc.level: Level 3
     * @tc.type: Func
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_HSP_0040', 0, async (done: Function) => {
      console.info('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_HSP_0040 START')
      await Settings.createWindow('testability/pages/UiComponentMediaVideoHsp/VideoHsp0040')
      await driver.delayMs(1000)

      let title = await driver.findComponent(ON.id('title'))
      expect(title !== null).assertTrue()

      let video = await driver.findComponent(ON.id('video'))
      expect(video !== null).assertTrue()

      let playBtn = await driver.findComponent(ON.id('playBtn'))
      expect(playBtn !== null).assertTrue()
      await playBtn.click()
      await driver.delayMs(1500)

      await windowSnap.snapShot()
      await driver.delayMs(500)
      console.info('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_HSP_0040 END')
      done()
    })

    /*
     * @tc.number: SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_HSP_0050
     * @tc.name: VideoHsp0050
     * @tc.desc: hap引用hsp视频页面，替换异常hsp包后视频无法播放
     * @tc.level: Level 3
     * @tc.type: Func
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_HSP_0050', 0, async (done: Function) => {
      console.info('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_HSP_0050 START')
      await Settings.createWindow('testability/pages/UiComponentMediaVideoHsp/VideoHsp0050')
      await driver.delayMs(1000)

      let title = await driver.findComponent(ON.id('title'))
      expect(title !== null).assertTrue()

      let video = await driver.findComponent(ON.id('video'))
      expect(video !== null).assertTrue()

      await windowSnap.snapShot()
      await driver.delayMs(500)
      console.info('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_HSP_0050 END')
      done()
    })

    /*
     * @tc.number: SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_HSP_0060
     * @tc.name: VideoHsp0060
     * @tc.desc: 同名视频资源同时存在于hap和hsp时，使用hap自身资源
     * @tc.level: Level 3
     * @tc.type: Func
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_HSP_0060', 0, async (done: Function) => {
      console.info('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_HSP_0060 START')
      await Settings.createWindow('testability/pages/UiComponentMediaVideoHsp/VideoHsp0060')
      await driver.delayMs(1000)

      let title = await driver.findComponent(ON.id('title'))
      expect(title !== null).assertTrue()

      let video = await driver.findComponent(ON.id('video'))
      expect(video !== null).assertTrue()

      let playBtn = await driver.findComponent(ON.id('playBtn'))
      expect(playBtn !== null).assertTrue()
      await playBtn.click()
      await driver.delayMs(1500)

      await windowSnap.snapShot()
      await driver.delayMs(500)
      console.info('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_HSP_0060 END')
      done()
    })

    /*
     * @tc.number: SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_HSP_0070
     * @tc.name: VideoHsp0070
     * @tc.desc: 使用$r方式引用hsp视频资源时，资源获取不到
     * @tc.level: Level 3
     * @tc.type: Func
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_HSP_0070', 0, async (done: Function) => {
      console.info('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_HSP_0070 START')
      await Settings.createWindow('testability/pages/UiComponentMediaVideoHsp/VideoHsp0070')
      await driver.delayMs(1000)

      let title = await driver.findComponent(ON.id('title'))
      expect(title !== null).assertTrue()

      let video = await driver.findComponent(ON.id('video'))
      expect(video !== null).assertTrue()

      await windowSnap.snapShot()
      await driver.delayMs(500)
      console.info('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_HSP_0070 END')
      done()
    })

    /*
     * @tc.number: SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_HSP_0080
     * @tc.name: VideoHsp0080
     * @tc.desc: hsp多层嵌套引用视频页面，视频正常播放
     * @tc.level: Level 3
     * @tc.type: Func
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_HSP_0080', 0, async (done: Function) => {
      console.info('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_HSP_0080 START')
      await Settings.createWindow('testability/pages/UiComponentMediaVideoHsp/VideoHsp0080')
      await driver.delayMs(1000)

      let title = await driver.findComponent(ON.id('title'))
      expect(title !== null).assertTrue()

      let video = await driver.findComponent(ON.id('video'))
      expect(video !== null).assertTrue()

      let playBtn = await driver.findComponent(ON.id('playBtn'))
      expect(playBtn !== null).assertTrue()
      await playBtn.click()
      await driver.delayMs(1500)

      await windowSnap.snapShot()
      await driver.delayMs(500)
      console.info('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_HSP_0080 END')
      done()
    })

    /*
     * @tc.number: SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_HSP_0090
     * @tc.name: VideoHsp0090
     * @tc.desc: 一个hap页面引用20个hsp视频资源
     * @tc.level: Level 3
     * @tc.type: Func
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_HSP_0090', 0, async (done: Function) => {
      console.info('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_HSP_0090 START')
      await Settings.createWindow('testability/pages/UiComponentMediaVideoHsp/VideoHsp0090')
      await driver.delayMs(2000)

      let title = await driver.findComponent(ON.id('title'))
      expect(title !== null).assertTrue()

      let status = await driver.findComponent(ON.id('status'))
      expect(status !== null).assertTrue()

      await windowSnap.snapShot()
      await driver.delayMs(500)
      console.info('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_HSP_0090 END')
      done()
    })

    /*
     * @tc.number: SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_HSP_0100
     * @tc.name: VideoHsp0100
     * @tc.desc: hap引用hsp页面，hsp页面中有20个视频资源
     * @tc.level: Level 3
     * @tc.type: Func
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_HSP_0100', 0, async (done: Function) => {
      console.info('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_HSP_0100 START')
      await Settings.createWindow('testability/pages/UiComponentMediaVideoHsp/VideoHsp0100')
      await driver.delayMs(2000)

      let title = await driver.findComponent(ON.id('title'))
      expect(title !== null).assertTrue()

      let loadStatus = await driver.findComponent(ON.id('loadStatus'))
      expect(loadStatus !== null).assertTrue()

      await windowSnap.snapShot()
      await driver.delayMs(500)
      console.info('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_HSP_0100 END')
      done()
    })

    /*
     * @tc.number: SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_HSP_0110
     * @tc.name: VideoHsp0110
     * @tc.desc: hap引用20个hsp页面，每个hsp包含单个视频
     * @tc.level: Level 3
     * @tc.type: Func
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_HSP_0110', 0, async (done: Function) => {
      console.info('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_HSP_0110 START')
      await Settings.createWindow('testability/pages/UiComponentMediaVideoHsp/VideoHsp0110')
      await driver.delayMs(2000)

      let title = await driver.findComponent(ON.id('title'))
      expect(title !== null).assertTrue()

      let status = await driver.findComponent(ON.id('status'))
      expect(status !== null).assertTrue()

      await windowSnap.snapShot()
      await driver.delayMs(500)
      console.info('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_HSP_0110 END')
      done()
    })
  })
}


