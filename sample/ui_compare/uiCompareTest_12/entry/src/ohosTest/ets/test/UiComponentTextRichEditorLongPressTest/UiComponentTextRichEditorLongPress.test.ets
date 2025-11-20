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

export default function UiComponentTextRichEditorLongPress() {
  describe('UiComponentTextRichEditorLongPress', () => {
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
        * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_longpress_009_811
        * @tc.name   : Edit mode, long press text content to select words
        * @tc.type   : Function
        * @tc.size   : UiTest
        * @tc.level  : 3
     */
    it("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_longpress_009_811", Level.LEVEL3, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorLongPress/UiComponentTextRichEditorLongPress009811")
      await Utils.sleep(1000)
      let driver = await Driver.create()

      let rich_editor_longpress_009811 = await driver.waitForComponent(ON.id("rich_editor_longpress_009811"), 500)


      // 编辑态下长按文本内容、松手
      await rich_editor_longpress_009811.click()
      await Utils.sleep(1000)
      let rich_editor_longpress_009811_center = await rich_editor_longpress_009811.getBoundsCenter();
      await driver.longClickAt(rich_editor_longpress_009811_center, 1500)

      await Utils.sleep(2000)
      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_longpress_009_811_01")
      await Utils.sleep(1000)
      done();
    })

    /*
        * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_longpress_005
        * @tc.name   : Preview mode, long press font with height greater than component height
        * @tc.type   : Function
        * @tc.size   : UiTest
        * @tc.level  : 3
     */
    it("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_longpress_005", Level.LEVEL3, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorLongPress/UiComponentTextRichEditorLongPress005")
      await Utils.sleep(1000)
      let driver = await Driver.create()

      let rich_editor_longpress_005_01 = await driver.waitForComponent(ON.id("rich_editor_longpress_005_01"), 500)
      let rich_editor_longpress_005_02 = await driver.waitForComponent(ON.id("rich_editor_longpress_005_02"), 500)

      // 预览态下长按字符后松开不拖动
      let rich_editor_longpress_005_01_center = await rich_editor_longpress_005_01.getBoundsCenter();
      let rich_editor_longpress_005_02_center = await rich_editor_longpress_005_02.getBoundsCenter();
      await driver.longClickAt({
        x: rich_editor_longpress_005_01_center.x,
        y: rich_editor_longpress_005_01_center.y,
        displayId: 0
      }, 1500);
      await Utils.sleep(2000)


      await driver.dragBetween({
        x: rich_editor_longpress_005_02_center.x - 100,
        y: rich_editor_longpress_005_02_center.y,
        displayId: 0
      },
        {
          x: rich_editor_longpress_005_02_center.x + 100,
          y: rich_editor_longpress_005_02_center.y, displayId: 0
        },
        2000, 1500);
      await Utils.sleep(2000)

      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_longpress_005_01")
      await Utils.sleep(1000)
      done();
    })

    /*
        * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_longpress_002
        * @tc.name   : Preview mode, long press component content without releasing and drag
        * @tc.type   : Function
        * @tc.size   : UiTest
        * @tc.level  : 3
     */
    it("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_longpress_002", Level.LEVEL3, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorLongPress/UiComponentTextRichEditorLongPress002")
      await Utils.sleep(1000)
      let driver = await Driver.create()

      let rich_editor_longpress_002 = await driver.waitForComponent(ON.id("rich_editor_longpress_002"), 500)
      let rich_editor_longpress_002_center = await rich_editor_longpress_002.getBoundsCenter()

      await driver.dragBetween({
        x: rich_editor_longpress_002_center.x - 100,
        y: rich_editor_longpress_002_center.y,
        displayId: 0
      },
        {
          x: rich_editor_longpress_002_center.x + 100,
          y: rich_editor_longpress_002_center.y, displayId: 0
        },
        600, 1500);
      await Utils.sleep(2000)


      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_longpress_002_01")
      await Utils.sleep(1000)
      done();
    })

    /*
        * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_longpress_010
        * @tc.name   : Edit mode, long press character with height greater than component height
        * @tc.type   : Function
        * @tc.size   : UiTest
        * @tc.level  : 3
     */
    it("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_longpress_010", Level.LEVEL3, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorLongPress/UiComponentTextRichEditorLongPress010")
      await Utils.sleep(1000)
      let driver = await Driver.create()

      let rich_editor_longpress_010 = await driver.waitForComponent(ON.id("rich_editor_longpress_010"), 500)
      let rich_editor_longpress_010_center = await rich_editor_longpress_010.getBoundsCenter();

      await rich_editor_longpress_010.click()
      await driver.longClickAt(rich_editor_longpress_010_center, 1500);

      await Utils.sleep(2000)
      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_longpress_010_01")
      await Utils.sleep(1000)
      done();
    })

    /*
        * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_longpress_003
        * @tc.name   : Preview mode, long press component content without releasing and drag, then release
        * @tc.type   : Function
        * @tc.size   : UiTest
        * @tc.level  : 3
     */
    it("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_longpress_003", Level.LEVEL3, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorLongPress/UiComponentTextRichEditorLongPress003")
      await Utils.sleep(1000)
      let driver = await Driver.create()

      let rich_editor_longpress_003 = await driver.waitForComponent(ON.id("rich_editor_longpress_003"), 500)
      let rich_editor_longpress_003_center = await rich_editor_longpress_003.getBoundsCenter()

      await driver.dragBetween({
        x: rich_editor_longpress_003_center.x - 100,
        y: rich_editor_longpress_003_center.y,
        displayId: 0
      },
        {
          x: rich_editor_longpress_003_center.x + 100,
          y: rich_editor_longpress_003_center.y, displayId: 0
        },
        600, 1500);
      await Utils.sleep(2000)
      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_longpress_003_01")
      await Utils.sleep(1000)
      done();
    })

    /*
        * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_longpress_009
        * @tc.name   : Edit mode, long press text without releasing and drag
        * @tc.type   : Function
        * @tc.size   : UiTest
        * @tc.level  : 3
     */
    it("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_longpress_009", Level.LEVEL3, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorLongPress/UiComponentTextRichEditorLongPress009")
      await Utils.sleep(1000)
      let driver = await Driver.create()

      let rich_editor_longpress_009 = await driver.waitForComponent(ON.id("rich_editor_longpress_009"), 500)
      let rich_editor_longpress_009_center = await rich_editor_longpress_009.getBoundsCenter()

      await rich_editor_longpress_009.click()
      await Utils.sleep(1000)
      await driver.dragBetween({
        x: rich_editor_longpress_009_center.x - 200,
        y: rich_editor_longpress_009_center.y,
        displayId: 0
      },
        {
          x: rich_editor_longpress_009_center.x + 200,
          y: rich_editor_longpress_009_center.y,
          displayId: 0
        },
        800, 1500);
      await Utils.sleep(2000)
      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_longpress_009_01")
      await Utils.sleep(1000)
      done();
    })

    /*
        * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_longpress_007
        * @tc.name   : Preview mode, long press empty component
        * @tc.type   : Function
        * @tc.size   : UiTest
        * @tc.level  : 3
     */
    it("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_longpress_007", Level.LEVEL3, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorLongPress/UiComponentTextRichEditorLongPress007")
      await Utils.sleep(1000)
      let driver = await Driver.create()

      let rich_editor_longpress_007 = await driver.waitForComponent(ON.id("rich_editor_longpress_007"), 500)
      let rich_editor_longpress_007_center = await rich_editor_longpress_007.getBoundsCenter()

      await rich_editor_longpress_007.click()
      await Utils.sleep(1000)
      await driver.dragBetween({
        x: rich_editor_longpress_007_center.x - 200,
        y: rich_editor_longpress_007_center.y,
        displayId: 0
      },
        {
          x: rich_editor_longpress_007_center.x + 200,
          y: rich_editor_longpress_007_center.y,
          displayId: 0
        },
        800, 1500);
      await Utils.sleep(2000)
      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_longpress_007_01")
      await Utils.sleep(1000)
      done();
    })

    /*
        * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_longpress_008
        * @tc.name   : Preview mode, long press content at end of line
        * @tc.type   : Function
        * @tc.size   : UiTest
        * @tc.level  : 3
     */
    it("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_longpress_008", Level.LEVEL3, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorLongPress/UiComponentTextRichEditorLongPress008")
      await Utils.sleep(1000)
      let driver = await Driver.create()

      let richEditor = await driver.waitForComponent(ON.id("rich_editor_longpress_008"), 500)

      // 长按行尾并松手
      let point = await richEditor.getBoundsCenter();
      await driver.longClickAt(point, 1500)
      await Utils.sleep(1000)
      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_longpress_008_01")
      await Utils.sleep(1000)
      done();
    })

    /*
        * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_longpress_006
        * @tc.name   : Preview mode, long press at beginning of line for indented text content
        * @tc.type   : Function
        * @tc.size   : UiTest
        * @tc.level  : 3
     */
    it("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_longpress_006", Level.LEVEL3, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorLongPress/UiComponentTextRichEditorLongPress006")
      await Utils.sleep(1000)
      let driver = await Driver.create()

      let rich_editor_longpress_006 = await driver.waitForComponent(ON.id("rich_editor_longpress_006"), 500)
      let increase_indent_btn_006 = await driver.waitForComponent(ON.id("increase_indent_btn_006"), 500)
      let rich_editor_longpress_006_center = await rich_editor_longpress_006.getBoundsCenter()
      await increase_indent_btn_006.click()

      await driver.longClickAt({
        x: rich_editor_longpress_006_center.x - 230
      ,
        y: rich_editor_longpress_006_center.y,
        displayId: 0
      }, 1500);
      await Utils.sleep(1000)
      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_longpress_006_01")
      await Utils.sleep(1000)
      done();
    })

    /*
        * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_longpress_012
        * @tc.name   : Edit mode, long press imagespan/builderspan, release and drag
        * @tc.type   : Function
        * @tc.size   : UiTest
        * @tc.level  : 3
     */
    it("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_longpress_012", Level.LEVEL3, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorLongPress/UiComponentTextRichEditorLongPress012")
      await Utils.sleep(1000)
      let driver = await Driver.create()

      let rich_editor_longpress_012 = await driver.waitForComponent(ON.id("rich_editor_longpress_012"), 500)


      // 编辑态下长按imagespan/builderspan后松开并再次长按拖动
      let rich_editor_longpress_012_center = await rich_editor_longpress_012.getBoundsCenter();
      await driver.longClickAt(rich_editor_longpress_012_center, 1500)
      await Utils.sleep(1000)
      await driver.dragBetween({ x: rich_editor_longpress_012_center.x, y: rich_editor_longpress_012_center.y },
        { x: rich_editor_longpress_012_center.x + 200, y: rich_editor_longpress_012_center.y }, 800, 2000)
      await Utils.sleep(2000)

      await Utils.sleep(1000)
      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_longpress_012_01")
      await Utils.sleep(1000)
      done();
    })

    /*
        * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_longpress_014
        * @tc.name   : Edit mode, long press at end of line/empty space
        * @tc.type   : Function
        * @tc.size   : UiTest
        * @tc.level  : 3
     */
    it("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_longpress_014", Level.LEVEL3, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorLongPress/UiComponentTextRichEditorLongPress014")
      await Utils.sleep(1000)
      let driver = await Driver.create()

      let rich_editor_longpress_014 = await driver.waitForComponent(ON.id("rich_editor_longpress_014"), 500)


      // 编辑态下长按行尾/空白处
      let rich_editor_longpress_014_center = await rich_editor_longpress_014.getBoundsCenter();
      await rich_editor_longpress_014.click()
      await driver.longClickAt(rich_editor_longpress_014_center, 1500)
      await Utils.sleep(2000)
      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_longpress_014_01")
      await Utils.sleep(1000)
      done();
    })

    /*
        * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_longpress_015
        * @tc.name   : Preview mode, long press selected text content can still call onSelectionChange and onselect normally
        * @tc.type   : Function
        * @tc.size   : UiTest
        * @tc.level  : 3
     */
    it("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_longpress_015", Level.LEVEL3, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorLongPress/UiComponentTextRichEditorLongPress015")
      await Utils.sleep(1000)
      let driver = await Driver.create()

      let richEditor = await driver.waitForComponent(ON.id("rich_editor_longpress_015_01"), 500)

      // 预览态下长按选中组件内容
      let point = await richEditor.getBoundsCenter();
      await driver.longClickAt(point, 1500)

      await Utils.sleep(1000)
      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_longpress_015_01")
      await Utils.sleep(1000)
      done();
    })

    /*
        * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_longpress_0019
        * @tc.name   : Preview mode, long press a relatively large image
        * @tc.type   : Function
        * @tc.size   : UiTest
        * @tc.level  : 3
     */
    it("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_longpress_0019", Level.LEVEL3, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorLongPress/UiComponentTextRichEditorLongPress0019")
      await Utils.sleep(1000)
      let driver = await Driver.create()

      let rich_editor_longpress_0019 = await driver.waitForComponent(ON.id("rich_editor_longpress_0019"), 500)
      // 预览态下长按图片
      let rich_editor_longpress_0019_center = await rich_editor_longpress_0019.getBoundsCenter()
      await driver.longClickAt(rich_editor_longpress_0019_center, 1500)

      await Utils.sleep(1000)
      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_longpress_0019_01")
      await Utils.sleep(1000)
      done();
    })

    /*
        * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_longpress_0020
        * @tc.name   : Preview mode, long press and drag handle to select, release, then long press selected content to float
        * @tc.type   : Function
        * @tc.size   : UiTest
        * @tc.level  : 3
     */
    it("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_longpress_0020", Level.LEVEL3, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorLongPress/UiComponentTextRichEditorLongPress0020")
      await Utils.sleep(1000)
      let driver = await Driver.create()
      let rich_editor_longpress_0020 = await driver.waitForComponent(ON.id("rich_editor_longpress_0020"), 500)
      let rich_editor_longpress_0020_center = await rich_editor_longpress_0020.getBoundsCenter();
      await Utils.sleep(1000)
      await driver.dragBetween({ x: rich_editor_longpress_0020_center.x, y: rich_editor_longpress_0020_center.y },
        { x: rich_editor_longpress_0020_center.x + 200, y: rich_editor_longpress_0020_center.y }, 800, 2000)
      await Utils.sleep(2000)
      await driver.longClickAt(rich_editor_longpress_0020_center, 1500)
      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_longpress_00020_01")
      await Utils.sleep(1000)
      done();
    })

    /*
        * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_longpress_00020
        * @tc.name   : Long press emoji in edit or preview mode
        * @tc.type   : Function
        * @tc.size   : UiTest
        * @tc.level  : 3
     */
    it("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_longpress_00020", Level.LEVEL3, async (done: Function) => {
      Settings.createWindow("testability/pages/UiComponentTextRichEditorLongPress/UiComponentTextRichEditorLongPress00020")
      await Utils.sleep(1000)
      let driver = await Driver.create()

      let rich_editor_longpress_00020 = await driver.waitForComponent(ON.id("rich_editor_longpress_00020"), 500)


      // 编辑态或者预览态下长按emoji内容
      let rich_editor_longpress_00020_center = await rich_editor_longpress_00020.getBoundsCenter();
      await driver.longClickAt(rich_editor_longpress_00020_center, 1500)

      await Utils.sleep(1000)
      await windowSnap.snapShot("SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_longpress_000020_01")
      await Utils.sleep(1000)
      done();
    })

  })
}
