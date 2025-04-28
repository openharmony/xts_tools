import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect, Level } from '@ohos/hypium'
import Settings from '../model/Settings'
import windowSnap from '../model/snapShot'
import Logger from '../model/Logger'
import Utils from '../model/Utils'
import { Driver, ON,Component ,MouseButton } from '@ohos.UiTest'
import { i18n } from '@kit.LocalizationKit'
import { BusinessError } from '@kit.BasicServicesKit'

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

export default function UiComponentTextRicheditor() {

  describe('UiComponentTextRicheditor', () => {
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
       * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0070
       * @tc.name    Click the search button to make the selected text out of focus
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0070', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0070 start.`);
      Settings.createWindow("testability/pages/UiComponentTextRicheditor/UiComponentTextRicheditor02")
      await Utils.sleep(1000)
      let driver: Driver=Driver.create()
      let text: Component = await driver.findComponent(ON.id('UiComponentTextRicheditor02'))
      await text.inputText('aaaaaaaaa')
      await Utils.sleep(1000)
      await driver.longClick(110,300)
      await Utils.sleep(1000)
      await driver.mouseClick({x:700,y:300}, MouseButton.MOUSE_BUTTON_LEFT, 2072);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0070')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0070 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERACTION_0020
       * @tc.name    The Search component gestures and clicks the cursor to pop up a single handle and menu
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERACTION_0020', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERACTION_0020 start.`);
      Settings.createWindow("testability/pages/UiComponentTextRicheditor/UiComponentTextRicheditor03")
      await Utils.sleep(1000)
      let driver: Driver=Driver.create()
      let text: Component = await driver.findComponent(ON.id('UiComponentTextRicheditor03'))
      await text.inputText('aaaaaaaaa')
      await Utils.sleep(1000)
      await driver.click(170,300)
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERACTION_0020')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERACTION_0020 finish.`);
      done()
    })

    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0080
    * @tc.name    Click the component input box several times and the cursor appears
    * @tc.desc    Function test
    * @tc.size    MediumTest
    * @tc.type    Function
    * @tc.level   0
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0080', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0080 start.`);
      Settings.createWindow("testability/pages/UiComponentTextRicheditor/UiComponentTextRicheditor03")
      await Utils.sleep(1000)
      let driver: Driver=Driver.create()
      let text: Component = await driver.findComponent(ON.id('UiComponentTextRicheditor03'))
      await text.inputText('aaaaaaaaa')
      await Utils.sleep(1000)
      await driver.click(20,300)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERACTION_0020_1')
      await Utils.sleep(1000)
      await driver.click(400,300)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERACTION_0020_2')
      await Utils.sleep(1000)
      await driver.click(100,300)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERACTION_0020_3')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0080 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE-GAUGE_0010
       * @tc.name    In the Gauge container, set privacySensitive to false
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0010', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0010`);
      Settings.createWindow("testability/pages/UiComponentTextRicheditor/UiComponentTextRicheditor05")
      await Utils.sleep(1000)
      windowSnap.snapShot('SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0010')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ARKUI_PRIVACYSENSITIVE_GAUGE_0010`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_RICHEDITOR_SYMBOL_ SHUFFLEEDITING_0370-GAUGE_0010
       * @tc.name    In the Gauge container, set privacySensitive to false
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_RICHEDITOR_SYMBOL_SHUFFLEEDITING_0370', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_RICHEDITOR_SYMBOL_SHUFFLEEDITING_0370`);
      Settings.createWindow("testability/pages/UiComponentTextRicheditor/UiComponentTextRicheditor06")
      await Utils.sleep(1000)
      let driver: Driver=Driver.create()
      await driver.longClick(300,100)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_RICHEDITOR_SYMBOL_SHUFFLEEDITING_0370_1')
      await driver.mouseClick({x:320, y:270}, MouseButton.MOUSE_BUTTON_LEFT, 2072);
      await Utils.sleep(1000)
      await driver.longClick(500,350)
      await driver.mouseClick({x:90, y:160}, MouseButton.MOUSE_BUTTON_LEFT, 2072);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_RICHEDITOR_SYMBOL_SHUFFLEEDITING_0370_2')
      await Utils.sleep(1000)
      await driver.longClick(200,250)
      await driver.mouseClick({x:150, y:200}, MouseButton.MOUSE_BUTTON_LEFT, 2072);
      await driver.mouseClick({x:150, y:170}, MouseButton.MOUSE_BUTTON_LEFT, 2072);
      await driver.longClick(500,350)
      await driver.mouseClick({x:80, y:170}, MouseButton.MOUSE_BUTTON_LEFT, 2072);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_RICHEDITOR_SYMBOL_SHUFFLEEDITING_0370_3')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_RICHEDITOR_SYMBOL_SHUFFLEEDITING_0370`);
      done()
    })

  })
}
