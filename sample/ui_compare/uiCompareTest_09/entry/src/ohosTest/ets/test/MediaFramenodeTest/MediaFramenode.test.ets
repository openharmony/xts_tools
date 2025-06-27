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
import { uiAppearance } from '@kit.ArkUI';

export default function MediaFramenode() {

  describe('MediaFramenode', () => {
    beforeAll(async () => {
      // 测试前置操作：设置字体为2倍
      await uiAppearance.setFontScale(2); // 2表示200%大小
    });
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
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0021
     * @tc.name   : SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0021
     * @tc.desc   : BadgeParamWithString does not set the component and text size, and creates a badge after adjusting the font
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 1
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0021', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0021 start.`);
      Settings.createWindow("testability/pages/MediaFramenode/MediaFramenode21")
      windowSnap.screenShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0021 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0010
     * @tc.name   : SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0010
     * @tc.desc   : The content of the QRCode QR code created by the FrameNode is normally less than 512 characters
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 1
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0010', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0010 start.`);
      Settings.createWindow("testability/pages/MediaFramenode/MediaFramenode10")
      windowSnap.screenShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0010 finish.`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0027
    * @tc.name   : SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0027
    * @tc.desc   : FrameNode creates a TextTimer application display
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 1
    */
    it('SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0027', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0027 start.`);
      Settings.createWindow("testability/pages/MediaFramenode/MediaFramenode27")
      windowSnap.screenShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0027 finish.`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0025
    * @tc.name   : SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0025
    * @tc.desc   : FrameNode creates a TextClock application display
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 1
    */
    it('SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0025', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0025 start.`);
      Settings.createWindow("testability/pages/MediaFramenode/MediaFramenode25")
      windowSnap.screenShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0025 finish.`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0023
    * @tc.name   : SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0023
    * @tc.desc   : FrameNode creates a BadgeParamWithNumber to create an Image subcomponent
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 1
    */
    it('SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0023', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0023 start.`);
      Settings.createWindow("testability/pages/MediaFramenode/MediaFramenode23")
      windowSnap.screenShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0023 finish.`);
      done();
    })

    /*
   * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0018
   * @tc.name   : SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0018
   * @tc.desc   : FrameNode creates QRCode without setting the QR code background color
   * @tc.type   : Function
   * @tc.size   : MediumTest
   * @tc.level  : 1
   */
    it('SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0018', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0018 start.`);
      Settings.createWindow("testability/pages/MediaFramenode/MediaFramenode18")
      windowSnap.screenShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_FRAMENODE_0018 finish.`);
      done();
    })
  })
}
