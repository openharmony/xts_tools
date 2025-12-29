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

export default function FocusSegmentButtonV2TestPart4() {

  describe('FocusSegmentButtonV2TestPart4', () => {
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

    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3800', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3800 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemFontWeight Bold');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV23800");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set itemFontWeight to Bold');
      let boldButton = await driver.findComponent(ON.id('boldButton'));
      if (boldButton) {
        await boldButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察分段按钮文字粗细是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the font weight displays normally');
      Logger.info('TEST', 'Expected: 分段按钮文字粗细按照预设的大小正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3800 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3810
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3810
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemFontWeight with Lighter
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3810', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3810 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemFontWeight Lighter');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV23810");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set itemFontWeight to Lighter');
      let lighterButton = await driver.findComponent(ON.id('lighterButton'));
      if (lighterButton) {
        await lighterButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察分段按钮文字粗细是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the font weight displays normally');
      Logger.info('TEST', 'Expected: 分段按钮文字粗细按照预设的大小正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3810 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3820
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3820
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemFontWeight with Medium
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3820', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3820 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemFontWeight Medium');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV23820");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set itemFontWeight to Medium');
      let mediumButton = await driver.findComponent(ON.id('mediumButton'));
      if (mediumButton) {
        await mediumButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察分段按钮文字粗细是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the font weight displays normally');
      Logger.info('TEST', 'Expected: 分段按钮文字粗细按照预设的大小正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3820 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3830
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3830
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemFontWeight with Normal
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3830', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3830 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemFontWeight Normal');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV23830");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set itemFontWeight to Normal');
      let normalButton = await driver.findComponent(ON.id('normalButton'));
      if (normalButton) {
        await normalButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察分段按钮文字粗细是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the font weight displays normally');
      Logger.info('TEST', 'Expected: 分段按钮文字粗细按照预设的大小正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3830 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3840
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3840
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemFontWeight with Regular
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3840', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3840 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemFontWeight Regular');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV23840");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set itemFontWeight to Regular');
      let regularButton = await driver.findComponent(ON.id('regularButton'));
      if (regularButton) {
        await regularButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察分段按钮文字粗细是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the font weight displays normally');
      Logger.info('TEST', 'Expected: 分段按钮文字粗细按照预设的大小正常显示，Regular和Normal的字体大小是一致的');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3840 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3850
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3850
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemFontWeight with undefined
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3850', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3850 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemFontWeight undefined');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV23850");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置为undefined
      Logger.info('TEST', 'Step 2-4: Click button to set itemFontWeight to undefined');
      let undefinedButton = await driver.findComponent(ON.id('undefinedButton'));
      if (undefinedButton) {
        await undefinedButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察分段按钮文字粗细是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the font weight displays normally');
      Logger.info('TEST', 'Expected: 分段按钮文字粗细按照预设的大小正常显示，取得默认值Medium');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3850 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3860
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3860
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemIconFillColor with rgba type color
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3860', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3860 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemIconFillColor rgba');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV23860");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置rgba颜色
      Logger.info('TEST', 'Step 2-4: Click button to set itemIconFillColor to rgba(1000,1000,0,1000)');
      let rgbaColorButton = await driver.findComponent(ON.id('rgbaColorButton'));
      if (rgbaColorButton) {
        await rgbaColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察未选择的分段按钮的图标是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the icon displays with preset color');
      Logger.info('TEST', 'Expected: 未选择的分段按钮的图标按照预设颜色正常显示，为黄色');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3860 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3870
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3870
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemIconFillColor with custom color
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3870', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3870 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemIconFillColor custom');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV23870");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置自定义颜色（红+绿=黄）
      Logger.info('TEST', 'Step 2-4: Click button to set custom color (red+green=yellow)');
      let yellowButton = await driver.findComponent(ON.id('yellowButton'));
      if (yellowButton) {
        await yellowButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察未选择的分段按钮的图标是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the icon displays with custom color');
      Logger.info('TEST', 'Expected: 未选择的分段按钮的图标按照预设颜色正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3870 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3880
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3880
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemIconFillColor with preset colors
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3880', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3880 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemIconFillColor preset');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV23880");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击预设颜色按钮（蓝色）
      Logger.info('TEST', 'Step 2-4: Click button to set preset color (blue)');
      let blueButton = await driver.findComponent(ON.id('blueButton'));
      if (blueButton) {
        await blueButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察未选择的分段按钮的图标是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the icon displays with preset color');
      Logger.info('TEST', 'Expected: 未选择的分段按钮的图标按照预设颜色正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3880 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3890
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3890
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemIconSize with undefined
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3890', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3890 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemIconSize undefined');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV23890");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置为undefined
      Logger.info('TEST', 'Step 2-4: Click button to set itemIconSize to undefined');
      let undefinedSizeButton = await driver.findComponent(ON.id('undefinedSizeButton'));
      if (undefinedSizeButton) {
        await undefinedSizeButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察图标大小是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the icon size displays normally');
      Logger.info('TEST', 'Expected: 图标大小按照预设的大小正常显示，为默认值24vp');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3890 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3900
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3900
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemIconSize with -1vp x -1vp
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3900', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3900 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemIconSize -1vp');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV23900");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置为-1vp x -1vp
      Logger.info('TEST', 'Step 2-4: Click button to set itemIconSize to -1vp x -1vp');
      let negativeSizeButton = await driver.findComponent(ON.id('negativeSizeButton'));
      if (negativeSizeButton) {
        await negativeSizeButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察图标大小是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the icon size displays normally');
      Logger.info('TEST', 'Expected: 图标大小按照预设的大小正常显示，为默认值24vp');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3900 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3910
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3910
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemIconSize with 20vp x 20vp
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3910', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3910 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemIconSize 20vp');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV23910");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置为20vp x 20vp
      Logger.info('TEST', 'Step 2-4: Click button to set itemIconSize to 20vp x 20vp');
      let size20Button = await driver.findComponent(ON.id('size20Button'));
      if (size20Button) {
        await size20Button.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察图标大小是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the icon size displays normally');
      Logger.info('TEST', 'Expected: 图标大小按照预设的大小正常显示，为20vp');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3910 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3920
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3920
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemIconSize with width 40fp and height 40%
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3920', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3920 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemIconSize 40fp x 40%');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV23920");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置为40fp x 40%
      Logger.info('TEST', 'Step 2-4: Click button to set itemIconSize to 40fp x 40%');
      let fpPercentSizeButton = await driver.findComponent(ON.id('fpPercentSizeButton'));
      if (fpPercentSizeButton) {
        await fpPercentSizeButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察图标大小是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the icon size displays normally');
      Logger.info('TEST', 'Expected: 图标大小按照预设的大小正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3920 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3930
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3930
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemIconSize with width 40px and height 40lpx
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3930', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3930 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemIconSize 40px x 40lpx');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV23930");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置为40px x 40lpx
      Logger.info('TEST', 'Step 2-4: Click button to set itemIconSize to 40px x 40lpx');
      let pxLpxSizeButton = await driver.findComponent(ON.id('pxLpxSizeButton'));
      if (pxLpxSizeButton) {
        await pxLpxSizeButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察图标大小是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the icon size displays normally');
      Logger.info('TEST', 'Expected: 图标大小按照预设的大小正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3930 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3940
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3940
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemIconSize with width 50vp and height resource
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3940', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3940 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemIconSize 50vp x resource');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV23940");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置为50vp x resource
      Logger.info('TEST', 'Step 2-4: Click button to set itemIconSize to 50vp x resource');
      let vpResourceSizeButton = await driver.findComponent(ON.id('vpResourceSizeButton'));
      if (vpResourceSizeButton) {
        await vpResourceSizeButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察图标大小是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the icon size displays normally');
      Logger.info('TEST', 'Expected: 图标大小按照预设的大小正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3940 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3950
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3950
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemMaxFontScale with abnormal number value
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3950', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3950 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemMaxFontScale abnormal');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV23950");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置为异常值
      Logger.info('TEST', 'Step 2-4: Click button to set itemMaxFontScale to abnormal value');
      let negativeButton = await driver.findComponent(ON.id('negativeButton'));
      if (negativeButton) {
        await negativeButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the display is normal');
      Logger.info('TEST', 'Expected: 设置异常范围值不生效');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3950 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3960
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3960
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemMaxFontScale with resource type
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3960', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3960 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemMaxFontScale resource');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV23960");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置为resource类型
      Logger.info('TEST', 'Step 2-4: Click button to set itemMaxFontScale to resource type');
      let resourceButton = await driver.findComponent(ON.id('resourceButton'));
      if (resourceButton) {
        await resourceButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the display is normal');
      Logger.info('TEST', 'Expected: 和设置number为1.9一致');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3960 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3970
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3970
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemMaxFontScale with normal range number
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3970', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3970 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemMaxFontScale normal range');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV23970");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置为正常范围值
      Logger.info('TEST', 'Step 2-4: Click button to set itemMaxFontScale to normal range value');
      let scale2Button = await driver.findComponent(ON.id('scale2Button'));
      if (scale2Button) {
        await scale2Button.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the display is normal');
      Logger.info('TEST', 'Expected: 在1-2之间调节可以观察到字体的明显放大');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3970 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3980
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3980
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemMinFontScale with abnormal number value
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3980', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3980 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemMinFontScale abnormal');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV23980");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置为异常值
      Logger.info('TEST', 'Step 2-4: Click button to set itemMinFontScale to abnormal value');
      let negativeButton = await driver.findComponent(ON.id('negativeButton'));
      if (negativeButton) {
        await negativeButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the display is normal');
      Logger.info('TEST', 'Expected: 设置异常范围值不生效');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3980 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3990
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3990
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemMinFontScale with resource type
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3990', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3990 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemMinFontScale resource');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV23990");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置为resource类型
      Logger.info('TEST', 'Step 2-4: Click button to set itemMinFontScale to resource type');
      let resourceButton = await driver.findComponent(ON.id('resourceButton'));
      if (resourceButton) {
        await resourceButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the display is normal');
      Logger.info('TEST', 'Expected: 和设置number为0.5一致');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_3990 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4000
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4000
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemMinFontScale with normal range number
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4000', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4000 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemMinFontScale normal range');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24000");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置为正常范围值
      Logger.info('TEST', 'Step 2-4: Click button to set itemMinFontScale to normal range value');
      let scale08Button = await driver.findComponent(ON.id('scale08Button'));
      if (scale08Button) {
        await scale08Button.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the display is normal');
      Logger.info('TEST', 'Expected: 在0.8-1之间调节可以观察到字体的明显缩小');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4000 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4010
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4010
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemMinHeight with resource type
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4010', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4010 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemMinHeight resource');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24010");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置为resource类型
      Logger.info('TEST', 'Step 2-4: Click button to set itemMinHeight to resource');
      let resourceButton = await driver.findComponent(ON.id('resourceButton'));
      if (resourceButton) {
        await resourceButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察分段按钮按钮最小高度是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the min height displays normally');
      Logger.info('TEST', 'Expected: 分段按钮自适应最小高度，当前分段按钮的高度就是设置的最小高度50vp');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4010 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4020
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4020
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemMinHeight with -1vp
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4020', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4020 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemMinHeight -1vp');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24020");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置为-1vp
      Logger.info('TEST', 'Step 2-4: Click button to set itemMinHeight to -1vp');
      let negativeButton = await driver.findComponent(ON.id('negativeButton'));
      if (negativeButton) {
        await negativeButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察分段按钮按钮最小高度是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the min height displays normally');
      Logger.info('TEST', 'Expected: 分段按钮自适应最小高度，当前分段按钮的高度就是设置的最小高度40vp');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4020 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4030
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4030
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemMinHeight with 40%
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4030', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4030 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemMinHeight 40%');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24030");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置为40%
      Logger.info('TEST', 'Step 2-4: Click button to set itemMinHeight to 40%');
      let percentButton = await driver.findComponent(ON.id('percentButton'));
      if (percentButton) {
        await percentButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察分段按钮按钮最小高度是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the min height displays normally');
      Logger.info('TEST', 'Expected: 分段按钮自适应最小高度，当前分段按钮的高度就是设置的最小高度40%');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4030 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4040
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4040
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemMinHeight with 40fp
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4040', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4040 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemMinHeight 40fp');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24040");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置为40fp
      Logger.info('TEST', 'Step 2-4: Click button to set itemMinHeight to 40fp');
      let fpButton = await driver.findComponent(ON.id('fpButton'));
      if (fpButton) {
        await fpButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察分段按钮按钮最小高度是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the min height displays normally');
      Logger.info('TEST', 'Expected: 分段按钮自适应最小高度，当前分段按钮的高度就是设置的最小高度40fp');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4040 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4050
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4050
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemMinHeight with 40lpx
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4050', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4050 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemMinHeight 40lpx');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24050");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置为40lpx
      Logger.info('TEST', 'Step 2-4: Click button to set itemMinHeight to 40lpx');
      let lpxButton = await driver.findComponent(ON.id('lpxButton'));
      if (lpxButton) {
        await lpxButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察分段按钮按钮最小高度是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the min height displays normally');
      Logger.info('TEST', 'Expected: 此时itemMinHeight小于button的默认高度40vp');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4050 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4060
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4060
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemMinHeight with 40px
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4060', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4060 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemMinHeight 40px');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24060");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置为40px
      Logger.info('TEST', 'Step 2-4: Click button to set itemMinHeight to 40px');
      let pxButton = await driver.findComponent(ON.id('pxButton'));
      if (pxButton) {
        await pxButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察分段按钮按钮最小高度是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the min height displays normally');
      Logger.info('TEST', 'Expected: 设置太小时会按文字大小+上下padding显示，小于20vp时固定为20vp');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4060 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4070
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4070
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemMinHeight with 40vp
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4070', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4070 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemMinHeight 40vp');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24070");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置为40vp
      Logger.info('TEST', 'Step 2-4: Click button to set itemMinHeight to 40vp');
      let vpButton = await driver.findComponent(ON.id('vpButton'));
      if (vpButton) {
        await vpButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察分段按钮按钮最小高度是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the min height displays normally');
      Logger.info('TEST', 'Expected: 分段按钮自适应最小高度，当前分段按钮的高度就是设置的最小高度40vp');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4070 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4080
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4080
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemMinHeight with undefined
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4080', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4080 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemMinHeight undefined');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24080");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置为undefined
      Logger.info('TEST', 'Step 2-4: Click button to set itemMinHeight to undefined');
      let undefinedButton = await driver.findComponent(ON.id('undefinedButton'));
      if (undefinedButton) {
        await undefinedButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察分段按钮按钮最小高度是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the min height displays normally');
      Logger.info('TEST', 'Expected: 分段按钮高度为默认值');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4080 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4090
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4090
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemPadding with mixed units
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4090', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4090 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemPadding mixed units');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24090");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置混合单位内边距
      Logger.info('TEST', 'Step 2-4: Click button to set itemPadding with mixed units');
      let mixedPaddingButton = await driver.findComponent(ON.id('mixedPaddingButton'));
      if (mixedPaddingButton) {
        await mixedPaddingButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察分段按钮item内边距和布局是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the item padding displays normally');
      Logger.info('TEST', 'Expected: 分段按钮item的内边距依照设置的内边距显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4090 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4100
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4100
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemPadding with negative values
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4100', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4100 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemPadding negative values');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24100");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置包含负值的内边距
      Logger.info('TEST', 'Step 2-4: Click button to set itemPadding with negative values');
      let negativePaddingButton = await driver.findComponent(ON.id('negativePaddingButton'));
      if (negativePaddingButton) {
        await negativePaddingButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察分段按钮item内边距和布局是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the item padding displays normally');
      Logger.info('TEST', 'Expected: 分段按钮item的内边距依照设置显示，负值取默认值');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4100 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4110
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4110
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemPadding with 1% for all sides
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4110', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4110 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemPadding 1%');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24110");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置百分比内边距
      Logger.info('TEST', 'Step 2-4: Click button to set itemPadding to 1%');
      let percentPaddingButton = await driver.findComponent(ON.id('percentPaddingButton'));
      if (percentPaddingButton) {
        await percentPaddingButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察分段按钮item内边距和布局是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the item padding displays normally');
      Logger.info('TEST', 'Expected: 分段按钮item的内边距依照设置的内边距显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4110 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4120
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4120
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemSelectedBackgroundColor with rgba type color
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4120', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4120 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemSelectedBackgroundColor rgba');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24120");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置rgba颜色
      Logger.info('TEST', 'Step 2-4: Click button to set itemSelectedBackgroundColor to rgba');
      let rgbaColorButton = await driver.findComponent(ON.id('rgbaColorButton'));
      if (rgbaColorButton) {
        await rgbaColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察已选择的分段按钮的背景颜色是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected background color displays normally');
      Logger.info('TEST', 'Expected: 已选择的分段按钮的背景颜色按照预设颜色正常显示，为黄色');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4120 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4130
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4130
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemSelectedBackgroundColor with custom color
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4130', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4130 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemSelectedBackgroundColor custom');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24130");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置自定义颜色（红+绿=黄）
      Logger.info('TEST', 'Step 2-4: Click button to set custom color (red+green=yellow)');
      let yellowButton = await driver.findComponent(ON.id('yellowButton'));
      if (yellowButton) {
        await yellowButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 点击设置绿+蓝=青
      Logger.info('TEST', 'Click button to set custom color (green+blue=cyan)');
      let cyanButton = await driver.findComponent(ON.id('cyanButton'));
      if (cyanButton) {
        await cyanButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 点击设置蓝+红=品红
      Logger.info('TEST', 'Click button to set custom color (blue+red=magenta)');
      let magentaButton = await driver.findComponent(ON.id('magentaButton'));
      if (magentaButton) {
        await magentaButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 点击设置纯红
      Logger.info('TEST', 'Click button to set custom color (pure red)');
      let redButton = await driver.findComponent(ON.id('redButton'));
      if (redButton) {
        await redButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 点击设置纯绿
      Logger.info('TEST', 'Click button to set custom color (pure green)');
      let greenButton = await driver.findComponent(ON.id('greenButton'));
      if (greenButton) {
        await greenButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 点击设置纯蓝
      Logger.info('TEST', 'Click button to set custom color (pure blue)');
      let blueButton = await driver.findComponent(ON.id('blueButton'));
      if (blueButton) {
        await blueButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 点击设置等量混合=白色
      Logger.info('TEST', 'Click button to set custom color (equal mix=white)');
      let whiteButton = await driver.findComponent(ON.id('whiteButton'));
      if (whiteButton) {
        await whiteButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察已选择的分段按钮的背景颜色是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected background color displays normally');
      Logger.info('TEST', 'Expected: 已选择的分段按钮的背景颜色按照预设颜色正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4130 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4140
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4140
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemSelectedBackgroundColor with preset colors
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4140', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4140 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemSelectedBackgroundColor preset');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24140");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击预设颜色按钮（蓝色）
      Logger.info('TEST', 'Step 2-4: Click button to set preset color (blue)');
      let blueButton = await driver.findComponent(ON.id('blueButton'));
      if (blueButton) {
        await blueButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察已选择的分段按钮的背景颜色是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected background color displays normally');
      Logger.info('TEST', 'Expected: 已选择的分段按钮的背景颜色按照预设颜色正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4140 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4150
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4150
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemSelectedFontColor with rgba type color
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4150', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4150 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemSelectedFontColor rgba');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24150");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置rgba颜色
      Logger.info('TEST', 'Step 2-4: Click button to set itemSelectedFontColor to rgba');
      let rgbaColorButton = await driver.findComponent(ON.id('rgbaColorButton'));
      if (rgbaColorButton) {
        await rgbaColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察已选择的分段按钮的字体颜色是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected font color displays normally');
      Logger.info('TEST', 'Expected: 已选择的分段按钮的字体颜色按照预设颜色正常显示，为黄色');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4150 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4160
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4160
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemSelectedFontColor with custom color
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4160', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4160 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemSelectedFontColor custom');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24160");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置自定义颜色（红+绿=黄）
      Logger.info('TEST', 'Step 2-4: Click button to set custom color (red+green=yellow)');
      let yellowButton = await driver.findComponent(ON.id('yellowButton'));
      if (yellowButton) {
        await yellowButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 点击设置绿+蓝=青
      Logger.info('TEST', 'Click button to set custom color (green+blue=cyan)');
      let cyanButton = await driver.findComponent(ON.id('cyanButton'));
      if (cyanButton) {
        await cyanButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 点击设置蓝+红=品红
      Logger.info('TEST', 'Click button to set custom color (blue+red=magenta)');
      let magentaButton = await driver.findComponent(ON.id('magentaButton'));
      if (magentaButton) {
        await magentaButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 点击设置纯红
      Logger.info('TEST', 'Click button to set custom color (pure red)');
      let redButton = await driver.findComponent(ON.id('redButton'));
      if (redButton) {
        await redButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 点击设置纯绿
      Logger.info('TEST', 'Click button to set custom color (pure green)');
      let greenButton = await driver.findComponent(ON.id('greenButton'));
      if (greenButton) {
        await greenButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 点击设置纯蓝
      Logger.info('TEST', 'Click button to set custom color (pure blue)');
      let blueButton = await driver.findComponent(ON.id('blueButton'));
      if (blueButton) {
        await blueButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 点击设置等量混合=白色
      Logger.info('TEST', 'Click button to set custom color (equal mix=white)');
      let whiteButton = await driver.findComponent(ON.id('whiteButton'));
      if (whiteButton) {
        await whiteButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察已选择的分段按钮的字体颜色是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected font color displays normally');
      Logger.info('TEST', 'Expected: 已选择的分段按钮的字体颜色按照预设颜色正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4160 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4170
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4170
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemSelectedFontColor with preset colors
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4170', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4170 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemSelectedFontColor preset');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24170");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击预设颜色按钮（蓝色）
      Logger.info('TEST', 'Step 2-4: Click button to set preset color (blue)');
      let blueButton = await driver.findComponent(ON.id('blueButton'));
      if (blueButton) {
        await blueButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察已选择的分段按钮的字体颜色是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected font color displays normally');
      Logger.info('TEST', 'Expected: 已选择的分段按钮的字体颜色按照预设颜色正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4170 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4180
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4180
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemSelectedFontSize set to -1 displays normally
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4180', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4180 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemSelectedFontSize -1');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24180");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置itemSelectedFontSize为-1
      Logger.info('TEST', 'Step 2-4: Click button to set itemSelectedFontSize to -1');
      let negativeSizeButton = await driver.findComponent(ON.id('negativeSizeButton'));
      if (negativeSizeButton) {
        await negativeSizeButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察已选择的item的字体大小是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected item font size displays normally');
      Logger.info('TEST', 'Expected: 已选择的item的字体大小按照预设的大小正常显示，为默认值14fp');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4180 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4190
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4190
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemSelectedFontSize set to 20vp displays normally
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4190', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4190 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemSelectedFontSize 20vp');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24190");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置itemSelectedFontSize为20vp
      Logger.info('TEST', 'Step 2-4: Click button to set itemSelectedFontSize to 20vp');
      let size20vpButton = await driver.findComponent(ON.id('size20vpButton'));
      if (size20vpButton) {
        await size20vpButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察已选择的item的字体大小是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected item font size displays normally');
      Logger.info('TEST', 'Expected: 已选择的item的字体大小按照预设的大小正常显示，为20vp');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4190 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4200
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4200
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemSelectedFontSize set to 40% displays normally
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4200', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4200 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemSelectedFontSize 40%');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24200");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置itemSelectedFontSize为40%
      Logger.info('TEST', 'Step 2-4: Click button to set itemSelectedFontSize to 40%');
      let size40PercentButton = await driver.findComponent(ON.id('size40PercentButton'));
      if (size40PercentButton) {
        await size40PercentButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察已选择的item的字体大小是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected item font size displays normally');
      Logger.info('TEST', 'Expected: 已选择的item的字体大小按照预设的大小正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4200 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4210
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4210
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemSelectedFontSize set to 40fp displays normally
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4210', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4210 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemSelectedFontSize 40fp');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24210");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置itemSelectedFontSize为40fp
      Logger.info('TEST', 'Step 2-4: Click button to set itemSelectedFontSize to 40fp');
      let size40fpButton = await driver.findComponent(ON.id('size40fpButton'));
      if (size40fpButton) {
        await size40fpButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察已选择的item的字体大小是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected item font size displays normally');
      Logger.info('TEST', 'Expected: 已选择的item的字体大小按照预设的大小正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4210 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4220
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4220
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemSelectedFontSize set to 40lpx displays normally
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4220', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4220 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemSelectedFontSize 40lpx');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24220");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置itemSelectedFontSize为40lpx
      Logger.info('TEST', 'Step 2-4: Click button to set itemSelectedFontSize to 40lpx');
      let size40lpxButton = await driver.findComponent(ON.id('size40lpxButton'));
      if (size40lpxButton) {
        await size40lpxButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察已选择的item的字体大小是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected item font size displays normally');
      Logger.info('TEST', 'Expected: 已选择的item的字体大小按照预设的大小正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4220 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4230
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4230
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemSelectedFontSize set to 40px displays normally
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4230', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4230 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemSelectedFontSize 40px');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24230");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置itemSelectedFontSize为40px
      Logger.info('TEST', 'Step 2-4: Click button to set itemSelectedFontSize to 40px');
      let size40pxButton = await driver.findComponent(ON.id('size40pxButton'));
      if (size40pxButton) {
        await size40pxButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察已选择的item的字体大小是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected item font size displays normally');
      Logger.info('TEST', 'Expected: 已选择的item的字体大小按照预设的大小正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4230 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4240
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4240
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemSelectedFontSize set to resource displays normally
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4240', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4240 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemSelectedFontSize resource');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24240");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置itemSelectedFontSize为resource
      Logger.info('TEST', 'Step 2-4: Click button to set itemSelectedFontSize to resource');
      let sizeResourceButton = await driver.findComponent(ON.id('sizeResourceButton'));
      if (sizeResourceButton) {
        await sizeResourceButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察已选择的item的字体大小是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected item font size displays normally');
      Logger.info('TEST', 'Expected: 已选择的item的字体大小按照预设的大小正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4240 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4250
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4250
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemSelectedFontSize set to undefined displays normally
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4250', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4250 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemSelectedFontSize undefined');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24250");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置itemSelectedFontSize为undefined
      Logger.info('TEST', 'Step 2-4: Click button to set itemSelectedFontSize to undefined');
      let undefinedButton = await driver.findComponent(ON.id('undefinedButton'));
      if (undefinedButton) {
        await undefinedButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察已选择的item的字体大小是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected item font size displays normally');
      Logger.info('TEST', 'Expected: 已选择的item的字体大小按照预设的大小正常显示，为默认值14fp');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4250 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4260
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4260
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemSelectedFontWeight set to Bolder displays normally
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4260', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4260 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemSelectedFontWeight Bolder');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24260");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置itemSelectedFontWeight为Bolder
      Logger.info('TEST', 'Step 2-4: Click button to set itemSelectedFontWeight to Bolder');
      let bolderButton = await driver.findComponent(ON.id('bolderButton'));
      if (bolderButton) {
        await bolderButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察已选中的分段按钮文字粗细是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected font weight displays normally');
      Logger.info('TEST', 'Expected: 已选中的分段按钮文字粗细按照预设的大小正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4260 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4270
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4270
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemSelectedFontWeight set to Bold displays normally
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4270', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4270 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemSelectedFontWeight Bold');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24270");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置itemSelectedFontWeight为Bold
      Logger.info('TEST', 'Step 2-4: Click button to set itemSelectedFontWeight to Bold');
      let boldButton = await driver.findComponent(ON.id('boldButton'));
      if (boldButton) {
        await boldButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察已选中的分段按钮文字粗细是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected font weight displays normally');
      Logger.info('TEST', 'Expected: 已选中的分段按钮文字粗细按照预设的大小正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4270 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4280
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4280
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemSelectedFontWeight set to Lighter displays normally
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4280', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4280 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemSelectedFontWeight Lighter');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24280");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置itemSelectedFontWeight为Lighter
      Logger.info('TEST', 'Step 2-4: Click button to set itemSelectedFontWeight to Lighter');
      let lighterButton = await driver.findComponent(ON.id('lighterButton'));
      if (lighterButton) {
        await lighterButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察已选中的分段按钮文字粗细是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected font weight displays normally');
      Logger.info('TEST', 'Expected: 已选中的分段按钮文字粗细按照预设的大小正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4280 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4290
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4290
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemSelectedFontWeight set to Medium displays normally
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4290', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4290 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemSelectedFontWeight Medium');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24290");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置itemSelectedFontWeight为Medium
      Logger.info('TEST', 'Step 2-4: Click button to set itemSelectedFontWeight to Medium');
      let mediumButton = await driver.findComponent(ON.id('mediumButton'));
      if (mediumButton) {
        await mediumButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察已选中的分段按钮文字粗细是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected font weight displays normally');
      Logger.info('TEST', 'Expected: 已选中的分段按钮文字粗细按照预设的大小正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4290 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4300
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4300
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemSelectedFontWeight set to Normal displays normally
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4300', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4300 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemSelectedFontWeight Normal');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24300");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置itemSelectedFontWeight为Normal
      Logger.info('TEST', 'Step 2-4: Click button to set itemSelectedFontWeight to Normal');
      let normalButton = await driver.findComponent(ON.id('normalButton'));
      if (normalButton) {
        await normalButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察已选中的分段按钮文字粗细是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected font weight displays normally');
      Logger.info('TEST', 'Expected: 已选中的分段按钮文字粗细按照预设的大小正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4300 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4310
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4310
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemSelectedFontWeight set to Regular displays normally
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4310', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4310 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemSelectedFontWeight Regular');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24310");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置itemSelectedFontWeight为Regular
      Logger.info('TEST', 'Step 2-4: Click button to set itemSelectedFontWeight to Regular');
      let regularButton = await driver.findComponent(ON.id('regularButton'));
      if (regularButton) {
        await regularButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察已选中的分段按钮文字粗细是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected font weight displays normally');
      Logger.info('TEST', 'Expected: 已选中的分段按钮文字粗细按照预设的大小正常显示，Regular和Normal的字体大小是一致的');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4310 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4320
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4320
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemSelectedFontWeight set to undefined displays normally
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4320', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4320 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemSelectedFontWeight undefined');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24320");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置itemSelectedFontWeight为undefined
      Logger.info('TEST', 'Step 2-4: Click button to set itemSelectedFontWeight to undefined');
      let undefinedButton = await driver.findComponent(ON.id('undefinedButton'));
      if (undefinedButton) {
        await undefinedButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察已选中的分段按钮文字粗细是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected font weight displays normally');
      Logger.info('TEST', 'Expected: 已选中的分段按钮文字粗细按照预设的大小正常显示，取得默认值Medium');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4320 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4330
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4330
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemSelectedIconFillColor with rgba type color
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4330', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4330 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemSelectedIconFillColor rgba');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24330");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置rgba颜色
      Logger.info('TEST', 'Step 2-4: Click button to set itemSelectedIconFillColor to rgba');
      let rgbaColorButton = await driver.findComponent(ON.id('rgbaColorButton'));
      if (rgbaColorButton) {
        await rgbaColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察已选择的分段按钮的图标是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected icon fill color displays normally');
      Logger.info('TEST', 'Expected: 已选择的分段按钮的图标按照预设颜色正常显示，为黄色');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4330 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4340
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4340
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemSelectedIconFillColor with custom color
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4340', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4340 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemSelectedIconFillColor custom');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24340");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置自定义颜色（红+绿=黄）
      Logger.info('TEST', 'Step 2-4: Click button to set custom color (red+green=yellow)');
      let yellowButton = await driver.findComponent(ON.id('yellowButton'));
      if (yellowButton) {
        await yellowButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 点击设置绿+蓝=青
      Logger.info('TEST', 'Click button to set custom color (green+blue=cyan)');
      let cyanButton = await driver.findComponent(ON.id('cyanButton'));
      if (cyanButton) {
        await cyanButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 点击设置蓝+红=品红
      Logger.info('TEST', 'Click button to set custom color (blue+red=magenta)');
      let magentaButton = await driver.findComponent(ON.id('magentaButton'));
      if (magentaButton) {
        await magentaButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 点击设置纯红
      Logger.info('TEST', 'Click button to set custom color (pure red)');
      let redButton = await driver.findComponent(ON.id('redButton'));
      if (redButton) {
        await redButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 点击设置纯绿
      Logger.info('TEST', 'Click button to set custom color (pure green)');
      let greenButton = await driver.findComponent(ON.id('greenButton'));
      if (greenButton) {
        await greenButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 点击设置纯蓝
      Logger.info('TEST', 'Click button to set custom color (pure blue)');
      let blueButton = await driver.findComponent(ON.id('blueButton'));
      if (blueButton) {
        await blueButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 点击设置等量混合=白色
      Logger.info('TEST', 'Click button to set custom color (equal mix=white)');
      let whiteButton = await driver.findComponent(ON.id('whiteButton'));
      if (whiteButton) {
        await whiteButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察已选择的分段按钮的图标是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected icon fill color displays normally');
      Logger.info('TEST', 'Expected: 已选择的分段按钮的图标按照预设颜色正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4340 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4350
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4350
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemSelectedIconFillColor with preset colors
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4350', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4350 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemSelectedIconFillColor preset');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24350");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击预设颜色按钮（蓝色）
      Logger.info('TEST', 'Step 2-4: Click button to set preset color (blue)');
      let blueButton = await driver.findComponent(ON.id('blueButton'));
      if (blueButton) {
        await blueButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 点击灰色
      Logger.info('TEST', 'Click button to set preset color (gray)');
      let grayButton = await driver.findComponent(ON.id('grayButton'));
      if (grayButton) {
        await grayButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 点击白色
      Logger.info('TEST', 'Click button to set preset color (white)');
      let whiteButton = await driver.findComponent(ON.id('whiteButton'));
      if (whiteButton) {
        await whiteButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察已选择的分段按钮的图标是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected icon fill color displays normally');
      Logger.info('TEST', 'Expected: 已选择的分段按钮的图标按照预设颜色正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4350 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4360
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4360
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemSelectedSymbolFontColor with rgba type color
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4360', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4360 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemSelectedSymbolFontColor rgba');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24360");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置rgba颜色
      Logger.info('TEST', 'Step 2-4: Click button to set itemSelectedSymbolFontColor to rgba');
      let rgbaColorButton = await driver.findComponent(ON.id('rgbaColorButton'));
      if (rgbaColorButton) {
        await rgbaColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察已选择的分段按钮的HM Symbol类型图标是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected symbol font color displays normally');
      Logger.info('TEST', 'Expected: 已选择的分段按钮的HM Symbol类型图标按照预设颜色正常显示，为黄色');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4360 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4370
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4370
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemSelectedSymbolFontColor with custom color
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4370', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4370 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemSelectedSymbolFontColor custom');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24370");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置自定义颜色（红+绿=黄）
      Logger.info('TEST', 'Step 2-4: Click button to set custom color (red+green=yellow)');
      let yellowButton = await driver.findComponent(ON.id('yellowButton'));
      if (yellowButton) {
        await yellowButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 点击设置绿+蓝=青
      Logger.info('TEST', 'Click button to set custom color (green+blue=cyan)');
      let cyanButton = await driver.findComponent(ON.id('cyanButton'));
      if (cyanButton) {
        await cyanButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 点击设置蓝+红=品红
      Logger.info('TEST', 'Click button to set custom color (blue+red=magenta)');
      let magentaButton = await driver.findComponent(ON.id('magentaButton'));
      if (magentaButton) {
        await magentaButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 点击设置纯红
      Logger.info('TEST', 'Click button to set custom color (pure red)');
      let redButton = await driver.findComponent(ON.id('redButton'));
      if (redButton) {
        await redButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 点击设置纯绿
      Logger.info('TEST', 'Click button to set custom color (pure green)');
      let greenButton = await driver.findComponent(ON.id('greenButton'));
      if (greenButton) {
        await greenButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 点击设置纯蓝
      Logger.info('TEST', 'Click button to set custom color (pure blue)');
      let blueButton = await driver.findComponent(ON.id('blueButton'));
      if (blueButton) {
        await blueButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 点击设置等量混合=白色
      Logger.info('TEST', 'Click button to set custom color (equal mix=white)');
      let whiteButton = await driver.findComponent(ON.id('whiteButton'));
      if (whiteButton) {
        await whiteButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察已选择的分段按钮的HM Symbol类型图标是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected symbol font color displays normally');
      Logger.info('TEST', 'Expected: 已选择的分段按钮的HM Symbol类型图标按照预设颜色正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4370 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4380
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4380
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemSelectedSymbolFontColor with preset colors
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4380', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4380 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemSelectedSymbolFontColor preset');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24380");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击预设颜色按钮（蓝色）
      Logger.info('TEST', 'Step 2-4: Click button to set preset color (blue)');
      let blueButton = await driver.findComponent(ON.id('blueButton'));
      if (blueButton) {
        await blueButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 点击灰色
      Logger.info('TEST', 'Click button to set preset color (gray)');
      let grayButton = await driver.findComponent(ON.id('grayButton'));
      if (grayButton) {
        await grayButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 点击白色
      Logger.info('TEST', 'Click button to set preset color (white)');
      let whiteButton = await driver.findComponent(ON.id('whiteButton'));
      if (whiteButton) {
        await whiteButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察已选择的分段按钮的HM Symbol类型图标是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected symbol font color displays normally');
      Logger.info('TEST', 'Expected: 已选择的分段按钮的HM Symbol类型图标按照预设颜色正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4380 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4390
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4390
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemShadow with shadowOption 1 (black shadow, offset 50,50, fill)
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4390', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4390 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemShadow option 1');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24390");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置itemShadow
      Logger.info('TEST', 'Step 2-4: Click button to set itemShadow (black, offset 50,50, fill)');
      let shadowOption1Button = await driver.findComponent(ON.id('shadowOption1Button'));
      if (shadowOption1Button) {
        await shadowOption1Button.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察分段按钮的item的阴影
      Logger.info('TEST', 'Step 5: Observe if the item shadow displays normally');
      Logger.info('TEST', 'Expected: 分段按钮的item阴影为黑色阴影，向右下偏移（50，50），填充');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4390 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4400
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4400
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemShadow with shadowOption 2 (green shadow, resource offset, no fill)
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4400', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4400 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemShadow option 2');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24400");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置itemShadow
      Logger.info('TEST', 'Step 2-4: Click button to set itemShadow (green, resource offset, no fill)');
      let shadowOption2Button = await driver.findComponent(ON.id('shadowOption2Button'));
      if (shadowOption2Button) {
        await shadowOption2Button.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察分段按钮的item的阴影
      Logger.info('TEST', 'Step 5: Observe if the item shadow displays normally');
      Logger.info('TEST', 'Expected: 分段按钮的item阴影为绿色阴影，向右下偏移（50，50），未填充');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4400 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4410
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4410
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemShadow with shadowOption 3 (pink shadow, resource offset, no fill)
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4410', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4410 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemShadow option 3');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24410");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置itemShadow
      Logger.info('TEST', 'Step 2-4: Click button to set itemShadow (pink, resource offset, no fill)');
      let shadowOption3Button = await driver.findComponent(ON.id('shadowOption3Button'));
      if (shadowOption3Button) {
        await shadowOption3Button.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察分段按钮的item的阴影
      Logger.info('TEST', 'Step 5: Observe if the item shadow displays normally');
      Logger.info('TEST', 'Expected: 分段按钮的item阴影为粉色阴影，向右下偏移（50，50），未填充');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4410 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4420
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4420
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemShadow with ColoringStrategy.INVERT
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4420', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4420 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemShadow INVERT');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24420");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置itemShadow
      Logger.info('TEST', 'Step 2-4: Click button to set itemShadow (INVERT)');
      let shadowOption4Button = await driver.findComponent(ON.id('shadowOption4Button'));
      if (shadowOption4Button) {
        await shadowOption4Button.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察分段按钮的item的阴影
      Logger.info('TEST', 'Step 5: Observe if the item shadow displays normally');
      Logger.info('TEST', 'Expected: 分段按钮的item阴影为黑色阴影（走反色逻辑），向右下偏移（50，50），填充');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4420 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4430
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4430
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemShadow with ColoringStrategy.AVERAGE
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4430', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4430 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemShadow AVERAGE');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24430");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置itemShadow
      Logger.info('TEST', 'Step 2-4: Click button to set itemShadow (AVERAGE)');
      let shadowOption5Button = await driver.findComponent(ON.id('shadowOption5Button'));
      if (shadowOption5Button) {
        await shadowOption5Button.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察分段按钮的item的阴影
      Logger.info('TEST', 'Step 5: Observe if the item shadow displays normally');
      Logger.info('TEST', 'Expected: 分段按钮的item阴影为灰色阴影（走平均色逻辑），向右下偏移（50，50），填充');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4430 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4440
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4440
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemShadow with ColoringStrategy.PRIMARY
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4440', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4440 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemShadow PRIMARY');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24440");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置itemShadow
      Logger.info('TEST', 'Step 2-4: Click button to set itemShadow (PRIMARY)');
      let shadowOption6Button = await driver.findComponent(ON.id('shadowOption6Button'));
      if (shadowOption6Button) {
        await shadowOption6Button.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察分段按钮的item的阴影
      Logger.info('TEST', 'Step 5: Observe if the item shadow displays normally');
      Logger.info('TEST', 'Expected: 分段按钮的item阴影为灰色阴影（走主色逻辑），向右下偏移（50，50），填充');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4440 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4450
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4450
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemShadow set to undefined (no shadow)
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4450', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4450 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemShadow undefined');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24450");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置itemShadow为undefined
      Logger.info('TEST', 'Step 2-4: Click button to set itemShadow to undefined');
      let undefinedButton = await driver.findComponent(ON.id('undefinedButton'));
      if (undefinedButton) {
        await undefinedButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察分段按钮的item的阴影
      Logger.info('TEST', 'Step 5: Observe if the item has no shadow');
      Logger.info('TEST', 'Expected: 分段按钮的item无阴影显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4450 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4460
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4460
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemShadow with ShadowStyle.OUTER_DEFAULT_LG
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4460', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4460 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemShadow OUTER_DEFAULT_LG');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24460");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置itemShadow为OUTER_DEFAULT_LG
      Logger.info('TEST', 'Step 2-4: Click button to set itemShadow to OUTER_DEFAULT_LG');
      let shadowLGButton = await driver.findComponent(ON.id('shadowLGButton'));
      if (shadowLGButton) {
        await shadowLGButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察分段按钮的item的阴影
      Logger.info('TEST', 'Step 5: Observe if the item shadow displays normally');
      Logger.info('TEST', 'Expected: 分段按钮的item阴影为大阴影');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4460 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4470
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4470
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemShadow with ShadowStyle.OUTER_DEFAULT_MD
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4470', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4470 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemShadow OUTER_DEFAULT_MD');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24470");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置itemShadow为OUTER_DEFAULT_MD
      Logger.info('TEST', 'Step 2-4: Click button to set itemShadow to OUTER_DEFAULT_MD');
      let shadowMDButton = await driver.findComponent(ON.id('shadowMDButton'));
      if (shadowMDButton) {
        await shadowMDButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察分段按钮的item的阴影
      Logger.info('TEST', 'Step 5: Observe if the item shadow displays normally');
      Logger.info('TEST', 'Expected: 分段按钮的item阴影为中阴影');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4470 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4480
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4480
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemShadow with ShadowStyle.OUTER_DEFAULT_SM
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4480', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4480 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemShadow OUTER_DEFAULT_SM');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24480");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置itemShadow为OUTER_DEFAULT_SM
      Logger.info('TEST', 'Step 2-4: Click button to set itemShadow to OUTER_DEFAULT_SM');
      let shadowSMButton = await driver.findComponent(ON.id('shadowSMButton'));
      if (shadowSMButton) {
        await shadowSMButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察分段按钮的item的阴影
      Logger.info('TEST', 'Step 5: Observe if the item shadow displays normally');
      Logger.info('TEST', 'Expected: 分段按钮的item阴影为小阴影');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4480 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4490
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4490
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemShadow with ShadowStyle.OUTER_DEFAULT_XS
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4490', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4490 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemShadow OUTER_DEFAULT_XS');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24490");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置itemShadow为OUTER_DEFAULT_XS
      Logger.info('TEST', 'Step 2-4: Click button to set itemShadow to OUTER_DEFAULT_XS');
      let shadowXSButton = await driver.findComponent(ON.id('shadowXSButton'));
      if (shadowXSButton) {
        await shadowXSButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察分段按钮的item的阴影
      Logger.info('TEST', 'Step 5: Observe if the item shadow displays normally');
      Logger.info('TEST', 'Expected: 分段按钮的item阴影为超小阴影');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4490 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4500
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4500
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemShadow with ShadowStyle.OUTER_FLOATING_MD
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4500', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4500 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemShadow OUTER_FLOATING_MD');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24500");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置itemShadow为OUTER_FLOATING_MD
      Logger.info('TEST', 'Step 2-4: Click button to set itemShadow to OUTER_FLOATING_MD');
      let shadowFloatingMDButton = await driver.findComponent(ON.id('shadowFloatingMDButton'));
      if (shadowFloatingMDButton) {
        await shadowFloatingMDButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察分段按钮的item的阴影
      Logger.info('TEST', 'Step 5: Observe if the item shadow displays normally');
      Logger.info('TEST', 'Expected: 分段按钮的item阴影为浮动中阴影');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4500 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4510
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4510
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemShadow with ShadowStyle.OUTER_FLOATING_SM
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4510', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4510 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemShadow OUTER_FLOATING_SM');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24510");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置itemShadow为OUTER_FLOATING_SM
      Logger.info('TEST', 'Step 2-4: Click button to set itemShadow to OUTER_FLOATING_SM');
      let shadowFloatingSMButton = await driver.findComponent(ON.id('shadowFloatingSMButton'));
      if (shadowFloatingSMButton) {
        await shadowFloatingSMButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察分段按钮的item的阴影
      Logger.info('TEST', 'Step 5: Observe if the item shadow displays normally');
      Logger.info('TEST', 'Expected: 分段按钮的item阴影为浮动小阴影');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4510 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4520
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4520
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemSpace set to -1 displays normally
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4520', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4520 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemSpace -1');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24520");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置itemSpace为-1
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
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4520 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4530
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4530
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemSpace set to 20vp displays normally
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4530', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4530 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemSpace 20vp');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24530");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置itemSpace为20vp
      Logger.info('TEST', 'Step 2-4: Click button to set itemSpace to 20vp');
      let space20vpButton = await driver.findComponent(ON.id('space20vpButton'));
      if (space20vpButton) {
        await space20vpButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察item之间的间隙是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the item space displays normally');
      Logger.info('TEST', 'Expected: item之间的间隙按照预设的大小正常显示，为20vp');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4530 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4540
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4540
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemSpace set to 40% displays normally
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4540', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4540 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemSpace 40%');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24540");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置itemSpace为40%
      Logger.info('TEST', 'Step 2-4: Click button to set itemSpace to 40%');
      let space40PercentButton = await driver.findComponent(ON.id('space40PercentButton'));
      if (space40PercentButton) {
        await space40PercentButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察item之间的间隙是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the item space displays normally');
      Logger.info('TEST', 'Expected: item之间的间隙按照预设的大小正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4540 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4550
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4550
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemSpace set to 40fp displays normally
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4550', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4550 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemSpace 40fp');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24550");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置itemSpace为40fp
      Logger.info('TEST', 'Step 2-4: Click button to set itemSpace to 40fp');
      let space40fpButton = await driver.findComponent(ON.id('space40fpButton'));
      if (space40fpButton) {
        await space40fpButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察item之间的间隙是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the item space displays normally');
      Logger.info('TEST', 'Expected: item之间的间隙按照预设的大小正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4550 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4560
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4560
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemSpace set to 40lpx displays normally
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4560', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4560 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemSpace 40lpx');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24560");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置itemSpace为40lpx
      Logger.info('TEST', 'Step 2-4: Click button to set itemSpace to 40lpx');
      let space40lpxButton = await driver.findComponent(ON.id('space40lpxButton'));
      if (space40lpxButton) {
        await space40lpxButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察item之间的间隙是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the item space displays normally');
      Logger.info('TEST', 'Expected: item之间的间隙按照预设的大小正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4560 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4570
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4570
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemSpace set to 40px displays normally
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4570', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4570 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemSpace 40px');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24570");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置itemSpace为40px
      Logger.info('TEST', 'Step 2-4: Click button to set itemSpace to 40px');
      let space40pxButton = await driver.findComponent(ON.id('space40pxButton'));
      if (space40pxButton) {
        await space40pxButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察item之间的间隙是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the item space displays normally');
      Logger.info('TEST', 'Expected: item之间的间隙按照预设的大小正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4570 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4580
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4580
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemSpace set to resource displays normally
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4580', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4580 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemSpace resource');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24580");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置itemSpace为resource
      Logger.info('TEST', 'Step 2-4: Click button to set itemSpace to resource');
      let spaceResourceButton = await driver.findComponent(ON.id('spaceResourceButton'));
      if (spaceResourceButton) {
        await spaceResourceButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察item之间的间隙是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the item space displays normally');
      Logger.info('TEST', 'Expected: item之间的间隙按照预设的大小正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4580 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4590
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4590
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemSpace set to undefined displays normally
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4590', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4590 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemSpace undefined');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24590");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置itemSpace为undefined
      Logger.info('TEST', 'Step 2-4: Click button to set itemSpace to undefined');
      let undefinedButton = await driver.findComponent(ON.id('undefinedButton'));
      if (undefinedButton) {
        await undefinedButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察item之间的间隙是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the item space displays normally');
      Logger.info('TEST', 'Expected: item之间的间隙按照预设的大小正常显示，为默认值0');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4590 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4600
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4600
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemSymbolFontColor with rgba type color
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4600', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4600 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemSymbolFontColor rgba');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24600");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置rgba颜色
      Logger.info('TEST', 'Step 2-4: Click button to set itemSymbolFontColor to rgba');
      let rgbaColorButton = await driver.findComponent(ON.id('rgbaColorButton'));
      if (rgbaColorButton) {
        await rgbaColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察未选择的分段按钮的HM Symbol类型图标是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the unselected symbol font color displays normally');
      Logger.info('TEST', 'Expected: 未选择的分段按钮的HM Symbol类型图标按照预设颜色正常显示，为黄色');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4600 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4610
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4610
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemSymbolFontColor with custom color
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4610', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4610 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemSymbolFontColor custom');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24610");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮设置自定义颜色（红+绿=黄）
      Logger.info('TEST', 'Step 2-4: Click button to set custom color (red+green=yellow)');
      let yellowButton = await driver.findComponent(ON.id('yellowButton'));
      if (yellowButton) {
        await yellowButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 点击设置绿+蓝=青
      Logger.info('TEST', 'Click button to set custom color (green+blue=cyan)');
      let cyanButton = await driver.findComponent(ON.id('cyanButton'));
      if (cyanButton) {
        await cyanButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 点击设置蓝+红=品红
      Logger.info('TEST', 'Click button to set custom color (blue+red=magenta)');
      let magentaButton = await driver.findComponent(ON.id('magentaButton'));
      if (magentaButton) {
        await magentaButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 点击设置纯红
      Logger.info('TEST', 'Click button to set custom color (pure red)');
      let redButton = await driver.findComponent(ON.id('redButton'));
      if (redButton) {
        await redButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 点击设置纯绿
      Logger.info('TEST', 'Click button to set custom color (pure green)');
      let greenButton = await driver.findComponent(ON.id('greenButton'));
      if (greenButton) {
        await greenButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 点击设置纯蓝
      Logger.info('TEST', 'Click button to set custom color (pure blue)');
      let blueButton = await driver.findComponent(ON.id('blueButton'));
      if (blueButton) {
        await blueButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 点击设置等量混合=白色
      Logger.info('TEST', 'Click button to set custom color (equal mix=white)');
      let whiteButton = await driver.findComponent(ON.id('whiteButton'));
      if (whiteButton) {
        await whiteButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察未选择的分段按钮的HM Symbol类型图标是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the unselected symbol font color displays normally');
      Logger.info('TEST', 'Expected: 未选择的分段按钮的HM Symbol类型图标按照预设颜色正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4610 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4620
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4620
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemSymbolFontColor with preset colors
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4620', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4620 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemSymbolFontColor preset');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24620");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击预设颜色按钮（蓝色）
      Logger.info('TEST', 'Step 2-4: Click button to set preset color (blue)');
      let blueButton = await driver.findComponent(ON.id('blueButton'));
      if (blueButton) {
        await blueButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 点击灰色
      Logger.info('TEST', 'Click button to set preset color (gray)');
      let grayButton = await driver.findComponent(ON.id('grayButton'));
      if (grayButton) {
        await grayButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 点击白色
      Logger.info('TEST', 'Click button to set preset color (white)');
      let whiteButton = await driver.findComponent(ON.id('whiteButton'));
      if (whiteButton) {
        await whiteButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察未选择的分段按钮的HM Symbol类型图标是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the unselected symbol font color displays normally');
      Logger.info('TEST', 'Expected: 未选择的分段按钮的HM Symbol类型图标按照预设颜色正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4620 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4630
    * @tc.name   : testSegmentButtonV2ItemSymbolFontSizeNegative
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemSymbolFontSize with -1 (should use default 20fp)
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4630', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4630 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemSymbolFontSize -1');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24630");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击按钮设置itemSymbolFontSize为-1
      Logger.info('TEST', 'Step 2-4: Click button to set itemSymbolFontSize to -1');
      let negativeSizeButton = await driver.findComponent(ON.id('negativeSizeButton'));
      if (negativeSizeButton) {
        await negativeSizeButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察HM Symbol类型图标的图标是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the HM Symbol icon displays normally');
      Logger.info('TEST', 'Expected: HM Symbol类型图标的图标按照预设的大小正常显示，为默认值20fp');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4630 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4640
    * @tc.name   : testSegmentButtonV2ItemSymbolFontSize20vp
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemSymbolFontSize with 20vp
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4640', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4640 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemSymbolFontSize 20vp');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24640");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击按钮设置itemSymbolFontSize为20vp
      Logger.info('TEST', 'Step 2-4: Click button to set itemSymbolFontSize to 20vp');
      let size20vpButton = await driver.findComponent(ON.id('size20vpButton'));
      if (size20vpButton) {
        await size20vpButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察HM Symbol类型图标的图标是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the HM Symbol icon displays normally');
      Logger.info('TEST', 'Expected: HM Symbol类型图标的图标按照预设的大小正常显示，为20vp');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4640 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4650
    * @tc.name   : testSegmentButtonV2ItemSymbolFontSize40Percent
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemSymbolFontSize with 40%
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4650', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4650 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemSymbolFontSize 40%');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24650");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击按钮设置itemSymbolFontSize为40%
      Logger.info('TEST', 'Step 2-4: Click button to set itemSymbolFontSize to 40%');
      let size40PercentButton = await driver.findComponent(ON.id('size40PercentButton'));
      if (size40PercentButton) {
        await size40PercentButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察HM Symbol类型图标的图标是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the HM Symbol icon displays normally');
      Logger.info('TEST', 'Expected: HM Symbol类型图标的图标按照预设的大小正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4650 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4660
    * @tc.name   : testSegmentButtonV2ItemSymbolFontSize40fp
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemSymbolFontSize with 40fp
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4660', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4660 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemSymbolFontSize 40fp');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24660");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击按钮设置itemSymbolFontSize为40fp
      Logger.info('TEST', 'Step 2-4: Click button to set itemSymbolFontSize to 40fp');
      let size40fpButton = await driver.findComponent(ON.id('size40fpButton'));
      if (size40fpButton) {
        await size40fpButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察HM Symbol类型图标的图标是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the HM Symbol icon displays normally');
      Logger.info('TEST', 'Expected: HM Symbol类型图标的图标按照预设的大小正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4660 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4670
    * @tc.name   : testSegmentButtonV2ItemSymbolFontSize40lpx
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemSymbolFontSize with 40lpx
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4670', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4670 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemSymbolFontSize 40lpx');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24670");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击按钮设置itemSymbolFontSize为40lpx
      Logger.info('TEST', 'Step 2-4: Click button to set itemSymbolFontSize to 40lpx');
      let size40lpxButton = await driver.findComponent(ON.id('size40lpxButton'));
      if (size40lpxButton) {
        await size40lpxButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察HM Symbol类型图标的图标是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the HM Symbol icon displays normally');
      Logger.info('TEST', 'Expected: HM Symbol类型图标的图标按照预设的大小正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4670 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4680
    * @tc.name   : testSegmentButtonV2ItemSymbolFontSize40px
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemSymbolFontSize with 40px
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4680', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4680 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemSymbolFontSize 40px');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24680");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击按钮设置itemSymbolFontSize为40px
      Logger.info('TEST', 'Step 2-4: Click button to set itemSymbolFontSize to 40px');
      let size40pxButton = await driver.findComponent(ON.id('size40pxButton'));
      if (size40pxButton) {
        await size40pxButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察HM Symbol类型图标的图标是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the HM Symbol icon displays normally');
      Logger.info('TEST', 'Expected: HM Symbol类型图标的图标按照预设的大小正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4680 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4690
    * @tc.name   : testSegmentButtonV2ItemSymbolFontSizeResource
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemSymbolFontSize with resource
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4690', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4690 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemSymbolFontSize resource');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24690");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击按钮设置itemSymbolFontSize为resource
      Logger.info('TEST', 'Step 2-4: Click button to set itemSymbolFontSize to resource');
      let sizeResourceButton = await driver.findComponent(ON.id('sizeResourceButton'));
      if (sizeResourceButton) {
        await sizeResourceButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察HM Symbol类型图标的图标是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the HM Symbol icon displays normally');
      Logger.info('TEST', 'Expected: HM Symbol类型图标的图标按照预设的大小正常显示');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4690 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4700
    * @tc.name   : testSegmentButtonV2ItemSymbolFontSizeUndefined
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 itemSymbolFontSize with undefined (should use default 20fp)
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4700', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4700 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 itemSymbolFontSize undefined');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24700");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击按钮设置itemSymbolFontSize为undefined
      Logger.info('TEST', 'Step 2-4: Click button to set itemSymbolFontSize to undefined');
      let undefinedButton = await driver.findComponent(ON.id('undefinedButton'));
      if (undefinedButton) {
        await undefinedButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察HM Symbol类型图标的图标是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the HM Symbol icon displays normally');
      Logger.info('TEST', 'Expected: HM Symbol类型图标的图标按照预设的大小正常显示，为默认值20fp');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4700 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4710
    * @tc.name   : testSegmentButtonV2LanguageDirectionAuto
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 languageDirection with Auto (Chinese system, left to right)
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4710', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4710 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 languageDirection Auto');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24710");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击按钮设置languageDirection为Auto
      Logger.info('TEST', 'Step 2-4: Click button to set languageDirection to Auto');
      let autoButton = await driver.findComponent(ON.id('autoButton'));
      if (autoButton) {
        await autoButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察分段按钮整体布局
      Logger.info('TEST', 'Step 5: Observe the overall layout of segment button');
      Logger.info('TEST', 'Expected: 分段按钮的语言阅读方向符合从左往右布局（简体中文系统）');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4710 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4720
    * @tc.name   : testSegmentButtonV2LanguageDirectionLtr
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 languageDirection with Ltr (left to right)
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4720', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4720 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 languageDirection Ltr');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24720");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击按钮设置languageDirection为Ltr
      Logger.info('TEST', 'Step 2-4: Click button to set languageDirection to Ltr');
      let ltrButton = await driver.findComponent(ON.id('ltrButton'));
      if (ltrButton) {
        await ltrButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察分段按钮整体布局
      Logger.info('TEST', 'Step 5: Observe the overall layout of segment button');
      Logger.info('TEST', 'Expected: 分段按钮的语言阅读方向符合从左往右布局');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4720 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4730
    * @tc.name   : testSegmentButtonV2LanguageDirectionRtl
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 languageDirection with Rtl (right to left)
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4730', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4730 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 languageDirection Rtl');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24730");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击按钮设置languageDirection为Rtl
      Logger.info('TEST', 'Step 2-4: Click button to set languageDirection to Rtl');
      let rtlButton = await driver.findComponent(ON.id('rtlButton'));
      if (rtlButton) {
        await rtlButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察分段按钮整体布局
      Logger.info('TEST', 'Step 5: Observe the overall layout of segment button');
      Logger.info('TEST', 'Expected: 分段按钮的语言阅读方向符合从右往左布局');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4730 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4770
    * @tc.name   : testSegmentButtonV2OnItemClicked
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 onItemClicked callback with toast display
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4770', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4770 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 onItemClicked');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24770");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2：点击分段按钮的第2个item
      Logger.info('TEST', 'Step 2: Click the second item of segment button');
      let segmentButton = await driver.findComponent(ON.id('segmentButton'));
      if (segmentButton) {
        // 获取组件位置并点击第2个item区域
        let rect = await segmentButton.getBounds();
        let itemWidth = (rect.right - rect.left) / 4;
        let clickX = rect.left + itemWidth * 1.5; // 第2个item的中心
        let clickY = (rect.top + rect.bottom) / 2;
        await driver.click(clickX, clickY);
        await driver.waitForIdle(500, 1000);
      }

      // 步骤3：点击分段按钮的第3个item
      Logger.info('TEST', 'Step 3: Click the third item of segment button');
      if (segmentButton) {
        let rect = await segmentButton.getBounds();
        let itemWidth = (rect.right - rect.left) / 4;
        let clickX = rect.left + itemWidth * 2.5; // 第3个item的中心
        let clickY = (rect.top + rect.bottom) / 2;
        await driver.click(clickX, clickY);
        await driver.waitForIdle(500, 1000);
      }

      // 步骤4：点击分段按钮的第4个item
      Logger.info('TEST', 'Step 4: Click the fourth item of segment button');
      if (segmentButton) {
        let rect = await segmentButton.getBounds();
        let itemWidth = (rect.right - rect.left) / 4;
        let clickX = rect.left + itemWidth * 3.5; // 第4个item的中心
        let clickY = (rect.top + rect.bottom) / 2;
        await driver.click(clickX, clickY);
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察Toast提示和点击信息是否正常显示
      Logger.info('TEST', 'Step 5: Observe if toast and click info display normally');
      Logger.info('TEST', 'Expected: 点击的第几个item，toast能正常显示（索引从0开始）');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4770 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4780
    * @tc.name   : testSegmentButtonV2OnSelectedIndexChange
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 OnSelectedIndexChange callback
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4780', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4780 start`);

      // 步骤1：进入测试页面（页面已配置$selectedIndex回调）
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 OnSelectedIndexChange');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24780");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2：点击第2个item（可用），观察回调
      Logger.info('TEST', 'Step 2: Click the second item (enabled), observe callback');
      let segmentButton = await driver.findComponent(ON.id('segmentButton'));
      if (segmentButton) {
        let rect = await segmentButton.getBounds();
        let itemWidth = (rect.right - rect.left) / 4;
        let clickX = rect.left + itemWidth * 1.5; // 第2个item的中心
        let clickY = (rect.top + rect.bottom) / 2;
        await driver.click(clickX, clickY);
        await driver.waitForIdle(500, 1000);
      }

      // 步骤3：点击第3个item（禁用），观察是否有回调
      Logger.info('TEST', 'Step 3: Click the third item (disabled), observe if callback is triggered');
      if (segmentButton) {
        let rect = await segmentButton.getBounds();
        let itemWidth = (rect.right - rect.left) / 4;
        let clickX = rect.left + itemWidth * 2.5; // 第3个item的中心（禁用）
        let clickY = (rect.top + rect.bottom) / 2;
        await driver.click(clickX, clickY);
        await driver.waitForIdle(500, 1000);
      }

      // 步骤4：点击第4个item（可用），观察回调
      Logger.info('TEST', 'Step 4: Click the fourth item (enabled), observe callback');
      if (segmentButton) {
        let rect = await segmentButton.getBounds();
        let itemWidth = (rect.right - rect.left) / 4;
        let clickX = rect.left + itemWidth * 3.5; // 第4个item的中心
        let clickY = (rect.top + rect.bottom) / 2;
        await driver.click(clickX, clickY);
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：点击第1个item，观察回调
      Logger.info('TEST', 'Step 5: Click the first item, observe callback');
      if (segmentButton) {
        let rect = await segmentButton.getBounds();
        let itemWidth = (rect.right - rect.left) / 4;
        let clickX = rect.left + itemWidth * 0.5; // 第1个item的中心
        let clickY = (rect.top + rect.bottom) / 2;
        await driver.click(clickX, clickY);
        await driver.waitForIdle(500, 1000);
      }

      // 观察回调日志
      Logger.info('TEST', 'Observe callback log');
      Logger.info('TEST', 'Expected: 点击可用item触发回调，点击禁用item无回调');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4780 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4790
    * @tc.name   : testSegmentButtonV2SelectedIndexNegative
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 SelectedIndex with -1 (should select first item)
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4790', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4790 start`);

      // 步骤1：进入测试页面（代码中已设置SelectedIndex为-1）
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 SelectedIndex=-1');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24790");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2：观察分段按钮已选中的item是否符合预期
      Logger.info('TEST', 'Step 2: Observe if the selected item meets expectation');
      Logger.info('TEST', 'Expected: 分段按钮已选中的item符合预期，第一块item被选中');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4790 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4800
    * @tc.name   : testSegmentButtonV2SelectedIndex1
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 SelectedIndex with 1 (should select second item)
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4800', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4800 start`);

      // 步骤1：进入测试页面（代码中已设置SelectedIndex为1）
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 SelectedIndex=1');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24800");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2：观察分段按钮已选中的item是否符合预期
      Logger.info('TEST', 'Step 2: Observe if the selected item meets expectation');
      Logger.info('TEST', 'Expected: 分段按钮已选中的item符合预期，第二块item被选中');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4800 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4810
    * @tc.name   : testSegmentButtonV2SelectedIndex999
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify TabSegmentButtonV2 SelectedIndex with 999 (should select last item)
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4810', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4810 start`);

      // 步骤1：进入测试页面（代码中已设置SelectedIndex为999）
      Logger.info('TEST', 'Step 1: Open test page - TabSegmentButtonV2 SelectedIndex=999');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV24810");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2：观察分段按钮已选中的item是否符合预期
      Logger.info('TEST', 'Step 2: Observe if the selected item meets expectation');
      Logger.info('TEST', 'Expected: 分段按钮已选中的item符合预期，最后一块item被选中');

      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_4810 end`);
      done();
    })

    