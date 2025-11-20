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

export default function UiComponentTextRichEditorAction() {

  describe('UiComponentTextRichEditorAction', () => {
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
       * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_9999
       * @tc.name    Set the custom keyboard to an illegal value, and open the system input method after the input box is activated
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_9999', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_9999 start.`);
      Settings.createWindow("testability/pages/UiComponentTextRichEditorAction/UiComponentTextRichEditorAction01")
      let driver:Driver=Driver.create();
      let RichEditor: Component = await driver.waitForComponent(ON.id('UiComponentTextRichEditorAction01'),1000);
      await RichEditor.click()
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_9999 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0460
       * @tc.name    There are multiple input boxes on the page, double-click and click on other input boxes, and the cursor will display normally
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0460', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0460 start.`);
      Settings.createWindow("testability/pages/UiComponentTextRichEditorAction/UiComponentTextRichEditorAction02")
      let driver:Driver=Driver.create();
      let RichEditor01: Component = await driver.waitForComponent(ON.id('UiComponentTextRichEditorAction02_01'),1000);
      let RichEditor02: Component = await driver.waitForComponent(ON.id('UiComponentTextRichEditorAction02_02'),1000);
      await RichEditor02.doubleClick()
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await RichEditor01.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0460 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0090
       * @tc.name    Triggers keyboard arrow keys when the mouse is selected
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0090', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0090 start.`);
      Settings.createWindow("testability/pages/UiComponentTextRichEditorAction/UiComponentTextRichEditorAction03")
      let driver:Driver=Driver.create();
      let RichEditor: Component = await driver.waitForComponent(ON.id('UiComponentTextRichEditorAction03'),1000);
      let point = await RichEditor.getBoundsCenter()
      await driver.mouseDrag({x:point.x, y:point.y},{x:point.x-200, y:point.y-200},600);
      await driver.waitForIdle(500,2000)
      await driver.triggerKey(2014)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0090 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0070_203
       * @tc.name    Open/close the pop-up window, and the cursor behaves normally
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0070_203', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0070_203 start.`);
      Settings.createWindow("testability/pages/UiComponentTextRichEditorAction/UiComponentTextRichEditorAction04")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentTextRichEditorAction04_01'),1000);
      let RichEditor01: Component = await driver.waitForComponent(ON.id('UiComponentTextRichEditorAction04_03'),1000);
      await RichEditor01.inputText('hello')
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await button01.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await driver.mouseClick({x:400,y:1150},MouseButton.MOUSE_BUTTON_LEFT)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0070_203 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0070_203_816
       * @tc.name    Open/close the pop-up window, and the handle behaves normally
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0070_203_816', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0070_203_816 start.`);
      Settings.createWindow("testability/pages/UiComponentTextRichEditorAction/UiComponentTextRichEditorAction05")
      let driver:Driver=Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentTextRichEditorAction05_01'),1000);
      let RichEditor01: Component = await driver.waitForComponent(ON.id('UiComponentTextRichEditorAction05_03'),1000);
      await RichEditor01.inputText('hellohellohello')
      await driver.waitForIdle(500,2000)
      await driver.longClick(435,465)
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await button01.click()
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await driver.mouseClick({x:400,y:1150},MouseButton.MOUSE_BUTTON_LEFT)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0070_203_816 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0070_331
       * @tc.name    The cursor is not visible after turning pages with multiple lines of text
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0070_331', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0070_331 start.`);
      Settings.createWindow("testability/pages/UiComponentTextRichEditorAction/UiComponentTextRichEditorAction06")
      let driver:Driver=Driver.create();
      let richeditor: Component = await driver.waitForComponent(ON.id('UiComponentTextRichEditorAction06'),1000);
      let point = await richeditor.getBoundsCenter()
      await richeditor.inputText('hellohellohellohellohellohellohellohellohellohello')
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await driver.mouseScroll({x:point.x, y:point.y}, false, 30)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0070_331 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0120_963_084
       * @tc.name    Set the row height to exceed the time to observe the cursor position
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0120_963_084', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0120_963_084 start.`);
      Settings.createWindow("testability/pages/UiComponentTextRichEditorAction/UiComponentTextRichEditorAction07")
      let driver:Driver=Driver.create();
      let button: Component = await driver.waitForComponent(ON.id('UiComponentTextRichEditorAction07_01'),1000);
      let richeditor: Component = await driver.waitForComponent(ON.id('UiComponentTextRichEditorAction07_02'),1000);
      await richeditor.click()
      await driver.waitForIdle(500,2000)
      await button.click()
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0120_963_084 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0270_603
       * @tc.name    set return false to aboutToIMEInput, and enter an expression when using a single handle
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0270_603', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0270_603 start.`);
      Settings.createWindow("testability/pages/UiComponentTextRichEditorAction/UiComponentTextRichEditorAction08")
      let driver: Driver = Driver.create();
      let richeditor: Component = await driver.waitForComponent(ON.id('UiComponentTextRichEditorAction08_01'), 1000);
      let point = await richeditor.getBoundsCenter();
      await richeditor.click()
      await driver.waitForIdle(500, 2000)
      windowSnap.snapShot()
      await driver.inputText(point, '😀');
      await driver.waitForIdle(500, 2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0270_603 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0120_963_085
       * @tc.name    Test cursor height with preset line height and font size when placeholder exists
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0120_963_085', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0120_963_085 start.`);
      Settings.createWindow("testability/pages/UiComponentTextRichEditorAction/UiComponentTextRichEditorAction10")
      let driver: Driver = Driver.create();
      let richeditor: Component = await driver.waitForComponent(ON.id('UiComponentTextRichEditorAction10_01'), 2000);
      let button: Component = await driver.waitForComponent(ON.id('UiComponentTextRichEditorAction10_02'), 2000);
      await richeditor.click();
      windowSnap.snapShot()
      await driver.waitForIdle(200, 2000)
      await button.click()
      await driver.waitForIdle(200, 2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0120_963_085 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0440
       * @tc.name    Test mouse selection area uniqueness
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0440', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0440 start.`);
      Settings.createWindow("testability/pages/UiComponentTextRichEditorAction/UiComponentTextRichEditorAction11")
      let driver: Driver = Driver.create();
      let richeditor1: Component = await driver.waitForComponent(ON.id('UiComponentTextRichEditorAction11_01'), 2000);
      let richeditor2: Component = await driver.waitForComponent(ON.id('UiComponentTextRichEditorAction11_02'), 2000);
      await driver.waitForIdle(200, 2000)
      let point1 = await richeditor2.getBoundsCenter()
      await driver.mouseDrag({x: point1.x - 50, y: point1.y}, {x: point1.x + 50, y: point1.y});
      await driver.waitForIdle(200, 2000)
      windowSnap.snapShot()
      await driver.waitForIdle(200, 2000)
      let point2 = await richeditor1.getBoundsCenter()
      await driver.mouseDrag({x: point2.x - 40, y: point2.y}, {x: point2.x + 40, y: point2.y});
      await driver.waitForIdle(200, 2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0440 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0070_197_856
       * @tc.name    Test text selection and menu after keyboard dismissal
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0070_197_856', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0070_197_856 start.`);
      Settings.createWindow("testability/pages/UiComponentTextRichEditorAction/UiComponentTextRichEditorAction12")
      let driver: Driver = Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentTextRichEditorAction12_01'), 2000);
      let activateBtn: Component = await driver.waitForComponent(ON.id('UiComponentTextRichEditorAction12_OperateBtn'), 2000);
      await button01.click()
      await driver.waitForIdle(200, 2000)
      windowSnap.snapShot()
      await activateBtn.click()
      await driver.waitForIdle(200, 2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0070_197_856 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0070_066
       * @tc.name    Adding or subtracting padding, the cursor display is normal
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0070_066', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0070_066 start.`);
      Settings.createWindow("testability/pages/UiComponentTextRichEditorAction/UiComponentTextRichEditorAction13")
      let driver: Driver = Driver.create();
      let ricneditor: Component = await driver.waitForComponent(ON.id('UiComponentTextRichEditorAction13_Editor'), 2000);
      let button: Component = await driver.waitForComponent(ON.id('UiComponentTextRichEditorAction13_IncreasePadding'), 2000);
      await ricneditor.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      await button.click()
      await driver.waitForIdle(200, 2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0070_066 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0070_586
       * @tc.name    Multiple addition of text, image, symbol, builder can trigger internal scrolling of components
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0070_586', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0070_586 start.`);
      Settings.createWindow("testability/pages/UiComponentTextRichEditorAction/UiComponentTextRichEditorAction14")
      let driver: Driver = Driver.create();
      let addTextBtn: Component = await driver.waitForComponent(ON.id('UiComponentTextRichEditorAction14_AddText'), 2000);
      let addImageBtn: Component = await driver.waitForComponent(ON.id('UiComponentTextRichEditorAction14_AddImage'), 2000);
      let addSymbolBtn: Component = await driver.waitForComponent(ON.id('UiComponentTextRichEditorAction14_AddSymbol'), 2000);
      let addBuilderBtn: Component = await driver.waitForComponent(ON.id('UiComponentTextRichEditorAction14_AddBuilder'), 2000);
      let batchAddBtn: Component = await driver.waitForComponent(ON.id('UiComponentTextRichEditorAction14_BatchAdd'), 2000);
      let builder: Component = await driver.waitForComponent(ON.id('UiComponentTextRichEditorAction14_01'), 2000);
      await builder.click();
      await addTextBtn.click();
      windowSnap.snapShot()
      await driver.waitForIdle(200, 2000)
      await addTextBtn.click();
      await addImageBtn.click();
      await addSymbolBtn.click()
      await addBuilderBtn.click();
      windowSnap.snapShot()
      await driver.waitForIdle(200, 2000)
      await batchAddBtn.click();
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0070_586 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0120
       * @tc.name    Insert images and text, cursor verification
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0120', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0120 start.`);
      Settings.createWindow("testability/pages/UiComponentTextRichEditorAction/UiComponentTextRichEditorAction15")
      let driver: Driver = Driver.create();
      let insertTextBtn: Component = await driver.waitForComponent(ON.id('UiComponentTextRichEditorAction15_InsertText'), 2000);
      let insertImageBtn: Component = await driver.waitForComponent(ON.id('UiComponentTextRichEditorAction15_InsertImage'), 2000);
      let richeditor: Component = await driver.waitForComponent(ON.id('UiComponentTextRichEditorAction15_Editor'), 2000);
      await richeditor.click();
      await driver.waitForIdle(200, 2000)
      windowSnap.snapShot()
      await insertImageBtn.click();
      await driver.waitForIdle(200, 2000)
      windowSnap.snapShot()
      await insertTextBtn.click();
      await driver.waitForIdle(200, 2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0120 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0010
       * @tc.name    Enter multiple lines of text, beyond the text box, select all text
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0010', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0010 start.`);
      Settings.createWindow("testability/pages/UiComponentTextRichEditorAction/UiComponentTextRichEditorAction16")
      let driver: Driver = Driver.create();
      let richeditor: Component = await driver.waitForComponent(ON.id('UiComponentTextRichEditorAction16_02'), 2000);
      let point = await richeditor.getBoundsCenter()
      await driver.click(point.x,point.y);
      await driver.mouseClick({x:point.x, y:point.y},MouseButton.MOUSE_BUTTON_RIGHT);
      await Utils.sleep(1000)
      await driver.mouseClick({x:point.x+100, y:point.y-50},MouseButton.MOUSE_BUTTON_LEFT);
      await driver.waitForIdle(200, 2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0010 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0120_963
       * @tc.name    Set the prompt text, do not enter content, check the cursor
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0120_963', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0120_963 start.`);
      Settings.createWindow("testability/pages/UiComponentTextRichEditorAction/UiComponentTextRichEditorAction17")
      let driver: Driver = Driver.create();
      let richeditor: Component = await driver.waitForComponent(ON.id('UiComponentTextRichEditorAction17_Editor'), 2000);
      windowSnap.snapShot()
      await driver.waitForIdle(200, 2000)
      await richeditor.inputText('hello')
      await driver.waitForIdle(200, 2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0120_963 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0070_331_093_348
       * @tc.name    The input content in the component is displayed normally
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0070_331_093_348', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0070_331_093_348 start.`);
      Settings.createWindow("testability/pages/UiComponentTextRichEditorAction/UiComponentTextRichEditorAction18")
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id('UiComponentTextRichEditorAction18_01'), 2000);
      let richeditor: Component = await driver.waitForComponent(ON.id('UiComponentTextRichEditorAction18_02'), 2000);
      await button.click()
      await richeditor.inputText('hello')
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0070_331_093_348 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0410
       * @tc.name    Long press on the different positions of the builderspan to select the content normally
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0410', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0410 start.`);
      Settings.createWindow("testability/pages/UiComponentTextRichEditorAction/UiComponentTextRichEditorAction19")
      let driver: Driver = Driver.create();
      let button01: Component = await driver.waitForComponent(ON.id('UiComponentTextRichEditorAction19_01'), 2000);
      let button02: Component = await driver.waitForComponent(ON.id('UiComponentTextRichEditorAction19_02'), 2000);
      let richeditor: Component = await driver.waitForComponent(ON.id('UiComponentTextRichEditorAction19_03'), 2000);
      let point = await richeditor.getBoundsCenter();
      await button02.click()
      await button01.click()
      await driver.longClick(point.x,point.y)
      await Utils.sleep(1500)
      await driver.longClick(point.x+20,point.y)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0410 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0410
       * @tc.name    Long press on the different positions of the builderspan to select the content normally
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACT0', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0410 start.`);
      Settings.createWindow("testability/pages/UiComponentTextRichEditorAction/UiComponentTextRichEditorAction20")
      let driver: Driver = Driver.create();
      let richeditor: Component = await driver.waitForComponent(ON.id('UiComponentTextRichEditorAction20'), 2000);
      let point = await richeditor.getBoundsCenter();
      await richeditor.click()
      await driver.waitForIdle(500,2000)
      await driver.longClick(point.x+100,point.y)
      await Utils.sleep(1000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0410 finish.`);
      done()
    })

  })
}

