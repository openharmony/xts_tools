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
     * @tc.number  TestCase_7e7732bd8a0d44caa07b3d23b3a4145d
     * @tc.name    Set fontFeature to the ss04 attribute
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('TestCase_7e7732bd8a0d44caa07b3d23b3a4145d', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `TestCase_7e7732bd8a0d44caa07b3d23b3a4145d start.`);
      Settings.createWindow("testability/pages/UiTestCase/UiTestCase01")
      await Utils.sleep(1000)
      windowSnap.snapShot('TestCase_7e7732bd8a0d44caa07b3d23b3a4145d')
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
      Settings.createWindow("testability/pages/UiTestCase/UiTestCase02")
      await Utils.sleep(1000)
      windowSnap.snapShot('TestCase_affd452e8e26418da5a7223c68ceca1d')
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
      Settings.createWindow("testability/pages/UiTestCase/UiTestCase03")
      await Utils.sleep(1000)
      windowSnap.snapShot('TestCase_18e92c27dbe84086b654289959c2f93f_745')
      await Utils.sleep(1000)
      Logger.info('TEST', `TestCase_18e92c27dbe84086b654289959c2f93f_745 finish.`);
      done()
    })

    /*
     * @tc.number  TestCase_62e38b74f513483fb634745dfd73869d
     * @tc.name    Set fontFeature to the ordn property
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('TestCase_62e38b74f513483fb634745dfd73869d', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `TestCase_62e38b74f513483fb634745dfd73869d start.`);
      Settings.createWindow("testability/pages/UiTestCase/UiTestCase04")
      await Utils.sleep(1000)
      windowSnap.snapShot('TestCase_62e38b74f513483fb634745dfd73869d')
      await Utils.sleep(1000)
      Logger.info('TEST', `TestCase_62e38b74f513483fb634745dfd73869d finish.`);
      done()
    })

    /*
     * @tc.number  TestCase_8d618574b12c47a89b4799d038573754
     * @tc.name    Set fontFeature to the sups property
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('TestCase_8d618574b12c47a89b4799d038573754', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `TestCase_8d618574b12c47a89b4799d038573754 start.`);
      Settings.createWindow("testability/pages/UiTestCase/UiTestCase05")
      await Utils.sleep(1000)
      windowSnap.snapShot('TestCase_8d618574b12c47a89b4799d038573754')
      await Utils.sleep(1000)
      Logger.info('TEST', `TestCase_8d618574b12c47a89b4799d038573754 finish.`);
      done()
    })

    /*
     * @tc.number  TestCase_6ccf902c7e5c4d9e9ce59bf55529abc6
     * @tc.name    Set fontFeature to the tnum property
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('TestCase_6ccf902c7e5c4d9e9ce59bf55529abc6', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `TestCase_6ccf902c7e5c4d9e9ce59bf55529abc6 start.`);
      Settings.createWindow("testability/pages/UiTestCase/UiTestCase06")
      await Utils.sleep(1000)
      windowSnap.snapShot('TestCase_6ccf902c7e5c4d9e9ce59bf55529abc6')
      await Utils.sleep(1000)
      Logger.info('TEST', `TestCase_6ccf902c7e5c4d9e9ce59bf55529abc6 finish.`);
      done()
    })

    /*
     * @tc.number  TestCase_bfae2919c52447659bd78be216a4cbc4
     * @tc.name    Set fontFeature to the locl property
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('TestCase_bfae2919c52447659bd78be216a4cbc4', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `TestCase_bfae2919c52447659bd78be216a4cbc4 start.`);
      Settings.createWindow("testability/pages/UiTestCase/UiTestCase07")
      await Utils.sleep(1000)
      windowSnap.snapShot('TestCase_bfae2919c52447659bd78be216a4cbc4')
      await Utils.sleep(1000)
      Logger.info('TEST', `TestCase_bfae2919c52447659bd78be216a4cbc4 finish.`);
      done()
    })

    /*
     * @tc.number  TestCase_c01fa72625e3462185fa5f30d2ddc3ab_513
     * @tc.name    Set fontFeature to the fwid property
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('TestCase_c01fa72625e3462185fa5f30d2ddc3ab_513', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `TestCase_c01fa72625e3462185fa5f30d2ddc3ab_513 start.`);
      Settings.createWindow("testability/pages/UiTestCase/UiTestCase08")
      await Utils.sleep(1000)
      windowSnap.snapShot('TestCase_c01fa72625e3462185fa5f30d2ddc3ab_513')
      await Utils.sleep(1000)
      Logger.info('TEST', `TestCase_c01fa72625e3462185fa5f30d2ddc3ab_513 finish.`);
      done()
    })

    /*
     * @tc.number  TestCase_e819a4c2faab4092926606af04a2fe87
     * @tc.name    Set fontFeature to the ss05 property
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('TestCase_e819a4c2faab4092926606af04a2fe87', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `TestCase_e819a4c2faab4092926606af04a2fe87 start.`);
      Settings.createWindow("testability/pages/UiTestCase/UiTestCase09")
      await Utils.sleep(1000)
      windowSnap.snapShot('TestCase_e819a4c2faab4092926606af04a2fe87')
      await Utils.sleep(1000)
      Logger.info('TEST', `TestCase_e819a4c2faab4092926606af04a2fe87 finish.`);
      done()
    })

    /*
     * @tc.number  TestCase_91b7338b58b14995bdaba8614362b332_346
     * @tc.name    Set fontFeature to the numr property
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('TestCase_91b7338b58b14995bdaba8614362b332_346', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `TestCase_91b7338b58b14995bdaba8614362b332_346 start.`);
      Settings.createWindow("testability/pages/UiTestCase/UiTestCase10")
      await Utils.sleep(1000)
      windowSnap.snapShot('TestCase_91b7338b58b14995bdaba8614362b332_346')
      await Utils.sleep(1000)
      Logger.info('TEST', `TestCase_91b7338b58b14995bdaba8614362b332_346 finish.`);
      done()
    })

    /*
     * @tc.number  TestCase_d0ea1c02678a4aa7adfb57837592c396
     * @tc.name    Set fontFeature to the pnum property
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('TestCase_d0ea1c02678a4aa7adfb57837592c396', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `TestCase_d0ea1c02678a4aa7adfb57837592c396 start.`);
      Settings.createWindow("testability/pages/UiTestCase/UiTestCase11")
      await Utils.sleep(1000)
      windowSnap.snapShot('TestCase_d0ea1c02678a4aa7adfb57837592c396')
      await Utils.sleep(10000)
      Logger.info('TEST', `TestCase_d0ea1c02678a4aa7adfb57837592c396 finish.`);
      done()
    })

    /*
     * @tc.number  TestCase_91b7338b58b14995bdaba8614362b332
     * @tc.name    Set fontFeature to the sinf property
     * @tc.desc    Function test
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('TestCase_91b7338b58b14995bdaba8614362b332', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `TestCase_91b7338b58b14995bdaba8614362b332 start.`);
      Settings.createWindow("testability/pages/UiTestCase/UiTestCase12")
      await Utils.sleep(1000)
      windowSnap.snapShot('TestCase_91b7338b58b14995bdaba8614362b332')
      await Utils.sleep(10000)
      Logger.info('TEST', `TestCase_91b7338b58b14995bdaba8614362b332 finish.`);
      done()
    })

  })
}
