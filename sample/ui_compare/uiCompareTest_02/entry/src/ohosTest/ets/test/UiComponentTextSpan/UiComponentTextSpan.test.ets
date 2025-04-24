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

export default function UiComponentTextSpan() {

  describe('UiComponentTextSpan', () => {
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
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0130
     * @tc.name    Set the font to be thinner
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0130', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0130 start.`);
      Settings.createWindow("testability/pages/UiComponentTextSpan/UiComponentTextSpan01")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0130')
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
      Settings.createWindow("testability/pages/UiComponentTextSpan/UiComponentTextSpan02")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0070')
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
      Settings.createWindow("testability/pages/UiComponentTextSpan/UiComponentTextSpan03")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0140')
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
      Settings.createWindow("testability/pages/UiComponentTextSpan/UiComponentTextSpan04")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0030')
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
      Settings.createWindow("testability/pages/UiComponentTextSpan/UiComponentTextSpan05")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0150')
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
      Settings.createWindow("testability/pages/UiComponentTextSpan/UiComponentTextSpan06")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0180')
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
      Settings.createWindow("testability/pages/UiComponentTextSpan/UiComponentTextSpan07")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0120')
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
      Settings.createWindow("testability/pages/UiComponentTextSpan/UiComponentTextSpan08")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0170')
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
      Settings.createWindow("testability/pages/UiComponentTextSpan/UiComponentTextSpan09")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0060')
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
      Settings.createWindow("testability/pages/UiComponentTextSpan/UiComponentTextSpan10")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0040')
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
      Settings.createWindow("testability/pages/UiComponentTextSpan/UiComponentTextSpan11")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0190')
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
      Settings.createWindow("testability/pages/UiComponentTextSpan/UiComponentTextSpan12")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0160')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0160 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0010
     * @tc.name    Set the span content to empty text
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0010', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0010 start.`);
      Settings.createWindow("testability/pages/UiComponentTextSpan/UiComponentTextSpan13")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0010')
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
      Settings.createWindow("testability/pages/UiComponentTextSpan/UiComponentTextSpan14")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0050')
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
      Settings.createWindow("testability/pages/UiComponentTextSpan/UiComponentTextSpan15")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0080')
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
      Settings.createWindow("testability/pages/UiComponentTextSpan/UiComponentTextSpan16")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0210')
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
      Settings.createWindow("testability/pages/UiComponentTextSpan/UiComponentTextSpan17")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0230')
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
      Settings.createWindow("testability/pages/UiComponentTextSpan/UiComponentTextSpan18")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0250')
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
      Settings.createWindow("testability/pages/UiComponentTextSpan/UiComponentTextSpan19")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0240')
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
      Settings.createWindow("testability/pages/UiComponentTextSpan/UiComponentTextSpan20")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0220')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0220 finish.`);
      done()
    })
  })
}
