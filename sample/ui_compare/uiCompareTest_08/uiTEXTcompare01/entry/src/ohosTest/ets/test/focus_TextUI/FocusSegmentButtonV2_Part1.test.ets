/*
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

export default function FocusSegmentButtonV2TestPart1() {

  describe('FocusSegmentButtonV2TestPart1', () => {
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
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0010
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0010
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 buttonBackgroundColor with ColorMetrics.resourceColor($r("app.string.Pink"))
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0010', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0010 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 胶囊型分段按钮（单选）');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV20010");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2：点击buttonBackgroundColor接口按钮（模拟点击参数配置和设置齿轮）
      Logger.info('TEST', 'Step 2-3: Click buttonBackgroundColor interface button');
      let buttonBackgroundColorButton = await driver.findComponent(ON.id('buttonBackgroundColorButton'));
      if (buttonBackgroundColorButton) {
        await buttonBackgroundColorButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤4：已在点击时设置 itemSelectedBackgroundColor: ColorMetrics.resourceColor($r("app.string.Pink"))
      Logger.info('TEST', 'Step 4: itemSelectedBackgroundColor set to ColorMetrics.resourceColor($r("app.string.Pink"))');

      // 步骤5：观察分段按钮背景是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the segment button background displays normally');
      Logger.info('TEST', 'Expected: 分段按钮背景按照预设颜色正常显示，为粉色');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0010 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0020
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0020
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemFontColor with ColorMetrics.resourceColor($r("app.color.Pink"))
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0020', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0020 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 胶囊型分段按钮（单选）');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV20020");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-3：点击itemFontColor接口按钮
      Logger.info('TEST', 'Step 2-3: Click itemFontColor interface button');
      let itemFontColorButton = await driver.findComponent(ON.id('itemFontColorButton'));
      if (itemFontColorButton) {
        await itemFontColorButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤4：已设置 itemFontColor: ColorMetrics.resourceColor($r("app.color.Pink"))
      Logger.info('TEST', 'Step 4: itemFontColor set to ColorMetrics.resourceColor($r("app.color.Pink"))');

      // 步骤5：观察非选中的分段按钮的字体颜色
      Logger.info('TEST', 'Step 5: Observe unselected segment button font color');
      Logger.info('TEST', 'Expected: 非选中的分段按钮的字体颜色按照预设颜色正常显示，为粉色');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0020 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0030
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0030
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemIconFillColor with ColorMetrics.resourceColor($r("app.color.Pink"))
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0030', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0030 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 胶囊型分段按钮（单选）');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV20030");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-3：点击itemIconFillColor接口按钮
      Logger.info('TEST', 'Step 2-3: Click itemIconFillColor interface button');
      let itemIconFillColorButton = await driver.findComponent(ON.id('itemIconFillColorButton'));
      if (itemIconFillColorButton) {
        await itemIconFillColorButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤4：已设置 itemIconFillColor: ColorMetrics.resourceColor($r("app.color.Pink"))
      Logger.info('TEST', 'Step 4: itemIconFillColor set to ColorMetrics.resourceColor($r("app.color.Pink"))');

      // 步骤5：观察未选择的分段按钮的图标颜色
      Logger.info('TEST', 'Step 5: Observe unselected segment button icon color');
      Logger.info('TEST', 'Expected: 未选择的分段按钮的图标按照预设颜色正常显示，为粉色');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0030 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0040
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0040
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemSelectedBackgroundColor with ColorMetrics.resourceColor($r("app.color.Pink"))
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0040', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0040 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 胶囊型分段按钮（单选）');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV20040");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-3：点击itemSelectedBackgroundColor接口按钮
      Logger.info('TEST', 'Step 2-3: Click itemSelectedBackgroundColor interface button');
      let itemSelectedBackgroundColorButton = await driver.findComponent(ON.id('itemSelectedBackgroundColorButton'));
      if (itemSelectedBackgroundColorButton) {
        await itemSelectedBackgroundColorButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤4：已设置 itemSelectedBackgroundColor: ColorMetrics.resourceColor($r("app.color.Pink"))
      Logger.info('TEST', 'Step 4: itemSelectedBackgroundColor set to ColorMetrics.resourceColor($r("app.color.Pink"))');

      // 步骤5：观察已选择的分段按钮的背景颜色
      Logger.info('TEST', 'Step 5: Observe selected segment button background color');
      Logger.info('TEST', 'Expected: 已选择的分段按钮的背景颜色按照预设颜色正常显示，为粉色');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0040 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0050
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0050
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemSelectedFontColor with ColorMetrics.resourceColor($r("app.color.Pink"))
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0050', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0050 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 胶囊型分段按钮（单选）');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV20050");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-3：点击itemSelectedFontColor接口按钮
      Logger.info('TEST', 'Step 2-3: Click itemSelectedFontColor interface button');
      let itemSelectedFontColorButton = await driver.findComponent(ON.id('itemSelectedFontColorButton'));
      if (itemSelectedFontColorButton) {
        await itemSelectedFontColorButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤4：已设置 itemSelectedFontColor: ColorMetrics.resourceColor($r("app.color.Pink"))
      Logger.info('TEST', 'Step 4: itemSelectedFontColor set to ColorMetrics.resourceColor($r("app.color.Pink"))');

      // 步骤5：观察已选择的分段按钮的字体颜色
      Logger.info('TEST', 'Step 5: Observe selected segment button font color');
      Logger.info('TEST', 'Expected: 已选择的分段按钮的字体颜色按照预设颜色正常显示，为粉色');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0050 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0060
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0060
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemSelectedIconFillColor with ColorMetrics.resourceColor($r("app.color.Pink"))
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0060', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0060 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 胶囊型分段按钮（单选）');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV20060");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-3：点击itemSelectedIconFillColor接口按钮
      Logger.info('TEST', 'Step 2-3: Click itemSelectedIconFillColor interface button');
      let itemSelectedIconFillColorButton = await driver.findComponent(ON.id('itemSelectedIconFillColorButton'));
      if (itemSelectedIconFillColorButton) {
        await itemSelectedIconFillColorButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤4：已设置 itemSelectedIconFillColor: ColorMetrics.resourceColor($r("app.color.Pink"))
      Logger.info('TEST', 'Step 4: itemSelectedIconFillColor set to ColorMetrics.resourceColor($r("app.color.Pink"))');

      // 步骤5：观察已选择的分段按钮的图标颜色
      Logger.info('TEST', 'Step 5: Observe selected segment button icon color');
      Logger.info('TEST', 'Expected: 已选择的分段按钮的图标按照预设颜色正常显示，为粉色');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0060 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0070
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0070
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemSelectedSymbolFontColor with ColorMetrics.resourceColor($r("app.color.Pink"))
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0070', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0070 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 胶囊型分段按钮（单选）');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV20070");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-3：点击itemSelectedSymbolFontColor接口按钮
      Logger.info('TEST', 'Step 2-3: Click itemSelectedSymbolFontColor interface button');
      let itemSelectedSymbolFontColorButton = await driver.findComponent(ON.id('itemSelectedSymbolFontColorButton'));
      if (itemSelectedSymbolFontColorButton) {
        await itemSelectedSymbolFontColorButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤4：已设置颜色
      Logger.info('TEST', 'Step 4: itemSelectedSymbolFontColor set to ColorMetrics.resourceColor($r("app.color.Pink"))');

      // 步骤5：观察已选择的分段按钮的HM Symbol类型图标颜色
      Logger.info('TEST', 'Step 5: Observe selected segment button HM Symbol icon color');
      Logger.info('TEST', 'Expected: 已选择的分段按钮的HM Symbol类型图标按照预设颜色正常显示，为粉色');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0070 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0080
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0080
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemSymbolFontColor with ColorMetrics.resourceColor($r("app.color.Pink"))
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0080', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0080 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 胶囊型分段按钮（单选）');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV20080");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-3：点击itemSymbolFontColor接口按钮
      Logger.info('TEST', 'Step 2-3: Click itemSymbolFontColor interface button');
      let itemSymbolFontColorButton = await driver.findComponent(ON.id('itemSymbolFontColorButton'));
      if (itemSymbolFontColorButton) {
        await itemSymbolFontColorButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤4：已设置颜色
      Logger.info('TEST', 'Step 4: itemSymbolFontColor set to ColorMetrics.resourceColor($r("app.color.Pink"))');

      // 步骤5：观察未选择的分段按钮的HM Symbol类型图标颜色
      Logger.info('TEST', 'Step 5: Observe unselected segment button HM Symbol icon color');
      Logger.info('TEST', 'Expected: 未选择的分段按钮的HM Symbol类型图标按照预设颜色正常显示，为粉色');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0080 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0090
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0090
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemBackgroundColor with ColorMetrics.resourceColor($r("app.color.Pink"))
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0090', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0090 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 胶囊型分段按钮（多选）');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV20090");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-3：点击itemBackgroundColor接口按钮
      Logger.info('TEST', 'Step 2-3: Click itemBackgroundColor interface button');
      let itemBackgroundColorButton = await driver.findComponent(ON.id('itemBackgroundColorButton'));
      if (itemBackgroundColorButton) {
        await itemBackgroundColorButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤4：已设置颜色
      Logger.info('TEST', 'Step 4: itemBackgroundColor set to ColorMetrics.resourceColor($r("app.color.Pink"))');

      // 步骤5：观察分段按钮背景颜色
      Logger.info('TEST', 'Step 5: Observe segment button background color');
      Logger.info('TEST', 'Expected: 分段按钮背景按照预设颜色正常显示，为粉色');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0090 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0100
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0100
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemFontColor with ColorMetrics.resourceColor($r("app.color.Pink"))
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0100', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0100 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 胶囊型分段按钮（多选）');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV20100");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-3：点击itemFontColor接口按钮
      Logger.info('TEST', 'Step 2-3: Click itemFontColor interface button');
      let itemFontColorButton = await driver.findComponent(ON.id('itemFontColorButton'));
      if (itemFontColorButton) {
        await itemFontColorButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤4：已设置颜色
      Logger.info('TEST', 'Step 4: itemFontColor set to ColorMetrics.resourceColor($r("app.color.Pink"))');

      // 步骤5：观察非选中的分段按钮的字体颜色
      Logger.info('TEST', 'Step 5: Observe unselected segment button font color');
      Logger.info('TEST', 'Expected: 非选中的分段按钮的字体颜色按照预设颜色正常显示，为粉色');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0100 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0110
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0110
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemIconFillColor with ColorMetrics.resourceColor($r("app.color.Pink"))
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0110', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0110 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 胶囊型分段按钮（多选）');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV20110");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-3：点击itemIconFillColor接口按钮
      Logger.info('TEST', 'Step 2-3: Click itemIconFillColor interface button');
      let itemIconFillColorButton = await driver.findComponent(ON.id('itemIconFillColorButton'));
      if (itemIconFillColorButton) {
        await itemIconFillColorButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤4：已设置颜色
      Logger.info('TEST', 'Step 4: itemIconFillColor set to ColorMetrics.resourceColor($r("app.color.Pink"))');

      // 步骤5：观察未选择的分段按钮的图标颜色
      Logger.info('TEST', 'Step 5: Observe unselected segment button icon color');
      Logger.info('TEST', 'Expected: 未选择的分段按钮的图标按照预设颜色正常显示，为粉色');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0110 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0120
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0120
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemSelectedBackgroundColor with ColorMetrics.resourceColor($r("app.color.Pink"))
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0120', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0120 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 胶囊型分段按钮（多选）');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV20120");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-3：点击itemSelectedBackgroundColor接口按钮
      Logger.info('TEST', 'Step 2-3: Click itemSelectedBackgroundColor interface button');
      let itemSelectedBackgroundColorButton = await driver.findComponent(ON.id('itemSelectedBackgroundColorButton'));
      if (itemSelectedBackgroundColorButton) {
        await itemSelectedBackgroundColorButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤4：已设置颜色
      Logger.info('TEST', 'Step 4: itemSelectedBackgroundColor set to ColorMetrics.resourceColor($r("app.color.Pink"))');

      // 步骤5：观察已选择的分段按钮的背景颜色
      Logger.info('TEST', 'Step 5: Observe selected segment button background color');
      Logger.info('TEST', 'Expected: 已选择的分段按钮的背景颜色按照预设颜色正常显示，为粉色');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0120 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0130
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0130
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemSelectedFontColor with ColorMetrics.resourceColor($r("app.color.Pink"))
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0130', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0130 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 胶囊型分段按钮（多选）');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV20130");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-3：点击itemSelectedFontColor接口按钮
      Logger.info('TEST', 'Step 2-3: Click itemSelectedFontColor interface button');
      let itemSelectedFontColorButton = await driver.findComponent(ON.id('itemSelectedFontColorButton'));
      if (itemSelectedFontColorButton) {
        await itemSelectedFontColorButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤4：已设置颜色
      Logger.info('TEST', 'Step 4: itemSelectedFontColor set to ColorMetrics.resourceColor($r("app.color.Pink"))');

      // 步骤5：观察已选择的分段按钮的字体颜色
      Logger.info('TEST', 'Step 5: Observe selected segment button font color');
      Logger.info('TEST', 'Expected: 已选择的分段按钮的字体颜色按照预设颜色正常显示，为粉色');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0130 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0140
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0140
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemSelectedIconFillColor with ColorMetrics.resourceColor($r("app.color.Pink"))
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0140', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0140 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 胶囊型分段按钮（多选）');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV20140");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-3：点击itemSelectedIconFillColor接口按钮
      Logger.info('TEST', 'Step 2-3: Click itemSelectedIconFillColor interface button');
      let itemSelectedIconFillColorButton = await driver.findComponent(ON.id('itemSelectedIconFillColorButton'));
      if (itemSelectedIconFillColorButton) {
        await itemSelectedIconFillColorButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤4：已设置颜色
      Logger.info('TEST', 'Step 4: itemSelectedIconFillColor set to ColorMetrics.resourceColor($r("app.color.Pink"))');

      // 步骤5：观察已选择的分段按钮的图标颜色
      Logger.info('TEST', 'Step 5: Observe selected segment button icon color');
      Logger.info('TEST', 'Expected: 已选择的分段按钮的图标按照预设颜色正常显示，为粉色');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0140 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0150
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0150
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemSelectedSymbolFontColor with ColorMetrics.resourceColor($r("app.color.Pink"))
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0150', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0150 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 胶囊型分段按钮（多选）');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV20150");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-3：点击itemSelectedSymbolFontColor接口按钮
      Logger.info('TEST', 'Step 2-3: Click itemSelectedSymbolFontColor interface button');
      let itemSelectedSymbolFontColorButton = await driver.findComponent(ON.id('itemSelectedSymbolFontColorButton'));
      if (itemSelectedSymbolFontColorButton) {
        await itemSelectedSymbolFontColorButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤4：已设置颜色
      Logger.info('TEST', 'Step 4: itemSelectedSymbolFontColor set to ColorMetrics.resourceColor($r("app.color.Pink"))');

      // 步骤5：观察已选择的分段按钮的HM Symbol类型图标颜色
      Logger.info('TEST', 'Step 5: Observe selected segment button HM Symbol icon color');
      Logger.info('TEST', 'Expected: 已选择的分段按钮的HM Symbol类型图标按照预设颜色正常显示，为粉色');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0150 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0160
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0160
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemSymbolFontColor with ColorMetrics.resourceColor($r("app.color.Pink"))
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0160', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0160 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 胶囊型分段按钮（多选）');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV20160");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-3：点击itemSymbolFontColor接口按钮
      Logger.info('TEST', 'Step 2-3: Click itemSymbolFontColor interface button');
      let itemSymbolFontColorButton = await driver.findComponent(ON.id('itemSymbolFontColorButton'));
      if (itemSymbolFontColorButton) {
        await itemSymbolFontColorButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤4：已设置颜色
      Logger.info('TEST', 'Step 4: itemSymbolFontColor set to ColorMetrics.resourceColor($r("app.color.Pink"))');

      // 步骤5：观察未选择的分段按钮的HM Symbol类型图标颜色
      Logger.info('TEST', 'Step 5: Observe unselected segment button HM Symbol icon color');
      Logger.info('TEST', 'Expected: 未选择的分段按钮的HM Symbol类型图标按照预设颜色正常显示，为粉色');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0160 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0170
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0170
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 buttonBackgroundColor with ColorMetrics.resourceColor($r("app.color.Pink"))
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0170', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0170 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 页签型分段按钮');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV20170");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-3：点击buttonBackgroundColor接口按钮
      Logger.info('TEST', 'Step 2-3: Click buttonBackgroundColor interface button');
      let buttonBackgroundColorButton = await driver.findComponent(ON.id('buttonBackgroundColorButton'));
      if (buttonBackgroundColorButton) {
        await buttonBackgroundColorButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤4：已设置颜色
      Logger.info('TEST', 'Step 4: buttonBackgroundColor set to ColorMetrics.resourceColor($r("app.color.Pink"))');

      // 步骤5：观察分段按钮背景颜色
      Logger.info('TEST', 'Step 5: Observe segment button background color');
      Logger.info('TEST', 'Expected: 分段按钮背景按照预设颜色正常显示，为粉色');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0170 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0180
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0180
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemFontColor with ColorMetrics.resourceColor($r("app.color.Pink"))
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0180', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0180 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 页签型分段按钮');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV20180");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-3：点击itemFontColor接口按钮
      Logger.info('TEST', 'Step 2-3: Click itemFontColor interface button');
      let itemFontColorButton = await driver.findComponent(ON.id('itemFontColorButton'));
      if (itemFontColorButton) {
        await itemFontColorButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤4：已设置颜色
      Logger.info('TEST', 'Step 4: itemFontColor set to ColorMetrics.resourceColor($r("app.color.Pink"))');

      // 步骤5：观察非选中的分段按钮字体颜色
      Logger.info('TEST', 'Step 5: Observe unselected segment button font color');
      Logger.info('TEST', 'Expected: 非选中的分段按钮的字体颜色按照预设颜色正常显示，为粉色');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0180 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0190
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0190
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemIconFillColor with ColorMetrics.resourceColor($r("app.color.Pink"))
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0190', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0190 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 页签型分段按钮');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV20190");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-3：点击itemIconFillColor接口按钮
      Logger.info('TEST', 'Step 2-3: Click itemIconFillColor interface button');
      let itemIconFillColorButton = await driver.findComponent(ON.id('itemIconFillColorButton'));
      if (itemIconFillColorButton) {
        await itemIconFillColorButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤4：已设置颜色
      Logger.info('TEST', 'Step 4: itemIconFillColor set to ColorMetrics.resourceColor($r("app.color.Pink"))');

      // 步骤5：观察未选择的分段按钮的图标颜色
      Logger.info('TEST', 'Step 5: Observe unselected segment button icon color');
      Logger.info('TEST', 'Expected: 未选择的分段按钮的图标按照预设颜色正常显示，为粉色');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0190 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0200
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0200
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemSelectedBackgroundColor with ColorMetrics.resourceColor($r("app.color.Pink"))
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0200', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0200 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 页签型分段按钮');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV20200");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-3：点击itemSelectedBackgroundColor接口按钮
      Logger.info('TEST', 'Step 2-3: Click itemSelectedBackgroundColor interface button');
      let itemSelectedBackgroundColorButton = await driver.findComponent(ON.id('itemSelectedBackgroundColorButton'));
      if (itemSelectedBackgroundColorButton) {
        await itemSelectedBackgroundColorButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤4：已设置颜色
      Logger.info('TEST', 'Step 4: itemSelectedBackgroundColor set to ColorMetrics.resourceColor($r("app.color.Pink"))');

      // 步骤5：观察已选择的分段按钮的背景颜色
      Logger.info('TEST', 'Step 5: Observe selected segment button background color');
      Logger.info('TEST', 'Expected: 已选择的分段按钮的背景颜色按照预设颜色正常显示，为粉色');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0200 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0210
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0210
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemSelectedFontColor with ColorMetrics.resourceColor($r("app.color.Pink"))
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0210', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0210 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 页签型分段按钮');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV20210");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-3：点击itemSelectedFontColor接口按钮
      Logger.info('TEST', 'Step 2-3: Click itemSelectedFontColor interface button');
      let itemSelectedFontColorButton = await driver.findComponent(ON.id('itemSelectedFontColorButton'));
      if (itemSelectedFontColorButton) {
        await itemSelectedFontColorButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤4：已设置颜色
      Logger.info('TEST', 'Step 4: itemSelectedFontColor set to ColorMetrics.resourceColor($r("app.color.Pink"))');

      // 步骤5：观察已选择的分段按钮的字体颜色
      Logger.info('TEST', 'Step 5: Observe selected segment button font color');
      Logger.info('TEST', 'Expected: 已选择的分段按钮的字体颜色按照预设颜色正常显示，为粉色');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0210 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0220
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0220
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemSelectedIconFillColor with ColorMetrics.resourceColor($r("app.color.Pink"))
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0220', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0220 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 页签型分段按钮');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV20220");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-3：点击itemSelectedIconFillColor接口按钮
      Logger.info('TEST', 'Step 2-3: Click itemSelectedIconFillColor interface button');
      let itemSelectedIconFillColorButton = await driver.findComponent(ON.id('itemSelectedIconFillColorButton'));
      if (itemSelectedIconFillColorButton) {
        await itemSelectedIconFillColorButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤4：已设置颜色
      Logger.info('TEST', 'Step 4: itemSelectedIconFillColor set to ColorMetrics.resourceColor($r("app.color.Pink"))');

      // 步骤5：观察已选择的分段按钮的图标颜色
      Logger.info('TEST', 'Step 5: Observe selected segment button icon color');
      Logger.info('TEST', 'Expected: 已选择的分段按钮的图标按照预设颜色正常显示，为粉色');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0220 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0230
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0230
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemSelectedSymbolFontColor with ColorMetrics.resourceColor($r("app.color.Pink"))
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0230', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0230 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 页签型分段按钮');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV20230");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-3：点击itemSelectedSymbolFontColor接口按钮
      Logger.info('TEST', 'Step 2-3: Click itemSelectedSymbolFontColor interface button');
      let itemSelectedSymbolFontColorButton = await driver.findComponent(ON.id('itemSelectedSymbolFontColorButton'));
      if (itemSelectedSymbolFontColorButton) {
        await itemSelectedSymbolFontColorButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤4：已设置颜色
      Logger.info('TEST', 'Step 4: itemSelectedSymbolFontColor set to ColorMetrics.resourceColor($r("app.color.Pink"))');

      // 步骤5：观察已选择的分段按钮的HM Symbol类型图标颜色
      Logger.info('TEST', 'Step 5: Observe selected segment button HM Symbol icon color');
      Logger.info('TEST', 'Expected: 已选择的分段按钮的HM Symbol类型图标按照预设颜色正常显示，为粉色');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0230 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0240
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0240
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemSymbolFontColor with ColorMetrics.resourceColor($r("app.color.Pink"))
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0240', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0240 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 页签型分段按钮');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV20240");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-3：点击itemSymbolFontColor接口按钮
      Logger.info('TEST', 'Step 2-3: Click itemSymbolFontColor interface button');
      let itemSymbolFontColorButton = await driver.findComponent(ON.id('itemSymbolFontColorButton'));
      if (itemSymbolFontColorButton) {
        await itemSymbolFontColorButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤4：已设置颜色
      Logger.info('TEST', 'Step 4: itemSymbolFontColor set to ColorMetrics.resourceColor($r("app.color.Pink"))');

      // 步骤5：观察未选择的分段按钮的HM Symbol类型图标颜色
      Logger.info('TEST', 'Step 5: Observe unselected segment button HM Symbol icon color');
      Logger.info('TEST', 'Expected: 未选择的分段按钮的HM Symbol类型图标按照预设颜色正常显示，为粉色');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0240 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0250
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0250
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 BackgroundBlurStyleOptions with colorMode: ThemeColorMode.DARK
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0250', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0250 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 with colorMode: DARK');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV20250");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2：观察分段按钮背景模糊效果
      Logger.info('TEST', 'Step 2: Observe segment button background blur effect');
      Logger.info('TEST', 'Expected: 分段按钮背景模糊是暗色模式');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0250 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0260
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0260
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 BackgroundBlurStyleOptions with colorMode: ThemeColorMode.LIGHT
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0260', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0260 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 with colorMode: LIGHT');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV20260");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2：观察分段按钮背景模糊效果
      Logger.info('TEST', 'Step 2: Observe segment button background blur effect');
      Logger.info('TEST', 'Expected: 分段按钮背景模糊是亮色模式');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0260 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0270
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0270
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 BackgroundBlurStyleOptions with colorMode: ThemeColorMode.SYSTEM
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0270', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0270 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 with colorMode: SYSTEM');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV20270");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2：观察分段按钮背景模糊效果
      Logger.info('TEST', 'Step 2: Observe segment button background blur effect');
      Logger.info('TEST', 'Expected: 分段按钮背景模糊跟随系统');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0270 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0280
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0280
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 BackgroundBlurStyle with BlurStyle.COMPONENT_REGULAR
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0280', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0280 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 with BlurStyle.COMPONENT_REGULAR');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV20280");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击COMPONENT_REGULAR按钮
      Logger.info('TEST', 'Step 2-4: Click COMPONENT_REGULAR button');
      let componentRegularButton = await driver.findComponent(ON.id('componentRegularButton'));
      if (componentRegularButton) {
        await componentRegularButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮背景模糊效果
      Logger.info('TEST', 'Step 5: Observe segment button background blur effect');
      Logger.info('TEST', 'Expected: 分段按钮背景按照预设模糊 COMPONENT_REGULAR 正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0280 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0290
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0290
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 BackgroundBlurStyle with BlurStyle.COMPONENT_THICK
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0290', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0290 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 with BlurStyle.COMPONENT_THICK');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV20290");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击COMPONENT_THICK按钮
      Logger.info('TEST', 'Step 2-4: Click COMPONENT_THICK button');
      let componentThickButton = await driver.findComponent(ON.id('componentThickButton'));
      if (componentThickButton) {
        await componentThickButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮背景模糊效果
      Logger.info('TEST', 'Step 5: Observe segment button background blur effect');
      Logger.info('TEST', 'Expected: 分段按钮背景按照预设模糊 COMPONENT_THICK 正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0290 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0300
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0300
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 BackgroundBlurStyle with BlurStyle.COMPONENT_THIN
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0300', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0300 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 with BlurStyle.COMPONENT_THIN');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV20300");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击COMPONENT_THIN按钮
      Logger.info('TEST', 'Step 2-4: Click COMPONENT_THIN button');
      let componentThinButton = await driver.findComponent(ON.id('componentThinButton'));
      if (componentThinButton) {
        await componentThinButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮背景模糊效果
      Logger.info('TEST', 'Step 5: Observe segment button background blur effect');
      Logger.info('TEST', 'Expected: 分段按钮背景按照预设模糊 COMPONENT_THIN 正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0300 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0310
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0310
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 BackgroundBlurStyle with BlurStyle.COMPONENT_ULTRA_THICK
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0310', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0310 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 with BlurStyle.COMPONENT_ULTRA_THICK');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV20310");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击COMPONENT_ULTRA_THICK按钮
      Logger.info('TEST', 'Step 2-4: Click COMPONENT_ULTRA_THICK button');
      let componentUltraThickButton = await driver.findComponent(ON.id('componentUltraThickButton'));
      if (componentUltraThickButton) {
        await componentUltraThickButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮背景模糊效果
      Logger.info('TEST', 'Step 5: Observe segment button background blur effect');
      Logger.info('TEST', 'Expected: 分段按钮背景按照预设模糊 COMPONENT_ULTRA_THICK 正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0310 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0320
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0320
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 BackgroundBlurStyle with BlurStyle.BACKGROUND_REGULAR
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0320', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0320 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 with BlurStyle.BACKGROUND_REGULAR');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV20320");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击BACKGROUND_REGULAR按钮
      Logger.info('TEST', 'Step 2-4: Click BACKGROUND_REGULAR button');
      let backgroundRegularButton = await driver.findComponent(ON.id('backgroundRegularButton'));
      if (backgroundRegularButton) {
        await backgroundRegularButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮背景模糊效果
      Logger.info('TEST', 'Step 5: Observe segment button background blur effect');
      Logger.info('TEST', 'Expected: 分段按钮背景按照预设模糊 BACKGROUND_REGULAR 正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0320 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0330
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0330
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 BackgroundBlurStyle with BlurStyle.BACKGROUND_THICK
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0330', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0330 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 with BlurStyle.BACKGROUND_THICK');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV20330");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击BACKGROUND_THICK按钮
      Logger.info('TEST', 'Step 2-4: Click BACKGROUND_THICK button');
      let backgroundThickButton = await driver.findComponent(ON.id('backgroundThickButton'));
      if (backgroundThickButton) {
        await backgroundThickButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮背景模糊效果
      Logger.info('TEST', 'Step 5: Observe segment button background blur effect');
      Logger.info('TEST', 'Expected: 分段按钮背景按照预设模糊 BACKGROUND_THICK 正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0330 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0340
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0340
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 BackgroundBlurStyle with BlurStyle.BACKGROUND_THIN
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0340', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0340 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 with BlurStyle.BACKGROUND_THIN');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV20340");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击BACKGROUND_THIN按钮
      Logger.info('TEST', 'Step 2-4: Click BACKGROUND_THIN button');
      let backgroundThinButton = await driver.findComponent(ON.id('backgroundThinButton'));
      if (backgroundThinButton) {
        await backgroundThinButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮背景模糊效果
      Logger.info('TEST', 'Step 5: Observe segment button background blur effect');
      Logger.info('TEST', 'Expected: 分段按钮背景按照预设模糊 BACKGROUND_THIN 正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0340 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0350
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0350
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 BackgroundBlurStyle with BlurStyle.BACKGROUND_ULTRA_THICK
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0350', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0350 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 with BlurStyle.BACKGROUND_ULTRA_THICK');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV20350");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击BACKGROUND_ULTRA_THICK按钮
      Logger.info('TEST', 'Step 2-4: Click BACKGROUND_ULTRA_THICK button');
      let backgroundUltraThickButton = await driver.findComponent(ON.id('backgroundUltraThickButton'));
      if (backgroundUltraThickButton) {
        await backgroundUltraThickButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮背景模糊效果
      Logger.info('TEST', 'Step 5: Observe segment button background blur effect');
      Logger.info('TEST', 'Expected: 分段按钮背景按照预设模糊 BACKGROUND_ULTRA_THICK 正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0350 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0360
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0360
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 BackgroundBlurStyle with BlurStyle.COMPONENT_ULTRA_THIN
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0360', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0360 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 with BlurStyle.COMPONENT_ULTRA_THIN');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV20360");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击COMPONENT_ULTRA_THIN按钮
      Logger.info('TEST', 'Step 2-4: Click COMPONENT_ULTRA_THIN button');
      let componentUltraThinButton = await driver.findComponent(ON.id('componentUltraThinButton'));
      if (componentUltraThinButton) {
        await componentUltraThinButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮背景模糊效果
      Logger.info('TEST', 'Step 5: Observe segment button background blur effect');
      Logger.info('TEST', 'Expected: 分段按钮背景按照预设模糊 COMPONENT_ULTRA_THIN 正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0360 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0370
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0370
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 BackgroundBlurStyle with BlurStyle.NONE
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0370', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0370 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 with BlurStyle.NONE');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV20370");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击NONE按钮
      Logger.info('TEST', 'Step 2-4: Click NONE button');
      let noneButton = await driver.findComponent(ON.id('noneButton'));
      if (noneButton) {
        await noneButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮背景模糊效果
      Logger.info('TEST', 'Step 5: Observe segment button background blur effect');
      Logger.info('TEST', 'Expected: 分段按钮背景按照预设模糊 NONE 正常显示（无模糊效果）');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0370 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0380
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0380
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 BackgroundBlurStyle with BlurStyle.Regular
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0380', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0380 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 with BlurStyle.Regular');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV20380");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击Regular按钮
      Logger.info('TEST', 'Step 2-4: Click Regular button');
      let regularButton = await driver.findComponent(ON.id('regularButton'));
      if (regularButton) {
        await regularButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮背景模糊效果
      Logger.info('TEST', 'Step 5: Observe segment button background blur effect');
      Logger.info('TEST', 'Expected: 分段按钮背景按照预设模糊 Regular 正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0380 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0390
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0390
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 BackgroundBlurStyle with BlurStyle.Thick
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0390', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0390 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 with BlurStyle.Thick');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV20390");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击Thick按钮
      Logger.info('TEST', 'Step 2-4: Click Thick button');
      let thickButton = await driver.findComponent(ON.id('thickButton'));
      if (thickButton) {
        await thickButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮背景模糊效果
      Logger.info('TEST', 'Step 5: Observe segment button background blur effect');
      Logger.info('TEST', 'Expected: 分段按钮背景按照预设模糊 Thick 正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0390 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0400
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0400
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 BackgroundBlurStyle with BlurStyle.Thin
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0400', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0400 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 with BlurStyle.Thin');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV20400");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击Thin按钮
      Logger.info('TEST', 'Step 2-4: Click Thin button');
      let thinButton = await driver.findComponent(ON.id('thinButton'));
      if (thinButton) {
        await thinButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮背景模糊效果
      Logger.info('TEST', 'Step 5: Observe segment button background blur effect');
      Logger.info('TEST', 'Expected: 分段按钮背景按照预设模糊 Thin 正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0400 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0410
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0410
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 buttonBackgroundColor with rgba type color (yellow)
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0410', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0410 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 with rgba color');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV20410");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击rgba黄色按钮
      Logger.info('TEST', 'Step 2-4: Click rgba yellow button');
      let rgbaYellowButton = await driver.findComponent(ON.id('rgbaYellowButton'));
      if (rgbaYellowButton) {
        await rgbaYellowButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮背景颜色
      Logger.info('TEST', 'Step 5: Observe segment button background color');
      Logger.info('TEST', 'Expected: 分段按钮背景按照预设颜色正常显示，为黄色');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0410 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0420
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0420
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 buttonBackgroundColor with custom colors
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0420', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0420 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 with custom colors');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV20420");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 测试红+绿=黄
      Logger.info('TEST', 'Step 2: Test yellow (red + green)');
      let yellowButton = await driver.findComponent(ON.id('yellowButton'));
      if (yellowButton) {
        await yellowButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 测试绿+蓝=青
      Logger.info('TEST', 'Step 3: Test cyan (green + blue)');
      let cyanButton = await driver.findComponent(ON.id('cyanButton'));
      if (cyanButton) {
        await cyanButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 测试蓝+红=品红
      Logger.info('TEST', 'Step 4: Test magenta (blue + red)');
      let magentaButton = await driver.findComponent(ON.id('magentaButton'));
      if (magentaButton) {
        await magentaButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮背景颜色
      Logger.info('TEST', 'Step 5: Observe segment button background color');
      Logger.info('TEST', 'Expected: 分段按钮背景按照预设颜色正常显示，Alpha透明度调节功能正常');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0420 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0430
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0430
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 buttonBackgroundColor with preset colors (blue, gray, white)
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0430', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0430 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 with preset colors');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV20430");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 测试预设蓝色
      Logger.info('TEST', 'Step 2: Test preset blue');
      let presetBlueButton = await driver.findComponent(ON.id('presetBlueButton'));
      if (presetBlueButton) {
        await presetBlueButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 测试预设灰色
      Logger.info('TEST', 'Step 3: Test preset gray');
      let presetGrayButton = await driver.findComponent(ON.id('presetGrayButton'));
      if (presetGrayButton) {
        await presetGrayButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 测试预设白色
      Logger.info('TEST', 'Step 4: Test preset white');
      let presetWhiteButton = await driver.findComponent(ON.id('presetWhiteButton'));
      if (presetWhiteButton) {
        await presetWhiteButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮背景颜色
      Logger.info('TEST', 'Step 5: Observe segment button background color');
      Logger.info('TEST', 'Expected: 分段按钮背景按照预设颜色（蓝色、灰色、白色）正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0430 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0440
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0440
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 buttonBorderRadius with $r(app.string.string1) - 100vp
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0440', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0440 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 buttonBorderRadius');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV20440");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-3：点击buttonBorderRadius接口按钮
      Logger.info('TEST', 'Step 2-3: Click buttonBorderRadius interface button');
      let resourceBorderRadiusButton = await driver.findComponent(ON.id('resourceBorderRadiusButton'));
      if (resourceBorderRadiusButton) {
        await resourceBorderRadiusButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤4：设置接口参数为$r(app.string.string1) - 100vp
      Logger.info('TEST', 'Step 4: buttonBorderRadius set to $r(app.string.string1) - 100vp');

      // 步骤5：观察分段按钮圆角是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the segment button border radius displays normally');
      Logger.info('TEST', 'Expected: 分段按钮的圆角正常显示，圆角设的小值才能比较明显');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0440 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0450
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0450
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 buttonBorderRadius with 10%
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0450', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0450 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 buttonBorderRadius with percentage');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV20450");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-3：点击buttonBorderRadius接口按钮
      Logger.info('TEST', 'Step 2-3: Click buttonBorderRadius interface button');
      let percentBorderRadiusButton = await driver.findComponent(ON.id('percentBorderRadiusButton'));
      if (percentBorderRadiusButton) {
        await percentBorderRadiusButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤4：设置接口参数为10%
      Logger.info('TEST', 'Step 4: buttonBorderRadius set to 10%');

      // 步骤5：观察分段按钮圆角是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the segment button border radius displays normally');
      Logger.info('TEST', 'Expected: 分段按钮的圆角正常显示，圆角设的小值才能比较明显');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0450 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0460
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0460
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 buttonBorderRadius with 10fp
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0460', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0460 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 buttonBorderRadius with fp unit');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV20460");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-3：点击buttonBorderRadius接口按钮
      Logger.info('TEST', 'Step 2-3: Click buttonBorderRadius interface button');
      let fpBorderRadiusButton = await driver.findComponent(ON.id('fpBorderRadiusButton'));
      if (fpBorderRadiusButton) {
        await fpBorderRadiusButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤4：设置接口参数为10fp
      Logger.info('TEST', 'Step 4: buttonBorderRadius set to 10fp');

      // 步骤5：观察分段按钮圆角是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the segment button border radius displays normally');
      Logger.info('TEST', 'Expected: 分段按钮的圆角正常显示，圆角设的小值才能比较明显');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0460 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0470
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0470
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 buttonBorderRadius with 10lpx
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0470', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0470 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 buttonBorderRadius with lpx unit');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV20470");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-3：点击buttonBorderRadius接口按钮
      Logger.info('TEST', 'Step 2-3: Click buttonBorderRadius interface button');
      let lpxBorderRadiusButton = await driver.findComponent(ON.id('lpxBorderRadiusButton'));
      if (lpxBorderRadiusButton) {
        await lpxBorderRadiusButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤4：设置接口参数为10lpx
      Logger.info('TEST', 'Step 4: buttonBorderRadius set to 10lpx');

      // 步骤5：观察分段按钮圆角是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the segment button border radius displays normally');
      Logger.info('TEST', 'Expected: 分段按钮的圆角正常显示，圆角设的小值才能比较明显');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0470 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0480
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0480
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 buttonBorderRadius with 10px
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0480', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0480 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 buttonBorderRadius with px unit');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV20480");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-3：点击buttonBorderRadius接口按钮
      Logger.info('TEST', 'Step 2-3: Click buttonBorderRadius interface button');
      let pxBorderRadiusButton = await driver.findComponent(ON.id('pxBorderRadiusButton'));
      if (pxBorderRadiusButton) {
        await pxBorderRadiusButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤4：设置接口参数为10px
      Logger.info('TEST', 'Step 4: buttonBorderRadius set to 10px');

      // 步骤5：观察分段按钮背板圆角是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the segment button border radius displays normally');
      Logger.info('TEST', 'Expected: 分段按钮的圆角正常显示，圆角设的小值才能比较明显');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_0480 end`);
      done();
    })

    