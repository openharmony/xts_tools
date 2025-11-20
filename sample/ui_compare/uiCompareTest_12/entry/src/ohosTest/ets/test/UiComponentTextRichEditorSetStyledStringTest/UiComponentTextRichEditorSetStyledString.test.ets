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
import { Driver, ON } from '@kit.TestKit'
import windowSnap from '../model/snapShot'

export default function UiComponentTextRichEditorSetStyledString() {
  describe('UiComponentTextRichEditorSetStyledString', () => {

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
      await Utils.sleep(500);
      done()
    })

    /*
      * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_setStyledString_0030
      * @tc.name   : Verify that property string supports placeholder attribute
      * @tc.type   : Function
      * @tc.size   : UiTest
      * @tc.level  : 3
      */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_setStyledString_0030', Level.LEVEL3, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorSetStyledString/UiComponentTextRichEditorSetStyledString0030")
      let driver = await Driver.create()
      await Utils.sleep(500);

      let richEditor = await driver.waitForComponent(ON.id("rich_editor_setstyledstring_0030"), 500);
      if (richEditor == null) {
        Logger.error('TEST', 'RichEditor component should be found');
        done()
        return;
      }

      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_setStyledString_0030_01");
      await Utils.sleep(1000);
      done()
    });

    /*
      * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_setStyledString_0031
      * @tc.name   : Verify that property string supports enableDataDetector attribute
      * @tc.type   : Function
      * @tc.size   : UiTest
      * @tc.level  : 3
      */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_setStyledString_0031', Level.LEVEL3, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorSetStyledString/UiComponentTextRichEditorSetStyledString0031")
      let driver = await Driver.create()
      await Utils.sleep(500);

      let richEditor = await driver.waitForComponent(ON.id("rich_editor_setstyledstring_0031"), 500);
      if (richEditor == null) {
        Logger.error('TEST', 'RichEditor component should be found');
        done()
        return;
      }

      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_setStyledString_0031_01");
      await Utils.sleep(1000);
      done()
    });

    /*
      * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_setStyledString_0032
      * @tc.name   : Verify that property string supports dataDetectorConfig attribute
      * @tc.type   : Function
      * @tc.size   : UiTest
      * @tc.level  : 3
      */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_setStyledString_0032', Level.LEVEL3, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorSetStyledString/UiComponentTextRichEditorSetStyledString0032")
      let driver = await Driver.create()
      await Utils.sleep(500);

      let richEditor = await driver.waitForComponent(ON.id("rich_editor_setstyledstring_0032"), 500);
      if (richEditor == null) {
        Logger.error('TEST', 'RichEditor component should be found');
        done()
        return;
      }

      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_setStyledString_0032_01");
      await Utils.sleep(1000);
      done()
    });

    /*
      * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_setStyledString_0033
      * @tc.name   : Verify that property string supports caretColor attribute
      * @tc.type   : Function
      * @tc.size   : UiTest
      * @tc.level  : 3
      */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_setStyledString_0033', Level.LEVEL3, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorSetStyledString/UiComponentTextRichEditorSetStyledString0033")
      let driver = await Driver.create()
      await Utils.sleep(500);

      let richEditor = await driver.waitForComponent(ON.id("rich_editor_setstyledstring_0033"), 500);
      if (richEditor == null) {
        Logger.error('TEST', 'RichEditor component should be found');
        done()
        return;
      }

      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_setStyledString_0033_01");
      await Utils.sleep(1000);
      done()
    });

    /*
      * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_setStyledString_0034
      * @tc.name   : Verify that property string supports selectedBackgroundColor attribute
      * @tc.type   : Function
      * @tc.size   : UiTest
      * @tc.level  : 3
      */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_setStyledString_0034', Level.LEVEL3, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorSetStyledString/UiComponentTextRichEditorSetStyledString0034")
      let driver = await Driver.create()
      await Utils.sleep(500);

      let richEditor = await driver.waitForComponent(ON.id("rich_editor_setstyledstring_0034"), 500);
      if (richEditor == null) {
        Logger.error('TEST', 'RichEditor component should be found');
        done()
        return;
      }

      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_setStyledString_0034_01");
      await Utils.sleep(1000);
      done()
    });

    /*
      * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_setStyledString_0041
      * @tc.name   : Verify input operations of property string
      * @tc.type   : Function
      * @tc.size   : UiTest
      * @tc.level  : 3
      */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_setStyledString_0041', Level.LEVEL3, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorSetStyledString/UiComponentTextRichEditorSetStyledString0041")
      let driver = await Driver.create()
      await Utils.sleep(500);

      let richEditor = await driver.waitForComponent(ON.id("rich_editor_setstyledstring_0041"), 500);
      if (richEditor == null) {
        Logger.error('TEST', 'RichEditor component should be found');
        done()
        return;
      }

      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_setStyledString_0041_01");
      await Utils.sleep(1000);
      done()
    });

    /*
      * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_setStyledString_0042
      * @tc.name   : Verify that property string supports getCaretOffset
      * @tc.type   : Function
      * @tc.size   : UiTest
      * @tc.level  : 3
      */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_setStyledString_0042', Level.LEVEL3, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorSetStyledString/UiComponentTextRichEditorSetStyledString0042")
      let driver = await Driver.create()
      await Utils.sleep(500);

      let richEditor = await driver.waitForComponent(ON.id("rich_editor_setstyledstring_0042"), 500);
      if (richEditor == null) {
        Logger.error('TEST', 'RichEditor component should be found');
        done()
        return;
      }

      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_setStyledString_0042_01");
      await Utils.sleep(1000);
      done()
    });

    /*
      * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_setStyledString_0048665
      * @tc.name   : Verify that property string built RichEditor component supports getLayoutManager
      * @tc.type   : Function
      * @tc.size   : UiTest
      * @tc.level  : 3
      */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_setStyledString_0048665', Level.LEVEL3, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorSetStyledString/UiComponentTextRichEditorSetStyledString0048665")
      let driver = await Driver.create()
      await Utils.sleep(500);

      let richEditor = await driver.waitForComponent(ON.id("rich_editor_setstyledstring_0048665"), 500);
      if (richEditor == null) {
        Logger.error('TEST', 'RichEditor component should be found');
        done()
        return;
      }

      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_setStyledString_0048665_01");
      await Utils.sleep(1000);
      done()
    });

    /*
      * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_setStyledString_0048665946
      * @tc.name   : Verify that property string built RichEditor component supports enablePreviewText and getPreviewText
      * @tc.type   : Function
      * @tc.size   : UiTest
      * @tc.level  : 3
      */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_setStyledString_0048665946', Level.LEVEL3, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorSetStyledString/UiComponentTextRichEditorSetStyledString0048665946")
      let driver = await Driver.create()
      await Utils.sleep(500);

      let richEditor = await driver.waitForComponent(ON.id("rich_editor_setstyledstring_0048665946"), 500);
      if (richEditor == null) {
        Logger.error('TEST', 'RichEditor component should be found');
        done()
        return;
      }

      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_setStyledString_0048665946_01");
      await Utils.sleep(1000);
      done()
    });

    /*
      * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_setStyledString_0058478
      * @tc.name   : Verify that property string built RichEditor component supports barState
      * @tc.type   : Function
      * @tc.size   : UiTest
      * @tc.level  : 3
      */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_setStyledString_0058478', Level.LEVEL3, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorSetStyledString/UiComponentTextRichEditorSetStyledString0058478")
      let driver = await Driver.create()
      await Utils.sleep(500);

      let richEditor = await driver.waitForComponent(ON.id("rich_editor_setstyledstring_0058478"), 500);
      if (richEditor == null) {
        Logger.error('TEST', 'RichEditor component should be found');
        done()
        return;
      }

      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_setStyledString_0058478_01");
      await Utils.sleep(1000);
      done()
    });

    /*
      * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_setStyledString_0058478191
      * @tc.name   : Verify that property string built RichEditor component supports enableKeyboardOnFocus
      * @tc.type   : Function
      * @tc.size   : UiTest
      * @tc.level  : 3
      */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_setStyledString_0058478191', Level.LEVEL3, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorSetStyledString/UiComponentTextRichEditorSetStyledString0058478191")
      let driver = await Driver.create()
      await Utils.sleep(500);

      let richEditor = await driver.waitForComponent(ON.id("rich_editor_setstyledstring_0058478191"), 500);
      if (richEditor == null) {
        Logger.error('TEST', 'RichEditor component should be found');
        done()
        return;
      }

      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_setStyledString_0058478191_01");
      await Utils.sleep(1000);
      done()
    });

    /*
      * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_setStyledString_0058478191052
      * @tc.name   : Verify that property string built RichEditor component supports enableHapticFeedback
      * @tc.type   : Function
      * @tc.size   : UiTest
      * @tc.level  : 3
      */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_setStyledString_0058478191052', Level.LEVEL3, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorSetStyledString/UiComponentTextRichEditorSetStyledString0058478191052")
      let driver = await Driver.create()
      await Utils.sleep(500);

      let richEditor = await driver.waitForComponent(ON.id("rich_editor_setstyledstring_0058478191052"), 500);
      if (richEditor == null) {
        Logger.error('TEST', 'RichEditor component should be found');
        done()
        return;
      }

      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_setStyledString_0058478191052_01");
      await Utils.sleep(1000);
      done()
    });

    /*
      * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_setStyledString_0058478201
      * @tc.name   : Verify that property string built RichEditor component does not support onDidIMEInput
      * @tc.type   : Function
      * @tc.size   : UiTest
      * @tc.level  : 3
      */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_setStyledString_0058478201', Level.LEVEL3, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorSetStyledString/UiComponentTextRichEditorSetStyledString0058478201")
      let driver = await Driver.create()
      await Utils.sleep(500);

      let richEditor = await driver.waitForComponent(ON.id("rich_editor_setstyledstring_0058478201"), 500);
      if (richEditor == null) {
        Logger.error('TEST', 'RichEditor component should be found');
        done()
        return;
      }

      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_setStyledString_0058478201_01");
      await Utils.sleep(1000);
      done()
    });

    /*
      * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_setStyledString_0058478201232
      * @tc.name   : Verify that property string built RichEditor component supports onSubmit
      * @tc.type   : Function
      * @tc.size   : UiTest
      * @tc.level  : 3
      */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_setStyledString_0058478201232', Level.LEVEL3, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorSetStyledString/UiComponentTextRichEditorSetStyledString0058478201232")
      let driver = await Driver.create()
      await Utils.sleep(500);

      let richEditor = await driver.waitForComponent(ON.id("rich_editor_setstyledstring_0058478201232"), 500);
      if (richEditor == null) {
        Logger.error('TEST', 'RichEditor component should be found');
        done()
        return;
      }

      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_setStyledString_0058478201232_01");
      await Utils.sleep(1000);
      done()
    });

    /*
      * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_setStyledString_0058478201232533
      * @tc.name   : Get property string displayed by rich text component through getStyledString
      * @tc.type   : Function
      * @tc.size   : UiTest
      * @tc.level  : 3
      */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_setStyledString_0058478201232533', Level.LEVEL3, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorSetStyledString/UiComponentTextRichEditorSetStyledString0058478201232533")
      let driver = await Driver.create()
      await Utils.sleep(500);

      let richEditor = await driver.waitForComponent(ON.id("rich_editor_setstyledstring_0058478201232533"), 500);
      if (richEditor == null) {
        Logger.error('TEST', 'RichEditor component should be found');
        done()
        return;
      }

      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_setStyledString_0058478201232533_01");
      await Utils.sleep(1000);
      done()
    });

    /*
      * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_setStyledString_0058478577
      * @tc.name   : Verify that property string built RichEditor component supports enterKeyType
      * @tc.type   : Function
      * @tc.size   : UiTest
      * @tc.level  : 3
      */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_setStyledString_0058478577', Level.LEVEL3, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorSetStyledString/UiComponentTextRichEditorSetStyledString0058478577")
      let driver = await Driver.create()
      await Utils.sleep(500);

      let richEditor = await driver.waitForComponent(ON.id("rich_editor_setstyledstring_0058478577"), 500);
      if (richEditor == null) {
        Logger.error('TEST', 'RichEditor component should be found');
        done()
        return;
      }

      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_setStyledString_0058478577_01");
      await Utils.sleep(1000);
      done()
    });

    /*
      * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_setStyledString_0064
      * @tc.name   : Verify delete operations of property string
      * @tc.type   : Function
      * @tc.size   : UiTest
      * @tc.level  : 3
      */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_setStyledString_0064', Level.LEVEL3, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorSetStyledString/UiComponentTextRichEditorSetStyledString0064")
      let driver = await Driver.create()
      await Utils.sleep(500);

      let richEditor = await driver.waitForComponent(ON.id("rich_editor_setstyledstring_0064"), 500);
      if (richEditor == null) {
        Logger.error('TEST', 'RichEditor component should be found');
        done()
        return;
      }

      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_setStyledString_0064_01");
      await Utils.sleep(1000);
      done()
    });

    /*
      * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_setStyledString_0081
      * @tc.name   : Verify that property string built RichEditor component supports editMenuOptions
      * @tc.type   : Function
      * @tc.size   : UiTest
      * @tc.level  : 3
      */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_setStyledString_0081', Level.LEVEL3, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorSetStyledString/UiComponentTextRichEditorSetStyledString0081")
      let driver = await Driver.create()
      await Utils.sleep(500);

      let richEditor = await driver.waitForComponent(ON.id("rich_editor_setstyledstring_0081"), 500);
      if (richEditor == null) {
        Logger.error('TEST', 'RichEditor component should be found');
        done()
        return;
      }

      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_setStyledString_0081_01");
      await Utils.sleep(1000);
      done()
    });
  })
}
