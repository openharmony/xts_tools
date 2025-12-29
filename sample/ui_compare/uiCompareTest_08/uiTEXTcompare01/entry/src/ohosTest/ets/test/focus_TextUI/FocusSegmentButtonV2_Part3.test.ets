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

export default function FocusSegmentButtonV2TestPart3() {

  describe('FocusSegmentButtonV2TestPart3', () => {
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

    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2540', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2540 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemMinHeight 40%');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22540");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set 40%');
      let percentMinHeightButton = await driver.findComponent(ON.id('percentMinHeightButton'));
      if (percentMinHeightButton) {
        await percentMinHeightButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮按钮最小高度是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the min height displays normally');
      Logger.info('TEST', 'Expected: 此时分段按钮自适应最小高度，当前分段按钮的高度就是设置的最小高度40%');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2540 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2550
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2550
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemMinHeight with 40fp
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2550', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2550 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemMinHeight 40fp');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22550");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set 40fp');
      let fpMinHeightButton = await driver.findComponent(ON.id('fpMinHeightButton'));
      if (fpMinHeightButton) {
        await fpMinHeightButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮按钮最小高度是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the min height displays normally');
      Logger.info('TEST', 'Expected: 此时分段按钮自适应最小高度，当前分段按钮的高度就是设置的最小高度40fp');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2550 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2560
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2560
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemMinHeight with 40lpx
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2560', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2560 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemMinHeight 40lpx');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22560");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set 40lpx');
      let lpxMinHeightButton = await driver.findComponent(ON.id('lpxMinHeightButton'));
      if (lpxMinHeightButton) {
        await lpxMinHeightButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮按钮最小高度是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the min height displays normally');
      Logger.info('TEST', 'Expected: 此时itemMinHeight小于button的默认高度40vp');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2560 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2570
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2570
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemMinHeight with 40px
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2570', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2570 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemMinHeight 40px');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22570");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set 40px');
      let pxMinHeightButton = await driver.findComponent(ON.id('pxMinHeightButton'));
      if (pxMinHeightButton) {
        await pxMinHeightButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮按钮最小高度是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the min height displays normally');
      Logger.info('TEST', 'Expected: itemMinHeight设置得太小了，不足以显示下文字，会按文字的大小+上下padding来显示。目前在设置小于20vp的时候，item会固定为20vp的高度');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2570 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2580
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2580
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemMinHeight with 40vp
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2580', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2580 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemMinHeight 40vp');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22580");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set 40vp');
      let vpMinHeightButton = await driver.findComponent(ON.id('vpMinHeightButton'));
      if (vpMinHeightButton) {
        await vpMinHeightButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮按钮最小高度是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the min height displays normally');
      Logger.info('TEST', 'Expected: 此时分段按钮自适应最小高度，当前分段按钮的高度就是设置的最小高度40vp');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2580 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2590
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2590
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemMinHeight with undefined (default value)
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2590', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2590 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemMinHeight undefined');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22590");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set undefined');
      let undefinedMinHeightButton = await driver.findComponent(ON.id('undefinedMinHeightButton'));
      if (undefinedMinHeightButton) {
        await undefinedMinHeightButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮按钮最小高度是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the min height displays normally');
      Logger.info('TEST', 'Expected: 此时分段按钮高度为默认值');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2590 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2600
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2600
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemPadding with mixed units (40px, 40fp, 40lpx, resource)
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2600', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2600 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemPadding mixed units');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22600");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set itemPadding (40px, 40fp, 40lpx, resource)');
      let mixedPaddingButton = await driver.findComponent(ON.id('mixedPaddingButton'));
      if (mixedPaddingButton) {
        await mixedPaddingButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮item内边距和布局是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the item padding displays normally');
      Logger.info('TEST', 'Expected: 此时分段按钮item的内边距依照设置的内边距显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2600 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2610
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2610
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemPadding with negative values (40, 40, -1, -1)
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2610', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2610 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemPadding with negative values');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22610");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set itemPadding (40, 40, -1, -1)');
      let negativePaddingButton = await driver.findComponent(ON.id('negativePaddingButton'));
      if (negativePaddingButton) {
        await negativePaddingButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮item内边距和布局是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the item padding displays normally');
      Logger.info('TEST', 'Expected: 此时分段按钮item的内边距依照设置的内边距显示，负值取默认值');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2610 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2620
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2620
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemPadding with 1% for all sides
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2620', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2620 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemPadding 1%');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22620");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set itemPadding 1%');
      let percentPaddingButton = await driver.findComponent(ON.id('percentPaddingButton'));
      if (percentPaddingButton) {
        await percentPaddingButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮item内边距和布局是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the item padding displays normally');
      Logger.info('TEST', 'Expected: 此时分段按钮item的内边距依照设置的内边距显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2620 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2630
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2630
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemSelectedBackgroundColor with rgba type (yellow)
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2630', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2630 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemSelectedBackgroundColor rgba');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22630");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set rgba color (yellow)');
      let rgbaColorButton = await driver.findComponent(ON.id('rgbaColorButton'));
      if (rgbaColorButton) {
        await rgbaColorButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察已选择的分段按钮的背景颜色是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected background color displays normally');
      Logger.info('TEST', 'Expected: 已选择的分段按钮的背景颜色按照预设颜色正常显示，为黄色');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2630 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2640
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2640
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemSelectedBackgroundColor with custom colors
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2640', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2640 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemSelectedBackgroundColor custom');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22640");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：测试各种自定义颜色
      Logger.info('TEST', 'Step 2-4: Click buttons to test custom colors');
      
      // 测试红色
      let redColorButton = await driver.findComponent(ON.id('redColorButton'));
      if (redColorButton) {
        await redColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 测试绿色
      let greenColorButton = await driver.findComponent(ON.id('greenColorButton'));
      if (greenColorButton) {
        await greenColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 测试蓝色
      let blueColorButton = await driver.findComponent(ON.id('blueColorButton'));
      if (blueColorButton) {
        await blueColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 测试黄色（红+绿）
      let yellowColorButton = await driver.findComponent(ON.id('yellowColorButton'));
      if (yellowColorButton) {
        await yellowColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 测试青色（绿+蓝）
      let cyanColorButton = await driver.findComponent(ON.id('cyanColorButton'));
      if (cyanColorButton) {
        await cyanColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 测试品红色（红+蓝）
      let magentaColorButton = await driver.findComponent(ON.id('magentaColorButton'));
      if (magentaColorButton) {
        await magentaColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 测试白色（红+绿+蓝）
      let whiteColorButton = await driver.findComponent(ON.id('whiteColorButton'));
      if (whiteColorButton) {
        await whiteColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 测试半透明红色
      let semiTransparentRedButton = await driver.findComponent(ON.id('semiTransparentRedButton'));
      if (semiTransparentRedButton) {
        await semiTransparentRedButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察已选择的分段按钮的背景颜色是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected background color displays normally');
      Logger.info('TEST', 'Expected: 已选择的分段按钮的背景颜色按照预设颜色正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2640 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2650
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2650
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemSelectedBackgroundColor with preset colors
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2650', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2650 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemSelectedBackgroundColor preset');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22650");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：测试预设颜色
      Logger.info('TEST', 'Step 2-4: Click buttons to test preset colors');
      
      // 测试预设蓝色
      let presetBlueButton = await driver.findComponent(ON.id('presetBlueButton'));
      if (presetBlueButton) {
        await presetBlueButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 测试预设灰色
      let presetGrayButton = await driver.findComponent(ON.id('presetGrayButton'));
      if (presetGrayButton) {
        await presetGrayButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 测试预设白色
      let presetWhiteButton = await driver.findComponent(ON.id('presetWhiteButton'));
      if (presetWhiteButton) {
        await presetWhiteButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察已选择的分段按钮的背景颜色是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected background color displays normally');
      Logger.info('TEST', 'Expected: 已选择的分段按钮的背景颜色按照预设颜色正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2650 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2660
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2660
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemSelectedFontColor with rgba type (yellow)
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2660', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2660 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemSelectedFontColor rgba');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22660");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set rgba color (yellow)');
      let rgbaColorButton = await driver.findComponent(ON.id('rgbaColorButton'));
      if (rgbaColorButton) {
        await rgbaColorButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察已选择的分段按钮的字体颜色是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected font color displays normally');
      Logger.info('TEST', 'Expected: 已选择的分段按钮的字体颜色按照预设颜色正常显示，为黄色');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2660 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2670
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2670
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemSelectedFontColor with custom colors
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2670', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2670 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemSelectedFontColor custom');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22670");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：测试各种自定义颜色
      Logger.info('TEST', 'Step 2-4: Click buttons to test custom colors');
      
      // 测试红色
      let redColorButton = await driver.findComponent(ON.id('redColorButton'));
      if (redColorButton) {
        await redColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 测试绿色
      let greenColorButton = await driver.findComponent(ON.id('greenColorButton'));
      if (greenColorButton) {
        await greenColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 测试蓝色
      let blueColorButton = await driver.findComponent(ON.id('blueColorButton'));
      if (blueColorButton) {
        await blueColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 测试黄色（红+绿）
      let yellowColorButton = await driver.findComponent(ON.id('yellowColorButton'));
      if (yellowColorButton) {
        await yellowColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 测试青色（绿+蓝）
      let cyanColorButton = await driver.findComponent(ON.id('cyanColorButton'));
      if (cyanColorButton) {
        await cyanColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 测试品红色（红+蓝）
      let magentaColorButton = await driver.findComponent(ON.id('magentaColorButton'));
      if (magentaColorButton) {
        await magentaColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 测试白色（红+绿+蓝）
      let whiteColorButton = await driver.findComponent(ON.id('whiteColorButton'));
      if (whiteColorButton) {
        await whiteColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 测试半透明红色
      let semiTransparentRedButton = await driver.findComponent(ON.id('semiTransparentRedButton'));
      if (semiTransparentRedButton) {
        await semiTransparentRedButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察已选择的分段按钮的字体颜色是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected font color displays normally');
      Logger.info('TEST', 'Expected: 已选择的分段按钮的字体颜色按照预设颜色正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2670 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2680
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2680
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemSelectedFontColor with preset colors
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2680', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2680 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemSelectedFontColor preset');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22680");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：测试预设颜色
      Logger.info('TEST', 'Step 2-4: Click buttons to test preset colors');
      
      // 测试预设蓝色
      let presetBlueButton = await driver.findComponent(ON.id('presetBlueButton'));
      if (presetBlueButton) {
        await presetBlueButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 测试预设灰色
      let presetGrayButton = await driver.findComponent(ON.id('presetGrayButton'));
      if (presetGrayButton) {
        await presetGrayButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 测试预设白色
      let presetWhiteButton = await driver.findComponent(ON.id('presetWhiteButton'));
      if (presetWhiteButton) {
        await presetWhiteButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察已选择的分段按钮的字体颜色是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected font color displays normally');
      Logger.info('TEST', 'Expected: 已选择的分段按钮的字体颜色按照预设颜色正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2680 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2690
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2690
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemSelectedFontSize with -1 (abnormal value)
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2690', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2690 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemSelectedFontSize -1');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22690");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set itemSelectedFontSize to -1');
      let negativeFontSizeButton = await driver.findComponent(ON.id('negativeFontSizeButton'));
      if (negativeFontSizeButton) {
        await negativeFontSizeButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察已选择的item的字体大小是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected font size displays normally');
      Logger.info('TEST', 'Expected: 已选择的item的字体大小按照预设的大小正常显示，为默认值14fp');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2690 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2700
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2700
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemSelectedFontSize with 20vp
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2700', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2700 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemSelectedFontSize 20vp');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22700");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set itemSelectedFontSize to 20vp');
      let vpFontSizeButton = await driver.findComponent(ON.id('vpFontSizeButton'));
      if (vpFontSizeButton) {
        await vpFontSizeButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察已选择的item的字体大小是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected font size displays normally');
      Logger.info('TEST', 'Expected: 已选择的item的字体大小按照预设的大小正常显示，为20vp');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2700 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2710
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2710
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemSelectedFontSize with 40%
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2710', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2710 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemSelectedFontSize 40%');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22710");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set itemSelectedFontSize to 40%');
      let percentFontSizeButton = await driver.findComponent(ON.id('percentFontSizeButton'));
      if (percentFontSizeButton) {
        await percentFontSizeButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察已选择的item的字体大小是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected font size displays normally');
      Logger.info('TEST', 'Expected: 已选择的item的字体大小按照预设的大小正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2710 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2720
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2720
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemSelectedFontSize with 40fp
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2720', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2720 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemSelectedFontSize 40fp');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22720");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set itemSelectedFontSize to 40fp');
      let fpFontSizeButton = await driver.findComponent(ON.id('fpFontSizeButton'));
      if (fpFontSizeButton) {
        await fpFontSizeButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察已选择的item的字体大小是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected font size displays normally');
      Logger.info('TEST', 'Expected: 已选择的item的字体大小按照预设的大小正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2720 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2730
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2730
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemSelectedFontSize with 40lpx
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2730', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2730 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemSelectedFontSize 40lpx');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22730");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set itemSelectedFontSize to 40lpx');
      let lpxFontSizeButton = await driver.findComponent(ON.id('lpxFontSizeButton'));
      if (lpxFontSizeButton) {
        await lpxFontSizeButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察已选择的item的字体大小是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected font size displays normally');
      Logger.info('TEST', 'Expected: 已选择的item的字体大小按照预设的大小正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2730 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2740
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2740
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemSelectedFontSize with 40px
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2740', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2740 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemSelectedFontSize 40px');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22740");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set itemSelectedFontSize to 40px');
      let pxFontSizeButton = await driver.findComponent(ON.id('pxFontSizeButton'));
      if (pxFontSizeButton) {
        await pxFontSizeButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察已选择的item的字体大小是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected font size displays normally');
      Logger.info('TEST', 'Expected: 已选择的item的字体大小按照预设的大小正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2740 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2750
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2750
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemSelectedFontSize with resource
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2750', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2750 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemSelectedFontSize resource');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22750");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set itemSelectedFontSize to resource');
      let resourceFontSizeButton = await driver.findComponent(ON.id('resourceFontSizeButton'));
      if (resourceFontSizeButton) {
        await resourceFontSizeButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察已选择的item的字体大小是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected font size displays normally');
      Logger.info('TEST', 'Expected: 已选择的item的字体大小按照预设的大小正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2750 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2760
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2760
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemSelectedFontSize with undefined
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2760', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2760 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemSelectedFontSize undefined');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22760");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set itemSelectedFontSize to undefined');
      let undefinedFontSizeButton = await driver.findComponent(ON.id('undefinedFontSizeButton'));
      if (undefinedFontSizeButton) {
        await undefinedFontSizeButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察已选择的item的字体大小是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected font size displays normally');
      Logger.info('TEST', 'Expected: 已选择的item的字体大小按照预设的大小正常显示，为默认值14fp');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2760 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2770
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2770
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemSelectedFontWeight with Bolder
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2770', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2770 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemSelectedFontWeight Bolder');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22770");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set itemSelectedFontWeight to Bolder');
      let bolderFontWeightButton = await driver.findComponent(ON.id('bolderFontWeightButton'));
      if (bolderFontWeightButton) {
        await bolderFontWeightButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察已选中的分段按钮文字粗细是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected font weight displays normally');
      Logger.info('TEST', 'Expected: 已选中的分段按钮文字粗细按照预设的大小正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2770 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2780
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2780
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemSelectedFontWeight with Bold
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2780', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2780 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemSelectedFontWeight Bold');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22780");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set itemSelectedFontWeight to Bold');
      let boldFontWeightButton = await driver.findComponent(ON.id('boldFontWeightButton'));
      if (boldFontWeightButton) {
        await boldFontWeightButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察已选中的分段按钮文字粗细是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected font weight displays normally');
      Logger.info('TEST', 'Expected: 已选中的分段按钮文字粗细按照预设的大小正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2780 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2790
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2790
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemSelectedFontWeight with Lighter
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2790', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2790 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemSelectedFontWeight Lighter');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22790");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set itemSelectedFontWeight to Lighter');
      let lighterFontWeightButton = await driver.findComponent(ON.id('lighterFontWeightButton'));
      if (lighterFontWeightButton) {
        await lighterFontWeightButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察已选中的分段按钮文字粗细是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected font weight displays normally');
      Logger.info('TEST', 'Expected: 已选中的分段按钮文字粗细按照预设的大小正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2790 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2800
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2800
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemSelectedFontWeight with Medium
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2800', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2800 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemSelectedFontWeight Medium');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22800");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set itemSelectedFontWeight to Medium');
      let mediumFontWeightButton = await driver.findComponent(ON.id('mediumFontWeightButton'));
      if (mediumFontWeightButton) {
        await mediumFontWeightButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察已选中的分段按钮文字粗细是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected font weight displays normally');
      Logger.info('TEST', 'Expected: 已选中的分段按钮文字粗细按照预设的大小正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2800 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2810
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2810
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemSelectedFontWeight with Normal
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2810', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2810 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemSelectedFontWeight Normal');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22810");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set itemSelectedFontWeight to Normal');
      let normalFontWeightButton = await driver.findComponent(ON.id('normalFontWeightButton'));
      if (normalFontWeightButton) {
        await normalFontWeightButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察已选中的分段按钮文字粗细是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected font weight displays normally');
      Logger.info('TEST', 'Expected: 已选中的分段按钮文字粗细按照预设的大小正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2810 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2820
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2820
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemSelectedFontWeight with Regular
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2820', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2820 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemSelectedFontWeight Regular');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22820");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set itemSelectedFontWeight to Regular');
      let regularFontWeightButton = await driver.findComponent(ON.id('regularFontWeightButton'));
      if (regularFontWeightButton) {
        await regularFontWeightButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察已选中的分段按钮文字粗细是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected font weight displays normally');
      Logger.info('TEST', 'Expected: 已选中的分段按钮文字粗细按照预设的大小正常显示，Regular和Normal的字体大小是一致的');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2820 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2830
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2830
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemSelectedFontWeight with undefined
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2830', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2830 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemSelectedFontWeight undefined');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22830");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set itemSelectedFontWeight to undefined');
      let undefinedFontWeightButton = await driver.findComponent(ON.id('undefinedFontWeightButton'));
      if (undefinedFontWeightButton) {
        await undefinedFontWeightButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察已选中的分段按钮文字粗细是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected font weight displays normally');
      Logger.info('TEST', 'Expected: 已选中的分段按钮文字粗细按照预设的大小正常显示，取得默认值medium');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2830 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2840
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2840
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemSelectedIconFillColor with rgba color
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2840', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2840 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemSelectedIconFillColor rgba');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22840");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set itemSelectedIconFillColor to rgba yellow');
      let rgbaColorButton = await driver.findComponent(ON.id('rgbaColorButton'));
      if (rgbaColorButton) {
        await rgbaColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察已选择的分段按钮的图标是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected icon color displays normally');
      Logger.info('TEST', 'Expected: 已选择的分段按钮的图标按照预设颜色正常显示，为黄色');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2840 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2850
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2850
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemSelectedIconFillColor with custom colors
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2850', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2850 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemSelectedIconFillColor custom');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22850");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：测试自定义颜色
      Logger.info('TEST', 'Step 2-4: Click buttons to test custom colors');
      
      // 测试红色
      let redColorButton = await driver.findComponent(ON.id('redColorButton'));
      if (redColorButton) {
        await redColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 测试绿色
      let greenColorButton = await driver.findComponent(ON.id('greenColorButton'));
      if (greenColorButton) {
        await greenColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 测试蓝色
      let blueColorButton = await driver.findComponent(ON.id('blueColorButton'));
      if (blueColorButton) {
        await blueColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 测试黄色
      let yellowColorButton = await driver.findComponent(ON.id('yellowColorButton'));
      if (yellowColorButton) {
        await yellowColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 测试青色
      let cyanColorButton = await driver.findComponent(ON.id('cyanColorButton'));
      if (cyanColorButton) {
        await cyanColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 测试品红色
      let magentaColorButton = await driver.findComponent(ON.id('magentaColorButton'));
      if (magentaColorButton) {
        await magentaColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 测试白色
      let whiteColorButton = await driver.findComponent(ON.id('whiteColorButton'));
      if (whiteColorButton) {
        await whiteColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 测试半透明红色
      let semiTransparentRedButton = await driver.findComponent(ON.id('semiTransparentRedButton'));
      if (semiTransparentRedButton) {
        await semiTransparentRedButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察已选择的分段按钮的图标是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected icon color displays normally');
      Logger.info('TEST', 'Expected: 已选择的分段按钮的图标按照预设颜色正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2850 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2860
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2860
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemSelectedIconFillColor with preset colors
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2860', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2860 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemSelectedIconFillColor preset');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22860");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：测试预设颜色
      Logger.info('TEST', 'Step 2-4: Click buttons to test preset colors');
      
      // 测试预设蓝色
      let presetBlueButton = await driver.findComponent(ON.id('presetBlueButton'));
      if (presetBlueButton) {
        await presetBlueButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 测试预设灰色
      let presetGrayButton = await driver.findComponent(ON.id('presetGrayButton'));
      if (presetGrayButton) {
        await presetGrayButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 测试预设白色
      let presetWhiteButton = await driver.findComponent(ON.id('presetWhiteButton'));
      if (presetWhiteButton) {
        await presetWhiteButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察已选择的分段按钮的图标是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected icon color displays normally');
      Logger.info('TEST', 'Expected: 已选择的分段按钮的图标按照预设颜色正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2860 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2870
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2870
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemSelectedSymbolFontColor with rgba color
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2870', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2870 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemSelectedSymbolFontColor rgba');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22870");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set itemSelectedSymbolFontColor to rgba yellow');
      let rgbaColorButton = await driver.findComponent(ON.id('rgbaColorButton'));
      if (rgbaColorButton) {
        await rgbaColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察已选择的分段按钮的HM Symbol类型图标是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected symbol color displays normally');
      Logger.info('TEST', 'Expected: 已选择的分段按钮的HM Symbol类型图标按照预设颜色正常显示，为黄色');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2870 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2880
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2880
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemSelectedSymbolFontColor with custom colors
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2880', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2880 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemSelectedSymbolFontColor custom');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22880");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：测试自定义颜色
      Logger.info('TEST', 'Step 2-4: Click buttons to test custom colors');
      
      // 测试红色
      let redColorButton = await driver.findComponent(ON.id('redColorButton'));
      if (redColorButton) {
        await redColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 测试绿色
      let greenColorButton = await driver.findComponent(ON.id('greenColorButton'));
      if (greenColorButton) {
        await greenColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 测试蓝色
      let blueColorButton = await driver.findComponent(ON.id('blueColorButton'));
      if (blueColorButton) {
        await blueColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 测试黄色
      let yellowColorButton = await driver.findComponent(ON.id('yellowColorButton'));
      if (yellowColorButton) {
        await yellowColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 测试青色
      let cyanColorButton = await driver.findComponent(ON.id('cyanColorButton'));
      if (cyanColorButton) {
        await cyanColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 测试品红色
      let magentaColorButton = await driver.findComponent(ON.id('magentaColorButton'));
      if (magentaColorButton) {
        await magentaColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 测试白色
      let whiteColorButton = await driver.findComponent(ON.id('whiteColorButton'));
      if (whiteColorButton) {
        await whiteColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 测试半透明红色
      let semiTransparentRedButton = await driver.findComponent(ON.id('semiTransparentRedButton'));
      if (semiTransparentRedButton) {
        await semiTransparentRedButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察已选择的分段按钮的HM Symbol类型图标是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected symbol color displays normally');
      Logger.info('TEST', 'Expected: 已选择的分段按钮的HM Symbol类型图标按照预设颜色正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2880 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2890
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2890
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemSelectedSymbolFontColor with preset colors
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2890', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2890 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemSelectedSymbolFontColor preset');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22890");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：测试预设颜色
      Logger.info('TEST', 'Step 2-4: Click buttons to test preset colors');
      
      // 测试预设蓝色
      let presetBlueButton = await driver.findComponent(ON.id('presetBlueButton'));
      if (presetBlueButton) {
        await presetBlueButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 测试预设灰色
      let presetGrayButton = await driver.findComponent(ON.id('presetGrayButton'));
      if (presetGrayButton) {
        await presetGrayButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 测试预设白色
      let presetWhiteButton = await driver.findComponent(ON.id('presetWhiteButton'));
      if (presetWhiteButton) {
        await presetWhiteButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察已选择的分段按钮的HM Symbol类型图标是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected symbol color displays normally');
      Logger.info('TEST', 'Expected: 已选择的分段按钮的HM Symbol类型图标按照预设颜色正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2890 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2900
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2900
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemSpace with -1 (abnormal value)
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2900', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2900 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemSpace -1');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22900");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set itemSpace to -1');
      let negativeSpaceButton = await driver.findComponent(ON.id('negativeSpaceButton'));
      if (negativeSpaceButton) {
        await negativeSpaceButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察item之间的间隙是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the item space displays normally');
      Logger.info('TEST', 'Expected: item之间的间隙按照预设的大小正常显示，为默认值0');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2900 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2910
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2910
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemSpace with 20vp
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2910', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2910 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemSpace 20vp');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22910");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set itemSpace to 20vp');
      let vpSpaceButton = await driver.findComponent(ON.id('vpSpaceButton'));
      if (vpSpaceButton) {
        await vpSpaceButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察item之间的间隙是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the item space displays normally');
      Logger.info('TEST', 'Expected: item之间的间隙按照预设的大小正常显示，为20vp');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2910 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2920
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2920
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemSpace with 40%
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2920', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2920 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemSpace 40%');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22920");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set itemSpace to 40%');
      let percentSpaceButton = await driver.findComponent(ON.id('percentSpaceButton'));
      if (percentSpaceButton) {
        await percentSpaceButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察item之间的间隙是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the item space displays normally');
      Logger.info('TEST', 'Expected: item之间的间隙按照预设的大小正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2920 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2930
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2930
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemSpace with 40fp
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2930', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2930 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemSpace 40fp');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22930");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set itemSpace to 40fp');
      let fpSpaceButton = await driver.findComponent(ON.id('fpSpaceButton'));
      if (fpSpaceButton) {
        await fpSpaceButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察item之间的间隙是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the item space displays normally');
      Logger.info('TEST', 'Expected: item之间的间隙按照预设的大小正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2930 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2940
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2940
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemSpace with 40lpx
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2940', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2940 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemSpace 40lpx');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22940");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set itemSpace to 40lpx');
      let lpxSpaceButton = await driver.findComponent(ON.id('lpxSpaceButton'));
      if (lpxSpaceButton) {
        await lpxSpaceButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察item之间的间隙是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the item space displays normally');
      Logger.info('TEST', 'Expected: item之间的间隙按照预设的大小正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2940 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2950
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2950
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemSpace with 40px
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2950', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2950 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemSpace 40px');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22950");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set itemSpace to 40px');
      let pxSpaceButton = await driver.findComponent(ON.id('pxSpaceButton'));
      if (pxSpaceButton) {
        await pxSpaceButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察item之间的间隙是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the item space displays normally');
      Logger.info('TEST', 'Expected: item之间的间隙按照预设的大小正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2950 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2960
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2960
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemSpace with resource
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2960', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2960 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemSpace resource');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22960");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set itemSpace to resource');
      let resourceSpaceButton = await driver.findComponent(ON.id('resourceSpaceButton'));
      if (resourceSpaceButton) {
        await resourceSpaceButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察item之间的间隙是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the item space displays normally');
      Logger.info('TEST', 'Expected: item之间的间隙按照预设的大小正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2960 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2970
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2970
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemSpace with undefined
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2970', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2970 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemSpace undefined');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22970");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set itemSpace to undefined');
      let undefinedSpaceButton = await driver.findComponent(ON.id('undefinedSpaceButton'));
      if (undefinedSpaceButton) {
        await undefinedSpaceButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察item之间的间隙是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the item space displays normally');
      Logger.info('TEST', 'Expected: item之间的间隙按照预设的大小正常显示，为默认值1');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2970 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2980
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2980
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemSymbolFontColor with rgba color (yellow)
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2980', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2980 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemSymbolFontColor rgba');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22980");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set itemSymbolFontColor to rgba yellow');
      let rgbaColorButton = await driver.findComponent(ON.id('rgbaColorButton'));
      if (rgbaColorButton) {
        await rgbaColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察未选择的分段按钮的HM Symbol类型图标是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the unselected symbol icon displays with yellow color');
      Logger.info('TEST', 'Expected: 未选择的分段按钮的HM Symbol类型图标按照预设颜色正常显示，为黄色');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2980 end`);
      done();
    })

    