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

    