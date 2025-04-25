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

export default function UiComponentTextCommmonLineSpace() {

  describe('UiComponentTextCommonLineSpace', () => {
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
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_SHOWPASSWORD_0390
     * @tc.name    fontFeature is set to subs and the property value is set to 1
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_SHOWPASSWORD_0390', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_SHOWPASSWORD_0390 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonLineSpace/UiComponentTextCommonLineSpace01")
      await Utils.sleep(1000)
      let driver: Driver=Driver.create()
      let text: Component = await driver.findComponent(ON.id('TextInput001'))
      await text.inputText('aaaaaaaaaaaaaaaaaaaaaaaaaa')
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_SHOWPASSWORD_0390')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_SHOWPASSWORD_0390 finish.`);
      done()
    })

    /*
   * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_SHOWPASSWORD_0360
   * @tc.name    There is no heightAdaptivePolicy
   * @tc.desc    Function test
   * @tc.size    MediumTest
   * @tc.type    Function
   * @tc.level   0
  */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_SHOWPASSWORD_0360', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_SHOWPASSWORD_0360 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonLineSpace/UiComponentTextCommonLineSpace02")
      await Utils.sleep(1000)
      let driver: Driver=Driver.create()
      let text: Component = await driver.findComponent(ON.id('TextInput002'))
      await text.inputText('aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa')
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_SHOWPASSWORD_0360')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_SHOWPASSWORD_0360 finish.`);
      done()
    })

    /*
 * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_0010
 * @tc.name    There is no heightAdaptivePolicy
 * @tc.desc    Function test
 * @tc.size    MediumTest
 * @tc.type    Function
 * @tc.level   0
 */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_0010', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_0010 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonLineSpace/UiComponentTextCommonLineSpace03")
      await Utils.sleep(1000)
      let driver: Driver=Driver.create()
      let text: Component = await driver.findComponent(ON.id('UITwice003'))
      await text.inputText('aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa')
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_0010')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_0010 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_0070
     * @tc.name    text, set the width and height, set the super text, and set the textOverFlow
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_0070', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_0070 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonLineSpace/UiComponentTextCommonLineSpace04")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_0070')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_0070 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_0080
     * @tc.name    Create an ets page to display the text component without lineSpacing
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_0080', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_0080 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonLineSpace/UiComponentTextCommonLineSpace05")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_0080')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_0080 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0030
     * @tc.name    text: Set width and height, set ultra-large text, and set textOverFlow to Ellipsis
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0030', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0030 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonLineSpace/UiComponentTextCommonLineSpace06")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0030')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0030 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0040
     * @tc.name    text: Set width and height, set ultra-large text, and set textOverFlow to MARQUEE
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0040', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0040 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonLineSpace/UiComponentTextCommonLineSpace07")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0040')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0040 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0020
     * @tc.name    text: Set width and height, set ultra-large text, and set textOverFlow to Clip
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0020', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0020 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonLineSpace/UiComponentTextCommonLineSpace08")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0020')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0020 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0070
     * @tc.name    Set the component to an illegal value of type number
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0070', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0070 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonLineSpace/UiComponentTextCommonLineSpace09")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0070')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0070 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0080
     * @tc.name    Set the component to null
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0080', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0080 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonLineSpace/UiComponentTextCommonLineSpace10")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0080')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0080 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_0090
     * @tc.name    Set the normal value of type number for the component
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_0090', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_0090 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonLineSpace/UiComponentTextCommonLineSpace11")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_0090')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_0090 finish.`);
      done()
    })

  })
}
