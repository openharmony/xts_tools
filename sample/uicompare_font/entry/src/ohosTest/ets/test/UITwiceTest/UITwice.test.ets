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

export default function UITwiceTest() {

  describe('UITwiceTest', () => {
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
      Settings.createWindow("testability/pages/UITwice/UITwice001")
      await Utils.sleep(1000)
      let driver: Driver=Driver.create()
      let text: Component = await driver.findComponent(ON.id('TextInput001'))
      await text.inputText('aaaaaaaaaaaaaaaaaaaaaaaaaa')
      windowSnap.snapShot()
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
      Settings.createWindow("testability/pages/UITwice/UITwice002")
      await Utils.sleep(1000)
      let driver: Driver=Driver.create()
      let text: Component = await driver.findComponent(ON.id('TextInput002'))
      await text.inputText('aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa')
      windowSnap.snapShot()
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
      Settings.createWindow("testability/pages/UITwice/UITwice003")
      await Utils.sleep(1000)
      let driver: Driver=Driver.create()
      let text: Component = await driver.findComponent(ON.id('UITwice003'))
      await text.inputText('aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa')
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_0010 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0130
     * @tc.name    Set the font to be thinner
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0130', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0130 start.`);
      Settings.createWindow("testability/pages/UITwice/UITwice004")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0130 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0070
     * @tc.name    Set text underlining
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0070', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0070 start.`);
      Settings.createWindow("testability/pages/UITwice/UITwice005")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0070 finish.`);
      done()
    })

    /*
        * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0140
        * @tc.name    Setting the font weight is normal
        * @tc.desc    Function test
        * @tc.size    MediumTest
        * @tc.type    Function
        * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0140', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0140 start.`);
      Settings.createWindow("testability/pages/UITwice/UITwice006")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0140 finish.`);
      done()
    })

    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0030
    * @tc.name    Set span content to String text "hello world"
    * @tc.desc    Function test
    * @tc.size    MediumTest
    * @tc.type    Function
    * @tc.level   0
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0030', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0030 start.`);
      Settings.createWindow("testability/pages/UITwice/UITwice007")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0030 finish.`);
      done()
    })

    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0150
    * @tc.name    Set the font weight regular
    * @tc.desc    Function test
    * @tc.size    MediumTest
    * @tc.type    Function
    * @tc.level   0
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0150', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0150 start.`);
      Settings.createWindow("testability/pages/UITwice/UITwice008")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0150 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0180
     * @tc.name    Set the font weight Bolder
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0180', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0180 start.`);
      Settings.createWindow("testability/pages/UITwice/UITwice009")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0180 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0120
     * @tc.name    Set italics for the text component
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0120', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0120 start.`);
      Settings.createWindow("testability/pages/UITwice/UITwice010")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0120 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0170
     * @tc.name    Set the font weight Bold
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0170', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0170 start.`);
      Settings.createWindow("testability/pages/UITwice/UITwice011")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0170 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0060
     * @tc.name    Sets the modifier line that runs through the text
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0060', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0060 start.`);
      Settings.createWindow("testability/pages/UITwice/UITwice012")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0060 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0040
     * @tc.name    Sets no modifier
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0040', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0040 start.`);
      Settings.createWindow("testability/pages/UITwice/UITwice013")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0040 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0190
     * @tc.name    Sets the text line height is 30
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0190', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0190 start.`);
      Settings.createWindow("testability/pages/UITwice/UITwice014")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0190 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0160
     * @tc.name    Set the font weight to be appropriate
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0160', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0160 start.`);
      Settings.createWindow("testability/pages/UITwice/UITwice015")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0160 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0160
     * @tc.name    Set the span content to empty text
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0010', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0010 start.`);
      Settings.createWindow("testability/pages/UITwice/UITwice016")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0010 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0050
     * @tc.name    Set the text underline modification
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0050', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0050 start.`);
      Settings.createWindow("testability/pages/UITwice/UITwice017")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0050 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0080
     * @tc.name    Set the font color for the span text component
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0080', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0080 start.`);
      Settings.createWindow("testability/pages/UITwice/UITwice018")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0080 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0210
     * @tc.name    Set the text to be all lowercase
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0210', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0210 start.`);
      Settings.createWindow("testability/pages/UITwice/UITwice019")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0210 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0230
     * @tc.name    Set the text to be case-sensitive
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0230', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0230 start.`);
      Settings.createWindow("testability/pages/UITwice/UITwice020")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0230 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0250
     * @tc.name    Set the character spacing to -5
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0250', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0250 start.`);
      Settings.createWindow("testability/pages/UITwice/UITwice021")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0250 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0240
     * @tc.name    Set the character spacing to 10
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0240', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0240 start.`);
      Settings.createWindow("testability/pages/UITwice/UITwice022")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0240 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0220
     * @tc.name    Set the text to be all UpperCase
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0220', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0220 start.`);
      Settings.createWindow("testability/pages/UITwice/UITwice023")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0220 finish.`);
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
      Settings.createWindow("testability/pages/UITwice/UITwice024")
      await Utils.sleep(1000)
      windowSnap.snapShot()
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
      Settings.createWindow("testability/pages/UITwice/UITwice026")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_0080 finish.`);
      done()
    })

    /*
     * @tc.number  TestCase_7e7732bd8a0d44caa07b3d23b3a4145d
     * @tc.name    Set fontFeature to the ss04 attribute
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('TestCase_7e7732bd8a0d44caa07b3d23b3a4145d', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `TestCase_7e7732bd8a0d44caa07b3d23b3a4145d start.`);
      Settings.createWindow("testability/pages/UITwice/UITwice030")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `TestCase_7e7732bd8a0d44caa07b3d23b3a4145d finish.`);
      done()
    })

    /*
     * @tc.number  TestCase_affd452e8e26418da5a7223c68ceca1d
     * @tc.name    Set fontFeature to the ss03 attribute
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('TestCase_affd452e8e26418da5a7223c68ceca1d', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `TestCase_affd452e8e26418da5a7223c68ceca1d start.`);
      Settings.createWindow("testability/pages/UITwice/UITwice031")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `TestCase_affd452e8e26418da5a7223c68ceca1d finish.`);
      done()
    })

    /*
     * @tc.number  TestCase_18e92c27dbe84086b654289959c2f93f_745
     * @tc.name    Set fontFeature to the ss03 attribute
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('TestCase_18e92c27dbe84086b654289959c2f93f_745', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `TestCase_18e92c27dbe84086b654289959c2f93f_745 start.`);
      Settings.createWindow("testability/pages/UITwice/UITwice032")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `TestCase_18e92c27dbe84086b654289959c2f93f_745 finish.`);
      done()
    })

  })
}
