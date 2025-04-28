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

export default function UiTestCase() {

  describe('UiTestCase', () => {
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
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0010
     * @tc.name    Set fontFeature to the ss04 attribute
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0010', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0010 start.`);
      Settings.createWindow("testability/pages/UiTestCase/UiTestCase01")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0010')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0010 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0011
     * @tc.name    Set fontFeature to the ss03 attribute
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0011', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0011 start.`);
      Settings.createWindow("testability/pages/UiTestCase/UiTestCase02")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0011')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0011 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0012
     * @tc.name    Set fontFeature to the case
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0012', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0012 start.`);
      Settings.createWindow("testability/pages/UiTestCase/UiTestCase03")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0012')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0012 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0013
     * @tc.name    Set fontFeature to the ordn property
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0013', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0013 start.`);
      Settings.createWindow("testability/pages/UiTestCase/UiTestCase04")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0013')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0013 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0015
     * @tc.name    Set fontFeature to the sups property
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0015', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0015 start.`);
      Settings.createWindow("testability/pages/UiTestCase/UiTestCase05")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0015')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0015 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0016
     * @tc.name    Set fontFeature to the tnum property
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0016', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0016 start.`);
      Settings.createWindow("testability/pages/UiTestCase/UiTestCase06")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0016')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0016 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0014
     * @tc.name    Set fontFeature to the locl property
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0014', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0014 start.`);
      Settings.createWindow("testability/pages/UiTestCase/UiTestCase07")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0014')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0014 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0017
     * @tc.name    Set fontFeature to the fwid property
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0017', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0017 start.`);
      Settings.createWindow("testability/pages/UiTestCase/UiTestCase08")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0017')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0017 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0018
     * @tc.name    Set fontFeature to the ss05 property
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0018', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0018 start.`);
      Settings.createWindow("testability/pages/UiTestCase/UiTestCase09")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0018')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0018 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0021
     * @tc.name    Set fontFeature to the numr property
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0021', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0021 start.`);
      Settings.createWindow("testability/pages/UiTestCase/UiTestCase10")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0021')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0021 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0022
     * @tc.name    Set fontFeature to the pnum property
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0022', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0022 start.`);
      Settings.createWindow("testability/pages/UiTestCase/UiTestCase11")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0022')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0022 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0024
     * @tc.name    Set fontFeature to the sinf property
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0024', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0024 start.`);
      Settings.createWindow("testability/pages/UiTestCase/UiTestCase12")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0024')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0024 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0027
     * @tc.name    Set fontFeature to the sups property
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0027', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0027 start.`);
      Settings.createWindow("testability/pages/UiTestCase/UiTestCase13")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0027')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0027 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0031
     * @tc.name    Set fontFeature to the ss06 property
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0031', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0031 start.`);
      Settings.createWindow("testability/pages/UiTestCase/UiTestCase14")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0031')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0031 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0032
     * @tc.name    Set fontFeature to a different property value sups|subs
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0032', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0032 start.`);
      Settings.createWindow("testability/pages/UiTestCase/UiTestCase15")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0032')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0032 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0042
     * @tc.name    Set fontFeature to liga
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0042', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0042 start.`);
      Settings.createWindow("testability/pages/UiTestCase/UiTestCase16")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0042')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0042 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0039
     * @tc.name    Set fontFeature to null/undefined
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0039', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0039 start.`);
      Settings.createWindow("testability/pages/UiTestCase/UiTestCase17")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0039')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0039 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0038
     * @tc.name    Set fontFeature to frac
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0038', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0038 start.`);
      Settings.createWindow("testability/pages/UiTestCase/UiTestCase18")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0038')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0038 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0046
     * @tc.name    The span of a subcomponent of the text component supports setting the fontFeature property
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0046', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0046 start.`);
      Settings.createWindow("testability/pages/UiTestCase/UiTestCase19")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0046')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0046 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0029
     * @tc.name    Set fontFeature to ss02
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0029', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0029 start.`);
      Settings.createWindow("testability/pages/UiTestCase/UiTestCase20")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0029')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0029 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0036
     * @tc.name    Set fontFeature to ss01
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0036', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0036 start.`);
      Settings.createWindow("testability/pages/UiTestCase/UiTestCase21")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0036')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0036 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0045
     * @tc.name    Set multiple different types of property values
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0045', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0045 start.`);
      Settings.createWindow("testability/pages/UiTestCase/UiTestCase22")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0045')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0045 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0025
     * @tc.name    Set fontFeature to ss08
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0025', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0025 start.`);
      Settings.createWindow("testability/pages/UiTestCase/UiTestCase23")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0025')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0045 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0028
     * @tc.name    Set fontFeature to ss09
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0028', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0028 start.`);
      Settings.createWindow("testability/pages/UiTestCase/UiTestCase24")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0028')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0028 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0020
     * @tc.name    Set superscript/subscript properties at the same time
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0020', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0020 start.`);
      Settings.createWindow("testability/pages/UiTestCase/UiTestCase25")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0020')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0020 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0030
     * @tc.name    Set the property value to normal
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0030', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0030 start.`);
      Settings.createWindow("testability/pages/UiTestCase/UiTestCase26")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0030')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0030 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0035
     * @tc.name    Attribute value setting outlier "1" | 0”
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0035', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0035 start.`);
      Settings.createWindow("testability/pages/UiTestCase/UiTestCase27")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0035')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0035 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0034
     * @tc.name    The attribute value is set to an illegal value
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0034', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0034 start.`);
      Settings.createWindow("testability/pages/UiTestCase/UiTestCase28")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0034')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0034 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0040
     * @tc.name    The attribute value is set to an exception string value
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0040', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0040 start.`);
      Settings.createWindow("testability/pages/UiTestCase/UiTestCase29")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0040')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0040 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0033
     * @tc.name    The attribute value is set to the normal value on | off
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0033', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0033 start.`);
      Settings.createWindow("testability/pages/UiTestCase/UiTestCase30")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0033')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0033 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0043
     * @tc.name    The attribute value is set to a normal value of 1 | 0
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0043', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0043 start.`);
      Settings.createWindow("testability/pages/UiTestCase/UiTestCase31")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0043')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0043 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0044
     * @tc.name    Set the fontFeature multiple times
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0044', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0044 start.`);
      Settings.createWindow("testability/pages/UiTestCase/UiTestCase32")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0044')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0044 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0048
     * @tc.name    Set fontFeature to the hwid property
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0048', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0048 start.`);
      Settings.createWindow("testability/pages/UiTestCase/UiTestCase33")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0048')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0048 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0019
     * @tc.name    The value of the on|off attribute is not set
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0019', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0019 start.`);
      Settings.createWindow("testability/pages/UiTestCase/UiTestCase34")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0019')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0019 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0041
     * @tc.name    In inline mode (TextArea/TextInput), set the fontFeature text style
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0041', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0041 start.`);
      Settings.createWindow("testability/pages/UiTestCase/UiTestCase35")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0041')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0041 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0037
     * @tc.name    Dynamically switch the style mode of the component to view the display of text styles
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0037', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0037 start.`);
      Settings.createWindow("testability/pages/UiTestCase/UiTestCase36")
      await Utils.sleep(1000)
      let driver: Driver=Driver.create()
      let button: Component = await driver.findComponent(ON.id('UiTestCase36'))
      await button.click()
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0037')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0037 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0023
     * @tc.name    Dynamically switch the style mode of the component to view the display of text styles
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0023', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0023 start.`);
      Settings.createWindow("testability/pages/UiTestCase/UiTestCase37")
      await Utils.sleep(1000)
      let driver: Driver=Driver.create()
      await driver.longClick(60,100)
      await Utils.sleep(1000)
      await driver.mouseClick({x:300, y:200}, MouseButton.MOUSE_BUTTON_LEFT, 2072);
      await driver.mouseClick({x:150, y:200}, MouseButton.MOUSE_BUTTON_LEFT, 2072);
      await driver.longClick(60,300)
      await Utils.sleep(1000)
      await driver.mouseClick({x:60, y:230}, MouseButton.MOUSE_BUTTON_LEFT, 2072)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0023')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0023 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_SELECTION_0080
     * @tc.name    The start position is less than 0 and the end position is equal to 0
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_SELECTION_0080', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_SELECTION_0080 start.`);
      Settings.createWindow("testability/pages/UiTestCase/UiTestCase38")
      await Utils.sleep(1000)
      let driver: Driver=Driver.create()
      let button: Component = await driver.findComponent(ON.id('UiTestCase38_button'))
      let text: Component = await driver.findComponent(ON.id('UiTestCase38_text'))
      await text.inputText('aaaa')
      await button.click()
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_SELECTION_0080')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_SELECTION_0080 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0047
     * @tc.name    Set fontFeature to vert
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0047', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0047 start.`);
      Settings.createWindow("testability/pages/UiTestCase/UiTestCase39")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0047')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0047 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0026
     * @tc.name    Set fontFeature to ss07
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0026', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0026 start.`);
      Settings.createWindow("testability/pages/UiTestCase/UiTestCase40")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0026')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_FONTFEATURE_0026 finish.`);
      done()
    })
  })
}
