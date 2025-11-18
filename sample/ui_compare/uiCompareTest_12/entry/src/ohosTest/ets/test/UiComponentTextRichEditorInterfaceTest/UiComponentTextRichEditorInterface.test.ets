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

import { afterEach, describe, it, Level } from '@ohos/hypium'
import Settings from '../model/Settings'
import Logger from '../model/Logger'
import Utils from '../model/Utils'
import { Component, Driver, ON } from '@kit.TestKit'
import { KeyCode } from '@kit.InputKit'
import windowSnap from '../model/snapShot'

export default function UiComponentTextRichEditorInterface() {
  describe('UiComponentTextRichEditorInterface', () => {
    afterEach(async (done: Function) => {
      if (Settings.windowClass == undefined) {
        done()
        return
      }
      Settings.windowClass.destroyWindow((err) => {
        if (err.code) {
          Logger.error('TEST', `Failed to destroy the window.Cause :${JSON.stringify(err)}`)
          return;
        }
        Logger.info('TEST', `Succeeded in destroy the window`);
      })
      await Utils.sleep(1000);
      done()
    })


    /*
        * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0031
        * @tc.name   : Using getSpans within the aboutToIMEInput callback can accurately obtain span information.
        * @tc.type   : Function
        * @tc.size   : UiTest
      * @tc.level  : 3
     */
    it("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0031", Level.LEVEL3, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorInterface/UiComponentTextRichEditorInterface0031")
      await Utils.sleep(1000)
      let driver = await Driver.create()
      
      // 点击RichEditor获取焦点，准备输入
      let richEditor0031 = await driver.waitForComponent(ON.id("richEditor0031"),500)
      await richEditor0031.click()
      await Utils.sleep(500)
      
      // 使用triggerKey模拟键盘输入，尝试触发aboutToIMEInput回调
      console.log("开始使用triggerKey模拟键盘输入...")
      
      // 模拟输入字母 T-E-S-T
      await driver.triggerKey(KeyCode.KEYCODE_T)
      await Utils.sleep(300)
      await driver.triggerKey(KeyCode.KEYCODE_E) 
      await Utils.sleep(300)
      await driver.triggerKey(KeyCode.KEYCODE_S)
      await Utils.sleep(300)
      await driver.triggerKey(KeyCode.KEYCODE_T)
      await Utils.sleep(300)
      
      console.log("triggerKey输入完成")
      await Utils.sleep(1000)
      
      // 截图：输入后，查看aboutToIMEInput回调中getSpans效果
      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0031_01")
      await Utils.sleep(1000)
      
      done();
    })

    /*
        * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0032
        * @tc.name   : Using getCaretOffset within the aboutToIMEInput callback can accurately obtain the cursor position before input.
        * @tc.type   : Function
        * @tc.size   : UiTest
      * @tc.level  : 3
     */
    it("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0032", Level.LEVEL3, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorInterface/UiComponentTextRichEditorInterface0032")
      await Utils.sleep(1000)
      let driver = await Driver.create()
      
      // 点击RichEditor获取焦点，准备输入
      let richEditor0032 = await driver.waitForComponent(ON.id("richEditor0032"),500)
      await richEditor0032.click()
      await Utils.sleep(500)
      
      // 使用triggerKey模拟键盘输入，尝试触发aboutToIMEInput回调
      console.log("开始使用triggerKey模拟键盘输入...")
      
      // 模拟输入字母 T-E-S-T
      await driver.triggerKey(KeyCode.KEYCODE_T)
      await Utils.sleep(300)
      await driver.triggerKey(KeyCode.KEYCODE_E) 
      await Utils.sleep(300)
      await driver.triggerKey(KeyCode.KEYCODE_S)
      await Utils.sleep(300)
      await driver.triggerKey(KeyCode.KEYCODE_T)
      await Utils.sleep(300)
      
      console.log("triggerKey输入完成")
      await Utils.sleep(1000)
      
      // 截图：输入后，查看aboutToIMEInput回调效果
      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0032_01")
      await Utils.sleep(1000)
      
      done();
    })

    /*
        * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0033
        * @tc.name   : Using getParagraphs within the aboutToIMEInput callback can accurately obtain paragraph styles and range information before input.
        * @tc.type   : Function
        * @tc.size   : UiTest
      * @tc.level  : 3
     */
    it("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0033", Level.LEVEL3, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorInterface/UiComponentTextRichEditorInterface0033")
      await Utils.sleep(1000)
      let driver = await Driver.create()
      
      // 点击RichEditor获取焦点，准备输入
      let richEditor0033 = await driver.waitForComponent(ON.id("richEditor0033"),500)
      await richEditor0033.click()
      await Utils.sleep(500)
      
      // 使用triggerKey模拟键盘输入，尝试触发aboutToIMEInput回调
      console.log("开始使用triggerKey模拟键盘输入...")
      
      // 模拟输入字母 T-E-S-T
      await driver.triggerKey(KeyCode.KEYCODE_T)
      await Utils.sleep(300)
      await driver.triggerKey(KeyCode.KEYCODE_E) 
      await Utils.sleep(300)
      await driver.triggerKey(KeyCode.KEYCODE_S)
      await Utils.sleep(300)
      await driver.triggerKey(KeyCode.KEYCODE_T)
      await Utils.sleep(300)
      
      console.log("triggerKey输入完成")
      await Utils.sleep(1000)
      
      // 截图：输入后，查看aboutToIMEInput回调中getParagraphs效果
      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0033_01")
      await Utils.sleep(1000)
      
      done();
    })

    /*
        * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0037
        * @tc.name   : Using getSpans within the aboutToDelete callback can accurately obtain span information before deletion.
        * @tc.type   : Function
        * @tc.size   : UiTest
      * @tc.level  : 3
     */
    it("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0037", Level.LEVEL3, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorInterface/UiComponentTextRichEditorInterface0037")
      await Utils.sleep(1000)
      let driver = await Driver.create()
      
      // 点击RichEditor获取焦点，准备删除操作
      let richEditor0037 = await driver.waitForComponent(ON.id("richEditor0037"),500)
      await richEditor0037.click()
      await Utils.sleep(500)
      
      // 先输入一些内容，然后删除来触发aboutToDelete回调
      console.log("使用triggerKey输入内容...")
      
      // 输入 T-E-S-T
      await driver.triggerKey(KeyCode.KEYCODE_T)
      await Utils.sleep(200)
      await driver.triggerKey(KeyCode.KEYCODE_E) 
      await Utils.sleep(200)
      await driver.triggerKey(KeyCode.KEYCODE_S)
      await Utils.sleep(200)
      await driver.triggerKey(KeyCode.KEYCODE_T)
      await Utils.sleep(500)
      
      // 模拟删除操作（使用退格键）
      await driver.triggerKey(KeyCode.KEYCODE_DEL)
      await Utils.sleep(200)
      await driver.triggerKey(KeyCode.KEYCODE_DEL)
      await Utils.sleep(200)
      await driver.triggerKey(KeyCode.KEYCODE_DEL)
      await Utils.sleep(200)
      await driver.triggerKey(KeyCode.KEYCODE_DEL)
      await Utils.sleep(1000)
      
      // 截图：删除后，查看aboutToDelete回调中getSpans效果
      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0037_01")
      await Utils.sleep(1000)
      
      done();
    })

    /*
        * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0038
        * @tc.name   : Using getCaretOffset within the aboutToDelete callback can accurately obtain the cursor position before deletion.
        * @tc.type   : Function
        * @tc.size   : UiTest
      * @tc.level  : 3
     */
     it("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0038", Level.LEVEL3, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorInterface/UiComponentTextRichEditorInterface0038")
      await Utils.sleep(1000)
      let driver = await Driver.create()
      
      // 点击RichEditor获取焦点，准备删除操作
      let richEditor0038 = await driver.waitForComponent(ON.id("richEditor0038"),500)
      await richEditor0038.click()
      await Utils.sleep(500)
      
      // 先输入一些内容，然后删除来触发aboutToDelete回调
      console.log("使用triggerKey输入内容...")
      
      // 输入 T-E-S-T
      await driver.triggerKey(KeyCode.KEYCODE_T)
      await Utils.sleep(200)
      await driver.triggerKey(KeyCode.KEYCODE_E) 
      await Utils.sleep(200)
      await driver.triggerKey(KeyCode.KEYCODE_S)
      await Utils.sleep(200)
      await driver.triggerKey(KeyCode.KEYCODE_T)
      await Utils.sleep(500)
      
      // 模拟删除操作（使用退格键）
      await driver.triggerKey(KeyCode.KEYCODE_DEL)
      await Utils.sleep(200)
      await driver.triggerKey(KeyCode.KEYCODE_DEL)
      await Utils.sleep(200)
      await driver.triggerKey(KeyCode.KEYCODE_DEL)
      await Utils.sleep(200)
      await driver.triggerKey(KeyCode.KEYCODE_DEL)
      await Utils.sleep(1000)
      
      // 截图：删除后，查看aboutToDelete回调中getCaretOffset效果
      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0038_01")
      await Utils.sleep(1000)
      
      done();
    })

    /*
        * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0039
        * @tc.name   : Using getParagraphs within the aboutToDelete callback can accurately obtain the paragraph styles and range information before deletion.
        * @tc.type   : Function
        * @tc.size   : UiTest
        * @tc.level  : 3
     */
     it("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0039", Level.LEVEL3, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorInterface/UiComponentTextRichEditorInterface0039")
      await Utils.sleep(1000)
      let driver = await Driver.create()
      
      // 点击RichEditor获取焦点，准备删除操作
      let richEditor0039 = await driver.waitForComponent(ON.id("richEditor0039"),500)
      await richEditor0039.click()
      await Utils.sleep(500)
      
      // 先输入一些内容，然后删除来触发aboutToDelete回调
      console.log("使用triggerKey输入内容...")
      
      // 输入 T-E-S-T
      await driver.triggerKey(KeyCode.KEYCODE_T)
      await Utils.sleep(200)
      await driver.triggerKey(KeyCode.KEYCODE_E) 
      await Utils.sleep(200)
      await driver.triggerKey(KeyCode.KEYCODE_S)
      await Utils.sleep(200)
      await driver.triggerKey(KeyCode.KEYCODE_T)
      await Utils.sleep(500)
      
      // 模拟删除操作（使用退格键）
      await driver.triggerKey(KeyCode.KEYCODE_DEL)
      await Utils.sleep(200)
      await driver.triggerKey(KeyCode.KEYCODE_DEL)
      await Utils.sleep(200)
      await driver.triggerKey(KeyCode.KEYCODE_DEL)
      await Utils.sleep(200)
      await driver.triggerKey(KeyCode.KEYCODE_DEL)
      await Utils.sleep(1000)
      
      // 截图：删除后，查看aboutToDelete回调中getParagraphs效果
      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0039_01")
      await Utils.sleep(1000)
      
      done();
    })

    /*
        * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0042
        * @tc.name   : Using getParagraphs within the onDeleteComplete callback can accurately obtain paragraph styles and range information.
        * @tc.type   : Function
        * @tc.size   : UiTest
      * @tc.level  : 3
     */
     it("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0042", Level.LEVEL3, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorInterface/UiComponentTextRichEditorInterface0042")
      await Utils.sleep(1000)
      let driver = await Driver.create()
      
      // 点击RichEditor获取焦点，准备删除操作
      let richEditor0042 = await driver.waitForComponent(ON.id("richEditor0042"),500)
      await richEditor0042.click()
      await Utils.sleep(500)
      
      // 先输入一些内容，然后删除来触发onDeleteComplete回调
      console.log("使用triggerKey输入内容...")
      
      // 输入 T-E-S-T
      await driver.triggerKey(KeyCode.KEYCODE_T)
      await Utils.sleep(200)
      await driver.triggerKey(KeyCode.KEYCODE_E) 
      await Utils.sleep(200)
      await driver.triggerKey(KeyCode.KEYCODE_S)
      await Utils.sleep(200)
      await driver.triggerKey(KeyCode.KEYCODE_T)
      await Utils.sleep(500)
      
      // 模拟删除操作（使用退格键）
      await driver.triggerKey(KeyCode.KEYCODE_DEL)
      await Utils.sleep(200)
      await driver.triggerKey(KeyCode.KEYCODE_DEL)
      await Utils.sleep(200)
      await driver.triggerKey(KeyCode.KEYCODE_DEL)
      await Utils.sleep(200)
      await driver.triggerKey(KeyCode.KEYCODE_DEL)
      await Utils.sleep(1000)
      
      // 截图：删除完成后，查看onDeleteComplete回调中getParagraphs效果
      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0042_01")
      await Utils.sleep(1000)
      
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0043
     * @tc.name   : Using updateSpanStyle within the onIMEInputComplete callback to update text or SymbolSpan styles
     * @tc.type   : Function
     * @tc.size   : UiTest
     * @tc.level  : 2
     */
    it("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0043", Level.LEVEL2, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorInterface/UiComponentTextRichEditorInterface0043")
      await Utils.sleep(500)
      let driver = await Driver.create()
      
      // 步骤1：添加初始内容（包含TextSpan和SymbolSpan）
      let addContentBtn0043 = await driver.waitForComponent(ON.id("addContentBtn0043"), 500)
      await addContentBtn0043.click()
      await Utils.sleep(500)

      // 步骤2：点击RichEditor获取焦点，然后输入文本触发onIMEInputComplete回调
      let richEditor0043 = await driver.waitForComponent(ON.id("richEditor0043"), 500)
      await richEditor0043.click()
      await Utils.sleep(300)

      // 使用triggerKey输入内容测试onIMEInputComplete回调
      await driver.triggerKey(KeyCode.KEYCODE_T)
      await Utils.sleep(200)
      await driver.triggerKey(KeyCode.KEYCODE_E)
      await Utils.sleep(200)
      await driver.triggerKey(KeyCode.KEYCODE_S)
      await Utils.sleep(200)
      await driver.triggerKey(KeyCode.KEYCODE_T)
      await Utils.sleep(500)

      // 步骤3：手动更新文本样式
      let updateStyleBtn0043 = await driver.waitForComponent(ON.id("updateStyleBtn0043"), 500)
      await updateStyleBtn0043.click()
      await Utils.sleep(500)
      
      // 截图：验证onIMEInputComplete回调中updateSpanStyle的效果
      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0043_01")
      await Utils.sleep(500)
      
      done();
    })

    /*
        * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0064
        * @tc.name   : updateSpanStyle updates text, image or SymbolSpan styles with range boundaries falling in the middle of elements with length greater than 1.
        * @tc.type   : Function
        * @tc.size   : UiTest
      * @tc.level  : 3
     */
     it("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0064", Level.LEVEL3, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorInterface/UiComponentTextRichEditorInterface0064")
      await Utils.sleep(1000)
      let driver = await Driver.create()
      
      // 点击RichEditor获取焦点，准备测试updateSpanStyle
      let richEditor0064 = await driver.waitForComponent(ON.id("richEditor0064"),500)
      await richEditor0064.click()
      await Utils.sleep(500)
      
      // 使用triggerKey模拟键盘输入，测试updateSpanStyle功能
      console.log("使用triggerKey输入内容...")
      
      let addContentBtn0064 = await driver.waitForComponent(ON.id("addContentBtn0064"),500)
       await addContentBtn0064.click()
       await Utils.sleep(1000)

       let updateStyleEmojiBtn0064 = await driver.waitForComponent(ON.id("updateStyleEmojiBtn0064"),500)
       await updateStyleEmojiBtn0064.click()
       await Utils.sleep(1000)

       let updateStyleSymbolBtn0064 = await driver.waitForComponent(ON.id("updateStyleSymbolBtn0064"),500)
       await updateStyleSymbolBtn0064.click()
       await Utils.sleep(1000)
      // 截图：边界更新测试后
      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0064_01")
      await Utils.sleep(1000)
      
      done();
    })

    /*
        * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0077
        * @tc.name   : Using updateSpanStyle within the aboutToIMEInput callback to update text, image or SymbolSpan styles.
        * @tc.type   : Function
        * @tc.size   : UiTest
      * @tc.level  : 3
     */
     it("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0077", Level.LEVEL3, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorInterface/UiComponentTextRichEditorInterface0077")
      await Utils.sleep(1000)
      let driver = await Driver.create()
      
      // 点击RichEditor获取焦点，准备输入
      let richEditor0077 = await driver.waitForComponent(ON.id("richEditor0077"),500)
      await richEditor0077.click()
      await Utils.sleep(500)
      
      // 使用triggerKey模拟键盘输入，尝试触发aboutToIMEInput回调
      console.log("使用triggerKey输入内容...")
      
      // 输入 T-E-S-T
      await driver.triggerKey(KeyCode.KEYCODE_T)
      await Utils.sleep(200)
      await driver.triggerKey(KeyCode.KEYCODE_E) 
      await Utils.sleep(200)
      await driver.triggerKey(KeyCode.KEYCODE_S)
      await Utils.sleep(200)
      await driver.triggerKey(KeyCode.KEYCODE_T)
      await Utils.sleep(1000)
      
      // 截图：输入后，查看aboutToIMEInput回调中updateSpanStyle效果
      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0077_01")
      await Utils.sleep(1000)
      
      done();
    })

    /*
        * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0078
        * @tc.name   : Using updateSpanStyle within the aboutToDelete callback to update text, image or SymbolSpan styles.
        * @tc.type   : Function
        * @tc.size   : UiTest
      * @tc.level  : 3
     */
     it("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0078", Level.LEVEL3, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorInterface/UiComponentTextRichEditorInterface0078")
      await Utils.sleep(1000)
      let driver = await Driver.create()
      
      // 点击RichEditor获取焦点，准备删除操作
      let richEditor0078 = await driver.waitForComponent(ON.id("richEditor0078"),500)
      await richEditor0078.click()
      await Utils.sleep(500)
      
      // 先输入一些内容，然后删除来触发aboutToDelete回调
      console.log("使用triggerKey输入内容...")
      
      // 输入 T-E-S-T
      await driver.triggerKey(KeyCode.KEYCODE_T)
      await Utils.sleep(200)
      await driver.triggerKey(KeyCode.KEYCODE_E) 
      await Utils.sleep(200)
      await driver.triggerKey(KeyCode.KEYCODE_S)
      await Utils.sleep(200)
      await driver.triggerKey(KeyCode.KEYCODE_T)
      await Utils.sleep(500)
      
      // 模拟删除操作（使用退格键）
      await driver.triggerKey(KeyCode.KEYCODE_DEL)
      await Utils.sleep(200)
      await driver.triggerKey(KeyCode.KEYCODE_DEL)
      await Utils.sleep(200)
      await driver.triggerKey(KeyCode.KEYCODE_DEL)
      await Utils.sleep(200)
      await driver.triggerKey(KeyCode.KEYCODE_DEL)
      await Utils.sleep(1000)
      
      // 截图：删除后，查看aboutToDelete回调中updateSpanStyle效果
      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0078_01")
      await Utils.sleep(1000)
      
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0034
     * @tc.name   : Using getSpans within the onIMEInputComplete callback can accurately obtain span information after input completion
     * @tc.type   : Function
     * @tc.size   : UiTest
     * @tc.level  : 2
     */
    it("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0034", Level.LEVEL2, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorInterface/UiComponentTextRichEditorInterface0034")
      await Utils.sleep(1000)
      let driver = await Driver.create()
      
      // 点击RichEditor获取焦点，准备输入
      let richEditor0034 = await driver.waitForComponent(ON.id("richEditor0034"),500)
      await richEditor0034.click()
      await Utils.sleep(500)

      // 使用triggerKey模拟键盘输入，尝试触发onIMEInputComplete回调
      console.log("开始使用triggerKey模拟键盘输入...")
      
      // 模拟输入字母 T-E-S-T
      await driver.triggerKey(KeyCode.KEYCODE_T)
      await Utils.sleep(300)
      await driver.triggerKey(KeyCode.KEYCODE_E) 
      await Utils.sleep(300)
      await driver.triggerKey(KeyCode.KEYCODE_S)
      await Utils.sleep(300)
      await driver.triggerKey(KeyCode.KEYCODE_T)
      await Utils.sleep(300)
      
      console.log("triggerKey输入完成")
      await Utils.sleep(1000)
      
      // 截图：输入后，查看onIMEInputComplete回调中getSpans效果
      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0034_01")
      await Utils.sleep(1000)
      
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0035
     * @tc.name   : Using getCaretOffset within the onIMEInputComplete callback can accurately obtain cursor position
     * @tc.type   : Function
     * @tc.size   : UiTest
     * @tc.level  : 2
     */
    it("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0035", Level.LEVEL2, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorInterface/UiComponentTextRichEditorInterface0035")
      await Utils.sleep(1000)
      let driver = await Driver.create()
      
      // 点击RichEditor获取焦点，准备输入
      let richEditor0035 = await driver.waitForComponent(ON.id("richEditor0035"),500)
      await richEditor0035.click()
      await Utils.sleep(500)

      // 使用triggerKey模拟键盘输入，尝试触发onIMEInputComplete回调
      console.log("开始使用triggerKey模拟键盘输入...")
      
      // 模拟输入字母 T-E-S-T
      await driver.triggerKey(KeyCode.KEYCODE_T)
      await Utils.sleep(300)
      await driver.triggerKey(KeyCode.KEYCODE_E) 
      await Utils.sleep(300)
      await driver.triggerKey(KeyCode.KEYCODE_S)
      await Utils.sleep(300)
      await driver.triggerKey(KeyCode.KEYCODE_T)
      await Utils.sleep(300)
      
      console.log("triggerKey输入完成")
      await Utils.sleep(1000)
      
      // 截图：输入后，查看onIMEInputComplete回调中getCaretOffset效果
      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0035_01")
      await Utils.sleep(1000)
      
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0036
     * @tc.name   : Using getParagraphs within the onIMEInputComplete callback can accurately obtain paragraph style and range information after input completion
     * @tc.type   : Function
     * @tc.size   : UiTest
     * @tc.level  : 2
     */
    it("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0036", Level.LEVEL2, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorInterface/UiComponentTextRichEditorInterface0036")
      await Utils.sleep(1000)
      let driver = await Driver.create()
      
      // 点击RichEditor获取焦点，准备输入
      let richEditor0036 = await driver.waitForComponent(ON.id("richEditor0036"),500)
      await richEditor0036.click()
      await Utils.sleep(500)

      // 使用triggerKey模拟键盘输入，尝试触发onIMEInputComplete回调
      console.log("开始使用triggerKey模拟键盘输入...")
      
      // 模拟输入字母 T-E-S-T
      await driver.triggerKey(KeyCode.KEYCODE_T)
      await Utils.sleep(300)
      await driver.triggerKey(KeyCode.KEYCODE_E) 
      await Utils.sleep(300)
      await driver.triggerKey(KeyCode.KEYCODE_S)
      await Utils.sleep(300)
      await driver.triggerKey(KeyCode.KEYCODE_T)
      await Utils.sleep(300)
      
      console.log("triggerKey输入完成")
      await Utils.sleep(1000)
      
      // 截图：输入后，查看onIMEInputComplete回调中getParagraphs效果
      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0036_01")
      await Utils.sleep(1000)
      
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0041
     * @tc.name   : Using getCaretOffset within the onDeleteComplete callback can accurately obtain cursor position
     * @tc.type   : Function
     * @tc.size   : UiTest
     * @tc.level  : 2
     */
    it("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0041", Level.LEVEL2, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorInterface/UiComponentTextRichEditorInterface0041")
      await Utils.sleep(1000)
      let driver = await Driver.create()
      
      // 点击RichEditor获取焦点，准备输入
      let richEditor0041 = await driver.waitForComponent(ON.id("richEditor0041"),500)
      await richEditor0041.click()
      await Utils.sleep(500)

      // 先输入一些内容，然后删除来触发onDeleteComplete回调
      console.log("使用triggerKey输入内容...")
      
      // 输入 T-E-S-T
      await driver.triggerKey(KeyCode.KEYCODE_T)
      await Utils.sleep(200)
      await driver.triggerKey(KeyCode.KEYCODE_E) 
      await Utils.sleep(200)
      await driver.triggerKey(KeyCode.KEYCODE_S)
      await Utils.sleep(200)
      await driver.triggerKey(KeyCode.KEYCODE_T)
      await Utils.sleep(500)
      
      // 模拟删除操作（使用退格键）
      await driver.triggerKey(KeyCode.KEYCODE_DEL)
      await Utils.sleep(200)
      await driver.triggerKey(KeyCode.KEYCODE_DEL)
      await Utils.sleep(200)
      await driver.triggerKey(KeyCode.KEYCODE_DEL)
      await Utils.sleep(200)
      await driver.triggerKey(KeyCode.KEYCODE_DEL)
      await Utils.sleep(1000)
      
      // 截图：删除后，查看onDeleteComplete回调中getCaretOffset效果
      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0041_01")
      await Utils.sleep(1000)
      
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0068
     * @tc.name   : deleteSpans deletes content within specified range, with range boundaries falling in the middle of elements longer than 1
     * @tc.type   : Function
     * @tc.size   : UiTest
     * @tc.level  : 2
     */
    it("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0068", Level.LEVEL2, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorInterface/UiComponentTextRichEditorInterface0068")
      await Utils.sleep(1000)
      let driver = await Driver.create()
      
      // 点击RichEditor获取焦点，准备测试deleteSpans
      let richEditor0068 = await driver.waitForComponent(ON.id("richEditor0068"),500)
      await richEditor0068.click()
      await Utils.sleep(500)
      
      // 步骤1：添加包含emoji和symbol的图文混合内容
      let addContentBtn0068 = await driver.waitForComponent(ON.id("addContentBtn0068"),500)
      await addContentBtn0068.click()
      await Utils.sleep(1000)

      // 步骤2：执行deleteSpans边界测试
      let deleteSpansBtn0068 = await driver.waitForComponent(ON.id("deleteSpansBtn0068"),500)
      await deleteSpansBtn0068.click()
      await Utils.sleep(1000)
      
      // 截图：执行deleteSpans后，查看是否正常删除且无crash
      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0068_01")
      await Utils.sleep(1000)
      
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0076
     * @tc.name   : Using updateSpanStyle within the onSelect callback to update text, image or SymbolSpan styles
     * @tc.type   : Function
     * @tc.size   : UiTest
     * @tc.level  : 2
     */
    it("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0076", Level.LEVEL2, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorInterface/UiComponentTextRichEditorInterface0076")
      await Utils.sleep(1000)
      let driver = await Driver.create()
      
      // 点击RichEditor获取焦点，准备测试onSelect
      let richEditor0076 = await driver.waitForComponent(ON.id("richEditor0076"),500)
      await richEditor0076.click()
      await Utils.sleep(500)
      
      // 步骤1：添加图文混合内容
      let addContentBtn0076 = await driver.waitForComponent(ON.id("addContentBtn0076"),500)
      await addContentBtn0076.click()
      await Utils.sleep(1000)

      // 步骤2：模拟选择操作
      let simulateSelectBtn0076 = await driver.waitForComponent(ON.id("simulateSelectBtn0076"),500)
      await simulateSelectBtn0076.click()
      await Utils.sleep(1000)

      // 步骤3：在RichEditor中进行选择操作，触发onSelect回调
      await richEditor0076.click()
      await Utils.sleep(500)
      
      // 模拟选择文本（双击选择）
      await richEditor0076.longClick()
      await Utils.sleep(1000)
      let allSelect = await driver.waitForComponent(ON.text("全选"),500)
      await allSelect.click()
      await Utils.sleep(1000)

      // 步骤4：验证样式更新结果
      let verifyResultBtn0076 = await driver.waitForComponent(ON.id("verifyResultBtn0076"),500)
      await verifyResultBtn0076.click()
      await Utils.sleep(1000)
      
      // 截图：onSelect回调中updateSpanStyle效果验证
      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0076_01")
      await Utils.sleep(1000)
      
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0079
     * @tc.name   : Using updateSpanStyle within the onDeleteComplete callback to update text, image or SymbolSpan styles
     * @tc.type   : Function
     * @tc.size   : UiTest
     * @tc.level  : 2
     */
    it("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0079", Level.LEVEL2, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorInterface/UiComponentTextRichEditorInterface0079")
      await Utils.sleep(1000)
      let driver = await Driver.create()
      
      // 点击RichEditor获取焦点，准备输入
      let richEditor0079 = await driver.waitForComponent(ON.id("richEditor0079"),500)
      await richEditor0079.click()
      await Utils.sleep(500)

      // 先输入一些内容，然后删除来触发onDeleteComplete回调
      console.log("使用triggerKey输入内容...")
      
      // 输入 T-E-S-T
      await driver.triggerKey(KeyCode.KEYCODE_T)
      await Utils.sleep(200)
      await driver.triggerKey(KeyCode.KEYCODE_E) 
      await Utils.sleep(200)
      await driver.triggerKey(KeyCode.KEYCODE_S)
      await Utils.sleep(200)
      await driver.triggerKey(KeyCode.KEYCODE_T)
      await Utils.sleep(500)
      
      // 模拟删除操作（使用退格键）
      await driver.triggerKey(KeyCode.KEYCODE_DEL)
      await Utils.sleep(200)
      await driver.triggerKey(KeyCode.KEYCODE_DEL)
      await Utils.sleep(200)
      await driver.triggerKey(KeyCode.KEYCODE_DEL)
      await Utils.sleep(200)
      await driver.triggerKey(KeyCode.KEYCODE_DEL)
      await Utils.sleep(1000)
      
      // 截图：删除后，查看onDeleteComplete回调中updateSpanStyle效果
      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0079_01")
      await Utils.sleep(1000)
      
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0082
     * @tc.name   : Using updateSpanStyle within the onEditingChange callback to update text, image or SymbolSpan styles
     * @tc.type   : Function
     * @tc.size   : UiTest
     * @tc.level  : 2
     */
    it("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0082", Level.LEVEL2, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorInterface/UiComponentTextRichEditorInterface0082")
      await Utils.sleep(1000)
      let driver = await Driver.create()
      
      // 步骤1：添加包含emoji、图片和symbol的图文混合内容
      let addContentBtn0082 = await driver.waitForComponent(ON.id("addContentBtn0082"),500)
      await addContentBtn0082.click()
      await Utils.sleep(1000)

      // 步骤2：点击RichEditor进入编辑状态，触发onEditingChange回调
      let richEditor0082 = await driver.waitForComponent(ON.id("richEditor0082"),500)
      await richEditor0082.click()
      await Utils.sleep(2000)

      // 步骤3：点击其他区域退出编辑状态，触发onEditingChange回调
      await driver.click(100, 100)
      await Utils.sleep(2000)
      
      // 截图：onEditingChange回调中updateSpanStyle效果验证
      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0082_01")
      await Utils.sleep(1000)
      
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0084
     * @tc.name   : Using updateSpanStyle within the onWillChange callback to update text, image or SymbolSpan styles
     * @tc.type   : Function
     * @tc.size   : UiTest
     * @tc.level  : 2
     */
    it("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0084", Level.LEVEL2, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorInterface/UiComponentTextRichEditorInterface0084")
      await Utils.sleep(1000)
      let driver = await Driver.create()
      
      // 点击RichEditor获取焦点，准备输入
      let richEditor0084 = await driver.waitForComponent(ON.id("richEditor0084"),500)
      await richEditor0084.click()
      await Utils.sleep(500)

      // 使用triggerKey模拟键盘输入，尝试触发onWillChange回调
      console.log("使用triggerKey输入内容...")
      
      // 输入 T-E-S-T
      await driver.triggerKey(KeyCode.KEYCODE_T)
      await Utils.sleep(200)
      await driver.triggerKey(KeyCode.KEYCODE_E) 
      await Utils.sleep(200)
      await driver.triggerKey(KeyCode.KEYCODE_S)
      await Utils.sleep(200)
      await driver.triggerKey(KeyCode.KEYCODE_T)
      await Utils.sleep(1000)
      
      // 截图：输入后，查看onWillChange回调中updateSpanStyle效果
      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0084_01")
      await Utils.sleep(1000)
      
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0085
     * @tc.name   : Using updateSpanStyle within the aboutToDelete callback to update text, image or SymbolSpan styles
     * @tc.type   : Function
     * @tc.size   : UiTest
     * @tc.level  : 2
     */
    it("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0085", Level.LEVEL2, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorInterface/UiComponentTextRichEditorInterface0085")
      await Utils.sleep(1000)
      let driver = await Driver.create()
      
      // 步骤1：添加包含emoji、图片和symbol的图文混合内容
      let addContentBtn0085 = await driver.waitForComponent(ON.id("addContentBtn0085"),500)
      await addContentBtn0085.click()
      await Utils.sleep(1000)

      // 步骤2：点击RichEditor获取焦点
      let richEditor0085 = await driver.waitForComponent(ON.id("richEditor0085"),500)
      await richEditor0085.click()
      await Utils.sleep(500)

      // 步骤3：输入文本内容触发onDidChange回调
      await driver.triggerKey(KeyCode.KEYCODE_T)
      await Utils.sleep(200)
      await driver.triggerKey(KeyCode.KEYCODE_E)
      await Utils.sleep(200)
      await driver.triggerKey(KeyCode.KEYCODE_S)
      await Utils.sleep(200)
      await driver.triggerKey(KeyCode.KEYCODE_T)
      await Utils.sleep(1000)

      // 步骤4：删除内容触发aboutToDelete回调，执行updateSpanStyle更新指定范围内的文本、图片或SymbolSpan样式
      await driver.triggerKey(KeyCode.KEYCODE_DEL)
      await Utils.sleep(500)
      await driver.triggerKey(KeyCode.KEYCODE_DEL)
      await Utils.sleep(1000)

      // 截图：验证updateSpanStyle在aboutToDelete回调中的执行效果
      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0085_01")
      await Utils.sleep(1000)
      
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0081
     * @tc.name   : Using updateSpanStyle within the onSelectionChange callback to update text, image or SymbolSpan styles
     * @tc.type   : Function
     * @tc.size   : UiTest
     * @tc.level  : 2
     */
    it("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0081", Level.LEVEL2, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorInterface/UiComponentTextRichEditorInterface0081")
      await Utils.sleep(500)
      let driver = await Driver.create()
      
      // 步骤1：添加测试内容（包含TextSpan和SymbolSpan）
      let addContentBtn0081 = await driver.waitForComponent(ON.id("addContentBtn0081"), 500)
      await addContentBtn0081.click()
      await Utils.sleep(500)

      // 步骤2：点击RichEditor并选择文本触发onSelectionChange回调
      let richEditor0081 = await driver.waitForComponent(ON.id("richEditor0081"), 500)
      await richEditor0081.longClick()
      await Utils.sleep(500)

      // 步骤3：改变文本位置触发onSelectionChange回调
      let changePositionBtn0081 = await driver.waitForComponent(ON.id("changePositionBtn0081"), 500)
      await changePositionBtn0081.click()
      await Utils.sleep(500)
      
      // 截图：验证onSelectionChange回调中updateSpanStyle的效果
      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0081_01")
      await Utils.sleep(500)
      
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0058
     * @tc.name   : Continuous calling of addTextSpan, updateSpanStyle and deleteSpans
     * @tc.type   : Function
     * @tc.size   : UiTest
     * @tc.level  : 2
     */
    it("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0058", Level.LEVEL2, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorInterface/UiComponentTextRichEditorInterface0058")
      await Utils.sleep(1000)
      let driver = await Driver.create()

      for (let i = 0; i < 2; i++) {
        // 执行addTextSpan操作
        let addTextBtn0058 = await driver.waitForComponent(ON.id("addTextBtn0058"),500)
        await addTextBtn0058.click()
        await Utils.sleep(500)

        // 执行updateSpanStyle操作
        let updateStyleBtn0058 = await driver.waitForComponent(ON.id("updateStyleBtn0058"),500)
        await updateStyleBtn0058.click()
        await Utils.sleep(500)

        // 执行deleteSpans操作
        let deleteSpansBtn0058 = await driver.waitForComponent(ON.id("deleteSpansBtn0058"),500)
        await deleteSpansBtn0058.click()
        await Utils.sleep(500)
      }
      // 执行addTextSpan操作
      let addTextBtn0058 = await driver.waitForComponent(ON.id("addTextBtn0058"),500)
      await addTextBtn0058.click()
      await Utils.sleep(500)

      // 执行updateSpanStyle操作
      let updateStyleBtn0058 = await driver.waitForComponent(ON.id("updateStyleBtn0058"),500)
      await updateStyleBtn0058.click()
      await Utils.sleep(500)

      // 执行deleteSpans操作
      let deleteSpansBtn0058 = await driver.waitForComponent(ON.id("deleteSpansBtn0058"),500)
      await deleteSpansBtn0058.click()
      await Utils.sleep(500)

      // 截图：连续操作后，查看操作结果
      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0058_01")
      await Utils.sleep(1000)
      
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0069
     * @tc.name   : Set typingStyle, input emoji, aboutToIMEInput and onIMEInputComplete callback normally
     * @tc.type   : Function
     * @tc.size   : UiTest
     * @tc.level  : 2
     */
    it("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0069", Level.LEVEL2, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorInterface/UiComponentTextRichEditorInterface0069")
      await Utils.sleep(1000)
      let driver = await Driver.create()
      
      // 点击RichEditor获取焦点，准备输入
      let richEditor0069 = await driver.waitForComponent(ON.id("richEditor0069"), 3000)
      if (!richEditor0069) {
        Logger.error('TEST', 'richEditor0069 component not found!');
        done();
        return;
      }
      await richEditor0069.click()
      await Utils.sleep(500)

      // 使用inputText输入emoji表情符号应用typingStyle
      console.log("输入emoji表情符号应用typingStyle...")
      await richEditor0069.inputText("😀😃😄😁😆😅😂🤣")
      await Utils.sleep(1000)
      
      // 截图：输入后，查看typingStyle效果和IME回调
      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0069_01")
      await Utils.sleep(1000)
      
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0073
     * @tc.name   : Change typingStyle and input text between original spans, aboutToIMEInput and onIMEInputComplete callback normally
     * @tc.type   : Function
     * @tc.size   : UiTest
     * @tc.level  : 2
     */
    it("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0073", Level.LEVEL2, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorInterface/UiComponentTextRichEditorInterface0073")
      await Utils.sleep(1000)
      let driver = await Driver.create()
      
      // 添加初始文本
      let addInitTextBtn0073 = await driver.waitForComponent(ON.id("addInitTextBtn0073"),500)
      await addInitTextBtn0073.click()
      await Utils.sleep(500)
      
      // 改变typingStyle
      let changeStyleBtn0073 = await driver.waitForComponent(ON.id("changeStyleBtn0073"),500)
      await changeStyleBtn0073.click()
      await Utils.sleep(500)
      
      // 点击RichEditor并在span之间输入文本
      let richEditor0073 = await driver.waitForComponent(ON.id("richEditor0073"),500)
      await richEditor0073.click()
      await Utils.sleep(500)

      // 使用triggerKey在span之间输入文本
      await driver.triggerKey(KeyCode.KEYCODE_T)
      await Utils.sleep(300)
      await driver.triggerKey(KeyCode.KEYCODE_E)
      await Utils.sleep(300)
      await driver.triggerKey(KeyCode.KEYCODE_S)
      await Utils.sleep(300)
      await driver.triggerKey(KeyCode.KEYCODE_T)
      await Utils.sleep(1000)
      
      // 截图：在span之间输入后，查看typingStyle效果和IME回调
      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0073_01")
      await Utils.sleep(1000)
      
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0072
     * @tc.name   : Line break between spans, aboutToIMEInput and onIMEInputComplete callback normally
     * @tc.type   : Function
     * @tc.size   : UiTest
     * @tc.level  : 2
     */
    it("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0072", Level.LEVEL2, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorInterface/UiComponentTextRichEditorInterface0072")
      await Utils.sleep(1000)
      let driver = await Driver.create()
      
      // 添加测试文本
      let addTestTextBtn0072 = await driver.waitForComponent(ON.id("addTestTextBtn0072"),500)
      await addTestTextBtn0072.click()
      await Utils.sleep(500)
      
      // 点击RichEditor并在span中间换行
      let richEditor0072 = await driver.waitForComponent(ON.id("richEditor0072"),500)
      await richEditor0072.click()
      await Utils.sleep(500)

      // 使用triggerKey输入换行符
      await driver.triggerKey(KeyCode.KEYCODE_ENTER)
      await Utils.sleep(1000)
      
      // 截图：换行后，查看span分割效果和IME回调
      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0072_01")
      await Utils.sleep(1000)
      
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0071
     * @tc.name   : Select part of component content and input text, aboutToIMEInput and onIMEInputComplete callback normally
     * @tc.type   : Function
     * @tc.size   : UiTest
     * @tc.level  : 2
     */
    it("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0071", Level.LEVEL2, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorInterface/UiComponentTextRichEditorInterface0071")
      await Utils.sleep(1000)
      let driver = await Driver.create()
      
      // 添加测试文本
      let addTestTextBtn0071 = await driver.waitForComponent(ON.id("addTestTextBtn0071"),500)
      await addTestTextBtn0071.click()
      await Utils.sleep(500)
      
      // 选中中间文本
      let selectMiddleBtn0071 = await driver.waitForComponent(ON.id("selectMiddleBtn0071"),500)
      await selectMiddleBtn0071.click()
      await Utils.sleep(500)
      
      // 点击RichEditor并输入文本替换选中内容
      let richEditor0071 = await driver.waitForComponent(ON.id("richEditor0071"),500)
      await richEditor0071.click()
      await Utils.sleep(500)

      // 使用triggerKey输入替换文本
      await driver.triggerKey(KeyCode.KEYCODE_N)
      await Utils.sleep(300)
      await driver.triggerKey(KeyCode.KEYCODE_E)
      await Utils.sleep(300)
      await driver.triggerKey(KeyCode.KEYCODE_W)
      await Utils.sleep(1000)
      
      // 截图：选中并输入后，查看替换效果和IME回调
      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0071_01")
      await Utils.sleep(1000)
      
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0004
     * @tc.name   : Check the accuracy of aboutToDelete callback values
     * @tc.type   : Function
     * @tc.size   : UiTest
     * @tc.level  : 2
     */
    it("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0004", Level.LEVEL2, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorInterface/UiComponentTextRichEditorInterface0004")
      await Utils.sleep(1000)
      let driver = await Driver.create()
      
      // 添加测试内容
      let addContentBtn0004 = await driver.waitForComponent(ON.id("addContentBtn0004"),500)
      await addContentBtn0004.click()
      await Utils.sleep(500)
      
      // 点击RichEditor获取焦点，然后删除内容
      let richEditor0004 = await driver.waitForComponent(ON.id("richEditor0004"),500)
      await richEditor0004.click()
      await Utils.sleep(500)

      // 使用triggerKey删除内容触发aboutToDelete回调
      await driver.triggerKey(KeyCode.KEYCODE_DEL)
      await Utils.sleep(500)
      await driver.triggerKey(KeyCode.KEYCODE_DEL)
      await Utils.sleep(500)
      await driver.triggerKey(KeyCode.KEYCODE_DEL)
      await Utils.sleep(1000)
      
      // 截图：删除后，查看aboutToDelete回调值准确性
      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0004_01")
      await Utils.sleep(1000)
      
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_9998
     * @tc.name   : Using getSpans within the onDeleteComplete callback can accurately obtain span information
     * @tc.type   : Function
     * @tc.size   : UiTest
     * @tc.level  : 2
     */
    it("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_9998", Level.LEVEL2, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorInterface/UiComponentTextRichEditorInterface9998")
      await Utils.sleep(1000)
      let driver = await Driver.create()
      
      // 添加多样化内容
      let addContentBtn9998 = await driver.waitForComponent(ON.id("addContentBtn9998"),500)
      await addContentBtn9998.click()
      await Utils.sleep(500)
      
      // 点击RichEditor获取焦点，然后删除内容触发onDeleteComplete回调
      let richEditor9998 = await driver.waitForComponent(ON.id("richEditor9998"),500)
      await richEditor9998.click()
      await Utils.sleep(500)

      // 使用triggerKey删除内容
      await driver.triggerKey(KeyCode.KEYCODE_DEL)
      await Utils.sleep(500)
      await driver.triggerKey(KeyCode.KEYCODE_DEL)
      await Utils.sleep(1000)
      
      // 截图：删除完成后，查看onDeleteComplete回调中getSpans效果
      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_9998_01")
      await Utils.sleep(1000)
      
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0075
     * @tc.name   : onWillChange returns false, input text does not trigger aboutToIMEInput and onIMEInputComplete callbacks
     * @tc.type   : Function
     * @tc.size   : UiTest
     * @tc.level  : 2
     */
    it("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0075", Level.LEVEL2, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorInterface/UiComponentTextRichEditorInterface0075")
      await Utils.sleep(1000)
      let driver = await Driver.create()
      
      // 点击RichEditor尝试输入（应该被阻止）
      let richEditor0075 = await driver.waitForComponent(ON.id("richEditor0075"),500)
      await richEditor0075.click()
      await Utils.sleep(500)

      // 尝试使用triggerKey输入文本（应该被onWillChange阻止）
      await driver.triggerKey(KeyCode.KEYCODE_T)
      await Utils.sleep(300)
      await driver.triggerKey(KeyCode.KEYCODE_E)
      await Utils.sleep(300)
      await driver.triggerKey(KeyCode.KEYCODE_S)
      await Utils.sleep(300)
      await driver.triggerKey(KeyCode.KEYCODE_T)
      await Utils.sleep(1000)
      
      // 检查回调状态
      let checkStatusBtn0075 = await driver.waitForComponent(ON.id("checkStatusBtn0075"),3000)
      await checkStatusBtn0075.click()
      await Utils.sleep(500)
      
      // 截图：检查onWillChange返回false的效果
      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0075_01")
      await Utils.sleep(1000)
      
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0018
     * @tc.name   : closeSelectionMenu can close custom selection menu or system default selection menu
     * @tc.type   : Function
     * @tc.size   : UiTest
     * @tc.level  : 2
     */
    it("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0018", Level.LEVEL2, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorInterface/UiComponentTextRichEditorInterface0018")
      await Utils.sleep(500)
      let driver = await Driver.create()
      
      // 步骤1：添加测试内容到两个编辑器
      let addContentBtn0018 = await driver.waitForComponent(ON.id("addContentBtn0018"), 500)
      await addContentBtn0018.click()
      await Utils.sleep(300)

      // 步骤2：测试默认选择菜单
      let richEditor0018_1 = await driver.waitForComponent(ON.id("richEditor0018_1"), 500)
      await richEditor0018_1.longClick()
      await Utils.sleep(500)

      // 步骤3：点击按钮关闭默认选择菜单
      let closeDefaultMenuBtn0018 = await driver.waitForComponent(ON.id("closeDefaultMenuBtn0018"), 500)
      await closeDefaultMenuBtn0018.click()
      await Utils.sleep(300)

      // 截图1：验证默认选择菜单关闭功能
      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0018_01")
      await Utils.sleep(500)

      // 步骤4：测试自定义选择菜单
      let richEditor0018_2 = await driver.waitForComponent(ON.id("richEditor0018_2"), 500)
      await richEditor0018_2.longClick()
      await Utils.sleep(500)

      // 步骤5：点击自定义菜单的"复制"选项测试MenuItem中的closeSelectionMenu
      let copyMenuItem = await driver.waitForComponent(ON.text("📋 复制"), 500)
      await copyMenuItem.click()
      await Utils.sleep(300)

      // 截图2：验证自定义选择菜单关闭功能
      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0018_02")
      await Utils.sleep(500)
      
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0003
     * @tc.name   : aboutToIMEInput callback value accuracy check
     * @tc.type   : Function
     * @tc.size   : UiTest
     * @tc.level  : 2
     */
    it("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0003", Level.LEVEL2, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorInterface/UiComponentTextRichEditorInterface0003")
      await Utils.sleep(2000)
      let driver = await Driver.create()
      
      // 添加预置内容
      let addPresetBtn0003 = await driver.waitForComponent(ON.id("addPresetBtn0003"),3000)
      await addPresetBtn0003.click()
      await Utils.sleep(500)
      
      // 点击RichEditor获取焦点，然后输入内容
      let richEditor0003 = await driver.waitForComponent(ON.id("richEditor0003"),500)
      await richEditor0003.click()
      await Utils.sleep(500)

      // 使用triggerKey输入内容测试aboutToIMEInput回调值准确性
      await driver.triggerKey(KeyCode.KEYCODE_T)
      await Utils.sleep(300)
      await driver.triggerKey(KeyCode.KEYCODE_E)
      await Utils.sleep(300)
      await driver.triggerKey(KeyCode.KEYCODE_S)
      await Utils.sleep(300)
      await driver.triggerKey(KeyCode.KEYCODE_T)
      await Utils.sleep(1000)
      
      // 截图：输入后，查看aboutToIMEInput回调值准确性
      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0003_01")
      await Utils.sleep(1000)
      
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0003_060
     * @tc.name   : Input text and use updateSpanStyle to update content style, then continue to input text
     * @tc.type   : Function
     * @tc.size   : UiTest
     * @tc.level  : 2
     */
    it("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0003_060", Level.LEVEL2, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorInterface/UiComponentTextRichEditorInterface0003_060")
      await Utils.sleep(2000)
      let driver = await Driver.create()
      
      // 循环3次执行添加文本和更新样式
      for (let i = 1; i <= 3; i++) {
        // 添加文本
        let inputBtn0003_060_1 = await driver.waitForComponent(ON.id("inputBtn0003_060_1"),3000)
        await inputBtn0003_060_1.click()
        await Utils.sleep(500)
        
        // 更新文本样式
        let updateBtn0003_060_1 = await driver.waitForComponent(ON.id("updateBtn0003_060_1"),500)
        await updateBtn0003_060_1.click()
        await Utils.sleep(500)
      }
      
      // 截图：循环3次添加文本和更新样式后的效果
      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0003_060_01")
      await Utils.sleep(1000)
      
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0029
     * @tc.name   : Using getCaretOffset within the onCut callback can accurately obtain cursor position before text cutting
     * @tc.type   : Function
     * @tc.size   : UiTest
     * @tc.level  : 2
     */
    it("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0029", Level.LEVEL2, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorInterface/UiComponentTextRichEditorInterface0029")
      await Utils.sleep(2000)
      let driver = await Driver.create()
      
      // 1. 添加文本
      let addContentBtn0029 = await driver.waitForComponent(ON.id("addContentBtn0029"),3000)
      await addContentBtn0029.click()
      await Utils.sleep(1000)

      // 2. 测试用例长按弹出菜单，on.text查找剪切，剪切文本
      let richEditor0029 = await driver.waitForComponent(ON.id("richEditor0029"),500)
      await richEditor0029.longClick()
      await Utils.sleep(500)
      
      let cutText = await driver.waitForComponent(ON.text("剪切"),500)
      await cutText.click()
      await Utils.sleep(500)
      
      // 3. 截图等待1s
      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0029_01")
      await Utils.sleep(1000)
      
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0053
     * @tc.name   : Continuous calling of addImageSpan/addSymbolSpan and deleteSpans
     * @tc.type   : Function
     * @tc.size   : UiTest
     * @tc.level  : 2
     */
    it("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0053", Level.LEVEL2, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorInterface/UiComponentTextRichEditorInterface0053")
      await Utils.sleep(2000)
      let driver = await Driver.create()
      
      // 循环3次执行操作
      for (let i = 1; i <= 3; i++) {
        // 添加图片和符号
        let addImageBtn0053 = await driver.waitForComponent(ON.id("addImageBtn0053"),3000)
        await addImageBtn0053.click()
        await Utils.sleep(500)
        
        // 删除内容
        let deleteBtn0053 = await driver.waitForComponent(ON.id("deleteBtn0053"),500)
        await deleteBtn0053.click()
        await Utils.sleep(500)
      }
      
      // 截图：连续操作后，查看图片和符号的添加删除效果
      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0053_01")
      await Utils.sleep(1000)
      
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0049
     * @tc.name   : Continuous calling of addTextSpan and deleteSpans
     * @tc.type   : Function
     * @tc.size   : UiTest
     * @tc.level  : 2
     */
    it("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0049", Level.LEVEL2, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorInterface/UiComponentTextRichEditorInterface0049")
      await Utils.sleep(1000)
      let driver = await Driver.create()
      
      // 循环3次执行操作
      for (let i = 1; i <= 3; i++) {
        // 添加文本
        let addTextBtn0049 = await driver.waitForComponent(ON.id("addTextBtn0049"),3000)
        await addTextBtn0049.click()
        await Utils.sleep(500)
        
        // 删除内容
        let deleteBtn0049 = await driver.waitForComponent(ON.id("deleteBtn0049"),500)
        await deleteBtn0049.click()
        await Utils.sleep(500)
      }
      
      // 截图：连续操作后，查看文本的添加删除效果
      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0049_01")
      await Utils.sleep(1000)
      
      done();
    })

  })
}
