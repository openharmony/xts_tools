/*
 * Copyright (c) 2024 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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
 
import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect, Level } from '@ohos/hypium'
import Settings from '../model/Settings'
import windowSnap from '../model/snapShot'
import Logger from '../model/Logger'
import Utils from '../model/Utils'
import { Driver, ON,Component ,MouseButton } from '@ohos.UiTest'
/*
 * SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0010:设置文本颜色
 *
 * Settings.createWindow(config.url)：
 *  创建窗口，更改窗口基本配置，更改方式详见model/Settings createWindow方法
 *
 * windowSnap.snapShot(globalThis.context)：
 *  窗口截屏&图片文件保存，存储在设备端
 *  存储文件固定，单挑用例执行后覆盖，用于自动化UI对比
 *  支持调试更改文件名为时间戳格式，更改model/snapShot createAndGetFile方法 注释L35，放开L32，L33
 *
 * Logger日志使用方法：
 *  import Logger form './model/Logger'
 *  Logger.info(TAG,`config = ${config}, err = ${JSON.stringify(exception)}`)
 * */

export default function UiComponentResourceImageAttachmentOption() {

  describe('UiComponentResourceImageAttachmentOption', () => {
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
       * @tc.number  SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0090
       * @tc.name    Apply the image resource to the property string and set the layoutStyle
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0090', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0090 start.`);
      Settings.createWindow("testability/pages/UiComponentResourceImageAttachmentOption/UiComponentResourceImageAttachmentOption01")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentResourceImageAttachmentOption01_01'),1000);
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentResourceImageAttachmentOption01_02'),1000);
      await button01.click();
      await button02.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0090 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0100
       * @tc.name    Apply the image resource to the property string and set the colorFilter
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0100', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0100 start.`);
      Settings.createWindow("testability/pages/UiComponentResourceImageAttachmentOption/UiComponentResourceImageAttachmentOption02")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentResourceImageAttachmentOption02_01'),1000);
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentResourceImageAttachmentOption02_02'),1000);
      await button01.click();
      await button02.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0100 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0040
       * @tc.name    Apply the image resource to the property string and set the size
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0040', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0040 start.`);
      Settings.createWindow("testability/pages/UiComponentResourceImageAttachmentOption/UiComponentResourceImageAttachmentOption03")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentResourceImageAttachmentOption03_01'),1000);
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentResourceImageAttachmentOption03_02'),1000);
      await button01.click();
      await button02.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0040 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0050
       * @tc.name    Apply the image resource to the property string and set the size to(0,0)
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0050', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0050 start.`);
      Settings.createWindow("testability/pages/UiComponentResourceImageAttachmentOption/UiComponentResourceImageAttachmentOption04")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentResourceImageAttachmentOption04_01'),1000);
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentResourceImageAttachmentOption04_02'),1000);
      await button01.click();
      await button02.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0050 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0060
       * @tc.name    Apply the image resource to the property string and set the size to(-100,-100)
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0060', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0060 start.`);
      Settings.createWindow("testability/pages/UiComponentResourceImageAttachmentOption/UiComponentResourceImageAttachmentOption05")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentResourceImageAttachmentOption05_01'),1000);
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentResourceImageAttachmentOption05_02'),1000);
      await button01.click();
      await button02.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0060 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0150
       * @tc.name    Set the ResourceImageAttachmentOptions property string to add an image, and use replaceStyle to replace the image style
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0150', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0150 start.`);
      Settings.createWindow("testability/pages/UiComponentResourceImageAttachmentOption/UiComponentResourceImageAttachmentOption06")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentResourceImageAttachmentOption06_01'),1000);
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentResourceImageAttachmentOption06_02'),1000);
      let button03: Component = await driver.waitForComponent(ON.id('UiComponentResourceImageAttachmentOption06_03'),1000);
      await button01.click();
      await button03.click();
      await button02.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0150 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0160
       * @tc.name    Set the ResourceImageAttachmentOptions property string to add an image, and use setStyle to add an image style
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0160', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0160 start.`);
      Settings.createWindow("testability/pages/UiComponentResourceImageAttachmentOption/UiComponentResourceImageAttachmentOption07")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentResourceImageAttachmentOption07_01'),1000);
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentResourceImageAttachmentOption07_02'),1000);
      let button03: Component = await driver.waitForComponent(ON.id('UiComponentResourceImageAttachmentOption07_03'),1000);
      await button01.click();
      await button03.click();
      await button02.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0160 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0030
       * @tc.name    Referencing the wrong image resource
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0030', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0030 start.`);
      Settings.createWindow("testability/pages/UiComponentResourceImageAttachmentOption/UiComponentResourceImageAttachmentOption08")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentResourceImageAttachmentOption08_01'),1000);
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentResourceImageAttachmentOption08_02'),1000);
      await button01.click();
      await button02.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0030 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0170
       * @tc.name    Set the ResourceImageAttachmentOptions property string to add an image, and run the clearstyles to clear the image style
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0170', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0170 start.`);
      Settings.createWindow("testability/pages/UiComponentResourceImageAttachmentOption/UiComponentResourceImageAttachmentOption09")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentResourceImageAttachmentOption09_01'),1000);
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentResourceImageAttachmentOption09_02'),1000);
      let button03: Component = await driver.waitForComponent(ON.id('UiComponentResourceImageAttachmentOption09_03'),1000);
      await button01.click();
      await button02.click();
      windowSnap.snapShot()
      await driver.waitForIdle(500,2000)
      await button03.click();
      await button02.click();
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0170 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0180
       * @tc.name    Set the ResourceImageAttachmentOptions property string to add an image, and run the removestyle to clear the image style
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0180', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0180 start.`);
      Settings.createWindow("testability/pages/UiComponentResourceImageAttachmentOption/UiComponentResourceImageAttachmentOption10")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentResourceImageAttachmentOption10_01'),1000);
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentResourceImageAttachmentOption10_02'),1000);
      let button03: Component = await driver.waitForComponent(ON.id('UiComponentResourceImageAttachmentOption10_03'),1000);
      await button01.click();
      await button02.click();
      windowSnap.snapShot()
      await driver.waitForIdle(500,2000)
      await button03.click();
      await button02.click();
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0180 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0190
       * @tc.name    Set the ResourceImageAttachmentOptions property string to add an image, and run the removestyles to clear the image style
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0190', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0190 start.`);
      Settings.createWindow("testability/pages/UiComponentResourceImageAttachmentOption/UiComponentResourceImageAttachmentOption11")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentResourceImageAttachmentOption11_01'),1000);
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentResourceImageAttachmentOption11_02'),1000);
      let button03: Component = await driver.waitForComponent(ON.id('UiComponentResourceImageAttachmentOption11_03'),1000);
      await button01.click();
      await button02.click();
      windowSnap.snapShot()
      await driver.waitForIdle(500,2000)
      await button03.click();
      await button02.click();
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0190 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0140
       * @tc.name    Set the ResourceImageAttachmentOptions property string to add an image, and run the removestring to clear the image style
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0140', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0140 start.`);
      Settings.createWindow("testability/pages/UiComponentResourceImageAttachmentOption/UiComponentResourceImageAttachmentOption12")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentResourceImageAttachmentOption12_01'),1000);
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentResourceImageAttachmentOption12_02'),1000);
      let button03: Component = await driver.waitForComponent(ON.id('UiComponentResourceImageAttachmentOption12_03'),1000);
      await button01.click();
      await button02.click();
      windowSnap.snapShot()
      await driver.waitForIdle(500,2000)
      await button03.click();
      await button02.click();
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0140 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0220
       * @tc.name    Set the ResourceImageAttachmentOptions property string to add an image, and use appendStyledString to insert a new image
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0220', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0220 start.`);
      Settings.createWindow("testability/pages/UiComponentResourceImageAttachmentOption/UiComponentResourceImageAttachmentOption13")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentResourceImageAttachmentOption13_01'),1000);
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentResourceImageAttachmentOption13_02'),1000);
      let button03: Component = await driver.waitForComponent(ON.id('UiComponentResourceImageAttachmentOption13_03'),1000);
      await button01.click();
      await button02.click();
      windowSnap.snapShot()
      await driver.waitForIdle(500,2000)
      await button03.click();
      await button02.click();
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0220 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0210
       * @tc.name    Set the ResourceImageAttachmentOptions property string to add an image, and use insertStyledString to insert a new image
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0210', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0210 start.`);
      Settings.createWindow("testability/pages/UiComponentResourceImageAttachmentOption/UiComponentResourceImageAttachmentOption14")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentResourceImageAttachmentOption14_01'),1000);
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentResourceImageAttachmentOption14_02'),1000);
      let button03: Component = await driver.waitForComponent(ON.id('UiComponentResourceImageAttachmentOption14_03'),1000);
      await button01.click();
      await button02.click();
      windowSnap.snapShot()
      await driver.waitForIdle(500,2000)
      await button03.click();
      await button02.click();
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0210 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0200
       * @tc.name    Set the ResourceImageAttachmentOptions property string to add an image, and use replaceStyledString to insert a new image
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0200', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0200 start.`);
      Settings.createWindow("testability/pages/UiComponentResourceImageAttachmentOption/UiComponentResourceImageAttachmentOption15")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentResourceImageAttachmentOption15_01'),1000);
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentResourceImageAttachmentOption15_02'),1000);
      let button03: Component = await driver.waitForComponent(ON.id('UiComponentResourceImageAttachmentOption15_03'),1000);
      await button01.click();
      await button02.click();
      windowSnap.snapShot()
      await driver.waitForIdle(500,2000)
      await button03.click();
      await button02.click();
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0200 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0120
       * @tc.name    Set the ResourceImageAttachmentOptions property string to add an image, and use replaceString to insert a string
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0120', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0120 start.`);
      Settings.createWindow("testability/pages/UiComponentResourceImageAttachmentOption/UiComponentResourceImageAttachmentOption16")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentResourceImageAttachmentOption16_01'),1000);
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentResourceImageAttachmentOption16_02'),1000);
      let button03: Component = await driver.waitForComponent(ON.id('UiComponentResourceImageAttachmentOption16_03'),1000);
      await button01.click();
      await button03.click();
      await button02.click();
      windowSnap.snapShot()
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0120 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0130
       * @tc.name    Set the ResourceImageAttachmentOptions property string to add an image, and use the insertString to insert text before and after the image
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0130', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0130 start.`);
      Settings.createWindow("testability/pages/UiComponentResourceImageAttachmentOption/UiComponentResourceImageAttachmentOption17")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentResourceImageAttachmentOption17_01'),1000);
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentResourceImageAttachmentOption17_02'),1000);
      let button03: Component = await driver.waitForComponent(ON.id('UiComponentResourceImageAttachmentOption17_03'),1000);
      await button01.click();
      await button03.click();
      await button02.click();
      windowSnap.snapShot()
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0130 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0070
       * @tc.name    Apply the image resource to the property string and set the verticalAlign
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0070', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0070 start.`);
      Settings.createWindow("testability/pages/UiComponentResourceImageAttachmentOption/UiComponentResourceImageAttachmentOption18")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentResourceImageAttachmentOption18_01'),1000);
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentResourceImageAttachmentOption18_02'),1000);
      await button01.click();
      await button02.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0070 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0080
       * @tc.name    Apply the image resource to the property string and set the objectFit
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0080', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0080 start.`);
      Settings.createWindow("testability/pages/UiComponentResourceImageAttachmentOption/UiComponentResourceImageAttachmentOption19")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentResourceImageAttachmentOption19_01'),1000);
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentResourceImageAttachmentOption19_02'),1000);
      await button01.click();
      await button02.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_RESOURCEIMAGE_ATTACHMENTOPTIOND_0080 finish.`);
      done()
    })

  })
}
