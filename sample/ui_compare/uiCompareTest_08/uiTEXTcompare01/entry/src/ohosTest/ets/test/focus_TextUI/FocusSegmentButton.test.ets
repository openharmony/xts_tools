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

import { describe, afterEach, it, Level } from '@ohos/hypium'
import Settings from '../model/Settings'
import windowSnap from '../model/snapShot'
import Logger from '../model/Logger'
import Utils from '../model/Utils'
import { Driver, ON, } from '@kit.TestKit';

export default function FocusSegmentButtonTest() {

  describe('FocusSegmentButtonTest', () => {
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
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACCESSIBILITY_0010
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACCESSIBILITY_0010
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify SegmentButton capsule multiply mode without accessibility settings
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACCESSIBILITY_0010', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACCESSIBILITY_0010 start.`);
      try {
        Settings.createWindow("testability/pages/focus_SegmentButton/SegmentButton0010");
        let driver: Driver = await Driver.create();
        await driver.waitForIdle(1000, 2000);

        // 查找SegmentButton组件
        let segmentButton = await driver.findComponent(ON.id('segmentButton0010'));
        Logger.info('TEST', `Found SegmentButton component`);

        // 步骤1：点击多选类分段按钮的第一个按钮
        Logger.info('TEST', `Step 1: Click first button - expect focus and announcement (未选中，hello，按钮，单指双击即选中)`);
        await segmentButton.click();
        await driver.waitForIdle(1000, 2000);

        // 步骤2：单指双击多选类分段按钮的第一个按钮
        Logger.info('TEST', `Step 2: Double click first button - expect announcement (已选中)`);
        await segmentButton.doubleClick();
        await driver.waitForIdle(1000, 2000);

        // 步骤3：同步骤1 - 再次点击第一个按钮
        Logger.info('TEST', `Step 3: Click first button again - expect announcement (已选中，hello，按钮，单指双击即可取消选中)`);
        await segmentButton.click();
        await driver.waitForIdle(1000, 2000);

        // 步骤4：同步骤2 - 再次双击第一个按钮
        Logger.info('TEST', `Step 4: Double click first button again - expect announcement (未选中)`);
        await segmentButton.doubleClick();
        await driver.waitForIdle(1000, 2000);
        await windowSnap.snapShot();
        await Utils.sleep(1000);

        Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACCESSIBILITY_0010 end.`);
      } catch (err) {
        Logger.error('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACCESSIBILITY_0010 error: ${err}`);
      }
      done();
    });

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACCESSIBILITY_0020
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACCESSIBILITY_0020
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify SegmentButton capsule with accessibilityLevel yes and accessibilityDescription
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACCESSIBILITY_0020', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACCESSIBILITY_0020 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_SegmentButton/SegmentButton0020");
        let driver: Driver = await Driver.create();
        await driver.waitForIdle(1000, 2000);

        // 查找SegmentButton组件
        let segmentButton = await driver.findComponent(ON.id('segmentButton0020'));
        Logger.info('TEST', `Found SegmentButton component`);

        // 步骤1：点击多选类分段按钮的第三个按钮
        Logger.info('TEST', `Step 1: Click third button - expect focus and announcement (未选中，未选中 666，666，按钮，新手提醒 666)`);
        await segmentButton.click();
        await driver.waitForIdle(1000, 2000);

        // 步骤2：单指双击多选类分段按钮的第三个按钮
        Logger.info('TEST', `Step 2: Double click third button - expect announcement (已选中)`);
        await segmentButton.doubleClick();
        await driver.waitForIdle(1000, 2000);

        // 步骤3：同步骤1 - 再次点击第三个按钮
        Logger.info('TEST', `Step 3: Click third button again - expect announcement (已选中，已选中 666，666，按钮，新手提醒 666)`);
        await segmentButton.click();
        await driver.waitForIdle(1000, 2000);

        // 步骤4：同步骤2 - 再次双击第三个按钮
        Logger.info('TEST', `Step 4: Double click third button again - expect announcement (未选中)`);
        await segmentButton.doubleClick();
        await driver.waitForIdle(1000, 2000);
        await windowSnap.snapShot();
        await Utils.sleep(1000);

        Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACCESSIBILITY_0020 end.`);
      } catch (err) {
        Logger.error('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACCESSIBILITY_0020 error: ${err}`);
      }
      done();
    });

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACCESSIBILITY_0030
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACCESSIBILITY_0030
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify SegmentButton tab type with accessibilityLevel no
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACCESSIBILITY_0030', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACCESSIBILITY_0030 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_SegmentButton/SegmentButton0030");
        let driver: Driver = await Driver.create();
        await driver.waitForIdle(1000, 2000);

        // 查找SegmentButton组件
        let segmentButton = await driver.findComponent(ON.id('segmentButton0030'));
        Logger.info('TEST', `Found SegmentButton component`);

        // 步骤1：点击'大香蕉'页签类分段按钮
        // 预期：绿色焦点不会聚焦，不会播报
        Logger.info('TEST', `Step 1: Click '大香蕉' tab button - expect no focus, no announcement (accessibilityLevel: no)`);
        await segmentButton.click();
        await driver.waitForIdle(1000, 2000);
        await windowSnap.snapShot();
        await Utils.sleep(1000);

        Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACCESSIBILITY_0030 end.`);
      } catch (err) {
        Logger.error('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACCESSIBILITY_0030 error: ${err}`);
      }
      done();
    });

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACCESSIBILITY_0050
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACCESSIBILITY_0050
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify SegmentButton tab type with accessibilityLevel yes and third button text 666
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACCESSIBILITY_0050', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACCESSIBILITY_0050 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_SegmentButton/SegmentButton0050");
        let driver: Driver = await Driver.create();
        await driver.waitForIdle(1000, 2000);

        // 查找SegmentButton组件
        let segmentButton = await driver.findComponent(ON.id('segmentButton0050'));
        Logger.info('TEST', `Found SegmentButton component`);

        // 步骤1：点击'666'页签类分段按钮
        Logger.info('TEST', `Step 1: Click '666' tab button - expect focus and announcement (666，按钮，666)`);
        await segmentButton.click();
        await driver.waitForIdle(1000, 2000);

        // 步骤2：单指双击'666'页签类分段按钮
        Logger.info('TEST', `Step 2: Double click '666' tab button - expect announcement (已选中)`);
        await segmentButton.doubleClick();
        await driver.waitForIdle(1000, 2000);

        // 步骤3：同步骤1 - 再次点击'666'页签类分段按钮
        Logger.info('TEST', `Step 3: Click '666' tab button again - expect announcement (已选中，666，按钮，666)`);
        await segmentButton.click();
        await driver.waitForIdle(1000, 2000);
        await windowSnap.snapShot();
        await Utils.sleep(1000);

        Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACCESSIBILITY_0050 end.`);
      } catch (err) {
        Logger.error('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACCESSIBILITY_0050 error: ${err}`);
      }
      done();
    });

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACCESSIBILITY_0100
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACCESSIBILITY_0100
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify SegmentButton capsule single select mode without accessibility settings
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACCESSIBILITY_0100', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACCESSIBILITY_0100 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_SegmentButton/SegmentButton0100");
        let driver: Driver = await Driver.create();
        await driver.waitForIdle(1000, 2000);

        // 查找SegmentButton组件
        let segmentButton = await driver.findComponent(ON.id('segmentButton0100'));
        Logger.info('TEST', `Found SegmentButton component`);

        // 步骤1：点击单选类分段按钮的第一个按钮
        Logger.info('TEST', `Step 1: Click first button - expect focus and announcement (按钮，单指双击即可执行)`);
        await segmentButton.click();
        await driver.waitForIdle(1000, 2000);

        // 步骤2：单指双击单选类分段按钮的第一个按钮
        Logger.info('TEST', `Step 2: Double click first button - expect announcement (已选中)`);
        await segmentButton.doubleClick();
        await driver.waitForIdle(1000, 2000);

        // 步骤3：同步骤1 - 再次点击第一个按钮
        Logger.info('TEST', `Step 3: Click first button again - expect announcement (已选中，按钮，单指双击即可执行)`);
        await segmentButton.click();
        await driver.waitForIdle(1000, 2000);
        await windowSnap.snapShot();
        await Utils.sleep(1000);

        Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACCESSIBILITY_0100 end.`);
      } catch (err) {
        Logger.error('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACCESSIBILITY_0100 error: ${err}`);
      }
      done();
    });

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACTION_0010
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACTION_0010
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify SegmentButton tab type with long text overflow handling
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACTION_0010', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACTION_0010 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_SegmentButton/SegmentButtonAction0010");
        let driver: Driver = await Driver.create();
        await driver.waitForIdle(1000, 2000);

        // 查找SegmentButton组件
        let segmentButton = await driver.findComponent(ON.id('segmentButtonAction0010'));
        Logger.info('TEST', `Found SegmentButton component with long text`);


        // 点击超长文本的第一个按钮
        Logger.info('TEST', `Click first button with long text`);
        await segmentButton.click();
        await driver.waitForIdle(1000, 2000);
        await windowSnap.snapShot();
        await Utils.sleep(1000);

        Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACTION_0010 end.`);
      } catch (err) {
        Logger.error('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACTION_0010 error: ${err}`);
      }
      done();
    });

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACTION_0020
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACTION_0020
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify SegmentButton capsule type with icon and long text overflow handling
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACTION_0020', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACTION_0020 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_SegmentButton/SegmentButtonAction0020");
        let driver: Driver = await Driver.create();
        await driver.waitForIdle(1000, 2000);

        // 查找SegmentButton组件
        let segmentButton = await driver.findComponent(ON.id('segmentButtonAction0020'));
        Logger.info('TEST', `Found SegmentButton component with icon and long text`);

        // 点击超长文本+图片的第一个按钮
        // 预期：文字超长时，文字逐级缩小（最小到9），如果继续超长，显示…
        Logger.info('TEST', `Click first button with icon and long text - expect text to shrink or show ellipsis`);
        await segmentButton.click();
        await driver.waitForIdle(1000, 2000);
        await windowSnap.snapShot();
        await Utils.sleep(1000);

        Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACTION_0020 end.`);
      } catch (err) {
        Logger.error('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACTION_0020 error: ${err}`);
      }
      done();
    });

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACTION_0030
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACTION_0030
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify SegmentButton single select capsule type with long text overflow handling
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACTION_0030', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACTION_0030 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_SegmentButton/SegmentButtonAction0030");
        let driver: Driver = await Driver.create();
        await driver.waitForIdle(1000, 2000);

        // 查找SegmentButton组件
        let segmentButton = await driver.findComponent(ON.id('segmentButtonAction0030'));
        Logger.info('TEST', `Found single select capsule SegmentButton component with long text`);

        // 点击超长文本的第一个按钮
        // 预期：文字超长时，文字逐级缩小（最小到9），如果继续超长，显示…
        Logger.info('TEST', `Click first button - expect text to shrink or show ellipsis`);
        await segmentButton.click();
        await driver.waitForIdle(1000, 2000);
        await windowSnap.snapShot();
        await Utils.sleep(1000);

        Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACTION_0030 end.`);
      } catch (err) {
        Logger.error('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACTION_0030 error: ${err}`);
      }
      done();
    });

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACTION_0040
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACTION_0040
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify SegmentButton single select capsule type with icon and long text overflow handling
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACTION_0040', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACTION_0040 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_SegmentButton/SegmentButtonAction0040");
        let driver: Driver = await Driver.create();
        await driver.waitForIdle(1000, 2000);

        // 查找SegmentButton组件
        let segmentButton = await driver.findComponent(ON.id('segmentButtonAction0040'));
        Logger.info('TEST', `Found single select capsule SegmentButton component with icon and long text`);

        // 点击超长文本+图片的第一个按钮
        // 预期：文字超长时，文字逐级缩小（最小到9），如果继续超长，显示…
        Logger.info('TEST', `Click first button with icon - expect text to shrink or show ellipsis`);
        await segmentButton.click();
        await driver.waitForIdle(1000, 2000);
        await windowSnap.snapShot();
        await Utils.sleep(1000);

        Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACTION_0040 end.`);
      } catch (err) {
        Logger.error('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACTION_0040 error: ${err}`);
      }
      done();
    });

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACTION_0050
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACTION_0050
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify SegmentButton multiply select capsule type with long text overflow handling
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACTION_0050', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACTION_0050 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_SegmentButton/SegmentButtonAction0050");
        let driver: Driver = await Driver.create();
        await driver.waitForIdle(1000, 2000);

        // 查找SegmentButton组件
        let segmentButton = await driver.findComponent(ON.id('segmentButtonAction0050'));
        Logger.info('TEST', `Found multiply select capsule SegmentButton component with long text`);

        // 点击超长文本的第一个按钮
        // 预期：文字超长时，文字逐级缩小（最小到9），如果继续超长，显示…
        Logger.info('TEST', `Click first button - expect text to shrink or show ellipsis`);
        await segmentButton.click();
        await driver.waitForIdle(1000, 2000);
        await windowSnap.snapShot();
        await Utils.sleep(1000);

        Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACTION_0050 end.`);
      } catch (err) {
        Logger.error('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACTION_0050 error: ${err}`);
      }
      done();
    });

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACTION_0060
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACTION_0060
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify SegmentButton multiply select capsule type with icon and long text overflow handling
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACTION_0060', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACTION_0060 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_SegmentButton/SegmentButtonAction0060");
        let driver: Driver = await Driver.create();
        await driver.waitForIdle(1000, 2000);

        // 查找SegmentButton组件
        let segmentButton = await driver.findComponent(ON.id('segmentButtonAction0060'));
        Logger.info('TEST', `Found multiply select capsule SegmentButton component with icon and long text`);

        // 点击超长文本+图片的第一个按钮
        // 预期：文字超长时，文字逐级缩小（最小到9），如果继续超长，显示…
        Logger.info('TEST', `Click first button with icon - expect text to shrink or show ellipsis`);
        await segmentButton.click();
        await driver.waitForIdle(1000, 2000);
        await windowSnap.snapShot();
        await Utils.sleep(1000);

        Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACTION_0060 end.`);
      } catch (err) {
        Logger.error('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACTION_0060 error: ${err}`);
      }
      done();
    });

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACTION_0070
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACTION_0070
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify SegmentButton dynamic switch from text buttons to icon buttons does not inherit textPadding
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACTION_0070', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACTION_0070 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_SegmentButton/SegmentButtonAction0070");
        let driver: Driver = await Driver.create();
        await driver.waitForIdle(1000, 2000);

        // 查找SegmentButton组件和切换按钮
        let segmentButton = await driver.findComponent(ON.id('segmentButtonAction0070'));
        Logger.info('TEST', `Found SegmentButton component with text buttons (textPadding set)`);


        // 点击切换按钮
        let switchButton = await driver.findComponent(ON.text('切换按钮类型'));
        Logger.info('TEST', `Click switch button to change to icon buttons`);
        await switchButton.click();
        await driver.waitForIdle(1000, 2000);

        // 截图：图片按钮状态（不继承textPadding）
        // 预期：图片按钮不会继承文本的textPadding
        Logger.info('TEST', `Capture switched state - icon buttons should not inherit textPadding`);
        await windowSnap.snapShot();
        await Utils.sleep(1000);

        Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACTION_0070 end.`);
      } catch (err) {
        Logger.error('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_ACTION_0070 error: ${err}`);
      }
      done();
    });

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0010
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0010
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify SegmentButton capsule type with maxFontScale parameter in aging adaptation
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0010', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0010 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_SegmentButton/SegmentButtonAging0010");
        let driver: Driver = await Driver.create();
        await driver.waitForIdle(1000, 2000);

        // 查找SegmentButton组件
        let segmentButton = await driver.findComponent(ON.id('segmentButtonAging0010'));
        Logger.info('TEST', `Found SegmentButton component with maxFontScale=2`);

        // 测试说明：依次点击按钮切换适老化档位，观察字体大小和粗细变化
        // 预期结果（根据适老化规范，maxFontScale=2）：

        // 标准档：1倍
        Logger.info('TEST', `Click 标准档 (1倍)`);
        let btn1 = await driver.findComponent(ON.id('fontScale_1'));
        await btn1.click();
        await driver.waitForIdle(1000, 2000);

        // 大1档：1.15倍
        Logger.info('TEST', `Click 大1档 (1.15倍)`);
        let btn2 = await driver.findComponent(ON.id('fontScale_1_15'));
        await btn2.click();
        await driver.waitForIdle(1000, 2000);

        // 大2档：1.3倍
        Logger.info('TEST', `Click 大2档 (1.3倍)`);
        let btn3 = await driver.findComponent(ON.id('fontScale_1_3'));
        await btn3.click();
        await driver.waitForIdle(1000, 2000);

        // 大3档：1.45倍
        Logger.info('TEST', `Click 大3档 (1.45倍)`);
        let btn4 = await driver.findComponent(ON.id('fontScale_1_45'));
        await btn4.click();
        await driver.waitForIdle(1000, 2000);

        // 大4档：1.75倍
        Logger.info('TEST', `Click 大4档 (1.75倍)`);
        let btn5 = await driver.findComponent(ON.id('fontScale_1_75'));
        await btn5.click();
        await driver.waitForIdle(1000, 2000);

        // 大5档：2倍（达到maxFontScale限制）
        Logger.info('TEST', `Click 大5档 (2倍，达到maxFontScale限制)`);
        let btn6 = await driver.findComponent(ON.id('fontScale_2'));
        await btn6.click();
        await driver.waitForIdle(1000, 2000);

        // 大6档：2.5倍（受maxFontScale=2限制，实际显示2倍）
        Logger.info('TEST', `Click 大6档 (2.5倍设置，受maxFontScale=2限制，实际显示2倍)`);
        let btn7 = await driver.findComponent(ON.id('fontScale_2_5'));
        await btn7.click();
        await driver.waitForIdle(1000, 2000);

        // 仅在最后截图一次
        await windowSnap.snapShot();
        await Utils.sleep(1000);

        Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0010 end.`);
      } catch (err) {
        Logger.error('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0010 error: ${err}`);
      }
      done();
    });

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0020
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0020
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify SegmentButton single-select capsule type with maxFontScale=1.75 in aging adaptation
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0020', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0020 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_SegmentButton/SegmentButtonAging0020");
        let driver: Driver = await Driver.create();
        await driver.waitForIdle(1000, 2000);

        let segmentButton = await driver.findComponent(ON.id('segmentButtonAging0020'));
        Logger.info('TEST', `Found SegmentButton component with maxFontScale=1.75`);

        Logger.info('TEST', `Click 标准档 (1倍)`);
        let btn1 = await driver.findComponent(ON.id('fontScale_1'));
        await btn1.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大1档 (1.15倍)`);
        let btn2 = await driver.findComponent(ON.id('fontScale_1_15'));
        await btn2.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大2档 (1.3倍)`);
        let btn3 = await driver.findComponent(ON.id('fontScale_1_3'));
        await btn3.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大3档 (1.45倍)`);
        let btn4 = await driver.findComponent(ON.id('fontScale_1_45'));
        await btn4.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大4档 (1.75倍，达到maxFontScale限制)`);
        let btn5 = await driver.findComponent(ON.id('fontScale_1_75'));
        await btn5.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大5档 (2倍设置，受maxFontScale=1.75限制，实际显示1.75倍)`);
        let btn6 = await driver.findComponent(ON.id('fontScale_2'));
        await btn6.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大6档 (2.5倍设置，受maxFontScale=1.75限制，实际显示1.75倍)`);
        let btn7 = await driver.findComponent(ON.id('fontScale_2_5'));
        await btn7.click();
        await driver.waitForIdle(1000, 2000);

        await windowSnap.snapShot();
        await Utils.sleep(1000);

        Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0020 end.`);
      } catch (err) {
        Logger.error('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0020 error: ${err}`);
      }
      done();
    });

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0030
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0030
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify SegmentButton multi-select capsule type with maxFontScale=1.75 in aging adaptation
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0030', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0030 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_SegmentButton/SegmentButtonAging0030");
        let driver: Driver = await Driver.create();
        await driver.waitForIdle(1000, 2000);

        let segmentButton = await driver.findComponent(ON.id('segmentButtonAging0030'));
        Logger.info('TEST', `Found SegmentButton component with maxFontScale=1.75`);

        Logger.info('TEST', `Click 标准档 (1倍)`);
        let btn1 = await driver.findComponent(ON.id('fontScale_1'));
        await btn1.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大1档 (1.15倍)`);
        let btn2 = await driver.findComponent(ON.id('fontScale_1_15'));
        await btn2.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大2档 (1.3倍)`);
        let btn3 = await driver.findComponent(ON.id('fontScale_1_3'));
        await btn3.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大3档 (1.45倍)`);
        let btn4 = await driver.findComponent(ON.id('fontScale_1_45'));
        await btn4.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大4档 (1.75倍，达到maxFontScale限制)`);
        let btn5 = await driver.findComponent(ON.id('fontScale_1_75'));
        await btn5.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大5档 (2倍设置，受maxFontScale=1.75限制，实际显示1.75倍)`);
        let btn6 = await driver.findComponent(ON.id('fontScale_2'));
        await btn6.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大6档 (2.5倍设置，受maxFontScale=1.75限制，实际显示1.75倍)`);
        let btn7 = await driver.findComponent(ON.id('fontScale_2_5'));
        await btn7.click();
        await driver.waitForIdle(1000, 2000);

        await windowSnap.snapShot();
        await Utils.sleep(1000);

        Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0030 end.`);
      } catch (err) {
        Logger.error('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0030 error: ${err}`);
      }
      done();
    });

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0050
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0050
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify SegmentButton multi-select capsule type with maxFontScale=1.15 in aging adaptation
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0050', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0050 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_SegmentButton/SegmentButtonAging0050");
        let driver: Driver = await Driver.create();
        await driver.waitForIdle(1000, 2000);

        let segmentButton = await driver.findComponent(ON.id('segmentButtonAging0050'));
        Logger.info('TEST', `Found SegmentButton component with maxFontScale=1.15`);

        Logger.info('TEST', `Click 标准档 (1倍)`);
        let btn1 = await driver.findComponent(ON.id('fontScale_1'));
        await btn1.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大1档 (1.15倍，达到maxFontScale限制)`);
        let btn2 = await driver.findComponent(ON.id('fontScale_1_15'));
        await btn2.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大2档 (1.3倍设置，受maxFontScale=1.15限制，实际显示1.15倍)`);
        let btn3 = await driver.findComponent(ON.id('fontScale_1_3'));
        await btn3.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大3档 (1.45倍设置，受maxFontScale=1.15限制，实际显示1.15倍)`);
        let btn4 = await driver.findComponent(ON.id('fontScale_1_45'));
        await btn4.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大4档 (1.75倍设置，受maxFontScale=1.15限制，实际显示1.15倍)`);
        let btn5 = await driver.findComponent(ON.id('fontScale_1_75'));
        await btn5.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大5档 (2倍设置，受maxFontScale=1.15限制，实际显示1.15倍)`);
        let btn6 = await driver.findComponent(ON.id('fontScale_2'));
        await btn6.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大6档 (2.5倍设置，受maxFontScale=1.15限制，实际显示1.15倍)`);
        let btn7 = await driver.findComponent(ON.id('fontScale_2_5'));
        await btn7.click();
        await driver.waitForIdle(1000, 2000);

        await windowSnap.snapShot();
        await Utils.sleep(1000);

        Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0050 end.`);
      } catch (err) {
        Logger.error('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0050 error: ${err}`);
      }
      done();
    });

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0100
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0100
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify SegmentButton tab type with maxFontScale=1.75 in aging adaptation
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0100', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0100 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_SegmentButton/SegmentButtonAging0100");
        let driver: Driver = await Driver.create();
        await driver.waitForIdle(1000, 2000);

        let segmentButton = await driver.findComponent(ON.id('segmentButtonAging0100'));
        Logger.info('TEST', `Found SegmentButton component with maxFontScale=1.75`);

        Logger.info('TEST', `Click 标准档 (1倍)`);
        let btn1 = await driver.findComponent(ON.id('fontScale_1'));
        await btn1.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大1档 (1.15倍)`);
        let btn2 = await driver.findComponent(ON.id('fontScale_1_15'));
        await btn2.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大2档 (1.3倍)`);
        let btn3 = await driver.findComponent(ON.id('fontScale_1_3'));
        await btn3.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大3档 (1.45倍)`);
        let btn4 = await driver.findComponent(ON.id('fontScale_1_45'));
        await btn4.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大4档 (1.75倍，达到maxFontScale限制)`);
        let btn5 = await driver.findComponent(ON.id('fontScale_1_75'));
        await btn5.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大5档 (2倍设置，受maxFontScale=1.75限制，实际显示1.75倍)`);
        let btn6 = await driver.findComponent(ON.id('fontScale_2'));
        await btn6.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大6档 (2.5倍设置，受maxFontScale=1.75限制，实际显示1.75倍)`);
        let btn7 = await driver.findComponent(ON.id('fontScale_2_5'));
        await btn7.click();
        await driver.waitForIdle(1000, 2000);

        await windowSnap.snapShot();
        await Utils.sleep(1000);

        Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0100 end.`);
      } catch (err) {
        Logger.error('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0100 error: ${err}`);
      }
      done();
    });

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0130
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0130
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify SegmentButton tab type with maxFontScale=0.5 in aging adaptation
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0130', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0130 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_SegmentButton/SegmentButtonAging0130");
        let driver: Driver = await Driver.create();
        await driver.waitForIdle(1000, 2000);

        let segmentButton = await driver.findComponent(ON.id('segmentButtonAging0130'));
        Logger.info('TEST', `Found SegmentButton component with maxFontScale=0.5 (小于1按1处理)`);

        Logger.info('TEST', `Click 标准档 (1倍)`);
        let btn1 = await driver.findComponent(ON.id('fontScale_1'));
        await btn1.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大1档 (1.15倍设置，受maxFontScale=0.5限制，实际显示1倍)`);
        let btn2 = await driver.findComponent(ON.id('fontScale_1_15'));
        await btn2.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大2档 (1.3倍设置，受maxFontScale=0.5限制，实际显示1倍)`);
        let btn3 = await driver.findComponent(ON.id('fontScale_1_3'));
        await btn3.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大3档 (1.45倍设置，受maxFontScale=0.5限制，实际显示1倍)`);
        let btn4 = await driver.findComponent(ON.id('fontScale_1_45'));
        await btn4.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大4档 (1.75倍设置，受maxFontScale=0.5限制，实际显示1倍)`);
        let btn5 = await driver.findComponent(ON.id('fontScale_1_75'));
        await btn5.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大5档 (2倍设置，受maxFontScale=0.5限制，实际显示1倍)`);
        let btn6 = await driver.findComponent(ON.id('fontScale_2'));
        await btn6.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大6档 (2.5倍设置，受maxFontScale=0.5限制，实际显示1倍)`);
        let btn7 = await driver.findComponent(ON.id('fontScale_2_5'));
        await btn7.click();
        await driver.waitForIdle(1000, 2000);

        await windowSnap.snapShot();
        await Utils.sleep(1000);

        Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0130 end.`);
      } catch (err) {
        Logger.error('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0130 error: ${err}`);
      }
      done();
    });

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0140
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0140
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify SegmentButton tab type with maxFontScale=1 in aging adaptation
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0140', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0140 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_SegmentButton/SegmentButtonAging0140");
        let driver: Driver = await Driver.create();
        await driver.waitForIdle(1000, 2000);

        let segmentButton = await driver.findComponent(ON.id('segmentButtonAging0140'));
        Logger.info('TEST', `Found SegmentButton component with maxFontScale=1`);

        Logger.info('TEST', `Click 标准档 (1倍)`);
        let btn1 = await driver.findComponent(ON.id('fontScale_1'));
        await btn1.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大1档 (1.15倍设置，受maxFontScale=1限制，实际显示1倍)`);
        let btn2 = await driver.findComponent(ON.id('fontScale_1_15'));
        await btn2.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大2档 (1.3倍设置，受maxFontScale=1限制，实际显示1倍)`);
        let btn3 = await driver.findComponent(ON.id('fontScale_1_3'));
        await btn3.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大3档 (1.45倍设置，受maxFontScale=1限制，实际显示1倍)`);
        let btn4 = await driver.findComponent(ON.id('fontScale_1_45'));
        await btn4.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大4档 (1.75倍设置，受maxFontScale=1限制，实际显示1倍)`);
        let btn5 = await driver.findComponent(ON.id('fontScale_1_75'));
        await btn5.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大5档 (2倍设置，受maxFontScale=1限制，实际显示1倍)`);
        let btn6 = await driver.findComponent(ON.id('fontScale_2'));
        await btn6.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大6档 (2.5倍设置，受maxFontScale=1限制，实际显示1倍)`);
        let btn7 = await driver.findComponent(ON.id('fontScale_2_5'));
        await btn7.click();
        await driver.waitForIdle(1000, 2000);

        await windowSnap.snapShot();
        await Utils.sleep(1000);

        Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0140 end.`);
      } catch (err) {
        Logger.error('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0140 error: ${err}`);
      }
      done();
    });

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0150
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0150
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify SegmentButton multi-select capsule type with maxFontScale=undefined in aging adaptation
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0150', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0150 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_SegmentButton/SegmentButtonAging0150");
        let driver: Driver = await Driver.create();
        await driver.waitForIdle(1000, 2000);

        let segmentButton = await driver.findComponent(ON.id('segmentButtonAging0150'));
        Logger.info('TEST', `Found SegmentButton component with maxFontScale=undefined (默认为1)`);

        Logger.info('TEST', `Click 标准档 (1倍)`);
        let btn1 = await driver.findComponent(ON.id('fontScale_1'));
        await btn1.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大1档 (1.15倍设置，受maxFontScale=undefined限制，实际显示1倍)`);
        let btn2 = await driver.findComponent(ON.id('fontScale_1_15'));
        await btn2.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大2档 (1.3倍设置，受maxFontScale=undefined限制，实际显示1倍)`);
        let btn3 = await driver.findComponent(ON.id('fontScale_1_3'));
        await btn3.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大3档 (1.45倍设置，受maxFontScale=undefined限制，实际显示1倍)`);
        let btn4 = await driver.findComponent(ON.id('fontScale_1_45'));
        await btn4.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大4档 (1.75倍设置，受maxFontScale=undefined限制，实际显示1倍)`);
        let btn5 = await driver.findComponent(ON.id('fontScale_1_75'));
        await btn5.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大5档 (2倍设置，受maxFontScale=undefined限制，实际显示1倍)`);
        let btn6 = await driver.findComponent(ON.id('fontScale_2'));
        await btn6.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大6档 (2.5倍设置，受maxFontScale=undefined限制，实际显示1倍)`);
        let btn7 = await driver.findComponent(ON.id('fontScale_2_5'));
        await btn7.click();
        await driver.waitForIdle(1000, 2000);

        await windowSnap.snapShot();
        await Utils.sleep(1000);

        Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0150 end.`);
      } catch (err) {
        Logger.error('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0150 error: ${err}`);
      }
      done();
    });

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0170
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0170
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify SegmentButton single-select capsule type with maxFontScale=1.3 in aging adaptation
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0170', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0170 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_SegmentButton/SegmentButtonAging0170");
        let driver: Driver = await Driver.create();
        await driver.waitForIdle(1000, 2000);

        let segmentButton = await driver.findComponent(ON.id('segmentButtonAging0170'));
        Logger.info('TEST', `Found SegmentButton component with maxFontScale=1.3`);

        Logger.info('TEST', `Click 标准档 (1倍)`);
        let btn1 = await driver.findComponent(ON.id('fontScale_1'));
        await btn1.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大1档 (1.15倍)`);
        let btn2 = await driver.findComponent(ON.id('fontScale_1_15'));
        await btn2.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大2档 (1.3倍，达到maxFontScale限制)`);
        let btn3 = await driver.findComponent(ON.id('fontScale_1_3'));
        await btn3.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大3档 (1.45倍设置，受maxFontScale=1.3限制，实际显示1.3倍)`);
        let btn4 = await driver.findComponent(ON.id('fontScale_1_45'));
        await btn4.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大4档 (1.75倍设置，受maxFontScale=1.3限制，实际显示1.3倍)`);
        let btn5 = await driver.findComponent(ON.id('fontScale_1_75'));
        await btn5.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大5档 (2倍设置，受maxFontScale=1.3限制，实际显示1.3倍)`);
        let btn6 = await driver.findComponent(ON.id('fontScale_2'));
        await btn6.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大6档 (2.5倍设置，受maxFontScale=1.3限制，实际显示1.3倍)`);
        let btn7 = await driver.findComponent(ON.id('fontScale_2_5'));
        await btn7.click();
        await driver.waitForIdle(1000, 2000);

        await windowSnap.snapShot();
        await Utils.sleep(1000);

        Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0170 end.`);
      } catch (err) {
        Logger.error('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0170 error: ${err}`);
      }
      done();
    });

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0200
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0200
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify SegmentButton multi-select capsule type with maxFontScale=2 in aging adaptation
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0200', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0200 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_SegmentButton/SegmentButtonAging0200");
        let driver: Driver = await Driver.create();
        await driver.waitForIdle(1000, 2000);

        let segmentButton = await driver.findComponent(ON.id('segmentButtonAging0200'));
        Logger.info('TEST', `Found SegmentButton component with maxFontScale=2`);

        Logger.info('TEST', `Click 标准档 (1倍)`);
        let btn1 = await driver.findComponent(ON.id('fontScale_1'));
        await btn1.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大1档 (1.15倍)`);
        let btn2 = await driver.findComponent(ON.id('fontScale_1_15'));
        await btn2.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大2档 (1.3倍)`);
        let btn3 = await driver.findComponent(ON.id('fontScale_1_3'));
        await btn3.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大3档 (1.45倍)`);
        let btn4 = await driver.findComponent(ON.id('fontScale_1_45'));
        await btn4.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大4档 (1.75倍)`);
        let btn5 = await driver.findComponent(ON.id('fontScale_1_75'));
        await btn5.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大5档 (2倍，达到maxFontScale限制)`);
        let btn6 = await driver.findComponent(ON.id('fontScale_2'));
        await btn6.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大6档 (2.5倍设置，受maxFontScale=2限制，实际显示2倍)`);
        let btn7 = await driver.findComponent(ON.id('fontScale_2_5'));
        await btn7.click();
        await driver.waitForIdle(1000, 2000);

        await windowSnap.snapShot();
        await Utils.sleep(1000);

        Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0200 end.`);
      } catch (err) {
        Logger.error('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0200 error: ${err}`);
      }
      done();
    });

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0210
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0210
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify SegmentButton tab type with maxFontScale=1.45 in aging adaptation
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0210', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0210 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_SegmentButton/SegmentButtonAging0210");
        let driver: Driver = await Driver.create();
        await driver.waitForIdle(1000, 2000);

        let segmentButton = await driver.findComponent(ON.id('segmentButtonAging0210'));
        Logger.info('TEST', `Found SegmentButton component with maxFontScale=1.45`);

        Logger.info('TEST', `Click 标准档 (1倍)`);
        let btn1 = await driver.findComponent(ON.id('fontScale_1'));
        await btn1.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大1档 (1.15倍)`);
        let btn2 = await driver.findComponent(ON.id('fontScale_1_15'));
        await btn2.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大2档 (1.3倍)`);
        let btn3 = await driver.findComponent(ON.id('fontScale_1_3'));
        await btn3.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大3档 (1.45倍，达到maxFontScale限制)`);
        let btn4 = await driver.findComponent(ON.id('fontScale_1_45'));
        await btn4.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大4档 (1.75倍设置，受maxFontScale=1.45限制，实际显示1.45倍)`);
        let btn5 = await driver.findComponent(ON.id('fontScale_1_75'));
        await btn5.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大5档 (2倍设置，受maxFontScale=1.45限制，实际显示1.45倍)`);
        let btn6 = await driver.findComponent(ON.id('fontScale_2'));
        await btn6.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大6档 (2.5倍设置，受maxFontScale=1.45限制，实际显示1.45倍)`);
        let btn7 = await driver.findComponent(ON.id('fontScale_2_5'));
        await btn7.click();
        await driver.waitForIdle(1000, 2000);

        await windowSnap.snapShot();
        await Utils.sleep(1000);

        Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0210 end.`);
      } catch (err) {
        Logger.error('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0210 error: ${err}`);
      }
      done();
    });

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0220
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0220
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify SegmentButton multi-select capsule type with maxFontScale=0.5 in aging adaptation
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0220', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0220 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_SegmentButton/SegmentButtonAging0220");
        let driver: Driver = await Driver.create();
        await driver.waitForIdle(1000, 2000);

        let segmentButton = await driver.findComponent(ON.id('segmentButtonAging0220'));
        Logger.info('TEST', `Found SegmentButton component with maxFontScale=0.5 (小于1按1处理)`);

        Logger.info('TEST', `Click 标准档 (1倍)`);
        let btn1 = await driver.findComponent(ON.id('fontScale_1'));
        await btn1.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大1档 (1.15倍设置，受maxFontScale=0.5限制，实际显示1倍)`);
        let btn2 = await driver.findComponent(ON.id('fontScale_1_15'));
        await btn2.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大2档 (1.3倍设置，受maxFontScale=0.5限制，实际显示1倍)`);
        let btn3 = await driver.findComponent(ON.id('fontScale_1_3'));
        await btn3.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大3档 (1.45倍设置，受maxFontScale=0.5限制，实际显示1倍)`);
        let btn4 = await driver.findComponent(ON.id('fontScale_1_45'));
        await btn4.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大4档 (1.75倍设置，受maxFontScale=0.5限制，实际显示1倍)`);
        let btn5 = await driver.findComponent(ON.id('fontScale_1_75'));
        await btn5.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大5档 (2倍设置，受maxFontScale=0.5限制，实际显示1倍)`);
        let btn6 = await driver.findComponent(ON.id('fontScale_2'));
        await btn6.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大6档 (2.5倍设置，受maxFontScale=0.5限制，实际显示1倍)`);
        let btn7 = await driver.findComponent(ON.id('fontScale_2_5'));
        await btn7.click();
        await driver.waitForIdle(1000, 2000);

        await windowSnap.snapShot();
        await Utils.sleep(1000);

        Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0220 end.`);
      } catch (err) {
        Logger.error('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0220 error: ${err}`);
      }
      done();
    });

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0240
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0240
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify SegmentButton multi-select capsule type with maxFontScale=1.3 in aging adaptation
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0240', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0240 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_SegmentButton/SegmentButtonAging0240");
        let driver: Driver = await Driver.create();
        await driver.waitForIdle(1000, 2000);

        let segmentButton = await driver.findComponent(ON.id('segmentButtonAging0240'));
        Logger.info('TEST', `Found SegmentButton component with maxFontScale=1.3`);

        Logger.info('TEST', `Click 标准档 (1倍)`);
        let btn1 = await driver.findComponent(ON.id('fontScale_1'));
        await btn1.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大1档 (1.15倍)`);
        let btn2 = await driver.findComponent(ON.id('fontScale_1_15'));
        await btn2.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大2档 (1.3倍，达到maxFontScale限制)`);
        let btn3 = await driver.findComponent(ON.id('fontScale_1_3'));
        await btn3.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大3档 (1.45倍设置，受maxFontScale=1.3限制，实际显示1.3倍)`);
        let btn4 = await driver.findComponent(ON.id('fontScale_1_45'));
        await btn4.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大4档 (1.75倍设置，受maxFontScale=1.3限制，实际显示1.3倍)`);
        let btn5 = await driver.findComponent(ON.id('fontScale_1_75'));
        await btn5.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大5档 (2倍设置，受maxFontScale=1.3限制，实际显示1.3倍)`);
        let btn6 = await driver.findComponent(ON.id('fontScale_2'));
        await btn6.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大6档 (2.5倍设置，受maxFontScale=1.3限制，实际显示1.3倍)`);
        let btn7 = await driver.findComponent(ON.id('fontScale_2_5'));
        await btn7.click();
        await driver.waitForIdle(1000, 2000);

        await windowSnap.snapShot();
        await Utils.sleep(1000);

        Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0240 end.`);
      } catch (err) {
        Logger.error('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0240 error: ${err}`);
      }
      done();
    });

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0270
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0270
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify SegmentButton single-select capsule type with maxFontScale=2 in aging adaptation
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0270', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0270 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_SegmentButton/SegmentButtonAging0270");
        let driver: Driver = await Driver.create();
        await driver.waitForIdle(1000, 2000);

        let segmentButton = await driver.findComponent(ON.id('segmentButtonAging0270'));
        Logger.info('TEST', `Found SegmentButton component with maxFontScale=2`);

        Logger.info('TEST', `Click 标准档 (1倍)`);
        let btn1 = await driver.findComponent(ON.id('fontScale_1'));
        await btn1.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大1档 (1.15倍)`);
        let btn2 = await driver.findComponent(ON.id('fontScale_1_15'));
        await btn2.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大2档 (1.3倍)`);
        let btn3 = await driver.findComponent(ON.id('fontScale_1_3'));
        await btn3.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大3档 (1.45倍)`);
        let btn4 = await driver.findComponent(ON.id('fontScale_1_45'));
        await btn4.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大4档 (1.75倍)`);
        let btn5 = await driver.findComponent(ON.id('fontScale_1_75'));
        await btn5.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大5档 (2倍，达到maxFontScale限制)`);
        let btn6 = await driver.findComponent(ON.id('fontScale_2'));
        await btn6.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大6档 (2.5倍设置，受maxFontScale=2限制，实际显示2倍)`);
        let btn7 = await driver.findComponent(ON.id('fontScale_2_5'));
        await btn7.click();
        await driver.waitForIdle(1000, 2000);

        await windowSnap.snapShot();
        await Utils.sleep(1000);

        Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0270 end.`);
      } catch (err) {
        Logger.error('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0270 error: ${err}`);
      }
      done();
    });

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0280
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0280
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify SegmentButton multi-select capsule type with maxFontScale=1.45 in aging adaptation
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0280', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0280 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_SegmentButton/SegmentButtonAging0280");
        let driver: Driver = await Driver.create();
        await driver.waitForIdle(1000, 2000);

        let segmentButton = await driver.findComponent(ON.id('segmentButtonAging0280'));
        Logger.info('TEST', `Found SegmentButton component with maxFontScale=1.45`);

        Logger.info('TEST', `Click 标准档 (1倍)`);
        let btn1 = await driver.findComponent(ON.id('fontScale_1'));
        await btn1.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大1档 (1.15倍)`);
        let btn2 = await driver.findComponent(ON.id('fontScale_1_15'));
        await btn2.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大2档 (1.3倍)`);
        let btn3 = await driver.findComponent(ON.id('fontScale_1_3'));
        await btn3.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大3档 (1.45倍，达到maxFontScale限制)`);
        let btn4 = await driver.findComponent(ON.id('fontScale_1_45'));
        await btn4.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大4档 (1.75倍设置，受maxFontScale=1.45限制，实际显示1.45倍)`);
        let btn5 = await driver.findComponent(ON.id('fontScale_1_75'));
        await btn5.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大5档 (2倍设置，受maxFontScale=1.45限制，实际显示1.45倍)`);
        let btn6 = await driver.findComponent(ON.id('fontScale_2'));
        await btn6.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大6档 (2.5倍设置，受maxFontScale=1.45限制，实际显示1.45倍)`);
        let btn7 = await driver.findComponent(ON.id('fontScale_2_5'));
        await btn7.click();
        await driver.waitForIdle(1000, 2000);

        await windowSnap.snapShot();
        await Utils.sleep(1000);

        Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0280 end.`);
      } catch (err) {
        Logger.error('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0280 error: ${err}`);
      }
      done();
    });

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0290
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0290
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify SegmentButton single-select capsule type with maxFontScale=-1 in aging adaptation
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0290', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0290 start.`);
      try {
        await Settings.createWindow("testability/pages/focus_SegmentButton/SegmentButtonAging0290");
        let driver: Driver = await Driver.create();
        await driver.waitForIdle(1000, 2000);

        let segmentButton = await driver.findComponent(ON.id('segmentButtonAging0290'));
        Logger.info('TEST', `Found SegmentButton component with maxFontScale=-1 (小于1按1处理)`);

        Logger.info('TEST', `Click 标准档 (1倍)`);
        let btn1 = await driver.findComponent(ON.id('fontScale_1'));
        await btn1.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大1档 (1.15倍设置，受maxFontScale=-1限制，实际显示1倍)`);
        let btn2 = await driver.findComponent(ON.id('fontScale_1_15'));
        await btn2.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大2档 (1.3倍设置，受maxFontScale=-1限制，实际显示1倍)`);
        let btn3 = await driver.findComponent(ON.id('fontScale_1_3'));
        await btn3.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大3档 (1.45倍设置，受maxFontScale=-1限制，实际显示1倍)`);
        let btn4 = await driver.findComponent(ON.id('fontScale_1_45'));
        await btn4.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大4档 (1.75倍设置，受maxFontScale=-1限制，实际显示1倍)`);
        let btn5 = await driver.findComponent(ON.id('fontScale_1_75'));
        await btn5.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大5档 (2倍设置，受maxFontScale=-1限制，实际显示1倍)`);
        let btn6 = await driver.findComponent(ON.id('fontScale_2'));
        await btn6.click();
        await driver.waitForIdle(1000, 2000);

        Logger.info('TEST', `Click 大6档 (2.5倍设置，受maxFontScale=-1限制，实际显示1倍)`);
        let btn7 = await driver.findComponent(ON.id('fontScale_2_5'));
        await btn7.click();
        await driver.waitForIdle(1000, 2000);

        await windowSnap.snapShot();
        await Utils.sleep(1000);

        Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0290 end.`);
      } catch (err) {
        Logger.error('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTOM_AGING_0290 error: ${err}`);
      }
      done();
    });

    
