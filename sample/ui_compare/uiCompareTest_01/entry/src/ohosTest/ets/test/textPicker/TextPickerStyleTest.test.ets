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

export default function TextPickerStyleTest() {
  describe('TextPickerStyleTest', () => {
    afterEach(async (done: Function) => {
      if (Settings.windowClass == undefined) {
        return
      }

      Settings.windowClass.destroyWindow((err: BusinessError) => {
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
     * @tc.number : SUB_TV_UX_TextPicker_012
     * @tc.name   : TextPicker二级文本颜色设置为黄色
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_TV_UX_TextPicker_012', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_TV_UX_TextPicker_012 start.`);
      Settings.createWindow("testability/pages/textPicker/textPickerStyle01")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_TV_UX_TextPicker_012 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_TV_UX_TextPicker_018
     * @tc.name   : TextPicker二级文本大小设置为20
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_TV_UX_TextPicker_018', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_TV_UX_TextPicker_018 start.`);
      Settings.createWindow("testability/pages/textPicker/textPickerStyle02")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_TV_UX_TextPicker_018 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_TV_UX_TextPicker_020
     * @tc.name   : TextPicker三级文本样式设置
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_TV_UX_TextPicker_020', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_TV_UX_TextPicker_020 start.`);
      Settings.createWindow("testability/pages/textPicker/textPickerStyle03")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_TV_UX_TextPicker_020 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_TV_UX_TextPicker_024
     * @tc.name   : TextPicker联动自定义参数设置
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_TV_UX_TextPicker_024', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_TV_UX_TextPicker_024 start.`);
      Settings.createWindow("testability/pages/textPicker/textPickerStyle04")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_TV_UX_TextPicker_024 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_TV_UX_TextPicker_026
     * @tc.name   : TextPicker三级文本颜色设置为黄色
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_TV_UX_TextPicker_026', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_TV_UX_TextPicker_026 start.`);
      Settings.createWindow("testability/pages/textPicker/textPickerStyle05")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_TV_UX_TextPicker_026 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_TV_UX_TextPicker_033
     * @tc.name   : TextPicker选中项padding和获焦样式
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_TV_UX_TextPicker_033', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_TV_UX_TextPicker_033 start.`);
      Settings.createWindow("testability/pages/textPicker/textPickerStyle06")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_TV_UX_TextPicker_033 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_TV_UX_TextPicker_034
     * @tc.name   : TextPicker分割线样式配置
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_TV_UX_TextPicker_034', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_TV_UX_TextPicker_034 start.`);
      Settings.createWindow("testability/pages/textPicker/textPickerStyle07")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_TV_UX_TextPicker_034 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_TV_UX_TextPicker_035
     * @tc.name   : TextPicker选中项高度设置为75vp
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_TV_UX_TextPicker_035', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_TV_UX_TextPicker_035 start.`);
      Settings.createWindow("testability/pages/textPicker/textPickerStyle08")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_TV_UX_TextPicker_035 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_TV_UX_TextPicker_036
     * @tc.name   : TextPicker组件边距设置为20vp
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_TV_UX_TextPicker_036', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_TV_UX_TextPicker_036 start.`);
      Settings.createWindow("testability/pages/textPicker/textPickerStyle09")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_TV_UX_TextPicker_036 finish.`);
      done()
    })
  })
}
