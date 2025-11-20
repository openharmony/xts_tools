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


export default function FocusRichEditor() {

  describe('FocusRichEditor', () => {
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
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_textBackgroundStyle_001
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_textBackgroundStyle_001
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 1
    * @tc.desc   : If the enableKeyboardOnFocus attribute is not set or is set to true, call the requestFocus method to make the rich text component gain focus and bind the input method.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_textBackgroundStyle_001', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_textBackgroundStyle_001  start.`);
      Settings.createWindow("testability/pages/focus_RichEditor/REtextBackgroundStyle001")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(1500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_textBackgroundStyle_001 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_textBackgroundStyle_004
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_textBackgroundStyle_004
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 1
    * @tc.desc   : If the enableKeyboardOnFocus attribute is not set or is set to true, call the requestFocus method to make the rich text component gain focus and bind the input method.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_textBackgroundStyle_004', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_textBackgroundStyle_004  start.`);
      Settings.createWindow("testability/pages/focus_RichEditor/REtextBackgroundStyle004")
      let driver:Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id('在此输入文本观察效果'), 1000);
      await button.inputText('随机输入一段文字');
      await driver.waitForIdle(1500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_textBackgroundStyle_004 finish.`);
      done()
    })



    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WordBreak_HYPHENATION_00001
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WordBreak_HYPHENATION_00001
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 1
    * @tc.desc   : If the enableKeyboardOnFocus attribute is not set or is set to true, call the requestFocus method to make the rich text component gain focus and bind the input method.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WordBreak_HYPHENATION_00001', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WordBreak_HYPHENATION_00001  start.`);
      Settings.createWindow("testability/pages/focus_RichEditor/REHyphenation00001")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(1500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WordBreak_HYPHENATION_00001 finish.`);
      done()
    })



    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ENABLEKEYBOARDFOCUS_0001
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ENABLEKEYBOARDFOCUS_0001
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 1
    * @tc.desc   : If the enableKeyboardOnFocus attribute is not set or is set to true, call the requestFocus method to make the rich text component gain focus and bind the input method.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ENABLEKEYBOARDFOCUS_0001', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ENABLEKEYBOARDFOCUS_0001  start.`);
      Settings.createWindow("testability/pages/focus_RichEditor/RichEditorEnableKeyboard0001")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000);
      let button: Component = await driver.waitForComponent(ON.id('ReKb0001'), 1000);
      await button.click();
      await driver.waitForIdle(1500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ENABLEKEYBOARDFOCUS_0001 finish.`);
      done()
    })

    /*
   * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ENABLEKEYBOARDFOCUS_0005
   * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ENABLEKEYBOARDFOCUS_0005
   * @tc.type   : Function
   * @tc.size   : MediumTest
   * @tc.level  : 1
   * @tc.desc   : If the enableKeyboardOnFocus attribute is set to false, call the requestFocus method to make the rich text component gain focus and not bind the input method.
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ENABLEKEYBOARDFOCUS_0005', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ENABLEKEYBOARDFOCUS_0005  start.`);
      Settings.createWindow("testability/pages/focus_RichEditor/RichEditorEnableKeyboard0005")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000);
      let button: Component = await driver.waitForComponent(ON.id('ReKb0005'), 1000);
      await button.click();
      await driver.waitForIdle(1500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ENABLEKEYBOARDFOCUS_0005 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LINEMETRICS_0003
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LINEMETRICS_0003
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 1
    * @tc.desc   : When passing parameter 1 to getLineMetrics.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LINEMETRICS_0003', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LINEMETRICS_0003  start.`);
      Settings.createWindow("testability/pages/focus_RichEditor/RichEditorLineMetrics0003")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000);
      let button: Component = await driver.waitForComponent(ON.id('RElineMetrics0003'), 1000);
      await button.click();
      await driver.waitForIdle(1500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LINEMETRICS_0003 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PREVENTDEFAULT_0001
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PREVENTDEFAULT_0001
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 1
    * @tc.desc   : Set an onClick event for images or text, call preventDefault, and click on the images or text.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PREVENTDEFAULT_0001', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PREVENTDEFAULT_0001  start.`);
      Settings.createWindow("testability/pages/focus_RichEditor/RichEditorPreventDefault0001")
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.text('这是一段图文混合内容，后面是一张资源引用类型的图片输入。'),500);
      await button.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PREVENTDEFAULT_0001 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_floatoff_0005
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_floatoff_0005
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 1
    * @tc.desc   : Release after long-pressing to cancel.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_floatoff_0005', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_floatoff_0005  start.`);
      Settings.createWindow("testability/pages/focus_RichEditor/RichEditorFloatOff0005")
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.text('这是一段测试文本，长按后查看效果'),500);
      await button.longClick();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_floatoff_0005 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0059
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0059
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 1
    * @tc.desc   : getSpans retrieves span information, where the range boundaries fall in the middle of elements with a length greater than 1.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0059', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0059  start.`);
      Settings.createWindow("testability/pages/focus_RichEditor/RichEditorInterFace0059")
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id('InterFace0059'), 1000);
      await button.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0059 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0019
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0019
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 1
    * @tc.desc   : getSelection can obtain text content.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0019', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0019  start.`);
      Settings.createWindow("testability/pages/focus_RichEditor/RichEditorInterFace0019")
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id('InterFace0019'), 1000);
      await button.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0019 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0014
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0014
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 1
    * @tc.desc   : updateSpanStyle can correctly update the style of text, images, or SymbolSpan.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0014', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0014  start.`);
      Settings.createWindow("testability/pages/focus_RichEditor/RichEditorInterFace0014")
      let driver:Driver = Driver.create();
      let button1: Component = await driver.waitForComponent(ON.id('111'), 1000);
      await button1.click();
      await driver.waitForIdle(1000,2000);
      let button2: Component = await driver.waitForComponent(ON.id('222'), 1000);
      await button2.click();
      await driver.waitForIdle(1000,2000);
      let button3: Component = await driver.waitForComponent(ON.id('333'), 1000);
      await button3.click();
      await driver.waitForIdle(1000,2000);
      let button4: Component = await driver.waitForComponent(ON.id('444'), 1000);
      await button4.click();
      await driver.waitForIdle(1000,2000);
      let button5: Component = await driver.waitForComponent(ON.id('555'), 1000);
      await button5.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0014 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0015
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0015
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 1
    * @tc.desc   : updateParagraphStyle can correctly update the style of the paragraph.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0015', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0015  start.`);
      Settings.createWindow("testability/pages/focus_RichEditor/RichEditorInterFace0015")
      let driver:Driver = Driver.create();
      let button1: Component = await driver.waitForComponent(ON.id('Paragraph111'), 1000);
      await button1.click();
      await driver.waitForIdle(1000,2000);
      let button2: Component = await driver.waitForComponent(ON.id('Paragraph222'), 1000);
      await button2.click();
      await driver.waitForIdle(1000,2000);
      let button3: Component = await driver.waitForComponent(ON.id('Paragraph333'), 1000);
      await button3.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0015 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_9999
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_9999
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 1
    * @tc.desc   : The RichEditor component supports an onReady callback.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_9999', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_9999  start.`);
      Settings.createWindow("testability/pages/focus_RichEditor/RichEditorInterFace9999")
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id('InterFace9999'), 1000);
      await button.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_9999 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0001
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0001
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 1
    * @tc.desc   : The RichEditor component supports an onReady callback.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0001', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0001  start.`);
      Settings.createWindow("testability/pages/focus_RichEditor/RichEditorInterFace0001")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0001 finish.`);
      done()
    })



    /*
   * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0017
   * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0017
   * @tc.type   : Function
   * @tc.size   : MediumTest
   * @tc.level  : 1
   * @tc.desc   : getSpans can correctly obtain the span information within the component.
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0017', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0017  start.`);
      Settings.createWindow("testability/pages/focus_RichEditor/RichEditorInterFace0017")
      let driver: Driver = Driver.create();
      let button1: Component = await driver.waitForComponent(ON.id('001701'), 1000);
      await button1.click();
      await driver.waitForIdle(1000,2000);
      let button2: Component = await driver.waitForComponent(ON.id('001702'), 1000);
      await button2.click();
      await driver.waitForIdle(1000,2000);
      let button3: Component = await driver.waitForComponent(ON.id('001703'), 1000);
      await button3.click();
      await driver.waitForIdle(1000,2000);
      let button4: Component = await driver.waitForComponent(ON.id('001704'), 1000);
      await button4.click();
      await driver.waitForIdle(1000,2000);
      let button5: Component = await driver.waitForComponent(ON.id('001705'), 1000);
      await button5.click();
      await driver.waitForIdle(1000,2000);
      let button6: Component = await driver.waitForComponent(ON.id('001706'), 1000);
      await button6.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0017 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringspan_0001
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringspan_0001
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 1
    * @tc.desc   : Through getStyles, the extended span information stored in the attribute string of text/images can be obtained.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringspan_0001', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringspan_0001  start.`);
      Settings.createWindow("testability/pages/focus_RichEditor/RichEditorStringSpan0001")
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id('ReSs0001'), 1000);
      await button.click();
      await driver.waitForIdle(2000,3000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringspan_0001 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringspan_0004
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringspan_0004
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 1
    * @tc.desc   : Specify new extended span content via setStyle.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringspan_0004', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringspan_0004  start.`);
      Settings.createWindow("testability/pages/focus_RichEditor/RichEditorStringSpan0004")
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id('ReSets0004'), 1000);
      await button.click();
      await driver.waitForIdle(500,2000);
      let button2: Component = await driver.waitForComponent(ON.id('ReSs0004'), 1000);
      await button2.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringspan_0004 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringspan_0016
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringspan_0016
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 1
    * @tc.desc   : Insert an image attribute string at the specified position via insertString.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringspan_0016', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringspan_0016  start.`);
      Settings.createWindow("testability/pages/focus_RichEditor/RichEditorStringSpan0016")
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id('ReSets0016'), 1000);
      await button.click();
      await driver.waitForIdle(1000,2000);
      let button2: Component = await driver.waitForComponent(ON.id('ReSs0016'), 1000);
      await button2.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringspan_0016 finish.`);
      done()
    })



    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringspan_0017
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringspan_0017
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 1
    * @tc.desc   : Insert an image attribute string at the specified position via insertStyledString.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringspan_0017', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringspan_0017  start.`);
      Settings.createWindow("testability/pages/focus_RichEditor/RichEditorStringSpan0017")
      let driver: Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id('ReSets0017'), 1000);
      await button.click();
      await driver.waitForIdle(2000,2000);
      let button2: Component = await driver.waitForComponent(ON.id('ReSs0017'), 1000);
      await button2.click();
      await driver.waitForIdle(2000,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_stringspan_0017 finish.`);
      done()
    })
  })
}
