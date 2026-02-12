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

export default function PopupBoxBack() {

  describe('PopupBoxBack', () => {
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
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0010
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0010
     * @tc.type   : function
     * @tc.desc   : Configure ActionSheet with onWillDismiss and a confirm button, then verify that tapping a list item in the list-selection popup does not trigger the dismissDialog.dismiss() callback, yet the popup can still exit normally.
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0010', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0010 start.`);
      // 步骤1：页面初始化
      Settings.createWindow("testability/pages/PopupBoxBack/PopupBoxBack0010")
      let driver = await Driver.create()
      await driver.waitForIdle(500,3000)

      // 步骤2：点击"Click to Show ActionSheet"按钮
      let showActionSheetButton = await driver.waitForComponent(ON.id("show_actionsheet_back_0010"), 500)
      await showActionSheetButton.click()
      await driver.waitForIdle(500,3000)

      // 步骤3：点击列表项
      let option1 = await driver.waitForComponent(ON.text("Option 1"), 500)
      await option1.click()
      await driver.waitForIdle(500,3000)

      // 步骤4：重新打开弹窗，点击confirm按钮
      let showActionSheetButton2 = await driver.waitForComponent(ON.id("show_actionsheet_back_0010"), 500)
      await showActionSheetButton2.click()
      await driver.waitForIdle(500,3000)

      let confirmButton = await driver.waitForComponent(ON.text("Confirm"), 500)
      await confirmButton.click()
      await driver.waitForIdle(500,3000)
      await windowSnap.snapShot()
      await Utils.sleep(1000)

      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0010 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0020
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0020
     * @tc.type   : function
     * @tc.desc   : Configure ActionSheet with onWillDismiss, allow clicking mask layer, three-key back, left/right swipe, keyboard ESC, list selection popup does not exit
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0020', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0020 start.`);
      // 步骤1：页面初始化
      Settings.createWindow("testability/pages/PopupBoxBack/PopupBoxBack0020")
      let driver = await Driver.create()
      await driver.waitForIdle(500,3000)

      // 步骤2：点击"ActionSheet2"按钮
      let showActionSheetButton = await driver.waitForComponent(ON.id("show_actionsheet_back_0020"), 500)
      await showActionSheetButton.click()
      await driver.waitForIdle(500,3000)

      // 步骤3：模拟按back键（PRESS_BACK）
      await driver.pressBack()
      await driver.waitForIdle(500,3000)

      // 步骤4：点击遮障层（TOUCH_OUTSIDE）
      // 点击弹窗外部区域来触发TOUCH_OUTSIDE
      await driver.click(50, 50)
      await driver.waitForIdle(500,3000)
      await windowSnap.snapShot()
      await Utils.sleep(1000)

      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0020 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0030
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0030
     * @tc.type   : function
     * @tc.desc   : Configure ActionSheet with onWillDismiss, allow three-key back, left/right swipe, keyboard ESC, list selection popup exits, trigger dismissDialog.dismiss() callback, autoCancel set to false will not trigger dismissDialog.dismiss() callback, list selection popup does not close
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0030', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0030 start.`);
      // 步骤1：页面初始化
      Settings.createWindow("testability/pages/PopupBoxBack/PopupBoxBack0030")
      let driver = await Driver.create()
      await driver.waitForIdle(500,3000)

      // 步骤2：点击"ActionSheet3"按钮
      let showActionSheetButton = await driver.waitForComponent(ON.id("show_actionsheet_back_0030"), 500)
      await showActionSheetButton.click()
      await driver.waitForIdle(500,3000)

      // 步骤3：模拟按back键（PRESS_BACK）- 应该关闭弹窗并触发回调
      await driver.pressBack()
      await driver.waitForIdle(500,3000)

      // 步骤4：重新打开弹窗，然后点击遮障层（TOUCH_OUTSIDE）- 应该不关闭弹窗
      let showActionSheetButton2 = await driver.waitForComponent(ON.id("show_actionsheet_back_0030"), 500)
      await showActionSheetButton2.click()
      await driver.waitForIdle(500,3000)
      
      // 点击弹窗外部区域来触发TOUCH_OUTSIDE
      await driver.click(50, 50)
      await driver.waitForIdle(500,3000)
      await windowSnap.snapShot()
      await Utils.sleep(1000)

      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0030 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0040
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0040
     * @tc.type   : function
     * @tc.desc   : Configure AlertDialog with onWillDismiss and confirm button, verify that clicking confirm button does not trigger dismissDialog.dismiss() callback, can exit normally
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0040', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0040 start.`);
      // 步骤1：页面初始化
      Settings.createWindow("testability/pages/PopupBoxBack/PopupBoxBack0040")
      let driver = await Driver.create()
      await driver.waitForIdle(500,3000)

      // 步骤2：点击"AlertDialog2"按钮
      let showAlertDialogButton = await driver.waitForComponent(ON.id("show_alertdialog_back_0040"), 500)
      await showAlertDialogButton.click()
      await driver.waitForIdle(500,3000)

      // 步骤3：点击确认按钮
      let confirmButton = await driver.waitForComponent(ON.text("确认"), 500)
      await confirmButton.click()
      await driver.waitForIdle(500,3000)
      await windowSnap.snapShot()
      await Utils.sleep(1000)

      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0040 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0050
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0050
     * @tc.type   : function
     * @tc.desc   : Configure AlertDialog with onWillDismiss, allow clicking mask layer, three-key back, left/right swipe, keyboard ESC, warning popup does not exit
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0050', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0050 start.`);
      // 步骤1：页面初始化
      Settings.createWindow("testability/pages/PopupBoxBack/PopupBoxBack0050")
      let driver = await Driver.create()
      await driver.waitForIdle(500,3000)

      // 步骤2：点击"AlertDialog1"按钮
      let showAlertDialogButton = await driver.waitForComponent(ON.id("show_alertdialog_back_0050"), 500)
      await showAlertDialogButton.click()
      await driver.waitForIdle(500,3000)

      // 步骤3：模拟按back键（PRESS_BACK）
      await driver.pressBack()
      await driver.waitForIdle(500,3000)

      // 步骤4：点击遮障层（TOUCH_OUTSIDE）
      // 点击弹窗外部区域来触发TOUCH_OUTSIDE
      await driver.click(50, 50)
      await driver.waitForIdle(500,3000)
      await windowSnap.snapShot()
      await Utils.sleep(1000)

      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0050 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0060
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0060
     * @tc.type   : function
     * @tc.desc   : Configure AlertDialog with onWillDismiss, allow three-key back, left/right swipe, keyboard ESC, warning popup exits, trigger dismissDialog.dismiss() callback, autoCancel set to false will not trigger dismissDialog.dismiss() callback, warning popup does not close
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0060', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0060 start.`);
      // 步骤1：页面初始化
      Settings.createWindow("testability/pages/PopupBoxBack/PopupBoxBack0060")
      let driver = await Driver.create()
      await driver.waitForIdle(500,3000)

      // 步骤2：点击"AlertDialog3"按钮
      let showAlertDialogButton = await driver.waitForComponent(ON.id("show_alertdialog_back_0060"), 500)
      await showAlertDialogButton.click()
      await driver.waitForIdle(500,3000)

      // 步骤3：模拟按back键（PRESS_BACK）- 应该关闭弹窗并触发回调
      await driver.pressBack()
      await driver.waitForIdle(500,3000)

      // 步骤4：点击Reset按钮，重新打开弹窗，然后点击遮障层（TOUCH_OUTSIDE）- 应该不关闭弹窗
      let resetButton = await driver.waitForComponent(ON.id("reset_button_back_0060"), 500)
      await resetButton.click()
      await driver.waitForIdle(500,3000)

      let showAlertDialogButton2 = await driver.waitForComponent(ON.id("show_alertdialog_back_0060"), 500)
      await showAlertDialogButton2.click()
      await driver.waitForIdle(500,3000)
      
      // 点击弹窗外部区域来触发TOUCH_OUTSIDE
      await driver.click(50, 50)
      await driver.waitForIdle(500,3000)
      await windowSnap.snapShot()
      await Utils.sleep(1000)

      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0060 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0070
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0070
     * @tc.type   : function
     * @tc.desc   : Configure CustomDialog with onWillDismiss, allow clicking mask layer, three-key back, left/right swipe, keyboard ESC, custom popup does not exit
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0070', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0070 start.`);
      // 步骤1：页面初始化
      Settings.createWindow("testability/pages/PopupBoxBack/PopupBoxBack0070")
      let driver = await Driver.create()
      await driver.waitForIdle(500,3000)

      // 步骤2：点击"Click me"按钮
      let clickMeButton = await driver.waitForComponent(ON.id("click_me_back_0070"), 500)
      await clickMeButton.click()
      await driver.waitForIdle(500,3000)

      // 步骤3：模拟按back键（PRESS_BACK）
      await driver.pressBack()
      await driver.waitForIdle(500,3000)

      // 步骤4：点击遮障层（TOUCH_OUTSIDE）
      // 点击弹窗外部区域来触发TOUCH_OUTSIDE
      await driver.click(50, 50)
      await driver.waitForIdle(500,3000)
      await windowSnap.snapShot()
      await Utils.sleep(1000)

      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0070 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0080
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0080
     * @tc.type   : function
     * @tc.desc   : Configure CustomDialog with onWillDismiss, allow three-key back, left/right swipe, keyboard ESC, custom popup exits, trigger dismissDialog.dismiss() callback, autoCancel set to false will not trigger dismissDialog.dismiss() callback, custom popup does not close
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0080', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0080 start.`);
      // 步骤1：页面初始化
      Settings.createWindow("testability/pages/PopupBoxBack/PopupBoxBack0080")
      let driver = await Driver.create()
      await driver.waitForIdle(500,3000)

      // 步骤2：点击"Click me"按钮
      let clickMeButton = await driver.waitForComponent(ON.id("click_me_back_0080"), 500)
      await clickMeButton.click()
      await driver.waitForIdle(500,3000)

      // 步骤3：模拟按back键（PRESS_BACK）- 应该关闭弹窗并触发回调
      await driver.pressBack()
      await driver.waitForIdle(500,3000)

      // 步骤4：重新打开弹窗，然后点击遮障层（TOUCH_OUTSIDE）- 应该不关闭弹窗
      let clickMeButton2 = await driver.waitForComponent(ON.id("click_me_back_0080"), 500)
      await clickMeButton2.click()
      await driver.waitForIdle(500,3000)
      
      // 点击弹窗外部区域来触发TOUCH_OUTSIDE
      await driver.click(50, 50)
      await driver.waitForIdle(500,3000)
      await windowSnap.snapShot()
      await Utils.sleep(1000)

      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0080 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0090
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0090
     * @tc.type   : function
     * @tc.desc   : Configure CustomDialog with onWillDismiss, click 'close' button (click to call close(): void), custom popup does not trigger dismissDialog.dismiss() callback, can exit normally
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0090', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0090 start.`);
      // 步骤1：页面初始化
      Settings.createWindow("testability/pages/PopupBoxBack/PopupBoxBack0090")
      let driver = await Driver.create()
      await driver.waitForIdle(500,3000)

      // 步骤2：点击"CustomDialog2"按钮
      let showCustomDialogButton = await driver.waitForComponent(ON.id("show_customdialog_back_0090"), 500)
      await showCustomDialogButton.click()
      await driver.waitForIdle(500,3000)

      // 步骤3：点击"Click me"按钮
      let clickMeButton = await driver.waitForComponent(ON.id("click_me_back_0090"), 500)
      await clickMeButton.click()
      await driver.waitForIdle(500,3000)

      // 步骤4：点击"Cancel"按钮
      let cancelButton = await driver.waitForComponent(ON.text("Cancel"), 500)
      await cancelButton.click()
      await driver.waitForIdle(500,3000)
      await windowSnap.snapShot()
      await Utils.sleep(1000)

      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0090 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0100
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0100
     * @tc.type   : function
     * @tc.desc   : Configure promptAction.openCustomDialog with onWillDismiss, allow clicking mask layer, three-key back, left/right swipe, keyboard ESC, custom popup does not exit
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0100', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0100 start.`);
      // 步骤1：页面初始化
      Settings.createWindow("testability/pages/PopupBoxBack/PopupBoxBack0100")
      let driver = await Driver.create()
      await driver.waitForIdle(500,3000)

      // 步骤2：点击"openCustomDialog1"按钮
      let showOpenCustomDialogButton = await driver.waitForComponent(ON.id("show_opencustomdialog_back_0100"), 500)
      await showOpenCustomDialogButton.click()
      await driver.waitForIdle(500,3000)

      // 步骤3：模拟按back键（PRESS_BACK）
      await driver.pressBack()
      await driver.waitForIdle(500,3000)

      // 步骤4：点击遮障层（TOUCH_OUTSIDE）
      // 点击弹窗外部区域来触发TOUCH_OUTSIDE
      await driver.click(50, 50)
      await driver.waitForIdle(500,3000)
      await windowSnap.snapShot()
      await Utils.sleep(1000)

      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0100 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0110
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0110
     * @tc.type   : function
     * @tc.desc   : Configure promptAction.openCustomDialog with onWillDismiss, allow three-key back, left/right swipe, keyboard ESC, custom popup exits, trigger dismissDialog.dismiss() callback, isModal set to false will not trigger dismissDialog.dismiss() callback, popup does not close
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0110', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0110 start.`);
      // 步骤1：页面初始化
      Settings.createWindow("testability/pages/PopupBoxBack/PopupBoxBack0110")
      let driver = await Driver.create()
      await driver.waitForIdle(500,3000)

      // 步骤2：点击"openCustomDialog3"按钮
      let showOpenCustomDialogButton = await driver.waitForComponent(ON.id("show_opencustomdialog_back_0110"), 500)
      await showOpenCustomDialogButton.click()
      await driver.waitForIdle(500,3000)

      // 步骤3：模拟按back键（PRESS_BACK）- 应该关闭弹窗并触发回调
      await driver.pressBack()
      await driver.waitForIdle(500,3000)

      // 步骤4：点击Reset按钮，重新打开弹窗，然后点击遮障层（TOUCH_OUTSIDE）- 应该不关闭弹窗
      let resetButton = await driver.waitForComponent(ON.id("reset_button_back_0110"), 500)
      await resetButton.click()
      await driver.waitForIdle(500,3000)

      let showOpenCustomDialogButton2 = await driver.waitForComponent(ON.id("show_opencustomdialog_back_0110"), 500)
      await showOpenCustomDialogButton2.click()
      await driver.waitForIdle(500,3000)
      
      // 点击弹窗外部区域来触发TOUCH_OUTSIDE
      await driver.click(50, 50)
      await driver.waitForIdle(500,3000)
      await windowSnap.snapShot()
      await Utils.sleep(1000)

      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0110 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0120
     * @tc.name   : SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0120
     * @tc.type   : function
     * @tc.desc   : Configure promptAction.openCustomDialog with onWillDismiss, click 'cancel' button (promptAction.closeCustomDialog(customDialogId)), custom popup does not trigger dismissDialog.dismiss() callback, can exit normally
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0120', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0120 start.`);
      // 步骤1：页面初始化
      Settings.createWindow("testability/pages/PopupBoxBack/PopupBoxBack0120")
      let driver = await Driver.create()
      await driver.waitForIdle(500,3000)

      // 步骤2：点击"openCustomDialog2"按钮
      let showOpenCustomDialogButton = await driver.waitForComponent(ON.id("show_opencustomdialog_back_0120"), 500)
      await showOpenCustomDialogButton.click()
      await driver.waitForIdle(500,3000)

      // 步骤4：点击"取消"按钮
      let cancelButton = await driver.waitForComponent(ON.text("取消"), 500)
      await cancelButton.click()
      await driver.waitForIdle(500,3000)

      // 步骤3：点击"openCustomDialog2"按钮（重复点击）
      let showOpenCustomDialogButton2 = await driver.waitForComponent(ON.id("show_opencustomdialog_back_0120"), 500)
      await showOpenCustomDialogButton2.click()
      await driver.waitForIdle(500,3000)


      let cancelButton2 = await driver.waitForComponent(ON.text("取消"), 500)
      await cancelButton2.click()
      await driver.waitForIdle(500,3000)
      await windowSnap.snapShot()
      await Utils.sleep(1000)

      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_BACK_0120 finish.`);
      done()
    })




  })
}
