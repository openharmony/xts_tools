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
import { Driver, ON, Component } from '@kit.TestKit';
import { BusinessError } from '@kit.BasicServicesKit'

export default function VideoOptimizeTest() {
  describe('VideoOptimizeTest', () => {
    beforeAll(() => {
      console.info('VideoOptimizeTest beforeAll');
    });

    beforeEach(() => {
      console.info('VideoOptimizeTest beforeEach');
    });

    afterEach(async (done: Function) => {
      if (Settings.windowClass == undefined) {
        return
      }

      Settings.windowClass.destroyWindow((err:BusinessError) => {
        if (err.code) {
          Logger.error('TEST', `Failed to destroy the window. Cause : ${JSON.stringify(err)}`)
          return;
        }
        Logger.info('TEST', `Succeeded in destroy the window.`);
      })
      await Utils.sleep(1000);
      done()
    })

    afterAll(() => {
      console.info('VideoOptimizeTest afterAll');
    });

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0010
     * @tc.name   : Video组件重置AVPlayer和自动播放测试
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0010', Level.LEVEL3, async (done: Function) => {
      let driver: Driver = Driver.create();
      Settings.createWindow("testability/pages/video_optimize/videoOptimize01");
      await driver.waitForIdle(500, 2000);
      
      // 1、重置AVPlayer
      let resetButton: Component = await driver.waitForComponent(ON.text('重置AVPlayer'), 1000);
      await resetButton.click();
      await driver.waitForIdle(500, 2000);
      
      // 2、打开自动播放
      let autoPlayButton: Component = await driver.waitForComponent(ON.text('打开自动播放'), 1000);
      await autoPlayButton.click();
      await driver.waitForIdle(500, 2000);
      
      await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0010');
      await Utils.sleep(1000);
      
      done();
    });

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0020
     * @tc.name   : Video组件重置AVPlayer和自动播放测试(三Video)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0020', Level.LEVEL3, async (done: Function) => {
      let driver: Driver = Driver.create();
      Settings.createWindow("testability/pages/video_optimize/videoOptimize02");
      await driver.waitForIdle(500, 2000);
      
      // 1、重置AVPlayer
      let resetButton: Component = await driver.waitForComponent(ON.text('重置AVPlayer'), 1000);
      await resetButton.click();
      await driver.waitForIdle(500, 2000);
      
      // 2、打开自动播放
      let autoPlayButton: Component = await driver.waitForComponent(ON.text('打开自动播放'), 1000);
      await autoPlayButton.click();
      await driver.waitForIdle(500, 2000);
      
      await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0020');
      await Utils.sleep(1000);
      
      done();
    });

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0030
     * @tc.name   : Video组件停止播放、重置AVPlayer和自动播放测试
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0030', Level.LEVEL3, async (done: Function) => {
      let driver: Driver = Driver.create();
      Settings.createWindow("testability/pages/video_optimize/videoOptimize03");
      await driver.waitForIdle(500, 2000);
      
      // 1、停止播放
      let stopButton: Component = await driver.waitForComponent(ON.text('停止播放'), 1000);
      await stopButton.click();
      await driver.waitForIdle(500, 2000);
      
      // 2、重置AVPlayer
      let resetButton: Component = await driver.waitForComponent(ON.text('重置AVPlayer'), 1000);
      await resetButton.click();
      await driver.waitForIdle(500, 2000);
      
      // 3、打开自动播放
      let autoPlayButton: Component = await driver.waitForComponent(ON.text('打开自动播放'), 1000);
      await autoPlayButton.click();
      await driver.waitForIdle(500, 2000);
      
      await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0030');
      await Utils.sleep(1000);
      
      done();
    });

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0040
     * @tc.name   : Video组件停止播放、重置AVPlayer和自动播放测试(三Video)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0040', Level.LEVEL3, async (done: Function) => {
      let driver: Driver = Driver.create();
      Settings.createWindow("testability/pages/video_optimize/videoOptimize04");
      await driver.waitForIdle(500, 2000);
      
      // 1、停止播放
      let stopButton: Component = await driver.waitForComponent(ON.text('停止播放'), 1000);
      await stopButton.click();
      await driver.waitForIdle(500, 2000);
      
      // 2、重置AVPlayer
      let resetButton: Component = await driver.waitForComponent(ON.text('重置AVPlayer'), 1000);
      await resetButton.click();
      await driver.waitForIdle(500, 2000);
      
      // 3、打开自动播放
      let autoPlayButton: Component = await driver.waitForComponent(ON.text('打开自动播放'), 1000);
      await autoPlayButton.click();
      await driver.waitForIdle(500, 2000);
      
      await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0040');
      await Utils.sleep(1000);
      
      done();
    });

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0050
     * @tc.name   : Video组件onStop事件测试
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0050', Level.LEVEL3, async (done: Function) => {
      let driver: Driver = Driver.create();
      Settings.createWindow("testability/pages/video_optimize/videoOptimize05");
      await driver.waitForIdle(500, 2000);
      
      // 1、停止播放
      let stopButton: Component = await driver.waitForComponent(ON.text('停止播放'), 1000);
      await stopButton.click();
      await driver.waitForIdle(500, 2000);
      
      await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0050');
      await Utils.sleep(1000);
      
      done();
    });

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0060
     * @tc.name   : Video组件onStop事件测试(三Video)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0060', Level.LEVEL3, async (done: Function) => {
      let driver: Driver = Driver.create();
      Settings.createWindow("testability/pages/video_optimize/videoOptimize06");
      await driver.waitForIdle(500, 2000);
      
      // 1、停止播放
      let stopButton: Component = await driver.waitForComponent(ON.text('停止播放'), 1000);
      await stopButton.click();
      await driver.waitForIdle(500, 2000);
      
      await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0060');
      await Utils.sleep(1000);
      
      done();
    });

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0080
     * @tc.name   : Video组件跳转进度位置测试
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0080', Level.LEVEL3, async (done: Function) => {
      let driver: Driver = Driver.create();
      Settings.createWindow("testability/pages/video_optimize/videoOptimize08");
      await driver.waitForIdle(500, 2000);
      
      // 1、跳转到第10s
      let jumpButton: Component = await driver.waitForComponent(ON.text('跳转到第10s'), 1000);
      await jumpButton.click();
      await driver.waitForIdle(500, 2000);
      
      await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0080');
      await Utils.sleep(1000);
      
      done();
    });

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0090
     * @tc.name   : Video组件onPrepared事件测试
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0090', Level.LEVEL3, async (done: Function) => {
      let driver: Driver = Driver.create();
      Settings.createWindow("testability/pages/video_optimize/videoOptimize09");
      await driver.waitForIdle(500, 2000);
      
      await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0090');
      await Utils.sleep(1000);
      
      done();
    });

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0100
     * @tc.name   : Video组件开始播放和onPrepared事件测试
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0100', Level.LEVEL3, async (done: Function) => {
      let driver: Driver = Driver.create();
      Settings.createWindow("testability/pages/video_optimize/videoOptimize10");
      await driver.waitForIdle(500, 2000);
      
      // 1、开始播放
      let startButton: Component = await driver.waitForComponent(ON.text('开始播放'), 1000);
      await startButton.click();
      await driver.waitForIdle(500, 2000);
      
      await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0100');
      await Utils.sleep(1000);
      
      done();
    });

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0110
     * @tc.name   : Video组件停止播放后滑出滑进屏幕测试
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0110', Level.LEVEL3, async (done: Function) => {
      let driver: Driver = Driver.create();
      Settings.createWindow("testability/pages/video_optimize/videoOptimize11");
      await driver.waitForIdle(500, 2000);
      
      // 1、停止播放
      let stopButton: Component = await driver.waitForComponent(ON.text('停止播放'), 1000);
      await stopButton.click();
      await driver.waitForIdle(500, 2000);
      
      await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0110');
      await Utils.sleep(1000);
      
      done();
    });

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0120
     * @tc.name   : Video组件滑进屏幕onPrepared事件测试
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0120', Level.LEVEL3, async (done: Function) => {
      let driver: Driver = Driver.create();
      Settings.createWindow("testability/pages/video_optimize/videoOptimize12");
      await driver.waitForIdle(500, 2000);
      
      await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0120');
      await Utils.sleep(1000);
      
      done();
    });

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0130
     * @tc.name   : Video组件隐藏状态onPrepared事件测试(三Video)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0130', Level.LEVEL3, async (done: Function) => {
      let driver: Driver = Driver.create();
      Settings.createWindow("testability/pages/video_optimize/videoOptimize13");
      await driver.waitForIdle(500, 2000);
      
      await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0130');
      await Utils.sleep(1000);
      
      done();
    });

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0140
     * @tc.name   : Video组件停止播放后显示测试
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0140', Level.LEVEL3, async (done: Function) => {
      let driver: Driver = Driver.create();
      Settings.createWindow("testability/pages/video_optimize/videoOptimize14");
      await driver.waitForIdle(500, 2000);
      
      // 1、停止播放
      let stopButton: Component = await driver.waitForComponent(ON.text('停止播放'), 1000);
      await stopButton.click();
      await driver.waitForIdle(500, 2000);
      
      // 2、显示Video
      let showButton: Component = await driver.waitForComponent(ON.text('显示Video'), 1000);
      await showButton.click();
      await driver.waitForIdle(500, 2000);
      
      await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0140');
      await Utils.sleep(1000);
      
      done();
    });

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0150
     * @tc.name   : Video组件隐藏状态onPrepared事件测试
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0150', Level.LEVEL3, async (done: Function) => {
      let driver: Driver = Driver.create();
      Settings.createWindow("testability/pages/video_optimize/videoOptimize15");
      await driver.waitForIdle(500, 2000);
      
      await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0150');
      await Utils.sleep(1000);
      
      done();
    });

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0160
     * @tc.name   : Video组件切换视频源测试
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0160', Level.LEVEL3, async (done: Function) => {
      let driver: Driver = Driver.create();
      Settings.createWindow("testability/pages/video_optimize/videoOptimize16");
      await driver.waitForIdle(500, 2000);
      
      // 1、切换成视频源video4
      let switchButton: Component = await driver.waitForComponent(ON.text('切换成视频源video4'), 1000);
      await switchButton.click();
      await driver.waitForIdle(500, 2000);
      
      await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0160');
      await Utils.sleep(1000);
      
      done();
    });

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0170
     * @tc.name   : Video组件开始播放后切换视频源测试
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0170', Level.LEVEL3, async (done: Function) => {
      let driver: Driver = Driver.create();
      Settings.createWindow("testability/pages/video_optimize/videoOptimize17");
      await driver.waitForIdle(500, 2000);
      
      // 1、开始播放
      let startButton: Component = await driver.waitForComponent(ON.text('开始播放'), 1000);
      await startButton.click();
      await driver.waitForIdle(500, 2000);
      
      // 2、切换成视频源video4
      let switchButton: Component = await driver.waitForComponent(ON.text('切换成视频源video4'), 1000);
      await switchButton.click();
      await driver.waitForIdle(500, 2000);
      
      await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0170');
      await Utils.sleep(1000);
      
      done();
    });

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0180
     * @tc.name   : Video组件停止播放后切换视频源测试
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0180', Level.LEVEL3, async (done: Function) => {
      let driver: Driver = Driver.create();
      Settings.createWindow("testability/pages/video_optimize/videoOptimize18");
      await driver.waitForIdle(500, 2000);
      
      // 1、停止播放
      let stopButton: Component = await driver.waitForComponent(ON.text('停止播放'), 1000);
      await stopButton.click();
      await driver.waitForIdle(500, 2000);
      
      // 2、切换成视频源video4
      let switchButton: Component = await driver.waitForComponent(ON.text('切换成视频源video4'), 1000);
      await switchButton.click();
      await driver.waitForIdle(500, 2000);
      
      await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0180');
      await Utils.sleep(1000);
      
      done();
    });

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0190
     * @tc.name   : Video组件切换视频源测试(三Video)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0190', Level.LEVEL3, async (done: Function) => {
      let driver: Driver = Driver.create();
      Settings.createWindow("testability/pages/video_optimize/videoOptimize19");
      await driver.waitForIdle(500, 2000);
      
      // 1、切换成视频源video4
      let switchButton: Component = await driver.waitForComponent(ON.text('切换成视频源video4'), 1000);
      await switchButton.click();
      await driver.waitForIdle(500, 2000);
      
      await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0190');
      await Utils.sleep(1000);
      
      done();
    });

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0200
     * @tc.name   : Video组件开始播放、重置AVPlayer和自动播放测试
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0200', Level.LEVEL3, async (done: Function) => {
      let driver: Driver = Driver.create();
      Settings.createWindow("testability/pages/video_optimize/videoOptimize20");
      await driver.waitForIdle(500, 2000);
      
      // 1、开始播放
      let startButton: Component = await driver.waitForComponent(ON.text('开始播放'), 1000);
      await startButton.click();
      await driver.waitForIdle(500, 2000);
      
      // 2、重置AVPlayer
      let resetButton: Component = await driver.waitForComponent(ON.text('重置AVPlayer'), 1000);
      await resetButton.click();
      await driver.waitForIdle(500, 2000);
      
      // 3、打开自动播放
      let autoPlayButton: Component = await driver.waitForComponent(ON.text('打开自动播放'), 1000);
      await autoPlayButton.click();
      await driver.waitForIdle(500, 2000);
      
      await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0200');
      await Utils.sleep(1000);
      
      done();
    });

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0210
     * @tc.name   : Video组件开始播放、重置AVPlayer和自动播放测试(三Video)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0210', Level.LEVEL3, async (done: Function) => {
      let driver: Driver = Driver.create();
      Settings.createWindow("testability/pages/video_optimize/videoOptimize21");
      await driver.waitForIdle(500, 2000);
      
      // 1、开始播放
      let startButton: Component = await driver.waitForComponent(ON.text('开始播放'), 1000);
      await startButton.click();
      await driver.waitForIdle(500, 2000);
      
      // 2、重置AVPlayer
      let resetButton: Component = await driver.waitForComponent(ON.text('重置AVPlayer'), 1000);
      await resetButton.click();
      await driver.waitForIdle(500, 2000);
      
      // 3、打开自动播放
      let autoPlayButton: Component = await driver.waitForComponent(ON.text('打开自动播放'), 1000);
      await autoPlayButton.click();
      await driver.waitForIdle(500, 2000);
      
      await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0210');
      await Utils.sleep(1000);
      
      done();
    });

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0220
     * @tc.name   : Video组件开始播放、停止播放、重置AVPlayer和自动播放测试
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0220', Level.LEVEL3, async (done: Function) => {
      let driver: Driver = Driver.create();
      Settings.createWindow("testability/pages/video_optimize/videoOptimize22");
      await driver.waitForIdle(500, 2000);
      
      // 1、开始播放
      let startButton: Component = await driver.waitForComponent(ON.text('开始播放'), 1000);
      await startButton.click();
      await driver.waitForIdle(500, 2000);
      
      // 2、停止播放
      let stopButton: Component = await driver.waitForComponent(ON.text('停止播放'), 1000);
      await stopButton.click();
      await driver.waitForIdle(500, 2000);
      
      // 3、重置AVPlayer
      let resetButton: Component = await driver.waitForComponent(ON.text('重置AVPlayer'), 1000);
      await resetButton.click();
      await driver.waitForIdle(500, 2000);
      
      // 4、打开自动播放
      let autoPlayButton: Component = await driver.waitForComponent(ON.text('打开自动播放'), 1000);
      await autoPlayButton.click();
      await driver.waitForIdle(500, 2000);
      
      await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0220');
      await Utils.sleep(1000);
      
      done();
    });

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0230
     * @tc.name   : Video组件开始播放、停止播放、重置AVPlayer和自动播放测试(三Video)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0230', Level.LEVEL3, async (done: Function) => {
      let driver: Driver = Driver.create();
      Settings.createWindow("testability/pages/video_optimize/videoOptimize23");
      await driver.waitForIdle(500, 2000);
      
      // 1、开始播放
      let startButton: Component = await driver.waitForComponent(ON.text('开始播放'), 1000);
      await startButton.click();
      await driver.waitForIdle(500, 2000);
      
      // 2、停止播放
      let stopButton: Component = await driver.waitForComponent(ON.text('停止播放'), 1000);
      await stopButton.click();
      await driver.waitForIdle(500, 2000);
      
      // 3、重置AVPlayer
      let resetButton: Component = await driver.waitForComponent(ON.text('重置AVPlayer'), 1000);
      await resetButton.click();
      await driver.waitForIdle(500, 2000);
      
      // 4、打开自动播放
      let autoPlayButton: Component = await driver.waitForComponent(ON.text('打开自动播放'), 1000);
      await autoPlayButton.click();
      await driver.waitForIdle(500, 2000);
      
      await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0230');
      await Utils.sleep(1000);
      
      done();
    });

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0240
     * @tc.name   : Video组件停止播放后跳转进度位置测试
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0240', Level.LEVEL3, async (done: Function) => {
      let driver: Driver = Driver.create();
      Settings.createWindow("testability/pages/video_optimize/videoOptimize24");
      await driver.waitForIdle(500, 2000);
      
      // 1、停止播放
      let stopButton: Component = await driver.waitForComponent(ON.text('停止播放'), 1000);
      await stopButton.click();
      await driver.waitForIdle(500, 2000);
      
      // 2、跳转到第10s
      let jumpButton: Component = await driver.waitForComponent(ON.text('跳转到第10s'), 1000);
      await jumpButton.click();
      await driver.waitForIdle(500, 2000);
      
      await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0240');
      await Utils.sleep(1000);
      
      done();
    });

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0250
     * @tc.name   : Video组件开始播放、停止播放后切换视频源测试
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0250', Level.LEVEL3, async (done: Function) => {
      let driver: Driver = Driver.create();
      Settings.createWindow("testability/pages/video_optimize/videoOptimize25");
      await driver.waitForIdle(500, 2000);
      
      // 1、开始播放
      let startButton: Component = await driver.waitForComponent(ON.text('开始播放'), 1000);
      await startButton.click();
      await driver.waitForIdle(500, 2000);
      
      // 2、停止播放
      let stopButton: Component = await driver.waitForComponent(ON.text('停止播放'), 1000);
      await stopButton.click();
      await driver.waitForIdle(500, 2000);
      
      // 3、切换成视频源video4
      let switchButton: Component = await driver.waitForComponent(ON.text('切换成视频源video4'), 1000);
      await switchButton.click();
      await driver.waitForIdle(500, 2000);
      
      await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0250');
      await Utils.sleep(1000);
      
      done();
    });

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0260
     * @tc.name   : Video组件跳转进度位置后开始播放测试
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0260', Level.LEVEL3, async (done: Function) => {
      let driver: Driver = Driver.create();
      Settings.createWindow("testability/pages/video_optimize/videoOptimize26");
      await driver.waitForIdle(500, 2000);
      
      // 1、跳转到第10s
      let jumpButton: Component = await driver.waitForComponent(ON.text('跳转到第10s'), 1000);
      await jumpButton.click();
      await driver.waitForIdle(500, 2000);
      
      // 2、开始播放
      let startButton: Component = await driver.waitForComponent(ON.text('开始播放'), 1000);
      await startButton.click();
      await driver.waitForIdle(500, 2000);
      
      await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0260');
      await Utils.sleep(1000);
      
      done();
    });

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0270
     * @tc.name   : Video组件重置AVPlayer和自动播放重复测试
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0270', Level.LEVEL3, async (done: Function) => {
      let driver: Driver = Driver.create();
      Settings.createWindow("testability/pages/video_optimize/videoOptimize27");
      await driver.waitForIdle(500, 2000);
      
      // 重复5次操作
      for (let i = 0; i < 5; i++) {
        // 1、重置AVPlayer
        let resetButton: Component = await driver.waitForComponent(ON.text('重置AVPlayer'), 1000);
        await resetButton.click();
        await driver.waitForIdle(500, 2000);
        
        // 2、打开自动播放
        let autoPlayButton: Component = await driver.waitForComponent(ON.text('打开自动播放'), 1000);
        await autoPlayButton.click();
        await driver.waitForIdle(500, 2000);
        
        // 3、关闭自动播放
        let closeAutoPlayButton: Component = await driver.waitForComponent(ON.text('关闭自动播放'), 1000);
        await closeAutoPlayButton.click();
        await driver.waitForIdle(500, 2000);
      }
      
      await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0270');
      await Utils.sleep(1000);
      
      done();
    });

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0280
     * @tc.name   : Video组件重置AVPlayer和自动播放重复测试(三Video)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0280', Level.LEVEL3, async (done: Function) => {
      let driver: Driver = Driver.create();
      Settings.createWindow("testability/pages/video_optimize/videoOptimize28");
      await driver.waitForIdle(500, 2000);
      
      // 重复5次操作
      for (let i = 0; i < 5; i++) {
        // 1、重置AVPlayer
        let resetButton: Component = await driver.waitForComponent(ON.text('重置AVPlayer'), 1000);
        await resetButton.click();
        await driver.waitForIdle(500, 2000);
        
        // 2、打开自动播放
        let autoPlayButton: Component = await driver.waitForComponent(ON.text('打开自动播放'), 1000);
        await autoPlayButton.click();
        await driver.waitForIdle(500, 2000);
        
        // 3、关闭自动播放
        let closeAutoPlayButton: Component = await driver.waitForComponent(ON.text('关闭自动播放'), 1000);
        await closeAutoPlayButton.click();
        await driver.waitForIdle(500, 2000);
        
        // 4、停止播放
        let stopButton: Component = await driver.waitForComponent(ON.text('停止播放'), 1000);
        await stopButton.click();
        await driver.waitForIdle(500, 2000);
      }
      
      await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0280');
      await Utils.sleep(1000);
      
      done();
    });

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0290
     * @tc.name   : Video组件onStop事件重复测试
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0290', Level.LEVEL3, async (done: Function) => {
      let driver: Driver = Driver.create();
      Settings.createWindow("testability/pages/video_optimize/videoOptimize29");
      await driver.waitForIdle(500, 2000);
      
      // 重复5次停止播放操作
      for (let i = 0; i < 5; i++) {
        let stopButton: Component = await driver.waitForComponent(ON.text('停止播放'), 1000);
        await stopButton.click();
        await driver.waitForIdle(500, 2000);
      }
      
      await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0290');
      await Utils.sleep(1000);
      
      done();
    });

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0300
     * @tc.name   : Video组件onStop事件重复测试(三Video)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0300', Level.LEVEL3, async (done: Function) => {
      let driver: Driver = Driver.create();
      Settings.createWindow("testability/pages/video_optimize/videoOptimize30");
      await driver.waitForIdle(500, 2000);
      
      // 重复5次停止播放操作
      for (let i = 0; i < 5; i++) {
        let stopButton: Component = await driver.waitForComponent(ON.text('停止播放'), 1000);
        await stopButton.click();
        await driver.waitForIdle(500, 2000);
      }
      
      await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0300');
      await Utils.sleep(1000);
      
      done();
    });

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0310
     * @tc.name   : Video组件跳转进度位置和重置AVPlayer重复测试
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0310', Level.LEVEL3, async (done: Function) => {
      let driver: Driver = Driver.create();
      Settings.createWindow("testability/pages/video_optimize/videoOptimize31");
      await driver.waitForIdle(500, 2000);
      
      // 重复5次操作
      for (let i = 0; i < 5; i++) {
        // 1、跳转到第10s
        let jumpButton: Component = await driver.waitForComponent(ON.text('跳转到第10s'), 1000);
        await jumpButton.click();
        await driver.waitForIdle(500, 2000);
        
        // 2、重置AVPlayer
        let resetButton: Component = await driver.waitForComponent(ON.text('重置AVPlayer'), 1000);
        await resetButton.click();
        await driver.waitForIdle(500, 2000);
      }
      
      await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0310');
      await Utils.sleep(1000);
      
      done();
    });

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0320
     * @tc.name   : Video组件跳转进度位置和停止播放重复测试
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0320', Level.LEVEL3, async (done: Function) => {
      let driver: Driver = Driver.create();
      Settings.createWindow("testability/pages/video_optimize/videoOptimize32");
      await driver.waitForIdle(500, 2000);
      
      // 重复5次操作
      for (let i = 0; i < 5; i++) {
        // 1、跳转到第10s
        let jumpButton: Component = await driver.waitForComponent(ON.text('跳转到第10s'), 1000);
        await jumpButton.click();
        await driver.waitForIdle(500, 2000);
        
        // 2、停止播放
        let stopButton: Component = await driver.waitForComponent(ON.text('停止播放'), 1000);
        await stopButton.click();
        await driver.waitForIdle(500, 2000);
      }
      
      await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0320');
      await Utils.sleep(1000);
      
      done();
    });

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0330
     * @tc.name   : Video组件切换视频源和重置AVPlayer重复测试
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0330', Level.LEVEL3, async (done: Function) => {
      let driver: Driver = Driver.create();
      Settings.createWindow("testability/pages/video_optimize/videoOptimize33");
      await driver.waitForIdle(500, 2000);
      
      // 重复5次操作
      for (let i = 0; i < 5; i++) {
        // 1、切换成视频源video4
        let switchButton: Component = await driver.waitForComponent(ON.text('切换成视频源video4'), 1000);
        await switchButton.click();
        await driver.waitForIdle(500, 2000);
        
        // 2、重置AVPlayer
        let resetButton: Component = await driver.waitForComponent(ON.text('重置AVPlayer'), 1000);
        await resetButton.click();
        await driver.waitForIdle(500, 2000);
      }
      
      await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0330');
      await Utils.sleep(1000);
      
      done();
    });

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0340
     * @tc.name   : Video组件开始播放、切换视频源、停止播放重复测试
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0340', Level.LEVEL3, async (done: Function) => {
      let driver: Driver = Driver.create();
      Settings.createWindow("testability/pages/video_optimize/videoOptimize34");
      await driver.waitForIdle(500, 2000);
      
      // 重复5次操作
      for (let i = 0; i < 5; i++) {
        // 1、开始播放
        let startButton: Component = await driver.waitForComponent(ON.text('开始播放'), 1000);
        await startButton.click();
        await driver.waitForIdle(500, 2000);
        
        // 2、切换成视频源video4
        let switchButton: Component = await driver.waitForComponent(ON.text('切换成视频源video4'), 1000);
        await switchButton.click();
        await driver.waitForIdle(500, 2000);
        
        // 3、停止播放
        let stopButton: Component = await driver.waitForComponent(ON.text('停止播放'), 1000);
        await stopButton.click();
        await driver.waitForIdle(500, 2000);
      }
      
      await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0340');
      await Utils.sleep(1000);
      
      done();
    });

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0350
     * @tc.name   : Video组件停止播放、切换视频源、重置AVPlayer重复测试
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0350', Level.LEVEL3, async (done: Function) => {
      let driver: Driver = Driver.create();
      Settings.createWindow("testability/pages/video_optimize/videoOptimize35");
      await driver.waitForIdle(500, 2000);
      
      // 重复5次操作
      for (let i = 0; i < 5; i++) {
        // 1、停止播放
        let stopButton: Component = await driver.waitForComponent(ON.text('停止播放'), 1000);
        await stopButton.click();
        await driver.waitForIdle(500, 2000);
        
        // 2、切换成视频源video4
        let switchButton: Component = await driver.waitForComponent(ON.text('切换成视频源video4'), 1000);
        await switchButton.click();
        await driver.waitForIdle(500, 2000);
        
        // 3、重置AVPlayer
        let resetButton: Component = await driver.waitForComponent(ON.text('重置AVPlayer'), 1000);
        await resetButton.click();
        await driver.waitForIdle(500, 2000);
      }
      
      await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0350');
      await Utils.sleep(1000);
      
      done();
    });

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0360
     * @tc.name   : Video组件切换视频源和停止播放重复测试(三Video)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0360', Level.LEVEL3, async (done: Function) => {
      let driver: Driver = Driver.create();
      Settings.createWindow("testability/pages/video_optimize/videoOptimize36");
      await driver.waitForIdle(500, 2000);
      
      // 重复5次操作
      for (let i = 0; i < 5; i++) {
        // 1、切换成视频源video4
        let switchButton: Component = await driver.waitForComponent(ON.text('切换成视频源video4'), 1000);
        await switchButton.click();
        await driver.waitForIdle(500, 2000);
        
        // 2、停止播放
        let stopButton: Component = await driver.waitForComponent(ON.text('停止播放'), 1000);
        await stopButton.click();
        await driver.waitForIdle(500, 2000);
      }
      
      await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0360');
      await Utils.sleep(1000);
      
      done();
    });
  });
}
